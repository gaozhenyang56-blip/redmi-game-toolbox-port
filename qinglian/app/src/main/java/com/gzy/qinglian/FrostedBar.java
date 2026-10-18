package com.gzy.qinglian;

import android.content.Context;
import android.graphics.*;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.view.*;
import android.widget.*;

/** Live, in-app backdrop: pre-draw sampling, small reusable buffers, no idle timer. */
final class FrostedBar extends FrameLayout {
 private final ImageView backdrop;
 private View source;
 private ViewTreeObserver observedTree;
 private boolean active,capturing;
 private Bitmap snapshot,scratch;
 private int[] pixels,work;
 private final int surface,overscan;
 private final boolean blurEnabled,gpuBlur;
 private final float blurPixels;
 private final int[] sourcePosition=new int[2],barPosition=new int[2];
 private final ViewTreeObserver.OnPreDrawListener beforeDraw=()->{captureBackdrop();return true;};
 FrostedBar(Context context,int surface,boolean night){this(context,surface,night,28);}
 FrostedBar(Context context,int surface,boolean night,float cornerDp){
  super(context);this.surface=surface;this.blurEnabled=UiTuning.get(context).glassEnabled;gpuBlur=blurEnabled&&Build.VERSION.SDK_INT>=31;
  setClipChildren(true);setClipToPadding(true);setClipToOutline(true);
  float density=getResources().getDisplayMetrics().density,radius=cornerDp*density;blurPixels=28*density;overscan=Math.round(36*density);
  GradientDrawable backing=new GradientDrawable();backing.setCornerRadius(radius);
  backing.setColor(blurEnabled?surface:(surface&0x00ffffff)|0xED000000);setBackground(backing);setElevation(6*density);
  GradientDrawable edge=new GradientDrawable();edge.setCornerRadius(radius);edge.setColor(Color.TRANSPARENT);
  edge.setStroke(Math.max(1,Math.round(.65f*density)),night?0x55ffffff:0xB8ffffff);setForeground(edge);
  backdrop=new ImageView(context);backdrop.setScaleType(ImageView.ScaleType.FIT_XY);
  LayoutParams imageLayout=new LayoutParams(-1,-1);imageLayout.setMargins(-overscan,-overscan,-overscan,-overscan);addView(backdrop,imageLayout);
  if(Build.VERSION.SDK_INT>=31&&gpuBlur)backdrop.setRenderEffect(RenderEffect.createBlurEffect(blurPixels,blurPixels,Shader.TileMode.CLAMP));
  View tint=new View(context);int rgb=surface&0x00ffffff;
  // Thin material tint: the backdrop supplies the color; labels stay sharp above it.
  GradientDrawable sheen=new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM,
   blurEnabled?new int[]{night?rgb|0x66000000:0x48FFFFFF,night?rgb|0x88000000:rgb|0x60000000}:new int[]{rgb|0xE8000000,rgb|0xE8000000});
  sheen.setCornerRadius(radius);tint.setBackground(sheen);addView(tint,new LayoutParams(-1,-1));
  setImportantForAccessibility(IMPORTANT_FOR_ACCESSIBILITY_NO);
 }
 void setSource(View source){unobserve();this.source=source;observe();requestBackdrop();}
 void setActive(boolean active){this.active=active;if(active){observe();requestBackdrop();}else{unobserve();release();}}
 void requestBackdrop(){if(active&&blurEnabled&&isAttachedToWindow())invalidate();}
 private void observe(){
  if(!active||!blurEnabled||source==null||!isAttachedToWindow()||getWindowVisibility()!=VISIBLE||!isShown())return;
  ViewTreeObserver tree=source.getViewTreeObserver();if(observedTree==tree&&tree.isAlive())return;
  unobserve();if(tree.isAlive()){observedTree=tree;tree.addOnPreDrawListener(beforeDraw);}
 }
 private void unobserve(){if(observedTree!=null&&observedTree.isAlive())observedTree.removeOnPreDrawListener(beforeDraw);observedTree=null;}
 private void captureBackdrop(){
  if(capturing||!active||!blurEnabled||source==null||!isAttachedToWindow()||getWindowVisibility()!=VISIBLE||!isShown()||getWidth()==0||getHeight()==0)return;
  capturing=true;try{
   int expandedWidth=getWidth()+2*overscan,expandedHeight=getHeight()+2*overscan;
   int width=Math.max(1,(expandedWidth+7)/8),height=Math.max(1,(expandedHeight+7)/8);
   if(scratch==null||scratch.getWidth()!=width||scratch.getHeight()!=height)scratch=Bitmap.createBitmap(width,height,Bitmap.Config.ARGB_8888);
   scratch.eraseColor(surface);source.getLocationInWindow(sourcePosition);getLocationInWindow(barPosition);
   Canvas canvas=new Canvas(scratch);canvas.scale(width/(float)expandedWidth,height/(float)expandedHeight);
   canvas.translate(overscan+sourcePosition[0]-barPosition[0],overscan+sourcePosition[1]-barPosition[1]);
   // Only the ScrollView is sampled; neither this bar nor the root can feed back into it.
   source.draw(canvas);
   if(!gpuBlur){
    int count=width*height;if(pixels==null||pixels.length!=count){pixels=new int[count];work=new int[count];}
    scratch.getPixels(pixels,0,width,0,0,width,height);
    int radius=Math.max(1,Math.round(blurPixels*width/expandedWidth));
    for(int pass=0;pass<3;pass++){blur(pixels,work,width,height,radius,true);blur(work,pixels,width,height,radius,false);}
    scratch.setPixels(pixels,0,width,0,0,width,height);
   }
   // Upload only changed pixels. Our own redraw settles after one comparison,
   // so a static page does not become a continuous capture/animation loop.
   if(snapshot!=null&&snapshot.sameAs(scratch))return;
   Bitmap previous=snapshot;snapshot=scratch;scratch=previous;backdrop.setImageBitmap(snapshot);backdrop.invalidate();
  }finally{capturing=false;}
 }
 private static void blur(int[] input,int[] output,int width,int height,int radius,boolean horizontal){
  int lines=horizontal?height:width,length=horizontal?width:height,step=horizontal?1:width,diameter=radius*2+1;
  for(int line=0;line<lines;line++){
   int base=horizontal?line*width:line,a=0,r=0,g=0,b=0;
   for(int i=-radius;i<=radius;i++){int c=input[base+Math.max(0,Math.min(length-1,i))*step];a+=c>>>24;r+=(c>>>16)&255;g+=(c>>>8)&255;b+=c&255;}
   for(int i=0;i<length;i++){
    output[base+i*step]=((a/diameter)<<24)|((r/diameter)<<16)|((g/diameter)<<8)|(b/diameter);
    int old=input[base+Math.max(0,i-radius)*step],next=input[base+Math.min(length-1,i+radius+1)*step];
    a+=(next>>>24)-(old>>>24);r+=((next>>>16)&255)-((old>>>16)&255);g+=((next>>>8)&255)-((old>>>8)&255);b+=(next&255)-(old&255);
   }
  }
 }
 private void release(){backdrop.setImageDrawable(null);snapshot=scratch=null;pixels=work=null;}
 @Override protected void onMeasure(int widthSpec,int heightSpec){
  if(MeasureSpec.getMode(heightSpec)!=MeasureSpec.EXACTLY){
   // Backdrop/tint fill the bar; their MATCH_PARENT heights must not make a
   // wrap-content navigation bar expand to the entire available viewport.
   int wanted=getSuggestedMinimumHeight();
   for(int i=2;i<getChildCount();i++){
    View child=getChildAt(i);if(child.getVisibility()==GONE)continue;
    measureChildWithMargins(child,widthSpec,0,heightSpec,0);
    LayoutParams lp=(LayoutParams)child.getLayoutParams();wanted=Math.max(wanted,child.getMeasuredHeight()+lp.topMargin+lp.bottomMargin);
   }
   heightSpec=MeasureSpec.makeMeasureSpec(resolveSize(wanted+getPaddingTop()+getPaddingBottom(),heightSpec),MeasureSpec.EXACTLY);
  }
  super.onMeasure(widthSpec,heightSpec);
 }
 @Override protected void onLayout(boolean changed,int l,int t,int r,int b){super.onLayout(changed,l,t,r,b);if(changed)requestBackdrop();}
 @Override protected void onAttachedToWindow(){super.onAttachedToWindow();observe();requestBackdrop();}
 @Override protected void onWindowVisibilityChanged(int visibility){super.onWindowVisibilityChanged(visibility);if(backdrop==null)return;if(visibility==VISIBLE){observe();requestBackdrop();}else{unobserve();release();}}
 @Override protected void onVisibilityChanged(View changed,int visibility){super.onVisibilityChanged(changed,visibility);if(backdrop==null)return;if(isShown()){observe();requestBackdrop();}else{unobserve();release();}}
 @Override protected void onDetachedFromWindow(){unobserve();release();super.onDetachedFromWindow();}
}

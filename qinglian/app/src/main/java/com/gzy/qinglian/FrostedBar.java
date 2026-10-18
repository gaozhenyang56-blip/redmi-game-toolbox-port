package com.gzy.qinglian;

import android.content.Context;
import android.graphics.*;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.view.*;
import android.widget.*;

/** In-app backdrop only. Captures a small strip on changes, never the whole screen. */
final class FrostedBar extends FrameLayout {
 private final ImageView backdrop;
 private final View tint;
 private View source;
 private boolean active,scheduled;
 private Bitmap snapshot;
 private final int surface;
 private final int[] sourcePosition=new int[2],barPosition=new int[2];
 private final Runnable capture=this::captureBackdrop;
 FrostedBar(Context context,int surface,boolean night){this(context,surface,night,28);}
 FrostedBar(Context context,int surface,boolean night,float cornerDp){
  super(context);this.surface=surface;setClipChildren(true);setClipToPadding(true);setClipToOutline(true);
  float density=getResources().getDisplayMetrics().density,radius=cornerDp*density;
  GradientDrawable backing=new GradientDrawable();backing.setCornerRadius(radius);
  backing.setColor(Build.VERSION.SDK_INT>=31?surface:(surface&0x00ffffff)|0xD0000000);setBackground(backing);setElevation(6*density);
  GradientDrawable edge=new GradientDrawable();edge.setCornerRadius(radius);edge.setColor(Color.TRANSPARENT);
  edge.setStroke(Math.max(1,Math.round(.65f*density)),night?0x46ffffff:0xB0ffffff);setForeground(edge);
  backdrop=new ImageView(context);backdrop.setScaleType(ImageView.ScaleType.FIT_XY);
  addView(backdrop,new LayoutParams(-1,-1));
  if(Build.VERSION.SDK_INT>=31){float blur=18*density;
   backdrop.setRenderEffect(RenderEffect.createBlurEffect(blur,blur,Shader.TileMode.CLAMP));
  }
  tint=new View(context);
  // Keep labels/buttons sharp: only the snapshot layer is blurred.
  int rgb=surface&0x00ffffff;
  GradientDrawable sheen=new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM,
   Build.VERSION.SDK_INT>=31?new int[]{night?rgb|0xA0000000:0x9AFFFFFF,night?rgb|0xB8000000:rgb|0x70000000}:new int[]{rgb|0xB0000000,rgb|0xB0000000});
  sheen.setCornerRadius(radius);tint.setBackground(sheen);addView(tint,new LayoutParams(-1,-1));
  setImportantForAccessibility(IMPORTANT_FOR_ACCESSIBILITY_NO);
 }
 void setSource(View source){this.source=source;requestBackdrop();}
 void setActive(boolean active){this.active=active;if(active)requestBackdrop();else release();}
 void requestBackdrop(){
  if(!active||scheduled||Build.VERSION.SDK_INT<31||!isAttachedToWindow())return;
  scheduled=true;postDelayed(capture,40); // At most 25 updates/s while scrolling.
 }
 private void captureBackdrop(){
  scheduled=false;
  if(!active||source==null||!isAttachedToWindow()||getWindowVisibility()!=VISIBLE||getWidth()==0||getHeight()==0)return;
  int width=Math.max(1,(getWidth()+7)/8),height=Math.max(1,(getHeight()+7)/8);
  if(snapshot==null||snapshot.getWidth()!=width||snapshot.getHeight()!=height){
   backdrop.setImageDrawable(null);snapshot=Bitmap.createBitmap(width,height,Bitmap.Config.ARGB_8888);
  }
  snapshot.eraseColor(surface);
  source.getLocationInWindow(sourcePosition);getLocationInWindow(barPosition);
  Canvas canvas=new Canvas(snapshot);canvas.scale(width/(float)getWidth(),height/(float)getHeight());
  canvas.translate(sourcePosition[0]-barPosition[0],sourcePosition[1]-barPosition[1]);
  // Source is the ScrollView, never the root containing this bar (no recursion).
  source.draw(canvas);backdrop.setImageBitmap(snapshot);backdrop.invalidate();
 }
 private void release(){removeCallbacks(capture);scheduled=false;backdrop.setImageDrawable(null);snapshot=null;}
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
 @Override protected void onDetachedFromWindow(){release();super.onDetachedFromWindow();}
}

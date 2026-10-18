package com.gzy.qinglian;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.view.*;
import android.view.animation.PathInterpolator;
import android.widget.*;
import androidx.appcompat.widget.AppCompatRadioButton;
import java.util.*;

/** Glass segmented rail with one moving thumb; touch, drag and native checked semantics. */
final class GlassSegments extends FrameLayout {
 interface Listener {void selected(int index);}
 private final View thumb;
 private final LinearLayout row;
 private final List<AppCompatRadioButton> buttons=new ArrayList<>();
 private final boolean navigation;
 private int selected;
 private Listener listener;
 private float downX,downY;
 private boolean dragging;
 GlassSegments(Context context,String[] labels,int[] ids,int[] icons,boolean navigation){
  super(context);this.navigation=navigation;float radius=dp(navigation?36:26);
  boolean night=(getResources().getConfiguration().uiMode&android.content.res.Configuration.UI_MODE_NIGHT_MASK)==android.content.res.Configuration.UI_MODE_NIGHT_YES;
  int surface=color(com.google.android.material.R.attr.colorSurfaceContainer),rgb=surface&0x00ffffff;
  GradientDrawable rail=new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM,new int[]{navigation?Color.TRANSPARENT:rgb|0xB0000000,navigation?Color.TRANSPARENT:rgb|0x85000000});
  rail.setCornerRadius(radius);if(!navigation)rail.setStroke(Math.max(1,dp(.5f)),night?0x32ffffff:0x90ffffff);setBackground(rail);
  thumb=new View(context);GradientDrawable glass=new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM,night?new int[]{0x55ffffff,0x1Affffff}:new int[]{0xE6ffffff,0x90ffffff});
  glass.setCornerRadius(radius-dp(navigation?4:2));glass.setStroke(Math.max(1,dp(.65f)),night?0x60ffffff:0xE0ffffff);thumb.setBackground(glass);thumb.setElevation(dp(2));
  thumb.setImportantForAccessibility(IMPORTANT_FOR_ACCESSIBILITY_NO);addView(thumb,new LayoutParams(0,0));
  row=new LinearLayout(context);row.setElevation(dp(3));row.setOrientation(LinearLayout.HORIZONTAL);LayoutParams rowLayout=new LayoutParams(-1,-1);int inset=dp(navigation?4:2);rowLayout.setMargins(inset,inset,inset,inset);addView(row,rowLayout);
  int[][] states={new int[]{android.R.attr.state_checked},new int[]{}};
  ColorStateList textColors=new ColorStateList(states,new int[]{color(com.google.android.material.R.attr.colorOnSurface),color(com.google.android.material.R.attr.colorOnSurfaceVariant)});
  for(int i=0;i<labels.length;i++){
   final int index=i;AppCompatRadioButton button=new AppCompatRadioButton(context);button.setId(ids==null?View.generateViewId():ids[i]);button.setText(labels[i]);button.setButtonDrawable(null);button.setBackground(null);button.setMinWidth(0);button.setMinimumWidth(0);button.setGravity(Gravity.CENTER);button.setPadding(0,dp(2),0,dp(2));button.setTextSize(navigation?12:14);button.setTextColor(textColors);button.setMaxLines(1);
   if(icons!=null){android.graphics.drawable.Drawable icon=context.getDrawable(icons[i]).mutate();icon.setTintList(textColors);icon.setBounds(0,0,dp(24),dp(24));button.setCompoundDrawables(null,icon,null,null);button.setCompoundDrawablePadding(dp(3));}
   button.setOnClickListener(v->select(index,true,true));buttons.add(button);row.addView(button,new LinearLayout.LayoutParams(0,-1,1));
  }
  setImportantForAccessibility(IMPORTANT_FOR_ACCESSIBILITY_NO);select(0,false,false);
 }
 void setListener(Listener listener){this.listener=listener;}
 void setSelected(int index,boolean animate){if(index!=selected)select(index,animate,false);}
 int selected(){return selected;}
 private int dp(float value){return Math.round(value*getResources().getDisplayMetrics().density);}
 private int color(int attr){android.util.TypedValue value=new android.util.TypedValue();getContext().getTheme().resolveAttribute(attr,value,true);return value.data;}
 private void select(int index,boolean animate,boolean notify){
  if(index<0||index>=buttons.size())throw new IllegalArgumentException("segment index");
  boolean changed=selected!=index;selected=index;
  for(int i=0;i<buttons.size();i++)buttons.get(i).setChecked(i==selected);
  placeThumb(animate);if(changed&&notify&&listener!=null)listener.selected(index);
 }
 private void placeThumb(boolean animate){
  if(row.getWidth()==0||buttons.isEmpty())return;
  View target=buttons.get(selected);int width=target.getWidth(),height=row.getHeight();if(width==0||height==0)return;
  LayoutParams lp=(LayoutParams)thumb.getLayoutParams();
  if(lp.width!=width||lp.height!=height){lp.width=width;lp.height=height;thumb.setLayoutParams(lp);}
  if(thumb.getWidth()!=width||thumb.getHeight()!=height)thumb.layout(0,0,width,height);
  thumb.setTranslationY(row.getTop());float x=row.getLeft()+target.getLeft();thumb.animate().cancel();
  if(animate&&ValueAnimator.areAnimatorsEnabled())thumb.animate().translationX(x).setDuration(180).setInterpolator(new PathInterpolator(.2f,0,0,1)).start();else thumb.setTranslationX(x);
 }
 @Override protected void onMeasure(int widthSpec,int heightSpec){
  if(MeasureSpec.getMode(heightSpec)!=MeasureSpec.EXACTLY)heightSpec=MeasureSpec.makeMeasureSpec(resolveSize(dp(navigation?80:52),heightSpec),MeasureSpec.EXACTLY);
  super.onMeasure(widthSpec,heightSpec);
 }
 @Override protected void onLayout(boolean changed,int l,int t,int r,int b){super.onLayout(changed,l,t,r,b);if(changed||thumb.getWidth()==0)placeThumb(false);}
 @Override public boolean onInterceptTouchEvent(android.view.MotionEvent event){
  if(event.getActionMasked()==android.view.MotionEvent.ACTION_DOWN){downX=event.getX();downY=event.getY();dragging=false;}
  else if(event.getActionMasked()==android.view.MotionEvent.ACTION_MOVE&&Math.abs(event.getX()-downX)>ViewConfiguration.get(getContext()).getScaledTouchSlop()&&Math.abs(event.getX()-downX)>Math.abs(event.getY()-downY)){
   dragging=true;thumb.animate().cancel();if(getParent()!=null)getParent().requestDisallowInterceptTouchEvent(true);return true;
  }
  return dragging;
 }
 @Override public boolean onTouchEvent(android.view.MotionEvent event){
  if(!dragging)return super.onTouchEvent(event);
  if(event.getActionMasked()==android.view.MotionEvent.ACTION_MOVE){thumb.setTranslationX(Math.max(row.getLeft(),Math.min(row.getRight()-thumb.getWidth(),event.getX()-thumb.getWidth()/2f)));return true;}
  if(event.getActionMasked()==android.view.MotionEvent.ACTION_UP){
   int nearest=selected;float distance=Float.MAX_VALUE;
   for(int i=0;i<buttons.size();i++){View button=buttons.get(i);float delta=Math.abs(event.getX()-(row.getLeft()+button.getLeft()+button.getWidth()/2f));if(delta<distance){distance=delta;nearest=i;}}
   dragging=false;select(nearest,true,true);return true;
  }
  if(event.getActionMasked()==android.view.MotionEvent.ACTION_CANCEL){dragging=false;placeThumb(true);return true;}return true;
 }
 @Override protected void onDetachedFromWindow(){thumb.animate().cancel();super.onDetachedFromWindow();}
}

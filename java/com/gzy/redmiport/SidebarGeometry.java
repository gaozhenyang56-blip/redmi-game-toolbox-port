package com.gzy.redmiport;

/** Keep the handle on screen at different densities and orientations. */
public final class SidebarGeometry {
    public static int anchor(int animatedX,int inset){return Math.max(animatedX,inset);}
    public static int inset(int dp,float density){return Math.round(Math.max(0,Math.min(64,dp))*density);}
    public static int y(int screenHeight,int handleHeight,int percent){
        int height=Math.max(0,screenHeight);
        int limit=Math.max(0,height-Math.max(0,handleHeight));
        int position=Math.round(height*Math.max(10,Math.min(85,percent))/100f);
        return Math.max(0,Math.min(limit,position));
    }
}

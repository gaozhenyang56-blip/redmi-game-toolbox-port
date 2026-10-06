package com.gzy.redmiport;

/** Distinguish a short stationary tap from the original swipe/long-press gesture. */
public final class HandleTap {
    private long downAt;
    private float downX,downY;
    private boolean active,moved;
    public boolean update(int action,long at,float x,float y,int slop,int pointers){
        if(action==0){active=pointers==1;moved=false;downAt=at;downX=x;downY=y;return false;}
        if(!active)return false;
        if(pointers!=1||action==3||action==5||action==6){active=false;return false;}
        if(Math.abs(x-downX)>slop||Math.abs(y-downY)>slop)moved=true;
        if(action==1){boolean tap=!moved&&at>=downAt&&at-downAt<300;active=false;return tap;}
        return false;
    }
}

package com.novalab.native3d;

import android.content.Context;
import android.opengl.GLES20;
import android.opengl.GLSurfaceView;
import android.opengl.Matrix;
import android.os.SystemClock;
import android.view.MotionEvent;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.util.ArrayList;

/** True OpenGL ES 2.0 volumetric model renderer. No HTML, SVG, WebView or texture sprites. */
public final class LabGLView extends GLSurfaceView implements GLSurfaceView.Renderer {
  private final SimCore sim; private final MainActivity activity;
  private int program,aPos,uMvp,uColor,width=1,height=1;
  private float yaw=30,pitch=48,dist=12.5f,panX=0,panZ=0;
  private boolean dragging=false,zooming=false,panMode=false;
  private float downX,downY,lastX,lastY,lastPinch,lastCenterX,lastCenterY;
  private final float[] projection=new float[16],view=new float[16],vp=new float[16],identity=new float[16];
  private final float[] tempMvp=new float[16],tempModel=new float[16];
  private long lastTick=0;
  private static final int BLUE=0x729DFF,CYAN=0x67E0D0,YELLOW=0xF6C772,GLASS=0xA2E2FF,SOFT=0xA1B5D2;
  public LabGLView(MainActivity a,SimCore s){super(a);activity=a;sim=s;setEGLContextClientVersion(2);setRenderer(this);setRenderMode(GLSurfaceView.RENDERMODE_CONTINUOUSLY);setPreserveEGLContextOnPause(true);setFocusable(true);}
  @Override public void onSurfaceCreated(javax.microedition.khronos.opengles.GL10 g,javax.microedition.khronos.egl.EGLConfig config){
    String vertex="attribute vec3 aPos; uniform mat4 uMvp; void main(){gl_Position=uMvp*vec4(aPos,1.0);}";
    String fragment="precision mediump float; uniform vec4 uColor; void main(){gl_FragColor=uColor;}";
    int v=GLES20.glCreateShader(GLES20.GL_VERTEX_SHADER);GLES20.glShaderSource(v,vertex);GLES20.glCompileShader(v);
    int f=GLES20.glCreateShader(GLES20.GL_FRAGMENT_SHADER);GLES20.glShaderSource(f,fragment);GLES20.glCompileShader(f);
    program=GLES20.glCreateProgram();GLES20.glAttachShader(program,v);GLES20.glAttachShader(program,f);GLES20.glLinkProgram(program);
    aPos=GLES20.glGetAttribLocation(program,"aPos");uMvp=GLES20.glGetUniformLocation(program,"uMvp");uColor=GLES20.glGetUniformLocation(program,"uColor");
    GLES20.glUseProgram(program);GLES20.glEnable(GLES20.GL_DEPTH_TEST);GLES20.glDepthFunc(GLES20.GL_LEQUAL);
    GLES20.glEnable(GLES20.GL_BLEND);GLES20.glBlendFunc(GLES20.GL_SRC_ALPHA,GLES20.GL_ONE_MINUS_SRC_ALPHA);
    GLES20.glClearColor(.031f,.051f,.102f,1);Matrix.setIdentityM(identity,0);
  }
  @Override public void onSurfaceChanged(javax.microedition.khronos.opengles.GL10 g,int w,int h){width=Math.max(1,w);height=Math.max(1,h);GLES20.glViewport(0,0,width,height);Matrix.perspectiveM(projection,0,47f,(float)width/height,.08f,90f);}
  @Override public void onDrawFrame(javax.microedition.khronos.opengles.GL10 ignored){
    long now=SystemClock.elapsedRealtimeNanos();float dt=lastTick==0?.016f:Math.min(.08f,(now-lastTick)/1e9f);lastTick=now;
    GLES20.glClear(GLES20.GL_COLOR_BUFFER_BIT|GLES20.GL_DEPTH_BUFFER_BIT);
    float ya=(float)Math.toRadians(yaw),pa=(float)Math.toRadians(pitch);
    float cx=panX+dist*(float)Math.cos(pa)*(float)Math.sin(ya),cy=dist*(float)Math.sin(pa),cz=panZ+dist*(float)Math.cos(pa)*(float)Math.cos(ya);
    Matrix.setLookAtM(view,0,cx,cy,cz,panX,.4f,panZ,0,1,0);Matrix.multiplyMM(vp,0,projection,0,view,0);
    drawFloor();
    synchronized(sim){sim.update(dt);drawScene(sim.active());if(sim.mode==SimCore.CIRCUIT)drawWires();if(sim.mode==SimCore.OPTICS)drawRays();}
  }
  private FloatBuffer buffer(float[] arr){FloatBuffer b=ByteBuffer.allocateDirect(arr.length*4).order(ByteOrder.nativeOrder()).asFloatBuffer();b.put(arr);b.position(0);return b;}
  private void mesh(float[] vertices,int mode,int rgb,float alpha,float[] model){
    if(vertices.length<6)return;
    Matrix.multiplyMM(tempMvp,0,vp,0,model,0);
    GLES20.glUseProgram(program);GLES20.glUniformMatrix4fv(uMvp,1,false,tempMvp,0);
    GLES20.glUniform4f(uColor,((rgb>>16)&255)/255f,((rgb>>8)&255)/255f,(rgb&255)/255f,alpha);
    FloatBuffer data=buffer(vertices);GLES20.glEnableVertexAttribArray(aPos);GLES20.glVertexAttribPointer(aPos,3,GLES20.GL_FLOAT,false,0,data);
    if(alpha<.99f)GLES20.glDepthMask(false);
    GLES20.glDrawArrays(mode,0,vertices.length/3);
    if(alpha<.99f)GLES20.glDepthMask(true);
  }
  private float[] mod(float x,float y,float z){float[] m=new float[16];Matrix.setIdentityM(m,0);Matrix.translateM(m,0,x,y,z);return m;}
  private static void append(ArrayList<Float> out,float... xs){for(float x:xs)out.add(x);}
  private static float[] raw(ArrayList<Float> data){float[] x=new float[data.size()];for(int i=0;i<x.length;i++)x[i]=data.get(i);return x;}
  private void lines(float[] xyz,int color,float alpha,float[] m){GLES20.glLineWidth(2.3f);mesh(xyz,GLES20.GL_LINES,color,alpha,m);}
  private void poly(float[] xyz,int color,float alpha,float[] m){GLES20.glLineWidth(2.8f);mesh(xyz,GLES20.GL_LINE_STRIP,color,alpha,m);}
  private void floorGrid(float x,float z,int rgb){lines(new float[]{x,0,z,x+.001f,0,z},rgb,1,identity);}
  private void drawFloor(){
    box(0,-.055f,0,11,.1f,10,0x101C32,1);
    ArrayList<Float> l=new ArrayList<>();for(int i=-5;i<=5;i++){append(l,i,-.002f,-5,i,-.002f,5);append(l,-5,-.002f,i,5,-.002f,i);}
    lines(raw(l),0x263751,.8f,identity);
    ArrayList<Float> main=new ArrayList<>();append(main,-5,.008f,0,5,.008f,0,0,.008f,-5,0,.008f,5);lines(raw(main),0x416887,.7f,identity);
  }
  private void box(float x,float y,float z,float w,float h,float d,int c,float a){
    float x0=x-w/2,x1=x+w/2,y0=y-h/2,y1=y+h/2,z0=z-d/2,z1=z+d/2;
    float[] arr={
      x0,y0,z1,x1,y0,z1,x1,y1,z1, x0,y0,z1,x1,y1,z1,x0,y1,z1,
      x1,y0,z0,x0,y0,z0,x0,y1,z0, x1,y0,z0,x0,y1,z0,x1,y1,z0,
      x1,y0,z1,x1,y0,z0,x1,y1,z0, x1,y0,z1,x1,y1,z0,x1,y1,z1,
      x0,y0,z0,x0,y0,z1,x0,y1,z1, x0,y0,z0,x0,y1,z1,x0,y1,z0,
      x0,y1,z1,x1,y1,z1,x1,y1,z0, x0,y1,z1,x1,y1,z0,x0,y1,z0,
      x0,y0,z0,x1,y0,z0,x1,y0,z1, x0,y0,z0,x1,y0,z1,x0,y0,z1
    };mesh(arr,GLES20.GL_TRIANGLES,c,a,identity);
  }
  private void cylinder(float x,float y,float z,float r,float h,int c,float a){frustum(x,y,z,r,r,h,c,a);}
  private void frustum(float x,float y,float z,float rBot,float rTop,float h,int color,float alpha){
    int n=24;ArrayList<Float> t=new ArrayList<>();for(int i=0;i<n;i++){
      float aa=(float)(i*2*Math.PI/n),bb=(float)((i+1)*2*Math.PI/n);
      float ca=(float)Math.cos(aa),sa=(float)Math.sin(aa),cb=(float)Math.cos(bb),sb=(float)Math.sin(bb);
      append(t,ca*rBot,0,sa*rBot,cb*rBot,0,sb*rBot,cb*rTop,h,sb*rTop);
      append(t,ca*rBot,0,sa*rBot,cb*rTop,h,sb*rTop,ca*rTop,h,sa*rTop);
      append(t,0,h,0,ca*rTop,h,sa*rTop,cb*rTop,h,sb*rTop);
      append(t,0,0,0,cb*rBot,0,sb*rBot,ca*rBot,0,sa*rBot);
    }mesh(raw(t),GLES20.GL_TRIANGLES,color,alpha,mod(x,y,z));
  }
  private void sphere(float x,float y,float z,float rx,float ry,float rz,int color,float alpha){
    ArrayList<Float> t=new ArrayList<>();int lat=11,lon=17;
    for(int i=0;i<lat;i++){float a=(float)(Math.PI*i/lat),b=(float)(Math.PI*(i+1)/lat);
      for(int j=0;j<lon;j++){float p=(float)(2*Math.PI*j/lon),q=(float)(2*Math.PI*(j+1)/lon);
        float[] v0=sp(a,p,rx,ry,rz),v1=sp(b,p,rx,ry,rz),v2=sp(b,q,rx,ry,rz),v3=sp(a,q,rx,ry,rz);
        append(t,v0[0],v0[1],v0[2],v1[0],v1[1],v1[2],v2[0],v2[1],v2[2]);append(t,v0[0],v0[1],v0[2],v2[0],v2[1],v2[2],v3[0],v3[1],v3[2]);
      }
    }mesh(raw(t),GLES20.GL_TRIANGLES,color,alpha,mod(x,y,z));
  }
  private static float[] sp(float a,float p,float rx,float ry,float rz){return new float[]{rx*(float)Math.sin(a)*(float)Math.cos(p),ry*(float)Math.cos(a),rz*(float)Math.sin(a)*(float)Math.sin(p)};}
  private void ring(float x,float y,float z,float radius,int rgb,float alpha){ArrayList<Float> a=new ArrayList<>();for(int i=0;i<=42;i++){double p=i*Math.PI*2/42;append(a,x+(float)Math.cos(p)*radius,y,z+(float)Math.sin(p)*radius);}poly(raw(a),rgb,alpha,identity);}
  private void rod(float ax,float ay,float az,float bx,float by,float bz,int rgb,float alpha){lines(new float[]{ax,ay,az,bx,by,bz},rgb,alpha,identity);}
  private void drawScene(ArrayList<SimCore.Item> arr){
    for(SimCore.Item t:arr){if(sim.mode==SimCore.CHEM)chemObject(t);else if(sim.mode==SimCore.CIRCUIT)electricObject(t);else if(sim.mode==SimCore.MOTION)motionObject(t);else opticObject(t);
      if(sim.selected==t.id){ring(t.x,.04f,t.z,.66f,CYAN,1);ring(t.x,.02f,t.z,.72f,CYAN,.3f);}
    }
  }
  private void chemObject(SimCore.Item t){float x=t.x,z=t.z;
    if(SimCore.isVessel(t.type)){
      float radius=.44f,h=1.4f,top=.44f;
      switch(t.type){case "试管":radius=.20f;top=.20f;h=1.5f;break;case "锥形瓶":radius=.57f;top=.19f;h=1.5f;break;case "圆底烧瓶":radius=.49f;top=.16f;h=1.7f;break;case "量筒":radius=.25f;top=.25f;h=1.9f;break;case "试剂瓶":radius=.39f;top=.34f;h=1.45f;break;case "培养皿":case "表面皿":radius=.55f;top=.55f;h=.25f;break;case "蒸发皿":radius=.56f;top=.54f;h=.4f;break;case "广口瓶":radius=.51f;top=.48f;h=1.3f;break;}
      box(x,.025f,z,radius*2+.14f,.06f,radius*2+.14f,0x293A51,.7f);
      float maxVolume=400;float lev=Math.min(.84f,t.volume/maxVolume);
      if(t.volume>0){float liquidHeight=Math.max(.065f,(h-.18f)*lev);float lr=radius+(top-radius)*liquidHeight/h;
        frustum(x,.12f,z,Math.max(.04f,radius-.04f),Math.max(.04f,lr-.03f),liquidHeight,t.color,.82f);
        if(t.precipitate)frustum(x,.1f,z,radius-.055f,radius-.055f,.12f,0xF6E3C4,.95f);
        if(t.bubble){for(int i=0;i<9;i++){float xx=(float)Math.sin(i*2.3+t.id)*radius*.58f,zz=(float)Math.cos(i*1.6+t.id)*radius*.58f;float yy=.15f+(i%4)*liquidHeight/5f;
          sphere(x+xx,yy,z+zz,.045f,.05f,.045f,0xC4F8FC,.82f);}}
      }
      frustum(x,.09f,z,radius,top,h,GLASS,.28f);ring(x,.09f+h,z,top,GLASS,.95f);
      if(t.type.equals("量筒"))for(int i=0;i<8;i++)rod(x+.23f,.24f+i*.19f,z,x+.35f,.24f+i*.19f,z,0xB5DDF0,.8f);
      if(t.type.equals("试剂瓶")||t.type.equals("广口瓶"))cylinder(x,h+.13f,z,.23f,.18f,0x4D7AA4,.85f);
      return;
    }
    if(t.type.equals("滴管")){cylinder(x,.45f,z,.06f,.8f,0xC7E9F5,.75f);sphere(x,1.42f,z,.21f,.31f,.21f,0xD38DB6,1);return;}
    if(t.type.equals("漏斗")){frustum(x,.85f,z,.065f,.54f,.55f,GLASS,.55f);cylinder(x,.3f,z,.07f,.6f,GLASS,.75f);return;}
    if(t.type.equals("温度计")||t.type.equals("玻璃棒")){cylinder(x,.14f,z,.038f,1.65f,t.type.equals("温度计")?0xF7B6A5:GLASS,.95f);if(t.type.equals("温度计"))sphere(x,.18f,z,.11f,.13f,.11f,0xF07873,1);return;}
    if(t.type.equals("酒精灯")){sphere(x,.38f,z,.44f,.4f,.44f,0x5082C1,.93f);cylinder(x,.83f,z,.11f,.19f,0xC8CFD4,1);if(t.enabled){frustum(x,1,z,.19f,0,.48f,0xFFB45E,.78f);frustum(x,1.03f,z,.11f,0,.3f,0x83D7FF,.7f);}return;}
    if(t.type.equals("铁架台")){box(x,.07f,z,1,.14f,.85f,0x607890,1);cylinder(x-.35f,.15f,z,.06f,1.95f,0xB2C9D7,1);rod(x-.35f,1.58f,z,x+.4f,1.58f,z,CYAN,1);ring(x+.35f,1.51f,z,.33f,0xC5D9E6,1);return;}
    if(t.type.equals("三脚架")){ring(x,.8f,z,.49f,0xBECAD4,1);for(int i=0;i<3;i++){float a=(float)(i*2*Math.PI/3);rod(x+.38f*(float)Math.cos(a),.8f,z+.38f*(float)Math.sin(a),x+.52f*(float)Math.cos(a),.07f,z+.52f*(float)Math.sin(a),0x8798AC,1);}return;}
    if(t.type.equals("电子天平")){box(x,.17f,z,1.25f,.25f,.82f,0x6C819A,1);box(x,.34f,z,.85f,.08f,.55f,0xB4CED8,1);box(x,.17f,z+.42f,.48f,.13f,.1f,0x7EE9D4,1);return;}
    if(t.type.equals("导管")){rod(x-.55f,.25f,z,x-.55f,1.05f,z,GLASS,.95f);rod(x-.55f,1.05f,z,x+.55f,1.05f,z,GLASS,.95f);return;}
    box(x,.28f,z,.74f,.33f,.64f,0x9FABC1,.85f);
  }
  private void electricObject(SimCore.Item t){float x=t.x,z=t.z;
    box(x,.22f,z,1,.4f,.65f,0x273853,1);
    boolean live=t.electricI>.006f;
    rod(x-.5f,.53f,z,x-.36f,.53f,z,YELLOW,1);rod(x+.5f,.53f,z,x+.36f,.53f,z,CYAN,1);
    sphere(x-.49f,.56f,z,.095f,.09f,.095f,YELLOW,1);sphere(x+.49f,.56f,z,.095f,.09f,.095f,CYAN,1);
    switch(t.type){
      case "电池":box(x,.5f,z,.52f,.6f,.42f,0x3675A8,1);box(x-.27f,.52f,z,.10f,.6f,.44f,0xE97B7B,1);cylinder(x-.18f,.85f,z,.075f,.11f,YELLOW,1);break;
      case "灯泡":cylinder(x,.52f,z,.20f,.17f,0xA7BBCB,1);sphere(x,.95f,z,.43f,.44f,.43f,live?0xFFDD8D:0xB6CBDF,live?1:.70f);if(live)sphere(x,.95f,z,.50f,.51f,.50f,0xFFDB8D,.13f);break;
      case "LED":sphere(x,.78f,z,.34f,.39f,.34f,live?0x70F6BC:0x65849B,1);break;
      case "开关":sphere(x-.22f,.53f,z,.09f,.08f,.08f,YELLOW,1);sphere(x+.24f,.53f,z,.09f,.08f,.08f,YELLOW,1);rod(x-.22f,.62f,z,t.enabled?x+.24f:x+.1f,t.enabled?.62f:.92f,z,t.enabled?CYAN:0xD7A5AA,1);break;
      case "电流表":case "电压表":cylinder(x,.45f,z,.43f,.16f,0x7AA4C2,1);ring(x,.65f,z,.36f,GLASS,1);break;
      case "电阻":case "可变电阻":box(x,.57f,z,.62f,.28f,.36f,0x5E90BA,1);for(int i=-2;i<=2;i++)rod(x+i*.11f,.72f,z-.18f,x+i*.11f,.72f,z+.18f,0x92CDF4,.9f);break;
      case "电动机":sphere(x,.75f,z,.36f,.38f,.37f,0x759EC1,1);cylinder(x,.92f,z,.11f,.23f,0xE2D3AD,1);break;
      case "电容器":box(x-.11f,.66f,z,.09f,.48f,.45f,0x99BED6,1);box(x+.11f,.66f,z,.09f,.48f,.45f,0x99BED6,1);break;
    }
  }
  private float[] terminal(SimCore.Item t,int port){return new float[]{t.x+(port==0?-.5f:.5f),.57f,t.z};}
  private void drawWires(){for(SimCore.Wire w:sim.wires){SimCore.Item a=sim.find(w.idA),b=sim.find(w.idB);if(a==null||b==null)continue;
      float[] aa=terminal(a,w.portA),bb=terminal(b,w.portB);int rgb=a.electricI>.01f||b.electricI>.01f?0x6EECCB:0x5F94C4;
      float midY=.85f+Math.min(.6f,(float)Math.hypot(aa[0]-bb[0],aa[2]-bb[2])*.12f);
      poly(new float[]{aa[0],aa[1],aa[2],aa[0],midY,aa[2],(aa[0]+bb[0])/2,midY,(aa[2]+bb[2])/2,bb[0],midY,bb[2],bb[0],bb[1],bb[2]},rgb,1,identity);
    }}
  private void motionObject(SimCore.Item t){float x=t.x,z=t.z;
    switch(t.type){
      case "小车":box(x,.43f,z,1.13f,.48f,.74f,0x5293CB,1);box(x,.75f,z,.65f,.18f,.6f,0x7CC5E7,.95f);
        for(int sx=-1;sx<=1;sx+=2)for(int sz=-1;sz<=1;sz+=2)sphere(x+sx*.4f,.18f,z+sz*.36f,.17f,.17f,.17f,0x3A506B,1);break;
      case "小球":sphere(x,.47f,z,.45f,.45f,.45f,0x6FE6C9,1);break;
      case "方块":box(x,.53f,z,.92f,.95f,.9f,0x7BA1CE,1);break;
      case "斜面":{float[] tri={-.8f,0,-.5f, .8f,0,-.5f, .8f,.95f,-.5f, -.8f,0,.5f, .8f,0,.5f, .8f,.95f,.5f, -.8f,0,-.5f, -.8f,0,.5f, .8f,.95f,.5f, -.8f,0,-.5f, .8f,.95f,.5f, .8f,.95f,-.5f, .8f,0,-.5f, .8f,0,.5f, .8f,.95f,.5f, .8f,0,-.5f, .8f,.95f,.5f,.8f,.95f,-.5f};mesh(tri,GLES20.GL_TRIANGLES,0x648AAE,1,mod(x,0,z));break;}
      case "弹簧":{ArrayList<Float> spring=new ArrayList<>();for(int i=0;i<60;i++){float p=i*(float)Math.PI/5;append(spring,x-.7f+i*.023f,.55f+(float)Math.cos(p)*.22f,z+(float)Math.sin(p)*.22f);}poly(raw(spring),CYAN,1,identity);break;}
      case "挡板":box(x,.76f,z,.16f,1.45f,1.3f,0x97B2C8,1);break;
      case "砝码":cylinder(x,.12f,z,.33f,.46f,0xA6B9C9,1);cylinder(x,.6f,z,.12f,.22f,0xDDE6E8,1);break;
      case "测力计":box(x,.83f,z,.33f,1.25f,.28f,0x8BA3C2,1);for(int i=0;i<8;i++)rod(x+.18f,.3f+i*.13f,z,x+.22f,.3f+i*.13f,z,YELLOW,.85f);break;
    }
  }
  private void opticObject(SimCore.Item t){float x=t.x,z=t.z;
    switch(t.type){
      case "光源":box(x,.2f,z,.64f,.32f,.6f,0x456B9B,1);sphere(x,.88f,z,.34f,.36f,.34f,0xFFD68A,1);break;
      case "凸透镜":case "凹透镜":box(x,.25f,z,.14f,.47f,.35f,0x879FB4,1);cylinder(x,.48f,z,.04f,.92f,0xB8D7E7,1);sphere(x,1.28f,z,.18f,.72f,.61f,0x80DFFA,.46f);break;
      case "光屏":box(x,1.24f,z,.10f,1.93f,1.55f,0xDAE8E8,.85f);box(x,.16f,z,.58f,.30f,.66f,0x8496B1,1);break;
      case "平面镜":box(x,1.3f,z,.12f,1.8f,1.5f,0x8ABFE0,.75f);break;
      case "棱镜":frustum(x,.32f,z,.5f,.03f,1.3f,0x8ACCE9,.5f);break;
    }
  }
  private void drawRays(){SimCore.Item src=null,lens=null,screen=null;for(SimCore.Item t:sim.active()){
      if(t.type.equals("光源"))src=t;
      if(t.type.equals("凸透镜")||t.type.equals("凹透镜"))lens=t;
      if(t.type.equals("光屏"))screen=t;
    }
    if(src==null||lens==null)return;
    float fx=Math.max(.4f,Math.abs(lens.property));float sourceX=src.x,lensX=lens.x,screenX=screen==null?4.5f:screen.x;
    if(Math.abs(lensX-sourceX)<.2)return;
    for(int i=-2;i<=2;i++){
      float y=1.16f+i*.18f;
      float focal= lens.type.equals("凸透镜")?fx:-fx;
      rod(sourceX,.89f,src.z,lensX,y,lens.z,0xFFA46B,.88f);
      // Thin-lens paraxial approximation in a 3D scene; educational, not a precision ray tracer.
      float dx=lensX-sourceX;
      float incoming=(y-.89f)/dx;
      float outgoing=incoming-(y-1.25f)/focal;
      float yy=y+outgoing*(screenX-lensX);
      rod(lensX,y,lens.z,screenX,Math.max(.15f,Math.min(2.35f,yy)),lens.z,0xFFCC88,.8f);
    }
  }
  private SimCore.Item pick(float x,float y){SimCore.Item selected=null;float best=80f*getResources().getDisplayMetrics().density;
    for(SimCore.Item t:sim.active()){
      float[] p=project(t.x,.76f,t.z);if(p==null)continue;float d=(float)Math.hypot(p[0]-x,p[1]-y);
      if(d<best){best=d;selected=t;}
    }return selected;
  }
  private float[] project(float x,float y,float z){float[] v=new float[4],o=new float[4];Matrix.multiplyMV(o,0,vp,0,new float[]{x,y,z,1},0);if(o[3]<=0)return null;return new float[]{(o[0]/o[3]+1)*width/2,(1-o[1]/o[3])*height/2};}
  private float[] plane(float sx,float sy){float[] inverse=new float[16];if(!Matrix.invertM(inverse,0,vp,0))return null;
    float nx=2*sx/width-1,ny=1-2*sy/height;
    float[] a=new float[4],b=new float[4];Matrix.multiplyMV(a,0,inverse,0,new float[]{nx,ny,-1,1},0);Matrix.multiplyMV(b,0,inverse,0,new float[]{nx,ny,1,1},0);
    if(Math.abs(a[3])<1e-8||Math.abs(b[3])<1e-8)return null;for(int i=0;i<3;i++){a[i]/=a[3];b[i]/=b[3];}
    float dy=b[1]-a[1];if(Math.abs(dy)<1e-6)return null;float f=-a[1]/dy;return new float[]{Math.max(-4.9f,Math.min(4.9f,a[0]+f*(b[0]-a[0]))),Math.max(-4.8f,Math.min(4.8f,a[2]+f*(b[2]-a[2])))};
  }
  private float distance(MotionEvent ev){float dx=ev.getX(0)-ev.getX(1),dy=ev.getY(0)-ev.getY(1);return (float)Math.hypot(dx,dy);}
  private float pinchMidX(MotionEvent ev){return (ev.getX(0)+ev.getX(1))*.5f;}
  private float pinchMidY(MotionEvent ev){return (ev.getY(0)+ev.getY(1))*.5f;}
  private static float clamp(float x,float lo,float hi){return Math.max(lo,Math.min(hi,x));}
  private void panBy(float dx,float dy){
    // Move orbit target in the ground plane. Scaling uses perspective FOV and viewport height.
    float scale=(float)(2*dist*Math.tan(Math.toRadians(47)/2)/Math.max(height,1));
    float ya=(float)Math.toRadians(yaw);
    float rightX=(float)Math.cos(ya),rightZ=-(float)Math.sin(ya);
    float awayX=(float)Math.sin(ya),awayZ=(float)Math.cos(ya);
    panX=clamp(panX-scale*(dx*rightX+dy*awayX),-9,9);
    panZ=clamp(panZ-scale*(dx*rightZ+dy*awayZ),-9,9);
  }
  public void setPanMode(boolean active){panMode=active;}
  public void zoomBy(float factor){dist=clamp(dist/Math.max(.15f,factor),4.3f,30f);}
  public float[] getCameraState(){return new float[]{yaw,pitch,dist,panX,panZ};}
  public void setCameraState(float[] s){if(s!=null&&s.length>=5){yaw=s[0];pitch=s[1];dist=s[2];panX=s[3];panZ=s[4];}}
  @Override public boolean onTouchEvent(MotionEvent event){int what=event.getActionMasked();
    if(what==MotionEvent.ACTION_POINTER_DOWN&&event.getPointerCount()>1){
      zooming=true;dragging=false;lastPinch=distance(event);
      lastCenterX=pinchMidX(event);lastCenterY=pinchMidY(event);return true;
    }
    if(what==MotionEvent.ACTION_POINTER_UP){
      zooming=false;dragging=false;
      int remaining=event.getActionIndex()==0?1:0;
      if(remaining<event.getPointerCount()){lastX=event.getX(remaining);lastY=event.getY(remaining);}
      return true;
    }
    if(what==MotionEvent.ACTION_DOWN){downX=lastX=event.getX();downY=lastY=event.getY();dragging=false;
      if(!panMode){synchronized(sim){SimCore.Item p=pick(downX,downY);if(p!=null){sim.selected=p.id;dragging=true;}else sim.selected=-1;}
        activity.runOnUiThread(activity::refresh);
      }
      return true;
    }
    if(what==MotionEvent.ACTION_MOVE){
      if(zooming&&event.getPointerCount()>1){
        float nextDistance=distance(event),cx=pinchMidX(event),cy=pinchMidY(event);
        if(lastPinch>10)zoomBy(nextDistance/lastPinch);
        panBy(cx-lastCenterX,cy-lastCenterY);
        lastPinch=nextDistance;lastCenterX=cx;lastCenterY=cy;return true;
      }
      float mx=event.getX(),my=event.getY(),dx=mx-lastX,dy=my-lastY;lastX=mx;lastY=my;
      if(panMode)panBy(dx,dy);
      else if(dragging){synchronized(sim){SimCore.Item t=sim.chosen();float[] p=plane(mx,my);
        if(t!=null&&p!=null){t.x=p[0];t.z=p[1];if(sim.mode==SimCore.CIRCUIT)sim.solveCircuit();}}}
      else{yaw+=dx*.28f;pitch=clamp(pitch+dy*.18f,18,77);}
      return true;
    }
    if(what==MotionEvent.ACTION_UP||what==MotionEvent.ACTION_CANCEL){dragging=false;zooming=false;activity.runOnUiThread(activity::refresh);return true;}
    return true;
  }
  public void resetCamera(){yaw=30;pitch=48;dist=12.5f;panX=0;panZ=0;}
}

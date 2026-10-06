.class public Lcom/miui/common/ui/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# instance fields
.field private A:Lcom/miui/common/ui/VlcTextureView;

.field private final B:[F

.field private final C:Ljava/lang/String;

.field private final D:Ljava/lang/String;

.field private a:Ljavax/microedition/khronos/egl/EGL10;

.field private b:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private c:Ljavax/microedition/khronos/egl/EGLContext;

.field private d:[Ljavax/microedition/khronos/egl/EGLConfig;

.field private e:Ljavax/microedition/khronos/egl/EGLSurface;

.field private f:Ljava/nio/FloatBuffer;

.field private g:[F

.field private h:[F

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:F

.field private q:F

.field private r:I

.field private s:I

.field private t:Landroid/graphics/SurfaceTexture;

.field private u:Landroid/view/Surface;

.field private v:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public w:Lcom/miui/fastplayer/FastPlayer;

.field private x:Landroid/content/Context;

.field private y:Landroid/os/HandlerThread;

.field private z:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/common/ui/VlcTextureView;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/common/ui/b;->a:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    iput-object v0, p0, Lcom/miui/common/ui/b;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    iput-object v0, p0, Lcom/miui/common/ui/b;->c:Ljavax/microedition/khronos/egl/EGLContext;

    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/microedition/khronos/egl/EGLConfig;

    iput-object v0, p0, Lcom/miui/common/ui/b;->d:[Ljavax/microedition/khronos/egl/EGLConfig;

    const/16 v0, 0x10

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/miui/common/ui/b;->g:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/miui/common/ui/b;->h:[F

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/common/ui/b;->j:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/common/ui/b;->p:F

    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcom/miui/common/ui/b;->q:F

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/miui/common/ui/b;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/16 v0, 0x14

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/miui/common/ui/b;->B:[F

    const-string v0, "attribute vec3 aPosition;\nuniform mat4 uSTMatrix;\nattribute vec2 aTexCoord;\nvarying vec2 vTexCoord;\n\nvoid main() {\n  vTexCoord = (uSTMatrix * vec4(aTexCoord.xy,0,1)).xy;\n\n  vec4 positionVec4 = vec4(aPosition, 1.0);\n  gl_Position = positionVec4;\n}\n"

    iput-object v0, p0, Lcom/miui/common/ui/b;->C:Ljava/lang/String;

    const-string v0, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\n\nvarying vec2 vTexCoord;\n\nuniform samplerExternalOES uTexture;\nuniform float uState;\nuniform float uHue;\n\n#define tex0 uTexture\n\n#define OFFSET 0.002\nconst vec2 OFFSET0 = vec2(0.0, OFFSET);\nconst vec2 OFFSET1 = vec2(0.0, -OFFSET);\nconst vec2 OFFSET2 = vec2(OFFSET, 0.0);\nconst vec2 OFFSET3 = vec2(-OFFSET, 0.0);\n\nfloat getAlpha(vec3 color){\n    return 3.0 - color.r - color.g - color.b;\n}\n\nvec3 rgb2hsv(vec3 c)\n{\n    vec4 K = vec4(0.0, -1.0 / 3.0, 2.0 / 3.0, -1.0);\n    vec4 p = mix(vec4(c.bg, K.wz), vec4(c.gb, K.xy), step(c.b, c.g));\n    vec4 q = mix(vec4(p.xyw, c.r), vec4(c.r, p.yzx), step(p.x, c.r));\n\n    float d = q.x - min(q.w, q.y);\n    float e = 1.0e-10;\n    return vec3(abs(q.z + (q.w - q.y) / (6.0 * d + e)), d / (q.x + e), q.x);\n}\n\nvec3 hsv2rgb(vec3 c)\n{\n    vec4 K = vec4(1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0);\n    vec3 p = abs(fract(c.xxx + K.xyz) * 6.0 - K.www);\n    return c.z * mix(K.xxx, clamp(p - K.xxx, 0.0, 1.0), c.y);\n}\n\n\nvec3 transferH(vec3 rgb,float h){\n    vec3 hsv = rgb2hsv(rgb);\n    hsv.x += h;\n    return hsv2rgb(hsv);\n}\n\nvec3 setH(vec3 rgb,float h){\n    vec3 hsv = rgb2hsv(rgb);\n    hsv.x = h;\n    return hsv2rgb(hsv);\n}\n\nvec3 toRed(vec3 rgb){\n    return setH(rgb,0.05);\n}\n\nvec3 toGreen(vec3 rgb){\n    return transferH(rgb,0.72);\n}\n\nvoid main() {\n    vec2 uv = vTexCoord;   \n    vec3 rgb = texture2D(tex0, uv).rgb;\n    rgb = mix(rgb,setH(rgb,uHue/360.),uState);\n    gl_FragColor = vec4(rgb, 1.);\n}"

    iput-object v0, p0, Lcom/miui/common/ui/b;->D:Ljava/lang/String;

    const-string v0, "HomeVideoRender"

    const-string v1, "HomeVideoRender()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/miui/common/ui/b;->x:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/common/ui/b;->A:Lcom/miui/common/ui/VlcTextureView;

    return-void

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic a(Lcom/miui/common/ui/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/common/ui/b;->g()V

    return-void
.end method

.method static synthetic b(Lcom/miui/common/ui/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/common/ui/b;->j()V

    return-void
.end method

.method static synthetic c(Lcom/miui/common/ui/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/common/ui/b;->p()V

    return-void
.end method

.method private d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    const v0, 0x8b31

    invoke-direct {p0, v0, p1}, Lcom/miui/common/ui/b;->i(ILjava/lang/String;)I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const v1, 0x8b30

    invoke-direct {p0, v1, p2}, Lcom/miui/common/ui/b;->i(ILjava/lang/String;)I

    move-result p2

    if-nez p2, :cond_1

    return v0

    :cond_1
    iput p1, p0, Lcom/miui/common/ui/b;->r:I

    iput p2, p0, Lcom/miui/common/ui/b;->s:I

    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    invoke-static {v1, p2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    invoke-static {v1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const/4 p1, 0x1

    new-array p2, p1, [I

    const v2, 0x8b82

    invoke-static {v1, v2, p2, v0}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    aget p2, p2, v0

    if-eq p2, p1, :cond_2

    iget p1, p0, Lcom/miui/common/ui/b;->i:I

    iget p2, p0, Lcom/miui/common/ui/b;->r:I

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glDetachShader(II)V

    iget p1, p0, Lcom/miui/common/ui/b;->r:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    iget p1, p0, Lcom/miui/common/ui/b;->i:I

    iget p2, p0, Lcom/miui/common/ui/b;->s:I

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glDetachShader(II)V

    iget p1, p0, Lcom/miui/common/ui/b;->s:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    const-string p1, "HomeVideoRender"

    const-string p2, "Could not link program: "

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    move v1, v0

    goto :goto_1

    :cond_3
    iget p1, p0, Lcom/miui/common/ui/b;->r:I

    if-lez p1, :cond_4

    invoke-static {p1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    :cond_4
    iget p1, p0, Lcom/miui/common/ui/b;->s:I

    if-lez p1, :cond_5

    invoke-static {p1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    :cond_5
    :goto_1
    return v1
.end method

.method private e()V
    .locals 3

    iget v0, p0, Lcom/miui/common/ui/b;->i:I

    if-lez v0, :cond_0

    iget v1, p0, Lcom/miui/common/ui/b;->r:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glDetachShader(II)V

    iget v0, p0, Lcom/miui/common/ui/b;->r:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    iget v0, p0, Lcom/miui/common/ui/b;->i:I

    iget v1, p0, Lcom/miui/common/ui/b;->s:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glDetachShader(II)V

    iget v0, p0, Lcom/miui/common/ui/b;->s:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    iget v0, p0, Lcom/miui/common/ui/b;->i:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    :cond_0
    iget v0, p0, Lcom/miui/common/ui/b;->j:I

    if-ltz v0, :cond_1

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    invoke-static {v2, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    :cond_1
    return-void
.end method

.method private g()V
    .locals 8

    const-string v0, "HomeVideoRender"

    const-string v1, "initEGL "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v1

    check-cast v1, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v1, p0, Lcom/miui/common/ui/b;->a:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/common/ui/b;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eglGetDisplay failed! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/common/ui/b;->a:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [I

    iget-object v2, p0, Lcom/miui/common/ui/b;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/miui/common/ui/b;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v2, v3, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eglInitialize failed! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/common/ui/b;->a:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/16 v1, 0xf

    new-array v4, v1, [I

    fill-array-data v4, :array_0

    const/4 v1, 0x1

    new-array v7, v1, [I

    iget-object v2, p0, Lcom/miui/common/ui/b;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/miui/common/ui/b;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v5, p0, Lcom/miui/common/ui/b;->d:[Ljavax/microedition/khronos/egl/EGLConfig;

    const/4 v6, 0x1

    invoke-interface/range {v2 .. v7}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eglChooseConfig failed! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/common/ui/b;->a:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v1, p0, Lcom/miui/common/ui/b;->A:Lcom/miui/common/ui/VlcTextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    if-nez v1, :cond_3

    return-void

    :cond_3
    iget-object v2, p0, Lcom/miui/common/ui/b;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/miui/common/ui/b;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/miui/common/ui/b;->d:[Ljavax/microedition/khronos/egl/EGLConfig;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v6, 0x0

    invoke-interface {v2, v3, v4, v1, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/common/ui/b;->e:Ljavax/microedition/khronos/egl/EGLSurface;

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    iget-object v2, p0, Lcom/miui/common/ui/b;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/miui/common/ui/b;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/miui/common/ui/b;->d:[Ljavax/microedition/khronos/egl/EGLConfig;

    aget-object v4, v4, v5

    sget-object v6, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v2, v3, v4, v6, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/common/ui/b;->c:Ljavax/microedition/khronos/egl/EGLContext;

    iget-object v2, p0, Lcom/miui/common/ui/b;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eq v2, v3, :cond_4

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v1, v2, :cond_5

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eglCreateContext fail failed! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/common/ui/b;->a:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v1, p0, Lcom/miui/common/ui/b;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/miui/common/ui/b;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/miui/common/ui/b;->e:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lcom/miui/common/ui/b;->c:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v2, v3, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v1

    if-nez v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eglMakeCurrent failed! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/common/ui/b;->a:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const-string v1, "attribute vec3 aPosition;\nuniform mat4 uSTMatrix;\nattribute vec2 aTexCoord;\nvarying vec2 vTexCoord;\n\nvoid main() {\n  vTexCoord = (uSTMatrix * vec4(aTexCoord.xy,0,1)).xy;\n\n  vec4 positionVec4 = vec4(aPosition, 1.0);\n  gl_Position = positionVec4;\n}\n"

    const-string v2, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\n\nvarying vec2 vTexCoord;\n\nuniform samplerExternalOES uTexture;\nuniform float uState;\nuniform float uHue;\n\n#define tex0 uTexture\n\n#define OFFSET 0.002\nconst vec2 OFFSET0 = vec2(0.0, OFFSET);\nconst vec2 OFFSET1 = vec2(0.0, -OFFSET);\nconst vec2 OFFSET2 = vec2(OFFSET, 0.0);\nconst vec2 OFFSET3 = vec2(-OFFSET, 0.0);\n\nfloat getAlpha(vec3 color){\n    return 3.0 - color.r - color.g - color.b;\n}\n\nvec3 rgb2hsv(vec3 c)\n{\n    vec4 K = vec4(0.0, -1.0 / 3.0, 2.0 / 3.0, -1.0);\n    vec4 p = mix(vec4(c.bg, K.wz), vec4(c.gb, K.xy), step(c.b, c.g));\n    vec4 q = mix(vec4(p.xyw, c.r), vec4(c.r, p.yzx), step(p.x, c.r));\n\n    float d = q.x - min(q.w, q.y);\n    float e = 1.0e-10;\n    return vec3(abs(q.z + (q.w - q.y) / (6.0 * d + e)), d / (q.x + e), q.x);\n}\n\nvec3 hsv2rgb(vec3 c)\n{\n    vec4 K = vec4(1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0);\n    vec3 p = abs(fract(c.xxx + K.xyz) * 6.0 - K.www);\n    return c.z * mix(K.xxx, clamp(p - K.xxx, 0.0, 1.0), c.y);\n}\n\n\nvec3 transferH(vec3 rgb,float h){\n    vec3 hsv = rgb2hsv(rgb);\n    hsv.x += h;\n    return hsv2rgb(hsv);\n}\n\nvec3 setH(vec3 rgb,float h){\n    vec3 hsv = rgb2hsv(rgb);\n    hsv.x = h;\n    return hsv2rgb(hsv);\n}\n\nvec3 toRed(vec3 rgb){\n    return setH(rgb,0.05);\n}\n\nvec3 toGreen(vec3 rgb){\n    return transferH(rgb,0.72);\n}\n\nvoid main() {\n    vec2 uv = vTexCoord;   \n    vec3 rgb = texture2D(tex0, uv).rgb;\n    rgb = mix(rgb,setH(rgb,uHue/360.),uState);\n    gl_FragColor = vec4(rgb, 1.);\n}"

    invoke-direct {p0, v1, v2}, Lcom/miui/common/ui/b;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/miui/common/ui/b;->i:I

    if-nez v1, :cond_7

    return-void

    :cond_7
    const-string v2, "aPosition"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/miui/common/ui/b;->n:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_8

    const-string v1, "Could not get attrib location for aPosition"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget v1, p0, Lcom/miui/common/ui/b;->i:I

    const-string v3, "aTexCoord"

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/miui/common/ui/b;->o:I

    if-ne v1, v2, :cond_9

    const-string v1, "Could not get attrib location for aTexCoord"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget v0, p0, Lcom/miui/common/ui/b;->i:I

    const-string v1, "uState"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/common/ui/b;->k:I

    iget v0, p0, Lcom/miui/common/ui/b;->i:I

    const-string v1, "uHue"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/common/ui/b;->l:I

    iget v0, p0, Lcom/miui/common/ui/b;->i:I

    const-string v1, "uSTMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/common/ui/b;->m:I

    iget-object v0, p0, Lcom/miui/common/ui/b;->B:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/ui/b;->f:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/miui/common/ui/b;->B:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/miui/common/ui/b;->h:[F

    invoke-static {v0, v5}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void

    :array_0
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3020
        0x20
        0x3040
        0x4
        0x3033
        0x4
        0x3038
    .end array-data

    :array_1
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method

.method private h()V
    .locals 2

    const-string v0, "HomeVideoRender"

    const-string v1, "initHandler"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/common/ui/b;->z:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Renderer Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/common/ui/b;->y:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Lcom/miui/common/ui/b$a;

    iget-object v1, p0, Lcom/miui/common/ui/b;->y:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/common/ui/b$a;-><init>(Lcom/miui/common/ui/b;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/common/ui/b;->z:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method private i(ILjava/lang/String;)I
    .locals 3

    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const/4 p2, 0x1

    new-array p2, p2, [I

    const v2, 0x8b81

    invoke-static {v0, v2, p2, v1}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    aget p2, p2, v1

    if-nez p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not compile shader "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HomeVideoRender"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    move v0, v1

    :cond_0
    return v0
.end method

.method private j()V
    .locals 10

    iget-object v0, p0, Lcom/miui/common/ui/b;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/miui/common/ui/b;->t:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    iget-object v0, p0, Lcom/miui/common/ui/b;->t:Landroid/graphics/SurfaceTexture;

    iget-object v3, p0, Lcom/miui/common/ui/b;->h:[F

    invoke-virtual {v0, v3}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "HomeVideoRender"

    const-string v2, "onDrawFrame"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {v0}, Lcom/miui/analytics/AnalyticsUtil;->trackException(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/miui/common/ui/b;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/miui/common/ui/b;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/miui/common/ui/b;->e:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v5, p0, Lcom/miui/common/ui/b;->c:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v3, v4, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-static {v4, v0, v4, v3}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v0, 0x4100

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    iget v0, p0, Lcom/miui/common/ui/b;->i:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget-object v0, p0, Lcom/miui/common/ui/b;->f:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v3, p0, Lcom/miui/common/ui/b;->n:I

    const/4 v4, 0x3

    const/16 v5, 0x1406

    const/4 v6, 0x0

    const/16 v7, 0x14

    iget-object v8, p0, Lcom/miui/common/ui/b;->f:Ljava/nio/FloatBuffer;

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v0, p0, Lcom/miui/common/ui/b;->n:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-object v0, p0, Lcom/miui/common/ui/b;->f:Ljava/nio/FloatBuffer;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v4, p0, Lcom/miui/common/ui/b;->o:I

    const/4 v5, 0x3

    const/16 v6, 0x1406

    const/4 v7, 0x0

    const/16 v8, 0x14

    iget-object v9, p0, Lcom/miui/common/ui/b;->f:Ljava/nio/FloatBuffer;

    invoke-static/range {v4 .. v9}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v0, p0, Lcom/miui/common/ui/b;->o:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-object v0, p0, Lcom/miui/common/ui/b;->g:[F

    invoke-static {v0, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget v0, p0, Lcom/miui/common/ui/b;->k:I

    iget v3, p0, Lcom/miui/common/ui/b;->p:F

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v0, p0, Lcom/miui/common/ui/b;->l:I

    iget v3, p0, Lcom/miui/common/ui/b;->q:F

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v0, p0, Lcom/miui/common/ui/b;->m:I

    iget-object v3, p0, Lcom/miui/common/ui/b;->h:[F

    invoke-static {v0, v1, v2, v3, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-static {v0, v2, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    iget-object v0, p0, Lcom/miui/common/ui/b;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/miui/common/ui/b;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/miui/common/ui/b;->e:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    return-void
.end method

.method private p()V
    .locals 3

    iget-object v0, p0, Lcom/miui/common/ui/b;->a:Ljavax/microedition/khronos/egl/EGL10;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/common/ui/b;->c:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/miui/common/ui/b;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v2, :cond_0

    invoke-interface {v0, v2, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    iget-object v0, p0, Lcom/miui/common/ui/b;->e:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/common/ui/b;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/miui/common/ui/b;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public f()V
    .locals 1

    iget-object v0, p0, Lcom/miui/common/ui/b;->t:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p0, v0}, Lcom/miui/common/ui/b;->onFrameAvailable(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method public k(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    const-string p1, "HomeVideoRender"

    const-string p2, "onSurfaceTextureAvailable"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/miui/common/ui/b;->h()V

    const/4 p1, 0x1

    new-array p2, p1, [I

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget p2, p2, p3

    iput p2, p0, Lcom/miui/common/ui/b;->j:I

    const v0, 0x8d65

    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 p2, 0x2801

    const/high16 v1, 0x46180000    # 9728.0f

    invoke-static {v0, p2, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p2, 0x2800

    const v1, 0x46180400    # 9729.0f

    invoke-static {v0, p2, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p2, 0x2802

    const v1, 0x812f

    invoke-static {v0, p2, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p2, 0x2803

    invoke-static {v0, p2, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    iget-object p2, p0, Lcom/miui/common/ui/b;->z:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    new-instance p1, Landroid/graphics/SurfaceTexture;

    iget p2, p0, Lcom/miui/common/ui/b;->j:I

    invoke-direct {p1, p2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object p1, p0, Lcom/miui/common/ui/b;->t:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p1, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    new-instance p1, Landroid/view/Surface;

    iget-object p2, p0, Lcom/miui/common/ui/b;->t:Landroid/graphics/SurfaceTexture;

    invoke-direct {p1, p2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object p1, p0, Lcom/miui/common/ui/b;->u:Landroid/view/Surface;

    const-string p1, "HomeVideoRender"

    const-string p2, "mFastPlayer setVideoSurface"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/common/ui/b;->w:Lcom/miui/fastplayer/FastPlayer;

    iget-object p2, p0, Lcom/miui/common/ui/b;->u:Landroid/view/Surface;

    invoke-virtual {p1, p2}, Lcom/miui/fastplayer/FastPlayer;->setSurface(Landroid/view/Surface;)I

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lcom/miui/common/ui/b;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public l()V
    .locals 3

    const-string v0, "HomeVideoRender"

    const-string v1, "onSurfaceTextureDestroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/miui/common/ui/b;->z:Landroid/os/Handler;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/miui/common/ui/b;->z:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    invoke-direct {p0}, Lcom/miui/common/ui/b;->e()V

    iget-object v1, p0, Lcom/miui/common/ui/b;->z:Landroid/os/Handler;

    if-eqz v1, :cond_1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v1, p0, Lcom/miui/common/ui/b;->y:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/common/ui/b;->y:Landroid/os/HandlerThread;

    iput-object v1, p0, Lcom/miui/common/ui/b;->z:Landroid/os/Handler;

    :cond_1
    iget-object v1, p0, Lcom/miui/common/ui/b;->u:Landroid/view/Surface;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    :cond_2
    iget-object v1, p0, Lcom/miui/common/ui/b;->t:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->release()V

    const-string v1, "mSurface release,mSurfaceTexture release"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public m()V
    .locals 2

    const-string v0, "HomeVideoRender"

    const-string v1, "release()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/common/ui/b;->z:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public n(F)V
    .locals 0

    iput p1, p0, Lcom/miui/common/ui/b;->q:F

    return-void
.end method

.method public o(F)V
    .locals 0

    iput p1, p0, Lcom/miui/common/ui/b;->p:F

    return-void
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/common/ui/b;->z:Landroid/os/Handler;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/miui/common/ui/b;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/common/ui/b;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Lcom/miui/common/ui/b;->z:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method

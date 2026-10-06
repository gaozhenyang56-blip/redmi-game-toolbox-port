.class public Lcom/miui/applicationlock/widget/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private c:Lb3/b;

.field private d:F

.field private e:I

.field private f:F

.field private g:Z

.field private h:Lcom/miui/applicationlock/widget/r;

.field private i:[F

.field private j:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/applicationlock/widget/v;->b:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/miui/applicationlock/widget/v;->d:F

    const/16 v0, 0xc

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/miui/applicationlock/widget/v;->i:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/miui/applicationlock/widget/v;->j:[F

    iput-object p1, p0, Lcom/miui/applicationlock/widget/v;->a:Landroid/content/Context;

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private a([F)Ljava/nio/FloatBuffer;
    .locals 3

    array-length v0, p1

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-object v0
.end method

.method private b(I[F)V
    .locals 6

    invoke-direct {p0, p2}, Lcom/miui/applicationlock/widget/v;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v5

    const/4 p2, 0x0

    invoke-virtual {v5, p2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v0, p1

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    return-void
.end method

.method private c()V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/applicationlock/widget/v;->g:Z

    if-nez v0, :cond_0

    const-string v0, "AppLockGL"

    const-string v1, "Program not created"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget v0, p0, Lcom/miui/applicationlock/widget/v;->b:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/miui/applicationlock/widget/v;->i:[F

    invoke-direct {p0, v0, v1}, Lcom/miui/applicationlock/widget/v;->b(I[F)V

    return-void
.end method

.method private d()V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/applicationlock/widget/v;->g:Z

    if-nez v0, :cond_0

    const-string v0, "AppLockGL"

    const-string v1, "Program not created"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget v0, p0, Lcom/miui/applicationlock/widget/v;->b:I

    const-string v1, "aTexCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/miui/applicationlock/widget/v;->j:[F

    invoke-direct {p0, v0, v1}, Lcom/miui/applicationlock/widget/v;->b(I[F)V

    return-void
.end method

.method private e()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/miui/applicationlock/widget/v;->a:Landroid/content/Context;

    const v1, 0x7f110009

    invoke-direct {p0, v0, v1}, Lcom/miui/applicationlock/widget/v;->f(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private f(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3

    const-string v0, "Close error!"

    const-string v1, "AppLockGL"

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1

    new-instance p2, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p2, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    :try_start_0
    invoke-virtual {p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    :try_start_2
    const-string v2, "Get shader error!"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    const-string p1, ""

    return-object p1

    :goto_3
    :try_start_4
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    throw p1
.end method

.method private g()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/miui/applicationlock/widget/v;->a:Landroid/content/Context;

    const v1, 0x7f11001f

    invoke-direct {p0, v0, v1}, Lcom/miui/applicationlock/widget/v;->f(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public h(Lb3/b;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/widget/v;->c:Lb3/b;

    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 11

    const/4 p1, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, p1, p1, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 p1, 0x4000

    invoke-static {p1}, Landroid/opengl/GLES20;->glClear(I)V

    invoke-direct {p0}, Lcom/miui/applicationlock/widget/v;->c()V

    invoke-direct {p0}, Lcom/miui/applicationlock/widget/v;->d()V

    iget p1, p0, Lcom/miui/applicationlock/widget/v;->e:I

    if-gtz p1, :cond_0

    const/16 p1, 0x3c

    iput p1, p0, Lcom/miui/applicationlock/widget/v;->e:I

    :cond_0
    iget p1, p0, Lcom/miui/applicationlock/widget/v;->d:F

    iget v1, p0, Lcom/miui/applicationlock/widget/v;->e:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    add-float/2addr p1, v0

    iput p1, p0, Lcom/miui/applicationlock/widget/v;->d:F

    iget-object v0, p0, Lcom/miui/applicationlock/widget/v;->h:Lcom/miui/applicationlock/widget/r;

    iget v1, p0, Lcom/miui/applicationlock/widget/v;->f:F

    const-string v2, "uTimeOffset"

    invoke-virtual {v0, v2, v1}, Lcom/miui/applicationlock/widget/r;->a(Ljava/lang/String;F)V

    iget-object v0, p0, Lcom/miui/applicationlock/widget/v;->h:Lcom/miui/applicationlock/widget/r;

    const-string v1, "uTime"

    invoke-virtual {v0, v1, p1}, Lcom/miui/applicationlock/widget/r;->a(Ljava/lang/String;F)V

    iget-object p1, p0, Lcom/miui/applicationlock/widget/v;->c:Lb3/b;

    const-string v0, "u_RbColor"

    const-string v1, "u_RmColor"

    const-string v2, "u_RtColor"

    const-string v3, "u_LbColor"

    const-string v4, "u_LmColor"

    const-string v5, "u_LtColor"

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/applicationlock/widget/v;->h:Lcom/miui/applicationlock/widget/r;

    const v6, 0x3cf5c28f    # 0.03f

    const v7, 0x3f47ae14    # 0.78f

    const v8, 0x3ec28f5c    # 0.38f

    invoke-virtual {p1, v5, v6, v7, v8}, Lcom/miui/applicationlock/widget/r;->b(Ljava/lang/String;FFF)V

    iget-object p1, p0, Lcom/miui/applicationlock/widget/v;->h:Lcom/miui/applicationlock/widget/r;

    const v5, 0x3f70a3d7    # 0.94f

    const v9, 0x3f63d70a    # 0.89f

    const v10, 0x3f59999a    # 0.85f

    invoke-virtual {p1, v4, v5, v9, v10}, Lcom/miui/applicationlock/widget/r;->b(Ljava/lang/String;FFF)V

    iget-object p1, p0, Lcom/miui/applicationlock/widget/v;->h:Lcom/miui/applicationlock/widget/r;

    invoke-virtual {p1, v3, v6, v7, v8}, Lcom/miui/applicationlock/widget/r;->b(Ljava/lang/String;FFF)V

    iget-object p1, p0, Lcom/miui/applicationlock/widget/v;->h:Lcom/miui/applicationlock/widget/r;

    const v3, 0x3f19999a    # 0.6f

    invoke-virtual {p1, v2, v6, v7, v3}, Lcom/miui/applicationlock/widget/r;->b(Ljava/lang/String;FFF)V

    iget-object p1, p0, Lcom/miui/applicationlock/widget/v;->h:Lcom/miui/applicationlock/widget/r;

    invoke-virtual {p1, v1, v6, v7, v8}, Lcom/miui/applicationlock/widget/r;->b(Ljava/lang/String;FFF)V

    iget-object p1, p0, Lcom/miui/applicationlock/widget/v;->h:Lcom/miui/applicationlock/widget/r;

    invoke-virtual {p1, v0, v6, v7, v3}, Lcom/miui/applicationlock/widget/r;->b(Ljava/lang/String;FFF)V

    goto/16 :goto_0

    :cond_1
    iget-object v6, p0, Lcom/miui/applicationlock/widget/v;->h:Lcom/miui/applicationlock/widget/r;

    invoke-virtual {p1}, Lb3/b;->g()F

    move-result p1

    iget-object v7, p0, Lcom/miui/applicationlock/widget/v;->c:Lb3/b;

    invoke-virtual {v7}, Lb3/b;->d()F

    move-result v7

    iget-object v8, p0, Lcom/miui/applicationlock/widget/v;->c:Lb3/b;

    invoke-virtual {v8}, Lb3/b;->a()F

    move-result v8

    invoke-virtual {v6, v5, p1, v7, v8}, Lcom/miui/applicationlock/widget/r;->b(Ljava/lang/String;FFF)V

    iget-object p1, p0, Lcom/miui/applicationlock/widget/v;->h:Lcom/miui/applicationlock/widget/r;

    iget-object v5, p0, Lcom/miui/applicationlock/widget/v;->c:Lb3/b;

    invoke-virtual {v5}, Lb3/b;->h()F

    move-result v5

    iget-object v6, p0, Lcom/miui/applicationlock/widget/v;->c:Lb3/b;

    invoke-virtual {v6}, Lb3/b;->e()F

    move-result v6

    iget-object v7, p0, Lcom/miui/applicationlock/widget/v;->c:Lb3/b;

    invoke-virtual {v7}, Lb3/b;->b()F

    move-result v7

    invoke-virtual {p1, v4, v5, v6, v7}, Lcom/miui/applicationlock/widget/r;->b(Ljava/lang/String;FFF)V

    iget-object p1, p0, Lcom/miui/applicationlock/widget/v;->h:Lcom/miui/applicationlock/widget/r;

    iget-object v4, p0, Lcom/miui/applicationlock/widget/v;->c:Lb3/b;

    invoke-virtual {v4}, Lb3/b;->g()F

    move-result v4

    iget-object v5, p0, Lcom/miui/applicationlock/widget/v;->c:Lb3/b;

    invoke-virtual {v5}, Lb3/b;->d()F

    move-result v5

    iget-object v6, p0, Lcom/miui/applicationlock/widget/v;->c:Lb3/b;

    invoke-virtual {v6}, Lb3/b;->a()F

    move-result v6

    invoke-virtual {p1, v3, v4, v5, v6}, Lcom/miui/applicationlock/widget/r;->b(Ljava/lang/String;FFF)V

    iget-object p1, p0, Lcom/miui/applicationlock/widget/v;->h:Lcom/miui/applicationlock/widget/r;

    iget-object v3, p0, Lcom/miui/applicationlock/widget/v;->c:Lb3/b;

    invoke-virtual {v3}, Lb3/b;->i()F

    move-result v3

    iget-object v4, p0, Lcom/miui/applicationlock/widget/v;->c:Lb3/b;

    invoke-virtual {v4}, Lb3/b;->f()F

    move-result v4

    iget-object v5, p0, Lcom/miui/applicationlock/widget/v;->c:Lb3/b;

    invoke-virtual {v5}, Lb3/b;->c()F

    move-result v5

    invoke-virtual {p1, v2, v3, v4, v5}, Lcom/miui/applicationlock/widget/r;->b(Ljava/lang/String;FFF)V

    iget-object p1, p0, Lcom/miui/applicationlock/widget/v;->h:Lcom/miui/applicationlock/widget/r;

    iget-object v2, p0, Lcom/miui/applicationlock/widget/v;->c:Lb3/b;

    invoke-virtual {v2}, Lb3/b;->g()F

    move-result v2

    iget-object v3, p0, Lcom/miui/applicationlock/widget/v;->c:Lb3/b;

    invoke-virtual {v3}, Lb3/b;->d()F

    move-result v3

    iget-object v4, p0, Lcom/miui/applicationlock/widget/v;->c:Lb3/b;

    invoke-virtual {v4}, Lb3/b;->a()F

    move-result v4

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/miui/applicationlock/widget/r;->b(Ljava/lang/String;FFF)V

    iget-object p1, p0, Lcom/miui/applicationlock/widget/v;->h:Lcom/miui/applicationlock/widget/r;

    iget-object v1, p0, Lcom/miui/applicationlock/widget/v;->c:Lb3/b;

    invoke-virtual {v1}, Lb3/b;->i()F

    move-result v1

    iget-object v2, p0, Lcom/miui/applicationlock/widget/v;->c:Lb3/b;

    invoke-virtual {v2}, Lb3/b;->f()F

    move-result v2

    iget-object v3, p0, Lcom/miui/applicationlock/widget/v;->c:Lb3/b;

    invoke-virtual {v3}, Lb3/b;->c()F

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/miui/applicationlock/widget/r;->b(Ljava/lang/String;FFF)V

    :goto_0
    const/4 p1, 0x4

    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-static {p1, v0, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0

    const/4 p1, 0x0

    invoke-static {p1, p1, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const-string p1, "AppLockGL"

    const-string p2, "onSurfaceChanged()"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2

    invoke-direct {p0}, Lcom/miui/applicationlock/widget/v;->g()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lcom/miui/applicationlock/widget/v;->e()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/applicationlock/widget/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/miui/applicationlock/widget/v;->b:I

    invoke-static {p1}, Lcom/miui/applicationlock/widget/s;->f(I)I

    iget p1, p0, Lcom/miui/applicationlock/widget/v;->b:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/applicationlock/widget/v;->g:Z

    invoke-direct {p0}, Lcom/miui/applicationlock/widget/v;->c()V

    invoke-direct {p0}, Lcom/miui/applicationlock/widget/v;->d()V

    new-instance p1, Lcom/miui/applicationlock/widget/r;

    iget p2, p0, Lcom/miui/applicationlock/widget/v;->b:I

    invoke-direct {p1, p2}, Lcom/miui/applicationlock/widget/r;-><init>(I)V

    iput-object p1, p0, Lcom/miui/applicationlock/widget/v;->h:Lcom/miui/applicationlock/widget/r;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide p1

    const-wide v0, 0x408f400000000000L    # 1000.0

    mul-double/2addr p1, v0

    double-to-float p1, p1

    iput p1, p0, Lcom/miui/applicationlock/widget/v;->f:F

    iget-object p1, p0, Lcom/miui/applicationlock/widget/v;->a:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRefreshRate()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/miui/applicationlock/widget/v;->e:I

    const-string p1, "AppLockGL"

    const-string p2, "onSurfaceCreated()"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

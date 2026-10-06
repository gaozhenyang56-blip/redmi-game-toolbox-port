.class public Lcom/miui/securityscan/ui/main/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/securityscan/ui/main/b$n;


# instance fields
.field private A:F

.field private B:F

.field private C:F

.field private D:F

.field private E:F

.field private F:F

.field private G:F

.field private H:F

.field private I:F

.field private J:F

.field private K:F

.field private L:F

.field private M:F

.field private N:F

.field private O:F

.field private P:F

.field private Q:F

.field private R:F

.field private S:F

.field private T:F

.field private U:F

.field private V:F

.field private W:[F

.field private X:[F

.field private Y:[S

.field private Z:Ljava/nio/FloatBuffer;

.field private a:Landroid/content/Context;

.field private a0:Ljava/nio/FloatBuffer;

.field private b:I

.field private b0:Ljava/nio/ShortBuffer;

.field private c:I

.field private volatile c0:Z

.field private d:I

.field private volatile d0:Z

.field private e:I

.field private e0:Z

.field private f:I

.field private f0:I

.field private g:I

.field private final g0:Landroid/os/Handler;

.field private h:I

.field private final h0:Ljava/lang/Runnable;

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:F

.field private w:F

.field private x:F

.field private y:F

.field private z:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/securityscan/ui/main/o;->b:I

    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p0, Lcom/miui/securityscan/ui/main/o;->x:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/miui/securityscan/ui/main/o;->y:F

    const v1, 0x3f7ae148    # 0.98f

    iput v1, p0, Lcom/miui/securityscan/ui/main/o;->A:F

    iput v1, p0, Lcom/miui/securityscan/ui/main/o;->B:F

    iput v1, p0, Lcom/miui/securityscan/ui/main/o;->C:F

    const/high16 v2, 0x3f000000    # 0.5f

    iput v2, p0, Lcom/miui/securityscan/ui/main/o;->D:F

    iput v1, p0, Lcom/miui/securityscan/ui/main/o;->E:F

    iput v1, p0, Lcom/miui/securityscan/ui/main/o;->F:F

    iput v1, p0, Lcom/miui/securityscan/ui/main/o;->G:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/miui/securityscan/ui/main/o;->H:F

    const v2, 0x3f51eb85    # 0.82f

    iput v2, p0, Lcom/miui/securityscan/ui/main/o;->I:F

    iput v0, p0, Lcom/miui/securityscan/ui/main/o;->J:F

    iput v0, p0, Lcom/miui/securityscan/ui/main/o;->K:F

    const v2, 0x3ec28f5c    # 0.38f

    iput v2, p0, Lcom/miui/securityscan/ui/main/o;->L:F

    const v3, 0x3ec7ae14    # 0.39f

    iput v3, p0, Lcom/miui/securityscan/ui/main/o;->M:F

    iput v2, p0, Lcom/miui/securityscan/ui/main/o;->N:F

    iput v0, p0, Lcom/miui/securityscan/ui/main/o;->O:F

    const v2, 0x3f4f5c29    # 0.81f

    iput v2, p0, Lcom/miui/securityscan/ui/main/o;->P:F

    iput v0, p0, Lcom/miui/securityscan/ui/main/o;->Q:F

    const v0, 0x3eeb851f    # 0.46f

    iput v0, p0, Lcom/miui/securityscan/ui/main/o;->R:F

    iput v1, p0, Lcom/miui/securityscan/ui/main/o;->S:F

    const v0, 0x3f99999a    # 1.2f

    iput v0, p0, Lcom/miui/securityscan/ui/main/o;->T:F

    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/miui/securityscan/ui/main/o;->U:F

    iput v1, p0, Lcom/miui/securityscan/ui/main/o;->V:F

    const/16 v0, 0x8

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/miui/securityscan/ui/main/o;->W:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/o;->X:[F

    const/4 v0, 0x6

    new-array v0, v0, [S

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/o;->Y:[S

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/securityscan/ui/main/o;->c0:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/securityscan/ui/main/o;->d0:Z

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/o;->g0:Landroid/os/Handler;

    new-instance v0, Lcom/miui/securityscan/ui/main/n;

    invoke-direct {v0, p0}, Lcom/miui/securityscan/ui/main/n;-><init>(Lcom/miui/securityscan/ui/main/o;)V

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/o;->h0:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/miui/securityscan/ui/main/o;->a:Landroid/content/Context;

    invoke-static {}, Lx4/t;->r()Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/securityscan/ui/main/o;->e0:Z

    return-void

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 2
        0x0s
        0x1s
        0x2s
        0x1s
        0x3s
        0x2s
    .end array-data
.end method

.method public static synthetic a(Lcom/miui/securityscan/ui/main/o;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/securityscan/ui/main/o;->k()V

    return-void
.end method

.method static synthetic b(Lcom/miui/securityscan/ui/main/o;F)F
    .locals 0

    iput p1, p0, Lcom/miui/securityscan/ui/main/o;->V:F

    return p1
.end method

.method static synthetic c(Lcom/miui/securityscan/ui/main/o;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/securityscan/ui/main/o;->c0:Z

    return p1
.end method

.method private d()V
    .locals 4

    iget-boolean v0, p0, Lcom/miui/securityscan/ui/main/o;->d0:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/o;->g0:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/securityscan/ui/main/o;->h0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/o;->g0:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/securityscan/ui/main/o;->h0:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private e()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/o;->a:Landroid/content/Context;

    const v1, 0x7f11000c

    invoke-direct {p0, v0, v1}, Lcom/miui/securityscan/ui/main/o;->f(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private f(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3

    const-string v0, "Close error!"

    const-string v1, "TabletRender"

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

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/o;->a:Landroid/content/Context;

    const v1, 0x7f11000d

    invoke-direct {p0, v0, v1}, Lcom/miui/securityscan/ui/main/o;->f(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private h()V
    .locals 2

    iget v0, p0, Lcom/miui/securityscan/ui/main/o;->b:I

    const-string v1, "a_Position"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/securityscan/ui/main/o;->r:I

    iget v0, p0, Lcom/miui/securityscan/ui/main/o;->b:I

    const-string v1, "a_TexCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/securityscan/ui/main/o;->s:I

    iget v0, p0, Lcom/miui/securityscan/ui/main/o;->b:I

    const-string v1, "uTime"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/securityscan/ui/main/o;->m:I

    iget v0, p0, Lcom/miui/securityscan/ui/main/o;->b:I

    const-string v1, "tex0"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/securityscan/ui/main/o;->n:I

    iget v0, p0, Lcom/miui/securityscan/ui/main/o;->b:I

    const-string v1, "tex1"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/securityscan/ui/main/o;->o:I

    iget v0, p0, Lcom/miui/securityscan/ui/main/o;->b:I

    const-string v1, "uResolution"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/securityscan/ui/main/o;->d:I

    iget v0, p0, Lcom/miui/securityscan/ui/main/o;->b:I

    const-string v1, "colBg"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/securityscan/ui/main/o;->e:I

    iget v0, p0, Lcom/miui/securityscan/ui/main/o;->b:I

    const-string v1, "col0"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/securityscan/ui/main/o;->f:I

    iget v0, p0, Lcom/miui/securityscan/ui/main/o;->b:I

    const-string v1, "fromCol1"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/securityscan/ui/main/o;->g:I

    iget v0, p0, Lcom/miui/securityscan/ui/main/o;->b:I

    const-string v1, "fromCol2"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/securityscan/ui/main/o;->h:I

    iget v0, p0, Lcom/miui/securityscan/ui/main/o;->b:I

    const-string v1, "toCol1"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/securityscan/ui/main/o;->i:I

    iget v0, p0, Lcom/miui/securityscan/ui/main/o;->b:I

    const-string v1, "toCol2"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/securityscan/ui/main/o;->j:I

    iget v0, p0, Lcom/miui/securityscan/ui/main/o;->b:I

    const-string v1, "progress"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/securityscan/ui/main/o;->k:I

    iget v0, p0, Lcom/miui/securityscan/ui/main/o;->b:I

    const-string v1, "uSpeedScale"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/securityscan/ui/main/o;->l:I

    iget v0, p0, Lcom/miui/securityscan/ui/main/o;->b:I

    const-string v1, "uY"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/securityscan/ui/main/o;->p:I

    iget v0, p0, Lcom/miui/securityscan/ui/main/o;->b:I

    const-string v1, "uSize"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/securityscan/ui/main/o;->q:I

    return-void
.end method

.method private i()V
    .locals 2

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/o;->a:Landroid/content/Context;

    const v1, 0x7f080dd7

    invoke-static {v0, v1}, Lx4/o1;->a(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/miui/securityscan/ui/main/o;->t:I

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/o;->a:Landroid/content/Context;

    const v1, 0x7f080dd6

    invoke-static {v0, v1}, Lx4/o1;->a(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/miui/securityscan/ui/main/o;->u:I

    return-void
.end method

.method private j()V
    .locals 3

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/o;->W:[F

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

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/o;->Z:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/miui/securityscan/ui/main/o;->W:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/o;->Z:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/o;->X:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/o;->a0:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/miui/securityscan/ui/main/o;->X:[F

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/o;->a0:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/o;->Y:[S

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/o;->b0:Ljava/nio/ShortBuffer;

    iget-object v2, p0, Lcom/miui/securityscan/ui/main/o;->Y:[S

    invoke-virtual {v0, v2}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/o;->b0:Ljava/nio/ShortBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method private synthetic k()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/securityscan/ui/main/o;->d0:Z

    return-void
.end method


# virtual methods
.method public l()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/securityscan/ui/main/o;->d0:Z

    invoke-direct {p0}, Lcom/miui/securityscan/ui/main/o;->d()V

    return-void
.end method

.method public m(FFF)V
    .locals 0

    iput p1, p0, Lcom/miui/securityscan/ui/main/o;->H:F

    iput p2, p0, Lcom/miui/securityscan/ui/main/o;->I:F

    iput p3, p0, Lcom/miui/securityscan/ui/main/o;->J:F

    return-void
.end method

.method public n(FFF)V
    .locals 0

    iput p1, p0, Lcom/miui/securityscan/ui/main/o;->K:F

    iput p2, p0, Lcom/miui/securityscan/ui/main/o;->L:F

    iput p3, p0, Lcom/miui/securityscan/ui/main/o;->M:F

    return-void
.end method

.method public o(FFF)V
    .locals 0

    iput p1, p0, Lcom/miui/securityscan/ui/main/o;->N:F

    iput p2, p0, Lcom/miui/securityscan/ui/main/o;->O:F

    iput p3, p0, Lcom/miui/securityscan/ui/main/o;->P:F

    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 14

    iget-boolean p1, p0, Lcom/miui/securityscan/ui/main/o;->e0:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/miui/securityscan/ui/main/o;->c0:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/miui/securityscan/ui/main/o;->d0:Z

    if-nez p1, :cond_0

    const-wide/16 v0, 0x32

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    invoke-static {p1, v0, v0, p1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 p1, 0x4000

    invoke-static {p1}, Landroid/opengl/GLES20;->glClear(I)V

    iget p1, p0, Lcom/miui/securityscan/ui/main/o;->c:I

    if-gtz p1, :cond_1

    const/16 p1, 0x3c

    iput p1, p0, Lcom/miui/securityscan/ui/main/o;->c:I

    :cond_1
    const p1, 0x84c0

    invoke-static {p1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget p1, p0, Lcom/miui/securityscan/ui/main/o;->t:I

    const/16 v0, 0xde1

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget p1, p0, Lcom/miui/securityscan/ui/main/o;->n:I

    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const p1, 0x84c1

    invoke-static {p1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget p1, p0, Lcom/miui/securityscan/ui/main/o;->u:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget p1, p0, Lcom/miui/securityscan/ui/main/o;->o:I

    const/4 v2, 0x1

    invoke-static {p1, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget p1, p0, Lcom/miui/securityscan/ui/main/o;->y:F

    iget v2, p0, Lcom/miui/securityscan/ui/main/o;->V:F

    iget v3, p0, Lcom/miui/securityscan/ui/main/o;->c:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    add-float/2addr p1, v2

    iput p1, p0, Lcom/miui/securityscan/ui/main/o;->y:F

    iget v2, p0, Lcom/miui/securityscan/ui/main/o;->m:I

    invoke-static {v2, p1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget p1, p0, Lcom/miui/securityscan/ui/main/o;->d:I

    iget v2, p0, Lcom/miui/securityscan/ui/main/o;->v:F

    iget v3, p0, Lcom/miui/securityscan/ui/main/o;->w:F

    invoke-static {p1, v2, v3}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    iget p1, p0, Lcom/miui/securityscan/ui/main/o;->e:I

    iget v2, p0, Lcom/miui/securityscan/ui/main/o;->A:F

    iget v3, p0, Lcom/miui/securityscan/ui/main/o;->B:F

    iget v4, p0, Lcom/miui/securityscan/ui/main/o;->C:F

    invoke-static {p1, v2, v3, v4}, Landroid/opengl/GLES20;->glUniform3f(IFFF)V

    iget p1, p0, Lcom/miui/securityscan/ui/main/o;->f:I

    iget v2, p0, Lcom/miui/securityscan/ui/main/o;->E:F

    iget v3, p0, Lcom/miui/securityscan/ui/main/o;->F:F

    iget v4, p0, Lcom/miui/securityscan/ui/main/o;->G:F

    iget v5, p0, Lcom/miui/securityscan/ui/main/o;->D:F

    invoke-static {p1, v2, v3, v4, v5}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    iget p1, p0, Lcom/miui/securityscan/ui/main/o;->g:I

    iget v2, p0, Lcom/miui/securityscan/ui/main/o;->H:F

    iget v3, p0, Lcom/miui/securityscan/ui/main/o;->I:F

    iget v4, p0, Lcom/miui/securityscan/ui/main/o;->J:F

    invoke-static {p1, v2, v3, v4}, Landroid/opengl/GLES20;->glUniform3f(IFFF)V

    iget p1, p0, Lcom/miui/securityscan/ui/main/o;->h:I

    iget v2, p0, Lcom/miui/securityscan/ui/main/o;->N:F

    iget v3, p0, Lcom/miui/securityscan/ui/main/o;->O:F

    iget v4, p0, Lcom/miui/securityscan/ui/main/o;->P:F

    invoke-static {p1, v2, v3, v4}, Landroid/opengl/GLES20;->glUniform3f(IFFF)V

    iget p1, p0, Lcom/miui/securityscan/ui/main/o;->i:I

    iget v2, p0, Lcom/miui/securityscan/ui/main/o;->K:F

    iget v3, p0, Lcom/miui/securityscan/ui/main/o;->L:F

    iget v4, p0, Lcom/miui/securityscan/ui/main/o;->M:F

    invoke-static {p1, v2, v3, v4}, Landroid/opengl/GLES20;->glUniform3f(IFFF)V

    iget p1, p0, Lcom/miui/securityscan/ui/main/o;->j:I

    iget v2, p0, Lcom/miui/securityscan/ui/main/o;->Q:F

    iget v3, p0, Lcom/miui/securityscan/ui/main/o;->R:F

    iget v4, p0, Lcom/miui/securityscan/ui/main/o;->S:F

    invoke-static {p1, v2, v3, v4}, Landroid/opengl/GLES20;->glUniform3f(IFFF)V

    iget p1, p0, Lcom/miui/securityscan/ui/main/o;->k:I

    iget v2, p0, Lcom/miui/securityscan/ui/main/o;->z:F

    invoke-static {p1, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget p1, p0, Lcom/miui/securityscan/ui/main/o;->l:I

    iget v2, p0, Lcom/miui/securityscan/ui/main/o;->x:F

    invoke-static {p1, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget p1, p0, Lcom/miui/securityscan/ui/main/o;->p:I

    iget v2, p0, Lcom/miui/securityscan/ui/main/o;->T:F

    invoke-static {p1, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget p1, p0, Lcom/miui/securityscan/ui/main/o;->q:I

    iget v2, p0, Lcom/miui/securityscan/ui/main/o;->U:F

    invoke-static {p1, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget p1, p0, Lcom/miui/securityscan/ui/main/o;->r:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget p1, p0, Lcom/miui/securityscan/ui/main/o;->s:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v2, p0, Lcom/miui/securityscan/ui/main/o;->r:I

    const/4 v3, 0x2

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/miui/securityscan/ui/main/o;->Z:Ljava/nio/FloatBuffer;

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v8, p0, Lcom/miui/securityscan/ui/main/o;->s:I

    const/4 v9, 0x2

    const/16 v10, 0x1406

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/miui/securityscan/ui/main/o;->a0:Ljava/nio/FloatBuffer;

    invoke-static/range {v8 .. v13}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const/4 p1, 0x4

    const/4 v2, 0x6

    const/16 v3, 0x1403

    iget-object v4, p0, Lcom/miui/securityscan/ui/main/o;->b0:Ljava/nio/ShortBuffer;

    invoke-static {p1, v2, v3, v4}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0

    const/4 p1, 0x0

    invoke-static {p1, p1, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const-string p1, "TabletRender"

    const-string p2, "onSurfaceChanged()"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/securityscan/ui/main/o;->j()V

    invoke-direct {p0}, Lcom/miui/securityscan/ui/main/o;->i()V

    invoke-direct {p0}, Lcom/miui/securityscan/ui/main/o;->g()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lcom/miui/securityscan/ui/main/o;->e()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Leg/l;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/miui/securityscan/ui/main/o;->b:I

    invoke-static {p1}, Leg/l;->f(I)I

    iget p1, p0, Lcom/miui/securityscan/ui/main/o;->b:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget-object p1, p0, Lcom/miui/securityscan/ui/main/o;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/securityscan/ui/main/o;->s(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/miui/securityscan/ui/main/o;->h()V

    iget-object p1, p0, Lcom/miui/securityscan/ui/main/o;->a:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRefreshRate()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/miui/securityscan/ui/main/o;->c:I

    const-string p1, "TabletRender"

    const-string p2, "onSurfaceCreated()"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public p(FFF)V
    .locals 0

    iput p1, p0, Lcom/miui/securityscan/ui/main/o;->Q:F

    iput p2, p0, Lcom/miui/securityscan/ui/main/o;->R:F

    iput p3, p0, Lcom/miui/securityscan/ui/main/o;->S:F

    return-void
.end method

.method public q(FFF)V
    .locals 0

    iput p1, p0, Lcom/miui/securityscan/ui/main/o;->A:F

    iput p2, p0, Lcom/miui/securityscan/ui/main/o;->B:F

    iput p3, p0, Lcom/miui/securityscan/ui/main/o;->C:F

    return-void
.end method

.method public r(II)V
    .locals 2

    int-to-float v0, p1

    iput v0, p0, Lcom/miui/securityscan/ui/main/o;->v:F

    int-to-float v0, p2

    iput v0, p0, Lcom/miui/securityscan/ui/main/o;->w:F

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "screen_with: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "------, screen_height: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TabletRender"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public s(Landroid/content/res/Configuration;)V
    .locals 2

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const p1, 0x3fd9999a    # 1.7f

    invoke-virtual {p0, p1}, Lcom/miui/securityscan/ui/main/o;->v(F)V

    const/high16 p1, 0x3fc00000    # 1.5f

    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/securityscan/ui/main/o;->u(F)V

    goto :goto_3

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_2

    iget p1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    const/16 v0, 0x1e0

    if-gt p1, v0, :cond_1

    const p1, 0x3f4ccccd    # 0.8f

    goto :goto_1

    :cond_1
    const p1, 0x3f8ccccd    # 1.1f

    :goto_1
    invoke-virtual {p0, p1}, Lcom/miui/securityscan/ui/main/o;->v(F)V

    invoke-virtual {p0, v1}, Lcom/miui/securityscan/ui/main/o;->u(F)V

    goto :goto_3

    :cond_2
    iget-boolean v0, p0, Lcom/miui/securityscan/ui/main/o;->e0:Z

    if-eqz v0, :cond_5

    iget p1, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 p1, p1, 0xf

    iget v0, p0, Lcom/miui/securityscan/ui/main/o;->f0:I

    if-eq v0, p1, :cond_5

    iput p1, p0, Lcom/miui/securityscan/ui/main/o;->f0:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    goto :goto_2

    :cond_3
    const p1, 0x3ecccccd    # 0.4f

    invoke-virtual {p0, p1}, Lcom/miui/securityscan/ui/main/o;->v(F)V

    const p1, 0x400ccccd    # 2.2f

    goto :goto_0

    :cond_4
    :goto_2
    const p1, 0x3f666666    # 0.9f

    goto :goto_1

    :cond_5
    :goto_3
    return-void
.end method

.method public t(F)V
    .locals 0

    iput p1, p0, Lcom/miui/securityscan/ui/main/o;->z:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/securityscan/ui/main/o;->d0:Z

    invoke-direct {p0}, Lcom/miui/securityscan/ui/main/o;->d()V

    return-void
.end method

.method public u(F)V
    .locals 0

    iput p1, p0, Lcom/miui/securityscan/ui/main/o;->U:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/securityscan/ui/main/o;->d0:Z

    invoke-direct {p0}, Lcom/miui/securityscan/ui/main/o;->d()V

    return-void
.end method

.method public v(F)V
    .locals 0

    iput p1, p0, Lcom/miui/securityscan/ui/main/o;->T:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/securityscan/ui/main/o;->d0:Z

    invoke-direct {p0}, Lcom/miui/securityscan/ui/main/o;->d()V

    return-void
.end method

.method public w(FFFF)V
    .locals 0

    iput p1, p0, Lcom/miui/securityscan/ui/main/o;->D:F

    iput p2, p0, Lcom/miui/securityscan/ui/main/o;->E:F

    iput p3, p0, Lcom/miui/securityscan/ui/main/o;->F:F

    iput p4, p0, Lcom/miui/securityscan/ui/main/o;->G:F

    return-void
.end method

.method public x()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/securityscan/ui/main/o;->c0:Z

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/securityscan/ui/main/o$a;

    invoke-direct {v1, p0}, Lcom/miui/securityscan/ui/main/o$a;-><init>(Lcom/miui/securityscan/ui/main/o;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
    .end array-data
.end method

.method public y()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/securityscan/ui/main/o$b;

    invoke-direct {v1, p0}, Lcom/miui/securityscan/ui/main/o$b;-><init>(Lcom/miui/securityscan/ui/main/o;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/miui/securityscan/ui/main/o$c;

    invoke-direct {v1, p0}, Lcom/miui/securityscan/ui/main/o$c;-><init>(Lcom/miui/securityscan/ui/main/o;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/miui/securityscan/ui/main/o;->x:F

    return-void

    nop

    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x0
    .end array-data
.end method

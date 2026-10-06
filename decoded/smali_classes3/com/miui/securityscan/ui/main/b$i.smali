.class Lcom/miui/securityscan/ui/main/b$i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/securityscan/ui/main/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "i"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/securityscan/ui/main/b;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljavax/microedition/khronos/egl/EGL10;

.field c:Ljavax/microedition/khronos/egl/EGLDisplay;

.field d:Ljavax/microedition/khronos/egl/EGLSurface;

.field e:Ljavax/microedition/khronos/egl/EGLConfig;

.field f:Ljavax/microedition/khronos/egl/EGLContext;


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/securityscan/ui/main/b;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/securityscan/ui/main/b$i;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private d()V
    .locals 4

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/b$i;->d:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_1

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/b$i;->b:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/miui/securityscan/ui/main/b$i;->c:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v2, v1, v1, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/b$i;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/ui/main/b;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/miui/securityscan/ui/main/b;->e(Lcom/miui/securityscan/ui/main/b;)Lcom/miui/securityscan/ui/main/b$h;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/securityscan/ui/main/b$i;->b:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/miui/securityscan/ui/main/b$i;->c:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/miui/securityscan/ui/main/b$i;->d:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2, v3}, Lcom/miui/securityscan/ui/main/b$h;->destroySurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/b$i;->d:Ljavax/microedition/khronos/egl/EGLSurface;

    :cond_1
    return-void
.end method

.method public static f(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " failed: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static g(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-static {p1, p2}, Lcom/miui/securityscan/ui/main/b$i;->f(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private j(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/b$i;->b:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    invoke-static {p1, v0}, Lcom/miui/securityscan/ui/main/b$i;->k(Ljava/lang/String;I)V

    return-void
.end method

.method public static k(Ljava/lang/String;I)V
    .locals 2

    invoke-static {p0, p1}, Lcom/miui/securityscan/ui/main/b$i;->f(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "throwEglException tid="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "EglHelper"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method a()Ljavax/microedition/khronos/opengles/GL;
    .locals 6

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/b$i;->f:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v0}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/securityscan/ui/main/b$i;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/securityscan/ui/main/b;

    if-eqz v1, :cond_3

    invoke-static {v1}, Lcom/miui/securityscan/ui/main/b;->f(Lcom/miui/securityscan/ui/main/b;)Lcom/miui/securityscan/ui/main/b$l;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/miui/securityscan/ui/main/b;->f(Lcom/miui/securityscan/ui/main/b;)Lcom/miui/securityscan/ui/main/b$l;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/miui/securityscan/ui/main/b$l;->wrap(Ljavax/microedition/khronos/opengles/GL;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    :cond_0
    invoke-static {v1}, Lcom/miui/securityscan/ui/main/b;->g(Lcom/miui/securityscan/ui/main/b;)I

    move-result v2

    and-int/lit8 v2, v2, 0x3

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1}, Lcom/miui/securityscan/ui/main/b;->g(Lcom/miui/securityscan/ui/main/b;)I

    move-result v4

    const/4 v5, 0x1

    and-int/2addr v4, v5

    if-eqz v4, :cond_1

    move v2, v5

    :cond_1
    invoke-static {v1}, Lcom/miui/securityscan/ui/main/b;->g(Lcom/miui/securityscan/ui/main/b;)I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    new-instance v3, Lcom/miui/securityscan/ui/main/b$m;

    invoke-direct {v3}, Lcom/miui/securityscan/ui/main/b$m;-><init>()V

    :cond_2
    invoke-static {v0, v2, v3}, Landroid/opengl/GLDebugHelper;->wrap(Ljavax/microedition/khronos/opengles/GL;ILjava/io/Writer;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    :cond_3
    return-object v0
.end method

.method public b()Z
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createSurface()  tid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EglHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/b$i;->b:Ljavax/microedition/khronos/egl/EGL10;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/b$i;->c:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/b$i;->e:Ljavax/microedition/khronos/egl/EGLConfig;

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/miui/securityscan/ui/main/b$i;->d()V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/b$i;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/ui/main/b;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/miui/securityscan/ui/main/b;->e(Lcom/miui/securityscan/ui/main/b;)Lcom/miui/securityscan/ui/main/b$h;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/securityscan/ui/main/b$i;->b:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/miui/securityscan/ui/main/b$i;->c:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v5, p0, Lcom/miui/securityscan/ui/main/b$i;->e:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-interface {v2, v3, v4, v5, v0}, Lcom/miui/securityscan/ui/main/b$h;->createWindowSurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/miui/securityscan/ui/main/b$i;->d:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/b$i;->d:Ljavax/microedition/khronos/egl/EGLSurface;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v0, v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/miui/securityscan/ui/main/b$i;->b:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/miui/securityscan/ui/main/b$i;->c:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/miui/securityscan/ui/main/b$i;->f:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v3, v0, v0, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/b$i;->b:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    const-string v1, "EGLHelper"

    const-string v3, "eglMakeCurrent"

    invoke-static {v1, v3, v0}, Lcom/miui/securityscan/ui/main/b$i;->g(Ljava/lang/String;Ljava/lang/String;I)V

    return v2

    :cond_2
    const/4 v0, 0x1

    return v0

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/miui/securityscan/ui/main/b$i;->b:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    const/16 v3, 0x300b

    if-ne v0, v3, :cond_4

    const-string v0, "createWindowSurface returned EGL_BAD_NATIVE_WINDOW."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v2

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mEglConfig not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglDisplay not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "egl not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "destroySurface()  tid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EglHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/miui/securityscan/ui/main/b$i;->d()V

    return-void
.end method

.method public e()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finish() tid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EglHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/b$i;->f:Ljavax/microedition/khronos/egl/EGLContext;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/b$i;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/ui/main/b;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/miui/securityscan/ui/main/b;->d(Lcom/miui/securityscan/ui/main/b;)Lcom/miui/securityscan/ui/main/b$g;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/securityscan/ui/main/b$i;->b:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/miui/securityscan/ui/main/b$i;->c:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/miui/securityscan/ui/main/b$i;->f:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v2, v3, v4}, Lcom/miui/securityscan/ui/main/b$g;->destroyContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V

    :cond_0
    iput-object v1, p0, Lcom/miui/securityscan/ui/main/b$i;->f:Ljavax/microedition/khronos/egl/EGLContext;

    :cond_1
    iget-object v0, p0, Lcom/miui/securityscan/ui/main/b$i;->c:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/miui/securityscan/ui/main/b$i;->b:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    iput-object v1, p0, Lcom/miui/securityscan/ui/main/b$i;->c:Ljavax/microedition/khronos/egl/EGLDisplay;

    :cond_2
    return-void
.end method

.method public h()V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start() tid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EglHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/b$i;->b:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/b$i;->c:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eq v0, v2, :cond_4

    const/4 v2, 0x2

    new-array v2, v2, [I

    iget-object v3, p0, Lcom/miui/securityscan/ui/main/b$i;->b:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v3, v0, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/b$i;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/ui/main/b;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iput-object v2, p0, Lcom/miui/securityscan/ui/main/b$i;->e:Ljavax/microedition/khronos/egl/EGLConfig;

    iput-object v2, p0, Lcom/miui/securityscan/ui/main/b$i;->f:Ljavax/microedition/khronos/egl/EGLContext;

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/miui/securityscan/ui/main/b;->c(Lcom/miui/securityscan/ui/main/b;)Lcom/miui/securityscan/ui/main/b$f;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/securityscan/ui/main/b$i;->b:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v5, p0, Lcom/miui/securityscan/ui/main/b$i;->c:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v3, v4, v5}, Lcom/miui/securityscan/ui/main/b$f;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/securityscan/ui/main/b$i;->e:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-static {v0}, Lcom/miui/securityscan/ui/main/b;->d(Lcom/miui/securityscan/ui/main/b;)Lcom/miui/securityscan/ui/main/b$g;

    move-result-object v0

    iget-object v3, p0, Lcom/miui/securityscan/ui/main/b$i;->b:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/miui/securityscan/ui/main/b$i;->c:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v5, p0, Lcom/miui/securityscan/ui/main/b$i;->e:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v0, v3, v4, v5}, Lcom/miui/securityscan/ui/main/b$g;->createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/b$i;->f:Ljavax/microedition/khronos/egl/EGLContext;

    :goto_0
    iget-object v0, p0, Lcom/miui/securityscan/ui/main/b$i;->f:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_1

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v0, v3, :cond_2

    :cond_1
    iput-object v2, p0, Lcom/miui/securityscan/ui/main/b$i;->f:Ljavax/microedition/khronos/egl/EGLContext;

    const-string v0, "createContext"

    invoke-direct {p0, v0}, Lcom/miui/securityscan/ui/main/b$i;->j(Ljava/lang/String;)V

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createContext "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/securityscan/ui/main/b$i;->f:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " tid="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v2, p0, Lcom/miui/securityscan/ui/main/b$i;->d:Ljavax/microedition/khronos/egl/EGLSurface;

    return-void

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglInitialize failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglGetDisplay failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public i()I
    .locals 3

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/b$i;->b:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/miui/securityscan/ui/main/b$i;->c:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/miui/securityscan/ui/main/b$i;->d:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/b$i;->b:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0x3000

    return v0
.end method

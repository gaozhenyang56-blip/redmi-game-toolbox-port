.class public Lcom/miui/securityscan/ui/main/b;
.super Landroid/view/TextureView;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/securityscan/ui/main/b$k;,
        Lcom/miui/securityscan/ui/main/b$m;,
        Lcom/miui/securityscan/ui/main/b$j;,
        Lcom/miui/securityscan/ui/main/b$i;,
        Lcom/miui/securityscan/ui/main/b$o;,
        Lcom/miui/securityscan/ui/main/b$c;,
        Lcom/miui/securityscan/ui/main/b$b;,
        Lcom/miui/securityscan/ui/main/b$f;,
        Lcom/miui/securityscan/ui/main/b$e;,
        Lcom/miui/securityscan/ui/main/b$h;,
        Lcom/miui/securityscan/ui/main/b$d;,
        Lcom/miui/securityscan/ui/main/b$g;,
        Lcom/miui/securityscan/ui/main/b$n;,
        Lcom/miui/securityscan/ui/main/b$l;
    }
.end annotation


# static fields
.field private static final l:Lcom/miui/securityscan/ui/main/b$k;


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/securityscan/ui/main/b;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/miui/securityscan/ui/main/b$j;

.field private c:Lcom/miui/securityscan/ui/main/b$n;

.field private d:Z

.field private e:Lcom/miui/securityscan/ui/main/b$f;

.field private f:Lcom/miui/securityscan/ui/main/b$g;

.field private g:Lcom/miui/securityscan/ui/main/b$h;

.field private h:Lcom/miui/securityscan/ui/main/b$l;

.field private i:I

.field private j:I

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/securityscan/ui/main/b$k;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/securityscan/ui/main/b$k;-><init>(Lcom/miui/securityscan/ui/main/b$a;)V

    sput-object v0, Lcom/miui/securityscan/ui/main/b;->l:Lcom/miui/securityscan/ui/main/b$k;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/miui/securityscan/ui/main/b;->a:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Lcom/miui/securityscan/ui/main/b;->k()V

    return-void
.end method

.method static synthetic a(Lcom/miui/securityscan/ui/main/b;)Lcom/miui/securityscan/ui/main/b$n;
    .locals 0

    iget-object p0, p0, Lcom/miui/securityscan/ui/main/b;->c:Lcom/miui/securityscan/ui/main/b$n;

    return-object p0
.end method

.method static synthetic b(Lcom/miui/securityscan/ui/main/b;)I
    .locals 0

    iget p0, p0, Lcom/miui/securityscan/ui/main/b;->j:I

    return p0
.end method

.method static synthetic c(Lcom/miui/securityscan/ui/main/b;)Lcom/miui/securityscan/ui/main/b$f;
    .locals 0

    iget-object p0, p0, Lcom/miui/securityscan/ui/main/b;->e:Lcom/miui/securityscan/ui/main/b$f;

    return-object p0
.end method

.method static synthetic d(Lcom/miui/securityscan/ui/main/b;)Lcom/miui/securityscan/ui/main/b$g;
    .locals 0

    iget-object p0, p0, Lcom/miui/securityscan/ui/main/b;->f:Lcom/miui/securityscan/ui/main/b$g;

    return-object p0
.end method

.method static synthetic e(Lcom/miui/securityscan/ui/main/b;)Lcom/miui/securityscan/ui/main/b$h;
    .locals 0

    iget-object p0, p0, Lcom/miui/securityscan/ui/main/b;->g:Lcom/miui/securityscan/ui/main/b$h;

    return-object p0
.end method

.method static synthetic f(Lcom/miui/securityscan/ui/main/b;)Lcom/miui/securityscan/ui/main/b$l;
    .locals 0

    iget-object p0, p0, Lcom/miui/securityscan/ui/main/b;->h:Lcom/miui/securityscan/ui/main/b$l;

    return-object p0
.end method

.method static synthetic g(Lcom/miui/securityscan/ui/main/b;)I
    .locals 0

    iget p0, p0, Lcom/miui/securityscan/ui/main/b;->i:I

    return p0
.end method

.method static synthetic h()Lcom/miui/securityscan/ui/main/b$k;
    .locals 1

    sget-object v0, Lcom/miui/securityscan/ui/main/b;->l:Lcom/miui/securityscan/ui/main/b$k;

    return-object v0
.end method

.method static synthetic i(Lcom/miui/securityscan/ui/main/b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/securityscan/ui/main/b;->k:Z

    return p0
.end method

.method private j()V
    .locals 2

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/b;->b:Lcom/miui/securityscan/ui/main/b$j;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setRenderer has already been called for this instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private k()V
    .locals 0

    invoke-virtual {p0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/miui/securityscan/ui/main/b;->b:Lcom/miui/securityscan/ui/main/b$j;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/securityscan/ui/main/b$j;->i()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getDebugFlags()I
    .locals 1

    iget v0, p0, Lcom/miui/securityscan/ui/main/b;->i:I

    return v0
.end method

.method public getPreserveEGLContextOnPause()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/securityscan/ui/main/b;->k:Z

    return v0
.end method

.method public getRenderMode()I
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/b;->b:Lcom/miui/securityscan/ui/main/b$j;

    invoke-virtual {v0}, Lcom/miui/securityscan/ui/main/b$j;->c()I

    move-result v0

    return v0
.end method

.method public l()V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/b;->b:Lcom/miui/securityscan/ui/main/b$j;

    invoke-virtual {v0}, Lcom/miui/securityscan/ui/main/b$j;->e()V

    return-void
.end method

.method public m()V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/b;->b:Lcom/miui/securityscan/ui/main/b$j;

    invoke-virtual {v0}, Lcom/miui/securityscan/ui/main/b$j;->f()V

    return-void
.end method

.method public n()V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/b;->b:Lcom/miui/securityscan/ui/main/b$j;

    invoke-virtual {v0}, Lcom/miui/securityscan/ui/main/b$j;->k()V

    return-void
.end method

.method public o(Landroid/graphics/SurfaceTexture;III)V
    .locals 0

    iget-object p1, p0, Lcom/miui/securityscan/ui/main/b;->b:Lcom/miui/securityscan/ui/main/b$j;

    invoke-virtual {p1, p3, p4}, Lcom/miui/securityscan/ui/main/b$j;->g(II)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 4

    invoke-super {p0}, Landroid/view/TextureView;->onAttachedToWindow()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAttachedToWindow reattach ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/securityscan/ui/main/b;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GLTextureView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/miui/securityscan/ui/main/b;->d:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/b;->c:Lcom/miui/securityscan/ui/main/b$n;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/b;->b:Lcom/miui/securityscan/ui/main/b$j;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/securityscan/ui/main/b$j;->c()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    new-instance v2, Lcom/miui/securityscan/ui/main/b$j;

    iget-object v3, p0, Lcom/miui/securityscan/ui/main/b;->a:Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v3}, Lcom/miui/securityscan/ui/main/b$j;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v2, p0, Lcom/miui/securityscan/ui/main/b;->b:Lcom/miui/securityscan/ui/main/b$j;

    if-eq v0, v1, :cond_1

    invoke-virtual {v2, v0}, Lcom/miui/securityscan/ui/main/b$j;->l(I)V

    :cond_1
    iget-object v0, p0, Lcom/miui/securityscan/ui/main/b;->b:Lcom/miui/securityscan/ui/main/b$j;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/securityscan/ui/main/b;->d:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    const-string v0, "GLTextureView"

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/b;->b:Lcom/miui/securityscan/ui/main/b$j;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/securityscan/ui/main/b$j;->i()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/securityscan/ui/main/b;->d:Z

    invoke-super {p0}, Landroid/view/TextureView;->onDetachedFromWindow()V

    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p1

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p4, p5}, Lcom/miui/securityscan/ui/main/b;->o(Landroid/graphics/SurfaceTexture;III)V

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/miui/securityscan/ui/main/b;->p(Landroid/graphics/SurfaceTexture;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/miui/securityscan/ui/main/b;->o(Landroid/graphics/SurfaceTexture;III)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/securityscan/ui/main/b;->q(Landroid/graphics/SurfaceTexture;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/miui/securityscan/ui/main/b;->o(Landroid/graphics/SurfaceTexture;III)V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/securityscan/ui/main/b;->n()V

    return-void
.end method

.method public p(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    iget-object p1, p0, Lcom/miui/securityscan/ui/main/b;->b:Lcom/miui/securityscan/ui/main/b$j;

    invoke-virtual {p1}, Lcom/miui/securityscan/ui/main/b$j;->o()V

    return-void
.end method

.method public q(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    iget-object p1, p0, Lcom/miui/securityscan/ui/main/b;->b:Lcom/miui/securityscan/ui/main/b$j;

    invoke-virtual {p1}, Lcom/miui/securityscan/ui/main/b$j;->p()V

    return-void
.end method

.method public setDebugFlags(I)V
    .locals 0

    iput p1, p0, Lcom/miui/securityscan/ui/main/b;->i:I

    return-void
.end method

.method public setEGLConfigChooser(Lcom/miui/securityscan/ui/main/b$f;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/securityscan/ui/main/b;->j()V

    iput-object p1, p0, Lcom/miui/securityscan/ui/main/b;->e:Lcom/miui/securityscan/ui/main/b$f;

    return-void
.end method

.method public setEGLConfigChooser(Z)V
    .locals 1

    new-instance v0, Lcom/miui/securityscan/ui/main/b$o;

    invoke-direct {v0, p0, p1}, Lcom/miui/securityscan/ui/main/b$o;-><init>(Lcom/miui/securityscan/ui/main/b;Z)V

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/ui/main/b;->setEGLConfigChooser(Lcom/miui/securityscan/ui/main/b$f;)V

    return-void
.end method

.method public setEGLContextClientVersion(I)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/securityscan/ui/main/b;->j()V

    iput p1, p0, Lcom/miui/securityscan/ui/main/b;->j:I

    return-void
.end method

.method public setEGLContextFactory(Lcom/miui/securityscan/ui/main/b$g;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/securityscan/ui/main/b;->j()V

    iput-object p1, p0, Lcom/miui/securityscan/ui/main/b;->f:Lcom/miui/securityscan/ui/main/b$g;

    return-void
.end method

.method public setEGLWindowSurfaceFactory(Lcom/miui/securityscan/ui/main/b$h;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/securityscan/ui/main/b;->j()V

    iput-object p1, p0, Lcom/miui/securityscan/ui/main/b;->g:Lcom/miui/securityscan/ui/main/b$h;

    return-void
.end method

.method public setGLWrapper(Lcom/miui/securityscan/ui/main/b$l;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/ui/main/b;->h:Lcom/miui/securityscan/ui/main/b$l;

    return-void
.end method

.method public setPreserveEGLContextOnPause(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/securityscan/ui/main/b;->k:Z

    return-void
.end method

.method public setRenderMode(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/b;->b:Lcom/miui/securityscan/ui/main/b$j;

    invoke-virtual {v0, p1}, Lcom/miui/securityscan/ui/main/b$j;->l(I)V

    return-void
.end method

.method public setRenderer(Lcom/miui/securityscan/ui/main/b$n;)V
    .locals 2

    invoke-direct {p0}, Lcom/miui/securityscan/ui/main/b;->j()V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/b;->e:Lcom/miui/securityscan/ui/main/b$f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/securityscan/ui/main/b$o;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/miui/securityscan/ui/main/b$o;-><init>(Lcom/miui/securityscan/ui/main/b;Z)V

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/b;->e:Lcom/miui/securityscan/ui/main/b$f;

    :cond_0
    iget-object v0, p0, Lcom/miui/securityscan/ui/main/b;->f:Lcom/miui/securityscan/ui/main/b$g;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    new-instance v0, Lcom/miui/securityscan/ui/main/b$d;

    invoke-direct {v0, p0, v1}, Lcom/miui/securityscan/ui/main/b$d;-><init>(Lcom/miui/securityscan/ui/main/b;Lcom/miui/securityscan/ui/main/b$a;)V

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/b;->f:Lcom/miui/securityscan/ui/main/b$g;

    :cond_1
    iget-object v0, p0, Lcom/miui/securityscan/ui/main/b;->g:Lcom/miui/securityscan/ui/main/b$h;

    if-nez v0, :cond_2

    new-instance v0, Lcom/miui/securityscan/ui/main/b$e;

    invoke-direct {v0, v1}, Lcom/miui/securityscan/ui/main/b$e;-><init>(Lcom/miui/securityscan/ui/main/b$a;)V

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/b;->g:Lcom/miui/securityscan/ui/main/b$h;

    :cond_2
    iput-object p1, p0, Lcom/miui/securityscan/ui/main/b;->c:Lcom/miui/securityscan/ui/main/b$n;

    new-instance p1, Lcom/miui/securityscan/ui/main/b$j;

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/b;->a:Ljava/lang/ref/WeakReference;

    invoke-direct {p1, v0}, Lcom/miui/securityscan/ui/main/b$j;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object p1, p0, Lcom/miui/securityscan/ui/main/b;->b:Lcom/miui/securityscan/ui/main/b$j;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

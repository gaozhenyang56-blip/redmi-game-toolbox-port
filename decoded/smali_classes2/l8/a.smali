.class Ll8/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final q:Ljava/lang/String; = "a"


# instance fields
.field private final a:Landroid/view/WindowManager;

.field private final b:Landroid/view/WindowManager$LayoutParams;

.field private final c:Landroid/content/Context;

.field private d:Landroid/os/Handler;

.field private e:Landroid/view/View;

.field private f:I

.field private g:I

.field private h:Z

.field private i:I

.field private j:I

.field private k:Z

.field private l:Z

.field private m:I

.field private n:I

.field private o:I

.field private p:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ll8/a;->h:Z

    iput-object p1, p0, Ll8/a;->c:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Ll8/a;->a:Landroid/view/WindowManager;

    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object p1, p0, Ll8/a;->b:Landroid/view/WindowManager$LayoutParams;

    invoke-static {p1}, Ls8/y;->a(Landroid/view/WindowManager$LayoutParams;)V

    const/4 v1, 0x1

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    const v2, 0x10308

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/16 v0, 0x33

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v0, v2, :cond_0

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    :cond_0
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Ll8/a;->d:Landroid/os/Handler;

    return-void
.end method

.method private A()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Ll8/a;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ll8/a;->a:Landroid/view/WindowManager;

    iget-object v1, p0, Ll8/a;->e:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Ll8/a;->q:Ljava/lang/String;

    const-string v2, "remove float view error "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic a(Ll8/a;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Ll8/a;->e:Landroid/view/View;

    return-object p0
.end method

.method static synthetic b(Ll8/a;)I
    .locals 0

    iget p0, p0, Ll8/a;->i:I

    return p0
.end method

.method static synthetic c(Ll8/a;)I
    .locals 0

    invoke-direct {p0}, Ll8/a;->v()I

    move-result p0

    return p0
.end method

.method static synthetic d(Ll8/a;I)I
    .locals 0

    iput p1, p0, Ll8/a;->i:I

    return p1
.end method

.method static synthetic e(Ll8/a;I)I
    .locals 0

    iput p1, p0, Ll8/a;->p:I

    return p1
.end method

.method static synthetic f(Ll8/a;Landroid/content/Context;)I
    .locals 0

    invoke-direct {p0, p1}, Ll8/a;->t(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method static synthetic g(Ll8/a;)I
    .locals 0

    iget p0, p0, Ll8/a;->f:I

    return p0
.end method

.method static synthetic h(Ll8/a;)I
    .locals 0

    iget p0, p0, Ll8/a;->g:I

    return p0
.end method

.method static synthetic i(Ll8/a;)I
    .locals 0

    iget p0, p0, Ll8/a;->j:I

    return p0
.end method

.method static synthetic j(Ll8/a;I)I
    .locals 0

    iput p1, p0, Ll8/a;->j:I

    return p1
.end method

.method static synthetic k(Ll8/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Ll8/a;->l:Z

    return p1
.end method

.method static synthetic l(Ll8/a;I)I
    .locals 0

    iput p1, p0, Ll8/a;->m:I

    return p1
.end method

.method static synthetic m(Ll8/a;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Ll8/a;->c:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic n(Ll8/a;Landroid/content/Context;)I
    .locals 0

    invoke-direct {p0, p1}, Ll8/a;->u(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method static synthetic o(Ll8/a;I)I
    .locals 0

    iput p1, p0, Ll8/a;->n:I

    return p1
.end method

.method static synthetic p(Ll8/a;Landroid/content/Context;)I
    .locals 0

    invoke-direct {p0, p1}, Ll8/a;->s(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method static synthetic q(Ll8/a;I)I
    .locals 0

    iput p1, p0, Ll8/a;->o:I

    return p1
.end method

.method private s(Landroid/content/Context;)I
    .locals 1

    iget-boolean v0, p0, Ll8/a;->l:Z

    if-nez v0, :cond_0

    invoke-static {p1}, La8/k2;->q(Landroid/content/Context;)I

    move-result p1

    :goto_0
    iget v0, p0, Ll8/a;->i:I

    sub-int/2addr p1, v0

    return p1

    :cond_0
    invoke-static {p1}, La8/k2;->p(Landroid/content/Context;)I

    move-result p1

    goto :goto_0
.end method

.method private t(Landroid/content/Context;)I
    .locals 2

    iget-boolean v0, p0, Ll8/a;->l:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, La8/k2;->q(Landroid/content/Context;)I

    move-result p1

    iget v0, p0, Ll8/a;->j:I

    :goto_0
    sub-int/2addr p1, v0

    return p1

    :cond_0
    invoke-static {p1}, La8/k2;->h(Landroid/content/Context;)I

    move-result v0

    invoke-static {p1}, La8/k2;->p(Landroid/content/Context;)I

    move-result p1

    iget v1, p0, Ll8/a;->j:I

    sub-int/2addr p1, v1

    goto :goto_0
.end method

.method private u(Landroid/content/Context;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method private v()I
    .locals 1

    iget-boolean v0, p0, Ll8/a;->l:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Ll8/a;->c:Landroid/content/Context;

    invoke-static {v0}, Lpg/i;->o(Landroid/content/Context;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public B(Z)V
    .locals 0

    iput-boolean p1, p0, Ll8/a;->k:Z

    return-void
.end method

.method public C(II)V
    .locals 1

    iget-object v0, p0, Ll8/a;->b:Landroid/view/WindowManager$LayoutParams;

    iput p1, p0, Ll8/a;->f:I

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput p2, p0, Ll8/a;->g:I

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    return-void
.end method

.method public D(Landroid/view/View;II)V
    .locals 0

    iput-object p1, p0, Ll8/a;->e:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, La8/k2;->B(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Ll8/a;->l:Z

    iput p2, p0, Ll8/a;->i:I

    iput p3, p0, Ll8/a;->j:I

    iget-object p1, p0, Ll8/a;->c:Landroid/content/Context;

    invoke-direct {p0, p1}, Ll8/a;->u(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Ll8/a;->m:I

    iget-object p1, p0, Ll8/a;->c:Landroid/content/Context;

    invoke-direct {p0, p1}, Ll8/a;->s(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Ll8/a;->n:I

    invoke-direct {p0}, Ll8/a;->v()I

    move-result p1

    iput p1, p0, Ll8/a;->o:I

    iget-object p1, p0, Ll8/a;->c:Landroid/content/Context;

    invoke-direct {p0, p1}, Ll8/a;->t(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Ll8/a;->p:I

    return-void
.end method

.method public E(II)V
    .locals 2

    iget-boolean v0, p0, Ll8/a;->h:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Ll8/a;->m:I

    iget v1, p0, Ll8/a;->n:I

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v0, p0, Ll8/a;->o:I

    iget v1, p0, Ll8/a;->p:I

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iget v0, p0, Ll8/a;->f:I

    if-ne v0, p1, :cond_1

    iget v0, p0, Ll8/a;->g:I

    if-eq v0, p2, :cond_2

    :cond_1
    iget-object v0, p0, Ll8/a;->b:Landroid/view/WindowManager$LayoutParams;

    iput p1, p0, Ll8/a;->f:I

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput p2, p0, Ll8/a;->g:I

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object p1, p0, Ll8/a;->a:Landroid/view/WindowManager;

    iget-object p2, p0, Ll8/a;->e:Landroid/view/View;

    invoke-interface {p1, p2, v0}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method public r()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Ll8/a;->h:Z

    iget-object v0, p0, Ll8/a;->d:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v1, p0, Ll8/a;->d:Landroid/os/Handler;

    :cond_0
    invoke-direct {p0}, Ll8/a;->A()V

    return-void
.end method

.method w()I
    .locals 1

    iget v0, p0, Ll8/a;->f:I

    return v0
.end method

.method x()I
    .locals 1

    iget v0, p0, Ll8/a;->g:I

    return v0
.end method

.method public y()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Ll8/a;->b:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v1, 0x7d3

    const/16 v1, 0x7f6
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v1, p0, Ll8/a;->a:Landroid/view/WindowManager;

    iget-object v2, p0, Ll8/a;->e:Landroid/view/View;

    invoke-interface {v1, v2, v0}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ll8/a;->B(Z)V

    iget-object v0, p0, Ll8/a;->d:Landroid/os/Handler;

    new-instance v1, Ll8/a$a;

    invoke-direct {v1, p0}, Ll8/a$a;-><init>(Ll8/a;)V

    const-wide/16 v2, 0x4b0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Ll8/a;->q:Ljava/lang/String;

    const-string v2, "add float view error "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0}, Ll8/a;->A()V

    :goto_0
    return-void
.end method

.method public z()Z
    .locals 1

    iget-boolean v0, p0, Ll8/a;->k:Z

    return v0
.end method

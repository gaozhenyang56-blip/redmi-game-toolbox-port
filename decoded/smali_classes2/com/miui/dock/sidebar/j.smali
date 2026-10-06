.class public Lcom/miui/dock/sidebar/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Z

.field private final b:Landroid/content/Context;

.field private final c:Ls8/h;

.field private d:Landroid/view/View;

.field private final e:Lcom/miui/dock/sidebar/b;

.field private final f:Landroid/widget/FrameLayout;

.field private final g:Lcom/miui/dock/sidebar/RegionSamplingImageView;

.field private final h:Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;

.field private final i:Lcom/miui/dock/sidebar/c;

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:Lmiuix/animation/IStateStyle;

.field private p:Z

.field private final q:Ljava/lang/String;

.field private r:I

.field private s:Lcom/miui/dock/sidebar/f;

.field private final t:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ls8/h;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/miui/dock/sidebar/i;

    invoke-direct {v0, p0}, Lcom/miui/dock/sidebar/i;-><init>(Lcom/miui/dock/sidebar/j;)V

    iput-object v0, p0, Lcom/miui/dock/sidebar/j;->t:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/miui/dock/sidebar/j;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/dock/sidebar/j;->q:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/dock/sidebar/j;->c:Ls8/h;

    iput-boolean p4, p0, Lcom/miui/dock/sidebar/j;->a:Z

    new-instance p2, Lcom/miui/dock/sidebar/b;

    invoke-direct {p2, p1, p0}, Lcom/miui/dock/sidebar/b;-><init>(Landroid/content/Context;Lcom/miui/dock/sidebar/j;)V

    iput-object p2, p0, Lcom/miui/dock/sidebar/j;->e:Lcom/miui/dock/sidebar/b;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0e04ae

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/miui/dock/sidebar/j;->f:Landroid/widget/FrameLayout;

    const v0, 0x7f0b0a6b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/dock/sidebar/RegionSamplingImageView;

    iput-object v0, p0, Lcom/miui/dock/sidebar/j;->g:Lcom/miui/dock/sidebar/RegionSamplingImageView;

    const v1, 0x7f0b0a6f

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;

    iput-object p2, p0, Lcom/miui/dock/sidebar/j;->h:Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;

    invoke-direct {p0, v0}, Lcom/miui/dock/sidebar/j;->j(Landroid/view/View;)V

    new-instance p2, Lcom/miui/dock/sidebar/f;

    invoke-direct {p2, p3, p0}, Lcom/miui/dock/sidebar/f;-><init>(Ls8/h;Lcom/miui/dock/sidebar/j;)V

    iput-object p2, p0, Lcom/miui/dock/sidebar/j;->s:Lcom/miui/dock/sidebar/f;

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-static {}, Lx4/y;->s()Z

    move-result p2

    if-eqz p2, :cond_0

    if-eqz p4, :cond_0

    iget-object p2, p0, Lcom/miui/dock/sidebar/j;->s:Lcom/miui/dock/sidebar/f;

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    :cond_0
    invoke-static {p1}, La8/k2;->f(Landroid/content/Context;)I

    move-result p2

    new-instance p3, Lcom/miui/dock/sidebar/c;

    invoke-direct {p3, p1, p2, p0}, Lcom/miui/dock/sidebar/c;-><init>(Landroid/content/Context;ILcom/miui/dock/sidebar/j;)V

    iput-object p3, p0, Lcom/miui/dock/sidebar/j;->i:Lcom/miui/dock/sidebar/c;

    invoke-virtual {p3, p4}, Lcom/miui/dock/sidebar/c;->o(Z)V

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/miui/dock/sidebar/j;->D()V

    invoke-static {p1}, Lm5/g;->h(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/miui/dock/sidebar/j;->r:I

    return-void
.end method

.method private D()V
    .locals 3

    const v0, 0x7f071a87

    invoke-virtual {p0, v0}, Lcom/miui/dock/sidebar/j;->m(I)I

    move-result v0

    iput v0, p0, Lcom/miui/dock/sidebar/j;->j:I

    const v0, 0x7f071d5a

    invoke-virtual {p0, v0}, Lcom/miui/dock/sidebar/j;->m(I)I

    move-result v1

    iput v1, p0, Lcom/miui/dock/sidebar/j;->k:I

    const v1, 0x7f071a89

    invoke-virtual {p0, v1}, Lcom/miui/dock/sidebar/j;->m(I)I

    move-result v1

    iput v1, p0, Lcom/miui/dock/sidebar/j;->l:I

    const v1, 0x7f071a88

    invoke-virtual {p0, v1}, Lcom/miui/dock/sidebar/j;->m(I)I

    move-result v1

    iput v1, p0, Lcom/miui/dock/sidebar/j;->m:I

    invoke-virtual {p0, v0}, Lcom/miui/dock/sidebar/j;->m(I)I

    move-result v0

    iput v0, p0, Lcom/miui/dock/sidebar/j;->n:I

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/dock/sidebar/j;->g:Lcom/miui/dock/sidebar/RegionSamplingImageView;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/dock/sidebar/j;->o:Lmiuix/animation/IStateStyle;

    return-void
.end method

.method private G()Z
    .locals 2

    const-string v0, "pref_first_time_moving_sidebar"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static K()Z
    .locals 3

    invoke-static {}, Lc5/a;->a()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Lk5/a;->b()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    invoke-static {}, Li8/c;->C()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method private L()V
    .locals 0
    # Persistent handle: cancel idle callbacks and keep the original line fully visible.
    invoke-virtual {p0}, Lcom/miui/dock/sidebar/j;->S()V
    invoke-virtual {p0}, Lcom/miui/dock/sidebar/j;->C()V
    return-void
.end method

.method private N(J)V
    .locals 2

    iget-object v0, p0, Lcom/miui/dock/sidebar/j;->g:Lcom/miui/dock/sidebar/RegionSamplingImageView;

    iget-object v1, p0, Lcom/miui/dock/sidebar/j;->t:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private U(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/dock/sidebar/j;->e:Lcom/miui/dock/sidebar/b;

    invoke-direct {p0, v0, p1}, Lcom/miui/dock/sidebar/j;->d0(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/miui/dock/sidebar/j;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/dock/sidebar/j;->f:Landroid/widget/FrameLayout;

    invoke-direct {p0, v0, p1}, Lcom/miui/dock/sidebar/j;->d0(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method private W()V
    .locals 3

    const v0, 0x7f0808df

    const v1, 0x7f0b0a6d

    invoke-direct {p0, v0, v1}, Lcom/miui/dock/sidebar/j;->Z(II)V

    const v0, 0x7f0808e1

    const v1, 0x7f0b0a72

    invoke-direct {p0, v0, v1}, Lcom/miui/dock/sidebar/j;->Z(II)V

    const v0, 0x7f0808e0

    const v1, 0x7f0b0a70

    invoke-direct {p0, v0, v1}, Lcom/miui/dock/sidebar/j;->Z(II)V

    const v0, 0x7f0808de

    const v1, 0x7f0b0a6c

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/dock/sidebar/j;->a0(IIZ)V

    return-void
.end method

.method private Z(II)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/dock/sidebar/j;->a0(IIZ)V

    return-void
.end method

.method public static synthetic a(Lcom/miui/dock/sidebar/j;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/dock/sidebar/j;->L()V

    return-void
.end method

.method private a0(IIZ)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/miui/dock/sidebar/j;->b:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    iget-object v0, p0, Lcom/miui/dock/sidebar/j;->d:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p3, :cond_0

    new-instance p2, Lcom/miui/dock/sidebar/j$a;

    invoke-direct {p2, p0}, Lcom/miui/dock/sidebar/j$a;-><init>(Lcom/miui/dock/sidebar/j;)V

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/AnimatedVectorDrawable;->registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    return-void
.end method

.method static synthetic b(Lcom/miui/dock/sidebar/j;)Lcom/miui/dock/sidebar/c;
    .locals 0

    iget-object p0, p0, Lcom/miui/dock/sidebar/j;->i:Lcom/miui/dock/sidebar/c;

    return-object p0
.end method

.method static synthetic c(Lcom/miui/dock/sidebar/j;)I
    .locals 0

    iget p0, p0, Lcom/miui/dock/sidebar/j;->j:I

    return p0
.end method

.method static synthetic d(Lcom/miui/dock/sidebar/j;)I
    .locals 0

    iget p0, p0, Lcom/miui/dock/sidebar/j;->k:I

    return p0
.end method

.method private d0(Landroid/view/View;I)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/miui/dock/sidebar/j;->b:Landroid/content/Context;
    invoke-static {v1, p2}, Lcom/gzy/redmiport/SidebarRuntime;->anchorX(Landroid/content/Context;I)I
    move-result p2
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object p2, p0, Lcom/miui/dock/sidebar/j;->c:Ls8/h;

    invoke-virtual {p2, p1, v0}, Ls8/h;->v1(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method static synthetic e(Lcom/miui/dock/sidebar/j;D)F
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/dock/sidebar/j;->p(D)F

    move-result p0

    return p0
.end method

.method private e0()V
    .locals 10

    const-string v0, "SidebarWrapper"

    const-string v1, "widenSidebarLine"

    invoke-static {v0, v1}, Lb8/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/dock/sidebar/j;->o:Lmiuix/animation/IStateStyle;

    const/4 v1, 0x4

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "lineWidth"

    aput-object v4, v2, v3

    iget-object v5, p0, Lcom/miui/dock/sidebar/j;->i:Lcom/miui/dock/sidebar/c;

    invoke-virtual {v5}, Lcom/miui/dock/sidebar/c;->k()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v2, v6

    const/4 v5, 0x2

    const-string v7, "layoutX"

    aput-object v7, v2, v5

    invoke-direct {p0}, Lcom/miui/dock/sidebar/j;->x()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x3

    aput-object v8, v2, v9

    invoke-interface {v0, v2}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v4, v2, v3

    iget v4, p0, Lcom/miui/dock/sidebar/j;->m:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v6

    aput-object v7, v2, v5

    iget v4, p0, Lcom/miui/dock/sidebar/j;->n:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v9

    new-instance v4, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v4}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    const/4 v7, -0x2

    invoke-virtual {v4, v7, v5}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v4

    new-array v5, v6, [Lmiuix/animation/listener/TransitionListener;

    new-instance v6, Lcom/miui/dock/sidebar/j$b;

    invoke-direct {v6, p0}, Lcom/miui/dock/sidebar/j$b;-><init>(Lcom/miui/dock/sidebar/j;)V

    aput-object v6, v5, v3

    invoke-virtual {v4, v5}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-interface {v0, v2}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    return-void

    nop

    :array_0
    .array-data 4
        0x3f666666    # 0.9f
        0x3e4ccccd    # 0.2f
    .end array-data
.end method

.method static synthetic f(Lcom/miui/dock/sidebar/j;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/dock/sidebar/j;->U(I)V

    return-void
.end method

.method static synthetic g(Lcom/miui/dock/sidebar/j;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/miui/dock/sidebar/j;->d:Landroid/view/View;

    return-object p0
.end method

.method static synthetic h(Lcom/miui/dock/sidebar/j;)Lcom/miui/dock/sidebar/RegionSamplingImageView;
    .locals 0

    iget-object p0, p0, Lcom/miui/dock/sidebar/j;->g:Lcom/miui/dock/sidebar/RegionSamplingImageView;

    return-object p0
.end method

.method static synthetic i(Lcom/miui/dock/sidebar/j;)Ls8/h;
    .locals 0

    iget-object p0, p0, Lcom/miui/dock/sidebar/j;->c:Ls8/h;

    return-object p0
.end method

.method private j(Landroid/view/View;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    invoke-static {p1}, Lcom/miui/dock/sidebar/g;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/dock/sidebar/h;->a(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public static k()V
    .locals 3

    :try_start_0
    const-string v0, "pref_first_time_moving_sidebar"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->n(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disableSidebarMovingViews: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SidebarWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private p(D)F
    .locals 4

    const v0, 0x7f071a86

    invoke-virtual {p0, v0}, Lcom/miui/dock/sidebar/j;->m(I)I

    move-result v0

    const v1, 0x7f071a85

    invoke-virtual {p0, v1}, Lcom/miui/dock/sidebar/j;->m(I)I

    move-result v1

    int-to-double v2, v0

    sub-int/2addr v1, v0

    int-to-double v0, v1

    mul-double/2addr v0, p1

    add-double/2addr v2, v0

    double-to-float p1, v2

    return p1
.end method

.method public static r(Landroid/content/Context;)I
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f071d91

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f071e4d

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public static s(Landroid/content/Context;)I
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f071d77

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    neg-int p0, p0

    return p0
.end method

.method private x()I
    .locals 1

    iget-object v0, p0, Lcom/miui/dock/sidebar/j;->e:Lcom/miui/dock/sidebar/b;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    return v0
.end method


# virtual methods
.method public A()Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;
    .locals 1

    iget-object v0, p0, Lcom/miui/dock/sidebar/j;->h:Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;

    return-object v0
.end method

.method public B()V
    .locals 2

    iget-object v0, p0, Lcom/miui/dock/sidebar/j;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    const-string v0, "SidebarWrapper"

    const-string v1, "hideSidebarMovingViews"

    invoke-static {v0, v1}, Lb8/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/dock/sidebar/j;->c:Ls8/h;

    iget-object v1, p0, Lcom/miui/dock/sidebar/j;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Ls8/h;->F0(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/dock/sidebar/j;->d:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public C()V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/dock/sidebar/j;->S()V

    iget-object v0, p0, Lcom/miui/dock/sidebar/j;->g:Lcom/miui/dock/sidebar/RegionSamplingImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcom/miui/dock/sidebar/a;->h(Landroid/view/View;F)V

    return-void
.end method

.method public E()V
    .locals 2

    iget-object v0, p0, Lcom/miui/dock/sidebar/j;->c:Ls8/h;

    invoke-virtual {v0, p0}, Ls8/h;->v0(Lcom/miui/dock/sidebar/j;)V

    iget-object v0, p0, Lcom/miui/dock/sidebar/j;->h:Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public F()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/dock/sidebar/j;->p:Z

    return v0
.end method

.method public H()Z
    .locals 2
    iget-object v0, p0, Lcom/miui/dock/sidebar/j;->b:Landroid/content/Context;
    iget-boolean v1, p0, Lcom/miui/dock/sidebar/j;->a:Z
    invoke-static {v0, v1}, Lcom/gzy/redmiport/SidebarRuntime;->isLeft(Landroid/content/Context;Z)Z
    move-result v0
    return v0
.end method

.method public I()Z
    .locals 3

    iget-object v0, p0, Lcom/miui/dock/sidebar/j;->b:Landroid/content/Context;

    invoke-static {v0}, La8/k2;->c(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/miui/dock/sidebar/j;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f071a83

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-static {}, Lk5/a;->c()I

    move-result v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v2, v1

    div-int/lit8 v0, v0, 0x2

    if-ge v2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public J()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/dock/sidebar/j;->a:Z

    return v0
.end method

.method public M()V
    .locals 0
    # Persistent handle: cancel idle callbacks and keep the original line fully visible.
    invoke-virtual {p0}, Lcom/miui/dock/sidebar/j;->S()V
    invoke-virtual {p0}, Lcom/miui/dock/sidebar/j;->C()V
    return-void
.end method

.method public O()V
    .locals 10

    const-string v0, "SidebarWrapper"

    const-string v1, "narrowSidebarLine"

    invoke-static {v0, v1}, Lb8/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/dock/sidebar/j;->o:Lmiuix/animation/IStateStyle;

    const/4 v1, 0x4

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "lineWidth"

    aput-object v4, v2, v3

    iget-object v5, p0, Lcom/miui/dock/sidebar/j;->i:Lcom/miui/dock/sidebar/c;

    invoke-virtual {v5}, Lcom/miui/dock/sidebar/c;->k()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v2, v6

    const/4 v5, 0x2

    const-string v7, "layoutX"

    aput-object v7, v2, v5

    invoke-direct {p0}, Lcom/miui/dock/sidebar/j;->x()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x3

    aput-object v8, v2, v9

    invoke-interface {v0, v2}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v4, v2, v3

    iget v4, p0, Lcom/miui/dock/sidebar/j;->l:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v6

    aput-object v7, v2, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v9

    new-instance v4, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v4}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    const/4 v7, -0x2

    invoke-virtual {v4, v7, v5}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v4

    new-array v5, v6, [Lmiuix/animation/listener/TransitionListener;

    new-instance v6, Lcom/miui/dock/sidebar/j$c;

    invoke-direct {v6, p0}, Lcom/miui/dock/sidebar/j$c;-><init>(Lcom/miui/dock/sidebar/j;)V

    aput-object v6, v5, v3

    invoke-virtual {v4, v5}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-interface {v0, v2}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    return-void

    nop

    :array_0
    .array-data 4
        0x3f666666    # 0.9f
        0x3e99999a    # 0.3f
    .end array-data
.end method

.method public P()V
    .locals 2

    iget-object v0, p0, Lcom/miui/dock/sidebar/j;->f:Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lm5/g;->k(Lcom/miui/dock/sidebar/j;Landroid/view/View;Z)V

    invoke-virtual {p0}, Lcom/miui/dock/sidebar/j;->E()V

    invoke-static {p0}, Lcom/miui/dock/sidebar/a;->d(Lcom/miui/dock/sidebar/j;)V

    return-void
.end method

.method public Q()V
    .locals 1

    iget-object v0, p0, Lcom/miui/dock/sidebar/j;->s:Lcom/miui/dock/sidebar/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/dock/sidebar/f;->o()V

    :cond_0
    return-void
.end method

.method public R()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/dock/sidebar/j;->e0()V

    return-void
.end method

.method public S()V
    .locals 2

    iget-object v0, p0, Lcom/miui/dock/sidebar/j;->g:Lcom/miui/dock/sidebar/RegionSamplingImageView;

    iget-object v1, p0, Lcom/miui/dock/sidebar/j;->t:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public T(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/dock/sidebar/j;->p:Z

    return-void
.end method

.method public V(I)V
    .locals 0

    iput p1, p0, Lcom/miui/dock/sidebar/j;->r:I

    return-void
.end method

.method public X()V
    .locals 1

    iget-object v0, p0, Lcom/miui/dock/sidebar/j;->i:Lcom/miui/dock/sidebar/c;

    invoke-virtual {v0}, Lcom/miui/dock/sidebar/c;->q()V

    return-void
.end method

.method public Y()V
    .locals 3

    invoke-direct {p0}, Lcom/miui/dock/sidebar/j;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SidebarWrapper"

    const-string v1, "showSidebarMovingViews"

    invoke-static {v0, v1}, Lb8/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/dock/sidebar/j;->b:Landroid/content/Context;

    const v1, 0x7f0e02a1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/dock/sidebar/j;->d:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/miui/dock/sidebar/j;->j(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/miui/dock/sidebar/j;->W()V

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iget-object v1, p0, Lcom/miui/dock/sidebar/j;->e:Lcom/miui/dock/sidebar/b;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v1, p0, Lcom/miui/dock/sidebar/j;->c:Ls8/h;

    iget-object v2, p0, Lcom/miui/dock/sidebar/j;->d:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Ls8/h;->v(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    const/4 v0, 0x0

    const-string v1, "pref_first_time_moving_sidebar"

    invoke-static {v1, v0}, Lr4/a;->n(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public b0(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/dock/sidebar/j;->g:Lcom/miui/dock/sidebar/RegionSamplingImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public c0(Landroid/view/MotionEvent;)Z
    .locals 1
    invoke-static {p0, p1}, Lcom/gzy/redmiport/SidebarRuntime;->handleTouch(Ljava/lang/Object;Landroid/view/MotionEvent;)Z
    move-result v0
    return v0
.end method

.method public l()V
    .locals 1

    iget-object v0, p0, Lcom/miui/dock/sidebar/j;->i:Lcom/miui/dock/sidebar/c;

    invoke-virtual {v0}, Lcom/miui/dock/sidebar/c;->e()V

    return-void
.end method

.method public m(I)I
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/miui/dock/sidebar/j;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    return p1
.end method

.method public n()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/dock/sidebar/j;->b:Landroid/content/Context;

    return-object v0
.end method

.method public o()Ls8/h;
    .locals 1

    iget-object v0, p0, Lcom/miui/dock/sidebar/j;->c:Ls8/h;

    return-object v0
.end method

.method public q()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/miui/dock/sidebar/j;->d:Landroid/view/View;

    return-object v0
.end method

.method public t()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/dock/sidebar/j;->q:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "isLeft = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/dock/sidebar/j;->H()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Lcom/miui/dock/sidebar/b;
    .locals 1

    iget-object v0, p0, Lcom/miui/dock/sidebar/j;->e:Lcom/miui/dock/sidebar/b;

    return-object v0
.end method

.method public v()Lcom/miui/dock/sidebar/c;
    .locals 1

    iget-object v0, p0, Lcom/miui/dock/sidebar/j;->i:Lcom/miui/dock/sidebar/c;

    return-object v0
.end method

.method public w()Lcom/miui/dock/sidebar/RegionSamplingImageView;
    .locals 1

    iget-object v0, p0, Lcom/miui/dock/sidebar/j;->g:Lcom/miui/dock/sidebar/RegionSamplingImageView;

    return-object v0
.end method

.method public y()I
    .locals 1

    iget v0, p0, Lcom/miui/dock/sidebar/j;->r:I

    return v0
.end method

.method public z()Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/miui/dock/sidebar/j;->f:Landroid/widget/FrameLayout;

    return-object v0
.end method

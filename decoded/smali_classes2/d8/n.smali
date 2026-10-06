.class public Ld8/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh8/b$a;
.implements Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout$f;
.implements Lcom/miui/gamebooster/videobox/view/SettingsDescLayout$d;


# instance fields
.field private a:Landroid/view/ViewGroup;

.field private b:Landroid/view/ViewGroup;

.field private c:Landroid/widget/ListView;

.field private d:Ld8/m;

.field private e:Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;

.field private f:Lcom/miui/gamebooster/videobox/view/SettingsDescLayout;

.field private g:Ls8/h;

.field private h:Landroid/animation/AnimatorSet;

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Landroid/database/ContentObserver;

.field private m:Landroid/content/Context;

.field private n:Landroid/os/Handler;

.field private o:Landroid/media/Spatializer$OnSpatializerStateChangedListener;

.field private p:Landroid/view/View$OnAttachStateChangeListener;


# direct methods
.method public constructor <init>(Ls8/h;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ld8/n;->i:Z

    iput-boolean v0, p0, Ld8/n;->j:Z

    const/4 v0, 0x0

    iput-object v0, p0, Ld8/n;->m:Landroid/content/Context;

    new-instance v0, Ld8/n$a;

    invoke-direct {v0, p0}, Ld8/n$a;-><init>(Ld8/n;)V

    iput-object v0, p0, Ld8/n;->p:Landroid/view/View$OnAttachStateChangeListener;

    iput-object p1, p0, Ld8/n;->g:Ls8/h;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Ld8/n;->n:Landroid/os/Handler;

    invoke-direct {p0}, Ld8/n;->p()V

    return-void
.end method

.method static synthetic e(Ld8/n;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Ld8/n;->a:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic f(Ld8/n;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Ld8/n;->n:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic g(Ld8/n;)Ld8/m;
    .locals 0

    iget-object p0, p0, Ld8/n;->d:Ld8/m;

    return-object p0
.end method

.method static synthetic h(Ld8/n;)Landroid/widget/ListView;
    .locals 0

    iget-object p0, p0, Ld8/n;->c:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic i(Ld8/n;Z)Z
    .locals 0

    iput-boolean p1, p0, Ld8/n;->i:Z

    return p1
.end method

.method static synthetic j(Ld8/n;)Lcom/miui/gamebooster/videobox/view/SettingsDescLayout;
    .locals 0

    iget-object p0, p0, Ld8/n;->f:Lcom/miui/gamebooster/videobox/view/SettingsDescLayout;

    return-object p0
.end method

.method static synthetic k(Ld8/n;Z)Z
    .locals 0

    iput-boolean p1, p0, Ld8/n;->j:Z

    return p1
.end method

.method private n(Landroid/os/Bundle;)Z
    .locals 1

    const-string v0, "dolby_available"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "dolby_active"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private o(Landroid/os/Bundle;)Z
    .locals 1

    const-string v0, "spatial_active"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "spatial_available"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "surround_available"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "surround_active"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private p()V
    .locals 3

    invoke-static {}, Lj8/c;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x20

    if-lt v0, v1, :cond_1

    invoke-static {}, Lj8/o;->c()Lj8/o;

    move-result-object v0

    invoke-virtual {v0}, Lj8/o;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ld8/n$b;

    invoke-direct {v0, p0}, Ld8/n$b;-><init>(Ld8/n;)V

    iput-object v0, p0, Ld8/n;->o:Landroid/media/Spatializer$OnSpatializerStateChangedListener;

    invoke-static {}, Lj8/o;->c()Lj8/o;

    move-result-object v0

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iget-object v2, p0, Ld8/n;->o:Landroid/media/Spatializer$OnSpatializerStateChangedListener;

    invoke-virtual {v0, v1, v2}, Lj8/o;->b(Ljava/util/concurrent/Executor;Landroid/media/Spatializer$OnSpatializerStateChangedListener;)V

    :cond_1
    return-void
.end method

.method private s(Lh8/b;)V
    .locals 2

    instance-of v0, p1, Lh8/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld8/n;->g:Ls8/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ls8/h;->N0()V

    return-void

    :cond_0
    instance-of v0, p1, Lh8/h;

    if-nez v0, :cond_1

    return-void

    :cond_1
    check-cast p1, Lh8/h;

    invoke-virtual {p1}, Lh8/h;->j()Lg8/a;

    move-result-object p1

    sget-object v0, Ld8/n$e;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {}, La8/t;->n()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    :pswitch_1
    iget-object v0, p0, Ld8/n;->e:Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;

    invoke-virtual {v0, p1}, Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;->setFunctionType(Lg8/a;)V

    iget-object p1, p0, Ld8/n;->e:Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;

    iget-object v0, p0, Ld8/n;->c:Landroid/widget/ListView;

    invoke-direct {p0, p1, v0}, Ld8/n;->t(Landroid/view/View;Landroid/view/View;)V

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Ld8/n;->g:Ls8/h;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ls8/h;->N0()V

    :cond_3
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private t(Landroid/view/View;Landroid/view/View;)V
    .locals 8

    iget-object v0, p0, Ld8/n;->h:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    const/16 v0, 0x3e8

    const/16 v1, 0x320

    new-instance v2, Le8/b;

    invoke-direct {v2}, Le8/b;-><init>()V

    const v3, 0x3f4ccccd    # 0.8f

    invoke-virtual {v2, v3}, Le8/b;->a(F)Le8/b;

    move-result-object v3

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-virtual {v3, v4}, Le8/b;->b(F)Le8/b;

    iget-object v3, p0, Ld8/n;->b:Landroid/view/ViewGroup;

    const/4 v4, 0x3

    new-array v5, v4, [F

    fill-array-data v5, :array_0

    const-string v6, "scaleX"

    invoke-static {v3, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v5, p0, Ld8/n;->b:Landroid/view/ViewGroup;

    new-array v4, v4, [F

    fill-array-data v4, :array_1

    const-string v6, "scaleY"

    invoke-static {v5, v6, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    int-to-long v6, v0

    invoke-virtual {v5, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {v5, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v5, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v2, Le8/b;

    invoke-direct {v2}, Le8/b;-><init>()V

    const v3, 0x3f666666    # 0.9f

    invoke-virtual {v2, v3}, Le8/b;->a(F)Le8/b;

    move-result-object v2

    const v3, 0x3e19999a    # 0.15f

    invoke-virtual {v2, v3}, Le8/b;->b(F)Le8/b;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_2

    const-string v4, "alpha"

    invoke-static {p1, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-array v2, v2, [F

    fill-array-data v2, :array_3

    invoke-static {p2, v4, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v6, 0x64

    invoke-virtual {v3, v6, v7}, Landroid/animation/Animator;->setStartDelay(J)V

    int-to-long v6, v1

    invoke-virtual {v3, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v2, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance v1, Ld8/n$d;

    invoke-direct {v1, p0, p1, p2}, Ld8/n$d;-><init>(Ld8/n;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Ld8/n;->h:Landroid/animation/AnimatorSet;

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object p1, p0, Ld8/n;->h:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f7851ec    # 0.97f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f7851ec    # 0.97f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method public a(Lg8/a;)V
    .locals 1

    iget-boolean v0, p0, Ld8/n;->i:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Ld8/n;->j:Z

    iget-object v0, p0, Ld8/n;->f:Lcom/miui/gamebooster/videobox/view/SettingsDescLayout;

    invoke-virtual {v0, p1}, Lcom/miui/gamebooster/videobox/view/SettingsDescLayout;->setFunctionType(Lg8/a;)V

    iget-object p1, p0, Ld8/n;->f:Lcom/miui/gamebooster/videobox/view/SettingsDescLayout;

    iget-object v0, p0, Ld8/n;->e:Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;

    invoke-direct {p0, p1, v0}, Ld8/n;->t(Landroid/view/View;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public b(Lh8/b;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1}, Ld8/n;->s(Lh8/b;)V

    invoke-virtual {p1, p2}, Lh8/b;->onClick(Landroid/view/View;)V

    instance-of p2, p1, Lh8/h;

    if-eqz p2, :cond_0

    check-cast p1, Lh8/h;

    invoke-virtual {p1}, Lh8/h;->j()Lg8/a;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/gamebooster/utils/a$o;->q(Lg8/a;)V

    :cond_0
    return-void
.end method

.method public c(Lg8/a;)V
    .locals 1

    iget-object p1, p0, Ld8/n;->e:Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;

    iget-object v0, p0, Ld8/n;->f:Lcom/miui/gamebooster/videobox/view/SettingsDescLayout;

    invoke-direct {p0, p1, v0}, Ld8/n;->t(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public d(Lg8/a;)V
    .locals 1

    iget-boolean p1, p0, Ld8/n;->i:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Ld8/n;->j:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Ld8/n;->d:Ld8/m;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Ld8/n;->i:Z

    iget-object p1, p0, Ld8/n;->c:Landroid/widget/ListView;

    iget-object v0, p0, Ld8/n;->e:Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;

    invoke-direct {p0, p1, v0}, Ld8/n;->t(Landroid/view/View;Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public l()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public m(Landroid/content/Context;ZZ)Landroid/view/View;
    .locals 4

    iget-object v0, p0, Ld8/n;->m:Landroid/content/Context;

    if-nez v0, :cond_0

    iput-object p1, p0, Ld8/n;->m:Landroid/content/Context;

    :cond_0
    iget-object v0, p0, Ld8/n;->a:Landroid/view/ViewGroup;

    if-nez v0, :cond_2

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {p1}, Ls8/x;->h(Landroid/content/Context;)Ls8/x;

    move-result-object v1

    const v2, 0x7f0e0535

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ls8/x;->g(IZ)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Ld8/n;->a:Landroid/view/ViewGroup;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Ld8/n;->a:Landroid/view/ViewGroup;

    :cond_1
    iget-object v0, p0, Ld8/n;->a:Landroid/view/ViewGroup;

    invoke-static {v0, v3}, La8/k0;->o(Landroid/view/View;Z)V

    iget-object v0, p0, Ld8/n;->a:Landroid/view/ViewGroup;

    const v1, 0x7f0b0733

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Ld8/n;->c:Landroid/widget/ListView;

    iget-object v0, p0, Ld8/n;->a:Landroid/view/ViewGroup;

    const v1, 0x7f0b0a2b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;

    iput-object v0, p0, Ld8/n;->e:Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;

    invoke-virtual {v0, p3}, Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;->j(Z)V

    iget-object v0, p0, Ld8/n;->e:Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;

    invoke-virtual {v0, p0}, Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;->setmOnDetailEventListener(Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout$f;)V

    invoke-static {}, Lj8/p;->e()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "support status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TheatreModeUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Ld8/n;->a:Landroid/view/ViewGroup;

    const v2, 0x7f0b0a09

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/gamebooster/videobox/view/SettingsDescLayout;

    iput-object v1, p0, Ld8/n;->f:Lcom/miui/gamebooster/videobox/view/SettingsDescLayout;

    invoke-virtual {v1, p0}, Lcom/miui/gamebooster/videobox/view/SettingsDescLayout;->setOnDescBackListener(Lcom/miui/gamebooster/videobox/view/SettingsDescLayout$d;)V

    iget-object v1, p0, Ld8/n;->a:Landroid/view/ViewGroup;

    const v2, 0x7f0b0739

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Ld8/n;->b:Landroid/view/ViewGroup;

    new-instance v1, Ld8/m;

    invoke-direct {v1, p1, p0, v0}, Ld8/m;-><init>(Landroid/content/Context;Lh8/b$a;Z)V

    iput-object v1, p0, Ld8/n;->d:Ld8/m;

    iget-object v0, p0, Ld8/n;->c:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Ld8/n;->d:Ld8/m;

    invoke-virtual {v0, p3}, Ld8/m;->c(Z)V

    invoke-static {p1}, La8/g0;->p(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_2

    iget-object p3, p0, Ld8/n;->l:Landroid/database/ContentObserver;

    if-nez p3, :cond_2

    new-instance p3, Ld8/n$c;

    iget-object v0, p0, Ld8/n;->n:Landroid/os/Handler;

    invoke-direct {p3, p0, v0}, Ld8/n$c;-><init>(Ld8/n;Landroid/os/Handler;)V

    iput-object p3, p0, Ld8/n;->l:Landroid/database/ContentObserver;

    invoke-static {}, Lcom/miui/common/e;->d()Landroid/app/Application;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    sget-object v0, Lj8/a;->b:Landroid/net/Uri;

    iget-object v1, p0, Ld8/n;->l:Landroid/database/ContentObserver;

    invoke-virtual {p3, v0, v3, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_2
    iget-object p3, p0, Ld8/n;->a:Landroid/view/ViewGroup;

    iget-object v0, p0, Ld8/n;->p:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {p3, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-static {}, La8/k2;->A()Z

    move-result p3

    iget-object v0, p0, Ld8/n;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f071f1e

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-static {}, Lcom/miui/gamebooster/windowmanager/newbox/o0;->b()I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const p1, 0x800003

    const v1, 0x800005

    if-eqz p2, :cond_3

    if-nez p3, :cond_4

    goto :goto_0

    :cond_3
    if-eqz p3, :cond_4

    goto :goto_0

    :cond_4
    move p1, v1

    :goto_0
    or-int/lit8 p1, p1, 0x10

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object p1, p0, Ld8/n;->b:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Ld8/n;->a:Landroid/view/ViewGroup;

    return-object p1
.end method

.method public q()V
    .locals 2

    iget-object v0, p0, Ld8/n;->e:Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Ld8/n;->k:Z

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;->j(Z)V

    :cond_0
    iget-object v0, p0, Ld8/n;->d:Ld8/m;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Ld8/n;->k:Z

    invoke-virtual {v0, v1}, Ld8/m;->c(Z)V

    iget-object v0, p0, Ld8/n;->d:Ld8/m;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public r()V
    .locals 3

    invoke-static {}, Lj8/o;->c()Lj8/o;

    move-result-object v0

    iget-object v1, p0, Ld8/n;->o:Landroid/media/Spatializer$OnSpatializerStateChangedListener;

    invoke-virtual {v0, v1}, Lj8/o;->i(Landroid/media/Spatializer$OnSpatializerStateChangedListener;)V

    iget-object v0, p0, Ld8/n;->l:Landroid/database/ContentObserver;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/common/e;->d()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Ld8/n;->l:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iput-object v1, p0, Ld8/n;->l:Landroid/database/ContentObserver;

    :cond_0
    iget-object v0, p0, Ld8/n;->n:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Ld8/n;->a:Landroid/view/ViewGroup;

    iget-object v1, p0, Ld8/n;->p:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method public u(Z)V
    .locals 0

    iput-boolean p1, p0, Ld8/n;->k:Z

    return-void
.end method

.method public v(Landroid/os/Bundle;)V
    .locals 6
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-object v0, p0, Ld8/n;->e:Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Ld8/n;->e:Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;

    invoke-virtual {v3}, Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;->getCurrentFunctionType()Lg8/a;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "inDetailPage = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", detailPage = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "VideoBoxViewAdapter"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_5

    sget-object v0, Ld8/n$e;->a:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    goto :goto_4

    :cond_1
    invoke-direct {p0, p1}, Ld8/n;->o(Landroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object v0, p0, Ld8/n;->e:Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;

    sget-object v1, Lg8/a;->f:Lg8/a;

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;->i(Lg8/a;)V

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SRS_PREMIUM_SOUND update : "

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1}, Ld8/n;->n(Landroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object v0, p0, Ld8/n;->e:Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;

    sget-object v1, Lg8/a;->m:Lg8/a;

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;->i(Lg8/a;)V

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VIDEO_DOLBY update : "

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_5
    invoke-direct {p0, p1}, Ld8/n;->n(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-direct {p0, p1}, Ld8/n;->o(Landroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_2

    :cond_6
    move v1, v2

    :cond_7
    :goto_2
    if-eqz v1, :cond_8

    iget-object p1, p0, Ld8/n;->d:Ld8/m;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "HOME update :  "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_3
    invoke-static {v5, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    return-void
.end method

.class public Lcom/miui/gamebooster/windowmanager/newbox/e0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static c:Lcom/miui/gamebooster/windowmanager/newbox/e0;


# instance fields
.field private a:Landroid/animation/AnimatorSet;

.field private b:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/e0;->b:Z

    return-void
.end method

.method static synthetic a(Lcom/miui/gamebooster/windowmanager/newbox/e0;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/e0;->b:Z

    return p1
.end method

.method public static declared-synchronized d()Lcom/miui/gamebooster/windowmanager/newbox/e0;
    .locals 2

    const-class v0, Lcom/miui/gamebooster/windowmanager/newbox/e0;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/gamebooster/windowmanager/newbox/e0;->c:Lcom/miui/gamebooster/windowmanager/newbox/e0;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/gamebooster/windowmanager/newbox/e0;

    invoke-direct {v1}, Lcom/miui/gamebooster/windowmanager/newbox/e0;-><init>()V

    sput-object v1, Lcom/miui/gamebooster/windowmanager/newbox/e0;->c:Lcom/miui/gamebooster/windowmanager/newbox/e0;

    :cond_0
    sget-object v1, Lcom/miui/gamebooster/windowmanager/newbox/e0;->c:Lcom/miui/gamebooster/windowmanager/newbox/e0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public b(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/gamebooster/windowmanager/newbox/e0;->c(Landroid/view/View;Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method public c(Landroid/view/View;Landroid/view/ViewGroup;Z)V
    .locals 0

    if-eqz p2, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    :try_start_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/windowmanager/newbox/e0;->h(Landroid/view/View;)V

    invoke-static {p1}, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;->enterChildView(Landroid/view/View;)V

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "GameTurboPannelManager"

    const-string p3, "addView error"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public e(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/windowmanager/newbox/e0;->h(Landroid/view/View;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p2, p3, p1}, Lcom/miui/gamebooster/windowmanager/newbox/e0;->g(Landroid/view/View;Landroid/view/View;Z)V

    return-void
.end method

.method public f(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/e0;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/e0;->b:Z

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/gamebooster/windowmanager/newbox/e0;->c(Landroid/view/View;Landroid/view/ViewGroup;Z)V

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p3, p1}, Lcom/miui/gamebooster/windowmanager/newbox/e0;->g(Landroid/view/View;Landroid/view/View;Z)V

    return-void
.end method

.method public g(Landroid/view/View;Landroid/view/View;Z)V
    .locals 9

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/e0;->a:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f071e7a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    new-instance v1, Le8/b;

    invoke-direct {v1}, Le8/b;-><init>()V

    const v2, 0x3f4ccccd    # 0.8f

    invoke-virtual {v1, v2}, Le8/b;->a(F)Le8/b;

    move-result-object v2

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {v2, v3}, Le8/b;->b(F)Le8/b;

    const/4 v2, 0x2

    new-array v3, v2, [F

    const/4 v4, 0x0

    if-eqz p3, :cond_1

    move v5, v4

    goto :goto_0

    :cond_1
    int-to-float v5, v0

    :goto_0
    const/4 v6, 0x0

    aput v5, v3, v6

    if-eqz p3, :cond_2

    int-to-float v5, v0

    goto :goto_1

    :cond_2
    move v5, v4

    :goto_1
    const/4 v7, 0x1

    aput v5, v3, v7

    const-string v5, "translationX"

    invoke-static {p1, v5, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-array v2, v2, [F

    if-eqz p3, :cond_3

    neg-int v8, v0

    int-to-float v8, v8

    goto :goto_2

    :cond_3
    move v8, v4

    :goto_2
    aput v8, v2, v6

    if-eqz p3, :cond_4

    goto :goto_3

    :cond_4
    neg-int v0, v0

    int-to-float v4, v0

    :goto_3
    aput v4, v2, v7

    invoke-static {p2, v5, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/miui/gamebooster/windowmanager/newbox/e0;->a:Landroid/animation/AnimatorSet;

    new-instance v4, Lcom/miui/gamebooster/windowmanager/newbox/e0$a;

    invoke-direct {v4, p0, p3, p2, p1}, Lcom/miui/gamebooster/windowmanager/newbox/e0$a;-><init>(Lcom/miui/gamebooster/windowmanager/newbox/e0;ZLandroid/view/View;Landroid/view/View;)V

    invoke-virtual {v2, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/e0;->a:Landroid/animation/AnimatorSet;

    const-wide/16 p2, 0x320

    invoke-virtual {p1, p2, p3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/e0;->a:Landroid/animation/AnimatorSet;

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/e0;->a:Landroid/animation/AnimatorSet;

    invoke-virtual {p1, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/e0;->a:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public h(Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

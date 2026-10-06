.class public Leg/t;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leg/t$f;
    }
.end annotation


# static fields
.field private static a:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    sget v1, Leg/t;->a:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    sput v0, Leg/t;->a:I

    invoke-virtual {p0}, Landroid/view/View;->bringToFront()V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-eqz p0, :cond_1

    instance-of v0, p0, Landroid/view/View;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public static b(Landroid/view/View;J)Landroid/animation/ObjectAnimator;
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    const-string v1, "alpha"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3f19999a    # 0.6f

    const v3, 0x3eb33333    # 0.35f

    const v4, 0x3e428f5c    # 0.19f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Leg/t$a;

    invoke-direct {v1, p0}, Leg/t$a;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-object v0

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public static c(Landroid/view/View;JLandroid/animation/TimeInterpolator;)Landroid/animation/ObjectAnimator;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    const-string v1, "alpha"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    if-eqz p3, :cond_0

    invoke-virtual {v0, p3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_0
    new-instance p3, Leg/t$f;

    invoke-direct {p3, p0}, Leg/t$f;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, p3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-object v0

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public static d()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Leg/t;->a:I

    return-void
.end method

.method public static e(Landroid/view/View;JJ)Landroid/animation/ObjectAnimator;
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    const-string v1, "alpha"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f19999a    # 0.6f

    const v2, 0x3eb33333    # 0.35f

    const v3, 0x3e428f5c    # 0.19f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p0, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p0, p3, p4}, Landroid/animation/Animator;->setStartDelay(J)V

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-object p0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static f(Landroid/view/View;JLandroid/animation/TimeInterpolator;)Landroid/animation/ObjectAnimator;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    const-string v1, "alpha"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    if-eqz p3, :cond_0

    invoke-virtual {v0, p3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_0
    new-instance p3, Leg/t$b;

    invoke-direct {p3, p0}, Leg/t$b;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, p3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static g(Landroid/content/Context;ILandroid/widget/Button;I)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-lt p1, p3, :cond_1

    const p1, 0x7f0603e2

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    const p0, 0x7f0807ac

    goto :goto_0

    :cond_1
    const p1, 0x7f0603e3

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    const p0, 0x7f0807b3

    :goto_0
    invoke-virtual {p2, p0}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method public static h(Landroid/content/Context;ILandroid/widget/TextView;I)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-lt p1, p3, :cond_1

    const p1, 0x7f060193

    goto :goto_0

    :cond_1
    const p1, 0x7f0601a2

    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public static i(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Z)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-nez p0, :cond_2

    :cond_1
    return-void

    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    if-eqz p3, :cond_3

    new-instance p3, Lh4/b;

    invoke-direct {p3, p0}, Lh4/b;-><init>(Landroid/content/Context;)V

    const v0, 0x7f010025

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v1, Leg/t$e;

    invoke-direct {v1, p1}, Leg/t$e;-><init>(Landroid/view/View;)V

    invoke-virtual {p3, p1, v0, v1}, Lh4/b;->c(Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/animation/Animation$AnimationListener;)Lh4/b;

    const p1, 0x7f01003a

    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p3, p2, p0, p1}, Lh4/b;->c(Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/animation/Animation$AnimationListener;)Lh4/b;

    invoke-virtual {p3}, Lh4/b;->d()V

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Landroid/view/View;->setVisibility(I)V

    const/16 p0, 0x8

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public static j(Landroid/view/ViewGroup;JFFLandroid/animation/TimeInterpolator;Z)Landroid/animation/ObjectAnimator;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p3, v0, v1

    const/4 p3, 0x1

    aput p4, v0, p3

    const-string p3, "translationY"

    invoke-static {p0, p3, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    if-eqz p5, :cond_0

    invoke-virtual {p3, p5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_0
    new-instance p4, Leg/t$c;

    invoke-direct {p4, p0, p6}, Leg/t$c;-><init>(Landroid/view/ViewGroup;Z)V

    invoke-virtual {p3, p4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p3, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p3}, Landroid/animation/ObjectAnimator;->start()V

    return-object p3
.end method

.method public static k(Landroid/content/Context;Landroid/view/View;Landroid/view/View;)Landroid/animation/AnimatorSet;
    .locals 11

    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {p1, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v2, 0x190

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x3fc00000    # 1.5f

    mul-float/2addr v4, v5

    :goto_0
    new-array v5, v0, [F

    aput v4, v5, p0

    const/4 v4, 0x0

    const/4 v6, 0x1

    aput v4, v5, v6

    const-string v4, "translationY"

    invoke-static {p2, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    invoke-virtual {p2, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-array v4, v6, [F

    const v5, 0x3f733333    # 0.95f

    aput v5, v4, p0

    const-string v7, "scaleX"

    invoke-static {p1, v7, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-array v7, v6, [F

    aput v5, v7, p0

    const-string v5, "scaleY"

    invoke-static {p1, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v7, 0x3f19999a    # 0.6f

    const v8, 0x3eb33333    # 0.35f

    const v9, 0x3e428f5c    # 0.19f

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v3, v7, v8, v9, v10}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v3, 0x4

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v1, v3, p0

    aput-object p2, v3, v6

    aput-object v4, v3, v0

    const/4 p0, 0x3

    aput-object v5, v3, p0

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance p0, Leg/t$d;

    invoke-direct {p0, p1}, Leg/t$d;-><init>(Landroid/view/View;)V

    invoke-virtual {v2, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    return-object v2

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

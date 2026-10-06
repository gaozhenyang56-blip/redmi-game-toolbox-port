.class public final Lcom/miui/gamebooster/guide/CasualModeGuide;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig;,
        Lcom/miui/gamebooster/guide/CasualModeGuide$a;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCasualModeGuide.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CasualModeGuide.kt\ncom/miui/gamebooster/guide/CasualModeGuide\n+ 2 Handler.kt\nandroidx/core/os/HandlerKt\n+ 3 Animator.kt\nandroidx/core/animation/AnimatorKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n+ 6 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,454:1\n33#2,12:455\n30#3:467\n91#3,14:468\n1#4:482\n1295#5,2:483\n188#6,3:485\n188#6,3:488\n188#6,3:491\n*S KotlinDebug\n*F\n+ 1 CasualModeGuide.kt\ncom/miui/gamebooster/guide/CasualModeGuide\n*L\n135#1:455,12\n257#1:467\n257#1:468,14\n293#1:483,2\n339#1:485,3\n393#1:488,3\n270#1:491,3\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lcom/miui/gamebooster/guide/CasualModeGuide;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:Landroid/os/Handler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static final d:Lcom/miui/gamebooster/guide/CasualModeGuide$l;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/gamebooster/guide/CasualModeGuide;

    invoke-direct {v0}, Lcom/miui/gamebooster/guide/CasualModeGuide;-><init>()V

    sput-object v0, Lcom/miui/gamebooster/guide/CasualModeGuide;->a:Lcom/miui/gamebooster/guide/CasualModeGuide;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/miui/gamebooster/guide/CasualModeGuide;->b:Landroid/os/Handler;

    new-instance v0, Lcom/miui/gamebooster/guide/CasualModeGuide$l;

    invoke-direct {v0}, Lcom/miui/gamebooster/guide/CasualModeGuide$l;-><init>()V

    sput-object v0, Lcom/miui/gamebooster/guide/CasualModeGuide;->d:Lcom/miui/gamebooster/guide/CasualModeGuide$l;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final A(J)V
    .locals 1

    const-string v0, "gb_last_show_panel_millis"

    invoke-static {v0, p1, p2}, Lr4/a;->q(Ljava/lang/String;J)V

    return-void
.end method

.method private final B(I)V
    .locals 1

    const-string v0, "gb_not_open_panel_times"

    invoke-static {v0, p1}, Lr4/a;->p(Ljava/lang/String;I)V

    return-void
.end method

.method public static final C(Landroid/content/Context;Landroid/view/WindowManager;Landroid/view/WindowManager$LayoutParams;Ls8/h;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/WindowManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/WindowManager$LayoutParams;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ls8/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "windowManager"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layoutParams"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dockWindowManager"

    invoke-static {p3, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/miui/gamebooster/guide/CasualModeGuide;->m(Landroid/view/WindowManager;)V

    new-instance v0, Lcom/miui/gamebooster/guide/CasualModeGuide$a;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/miui/gamebooster/guide/CasualModeGuide$a;-><init>(Landroid/content/Context;Landroid/view/WindowManager;Landroid/view/WindowManager$LayoutParams;Ls8/h;)V

    sget-object p1, Lcom/miui/gamebooster/guide/CasualModeGuide;->a:Lcom/miui/gamebooster/guide/CasualModeGuide;

    invoke-direct {p1}, Lcom/miui/gamebooster/guide/CasualModeGuide;->s()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-direct {p1, v0}, Lcom/miui/gamebooster/guide/CasualModeGuide;->H(Lcom/miui/gamebooster/guide/CasualModeGuide$a;)V

    const/4 p2, 0x2

    const/4 p3, 0x0

    invoke-static {p1, p0, p3, p2, p3}, Lcom/miui/gamebooster/guide/CasualModeGuide;->x(Lcom/miui/gamebooster/guide/CasualModeGuide;Landroid/content/Context;Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig;ILjava/lang/Object;)V

    const/4 p0, 0x0

    invoke-direct {p1, p0}, Lcom/miui/gamebooster/guide/CasualModeGuide;->z(Z)V

    goto :goto_0

    :cond_0
    invoke-direct {p1, v0}, Lcom/miui/gamebooster/guide/CasualModeGuide;->M(Lcom/miui/gamebooster/guide/CasualModeGuide$a;)V

    :goto_0
    invoke-direct {p1, v0}, Lcom/miui/gamebooster/guide/CasualModeGuide;->y(Lcom/miui/gamebooster/guide/CasualModeGuide$a;)V

    invoke-direct {p1}, Lcom/miui/gamebooster/guide/CasualModeGuide;->p()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-direct {p1, p0}, Lcom/miui/gamebooster/guide/CasualModeGuide;->B(I)V

    invoke-direct {p1}, Lcom/miui/gamebooster/guide/CasualModeGuide;->p()I

    invoke-static {}, Lcom/miui/gamebooster/utils/a$n;->e()V

    return-void
.end method

.method private final D(Lcom/miui/gamebooster/guide/CasualModeGuide$a;IIZLjava/lang/String;ILak/l;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gamebooster/guide/CasualModeGuide$a;",
            "IIZ",
            "Ljava/lang/String;",
            "I",
            "Lak/l<",
            "-",
            "Lcom/airbnb/lottie/LottieAnimationView;",
            "Loj/t;",
            ">;)V"
        }
    .end annotation

    new-instance v6, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Lcom/miui/gamebooster/guide/CasualModeGuide$a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v7, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/miui/gamebooster/guide/CasualModeGuide$a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v7, v0}, Lcom/airbnb/lottie/LottieAnimationView;-><init>(Landroid/content/Context;)V

    invoke-interface {p7, v7}, Lak/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7}, Lcom/airbnb/lottie/LottieAnimationView;->n()V

    new-instance p7, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p7, p2, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1}, Lcom/miui/gamebooster/guide/CasualModeGuide$a;->f()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x3

    goto :goto_0

    :cond_0
    const/4 p2, 0x5

    :goto_0
    iput p2, p7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 p2, 0x0

    invoke-virtual {p1}, Lcom/miui/gamebooster/guide/CasualModeGuide$a;->d()I

    move-result v0

    div-int/lit8 p3, p3, 0x2

    sub-int/2addr v0, p3

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sget-object p2, Loj/t;->a:Loj/t;

    invoke-virtual {v6, v7, p7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p2, Lcom/miui/gamebooster/guide/b;

    invoke-direct {p2, p1}, Lcom/miui/gamebooster/guide/b;-><init>(Lcom/miui/gamebooster/guide/CasualModeGuide$a;)V

    invoke-virtual {v6, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p2, Lcom/miui/gamebooster/guide/CasualModeGuide$e;

    move-object v0, p2

    move-object v1, p1

    move v2, p4

    move v3, p6

    move-object v4, v6

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/miui/gamebooster/guide/CasualModeGuide$e;-><init>(Lcom/miui/gamebooster/guide/CasualModeGuide$a;ZILandroid/widget/FrameLayout;Ljava/lang/String;)V

    invoke-virtual {v7, p2}, Lcom/airbnb/lottie/LottieAnimationView;->d(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1}, Lcom/miui/gamebooster/guide/CasualModeGuide$a;->e()Landroid/view/WindowManager;

    move-result-object p2

    invoke-virtual {p1}, Lcom/miui/gamebooster/guide/CasualModeGuide$a;->c()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    invoke-interface {p2, v6, p1}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object p1, Lcom/miui/gamebooster/guide/CasualModeGuide;->c:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private final E(Lcom/miui/gamebooster/guide/CasualModeGuide$a;Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig$Anim;I)V
    .locals 11

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/miui/gamebooster/guide/CasualModeGuide$a;->f()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig$Anim;->select(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v1, 0x1

    :goto_2
    if-eqz v1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1}, Lcom/miui/gamebooster/guide/CasualModeGuide$a;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/miui/gamebooster/guide/CasualModeGuide;->n(Landroid/content/Context;Ljava/lang/String;)Loj/l;

    move-result-object v1

    invoke-virtual {v1}, Loj/l;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-virtual {v1}, Loj/l;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v6

    invoke-virtual {p2}, Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig$Anim;->getWithToast()Z

    move-result v7

    invoke-virtual {p2}, Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig$Anim;->getOverrideToast()Ljava/lang/String;

    move-result-object v8

    new-instance v10, Lcom/miui/gamebooster/guide/CasualModeGuide$d;

    invoke-direct {v10, v0}, Lcom/miui/gamebooster/guide/CasualModeGuide$d;-><init>(Ljava/lang/String;)V

    move-object v3, p0

    move-object v4, p1

    move v9, p3

    invoke-direct/range {v3 .. v10}, Lcom/miui/gamebooster/guide/CasualModeGuide;->D(Lcom/miui/gamebooster/guide/CasualModeGuide$a;IIZLjava/lang/String;ILak/l;)V

    return-void
.end method

.method private static final F(Lcom/miui/gamebooster/guide/CasualModeGuide$a;Landroid/view/View;)V
    .locals 2

    const-string p1, "$params"

    invoke-static {p0, p1}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/gamebooster/guide/CasualModeGuide$a;->b()Ls8/h;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ls8/h;->c0(ZZ)V

    invoke-virtual {p0}, Lcom/miui/gamebooster/guide/CasualModeGuide$a;->e()Landroid/view/WindowManager;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/gamebooster/guide/CasualModeGuide;->m(Landroid/view/WindowManager;)V

    return-void
.end method

.method private final G(Landroid/view/ViewGroup;ZILak/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "ZI",
            "Lak/a<",
            "Loj/t;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f071e87

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f071d5c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    new-instance v2, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;-><init>(Landroid/content/Context;)V

    const-string v3, "anim_casual_guide_arrow.json"

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieAnimationView;->n()V

    if-eqz p2, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/high16 v3, 0x43340000    # 180.0f

    :goto_0
    invoke-virtual {v2, v3}, Landroid/view/View;->setRotationY(F)V

    new-instance v3, Lcom/miui/gamebooster/guide/CasualModeGuide$f;

    invoke-direct {v3, p4}, Lcom/miui/gamebooster/guide/CasualModeGuide$f;-><init>(Lak/a;)V

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->d(Landroid/animation/Animator$AnimatorListener;)V

    new-instance p4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p4, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    if-eqz p2, :cond_1

    const/4 p2, 0x3

    goto :goto_1

    :cond_1
    const/4 p2, 0x5

    :goto_1
    iput p2, p4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 p2, 0x0

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p3, v1

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sget-object p2, Loj/t;->a:Loj/t;

    invoke-virtual {p1, v2, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private final H(Lcom/miui/gamebooster/guide/CasualModeGuide$a;)V
    .locals 7

    invoke-virtual {p1}, Lcom/miui/gamebooster/guide/CasualModeGuide$a;->a()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f08078d

    invoke-static {v0, v1}, Lf/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.graphics.drawable.AnimationDrawable"

    invoke-static {v1, v2}, Lbk/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f071d76

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    new-instance v3, Landroid/view/View;

    invoke-direct {v3, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1}, Lcom/miui/gamebooster/guide/CasualModeGuide$a;->f()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x3

    goto :goto_0

    :cond_0
    const/4 v5, 0x5

    :goto_0
    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p1}, Lcom/miui/gamebooster/guide/CasualModeGuide$a;->d()I

    move-result v5

    div-int/lit8 v6, v2, 0x2

    sub-int/2addr v5, v6

    const/4 v6, 0x0

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sget-object v5, Loj/t;->a:Loj/t;

    invoke-virtual {v4, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    new-array v0, v0, [F

    invoke-virtual {p1}, Lcom/miui/gamebooster/guide/CasualModeGuide$a;->f()Z

    move-result v5

    if-eqz v5, :cond_1

    neg-int v2, v2

    :cond_1
    int-to-float v2, v2

    aput v2, v0, v6

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v2, Ld7/b;

    invoke-direct {v2, v3}, Ld7/b;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-string v2, "outAnim"

    invoke-static {v0, v2}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/miui/gamebooster/guide/CasualModeGuide$g;

    invoke-direct {v2, p1, v4}, Lcom/miui/gamebooster/guide/CasualModeGuide$g;-><init>(Lcom/miui/gamebooster/guide/CasualModeGuide$a;Landroid/widget/FrameLayout;)V

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v2, Lcom/miui/gamebooster/guide/a;

    invoke-direct {v2, p1, v1, v4, v0}, Lcom/miui/gamebooster/guide/a;-><init>(Lcom/miui/gamebooster/guide/CasualModeGuide$a;Landroid/graphics/drawable/AnimationDrawable;Landroid/widget/FrameLayout;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v4, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p1}, Lcom/miui/gamebooster/guide/CasualModeGuide$a;->e()Landroid/view/WindowManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/gamebooster/guide/CasualModeGuide$a;->c()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    invoke-interface {v0, v4, p1}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object p1, Lcom/miui/gamebooster/guide/CasualModeGuide;->c:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private static final I(Lcom/miui/gamebooster/guide/CasualModeGuide$a;Landroid/graphics/drawable/AnimationDrawable;Landroid/widget/FrameLayout;Landroid/animation/ValueAnimator;)V
    .locals 2

    const-string v0, "$params"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$anim"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$rootView"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/gamebooster/guide/CasualModeGuide$a;->b()Ls8/h;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ls8/h;->c0(ZZ)V

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    sget-object p0, Lcom/miui/gamebooster/guide/CasualModeGuide;->a:Lcom/miui/gamebooster/guide/CasualModeGuide;

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/guide/CasualModeGuide;->q(Landroid/graphics/drawable/AnimationDrawable;)I

    move-result p0

    int-to-long p0, p0

    new-instance v0, Lcom/miui/gamebooster/guide/CasualModeGuide$i;

    invoke-direct {v0, p3}, Lcom/miui/gamebooster/guide/CasualModeGuide$i;-><init>(Landroid/animation/ValueAnimator;)V

    invoke-virtual {p2, v0, p0, p1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static final J(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "$animView"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lbk/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method

.method private final K(Landroid/view/ViewGroup;ZILak/a;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "ZI",
            "Lak/a<",
            "Loj/t;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f071e07

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "parent.context"

    invoke-static {v1, v2}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/miui/gamebooster/guide/CasualModeGuide;->P(Landroid/content/Context;)Landroid/view/View;

    move-result-object v5

    const/4 v1, 0x0

    invoke-virtual {v5, v1, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {v5}, Landroid/view/View;->forceLayout()V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    if-eqz p2, :cond_0

    const/4 v3, 0x3

    goto :goto_0

    :cond_0
    const/4 v3, 0x5

    :goto_0
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v3, p3, v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    sget-object v0, Loj/t;->a:Loj/t;

    invoke-virtual {p1, v5, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v0, Lcom/miui/gamebooster/guide/CasualModeGuide;->d:Lcom/miui/gamebooster/guide/CasualModeGuide$l;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/guide/CasualModeGuide$l;->a(I)I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/gamebooster/guide/CasualModeGuide$l;->b(II)V

    new-instance v0, Ld7/d;

    invoke-direct {v0, p4}, Ld7/d;-><init>(Lak/a;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-wide/16 v0, 0x5dc

    new-instance v2, Lcom/miui/gamebooster/guide/CasualModeGuide$j;

    move-object v3, v2

    move-object v4, p1

    move v6, p2

    move v7, p3

    move-object v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/miui/gamebooster/guide/CasualModeGuide$j;-><init>(Landroid/view/ViewGroup;Landroid/view/View;ZILak/a;)V

    invoke-virtual {p1, v2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static final L(Lak/a;Landroid/view/View;)V
    .locals 0

    const-string p1, "$onDismissRequest"

    invoke-static {p0, p1}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lak/a;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private final M(Lcom/miui/gamebooster/guide/CasualModeGuide$a;)V
    .locals 6

    invoke-direct {p0}, Lcom/miui/gamebooster/guide/CasualModeGuide;->k()Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig;

    move-result-object v0

    invoke-direct {p0}, Lcom/miui/gamebooster/guide/CasualModeGuide;->t()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig;->getRecallAnim()Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig$Anim;

    move-result-object v3

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig;->getNotFirstAnim()Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig$Anim;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v2

    :goto_0
    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lcom/miui/gamebooster/guide/CasualModeGuide$a;->f()Z

    move-result v2

    invoke-virtual {v3, v2}, Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig$Anim;->select(Z)Ljava/lang/String;

    move-result-object v2

    :cond_2
    const/4 v4, 0x1

    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    move v5, v4

    :goto_2
    if-eqz v5, :cond_5

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/guide/CasualModeGuide;->H(Lcom/miui/gamebooster/guide/CasualModeGuide$a;)V

    return-void

    :cond_5
    invoke-virtual {p1}, Lcom/miui/gamebooster/guide/CasualModeGuide$a;->a()Landroid/content/Context;

    move-result-object v5

    invoke-direct {p0, v5, v2}, Lcom/miui/gamebooster/guide/CasualModeGuide;->r(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/guide/CasualModeGuide;->H(Lcom/miui/gamebooster/guide/CasualModeGuide$a;)V

    invoke-virtual {p1}, Lcom/miui/gamebooster/guide/CasualModeGuide$a;->a()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/miui/gamebooster/guide/CasualModeGuide;->w(Landroid/content/Context;Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig;)V

    return-void

    :cond_6
    if-eqz v1, :cond_7

    const/4 v4, 0x3

    :cond_7
    invoke-direct {p0, p1, v3, v4}, Lcom/miui/gamebooster/guide/CasualModeGuide;->E(Lcom/miui/gamebooster/guide/CasualModeGuide$a;Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig$Anim;I)V

    return-void
.end method

.method private final N(Landroid/view/ViewGroup;ZILjava/lang/String;ILak/a;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "ZI",
            "Ljava/lang/String;",
            "I",
            "Lak/a<",
            "Loj/t;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    const v0, 0x7f0e0230

    goto :goto_0

    :cond_0
    const v0, 0x7f0e0231

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    if-eqz v0, :cond_2

    const v0, 0x7f0b0b80

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    invoke-virtual {v5, v2, v2}, Landroid/view/View;->measure(II)V

    invoke-virtual {v5}, Landroid/view/View;->forceLayout()V

    new-instance p4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p4, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    if-eqz p2, :cond_3

    const/4 v0, 0x3

    goto :goto_2

    :cond_3
    const/4 v0, 0x5

    :goto_2
    iput v0, p4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p3, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sget-object v0, Loj/t;->a:Loj/t;

    invoke-virtual {p1, v5, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-object p4, Lcom/miui/gamebooster/guide/CasualModeGuide;->d:Lcom/miui/gamebooster/guide/CasualModeGuide$l;

    invoke-virtual {p4, p5}, Lcom/miui/gamebooster/guide/CasualModeGuide$l;->a(I)I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p4, p5, v0}, Lcom/miui/gamebooster/guide/CasualModeGuide$l;->b(II)V

    new-instance p4, Ld7/c;

    invoke-direct {p4, p6}, Ld7/c;-><init>(Lak/a;)V

    invoke-virtual {p1, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-wide/16 p4, 0x5dc

    new-instance v0, Lcom/miui/gamebooster/guide/CasualModeGuide$k;

    move-object v3, v0

    move-object v4, p1

    move v6, p2

    move v7, p3

    move-object v8, p6

    invoke-direct/range {v3 .. v8}, Lcom/miui/gamebooster/guide/CasualModeGuide$k;-><init>(Landroid/view/ViewGroup;Landroid/view/View;ZILak/a;)V

    invoke-virtual {p1, v0, p4, p5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static final O(Lak/a;Landroid/view/View;)V
    .locals 0

    const-string p1, "$onDismissRequest"

    invoke-static {p0, p1}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lak/a;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private final P(Landroid/content/Context;)Landroid/view/View;
    .locals 5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f071dbc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f071da6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    new-instance v2, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-direct {v2, p1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f071d5a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f071dd9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const v4, -0x33ff1a49    # -3.378966E7f

    invoke-virtual {p1, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    const v3, -0x33f6d7df    # -3.595482E7f

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v2, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f071c42

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v2, p1, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    const/4 p1, -0x1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v2, v0, v1, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    const p1, 0x7f120bb5

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(I)V

    return-object v2
.end method

.method public static final Q()V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/miui/gamebooster/guide/CasualModeGuide;->a:Lcom/miui/gamebooster/guide/CasualModeGuide;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/miui/gamebooster/guide/CasualModeGuide;->A(J)V

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/gamebooster/guide/CasualModeGuide;->B(I)V

    return-void
.end method

.method public static synthetic a(Lcom/miui/gamebooster/guide/CasualModeGuide$a;Landroid/graphics/drawable/AnimationDrawable;Landroid/widget/FrameLayout;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/miui/gamebooster/guide/CasualModeGuide;->I(Lcom/miui/gamebooster/guide/CasualModeGuide$a;Landroid/graphics/drawable/AnimationDrawable;Landroid/widget/FrameLayout;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic b(Lak/a;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/gamebooster/guide/CasualModeGuide;->L(Lak/a;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/gamebooster/guide/CasualModeGuide;->J(Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic d(Lak/a;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/gamebooster/guide/CasualModeGuide;->O(Lak/a;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Lcom/miui/gamebooster/guide/CasualModeGuide$a;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/gamebooster/guide/CasualModeGuide;->F(Lcom/miui/gamebooster/guide/CasualModeGuide$a;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic f(Lcom/miui/gamebooster/guide/CasualModeGuide;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/guide/CasualModeGuide;->u(I)Z

    move-result p0

    return p0
.end method

.method public static final synthetic g(Lcom/miui/gamebooster/guide/CasualModeGuide;Lcom/miui/gamebooster/guide/CasualModeGuide$a;Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig$Anim;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gamebooster/guide/CasualModeGuide;->E(Lcom/miui/gamebooster/guide/CasualModeGuide$a;Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig$Anim;I)V

    return-void
.end method

.method public static final synthetic h(Lcom/miui/gamebooster/guide/CasualModeGuide;Landroid/view/ViewGroup;ZILak/a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/gamebooster/guide/CasualModeGuide;->G(Landroid/view/ViewGroup;ZILak/a;)V

    return-void
.end method

.method public static final synthetic i(Lcom/miui/gamebooster/guide/CasualModeGuide;Landroid/view/ViewGroup;ZILak/a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/gamebooster/guide/CasualModeGuide;->K(Landroid/view/ViewGroup;ZILak/a;)V

    return-void
.end method

.method public static final synthetic j(Lcom/miui/gamebooster/guide/CasualModeGuide;Landroid/view/ViewGroup;ZILjava/lang/String;ILak/a;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/miui/gamebooster/guide/CasualModeGuide;->N(Landroid/view/ViewGroup;ZILjava/lang/String;ILak/a;)V

    return-void
.end method

.method private final k()Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig;
    .locals 4

    invoke-static {}, Lm6/d;->e()Lm6/d;

    move-result-object v0

    invoke-virtual {v0}, Lm6/d;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    const/4 v2, 0x0

    if-eqz v1, :cond_2

    return-object v2

    :cond_2
    :try_start_0
    sget-object v1, Loj/m;->b:Loj/m$a;

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v3, Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig;

    invoke-virtual {v1, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig;

    invoke-static {v0}, Loj/m;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    sget-object v1, Loj/m;->b:Loj/m$a;

    invoke-static {v0}, Loj/n;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Loj/m;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_2
    invoke-static {v0}, Loj/m;->f(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    move-object v2, v0

    :goto_3
    check-cast v2, Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig;

    return-object v2
.end method

.method private final l(ILandroid/content/Context;)I
    .locals 1

    int-to-float p1, p1

    const/high16 v0, 0x40300000    # 2.75f

    div-float/2addr p1, v0

    invoke-static {p2, p1}, La8/k2;->a(Landroid/content/Context;F)I

    move-result p1

    return p1
.end method

.method public static final m(Landroid/view/WindowManager;)V
    .locals 1
    .param p0    # Landroid/view/WindowManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "windowManager"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/miui/gamebooster/guide/CasualModeGuide;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-interface {p0, v0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 p0, 0x0

    sput-object p0, Lcom/miui/gamebooster/guide/CasualModeGuide;->c:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private final n(Landroid/content/Context;Ljava/lang/String;)Loj/l;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Loj/l<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    new-instance v0, Loj/l;

    const-string v1, "w"

    invoke-virtual {p2, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v3, "getQueryParameter(\"w\")"

    invoke-static {v1, v3}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ljk/f;->f(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v3, Lcom/miui/gamebooster/guide/CasualModeGuide;->a:Lcom/miui/gamebooster/guide/CasualModeGuide;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v3, v1, p1}, Lcom/miui/gamebooster/guide/CasualModeGuide;->l(ILandroid/content/Context;)I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "h"

    invoke-virtual {p2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    const-string v3, "getQueryParameter(\"h\")"

    invoke-static {p2, v3}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Ljk/f;->f(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_1

    sget-object v2, Lcom/miui/gamebooster/guide/CasualModeGuide;->a:Lcom/miui/gamebooster/guide/CasualModeGuide;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {v2, p2, p1}, Lcom/miui/gamebooster/guide/CasualModeGuide;->l(ILandroid/content/Context;)I

    move-result v2

    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Loj/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private final o()J
    .locals 3

    const-string v0, "gb_last_show_panel_millis"

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lr4/a;->j(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private final p()I
    .locals 2

    const-string v0, "gb_not_open_panel_times"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private final q(Landroid/graphics/drawable/AnimationDrawable;)I
    .locals 3

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lgk/g;->h(II)Lgk/c;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lqj/b0;

    invoke-virtual {v2}, Lqj/b0;->nextInt()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method private final r(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    const-string v0, "context.cacheDir"

    invoke-static {p1, v0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lottie_network_cache"

    invoke-static {p1, v0}, Lyj/b;->d(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lottie_cache_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljk/e;

    const-string v2, "\\W+"

    invoke-direct {v1, v2}, Ljk/e;-><init>(Ljava/lang/String;)V

    const-string v2, ""

    invoke-virtual {v1, p2, v2}, Ljk/e;->a(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".zip"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lyj/b;->d(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    return p1
.end method

.method private final s()Z
    .locals 2

    const-string v0, "gb_first_show_guide"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private final t()Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/miui/gamebooster/guide/CasualModeGuide;->o()J

    move-result-wide v2

    sub-long/2addr v0, v2

    sget-object v2, Lkk/a;->b:Lkk/a$a;

    sget-object v2, Lkk/d;->h:Lkk/d;

    const/4 v3, 0x2

    invoke-static {v3, v2}, Lkk/c;->h(ILkk/d;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lkk/a;->k(J)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/gamebooster/guide/CasualModeGuide;->p()I

    move-result v0

    rem-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final u(I)Z
    .locals 1

    sget-object v0, Lcom/miui/gamebooster/guide/CasualModeGuide;->d:Lcom/miui/gamebooster/guide/CasualModeGuide$l;

    invoke-virtual {v0, p1}, Lcom/miui/gamebooster/guide/CasualModeGuide$l;->a(I)I

    move-result p1

    const/4 v0, 0x3

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static final v()V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/miui/gamebooster/guide/CasualModeGuide;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method private final w(Landroid/content/Context;Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig;)V
    .locals 4

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p2}, Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig;->getNotFirstAnim()Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig$Anim;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig$Anim;->getLeft()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p2}, Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig;->getNotFirstAnim()Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig$Anim;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig$Anim;->getRight()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    move-object v2, v3

    :goto_1
    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p2}, Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig;->getInGameAnim()Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig$Anim;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig$Anim;->getLeft()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_3
    move-object v2, v3

    :goto_2
    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-virtual {p2}, Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig;->getInGameAnim()Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig$Anim;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig$Anim;->getRight()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_4
    move-object v2, v3

    :goto_3
    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-virtual {p2}, Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig;->getRecallAnim()Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig$Anim;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig$Anim;->getLeft()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_5
    move-object v2, v3

    :goto_4
    aput-object v2, v0, v1

    const/4 v1, 0x5

    invoke-virtual {p2}, Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig;->getRecallAnim()Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig$Anim;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig$Anim;->getRight()Ljava/lang/String;

    move-result-object v3

    :cond_6
    aput-object v3, v0, v1

    invoke-static {v0}, Lik/f;->e([Ljava/lang/Object;)Lik/e;

    move-result-object p2

    sget-object v0, Lcom/miui/gamebooster/guide/CasualModeGuide$b;->a:Lcom/miui/gamebooster/guide/CasualModeGuide$b;

    invoke-static {p2, v0}, Lik/f;->g(Lik/e;Lak/l;)Lik/e;

    move-result-object p2

    invoke-interface {p2}, Lik/e;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/airbnb/lottie/e;->p(Landroid/content/Context;Ljava/lang/String;)Lcom/airbnb/lottie/l;

    goto :goto_5

    :cond_7
    return-void
.end method

.method static synthetic x(Lcom/miui/gamebooster/guide/CasualModeGuide;Landroid/content/Context;Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    invoke-direct {p0}, Lcom/miui/gamebooster/guide/CasualModeGuide;->k()Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig;

    move-result-object p2

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/miui/gamebooster/guide/CasualModeGuide;->w(Landroid/content/Context;Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig;)V

    return-void
.end method

.method private final y(Lcom/miui/gamebooster/guide/CasualModeGuide$a;)V
    .locals 5

    invoke-direct {p0}, Lcom/miui/gamebooster/guide/CasualModeGuide;->k()Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig;->getInGameAnim()Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig$Anim;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lcom/miui/gamebooster/guide/CasualModeGuide$a;->f()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig$Anim;->select(Z)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1}, Lcom/miui/gamebooster/guide/CasualModeGuide$a;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/miui/gamebooster/guide/CasualModeGuide;->r(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p1}, Lcom/miui/gamebooster/guide/CasualModeGuide$a;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/miui/gamebooster/guide/CasualModeGuide;->w(Landroid/content/Context;Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig;)V

    :cond_4
    sget-object v1, Lcom/miui/gamebooster/guide/CasualModeGuide;->b:Landroid/os/Handler;

    invoke-virtual {v0}, Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig;->getInGameAnimDelayMillis()J

    move-result-wide v2

    new-instance v4, Lcom/miui/gamebooster/guide/CasualModeGuide$c;

    invoke-direct {v4, p1, v0}, Lcom/miui/gamebooster/guide/CasualModeGuide$c;-><init>(Lcom/miui/gamebooster/guide/CasualModeGuide$a;Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig;)V

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    :goto_1
    return-void
.end method

.method private final z(Z)V
    .locals 1

    const-string v0, "gb_first_show_guide"

    invoke-static {v0, p1}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.class public final Lcom/miui/gamebooster/guide/CasualModeGuide$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/guide/CasualModeGuide;->H(Lcom/miui/gamebooster/guide/CasualModeGuide$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAnimator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$listener$1\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$4\n+ 3 CasualModeGuide.kt\ncom/miui/gamebooster/guide/CasualModeGuide\n+ 4 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$3\n+ 5 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$2\n*L\n1#1,123:1\n95#2:124\n258#3,9:125\n94#4:134\n93#5:135\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/guide/CasualModeGuide$a;

.field final synthetic b:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Lcom/miui/gamebooster/guide/CasualModeGuide$a;Landroid/widget/FrameLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/guide/CasualModeGuide$g;->a:Lcom/miui/gamebooster/guide/CasualModeGuide$a;

    iput-object p2, p0, Lcom/miui/gamebooster/guide/CasualModeGuide$g;->b:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1    # Landroid/animation/Animator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5
    .param p1    # Landroid/animation/Animator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/miui/gamebooster/guide/CasualModeGuide$g;->a:Lcom/miui/gamebooster/guide/CasualModeGuide$a;

    invoke-virtual {p1}, Lcom/miui/gamebooster/guide/CasualModeGuide$a;->b()Ls8/h;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0, v0}, Ls8/h;->c0(ZZ)V

    sget-object p1, Lcom/miui/gamebooster/guide/CasualModeGuide;->a:Lcom/miui/gamebooster/guide/CasualModeGuide;

    invoke-static {p1, v0}, Lcom/miui/gamebooster/guide/CasualModeGuide;->f(Lcom/miui/gamebooster/guide/CasualModeGuide;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/guide/CasualModeGuide$g;->b:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/miui/gamebooster/guide/CasualModeGuide$g;->a:Lcom/miui/gamebooster/guide/CasualModeGuide$a;

    invoke-virtual {v1}, Lcom/miui/gamebooster/guide/CasualModeGuide$a;->f()Z

    move-result v1

    iget-object v2, p0, Lcom/miui/gamebooster/guide/CasualModeGuide$g;->a:Lcom/miui/gamebooster/guide/CasualModeGuide$a;

    invoke-virtual {v2}, Lcom/miui/gamebooster/guide/CasualModeGuide$a;->d()I

    move-result v2

    new-instance v3, Lcom/miui/gamebooster/guide/CasualModeGuide$h;

    iget-object v4, p0, Lcom/miui/gamebooster/guide/CasualModeGuide$g;->a:Lcom/miui/gamebooster/guide/CasualModeGuide$a;

    invoke-direct {v3, v4}, Lcom/miui/gamebooster/guide/CasualModeGuide$h;-><init>(Lcom/miui/gamebooster/guide/CasualModeGuide$a;)V

    invoke-static {p1, v0, v1, v2, v3}, Lcom/miui/gamebooster/guide/CasualModeGuide;->i(Lcom/miui/gamebooster/guide/CasualModeGuide;Landroid/view/ViewGroup;ZILak/a;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/gamebooster/guide/CasualModeGuide$g;->a:Lcom/miui/gamebooster/guide/CasualModeGuide$a;

    invoke-virtual {p1}, Lcom/miui/gamebooster/guide/CasualModeGuide$a;->e()Landroid/view/WindowManager;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/gamebooster/guide/CasualModeGuide;->m(Landroid/view/WindowManager;)V

    :goto_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1    # Landroid/animation/Animator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1    # Landroid/animation/Animator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    return-void
.end method

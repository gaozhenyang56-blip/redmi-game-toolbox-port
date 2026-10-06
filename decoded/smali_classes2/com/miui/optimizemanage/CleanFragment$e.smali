.class Lcom/miui/optimizemanage/CleanFragment$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/optimizemanage/CleanFragment;->P0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/optimizemanage/CleanFragment;


# direct methods
.method constructor <init>(Lcom/miui/optimizemanage/CleanFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/optimizemanage/CleanFragment$e;->a:Lcom/miui/optimizemanage/CleanFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/miui/optimizemanage/CleanFragment$e;->a:Lcom/miui/optimizemanage/CleanFragment;

    invoke-static {p1}, Lcom/miui/optimizemanage/CleanFragment;->p0(Lcom/miui/optimizemanage/CleanFragment;)Lcom/miui/optimizemanage/view/OptimizeManageAnimView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/common/ui/a;->d()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

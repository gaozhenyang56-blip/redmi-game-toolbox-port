.class Lcom/miui/optimizemanage/CleanFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/optimizemanage/CleanFragment;->R0()V
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

    iput-object p1, p0, Lcom/miui/optimizemanage/CleanFragment$b;->a:Lcom/miui/optimizemanage/CleanFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lcom/miui/optimizemanage/CleanFragment$b;->a:Lcom/miui/optimizemanage/CleanFragment;

    sget-object v0, Ljb/j;->a:Ljb/j;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/miui/optimizemanage/CleanFragment;->u0(Lcom/miui/optimizemanage/CleanFragment;Ljb/j;I)V

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

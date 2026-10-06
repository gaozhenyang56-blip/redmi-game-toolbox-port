.class Lcom/miui/securityscan/OptimizeAndResultActivity$n;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/securityscan/OptimizeAndResultActivity;->A0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/securityscan/OptimizeAndResultActivity;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/OptimizeAndResultActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/OptimizeAndResultActivity$n;->a:Lcom/miui/securityscan/OptimizeAndResultActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/miui/securityscan/OptimizeAndResultActivity$n;->a:Lcom/miui/securityscan/OptimizeAndResultActivity;

    invoke-static {p1}, Lcom/miui/securityscan/OptimizeAndResultActivity;->x0(Lcom/miui/securityscan/OptimizeAndResultActivity;)Lcom/miui/common/customview/ActionBarContainer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/common/customview/ActionBarContainer;->setIsShowSecondTitle(Z)V

    return-void
.end method

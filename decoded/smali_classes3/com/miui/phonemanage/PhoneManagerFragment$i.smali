.class Lcom/miui/phonemanage/PhoneManagerFragment$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/phonemanage/PhoneManagerFragment;->R0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/phonemanage/PhoneManagerFragment;


# direct methods
.method constructor <init>(Lcom/miui/phonemanage/PhoneManagerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/phonemanage/PhoneManagerFragment$i;->a:Lcom/miui/phonemanage/PhoneManagerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/phonemanage/PhoneManagerFragment$i;->a:Lcom/miui/phonemanage/PhoneManagerFragment;

    invoke-static {p1}, Lcom/miui/phonemanage/PhoneManagerFragment;->E0(Lcom/miui/phonemanage/PhoneManagerFragment;)Lcom/miui/phonemanage/view/PopularActionFindView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/phonemanage/PhoneManagerFragment$i;->a:Lcom/miui/phonemanage/PhoneManagerFragment;

    invoke-static {p1}, Lcom/miui/phonemanage/PhoneManagerFragment;->E0(Lcom/miui/phonemanage/PhoneManagerFragment;)Lcom/miui/phonemanage/view/PopularActionFindView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/phonemanage/view/PopularActionFindView;->e()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/phonemanage/PhoneManagerFragment$i;->a:Lcom/miui/phonemanage/PhoneManagerFragment;

    invoke-static {p1}, Lcom/miui/phonemanage/PhoneManagerFragment;->E0(Lcom/miui/phonemanage/PhoneManagerFragment;)Lcom/miui/phonemanage/view/PopularActionFindView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/phonemanage/PhoneManagerFragment$i;->a:Lcom/miui/phonemanage/PhoneManagerFragment;

    invoke-static {p1}, Lcom/miui/phonemanage/PhoneManagerFragment;->E0(Lcom/miui/phonemanage/PhoneManagerFragment;)Lcom/miui/phonemanage/view/PopularActionFindView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/phonemanage/view/PopularActionFindView;->e()V

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

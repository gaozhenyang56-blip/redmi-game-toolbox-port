.class Lcom/miui/phonemanage/PhoneManagerFragment$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/phonemanage/PhoneManagerFragment;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/miui/phonemanage/PhoneManagerFragment;


# direct methods
.method constructor <init>(Lcom/miui/phonemanage/PhoneManagerFragment;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/phonemanage/PhoneManagerFragment$c;->b:Lcom/miui/phonemanage/PhoneManagerFragment;

    iput p2, p0, Lcom/miui/phonemanage/PhoneManagerFragment$c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    iget-object p1, p0, Lcom/miui/phonemanage/PhoneManagerFragment$c;->b:Lcom/miui/phonemanage/PhoneManagerFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment$c;->b:Lcom/miui/phonemanage/PhoneManagerFragment;

    invoke-static {v0, p1}, Lcom/miui/phonemanage/PhoneManagerFragment;->H0(Lcom/miui/phonemanage/PhoneManagerFragment;Landroid/app/Activity;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment$c;->b:Lcom/miui/phonemanage/PhoneManagerFragment;

    invoke-static {v0}, Lcom/miui/phonemanage/PhoneManagerFragment;->O0(Lcom/miui/phonemanage/PhoneManagerFragment;)Lcom/miui/common/customview/MainSpringBackLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/common/customview/MainSpringBackLayout;->Y()Z

    iget-object v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment$c;->b:Lcom/miui/phonemanage/PhoneManagerFragment;

    invoke-static {v0}, Lcom/miui/phonemanage/PhoneManagerFragment;->O0(Lcom/miui/phonemanage/PhoneManagerFragment;)Lcom/miui/common/customview/MainSpringBackLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/common/customview/MainSpringBackLayout;->Z()Z

    iget-object v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment$c;->b:Lcom/miui/phonemanage/PhoneManagerFragment;

    invoke-static {v0}, Lcom/miui/phonemanage/PhoneManagerFragment;->O0(Lcom/miui/phonemanage/PhoneManagerFragment;)Lcom/miui/common/customview/MainSpringBackLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/common/customview/MainSpringBackLayout;->a0()Z

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v2, v4, :cond_8

    const/4 v5, 0x2

    if-eq v2, v5, :cond_1

    goto/16 :goto_2

    :cond_1
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment$c;->b:Lcom/miui/phonemanage/PhoneManagerFragment;

    invoke-static {v0}, Lcom/miui/phonemanage/PhoneManagerFragment;->O0(Lcom/miui/phonemanage/PhoneManagerFragment;)Lcom/miui/common/customview/MainSpringBackLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/miui/common/customview/MainSpringBackLayout;->setCanSetFirstDrag(Z)V

    iget-object v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment$c;->b:Lcom/miui/phonemanage/PhoneManagerFragment;

    invoke-static {v0}, Lcom/miui/phonemanage/PhoneManagerFragment;->o0(Lcom/miui/phonemanage/PhoneManagerFragment;)F

    move-result v0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment$c;->b:Lcom/miui/phonemanage/PhoneManagerFragment;

    invoke-static {v0}, Lcom/miui/phonemanage/PhoneManagerFragment;->l0(Lcom/miui/phonemanage/PhoneManagerFragment;)Lcom/miui/common/customview/FirstTouchRecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/common/customview/FirstTouchRecyclerView;->getFirstY()F

    move-result v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment$c;->b:Lcom/miui/phonemanage/PhoneManagerFragment;

    invoke-static {v0}, Lcom/miui/phonemanage/PhoneManagerFragment;->o0(Lcom/miui/phonemanage/PhoneManagerFragment;)F

    move-result v2

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment$c;->b:Lcom/miui/phonemanage/PhoneManagerFragment;

    invoke-static {v0}, Lcom/miui/phonemanage/PhoneManagerFragment;->o0(Lcom/miui/phonemanage/PhoneManagerFragment;)F

    move-result v0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment$c;->b:Lcom/miui/phonemanage/PhoneManagerFragment;

    invoke-static {v0}, Lcom/miui/phonemanage/PhoneManagerFragment;->l0(Lcom/miui/phonemanage/PhoneManagerFragment;)Lcom/miui/common/customview/FirstTouchRecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/common/customview/FirstTouchRecyclerView;->getFirstY()F

    move-result v2

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment$c;->b:Lcom/miui/phonemanage/PhoneManagerFragment;

    invoke-static {v0}, Lcom/miui/phonemanage/PhoneManagerFragment;->o0(Lcom/miui/phonemanage/PhoneManagerFragment;)F

    move-result v2

    :goto_0
    invoke-static {v0, v2}, Lcom/miui/phonemanage/PhoneManagerFragment;->n0(Lcom/miui/phonemanage/PhoneManagerFragment;F)F

    iget-object v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment$c;->b:Lcom/miui/phonemanage/PhoneManagerFragment;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-static {v0, p2}, Lcom/miui/phonemanage/PhoneManagerFragment;->p0(Lcom/miui/phonemanage/PhoneManagerFragment;F)F

    iget-object p2, p0, Lcom/miui/phonemanage/PhoneManagerFragment$c;->b:Lcom/miui/phonemanage/PhoneManagerFragment;

    invoke-static {p2}, Lcom/miui/phonemanage/PhoneManagerFragment;->O0(Lcom/miui/phonemanage/PhoneManagerFragment;)Lcom/miui/common/customview/MainSpringBackLayout;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/common/customview/MainSpringBackLayout;->getSpringY()I

    move-result p2

    iget v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment$c;->a:I

    neg-int v0, v0

    if-ge p2, v0, :cond_7

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/miui/phonemanage/PhoneManagerFragment$c;->b:Lcom/miui/phonemanage/PhoneManagerFragment;

    invoke-static {p1}, Lcom/miui/phonemanage/PhoneManagerFragment;->q0(Lcom/miui/phonemanage/PhoneManagerFragment;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/miui/phonemanage/PhoneManagerFragment$c;->b:Lcom/miui/phonemanage/PhoneManagerFragment;

    invoke-static {p1, v4}, Lcom/miui/phonemanage/PhoneManagerFragment;->r0(Lcom/miui/phonemanage/PhoneManagerFragment;Z)Z

    goto :goto_2

    :cond_6
    :goto_1
    return v1

    :cond_7
    iget-object p1, p0, Lcom/miui/phonemanage/PhoneManagerFragment$c;->b:Lcom/miui/phonemanage/PhoneManagerFragment;

    invoke-static {p1, v1}, Lcom/miui/phonemanage/PhoneManagerFragment;->r0(Lcom/miui/phonemanage/PhoneManagerFragment;Z)Z

    goto :goto_2

    :cond_8
    iget-object p1, p0, Lcom/miui/phonemanage/PhoneManagerFragment$c;->b:Lcom/miui/phonemanage/PhoneManagerFragment;

    invoke-static {p1, v3}, Lcom/miui/phonemanage/PhoneManagerFragment;->n0(Lcom/miui/phonemanage/PhoneManagerFragment;F)F

    iget-object p1, p0, Lcom/miui/phonemanage/PhoneManagerFragment$c;->b:Lcom/miui/phonemanage/PhoneManagerFragment;

    invoke-static {p1, v3}, Lcom/miui/phonemanage/PhoneManagerFragment;->p0(Lcom/miui/phonemanage/PhoneManagerFragment;F)F

    iget-object p1, p0, Lcom/miui/phonemanage/PhoneManagerFragment$c;->b:Lcom/miui/phonemanage/PhoneManagerFragment;

    invoke-static {p1}, Lcom/miui/phonemanage/PhoneManagerFragment;->O0(Lcom/miui/phonemanage/PhoneManagerFragment;)Lcom/miui/common/customview/MainSpringBackLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/miui/common/customview/MainSpringBackLayout;->setCanSetFirstDrag(Z)V

    iget-object p1, p0, Lcom/miui/phonemanage/PhoneManagerFragment$c;->b:Lcom/miui/phonemanage/PhoneManagerFragment;

    invoke-static {p1}, Lcom/miui/phonemanage/PhoneManagerFragment;->O0(Lcom/miui/phonemanage/PhoneManagerFragment;)Lcom/miui/common/customview/MainSpringBackLayout;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/miui/common/customview/MainSpringBackLayout;->setFirstDragDown(Z)V

    :goto_2
    return v1
.end method

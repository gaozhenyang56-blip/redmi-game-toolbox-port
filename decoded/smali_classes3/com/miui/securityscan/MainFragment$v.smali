.class Lcom/miui/securityscan/MainFragment$v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/securityscan/MainFragment;->s1(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/securityscan/MainFragment;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/MainFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/MainFragment$v;->a:Lcom/miui/securityscan/MainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    iget-object p1, p0, Lcom/miui/securityscan/MainFragment$v;->a:Lcom/miui/securityscan/MainFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/securityscan/MainFragment$v;->a:Lcom/miui/securityscan/MainFragment;

    invoke-static {v0, p1}, Lcom/miui/securityscan/MainFragment;->q0(Lcom/miui/securityscan/MainFragment;Landroid/app/Activity;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object p1, p0, Lcom/miui/securityscan/MainFragment$v;->a:Lcom/miui/securityscan/MainFragment;

    invoke-static {p1}, Lcom/miui/securityscan/MainFragment;->w0(Lcom/miui/securityscan/MainFragment;)Lcom/miui/common/customview/MainSpringBackLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/common/customview/MainSpringBackLayout;->a0()Z

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_5

    const/4 v4, 0x2

    if-eq v1, v4, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object v1, p0, Lcom/miui/securityscan/MainFragment$v;->a:Lcom/miui/securityscan/MainFragment;

    invoke-static {v1, v3}, Lcom/miui/securityscan/MainFragment;->x0(Lcom/miui/securityscan/MainFragment;Z)Z

    iget-object v1, p0, Lcom/miui/securityscan/MainFragment$v;->a:Lcom/miui/securityscan/MainFragment;

    invoke-static {v1, v3}, Lcom/miui/securityscan/MainFragment;->y0(Lcom/miui/securityscan/MainFragment;Z)Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/securityscan/MainFragment$v;->a:Lcom/miui/securityscan/MainFragment;

    invoke-static {p1}, Lcom/miui/securityscan/MainFragment;->w0(Lcom/miui/securityscan/MainFragment;)Lcom/miui/common/customview/MainSpringBackLayout;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/miui/common/customview/MainSpringBackLayout;->setCanSetFirstDrag(Z)V

    iget-object p1, p0, Lcom/miui/securityscan/MainFragment$v;->a:Lcom/miui/securityscan/MainFragment;

    invoke-static {p1}, Lcom/miui/securityscan/MainFragment;->z0(Lcom/miui/securityscan/MainFragment;)F

    move-result p1

    cmpl-float p1, p1, v2

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/miui/securityscan/MainFragment$v;->a:Lcom/miui/securityscan/MainFragment;

    invoke-static {p1}, Lcom/miui/securityscan/MainFragment;->p0(Lcom/miui/securityscan/MainFragment;)Lcom/miui/common/customview/HpAutoPasteRecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/common/customview/HpAutoPasteRecyclerView;->getFirstY()F

    move-result v1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/miui/securityscan/MainFragment$v;->a:Lcom/miui/securityscan/MainFragment;

    invoke-static {p1}, Lcom/miui/securityscan/MainFragment;->z0(Lcom/miui/securityscan/MainFragment;)F

    move-result v1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/miui/securityscan/MainFragment$v;->a:Lcom/miui/securityscan/MainFragment;

    invoke-static {p1}, Lcom/miui/securityscan/MainFragment;->z0(Lcom/miui/securityscan/MainFragment;)F

    move-result p1

    cmpl-float p1, p1, v2

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/miui/securityscan/MainFragment$v;->a:Lcom/miui/securityscan/MainFragment;

    invoke-static {p1}, Lcom/miui/securityscan/MainFragment;->p0(Lcom/miui/securityscan/MainFragment;)Lcom/miui/common/customview/HpAutoPasteRecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/common/customview/HpAutoPasteRecyclerView;->getFirstY()F

    move-result v1

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/miui/securityscan/MainFragment$v;->a:Lcom/miui/securityscan/MainFragment;

    invoke-static {p1}, Lcom/miui/securityscan/MainFragment;->z0(Lcom/miui/securityscan/MainFragment;)F

    move-result v1

    :goto_0
    invoke-static {p1, v1}, Lcom/miui/securityscan/MainFragment;->B0(Lcom/miui/securityscan/MainFragment;F)F

    iget-object p1, p0, Lcom/miui/securityscan/MainFragment$v;->a:Lcom/miui/securityscan/MainFragment;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-static {p1, p2}, Lcom/miui/securityscan/MainFragment;->A0(Lcom/miui/securityscan/MainFragment;F)F

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/miui/securityscan/MainFragment$v;->a:Lcom/miui/securityscan/MainFragment;

    invoke-static {p1, v0}, Lcom/miui/securityscan/MainFragment;->x0(Lcom/miui/securityscan/MainFragment;Z)Z

    iget-object p1, p0, Lcom/miui/securityscan/MainFragment$v;->a:Lcom/miui/securityscan/MainFragment;

    invoke-static {p1, v3}, Lcom/miui/securityscan/MainFragment;->C0(Lcom/miui/securityscan/MainFragment;Z)Z

    iget-object p1, p0, Lcom/miui/securityscan/MainFragment$v;->a:Lcom/miui/securityscan/MainFragment;

    invoke-static {p1, v2}, Lcom/miui/securityscan/MainFragment;->B0(Lcom/miui/securityscan/MainFragment;F)F

    iget-object p1, p0, Lcom/miui/securityscan/MainFragment$v;->a:Lcom/miui/securityscan/MainFragment;

    invoke-static {p1, v2}, Lcom/miui/securityscan/MainFragment;->A0(Lcom/miui/securityscan/MainFragment;F)F

    iget-object p1, p0, Lcom/miui/securityscan/MainFragment$v;->a:Lcom/miui/securityscan/MainFragment;

    invoke-static {p1}, Lcom/miui/securityscan/MainFragment;->w0(Lcom/miui/securityscan/MainFragment;)Lcom/miui/common/customview/MainSpringBackLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/miui/common/customview/MainSpringBackLayout;->setCanSetFirstDrag(Z)V

    iget-object p1, p0, Lcom/miui/securityscan/MainFragment$v;->a:Lcom/miui/securityscan/MainFragment;

    invoke-static {p1}, Lcom/miui/securityscan/MainFragment;->w0(Lcom/miui/securityscan/MainFragment;)Lcom/miui/common/customview/MainSpringBackLayout;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/miui/common/customview/MainSpringBackLayout;->setFirstDragDown(Z)V

    :goto_1
    return v0
.end method

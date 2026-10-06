.class Lcom/miui/phonemanage/PhoneManagerFragment$b;
.super Landroidx/recyclerview/widget/RecyclerView$s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/phonemanage/PhoneManagerFragment;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final a:Landroidx/recyclerview/widget/LinearLayoutManager;

.field final synthetic b:Lcom/miui/phonemanage/PhoneManagerFragment;


# direct methods
.method constructor <init>(Lcom/miui/phonemanage/PhoneManagerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/phonemanage/PhoneManagerFragment$b;->b:Lcom/miui/phonemanage/PhoneManagerFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$s;-><init>()V

    invoke-static {p1}, Lcom/miui/phonemanage/PhoneManagerFragment;->l0(Lcom/miui/phonemanage/PhoneManagerFragment;)Lcom/miui/common/customview/FirstTouchRecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$n;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iput-object p1, p0, Lcom/miui/phonemanage/PhoneManagerFragment$b;->a:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$s;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    iget-object p1, p0, Lcom/miui/phonemanage/PhoneManagerFragment$b;->a:Landroidx/recyclerview/widget/LinearLayoutManager;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    iget-object p2, p0, Lcom/miui/phonemanage/PhoneManagerFragment$b;->b:Lcom/miui/phonemanage/PhoneManagerFragment;

    invoke-static {p2}, Lcom/miui/phonemanage/PhoneManagerFragment;->F0(Lcom/miui/phonemanage/PhoneManagerFragment;)I

    move-result p2

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-ltz p2, :cond_2

    iget-object p2, p0, Lcom/miui/phonemanage/PhoneManagerFragment$b;->b:Lcom/miui/phonemanage/PhoneManagerFragment;

    invoke-static {p2}, Lcom/miui/phonemanage/PhoneManagerFragment;->G0(Lcom/miui/phonemanage/PhoneManagerFragment;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/miui/phonemanage/PhoneManagerFragment$b;->b:Lcom/miui/phonemanage/PhoneManagerFragment;

    invoke-static {p2}, Lcom/miui/phonemanage/PhoneManagerFragment;->F0(Lcom/miui/phonemanage/PhoneManagerFragment;)I

    move-result v1

    if-gt p1, v1, :cond_1

    move v1, p3

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    invoke-virtual {p2, v1, v0}, Lcom/miui/phonemanage/PhoneManagerFragment;->g1(ZZ)V

    :cond_2
    iget-object p2, p0, Lcom/miui/phonemanage/PhoneManagerFragment$b;->b:Lcom/miui/phonemanage/PhoneManagerFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    iget-object v1, p0, Lcom/miui/phonemanage/PhoneManagerFragment$b;->b:Lcom/miui/phonemanage/PhoneManagerFragment;

    invoke-static {v1, p2}, Lcom/miui/phonemanage/PhoneManagerFragment;->H0(Lcom/miui/phonemanage/PhoneManagerFragment;Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_3

    check-cast p2, Lcom/miui/securityscan/MainActivity;

    invoke-virtual {p2}, Lcom/miui/securityscan/MainActivity;->n0()I

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/miui/phonemanage/PhoneManagerFragment$b;->b:Lcom/miui/phonemanage/PhoneManagerFragment;

    invoke-static {p2}, Lcom/miui/phonemanage/PhoneManagerFragment;->m0(Lcom/miui/phonemanage/PhoneManagerFragment;)Lcom/miui/common/card/CardViewRvAdapter;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/miui/common/card/CardViewRvAdapter;->setDefaultStatShow(Z)V

    :cond_3
    iget-object p2, p0, Lcom/miui/phonemanage/PhoneManagerFragment$b;->b:Lcom/miui/phonemanage/PhoneManagerFragment;

    invoke-static {p2}, Lcom/miui/phonemanage/PhoneManagerFragment;->I0(Lcom/miui/phonemanage/PhoneManagerFragment;)I

    move-result p2

    if-le p1, p2, :cond_4

    iget-object p2, p0, Lcom/miui/phonemanage/PhoneManagerFragment$b;->b:Lcom/miui/phonemanage/PhoneManagerFragment;

    invoke-static {p2}, Lcom/miui/phonemanage/PhoneManagerFragment;->K0(Lcom/miui/phonemanage/PhoneManagerFragment;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-static {}, Lqf/c;->p0()V

    iget-object p2, p0, Lcom/miui/phonemanage/PhoneManagerFragment$b;->b:Lcom/miui/phonemanage/PhoneManagerFragment;

    invoke-static {p2, v0}, Lcom/miui/phonemanage/PhoneManagerFragment;->L0(Lcom/miui/phonemanage/PhoneManagerFragment;Z)Z

    :cond_4
    iget-object p2, p0, Lcom/miui/phonemanage/PhoneManagerFragment$b;->b:Lcom/miui/phonemanage/PhoneManagerFragment;

    invoke-static {p2, p1}, Lcom/miui/phonemanage/PhoneManagerFragment;->J0(Lcom/miui/phonemanage/PhoneManagerFragment;I)I

    iget-object p1, p0, Lcom/miui/phonemanage/PhoneManagerFragment$b;->b:Lcom/miui/phonemanage/PhoneManagerFragment;

    invoke-static {p1}, Lcom/miui/phonemanage/PhoneManagerFragment;->M0(Lcom/miui/phonemanage/PhoneManagerFragment;)I

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/miui/phonemanage/PhoneManagerFragment$b;->b:Lcom/miui/phonemanage/PhoneManagerFragment;

    invoke-static {p1}, Lcom/miui/phonemanage/PhoneManagerFragment;->l0(Lcom/miui/phonemanage/PhoneManagerFragment;)Lcom/miui/common/customview/FirstTouchRecyclerView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    invoke-static {p1, p2}, Lcom/miui/phonemanage/PhoneManagerFragment;->N0(Lcom/miui/phonemanage/PhoneManagerFragment;I)I

    :cond_5
    return-void
.end method

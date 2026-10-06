.class Lcom/miui/phonemanage/PhoneManagerFragment$g;
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
.field final synthetic a:Lcom/miui/phonemanage/PhoneManagerFragment;


# direct methods
.method constructor <init>(Lcom/miui/phonemanage/PhoneManagerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/phonemanage/PhoneManagerFragment$g;->a:Lcom/miui/phonemanage/PhoneManagerFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$s;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-nez p2, :cond_5

    iget-object p1, p0, Lcom/miui/phonemanage/PhoneManagerFragment$g;->a:Lcom/miui/phonemanage/PhoneManagerFragment;

    invoke-static {p1}, Lcom/miui/phonemanage/PhoneManagerFragment;->u0(Lcom/miui/phonemanage/PhoneManagerFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/phonemanage/PhoneManagerFragment$g;->a:Lcom/miui/phonemanage/PhoneManagerFragment;

    invoke-static {p1}, Lcom/miui/phonemanage/PhoneManagerFragment;->v0(Lcom/miui/phonemanage/PhoneManagerFragment;)V

    :cond_0
    iget-object p1, p0, Lcom/miui/phonemanage/PhoneManagerFragment$g;->a:Lcom/miui/phonemanage/PhoneManagerFragment;

    invoke-static {p1}, Lcom/miui/phonemanage/PhoneManagerFragment;->w0(Lcom/miui/phonemanage/PhoneManagerFragment;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    iget-object p2, p0, Lcom/miui/phonemanage/PhoneManagerFragment$g;->a:Lcom/miui/phonemanage/PhoneManagerFragment;

    invoke-static {p2}, Lcom/miui/phonemanage/PhoneManagerFragment;->w0(Lcom/miui/phonemanage/PhoneManagerFragment;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p2

    iget-object v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment$g;->a:Lcom/miui/phonemanage/PhoneManagerFragment;

    invoke-static {v0}, Lcom/miui/phonemanage/PhoneManagerFragment;->x0(Lcom/miui/phonemanage/PhoneManagerFragment;)I

    move-result v0

    if-gt p1, v0, :cond_1

    iget-object v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment$g;->a:Lcom/miui/phonemanage/PhoneManagerFragment;

    invoke-static {v0}, Lcom/miui/phonemanage/PhoneManagerFragment;->x0(Lcom/miui/phonemanage/PhoneManagerFragment;)I

    move-result v0

    if-le p2, v0, :cond_1

    iget-object v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment$g;->a:Lcom/miui/phonemanage/PhoneManagerFragment;

    invoke-static {v0}, Lcom/miui/phonemanage/PhoneManagerFragment;->x0(Lcom/miui/phonemanage/PhoneManagerFragment;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1, p2}, Lcom/miui/phonemanage/PhoneManagerFragment;->A0(Lcom/miui/phonemanage/PhoneManagerFragment;II)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment$g;->a:Lcom/miui/phonemanage/PhoneManagerFragment;

    invoke-static {v0}, Lcom/miui/phonemanage/PhoneManagerFragment;->x0(Lcom/miui/phonemanage/PhoneManagerFragment;)I

    move-result v0

    if-gt p1, v0, :cond_3

    iget-object v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment$g;->a:Lcom/miui/phonemanage/PhoneManagerFragment;

    invoke-static {v0}, Lcom/miui/phonemanage/PhoneManagerFragment;->C0(Lcom/miui/phonemanage/PhoneManagerFragment;)I

    move-result v0

    if-ge p2, v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment$g;->a:Lcom/miui/phonemanage/PhoneManagerFragment;

    invoke-static {v0}, Lcom/miui/phonemanage/PhoneManagerFragment;->C0(Lcom/miui/phonemanage/PhoneManagerFragment;)I

    move-result v0

    if-ge p1, v0, :cond_4

    iget-object v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment$g;->a:Lcom/miui/phonemanage/PhoneManagerFragment;

    invoke-static {v0}, Lcom/miui/phonemanage/PhoneManagerFragment;->C0(Lcom/miui/phonemanage/PhoneManagerFragment;)I

    move-result v0

    if-lt p2, v0, :cond_4

    iget-object v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment$g;->a:Lcom/miui/phonemanage/PhoneManagerFragment;

    invoke-static {v0}, Lcom/miui/phonemanage/PhoneManagerFragment;->C0(Lcom/miui/phonemanage/PhoneManagerFragment;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, p1, v1}, Lcom/miui/phonemanage/PhoneManagerFragment;->A0(Lcom/miui/phonemanage/PhoneManagerFragment;II)V

    goto :goto_1

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment$g;->a:Lcom/miui/phonemanage/PhoneManagerFragment;

    invoke-static {v0, p1, p2}, Lcom/miui/phonemanage/PhoneManagerFragment;->A0(Lcom/miui/phonemanage/PhoneManagerFragment;II)V

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/miui/phonemanage/PhoneManagerFragment$g;->a:Lcom/miui/phonemanage/PhoneManagerFragment;

    invoke-static {v0, p1}, Lcom/miui/phonemanage/PhoneManagerFragment;->D0(Lcom/miui/phonemanage/PhoneManagerFragment;I)I

    iget-object p1, p0, Lcom/miui/phonemanage/PhoneManagerFragment$g;->a:Lcom/miui/phonemanage/PhoneManagerFragment;

    invoke-static {p1, p2}, Lcom/miui/phonemanage/PhoneManagerFragment;->y0(Lcom/miui/phonemanage/PhoneManagerFragment;I)I

    :cond_5
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

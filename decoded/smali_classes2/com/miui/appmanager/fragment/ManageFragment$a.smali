.class Lcom/miui/appmanager/fragment/ManageFragment$a;
.super Landroidx/recyclerview/widget/RecyclerView$s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/appmanager/fragment/ManageFragment;->i1(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/appmanager/fragment/ManageFragment;


# direct methods
.method constructor <init>(Lcom/miui/appmanager/fragment/ManageFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/appmanager/fragment/ManageFragment$a;->a:Lcom/miui/appmanager/fragment/ManageFragment;

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

    const/4 p1, 0x2

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    if-eq p2, v0, :cond_0

    if-eq p2, p1, :cond_0

    goto :goto_2

    :cond_0
    iget-object p1, p0, Lcom/miui/appmanager/fragment/ManageFragment$a;->a:Lcom/miui/appmanager/fragment/ManageFragment;

    invoke-static {p1, v0}, Lcom/miui/appmanager/fragment/ManageFragment;->s0(Lcom/miui/appmanager/fragment/ManageFragment;Z)Z

    iget-object p1, p0, Lcom/miui/appmanager/fragment/ManageFragment$a;->a:Lcom/miui/appmanager/fragment/ManageFragment;

    invoke-static {p1}, Lcom/miui/appmanager/fragment/ManageFragment;->S0(Lcom/miui/appmanager/fragment/ManageFragment;)V

    goto :goto_2

    :cond_1
    iget-object p2, p0, Lcom/miui/appmanager/fragment/ManageFragment$a;->a:Lcom/miui/appmanager/fragment/ManageFragment;

    const/4 v1, 0x0

    invoke-static {p2, v1}, Lcom/miui/appmanager/fragment/ManageFragment;->s0(Lcom/miui/appmanager/fragment/ManageFragment;Z)Z

    iget-object p2, p0, Lcom/miui/appmanager/fragment/ManageFragment$a;->a:Lcom/miui/appmanager/fragment/ManageFragment;

    invoke-static {p2}, Lcom/miui/appmanager/fragment/ManageFragment;->T0(Lcom/miui/appmanager/fragment/ManageFragment;)V

    iget-object p2, p0, Lcom/miui/appmanager/fragment/ManageFragment$a;->a:Lcom/miui/appmanager/fragment/ManageFragment;

    invoke-static {p2}, Lcom/miui/appmanager/fragment/ManageFragment;->O0(Lcom/miui/appmanager/fragment/ManageFragment;)I

    move-result p2

    const/4 v1, -0x1

    if-eq p2, v1, :cond_4

    iget-object p2, p0, Lcom/miui/appmanager/fragment/ManageFragment$a;->a:Lcom/miui/appmanager/fragment/ManageFragment;

    invoke-static {p2}, Lcom/miui/appmanager/fragment/ManageFragment;->O0(Lcom/miui/appmanager/fragment/ManageFragment;)I

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/miui/appmanager/fragment/ManageFragment$a;->a:Lcom/miui/appmanager/fragment/ManageFragment;

    invoke-static {p2}, Lcom/miui/appmanager/fragment/ManageFragment;->U0(Lcom/miui/appmanager/fragment/ManageFragment;)I

    move-result p2

    if-ne p2, p1, :cond_2

    iget-object p1, p0, Lcom/miui/appmanager/fragment/ManageFragment$a;->a:Lcom/miui/appmanager/fragment/ManageFragment;

    invoke-static {p1}, Lcom/miui/appmanager/fragment/ManageFragment;->W0(Lcom/miui/appmanager/fragment/ManageFragment;)Z

    move-result p1

    if-nez p1, :cond_2

    :goto_0
    iget-object p1, p0, Lcom/miui/appmanager/fragment/ManageFragment$a;->a:Lcom/miui/appmanager/fragment/ManageFragment;

    invoke-static {p1}, Lcom/miui/appmanager/fragment/ManageFragment;->d0(Lcom/miui/appmanager/fragment/ManageFragment;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/miui/appmanager/fragment/ManageFragment$a;->a:Lcom/miui/appmanager/fragment/ManageFragment;

    invoke-static {p1}, Lcom/miui/appmanager/fragment/ManageFragment;->O0(Lcom/miui/appmanager/fragment/ManageFragment;)I

    move-result p1

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/miui/appmanager/fragment/ManageFragment$a;->a:Lcom/miui/appmanager/fragment/ManageFragment;

    invoke-static {p1}, Lcom/miui/appmanager/fragment/ManageFragment;->U0(Lcom/miui/appmanager/fragment/ManageFragment;)I

    move-result p1

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/miui/appmanager/fragment/ManageFragment$a;->a:Lcom/miui/appmanager/fragment/ManageFragment;

    invoke-static {p1}, Lcom/miui/appmanager/fragment/ManageFragment;->e0(Lcom/miui/appmanager/fragment/ManageFragment;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/miui/appmanager/fragment/ManageFragment$a;->a:Lcom/miui/appmanager/fragment/ManageFragment;

    invoke-static {p1}, Lcom/miui/appmanager/fragment/ManageFragment;->D0(Lcom/miui/appmanager/fragment/ManageFragment;)Le3/a;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    :goto_1
    iget-object p1, p0, Lcom/miui/appmanager/fragment/ManageFragment$a;->a:Lcom/miui/appmanager/fragment/ManageFragment;

    invoke-static {p1, v1}, Lcom/miui/appmanager/fragment/ManageFragment;->Q0(Lcom/miui/appmanager/fragment/ManageFragment;I)I

    :cond_4
    :goto_2
    return-void
.end method

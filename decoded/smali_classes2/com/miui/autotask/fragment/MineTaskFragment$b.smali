.class Lcom/miui/autotask/fragment/MineTaskFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr3/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/autotask/fragment/MineTaskFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/autotask/fragment/MineTaskFragment;


# direct methods
.method constructor <init>(Lcom/miui/autotask/fragment/MineTaskFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/autotask/fragment/MineTaskFragment$b;->a:Lcom/miui/autotask/fragment/MineTaskFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;I)V
    .locals 2

    iget-object p1, p0, Lcom/miui/autotask/fragment/MineTaskFragment$b;->a:Lcom/miui/autotask/fragment/MineTaskFragment;

    invoke-static {p1}, Lcom/miui/autotask/fragment/MineTaskFragment;->i0(Lcom/miui/autotask/fragment/MineTaskFragment;)Lr3/f;

    move-result-object p1

    invoke-virtual {p1}, Lr3/f;->m()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/autotask/fragment/MineTaskFragment$b;->a:Lcom/miui/autotask/fragment/MineTaskFragment;

    invoke-static {p1}, Lcom/miui/autotask/fragment/MineTaskFragment;->f0(Lcom/miui/autotask/fragment/MineTaskFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/autotask/bean/r;

    invoke-virtual {p1}, Lcom/miui/autotask/bean/r;->s()Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    iget-object v1, p0, Lcom/miui/autotask/fragment/MineTaskFragment$b;->a:Lcom/miui/autotask/fragment/MineTaskFragment;

    if-eqz p1, :cond_0

    invoke-static {v1, v0}, Lcom/miui/autotask/fragment/MineTaskFragment;->l0(Lcom/miui/autotask/fragment/MineTaskFragment;I)I

    goto :goto_0

    :cond_0
    invoke-static {v1, v0}, Lcom/miui/autotask/fragment/MineTaskFragment;->m0(Lcom/miui/autotask/fragment/MineTaskFragment;I)I

    :goto_0
    iget-object v0, p0, Lcom/miui/autotask/fragment/MineTaskFragment$b;->a:Lcom/miui/autotask/fragment/MineTaskFragment;

    invoke-static {v0}, Lcom/miui/autotask/fragment/MineTaskFragment;->n0(Lcom/miui/autotask/fragment/MineTaskFragment;)V

    iget-object v0, p0, Lcom/miui/autotask/fragment/MineTaskFragment$b;->a:Lcom/miui/autotask/fragment/MineTaskFragment;

    invoke-static {v0}, Lcom/miui/autotask/fragment/MineTaskFragment;->f0(Lcom/miui/autotask/fragment/MineTaskFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/autotask/bean/r;

    invoke-virtual {v0, p1}, Lcom/miui/autotask/bean/r;->E(Z)V

    iget-object p1, p0, Lcom/miui/autotask/fragment/MineTaskFragment$b;->a:Lcom/miui/autotask/fragment/MineTaskFragment;

    invoke-static {p1}, Lcom/miui/autotask/fragment/MineTaskFragment;->o0(Lcom/miui/autotask/fragment/MineTaskFragment;)Lmiuix/recyclerview/widget/RecyclerView;

    move-result-object p1

    new-instance v0, Lcom/miui/autotask/fragment/MineTaskFragment$b$a;

    invoke-direct {v0, p0, p2}, Lcom/miui/autotask/fragment/MineTaskFragment$b$a;-><init>(Lcom/miui/autotask/fragment/MineTaskFragment$b;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/miui/autotask/fragment/MineTaskFragment$b;->a:Lcom/miui/autotask/fragment/MineTaskFragment;

    invoke-static {p1, p2}, Lcom/miui/autotask/fragment/MineTaskFragment;->p0(Lcom/miui/autotask/fragment/MineTaskFragment;I)I

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/autotask/fragment/MineTaskFragment$b;->a:Lcom/miui/autotask/fragment/MineTaskFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/miui/autotask/activity/NewTaskActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/miui/autotask/fragment/MineTaskFragment$b;->a:Lcom/miui/autotask/fragment/MineTaskFragment;

    invoke-static {v0}, Lcom/miui/autotask/fragment/MineTaskFragment;->f0(Lcom/miui/autotask/fragment/MineTaskFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/io/Serializable;

    const-string v0, "taskBean"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/miui/autotask/fragment/MineTaskFragment$b;->a:Lcom/miui/autotask/fragment/MineTaskFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const/16 v0, 0xd3

    invoke-virtual {p2, p1, v0}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_1
    return-void
.end method

.method public b(ZI)V
    .locals 2

    iget-object v0, p0, Lcom/miui/autotask/fragment/MineTaskFragment$b;->a:Lcom/miui/autotask/fragment/MineTaskFragment;

    invoke-static {v0}, Lcom/miui/autotask/fragment/MineTaskFragment;->f0(Lcom/miui/autotask/fragment/MineTaskFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/autotask/bean/r;

    invoke-virtual {v0, p1}, Lcom/miui/autotask/bean/r;->x(Z)V

    invoke-static {}, Lu3/c;->U()Lu3/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lu3/c;->i0(Lcom/miui/autotask/bean/r;)V

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    invoke-virtual {v0}, Lcom/miui/autotask/bean/r;->n()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p1}, Lcom/miui/ai/service/OperationListCollectService;->y(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/miui/autotask/fragment/MineTaskFragment$b;->a:Lcom/miui/autotask/fragment/MineTaskFragment;

    invoke-static {p1}, Lcom/miui/autotask/fragment/MineTaskFragment;->i0(Lcom/miui/autotask/fragment/MineTaskFragment;)Lr3/f;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemChanged(I)V

    return-void
.end method

.method public c(Landroid/view/View;I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/autotask/fragment/MineTaskFragment$b;->a:Lcom/miui/autotask/fragment/MineTaskFragment;

    invoke-static {v0}, Lcom/miui/autotask/fragment/MineTaskFragment;->i0(Lcom/miui/autotask/fragment/MineTaskFragment;)Lr3/f;

    move-result-object v0

    invoke-virtual {v0}, Lr3/f;->m()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/autotask/fragment/MineTaskFragment$b;->a:Lcom/miui/autotask/fragment/MineTaskFragment;

    invoke-static {v0}, Lcom/miui/autotask/fragment/MineTaskFragment;->q0(Lcom/miui/autotask/fragment/MineTaskFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/autotask/fragment/MineTaskFragment$b;->a:Lcom/miui/autotask/fragment/MineTaskFragment;

    invoke-static {v0}, Lcom/miui/autotask/fragment/MineTaskFragment;->s0(Lcom/miui/autotask/fragment/MineTaskFragment;)Landroid/view/ActionMode$Callback;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/autotask/fragment/MineTaskFragment;->r0(Lcom/miui/autotask/fragment/MineTaskFragment;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    iget-object p1, p0, Lcom/miui/autotask/fragment/MineTaskFragment$b;->a:Lcom/miui/autotask/fragment/MineTaskFragment;

    invoke-static {p1}, Lcom/miui/autotask/fragment/MineTaskFragment;->f0(Lcom/miui/autotask/fragment/MineTaskFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/autotask/bean/r;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/miui/autotask/bean/r;->E(Z)V

    iget-object p1, p0, Lcom/miui/autotask/fragment/MineTaskFragment$b;->a:Lcom/miui/autotask/fragment/MineTaskFragment;

    invoke-static {p1, p2}, Lcom/miui/autotask/fragment/MineTaskFragment;->k0(Lcom/miui/autotask/fragment/MineTaskFragment;I)I

    iget-object p1, p0, Lcom/miui/autotask/fragment/MineTaskFragment$b;->a:Lcom/miui/autotask/fragment/MineTaskFragment;

    invoke-static {p1}, Lcom/miui/autotask/fragment/MineTaskFragment;->n0(Lcom/miui/autotask/fragment/MineTaskFragment;)V

    iget-object p1, p0, Lcom/miui/autotask/fragment/MineTaskFragment$b;->a:Lcom/miui/autotask/fragment/MineTaskFragment;

    invoke-static {p1}, Lcom/miui/autotask/fragment/MineTaskFragment;->i0(Lcom/miui/autotask/fragment/MineTaskFragment;)Lr3/f;

    move-result-object p1

    invoke-virtual {p1, p2}, Lr3/f;->r(Z)V

    iget-object p1, p0, Lcom/miui/autotask/fragment/MineTaskFragment$b;->a:Lcom/miui/autotask/fragment/MineTaskFragment;

    invoke-static {p1}, Lcom/miui/autotask/fragment/MineTaskFragment;->i0(Lcom/miui/autotask/fragment/MineTaskFragment;)Lr3/f;

    move-result-object p1

    const/4 p2, 0x0

    iget-object v0, p0, Lcom/miui/autotask/fragment/MineTaskFragment$b;->a:Lcom/miui/autotask/fragment/MineTaskFragment;

    invoke-static {v0}, Lcom/miui/autotask/fragment/MineTaskFragment;->i0(Lcom/miui/autotask/fragment/MineTaskFragment;)Lr3/f;

    move-result-object v0

    invoke-virtual {v0}, Lr3/f;->getItemCount()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemRangeChanged(II)V

    :cond_0
    return-void
.end method

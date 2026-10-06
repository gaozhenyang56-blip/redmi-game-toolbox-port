.class Lcom/miui/autotask/activity/NewDefaultTaskActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr3/o$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/autotask/activity/NewDefaultTaskActivity;->B0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/autotask/activity/NewDefaultTaskActivity;


# direct methods
.method constructor <init>(Lcom/miui/autotask/activity/NewDefaultTaskActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity$b;->a:Lcom/miui/autotask/activity/NewDefaultTaskActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IZ)V
    .locals 2

    iget-object p1, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity$b;->a:Lcom/miui/autotask/activity/NewDefaultTaskActivity;

    invoke-static {p1}, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->h0(Lcom/miui/autotask/activity/NewDefaultTaskActivity;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity$b;->a:Lcom/miui/autotask/activity/NewDefaultTaskActivity;

    invoke-static {p1, p2}, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->i0(Lcom/miui/autotask/activity/NewDefaultTaskActivity;Z)Z

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity$b;->a:Lcom/miui/autotask/activity/NewDefaultTaskActivity;

    invoke-static {p1}, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->p0(Lcom/miui/autotask/activity/NewDefaultTaskActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object p2, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity$b;->a:Lcom/miui/autotask/activity/NewDefaultTaskActivity;

    invoke-static {p2}, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->p0(Lcom/miui/autotask/activity/NewDefaultTaskActivity;)Ljava/util/ArrayList;

    move-result-object p2

    iget-object v0, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity$b;->a:Lcom/miui/autotask/activity/NewDefaultTaskActivity;

    invoke-static {v0}, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->j0(Lcom/miui/autotask/activity/NewDefaultTaskActivity;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p2, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity$b;->a:Lcom/miui/autotask/activity/NewDefaultTaskActivity;

    invoke-static {p2}, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->r0(Lcom/miui/autotask/activity/NewDefaultTaskActivity;)Lr3/o;

    move-result-object p2

    iget-object v0, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity$b;->a:Lcom/miui/autotask/activity/NewDefaultTaskActivity;

    invoke-static {v0}, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->j0(Lcom/miui/autotask/activity/NewDefaultTaskActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemRangeChanged(II)V

    goto :goto_2

    :cond_1
    const/4 p1, 0x0

    iget-object p2, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity$b;->a:Lcom/miui/autotask/activity/NewDefaultTaskActivity;

    invoke-static {p2}, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->p0(Lcom/miui/autotask/activity/NewDefaultTaskActivity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-ltz p2, :cond_3

    iget-object v0, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity$b;->a:Lcom/miui/autotask/activity/NewDefaultTaskActivity;

    invoke-static {v0}, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->p0(Lcom/miui/autotask/activity/NewDefaultTaskActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/autotask/bean/c;

    invoke-virtual {v0}, Lcom/miui/autotask/bean/c;->a()I

    move-result v0

    const/16 v1, 0xe4

    if-ne v0, v1, :cond_2

    add-int/lit8 p1, p2, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity$b;->a:Lcom/miui/autotask/activity/NewDefaultTaskActivity;

    invoke-static {v0}, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->p0(Lcom/miui/autotask/activity/NewDefaultTaskActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_3
    :goto_1
    iget-object p2, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity$b;->a:Lcom/miui/autotask/activity/NewDefaultTaskActivity;

    invoke-static {p2}, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->r0(Lcom/miui/autotask/activity/NewDefaultTaskActivity;)Lr3/o;

    move-result-object p2

    iget-object v0, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity$b;->a:Lcom/miui/autotask/activity/NewDefaultTaskActivity;

    invoke-static {v0}, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->j0(Lcom/miui/autotask/activity/NewDefaultTaskActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemRangeRemoved(II)V

    :goto_2
    return-void
.end method

.method public b(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity$b;->a:Lcom/miui/autotask/activity/NewDefaultTaskActivity;

    invoke-static {v0}, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->p0(Lcom/miui/autotask/activity/NewDefaultTaskActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity$b;->a:Lcom/miui/autotask/activity/NewDefaultTaskActivity;

    invoke-static {p1}, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->q0(Lcom/miui/autotask/activity/NewDefaultTaskActivity;)V

    iget-object p1, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity$b;->a:Lcom/miui/autotask/activity/NewDefaultTaskActivity;

    invoke-static {p1}, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->r0(Lcom/miui/autotask/activity/NewDefaultTaskActivity;)Lr3/o;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    return-void
.end method

.method public c(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity$b;->a:Lcom/miui/autotask/activity/NewDefaultTaskActivity;

    invoke-static {v0, p1}, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->o0(Lcom/miui/autotask/activity/NewDefaultTaskActivity;I)V

    return-void
.end method

.method public d(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity$b;->a:Lcom/miui/autotask/activity/NewDefaultTaskActivity;

    invoke-static {v0, p1}, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->n0(Lcom/miui/autotask/activity/NewDefaultTaskActivity;I)V

    return-void
.end method

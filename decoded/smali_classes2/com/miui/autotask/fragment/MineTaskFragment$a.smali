.class Lcom/miui/autotask/fragment/MineTaskFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvf/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/autotask/fragment/MineTaskFragment;->B0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lvf/b<",
        "Ljava/util/List<",
        "Lcom/miui/autotask/bean/r;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/autotask/fragment/MineTaskFragment;


# direct methods
.method constructor <init>(Lcom/miui/autotask/fragment/MineTaskFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/autotask/fragment/MineTaskFragment$a;->a:Lcom/miui/autotask/fragment/MineTaskFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/autotask/bean/r;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/autotask/fragment/MineTaskFragment$a;->a:Lcom/miui/autotask/fragment/MineTaskFragment;

    invoke-static {v0}, Lcom/miui/autotask/fragment/MineTaskFragment;->f0(Lcom/miui/autotask/fragment/MineTaskFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/autotask/bean/r;

    invoke-virtual {v2}, Lcom/miui/autotask/bean/r;->o()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/miui/autotask/fragment/MineTaskFragment$a;->a:Lcom/miui/autotask/fragment/MineTaskFragment;

    invoke-static {p1}, Lcom/miui/autotask/fragment/MineTaskFragment;->f0(Lcom/miui/autotask/fragment/MineTaskFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/miui/autotask/fragment/MineTaskFragment$a;->a:Lcom/miui/autotask/fragment/MineTaskFragment;

    invoke-static {p1}, Lcom/miui/autotask/fragment/MineTaskFragment;->f0(Lcom/miui/autotask/fragment/MineTaskFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/miui/autotask/fragment/MineTaskFragment$a;->a:Lcom/miui/autotask/fragment/MineTaskFragment;

    invoke-static {p1}, Lcom/miui/autotask/fragment/MineTaskFragment;->g0(Lcom/miui/autotask/fragment/MineTaskFragment;)Lcom/miui/optimizecenter/storage/view/EmptyView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/optimizecenter/storage/view/EmptyView;->setVisibility(I)V

    :goto_2
    iget-object p1, p0, Lcom/miui/autotask/fragment/MineTaskFragment$a;->a:Lcom/miui/autotask/fragment/MineTaskFragment;

    invoke-static {p1}, Lcom/miui/autotask/fragment/MineTaskFragment;->i0(Lcom/miui/autotask/fragment/MineTaskFragment;)Lr3/f;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    return-void
.end method

.method public onFail(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "MineTaskFragment"

    const-string v1, "laod task list fail"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/miui/autotask/fragment/MineTaskFragment$a;->a(Ljava/util/List;)V

    return-void
.end method

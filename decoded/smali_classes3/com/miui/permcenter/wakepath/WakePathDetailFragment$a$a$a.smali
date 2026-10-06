.class final Lcom/miui/permcenter/wakepath/WakePathDetailFragment$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/permcenter/wakepath/WakePathDetailFragment$a$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/f;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/permcenter/wakepath/WakePathDetailFragment;


# direct methods
.method constructor <init>(Lcom/miui/permcenter/wakepath/WakePathDetailFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/wakepath/WakePathDetailFragment$a$a$a;->a:Lcom/miui/permcenter/wakepath/WakePathDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Ltj/d;)Ljava/lang/Object;
    .locals 26
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ltj/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lyc/r;",
            ">;",
            "Ltj/d<",
            "-",
            "Loj/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    move-object/from16 v0, p0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, v0, Lcom/miui/permcenter/wakepath/WakePathDetailFragment$a$a$a;->a:Lcom/miui/permcenter/wakepath/WakePathDetailFragment;

    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lyc/r;

    invoke-virtual {v5}, Lyc/r;->d()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1}, Lcom/miui/permcenter/wakepath/WakePathDetailFragment;->h0(Lcom/miui/permcenter/wakepath/WakePathDetailFragment;)Lyc/r;

    move-result-object v6

    invoke-static {v6}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-virtual {v6}, Lyc/r;->d()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    check-cast v3, Lyc/r;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lyc/r;->h()I

    move-result v1

    const/4 v2, 0x3

    const/4 v5, 0x1

    if-eq v1, v2, :cond_2

    new-instance v1, Lyc/r;

    iget-object v2, v0, Lcom/miui/permcenter/wakepath/WakePathDetailFragment$a$a$a;->a:Lcom/miui/permcenter/wakepath/WakePathDetailFragment;

    invoke-static {v2}, Lcom/miui/permcenter/wakepath/WakePathDetailFragment;->h0(Lcom/miui/permcenter/wakepath/WakePathDetailFragment;)Lyc/r;

    move-result-object v2

    invoke-static {v2}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lyc/r;->e()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v3}, Lyc/r;->h()I

    move-result v13

    const/16 v14, 0x36

    const/4 v15, 0x0

    move-object v6, v1

    invoke-direct/range {v6 .. v15}, Lyc/r;-><init>(Ljava/lang/String;ZLjava/lang/String;ZZZIILbk/g;)V

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lbl/l;->a()I

    move-result v1

    if-gt v1, v5, :cond_2

    new-instance v1, Lyc/r;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x6f

    const/4 v15, 0x0

    move-object v6, v1

    invoke-direct/range {v6 .. v15}, Lyc/r;-><init>(Ljava/lang/String;ZLjava/lang/String;ZZZIILbk/g;)V

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    new-instance v1, Lyc/r;

    const/16 v17, 0x0

    const/16 v18, 0x1

    iget-object v2, v0, Lcom/miui/permcenter/wakepath/WakePathDetailFragment$a$a$a;->a:Lcom/miui/permcenter/wakepath/WakePathDetailFragment;

    const v6, 0x7f121bcc

    invoke-virtual {v2, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v6, "getString(R.string.wakepath_manager_allow_start)"

    invoke-static {v2, v6}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x79

    const/16 v25, 0x0

    move-object/from16 v16, v1

    move-object/from16 v19, v2

    invoke-direct/range {v16 .. v25}, Lyc/r;-><init>(Ljava/lang/String;ZLjava/lang/String;ZZZIILbk/g;)V

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lyc/r;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v5

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/miui/permcenter/wakepath/WakePathDetailFragment$a$a$a;->a:Lcom/miui/permcenter/wakepath/WakePathDetailFragment;

    invoke-static {v1, v5}, Lcom/miui/permcenter/wakepath/WakePathDetailFragment;->i0(Lcom/miui/permcenter/wakepath/WakePathDetailFragment;Z)V

    invoke-virtual {v3}, Lyc/r;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_3
    iget-object v1, v0, Lcom/miui/permcenter/wakepath/WakePathDetailFragment$a$a$a;->a:Lcom/miui/permcenter/wakepath/WakePathDetailFragment;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/miui/permcenter/wakepath/WakePathDetailFragment;->i0(Lcom/miui/permcenter/wakepath/WakePathDetailFragment;Z)V

    new-instance v1, Lyc/r;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/16 v13, 0x5f

    const/4 v14, 0x0

    move-object v5, v1

    invoke-direct/range {v5 .. v14}, Lyc/r;-><init>(Ljava/lang/String;ZLjava/lang/String;ZZZIILbk/g;)V

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    iget-object v1, v0, Lcom/miui/permcenter/wakepath/WakePathDetailFragment$a$a$a;->a:Lcom/miui/permcenter/wakepath/WakePathDetailFragment;

    invoke-static {v1}, Lcom/miui/permcenter/wakepath/WakePathDetailFragment;->f0(Lcom/miui/permcenter/wakepath/WakePathDetailFragment;)Lyc/j;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xb

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lyc/j;->r(Lyc/j;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZILjava/lang/Object;)V

    iget-object v1, v0, Lcom/miui/permcenter/wakepath/WakePathDetailFragment$a$a$a;->a:Lcom/miui/permcenter/wakepath/WakePathDetailFragment;

    invoke-static {v1}, Lcom/miui/permcenter/wakepath/WakePathDetailFragment;->f0(Lcom/miui/permcenter/wakepath/WakePathDetailFragment;)Lyc/j;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    sget-object v1, Loj/t;->a:Loj/t;

    return-object v1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Ltj/d;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/miui/permcenter/wakepath/WakePathDetailFragment$a$a$a;->a(Ljava/util/List;Ltj/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

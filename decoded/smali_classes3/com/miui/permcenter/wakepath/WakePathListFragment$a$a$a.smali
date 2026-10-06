.class final Lcom/miui/permcenter/wakepath/WakePathListFragment$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/permcenter/wakepath/WakePathListFragment$a$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
.field final synthetic a:Lcom/miui/permcenter/wakepath/WakePathListFragment;


# direct methods
.method constructor <init>(Lcom/miui/permcenter/wakepath/WakePathListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/wakepath/WakePathListFragment$a$a$a;->a:Lcom/miui/permcenter/wakepath/WakePathListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Ltj/d;)Ljava/lang/Object;
    .locals 7
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

    iget-object p2, p0, Lcom/miui/permcenter/wakepath/WakePathListFragment$a$a$a;->a:Lcom/miui/permcenter/wakepath/WakePathListFragment;

    invoke-virtual {p2}, Lcom/miui/permcenter/wakepath/WakePathListFragment;->isSearchMode()Z

    move-result p2

    if-nez p2, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lyc/r;

    invoke-virtual {p2}, Lyc/r;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lxc/n;->a(Ljava/lang/String;)Le3/g;

    move-result-object v0

    const-string v3, "getLabelPy(element.callerLabel)"

    invoke-static {v0, v3}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lyc/r;->p(Le3/g;)V

    invoke-virtual {p2}, Lyc/r;->h()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lyc/r;->h()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/miui/permcenter/wakepath/WakePathListFragment$a$a$a;->a:Lcom/miui/permcenter/wakepath/WakePathListFragment;

    invoke-static {p1}, Lcom/miui/permcenter/wakepath/WakePathListFragment;->k0(Lcom/miui/permcenter/wakepath/WakePathListFragment;)Lyc/s;

    move-result-object p1

    invoke-virtual {p1}, Lyc/s;->o()Ljava/util/Comparator;

    move-result-object p1

    invoke-static {v1, p1}, Lqj/l;->q(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object p1, p0, Lcom/miui/permcenter/wakepath/WakePathListFragment$a$a$a;->a:Lcom/miui/permcenter/wakepath/WakePathListFragment;

    invoke-static {p1}, Lcom/miui/permcenter/wakepath/WakePathListFragment;->k0(Lcom/miui/permcenter/wakepath/WakePathListFragment;)Lyc/s;

    move-result-object p1

    invoke-virtual {p1}, Lyc/s;->o()Ljava/util/Comparator;

    move-result-object p1

    invoke-static {v2, p1}, Lqj/l;->q(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object p1, p0, Lcom/miui/permcenter/wakepath/WakePathListFragment$a$a$a;->a:Lcom/miui/permcenter/wakepath/WakePathListFragment;

    invoke-static {p1}, Lcom/miui/permcenter/wakepath/WakePathListFragment;->e0(Lcom/miui/permcenter/wakepath/WakePathListFragment;)Lyc/j;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lyc/j;->r(Lyc/j;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZILjava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/permcenter/wakepath/WakePathListFragment$a$a$a;->a:Lcom/miui/permcenter/wakepath/WakePathListFragment;

    invoke-static {p1}, Lcom/miui/permcenter/wakepath/WakePathListFragment;->e0(Lcom/miui/permcenter/wakepath/WakePathListFragment;)Lyc/j;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    :cond_3
    sget-object p1, Loj/t;->a:Loj/t;

    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Ltj/d;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/miui/permcenter/wakepath/WakePathListFragment$a$a$a;->a(Ljava/util/List;Ltj/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

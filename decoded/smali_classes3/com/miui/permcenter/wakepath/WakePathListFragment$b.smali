.class final Lcom/miui/permcenter/wakepath/WakePathListFragment$b;
.super Lbk/n;
.source "SourceFile"

# interfaces
.implements Lak/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/permcenter/wakepath/WakePathListFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbk/n;",
        "Lak/l<",
        "Ljava/util/List<",
        "+",
        "Lyc/r;",
        ">;",
        "Loj/t;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/permcenter/wakepath/WakePathListFragment;


# direct methods
.method constructor <init>(Lcom/miui/permcenter/wakepath/WakePathListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/wakepath/WakePathListFragment$b;->a:Lcom/miui/permcenter/wakepath/WakePathListFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lbk/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lyc/r;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/permcenter/wakepath/WakePathListFragment$b;->a:Lcom/miui/permcenter/wakepath/WakePathListFragment;

    invoke-virtual {v0}, Lcom/miui/permcenter/wakepath/WakePathListFragment;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/permcenter/wakepath/WakePathListFragment$b;->a:Lcom/miui/permcenter/wakepath/WakePathListFragment;

    invoke-static {v0}, Lcom/miui/permcenter/wakepath/WakePathListFragment;->e0(Lcom/miui/permcenter/wakepath/WakePathListFragment;)Lyc/j;

    move-result-object v1

    iget-object v0, p0, Lcom/miui/permcenter/wakepath/WakePathListFragment$b;->a:Lcom/miui/permcenter/wakepath/WakePathListFragment;

    invoke-static {v0}, Lcom/miui/permcenter/wakepath/WakePathListFragment;->k0(Lcom/miui/permcenter/wakepath/WakePathListFragment;)Lyc/s;

    move-result-object v0

    invoke-virtual {v0}, Lyc/s;->m()Landroidx/lifecycle/c0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lbk/m;->b(Ljava/lang/Object;)V

    move-object v2, v0

    check-cast v2, Ljava/util/List;

    const-string v0, "it"

    invoke-static {p1, v0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v3, p1

    invoke-static/range {v1 .. v7}, Lyc/j;->r(Lyc/j;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZILjava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/permcenter/wakepath/WakePathListFragment$b;->a:Lcom/miui/permcenter/wakepath/WakePathListFragment;

    invoke-static {p1}, Lcom/miui/permcenter/wakepath/WakePathListFragment;->e0(Lcom/miui/permcenter/wakepath/WakePathListFragment;)Lyc/j;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/miui/permcenter/wakepath/WakePathListFragment$b;->a(Ljava/util/List;)V

    sget-object p1, Loj/t;->a:Loj/t;

    return-object p1
.end method

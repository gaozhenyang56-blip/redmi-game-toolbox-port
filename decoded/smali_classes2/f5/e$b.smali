.class Lf5/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiuix/miuixbasewidget/widget/AlphabetIndexer$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf5/e;->o(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lf5/e;


# direct methods
.method constructor <init>(Lf5/e;)V
    .locals 0

    iput-object p1, p0, Lf5/e$b;->a:Lf5/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lf5/e$b;->a:Lf5/e;

    invoke-static {v0}, Lf5/e;->l(Lf5/e;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    return-void
.end method

.method public c(I)V
    .locals 2

    iget-object v0, p0, Lf5/e$b;->a:Lf5/e;

    invoke-static {v0, p1}, Lf5/e;->j(Lf5/e;I)I

    iget-object v0, p0, Lf5/e$b;->a:Lf5/e;

    invoke-static {v0}, Lf5/e;->k(Lf5/e;)Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    return-void
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lf5/e$b;->a:Lf5/e;

    invoke-static {v0}, Lf5/e;->k(Lf5/e;)Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$n;->getItemCount()I

    move-result v0

    return v0
.end method

.method public e()I
    .locals 2

    iget-object v0, p0, Lf5/e$b;->a:Lf5/e;

    invoke-static {v0}, Lf5/e;->g(Lf5/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lf5/e$b;->a:Lf5/e;

    invoke-static {v0}, Lf5/e;->k(Lf5/e;)Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    invoke-static {v0, v1}, Lf5/e;->j(Lf5/e;I)I

    :cond_0
    iget-object v0, p0, Lf5/e$b;->a:Lf5/e;

    invoke-static {v0}, Lf5/e;->i(Lf5/e;)I

    move-result v0

    return v0
.end method

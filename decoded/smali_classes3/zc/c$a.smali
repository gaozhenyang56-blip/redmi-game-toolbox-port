.class Lzc/c$a;
.super Landroidx/recyclerview/widget/RecyclerView$j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzc/c;->t(Landroidx/recyclerview/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/recyclerview/widget/RecyclerView;

.field final synthetic b:Lzc/c;


# direct methods
.method constructor <init>(Lzc/c;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    iput-object p1, p0, Lzc/c$a;->b:Lzc/c;

    iput-object p2, p0, Lzc/c$a;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$j;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$j;->onChanged()V

    iget-object v0, p0, Lzc/c$a;->b:Lzc/c;

    iget-object v1, p0, Lzc/c$a;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0, v1}, Lzc/c;->f(Lzc/c;Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$j;->onItemRangeChanged(II)V

    iget-object p1, p0, Lzc/c$a;->b:Lzc/c;

    iget-object p2, p0, Lzc/c$a;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1, p2}, Lzc/c;->f(Lzc/c;Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .locals 0
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$j;->onItemRangeChanged(IILjava/lang/Object;)V

    iget-object p1, p0, Lzc/c$a;->b:Lzc/c;

    iget-object p2, p0, Lzc/c$a;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1, p2}, Lzc/c;->f(Lzc/c;Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$j;->onItemRangeInserted(II)V

    iget-object p1, p0, Lzc/c$a;->b:Lzc/c;

    iget-object p2, p0, Lzc/c$a;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1, p2}, Lzc/c;->f(Lzc/c;Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$j;->onItemRangeMoved(III)V

    iget-object p1, p0, Lzc/c$a;->b:Lzc/c;

    iget-object p2, p0, Lzc/c$a;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1, p2}, Lzc/c;->f(Lzc/c;Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$j;->onItemRangeRemoved(II)V

    iget-object p1, p0, Lzc/c$a;->b:Lzc/c;

    iget-object p2, p0, Lzc/c$a;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1, p2}, Lzc/c;->f(Lzc/c;Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

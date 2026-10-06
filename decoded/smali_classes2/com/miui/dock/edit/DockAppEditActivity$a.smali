.class Lcom/miui/dock/edit/DockAppEditActivity$a;
.super Lf5/z;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/dock/edit/DockAppEditActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/miui/dock/edit/DockAppEditActivity;


# direct methods
.method constructor <init>(Lcom/miui/dock/edit/DockAppEditActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/dock/edit/DockAppEditActivity$a;->d:Lcom/miui/dock/edit/DockAppEditActivity;

    invoke-direct {p0}, Lf5/z;-><init>()V

    return-void
.end method


# virtual methods
.method public y(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$c0;Landroidx/recyclerview/widget/RecyclerView$c0;)Z
    .locals 3

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$c0;->getItemViewType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$h;

    move-result-object v0

    instance-of v2, v0, Lf5/y;

    if-eqz v2, :cond_0

    iget-object p1, p0, Lcom/miui/dock/edit/DockAppEditActivity$a;->d:Lcom/miui/dock/edit/DockAppEditActivity;

    invoke-static {p1, v1}, Lcom/miui/dock/edit/DockAppEditActivity;->j0(Lcom/miui/dock/edit/DockAppEditActivity;Z)Z

    check-cast v0, Lf5/y;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$c0;->getAdapterPosition()I

    move-result p1

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$c0;->getAdapterPosition()I

    move-result p2

    invoke-interface {v0, p1, p2}, Lf5/y;->j(II)V

    return v1

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lf5/z;->y(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$c0;Landroidx/recyclerview/widget/RecyclerView$c0;)Z

    move-result p1

    return p1
.end method

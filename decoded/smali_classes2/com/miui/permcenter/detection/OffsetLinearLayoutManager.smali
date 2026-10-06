.class public Lcom/miui/permcenter/detection/OffsetLinearLayoutManager;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "SourceFile"


# instance fields
.field private a:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    const/high16 p1, 0x3e800000    # 0.25f

    iput p1, p0, Lcom/miui/permcenter/detection/OffsetLinearLayoutManager;->a:F

    return-void
.end method

.method static synthetic a(Lcom/miui/permcenter/detection/OffsetLinearLayoutManager;)F
    .locals 0

    iget p0, p0, Lcom/miui/permcenter/detection/OffsetLinearLayoutManager;->a:F

    return p0
.end method


# virtual methods
.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;)V

    return-void
.end method

.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$z;I)V
    .locals 0

    new-instance p2, Lcom/miui/permcenter/detection/OffsetLinearLayoutManager$a;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/miui/permcenter/detection/OffsetLinearLayoutManager$a;-><init>(Lcom/miui/permcenter/detection/OffsetLinearLayoutManager;Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView$y;->setTargetPosition(I)V

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$n;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$y;)V

    return-void
.end method

.class Lcom/miui/permcenter/detection/OffsetLinearLayoutManager$a;
.super Landroidx/recyclerview/widget/o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/permcenter/detection/OffsetLinearLayoutManager;->smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$z;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/permcenter/detection/OffsetLinearLayoutManager;


# direct methods
.method constructor <init>(Lcom/miui/permcenter/detection/OffsetLinearLayoutManager;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/detection/OffsetLinearLayoutManager$a;->a:Lcom/miui/permcenter/detection/OffsetLinearLayoutManager;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/o;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/detection/OffsetLinearLayoutManager$a;->a:Lcom/miui/permcenter/detection/OffsetLinearLayoutManager;

    invoke-static {v0}, Lcom/miui/permcenter/detection/OffsetLinearLayoutManager;->a(Lcom/miui/permcenter/detection/OffsetLinearLayoutManager;)F

    move-result v0

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, p1

    return v0
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/permcenter/detection/OffsetLinearLayoutManager$a;->a:Lcom/miui/permcenter/detection/OffsetLinearLayoutManager;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method protected getVerticalSnapPreference()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

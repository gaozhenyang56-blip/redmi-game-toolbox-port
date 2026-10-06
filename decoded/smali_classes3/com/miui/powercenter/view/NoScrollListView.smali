.class public Lcom/miui/powercenter/view/NoScrollListView;
.super Landroid/widget/ListView;
.source "SourceFile"


# instance fields
.field public a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/powercenter/view/NoScrollListView;->a:Z

    invoke-super/range {p0 .. p5}, Landroid/widget/ListView;->onLayout(ZIIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/miui/powercenter/view/NoScrollListView;->a:Z

    const p2, 0x1fffffff

    const/high16 v0, -0x80000000

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    return-void
.end method

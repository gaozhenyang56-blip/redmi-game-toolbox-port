.class public Lcom/miui/common/expandableview/PinnedHeaderListView;
.super Landroid/widget/ListView;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/common/expandableview/PinnedHeaderListView$a;,
        Lcom/miui/common/expandableview/PinnedHeaderListView$b;,
        Lcom/miui/common/expandableview/PinnedHeaderListView$c;,
        Lcom/miui/common/expandableview/PinnedHeaderListView$d;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/AbsListView$OnScrollListener;

.field private b:Lcom/miui/common/expandableview/PinnedHeaderListView$d;

.field private c:Landroid/view/View;

.field private d:I

.field private e:F

.field private f:Z

.field private g:I

.field private h:I

.field private i:I

.field private j:Lcom/miui/common/expandableview/PinnedHeaderListView$b;

.field private k:Lcom/miui/common/expandableview/PinnedHeaderListView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/common/expandableview/PinnedHeaderListView;->d:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/common/expandableview/PinnedHeaderListView;->f:Z

    iput p1, p0, Lcom/miui/common/expandableview/PinnedHeaderListView;->g:I

    invoke-super {p0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/common/expandableview/PinnedHeaderListView;->d:I

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/miui/common/expandableview/PinnedHeaderListView;->f:Z

    iput p1, p0, Lcom/miui/common/expandableview/PinnedHeaderListView;->g:I

    invoke-super {p0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/miui/common/expandableview/PinnedHeaderListView;->h:I

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v2, 0x0

    if-lez v1, :cond_1

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_0

    :cond_1
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/view/View;->layout(IIII)V

    :cond_2
    return-void
.end method

.method private b(Landroid/view/View;)Ljava/lang/String;
    .locals 3

    invoke-direct {p0, p1}, Lcom/miui/common/expandableview/PinnedHeaderListView;->d(Landroid/view/View;)Ljava/util/List;

    move-result-object p1

    const-string v0, ""

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    if-nez v1, :cond_0

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    :cond_0
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private c(ILandroid/view/View;)Landroid/view/View;
    .locals 2

    iget v0, p0, Lcom/miui/common/expandableview/PinnedHeaderListView;->g:I

    if-ne p1, v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iget-object v1, p0, Lcom/miui/common/expandableview/PinnedHeaderListView;->b:Lcom/miui/common/expandableview/PinnedHeaderListView$d;

    invoke-interface {v1, p1, p2, p0}, Lcom/miui/common/expandableview/PinnedHeaderListView$d;->getSectionHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    if-eqz v0, :cond_2

    invoke-direct {p0, p2}, Lcom/miui/common/expandableview/PinnedHeaderListView;->a(Landroid/view/View;)V

    iput p1, p0, Lcom/miui/common/expandableview/PinnedHeaderListView;->g:I

    :cond_2
    return-object p2
.end method

.method private d(Landroid/view/View;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    throw p1
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/miui/common/expandableview/PinnedHeaderListView;->b:Lcom/miui/common/expandableview/PinnedHeaderListView$d;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/common/expandableview/PinnedHeaderListView;->f:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/common/expandableview/PinnedHeaderListView;->c:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    const/4 v1, 0x0

    iget v2, p0, Lcom/miui/common/expandableview/PinnedHeaderListView;->e:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/miui/common/expandableview/PinnedHeaderListView;->c:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    iget-object v1, p0, Lcom/miui/common/expandableview/PinnedHeaderListView;->c:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getCurrentHeader()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/expandableview/PinnedHeaderListView;->c:Landroid/view/View;

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    iput p1, p0, Lcom/miui/common/expandableview/PinnedHeaderListView;->h:I

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    iput p1, p0, Lcom/miui/common/expandableview/PinnedHeaderListView;->i:I

    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 6

    iget-object v0, p0, Lcom/miui/common/expandableview/PinnedHeaderListView;->a:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    :cond_0
    iget-object p1, p0, Lcom/miui/common/expandableview/PinnedHeaderListView;->b:Lcom/miui/common/expandableview/PinnedHeaderListView$d;

    const/4 p4, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_8

    invoke-interface {p1}, Lcom/miui/common/expandableview/PinnedHeaderListView$d;->getCount()I

    move-result p1

    if-eqz p1, :cond_8

    iget-boolean p1, p0, Lcom/miui/common/expandableview/PinnedHeaderListView;->f:Z

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result p1

    if-ge p2, p1, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result p1

    sub-int/2addr p2, p1

    iget-object p1, p0, Lcom/miui/common/expandableview/PinnedHeaderListView;->b:Lcom/miui/common/expandableview/PinnedHeaderListView$d;

    invoke-interface {p1, p2}, Lcom/miui/common/expandableview/PinnedHeaderListView$d;->getSectionForPosition(I)I

    move-result p1

    iget-object v2, p0, Lcom/miui/common/expandableview/PinnedHeaderListView;->b:Lcom/miui/common/expandableview/PinnedHeaderListView$d;

    invoke-interface {v2, p1}, Lcom/miui/common/expandableview/PinnedHeaderListView$d;->getSectionHeaderViewType(I)I

    move-result v2

    iget v3, p0, Lcom/miui/common/expandableview/PinnedHeaderListView;->d:I

    if-eq v3, v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/common/expandableview/PinnedHeaderListView;->c:Landroid/view/View;

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/miui/common/expandableview/PinnedHeaderListView;->c(ILandroid/view/View;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/expandableview/PinnedHeaderListView;->c:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/miui/common/expandableview/PinnedHeaderListView;->a(Landroid/view/View;)V

    iput v2, p0, Lcom/miui/common/expandableview/PinnedHeaderListView;->d:I

    iget-object v0, p0, Lcom/miui/common/expandableview/PinnedHeaderListView;->j:Lcom/miui/common/expandableview/PinnedHeaderListView$b;

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/common/expandableview/PinnedHeaderListView;->c:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/miui/common/expandableview/PinnedHeaderListView;->b(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/miui/common/expandableview/PinnedHeaderListView;->j:Lcom/miui/common/expandableview/PinnedHeaderListView$b;

    iget-object v4, p0, Lcom/miui/common/expandableview/PinnedHeaderListView;->c:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-interface {v3, v0, v4, v2}, Lcom/miui/common/expandableview/PinnedHeaderListView$b;->a(Ljava/lang/String;IZ)V

    :cond_3
    iput v1, p0, Lcom/miui/common/expandableview/PinnedHeaderListView;->e:F

    move v0, p2

    :goto_1
    add-int v3, p2, p3

    if-ge v0, v3, :cond_6

    iget-object v3, p0, Lcom/miui/common/expandableview/PinnedHeaderListView;->b:Lcom/miui/common/expandableview/PinnedHeaderListView$d;

    invoke-interface {v3, v0}, Lcom/miui/common/expandableview/PinnedHeaderListView$d;->isSectionHeader(I)Z

    move-result v3

    if-eqz v3, :cond_5

    sub-int v3, v0, p2

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/miui/common/expandableview/PinnedHeaderListView;->c:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3, p4}, Landroid/view/View;->setVisibility(I)V

    cmpl-float v5, v5, v4

    if-ltz v5, :cond_4

    cmpl-float v5, v4, v1

    if-lez v5, :cond_4

    iget-object v3, p0, Lcom/miui/common/expandableview/PinnedHeaderListView;->c:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v4, v3

    iput v4, p0, Lcom/miui/common/expandableview/PinnedHeaderListView;->e:F

    goto :goto_2

    :cond_4
    cmpg-float v4, v4, v1

    if-gtz v4, :cond_5

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    iget-object p2, p0, Lcom/miui/common/expandableview/PinnedHeaderListView;->k:Lcom/miui/common/expandableview/PinnedHeaderListView$a;

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/miui/common/expandableview/PinnedHeaderListView;->c:Landroid/view/View;

    invoke-direct {p0, p2}, Lcom/miui/common/expandableview/PinnedHeaderListView;->b(Landroid/view/View;)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/miui/common/expandableview/PinnedHeaderListView;->k:Lcom/miui/common/expandableview/PinnedHeaderListView$a;

    iget-object p4, p0, Lcom/miui/common/expandableview/PinnedHeaderListView;->c:Landroid/view/View;

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    invoke-interface {p3, p2, p4, v2, p1}, Lcom/miui/common/expandableview/PinnedHeaderListView$a;->a(Ljava/lang/String;IZI)V

    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_8
    :goto_3
    iput-object v0, p0, Lcom/miui/common/expandableview/PinnedHeaderListView;->c:Landroid/view/View;

    iput v1, p0, Lcom/miui/common/expandableview/PinnedHeaderListView;->e:F

    move p1, p2

    :goto_4
    add-int v0, p2, p3

    if-ge p1, v0, :cond_a

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0, p4}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_a
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/common/expandableview/PinnedHeaderListView;->a:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/miui/common/expandableview/PinnedHeaderListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/common/expandableview/PinnedHeaderListView;->c:Landroid/view/View;

    move-object v0, p1

    check-cast v0, Lcom/miui/common/expandableview/PinnedHeaderListView$d;

    iput-object v0, p0, Lcom/miui/common/expandableview/PinnedHeaderListView;->b:Lcom/miui/common/expandableview/PinnedHeaderListView$d;

    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setOnApplockHeaderViewUpdateListener(Lcom/miui/common/expandableview/PinnedHeaderListView$a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/expandableview/PinnedHeaderListView;->k:Lcom/miui/common/expandableview/PinnedHeaderListView$a;

    return-void
.end method

.method public setOnHeaderViewUpdateListener(Lcom/miui/common/expandableview/PinnedHeaderListView$b;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/expandableview/PinnedHeaderListView;->j:Lcom/miui/common/expandableview/PinnedHeaderListView$b;

    return-void
.end method

.method public setOnItemClickListener(Lcom/miui/common/expandableview/PinnedHeaderListView$c;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/expandableview/PinnedHeaderListView;->a:Landroid/widget/AbsListView$OnScrollListener;

    return-void
.end method

.method public setPinHeaders(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/common/expandableview/PinnedHeaderListView;->f:Z

    return-void
.end method

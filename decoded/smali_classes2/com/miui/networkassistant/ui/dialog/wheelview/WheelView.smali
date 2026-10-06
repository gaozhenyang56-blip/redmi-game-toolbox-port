.class public Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field private static final DEF_VISIBLE_ITEMS:I = 0x5

.field private static final ITEM_OFFSET_PERCENT:I = 0x0

.field private static final PADDING:I = 0xa

.field private static SHADOWS_COLORS:[I


# instance fields
.field private bottomShadow:Landroid/graphics/drawable/GradientDrawable;

.field private centerDrawable:Landroid/graphics/drawable/Drawable;

.field private changingListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/networkassistant/ui/dialog/wheelview/OnWheelChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private clickingListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/networkassistant/ui/dialog/wheelview/OnWheelClickedListener;",
            ">;"
        }
    .end annotation
.end field

.field private currentItem:I

.field private dataObserver:Landroid/database/DataSetObserver;

.field private drawShadows:Z

.field private firstItem:I

.field isCyclic:Z

.field private isScrollingPerformed:Z

.field private itemHeight:I

.field private itemsLayout:Landroid/widget/LinearLayout;

.field private old:I

.field private recycle:Lcom/miui/networkassistant/ui/dialog/wheelview/WheelRecycle;

.field private scroller:Lcom/miui/networkassistant/ui/dialog/wheelview/WheelScroller;

.field scrollingListener:Lcom/miui/networkassistant/ui/dialog/wheelview/WheelScroller$ScrollingListener;

.field private scrollingListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/networkassistant/ui/dialog/wheelview/OnWheelScrollListener;",
            ">;"
        }
    .end annotation
.end field

.field private scrollingOffset:I

.field private topShadow:Landroid/graphics/drawable/GradientDrawable;

.field private viewAdapter:Lcom/miui/networkassistant/ui/dialog/wheelview/adapter/WheelViewAdapter;

.field private visibleItems:I

.field private wheelForeground:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->SHADOWS_COLORS:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x1c000001
        -0x1c000001
        0x33ffffff
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->currentItem:I

    iput p1, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->old:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->visibleItems:I

    iput p1, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->itemHeight:I

    const v0, 0x7f081114

    iput v0, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->wheelForeground:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->drawShadows:Z

    iput-boolean p1, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->isCyclic:Z

    new-instance p1, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelRecycle;

    invoke-direct {p1, p0}, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelRecycle;-><init>(Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;)V

    iput-object p1, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->recycle:Lcom/miui/networkassistant/ui/dialog/wheelview/WheelRecycle;

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->changingListeners:Ljava/util/List;

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->scrollingListeners:Ljava/util/List;

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->clickingListeners:Ljava/util/List;

    new-instance p1, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView$1;

    invoke-direct {p1, p0}, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView$1;-><init>(Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;)V

    iput-object p1, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->scrollingListener:Lcom/miui/networkassistant/ui/dialog/wheelview/WheelScroller$ScrollingListener;

    new-instance p1, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView$2;

    invoke-direct {p1, p0}, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView$2;-><init>(Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;)V

    iput-object p1, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->dataObserver:Landroid/database/DataSetObserver;

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->initData()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->currentItem:I

    iput p1, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->old:I

    const/4 p2, 0x5

    iput p2, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->visibleItems:I

    iput p1, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->itemHeight:I

    const p2, 0x7f081114

    iput p2, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->wheelForeground:I

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->drawShadows:Z

    iput-boolean p1, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->isCyclic:Z

    new-instance p1, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelRecycle;

    invoke-direct {p1, p0}, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelRecycle;-><init>(Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;)V

    iput-object p1, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->recycle:Lcom/miui/networkassistant/ui/dialog/wheelview/WheelRecycle;

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->changingListeners:Ljava/util/List;

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->scrollingListeners:Ljava/util/List;

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->clickingListeners:Ljava/util/List;

    new-instance p1, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView$1;

    invoke-direct {p1, p0}, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView$1;-><init>(Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;)V

    iput-object p1, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->scrollingListener:Lcom/miui/networkassistant/ui/dialog/wheelview/WheelScroller$ScrollingListener;

    new-instance p1, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView$2;

    invoke-direct {p1, p0}, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView$2;-><init>(Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;)V

    iput-object p1, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->dataObserver:Landroid/database/DataSetObserver;

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->initData()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->currentItem:I

    iput p1, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->old:I

    const/4 p2, 0x5

    iput p2, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->visibleItems:I

    iput p1, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->itemHeight:I

    const p2, 0x7f081114

    iput p2, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->wheelForeground:I

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->drawShadows:Z

    iput-boolean p1, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->isCyclic:Z

    new-instance p1, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelRecycle;

    invoke-direct {p1, p0}, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelRecycle;-><init>(Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;)V

    iput-object p1, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->recycle:Lcom/miui/networkassistant/ui/dialog/wheelview/WheelRecycle;

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->changingListeners:Ljava/util/List;

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->scrollingListeners:Ljava/util/List;

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->clickingListeners:Ljava/util/List;

    new-instance p1, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView$1;

    invoke-direct {p1, p0}, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView$1;-><init>(Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;)V

    iput-object p1, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->scrollingListener:Lcom/miui/networkassistant/ui/dialog/wheelview/WheelScroller$ScrollingListener;

    new-instance p1, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView$2;

    invoke-direct {p1, p0}, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView$2;-><init>(Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;)V

    iput-object p1, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->dataObserver:Landroid/database/DataSetObserver;

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->initData()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->isScrollingPerformed:Z

    return p0
.end method

.method static synthetic access$002(Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->isScrollingPerformed:Z

    return p1
.end method

.method static synthetic access$100(Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->doScroll(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;)I
    .locals 0

    iget p0, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->scrollingOffset:I

    return p0
.end method

.method static synthetic access$202(Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;I)I
    .locals 0

    iput p1, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->scrollingOffset:I

    return p1
.end method

.method static synthetic access$300(Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;)Lcom/miui/networkassistant/ui/dialog/wheelview/WheelScroller;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->scroller:Lcom/miui/networkassistant/ui/dialog/wheelview/WheelScroller;

    return-object p0
.end method

.method private addViewItem(IZ)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->getItemView(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method private buildViewForMeasuring()V
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->recycle:Lcom/miui/networkassistant/ui/dialog/wheelview/WheelRecycle;

    iget v2, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->firstItem:I

    new-instance v3, Lcom/miui/networkassistant/ui/dialog/wheelview/ItemsRange;

    invoke-direct {v3}, Lcom/miui/networkassistant/ui/dialog/wheelview/ItemsRange;-><init>()V

    invoke-virtual {v1, v0, v2, v3}, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelRecycle;->recycleItems(Landroid/widget/LinearLayout;ILcom/miui/networkassistant/ui/dialog/wheelview/ItemsRange;)I

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->createItemsLayout()V

    :goto_0
    iget v0, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->visibleItems:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->currentItem:I

    add-int/2addr v1, v0

    :goto_1
    iget v2, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->currentItem:I

    sub-int/2addr v2, v0

    if-lt v1, v2, :cond_2

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->addViewItem(IZ)Z

    move-result v2

    if-eqz v2, :cond_1

    iput v1, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->firstItem:I

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private calculateLayoutWidth(II)I
    .locals 4

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->initResourcesIfNecessary()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/view/View;->measure(II)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    if-ne p2, v2, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x14

    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/high16 v3, -0x80000000

    if-ne p2, v3, :cond_1

    if-ge p1, v0, :cond_1

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    iget-object p2, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    add-int/lit8 v0, p1, -0x14

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/view/View;->measure(II)V

    return p1
.end method

.method private createItemsLayout()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    :cond_0
    return-void
.end method

.method private doScroll(I)V
    .locals 7

    iget v0, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->scrollingOffset:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->scrollingOffset:I

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->getItemHeight()I

    move-result p1

    iget v0, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->scrollingOffset:I

    div-int/2addr v0, p1

    iget v1, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->currentItem:I

    sub-int/2addr v1, v0

    iget-object v2, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->viewAdapter:Lcom/miui/networkassistant/ui/dialog/wheelview/adapter/WheelViewAdapter;

    invoke-interface {v2}, Lcom/miui/networkassistant/ui/dialog/wheelview/adapter/WheelViewAdapter;->getItemsCount()I

    move-result v2

    iget v3, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->scrollingOffset:I

    rem-int/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    div-int/lit8 v5, p1, 0x2

    const/4 v6, 0x0

    if-gt v4, v5, :cond_0

    move v3, v6

    :cond_0
    iget-boolean v4, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->isCyclic:Z

    if-eqz v4, :cond_4

    if-lez v2, :cond_4

    if-lez v3, :cond_1

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-gez v3, :cond_2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, -0x1

    :cond_2
    :goto_0
    if-gez v1, :cond_3

    add-int/2addr v1, v2

    goto :goto_0

    :cond_3
    rem-int/2addr v1, v2

    goto :goto_1

    :cond_4
    if-gez v1, :cond_5

    iget v0, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->currentItem:I

    move v1, v6

    goto :goto_1

    :cond_5
    if-lt v1, v2, :cond_6

    iget v0, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->currentItem:I

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v2, -0x1

    goto :goto_1

    :cond_6
    if-lez v1, :cond_7

    if-lez v3, :cond_7

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_8

    if-gez v3, :cond_8

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, -0x1

    :cond_8
    :goto_1
    iget v2, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->scrollingOffset:I

    iget v3, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->currentItem:I

    invoke-virtual {p0, v1, v6}, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->setCurrentItem(IZ)V

    if-eq v1, v3, :cond_9

    goto :goto_2

    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :goto_2
    mul-int/2addr v0, p1

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->scrollingOffset:I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    if-le v2, p1, :cond_a

    iget p1, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->scrollingOffset:I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    rem-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr p1, v0

    iput p1, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->scrollingOffset:I

    :cond_a
    return-void
.end method

.method private drawCenterRect(Landroid/graphics/Canvas;)V
    .locals 9

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->getItemHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-double v1, v1

    const-wide v3, 0x3ff3333333333333L    # 1.2

    mul-double/2addr v1, v3

    double-to-int v1, v1

    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    const-string v2, "#dddddd"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    const v2, 0x3f99999a    # 1.2f

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sub-int v2, v0, v1

    int-to-float v6, v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v5, v2

    const/4 v3, 0x0

    move-object v2, p1

    move v4, v6

    move-object v7, v8

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/2addr v0, v1

    int-to-float v6, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v5, v0

    move v4, v6

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawItems(Landroid/graphics/Canvas;)V
    .locals 3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->currentItem:I

    iget v1, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->firstItem:I

    sub-int/2addr v0, v1

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->getItemHeight()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->getItemHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    neg-int v0, v0

    iget v1, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->scrollingOffset:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawShadows(Landroid/graphics/Canvas;)V
    .locals 5

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->getItemHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->topShadow:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->topShadow:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->bottomShadow:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v1, v3, v2, v0, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->bottomShadow:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private getDesiredHeight(Landroid/widget/LinearLayout;)I
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->itemHeight:I

    :cond_0
    iget p1, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->itemHeight:I

    iget v1, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->visibleItems:I

    mul-int/2addr v1, p1

    mul-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x32

    sub-int/2addr v1, p1

    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method private getItemHeight()I
    .locals 2

    iget v0, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->itemHeight:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->itemHeight:I

    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->visibleItems:I

    div-int/2addr v0, v1

    return v0
.end method

.method private getItemView(I)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->viewAdapter:Lcom/miui/networkassistant/ui/dialog/wheelview/adapter/WheelViewAdapter;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/miui/networkassistant/ui/dialog/wheelview/adapter/WheelViewAdapter;->getItemsCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->viewAdapter:Lcom/miui/networkassistant/ui/dialog/wheelview/adapter/WheelViewAdapter;

    invoke-interface {v0}, Lcom/miui/networkassistant/ui/dialog/wheelview/adapter/WheelViewAdapter;->getItemsCount()I

    move-result v0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->isValidItemIndex(I)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p1, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->viewAdapter:Lcom/miui/networkassistant/ui/dialog/wheelview/adapter/WheelViewAdapter;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->recycle:Lcom/miui/networkassistant/ui/dialog/wheelview/WheelRecycle;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelRecycle;->getEmptyItem()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-interface {p1, v0, v1}, Lcom/miui/networkassistant/ui/dialog/wheelview/adapter/WheelViewAdapter;->getEmptyItem(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    if-gez p1, :cond_2

    add-int/2addr p1, v0

    goto :goto_0

    :cond_2
    rem-int/2addr p1, v0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->viewAdapter:Lcom/miui/networkassistant/ui/dialog/wheelview/adapter/WheelViewAdapter;

    instance-of v1, v0, Lcom/miui/networkassistant/ui/dialog/wheelview/adapter/AbstractWheelTextAdapter;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/miui/networkassistant/ui/dialog/wheelview/adapter/AbstractWheelTextAdapter;

    iget v1, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->currentItem:I

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/dialog/wheelview/adapter/AbstractWheelTextAdapter;->setCurrentItem(I)V

    :cond_3
    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->viewAdapter:Lcom/miui/networkassistant/ui/dialog/wheelview/adapter/WheelViewAdapter;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->recycle:Lcom/miui/networkassistant/ui/dialog/wheelview/WheelRecycle;

    invoke-virtual {v1}, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelRecycle;->getItem()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-interface {v0, p1, v1, v2}, Lcom/miui/networkassistant/ui/dialog/wheelview/adapter/WheelViewAdapter;->getItem(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getItemsRange()Lcom/miui/networkassistant/ui/dialog/wheelview/ItemsRange;
    .locals 5

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->getItemHeight()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget v0, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->currentItem:I

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0}, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->getItemHeight()I

    move-result v2

    mul-int/2addr v2, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    if-ge v2, v3, :cond_1

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->scrollingOffset:I

    if-eqz v2, :cond_3

    if-lez v2, :cond_2

    add-int/lit8 v0, v0, -0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->getItemHeight()I

    move-result v3

    div-int/2addr v2, v3

    sub-int/2addr v0, v2

    int-to-double v3, v1

    int-to-double v1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->asin(D)D

    move-result-wide v1

    add-double/2addr v3, v1

    double-to-int v1, v3

    :cond_3
    new-instance v2, Lcom/miui/networkassistant/ui/dialog/wheelview/ItemsRange;

    invoke-direct {v2, v0, v1}, Lcom/miui/networkassistant/ui/dialog/wheelview/ItemsRange;-><init>(II)V

    return-object v2
.end method

.method private initData()V
    .locals 3

    new-instance v0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelScroller;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->scrollingListener:Lcom/miui/networkassistant/ui/dialog/wheelview/WheelScroller$ScrollingListener;

    invoke-direct {v0, v1, v2}, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelScroller;-><init>(Landroid/content/Context;Lcom/miui/networkassistant/ui/dialog/wheelview/WheelScroller$ScrollingListener;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->scroller:Lcom/miui/networkassistant/ui/dialog/wheelview/WheelScroller;

    return-void
.end method

.method private initResourcesIfNecessary()V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->centerDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->wheelForeground:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->centerDrawable:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->topShadow:Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_1

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    sget-object v2, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->SHADOWS_COLORS:[I

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->topShadow:Landroid/graphics/drawable/GradientDrawable;

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->bottomShadow:Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_2

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    sget-object v2, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->SHADOWS_COLORS:[I

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->bottomShadow:Landroid/graphics/drawable/GradientDrawable;

    :cond_2
    return-void
.end method

.method private isValidItemIndex(I)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->viewAdapter:Lcom/miui/networkassistant/ui/dialog/wheelview/adapter/WheelViewAdapter;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/miui/networkassistant/ui/dialog/wheelview/adapter/WheelViewAdapter;->getItemsCount()I

    move-result v0

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->isCyclic:Z

    if-nez v0, :cond_0

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->viewAdapter:Lcom/miui/networkassistant/ui/dialog/wheelview/adapter/WheelViewAdapter;

    invoke-interface {v0}, Lcom/miui/networkassistant/ui/dialog/wheelview/adapter/WheelViewAdapter;->getItemsCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private layout(II)V
    .locals 2

    add-int/lit8 p1, p1, -0x14

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method private rebuildItems()Z
    .locals 6

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->getItemsRange()Lcom/miui/networkassistant/ui/dialog/wheelview/ItemsRange;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->recycle:Lcom/miui/networkassistant/ui/dialog/wheelview/WheelRecycle;

    iget v5, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->firstItem:I

    invoke-virtual {v4, v1, v5, v0}, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelRecycle;->recycleItems(Landroid/widget/LinearLayout;ILcom/miui/networkassistant/ui/dialog/wheelview/ItemsRange;)I

    move-result v1

    iget v4, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->firstItem:I

    if-eq v4, v1, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    iput v1, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->firstItem:I

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->createItemsLayout()V

    move v4, v3

    :goto_1
    if-nez v4, :cond_4

    iget v1, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->firstItem:I

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/dialog/wheelview/ItemsRange;->getFirst()I

    move-result v4

    if-ne v1, v4, :cond_3

    iget-object v1, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/dialog/wheelview/ItemsRange;->getCount()I

    move-result v4

    if-eq v1, v4, :cond_2

    goto :goto_2

    :cond_2
    move v4, v2

    goto :goto_3

    :cond_3
    :goto_2
    move v4, v3

    :cond_4
    :goto_3
    iget v1, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->firstItem:I

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/dialog/wheelview/ItemsRange;->getFirst()I

    move-result v5

    if-le v1, v5, :cond_6

    iget v1, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->firstItem:I

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/dialog/wheelview/ItemsRange;->getLast()I

    move-result v5

    if-gt v1, v5, :cond_6

    iget v1, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->firstItem:I

    sub-int/2addr v1, v3

    :goto_4
    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/dialog/wheelview/ItemsRange;->getFirst()I

    move-result v5

    if-lt v1, v5, :cond_7

    invoke-direct {p0, v1, v3}, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->addViewItem(IZ)Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_5

    :cond_5
    iput v1, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->firstItem:I

    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    :cond_6
    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/dialog/wheelview/ItemsRange;->getFirst()I

    move-result v1

    iput v1, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->firstItem:I

    :cond_7
    :goto_5
    iget v1, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->firstItem:I

    iget-object v3, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    :goto_6
    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/dialog/wheelview/ItemsRange;->getCount()I

    move-result v5

    if-ge v3, v5, :cond_9

    iget v5, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->firstItem:I

    add-int/2addr v5, v3

    invoke-direct {p0, v5, v2}, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->addViewItem(IZ)Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-nez v5, :cond_8

    add-int/lit8 v1, v1, 0x1

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_9
    iput v1, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->firstItem:I

    return v4
.end method

.method private updateView()V
    .locals 2

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->rebuildItems()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {p0, v0, v1}, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->calculateLayoutWidth(II)I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->layout(II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addChangingListener(Lcom/miui/networkassistant/ui/dialog/wheelview/OnWheelChangedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->changingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getCurrentItem()I
    .locals 1

    iget v0, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->currentItem:I

    return v0
.end method

.method public getViewAdapter()Lcom/miui/networkassistant/ui/dialog/wheelview/adapter/WheelViewAdapter;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->viewAdapter:Lcom/miui/networkassistant/ui/dialog/wheelview/adapter/WheelViewAdapter;

    return-object v0
.end method

.method public invalidateWheel(Z)V
    .locals 3

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->recycle:Lcom/miui/networkassistant/ui/dialog/wheelview/WheelRecycle;

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelRecycle;->clearAll()V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->scrollingOffset:I

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->recycle:Lcom/miui/networkassistant/ui/dialog/wheelview/WheelRecycle;

    iget v1, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->firstItem:I

    new-instance v2, Lcom/miui/networkassistant/ui/dialog/wheelview/ItemsRange;

    invoke-direct {v2}, Lcom/miui/networkassistant/ui/dialog/wheelview/ItemsRange;-><init>()V

    invoke-virtual {v0, p1, v1, v2}, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelRecycle;->recycleItems(Landroid/widget/LinearLayout;ILcom/miui/networkassistant/ui/dialog/wheelview/ItemsRange;)I

    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public isCyclic()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->isCyclic:Z

    return v0
.end method

.method protected notifyChangingListeners(II)V
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->viewAdapter:Lcom/miui/networkassistant/ui/dialog/wheelview/adapter/WheelViewAdapter;

    instance-of v1, v0, Lcom/miui/networkassistant/ui/dialog/wheelview/adapter/ArrayWheelAdapter;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/miui/networkassistant/ui/dialog/wheelview/adapter/ArrayWheelAdapter;

    invoke-virtual {v0, p2}, Lcom/miui/networkassistant/ui/dialog/wheelview/adapter/AbstractWheelTextAdapter;->getTextViewByIndex(I)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_0

    const v2, -0xf27b01

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v2, 0x41d00000    # 26.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_0
    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/ui/dialog/wheelview/adapter/AbstractWheelTextAdapter;->getTextViewByIndex(I)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":oldValue"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const v1, -0xacacad

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v1, 0x41980000    # 19.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->changingListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/networkassistant/ui/dialog/wheelview/OnWheelChangedListener;

    invoke-interface {v1, p0, p1, p2}, Lcom/miui/networkassistant/ui/dialog/wheelview/OnWheelChangedListener;->onChanged(Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;II)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected notifyClickListenersAboutClick(I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->clickingListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/networkassistant/ui/dialog/wheelview/OnWheelClickedListener;

    invoke-interface {v1, p0, p1}, Lcom/miui/networkassistant/ui/dialog/wheelview/OnWheelClickedListener;->onItemClicked(Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected notifyScrollingListenersAboutEnd()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->scrollingListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/networkassistant/ui/dialog/wheelview/OnWheelScrollListener;

    invoke-interface {v1, p0}, Lcom/miui/networkassistant/ui/dialog/wheelview/OnWheelScrollListener;->onScrollingFinished(Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected notifyScrollingListenersAboutStart()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->scrollingListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/networkassistant/ui/dialog/wheelview/OnWheelScrollListener;

    invoke-interface {v1, p0}, Lcom/miui/networkassistant/ui/dialog/wheelview/OnWheelScrollListener;->onScrollingStarted(Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->viewAdapter:Lcom/miui/networkassistant/ui/dialog/wheelview/adapter/WheelViewAdapter;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/miui/networkassistant/ui/dialog/wheelview/adapter/WheelViewAdapter;->getItemsCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->updateView()V

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->drawItems(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    invoke-direct {p0, p4, p5}, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->layout(II)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->buildViewForMeasuring()V

    invoke-direct {p0, p1, v0}, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->calculateLayoutWidth(II)I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->getDesiredHeight(Landroid/widget/LinearLayout;)I

    move-result v0

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_1

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_0

    :cond_1
    move p2, v0

    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->getViewAdapter()Lcom/miui/networkassistant/ui/dialog/wheelview/adapter/WheelViewAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v1, :cond_2

    if-eq v0, v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    :cond_2
    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->isScrollingPerformed:Z

    if-nez v0, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/2addr v1, v2

    sub-int/2addr v0, v1

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->getItemHeight()I

    move-result v1

    div-int/2addr v1, v2

    if-lez v0, :cond_3

    add-int/2addr v0, v1

    goto :goto_0

    :cond_3
    sub-int/2addr v0, v1

    :goto_0
    invoke-direct {p0}, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->getItemHeight()I

    move-result v1

    div-int/2addr v0, v1

    if-eqz v0, :cond_4

    iget v1, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->currentItem:I

    add-int/2addr v1, v0

    invoke-direct {p0, v1}, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->isValidItemIndex(I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->currentItem:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->notifyClickListenersAboutClick(I)V

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->scroller:Lcom/miui/networkassistant/ui/dialog/wheelview/WheelScroller;

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_5
    :goto_2
    return v1
.end method

.method public scroll(II)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->getItemHeight()I

    move-result v0

    mul-int/2addr p1, v0

    iget v0, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->scrollingOffset:I

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->scroller:Lcom/miui/networkassistant/ui/dialog/wheelview/WheelScroller;

    invoke-virtual {v0, p1, p2}, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelScroller;->scroll(II)V

    return-void
.end method

.method public setCurrentItem(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->setCurrentItem(IZ)V

    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->viewAdapter:Lcom/miui/networkassistant/ui/dialog/wheelview/adapter/WheelViewAdapter;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/miui/networkassistant/ui/dialog/wheelview/adapter/WheelViewAdapter;->getItemsCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->viewAdapter:Lcom/miui/networkassistant/ui/dialog/wheelview/adapter/WheelViewAdapter;

    invoke-interface {v0}, Lcom/miui/networkassistant/ui/dialog/wheelview/adapter/WheelViewAdapter;->getItemsCount()I

    move-result v0

    if-ltz p1, :cond_1

    if-lt p1, v0, :cond_3

    :cond_1
    iget-boolean v1, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->isCyclic:Z

    if-eqz v1, :cond_7

    :goto_0
    if-gez p1, :cond_2

    add-int/2addr p1, v0

    goto :goto_0

    :cond_2
    rem-int/2addr p1, v0

    :cond_3
    iget v1, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->currentItem:I

    if-eq p1, v1, :cond_7

    const/4 v2, 0x0

    if-eqz p2, :cond_6

    sub-int p2, p1, v1

    iget-boolean v3, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->isCyclic:Z

    if-eqz v3, :cond_5

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->currentItem:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    sub-int/2addr v0, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-ge v0, p1, :cond_5

    if-gez p2, :cond_4

    move p2, v0

    goto :goto_1

    :cond_4
    neg-int p1, v0

    move p2, p1

    :cond_5
    :goto_1
    invoke-virtual {p0, p2, v2}, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->scroll(II)V

    goto :goto_2

    :cond_6
    iput v2, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->scrollingOffset:I

    iput v1, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->old:I

    iput p1, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->currentItem:I

    invoke-virtual {p0, v1, p1}, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->notifyChangingListeners(II)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_7
    :goto_2
    return-void
.end method

.method public setViewAdapter(Lcom/miui/networkassistant/ui/dialog/wheelview/adapter/WheelViewAdapter;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->viewAdapter:Lcom/miui/networkassistant/ui/dialog/wheelview/adapter/WheelViewAdapter;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->dataObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Lcom/miui/networkassistant/ui/dialog/wheelview/adapter/WheelViewAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    iput-object p1, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->viewAdapter:Lcom/miui/networkassistant/ui/dialog/wheelview/adapter/WheelViewAdapter;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->dataObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Lcom/miui/networkassistant/ui/dialog/wheelview/adapter/WheelViewAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_1
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->invalidateWheel(Z)V

    return-void
.end method

.method public setVisibleItems(I)V
    .locals 0

    iput p1, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->visibleItems:I

    return-void
.end method

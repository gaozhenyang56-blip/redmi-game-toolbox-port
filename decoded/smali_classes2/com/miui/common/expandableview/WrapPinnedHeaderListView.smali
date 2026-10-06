.class public Lcom/miui/common/expandableview/WrapPinnedHeaderListView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private a:Lcom/miui/common/expandableview/PinnedHeaderListView;

.field private b:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/common/expandableview/WrapPinnedHeaderListView;->d(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic a(Lcom/miui/common/expandableview/WrapPinnedHeaderListView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/expandableview/WrapPinnedHeaderListView;->b:Landroid/view/View;

    return-object p0
.end method

.method static synthetic b(Lcom/miui/common/expandableview/WrapPinnedHeaderListView;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/common/expandableview/WrapPinnedHeaderListView;->setPlaceContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic c(Lcom/miui/common/expandableview/WrapPinnedHeaderListView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/common/expandableview/WrapPinnedHeaderListView;->setPlaceViewVisibility(Z)V

    return-void
.end method

.method private d(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    new-instance p2, Lcom/miui/common/expandableview/PinnedHeaderListView;

    invoke-direct {p2, p1}, Lcom/miui/common/expandableview/PinnedHeaderListView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/miui/common/expandableview/WrapPinnedHeaderListView;->a:Lcom/miui/common/expandableview/PinnedHeaderListView;

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance p2, Landroid/widget/FrameLayout;

    invoke-direct {p2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/miui/common/expandableview/WrapPinnedHeaderListView;->b:Landroid/view/View;

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0701ec

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    const/4 p3, -0x1

    invoke-direct {p1, p3, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object p2, p0, Lcom/miui/common/expandableview/WrapPinnedHeaderListView;->b:Landroid/view/View;

    invoke-virtual {p0, p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/miui/common/expandableview/WrapPinnedHeaderListView;->b:Landroid/view/View;

    const-string p2, "#00000000"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p1, p0, Lcom/miui/common/expandableview/WrapPinnedHeaderListView;->b:Landroid/view/View;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object p1, p0, Lcom/miui/common/expandableview/WrapPinnedHeaderListView;->b:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    iget-object p1, p0, Lcom/miui/common/expandableview/WrapPinnedHeaderListView;->b:Landroid/view/View;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/view/View;->setImportantForAccessibility(I)V

    iget-object p1, p0, Lcom/miui/common/expandableview/WrapPinnedHeaderListView;->a:Lcom/miui/common/expandableview/PinnedHeaderListView;

    new-instance p2, Lcom/miui/common/expandableview/WrapPinnedHeaderListView$a;

    invoke-direct {p2, p0}, Lcom/miui/common/expandableview/WrapPinnedHeaderListView$a;-><init>(Lcom/miui/common/expandableview/WrapPinnedHeaderListView;)V

    invoke-virtual {p1, p2}, Lcom/miui/common/expandableview/PinnedHeaderListView;->setOnHeaderViewUpdateListener(Lcom/miui/common/expandableview/PinnedHeaderListView$b;)V

    return-void
.end method

.method private setPlaceContentDescription(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/common/expandableview/WrapPinnedHeaderListView;->b:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setPlaceViewVisibility(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/common/expandableview/WrapPinnedHeaderListView;->b:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/common/expandableview/WrapPinnedHeaderListView;->b:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/common/expandableview/WrapPinnedHeaderListView;->b:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getListView()Lcom/miui/common/expandableview/PinnedHeaderListView;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/expandableview/WrapPinnedHeaderListView;->a:Lcom/miui/common/expandableview/PinnedHeaderListView;

    return-object v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/common/expandableview/WrapPinnedHeaderListView;->a:Lcom/miui/common/expandableview/PinnedHeaderListView;

    invoke-virtual {v0, p1}, Lcom/miui/common/expandableview/PinnedHeaderListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/common/expandableview/WrapPinnedHeaderListView;->a:Lcom/miui/common/expandableview/PinnedHeaderListView;

    invoke-virtual {v0, p1}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/common/expandableview/WrapPinnedHeaderListView;->a:Lcom/miui/common/expandableview/PinnedHeaderListView;

    invoke-virtual {v0, p1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public setPinHeaders(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/common/expandableview/WrapPinnedHeaderListView;->a:Lcom/miui/common/expandableview/PinnedHeaderListView;

    invoke-virtual {v0, p1}, Lcom/miui/common/expandableview/PinnedHeaderListView;->setPinHeaders(Z)V

    return-void
.end method

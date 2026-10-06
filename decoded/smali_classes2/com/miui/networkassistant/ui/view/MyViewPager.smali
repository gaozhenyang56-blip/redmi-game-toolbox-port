.class public Lcom/miui/networkassistant/ui/view/MyViewPager;
.super Landroidx/viewpager/widget/ViewPager;
.source "SourceFile"


# instance fields
.field private current:I

.field private height:I

.field private mChildrenViews:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/networkassistant/ui/view/MyViewPager;->height:I

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/miui/networkassistant/ui/view/MyViewPager;->mChildrenViews:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/networkassistant/ui/view/MyViewPager;->height:I

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/miui/networkassistant/ui/view/MyViewPager;->mChildrenViews:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1

    iget-object p2, p0, Lcom/miui/networkassistant/ui/view/MyViewPager;->mChildrenViews:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result p2

    iget v0, p0, Lcom/miui/networkassistant/ui/view/MyViewPager;->current:I

    if-le p2, v0, :cond_0

    iget-object p2, p0, Lcom/miui/networkassistant/ui/view/MyViewPager;->mChildrenViews:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p2, p1, v0}, Landroid/view/View;->measure(II)V

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    iput p2, p0, Lcom/miui/networkassistant/ui/view/MyViewPager;->height:I

    :cond_0
    iget p2, p0, Lcom/miui/networkassistant/ui/view/MyViewPager;->height:I

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;->onMeasure(II)V

    return-void
.end method

.method public resetHeight(I)V
    .locals 2

    iput p1, p0, Lcom/miui/networkassistant/ui/view/MyViewPager;->current:I

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MyViewPager;->mChildrenViews:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-le v0, p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    if-nez p1, :cond_0

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    iget v1, p0, Lcom/miui/networkassistant/ui/view/MyViewPager;->height:I

    invoke-direct {p1, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/miui/networkassistant/ui/view/MyViewPager;->height:I

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public setObjectForPosition(Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MyViewPager;->mChildrenViews:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

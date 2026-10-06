.class public Lcom/miui/networkassistant/ui/adapter/TabViewAdapter;
.super Landroidx/viewpager/widget/a;
.source "SourceFile"


# instance fields
.field private context:Landroid/content/Context;

.field private myViewPager:Lcom/miui/networkassistant/ui/view/MyViewPager;

.field private titles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private viewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Lcom/miui/networkassistant/ui/view/MyViewPager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/miui/networkassistant/ui/view/MyViewPager;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/viewpager/widget/a;-><init>()V

    iput-object p2, p0, Lcom/miui/networkassistant/ui/adapter/TabViewAdapter;->viewList:Ljava/util/List;

    iput-object p1, p0, Lcom/miui/networkassistant/ui/adapter/TabViewAdapter;->context:Landroid/content/Context;

    iput-object p3, p0, Lcom/miui/networkassistant/ui/adapter/TabViewAdapter;->titles:Ljava/util/List;

    iput-object p4, p0, Lcom/miui/networkassistant/ui/adapter/TabViewAdapter;->myViewPager:Lcom/miui/networkassistant/ui/view/MyViewPager;

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/TabViewAdapter;->viewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/TabViewAdapter;->titles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/TabViewAdapter;->titles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/TabViewAdapter;->titles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/TabViewAdapter;->viewList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/adapter/TabViewAdapter;->myViewPager:Lcom/miui/networkassistant/ui/view/MyViewPager;

    invoke-virtual {v1, v0, p2}, Lcom/miui/networkassistant/ui/view/MyViewPager;->setObjectForPosition(Landroid/view/View;I)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setPageTitle(ILjava/lang/String;)V
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/TabViewAdapter;->titles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/TabViewAdapter;->titles:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/viewpager/widget/a;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.class public Lcd/a$b;
.super Lcom/miui/common/card/BaseViewHolder;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcd/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field b:Lcom/miui/common/customview/AutoScrollViewPager;

.field c:Lcom/miui/privacyapps/view/ViewPagerIndicator;

.field d:Lcd/a$a;

.field e:I

.field f:I

.field g:I

.field h:I

.field i:I

.field j:I

.field k:Lcd/a;

.field l:Lsf/i;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 9

    invoke-direct {p0, p1}, Lcom/miui/common/card/BaseViewHolder;-><init>(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcd/a$b;->a:Landroid/content/Context;

    const v0, 0x7f0b0d8d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/common/customview/AutoScrollViewPager;

    iput-object v0, p0, Lcd/a$b;->b:Lcom/miui/common/customview/AutoScrollViewPager;

    const v0, 0x7f0b056b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/privacyapps/view/ViewPagerIndicator;

    iput-object p1, p0, Lcd/a$b;->c:Lcom/miui/privacyapps/view/ViewPagerIndicator;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/miui/privacyapps/view/ViewPagerIndicator;->setCycle(Z)V

    new-instance p1, Lcd/a$a;

    iget-object v0, p0, Lcd/a$b;->a:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcd/a$a;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcd/a$b;->d:Lcd/a$a;

    iget-object v0, p0, Lcd/a$b;->b:Lcom/miui/common/customview/AutoScrollViewPager;

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/a;)V

    iget-object p1, p0, Lcd/a$b;->b:Lcom/miui/common/customview/AutoScrollViewPager;

    const-wide/16 v0, 0xfa0

    invoke-virtual {p1, v0, v1}, Lcom/miui/common/customview/AutoScrollViewPager;->setInterval(J)V

    iget-object p1, p0, Lcd/a$b;->b:Lcom/miui/common/customview/AutoScrollViewPager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/common/customview/AutoScrollViewPager;->setBorderAnimation(Z)V

    iget-object p1, p0, Lcd/a$b;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0711e6

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcd/a$b;->e:I

    iget-object p1, p0, Lcd/a$b;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0711e3

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcd/a$b;->h:I

    iget-object p1, p0, Lcd/a$b;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07188c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcd/a$b;->j:I

    iget-object p1, p0, Lcd/a$b;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f060c4c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcd/a$b;->f:I

    iget-object p1, p0, Lcd/a$b;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f060c4d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcd/a$b;->g:I

    iget-object p1, p0, Lcd/a$b;->c:Lcom/miui/privacyapps/view/ViewPagerIndicator;

    iget v0, p0, Lcd/a$b;->h:I

    iget v1, p0, Lcd/a$b;->i:I

    iget v2, p0, Lcd/a$b;->j:I

    invoke-virtual {p1, v0, v1, v0, v2}, Lcom/miui/privacyapps/view/ViewPagerIndicator;->d(IIII)V

    iget-object v3, p0, Lcd/a$b;->c:Lcom/miui/privacyapps/view/ViewPagerIndicator;

    iget v6, p0, Lcd/a$b;->e:I

    iget v7, p0, Lcd/a$b;->f:I

    iget v8, p0, Lcd/a$b;->g:I

    const/4 v4, 0x1

    move v5, v6

    invoke-virtual/range {v3 .. v8}, Lcom/miui/privacyapps/view/ViewPagerIndicator;->c(IIIII)V

    return-void
.end method


# virtual methods
.method public bindData(ILjava/lang/Object;)V
    .locals 0

    if-eqz p2, :cond_0

    instance-of p1, p2, Lsf/i;

    if-eqz p1, :cond_0

    check-cast p2, Lsf/i;

    iput-object p2, p0, Lcd/a$b;->l:Lsf/i;

    :cond_0
    return-void
.end method

.method public fillData(Landroid/view/View;Lcom/miui/common/card/models/BaseCardModel;I)V
    .locals 3

    instance-of p1, p2, Lcd/a;

    if-eqz p1, :cond_5

    check-cast p2, Lcd/a;

    iput-object p2, p0, Lcd/a$b;->k:Lcd/a;

    invoke-virtual {p2}, Lcom/miui/common/card/models/FunctionCardModel;->getFuncTopBannerScrollDataList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    iget-object p3, p0, Lcd/a$b;->d:Lcd/a$a;

    invoke-virtual {p3, p1}, Lcd/a$a;->c(Ljava/util/List;)V

    iget-object p3, p0, Lcd/a$b;->d:Lcd/a$a;

    invoke-virtual {p3}, Landroidx/viewpager/widget/a;->notifyDataSetChanged()V

    iget-object p3, p0, Lcd/a$b;->d:Lcd/a$a;

    invoke-virtual {p3}, Lcd/a$a;->getCount()I

    move-result p3

    const/4 v0, 0x1

    if-le p3, v0, :cond_0

    div-int/lit8 v0, p3, 0x2

    div-int/2addr v0, p2

    mul-int/2addr v0, p2

    goto :goto_0

    :cond_0
    move v0, p3

    :goto_0
    iget-object v1, p0, Lcd/a$b;->k:Lcd/a;

    invoke-virtual {v1}, Lcom/miui/common/card/models/BaseCardModel;->getCurrentIndex()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    move v0, v1

    :cond_1
    iget-object v1, p0, Lcd/a$b;->c:Lcom/miui/privacyapps/view/ViewPagerIndicator;

    invoke-virtual {v1, p2, v0}, Lcom/miui/privacyapps/view/ViewPagerIndicator;->e(II)V

    const/4 p2, 0x0

    const/4 v1, 0x2

    if-ge p3, v1, :cond_2

    iget-object p3, p0, Lcd/a$b;->c:Lcom/miui/privacyapps/view/ViewPagerIndicator;

    const/16 v1, 0x8

    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p3, p0, Lcd/a$b;->k:Lcd/a;

    invoke-virtual {p3}, Lcom/miui/common/card/models/BaseCardModel;->isDefaultStatShow()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/common/card/functions/FuncTopBannerScrollData;

    invoke-static {p1}, Lqf/c;->n0(Lcom/miui/common/card/functions/FuncTopBannerScrollData;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcd/a$b;->c:Lcom/miui/privacyapps/view/ViewPagerIndicator;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_1
    iget-object p1, p0, Lcd/a$b;->b:Lcom/miui/common/customview/AutoScrollViewPager;

    invoke-virtual {p1, p0}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$i;)V

    iget-object p1, p0, Lcd/a$b;->b:Lcom/miui/common/customview/AutoScrollViewPager;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    iget-object p1, p0, Lcd/a$b;->b:Lcom/miui/common/customview/AutoScrollViewPager;

    invoke-virtual {p1}, Lcom/miui/common/customview/AutoScrollViewPager;->m()V

    iget-object p1, p0, Lcd/a$b;->k:Lcd/a;

    invoke-virtual {p1}, Lcom/miui/common/card/models/BaseCardModel;->isCanAutoScroll()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcd/a$b;->b:Lcom/miui/common/customview/AutoScrollViewPager;

    const/16 p2, 0x7d0

    invoke-virtual {p1, p2}, Lcom/miui/common/customview/AutoScrollViewPager;->l(I)V

    :cond_4
    iget-object p1, p0, Lcd/a$b;->l:Lsf/i;

    if-eqz p1, :cond_5

    iget-object p2, p0, Lcd/a$b;->b:Lcom/miui/common/customview/AutoScrollViewPager;

    invoke-virtual {p1, p2}, Lsf/i;->f(Lcom/miui/common/customview/AutoScrollViewPager;)V

    :cond_5
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    iget-object v0, p0, Lcd/a$b;->c:Lcom/miui/privacyapps/view/ViewPagerIndicator;

    invoke-virtual {v0, p1}, Lcom/miui/privacyapps/view/ViewPagerIndicator;->setSelected(I)V

    iget-object v0, p0, Lcd/a$b;->k:Lcd/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/miui/common/card/models/BaseCardModel;->setCurrentIndex(I)V

    iget-object v0, p0, Lcd/a$b;->k:Lcd/a;

    invoke-virtual {v0}, Lcom/miui/common/card/models/FunctionCardModel;->getFuncTopBannerScrollDataList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr p1, v1

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lcd/a$b;->k:Lcd/a;

    invoke-virtual {v1}, Lcom/miui/common/card/models/BaseCardModel;->isDefaultStatShow()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/common/card/functions/FuncTopBannerScrollData;

    invoke-static {p1}, Lqf/c;->n0(Lcom/miui/common/card/functions/FuncTopBannerScrollData;)V

    :cond_0
    return-void
.end method

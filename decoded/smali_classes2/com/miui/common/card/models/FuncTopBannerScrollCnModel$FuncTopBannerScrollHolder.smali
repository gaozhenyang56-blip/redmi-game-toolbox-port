.class public Lcom/miui/common/card/models/FuncTopBannerScrollCnModel$FuncTopBannerScrollHolder;
.super Lcom/miui/common/card/BaseViewHolder;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/common/card/models/FuncTopBannerScrollCnModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FuncTopBannerScrollHolder"
.end annotation


# instance fields
.field adapter:Lcom/miui/common/card/models/FuncTopBannerScrollCnModel$MyPagerAdapter;

.field context:Landroid/content/Context;

.field funcTopBannerScrollCnModel:Lcom/miui/common/card/models/FuncTopBannerScrollCnModel;

.field indicatorMarginBottom:I

.field indicatorMarginLeft:I

.field indicatorMarginTop:I

.field indicatorNormalColor:I

.field indicatorSelectedColor:I

.field indicatorWidth:I

.field menuFuncBinder:Lsf/i;

.field viewPager:Lcom/miui/common/customview/AutoScrollViewPager;

.field viewPagerIndicator:Lcom/miui/privacyapps/view/ViewPagerIndicator;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 9

    invoke-direct {p0, p1}, Lcom/miui/common/card/BaseViewHolder;-><init>(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/FuncTopBannerScrollCnModel$FuncTopBannerScrollHolder;->context:Landroid/content/Context;

    const v0, 0x7f0b0d8d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/common/customview/AutoScrollViewPager;

    iput-object v0, p0, Lcom/miui/common/card/models/FuncTopBannerScrollCnModel$FuncTopBannerScrollHolder;->viewPager:Lcom/miui/common/customview/AutoScrollViewPager;

    const v0, 0x7f0b056b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/privacyapps/view/ViewPagerIndicator;

    iput-object p1, p0, Lcom/miui/common/card/models/FuncTopBannerScrollCnModel$FuncTopBannerScrollHolder;->viewPagerIndicator:Lcom/miui/privacyapps/view/ViewPagerIndicator;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/miui/privacyapps/view/ViewPagerIndicator;->setCycle(Z)V

    new-instance p1, Lcom/miui/common/card/models/FuncTopBannerScrollCnModel$MyPagerAdapter;

    iget-object v0, p0, Lcom/miui/common/card/models/FuncTopBannerScrollCnModel$FuncTopBannerScrollHolder;->context:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/miui/common/card/models/FuncTopBannerScrollCnModel$MyPagerAdapter;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/miui/common/card/models/FuncTopBannerScrollCnModel$FuncTopBannerScrollHolder;->adapter:Lcom/miui/common/card/models/FuncTopBannerScrollCnModel$MyPagerAdapter;

    iget-object v0, p0, Lcom/miui/common/card/models/FuncTopBannerScrollCnModel$FuncTopBannerScrollHolder;->viewPager:Lcom/miui/common/customview/AutoScrollViewPager;

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/a;)V

    iget-object p1, p0, Lcom/miui/common/card/models/FuncTopBannerScrollCnModel$FuncTopBannerScrollHolder;->viewPager:Lcom/miui/common/customview/AutoScrollViewPager;

    const-wide/16 v0, 0xfa0

    invoke-virtual {p1, v0, v1}, Lcom/miui/common/customview/AutoScrollViewPager;->setInterval(J)V

    iget-object p1, p0, Lcom/miui/common/card/models/FuncTopBannerScrollCnModel$FuncTopBannerScrollHolder;->viewPager:Lcom/miui/common/customview/AutoScrollViewPager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/common/customview/AutoScrollViewPager;->setBorderAnimation(Z)V

    iget-object p1, p0, Lcom/miui/common/card/models/FuncTopBannerScrollCnModel$FuncTopBannerScrollHolder;->viewPager:Lcom/miui/common/customview/AutoScrollViewPager;

    iget-object v0, p0, Lcom/miui/common/card/models/FuncTopBannerScrollCnModel$FuncTopBannerScrollHolder;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0702c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setPageMargin(I)V

    iget-object p1, p0, Lcom/miui/common/card/models/FuncTopBannerScrollCnModel$FuncTopBannerScrollHolder;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0711e6

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/miui/common/card/models/FuncTopBannerScrollCnModel$FuncTopBannerScrollHolder;->indicatorWidth:I

    iget-object p1, p0, Lcom/miui/common/card/models/FuncTopBannerScrollCnModel$FuncTopBannerScrollHolder;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0711e3

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/miui/common/card/models/FuncTopBannerScrollCnModel$FuncTopBannerScrollHolder;->indicatorMarginLeft:I

    iget-object p1, p0, Lcom/miui/common/card/models/FuncTopBannerScrollCnModel$FuncTopBannerScrollHolder;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f071a45

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/miui/common/card/models/FuncTopBannerScrollCnModel$FuncTopBannerScrollHolder;->indicatorMarginTop:I

    iget-object p1, p0, Lcom/miui/common/card/models/FuncTopBannerScrollCnModel$FuncTopBannerScrollHolder;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f071a46

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/miui/common/card/models/FuncTopBannerScrollCnModel$FuncTopBannerScrollHolder;->indicatorMarginBottom:I

    iget-object p1, p0, Lcom/miui/common/card/models/FuncTopBannerScrollCnModel$FuncTopBannerScrollHolder;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f060565

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/miui/common/card/models/FuncTopBannerScrollCnModel$FuncTopBannerScrollHolder;->indicatorNormalColor:I

    iget-object p1, p0, Lcom/miui/common/card/models/FuncTopBannerScrollCnModel$FuncTopBannerScrollHolder;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f060566

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/miui/common/card/models/FuncTopBannerScrollCnModel$FuncTopBannerScrollHolder;->indicatorSelectedColor:I

    iget-object p1, p0, Lcom/miui/common/card/models/FuncTopBannerScrollCnModel$FuncTopBannerScrollHolder;->viewPagerIndicator:Lcom/miui/privacyapps/view/ViewPagerIndicator;

    iget v0, p0, Lcom/miui/common/card/models/FuncTopBannerScrollCnModel$FuncTopBannerScrollHolder;->indicatorMarginLeft:I

    iget v1, p0, Lcom/miui/common/card/models/FuncTopBannerScrollCnModel$FuncTopBannerScrollHolder;->indicatorMarginTop:I

    iget v2, p0, Lcom/miui/common/card/models/FuncTopBannerScrollCnModel$FuncTopBannerScrollHolder;->indicatorMarginBottom:I

    invoke-virtual {p1, v0, v1, v0, v2}, Lcom/miui/privacyapps/view/ViewPagerIndicator;->d(IIII)V

    iget-object v3, p0, Lcom/miui/common/card/models/FuncTopBannerScrollCnModel$FuncTopBannerScrollHolder;->viewPagerIndicator:Lcom/miui/privacyapps/view/ViewPagerIndicator;

    iget v6, p0, Lcom/miui/common/card/models/FuncTopBannerScrollCnModel$FuncTopBannerScrollHolder;->indicatorWidth:I

    iget v7, p0, Lcom/miui/common/card/models/FuncTopBannerScrollCnModel$FuncTopBannerScrollHolder;->indicatorNormalColor:I

    iget v8, p0, Lcom/miui/common/card/models/FuncTopBannerScrollCnModel$FuncTopBannerScrollHolder;->indicatorSelectedColor:I

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

    iput-object p2, p0, Lcom/miui/common/card/models/FuncTopBannerScrollCnModel$FuncTopBannerScrollHolder;->menuFuncBinder:Lsf/i;

    :cond_0
    return-void
.end method

.method public fillData(Landroid/view/View;Lcom/miui/common/card/models/BaseCardModel;I)V
    .locals 1

    instance-of p1, p2, Lcom/miui/common/card/models/FuncTopBannerScrollCnModel;

    if-eqz p1, :cond_3

    check-cast p2, Lcom/miui/common/card/models/FuncTopBannerScrollCnModel;

    iput-object p2, p0, Lcom/miui/common/card/models/FuncTopBannerScrollCnModel$FuncTopBannerScrollHolder;->funcTopBannerScrollCnModel:Lcom/miui/common/card/models/FuncTopBannerScrollCnModel;

    invoke-virtual {p2}, Lcom/miui/common/card/models/FunctionCardModel;->getFuncTopBannerScrollDataList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    iget-object p3, p0, Lcom/miui/common/card/models/FuncTopBannerScrollCnModel$FuncTopBannerScrollHolder;->adapter:Lcom/miui/common/card/models/FuncTopBannerScrollCnModel$MyPagerAdapter;

    invoke-virtual {p3, p1}, Lcom/miui/common/card/models/FuncTopBannerScrollCnModel$MyPagerAdapter;->setFuncTopBannerScrollDataList(Ljava/util/List;)V

    iget-object p1, p0, Lcom/miui/common/card/models/FuncTopBannerScrollCnModel$FuncTopBannerScrollHolder;->adapter:Lcom/miui/common/card/models/FuncTopBannerScrollCnModel$MyPagerAdapter;

    invoke-virtual {p1}, Landroidx/viewpager/widget/a;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/miui/common/card/models/FuncTopBannerScrollCnModel$FuncTopBannerScrollHolder;->adapter:Lcom/miui/common/card/models/FuncTopBannerScrollCnModel$MyPagerAdapter;

    invoke-virtual {p1}, Lcom/miui/common/card/models/FuncTopBannerScrollCnModel$MyPagerAdapter;->getCount()I

    move-result p1

    const/4 p3, 0x1

    if-le p1, p3, :cond_0

    div-int/lit8 p1, p1, 0x2

    div-int/2addr p1, p2

    mul-int/2addr p1, p2

    :cond_0
    iget-object p3, p0, Lcom/miui/common/card/models/FuncTopBannerScrollCnModel$FuncTopBannerScrollHolder;->funcTopBannerScrollCnModel:Lcom/miui/common/card/models/FuncTopBannerScrollCnModel;

    invoke-virtual {p3}, Lcom/miui/common/card/models/BaseCardModel;->getCurrentIndex()I

    move-result p3

    const/4 v0, -0x1

    if-eq p3, v0, :cond_1

    move p1, p3

    :cond_1
    iget-object p3, p0, Lcom/miui/common/card/models/FuncTopBannerScrollCnModel$FuncTopBannerScrollHolder;->viewPagerIndicator:Lcom/miui/privacyapps/view/ViewPagerIndicator;

    invoke-virtual {p3, p2, p1}, Lcom/miui/privacyapps/view/ViewPagerIndicator;->e(II)V

    iget-object p2, p0, Lcom/miui/common/card/models/FuncTopBannerScrollCnModel$FuncTopBannerScrollHolder;->viewPager:Lcom/miui/common/customview/AutoScrollViewPager;

    invoke-virtual {p2, p0}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$i;)V

    iget-object p2, p0, Lcom/miui/common/card/models/FuncTopBannerScrollCnModel$FuncTopBannerScrollHolder;->viewPager:Lcom/miui/common/customview/AutoScrollViewPager;

    invoke-virtual {p2, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    iget-object p1, p0, Lcom/miui/common/card/models/FuncTopBannerScrollCnModel$FuncTopBannerScrollHolder;->viewPager:Lcom/miui/common/customview/AutoScrollViewPager;

    invoke-virtual {p1}, Lcom/miui/common/customview/AutoScrollViewPager;->m()V

    iget-object p1, p0, Lcom/miui/common/card/models/FuncTopBannerScrollCnModel$FuncTopBannerScrollHolder;->funcTopBannerScrollCnModel:Lcom/miui/common/card/models/FuncTopBannerScrollCnModel;

    invoke-virtual {p1}, Lcom/miui/common/card/models/BaseCardModel;->isCanAutoScroll()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/common/card/models/FuncTopBannerScrollCnModel$FuncTopBannerScrollHolder;->viewPager:Lcom/miui/common/customview/AutoScrollViewPager;

    const/16 p2, 0x7d0

    invoke-virtual {p1, p2}, Lcom/miui/common/customview/AutoScrollViewPager;->l(I)V

    :cond_2
    iget-object p1, p0, Lcom/miui/common/card/models/FuncTopBannerScrollCnModel$FuncTopBannerScrollHolder;->menuFuncBinder:Lsf/i;

    if-eqz p1, :cond_3

    iget-object p2, p0, Lcom/miui/common/card/models/FuncTopBannerScrollCnModel$FuncTopBannerScrollHolder;->viewPager:Lcom/miui/common/customview/AutoScrollViewPager;

    invoke-virtual {p1, p2}, Lsf/i;->f(Lcom/miui/common/customview/AutoScrollViewPager;)V

    :cond_3
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

    iget-object v0, p0, Lcom/miui/common/card/models/FuncTopBannerScrollCnModel$FuncTopBannerScrollHolder;->viewPagerIndicator:Lcom/miui/privacyapps/view/ViewPagerIndicator;

    invoke-virtual {v0, p1}, Lcom/miui/privacyapps/view/ViewPagerIndicator;->setSelected(I)V

    iget-object v0, p0, Lcom/miui/common/card/models/FuncTopBannerScrollCnModel$FuncTopBannerScrollHolder;->funcTopBannerScrollCnModel:Lcom/miui/common/card/models/FuncTopBannerScrollCnModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/miui/common/card/models/BaseCardModel;->setCurrentIndex(I)V

    iget-object v0, p0, Lcom/miui/common/card/models/FuncTopBannerScrollCnModel$FuncTopBannerScrollHolder;->funcTopBannerScrollCnModel:Lcom/miui/common/card/models/FuncTopBannerScrollCnModel;

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

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/common/card/functions/FuncTopBannerScrollData;

    iget-object v0, p0, Lcom/miui/common/card/models/FuncTopBannerScrollCnModel$FuncTopBannerScrollHolder;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lqf/c;->x0(Landroid/content/Context;Lcom/miui/common/card/functions/FuncTopBannerScrollData;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/miui/common/card/functions/FuncTopBannerScrollData;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/common/card/functions/FuncTopBannerScrollData;->getStatKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FuncTopBannerScrollCnModel show "

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

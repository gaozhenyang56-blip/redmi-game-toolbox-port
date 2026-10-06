.class Lcom/miui/common/card/models/FuncTopBannerScrollGlobalModel$MyPagerAdapter;
.super Landroidx/viewpager/widget/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/common/card/models/FuncTopBannerScrollGlobalModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MyPagerAdapter"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private funcTopBannerScrollDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/common/card/functions/FuncTopBannerScrollData;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroidx/viewpager/widget/a;-><init>()V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/FuncTopBannerScrollGlobalModel$MyPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/miui/common/card/models/FuncTopBannerScrollGlobalModel$MyPagerAdapter;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/common/card/models/FuncTopBannerScrollGlobalModel$MyPagerAdapter;Lcom/miui/common/card/functions/FuncTopBannerScrollData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/common/card/models/FuncTopBannerScrollGlobalModel$MyPagerAdapter;->statClick(Lcom/miui/common/card/functions/FuncTopBannerScrollData;)V

    return-void
.end method

.method private statClick(Lcom/miui/common/card/functions/FuncTopBannerScrollData;)V
    .locals 2

    invoke-virtual {p1}, Lcom/miui/common/card/functions/FuncTopBannerScrollData;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/miui/common/card/functions/FuncTopBannerScrollData;->getStatKey()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lqf/c;->v0(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/miui/common/card/functions/FuncTopBannerScrollData;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FuncTopBannerScrollGlobalModel click"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
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
    .locals 2

    iget-object v0, p0, Lcom/miui/common/card/models/FuncTopBannerScrollGlobalModel$MyPagerAdapter;->funcTopBannerScrollDataList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    const/16 v0, 0x3e8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public getFuncTopBannerScrollDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/common/card/functions/FuncTopBannerScrollData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/common/card/models/FuncTopBannerScrollGlobalModel$MyPagerAdapter;->funcTopBannerScrollDataList:Ljava/util/List;

    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 13

    iget-object v0, p0, Lcom/miui/common/card/models/FuncTopBannerScrollGlobalModel$MyPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0e00ef

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b0506

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0b0bc9

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0b0b21

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0b05ea

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v5, 0x7f0b01d8

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v9, v5

    check-cast v9, Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f071ac3

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iget-object v7, p0, Lcom/miui/common/card/models/FuncTopBannerScrollGlobalModel$MyPagerAdapter;->funcTopBannerScrollDataList:Ljava/util/List;

    if-eqz v7, :cond_1

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    rem-int/2addr p2, v7

    if-ge p2, v7, :cond_1

    iget-object v7, p0, Lcom/miui/common/card/models/FuncTopBannerScrollGlobalModel$MyPagerAdapter;->funcTopBannerScrollDataList:Ljava/util/List;

    invoke-interface {v7, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/common/card/functions/FuncTopBannerScrollData;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/miui/common/card/functions/FuncTopBannerScrollData;->getCommonFunction()Lcom/miui/common/card/functions/BaseFunction;

    move-result-object v10

    iget-object v7, p0, Lcom/miui/common/card/models/FuncTopBannerScrollGlobalModel$MyPagerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f060cdc

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setColorFilter(I)V

    invoke-virtual {p2}, Lcom/miui/common/card/functions/FuncTopBannerScrollData;->getIcon()Ljava/lang/String;

    move-result-object v7

    sget-object v11, Lx4/o0;->h:Lrh/c;

    const v12, 0x7f0804c9

    invoke-static {v7, v1, v11, v12}, Lx4/o0;->e(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;I)V

    iget-object v1, p0, Lcom/miui/common/card/models/FuncTopBannerScrollGlobalModel$MyPagerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    invoke-virtual {p2}, Lcom/miui/common/card/functions/FuncTopBannerScrollData;->getImgUrl()Ljava/lang/String;

    move-result-object v1

    sget-object v7, Lx4/o0;->b:Lrh/c;

    const v8, 0x7f080495

    invoke-static {v1, v4, v7, v8}, Lx4/o0;->e(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;I)V

    invoke-virtual {p2}, Lcom/miui/common/card/functions/FuncTopBannerScrollData;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lcom/miui/common/card/functions/FuncTopBannerScrollData;->getSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lcom/miui/common/card/functions/FuncTopBannerScrollData;->getButton()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, -0x1

    :try_start_0
    invoke-virtual {p2}, Lcom/miui/common/card/functions/FuncTopBannerScrollData;->getButtonColor()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move v2, v1

    :goto_0
    if-eq v2, v1, :cond_0

    int-to-float v3, v6

    invoke-static {v3, v2, v2}, Lof/f;->a(FII)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_0
    const v1, 0x7f0807cc

    invoke-virtual {v9, v1}, Landroid/view/View;->setBackgroundResource(I)V

    const v1, 0x7f06014f

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    :goto_1
    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07106c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07106b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v3, v0

    move v6, v8

    invoke-static/range {v3 .. v8}, Lx4/h0;->c(Landroid/view/View;FFFFF)V

    new-instance v1, Lcom/miui/common/card/models/FuncTopBannerScrollGlobalModel$MyPagerAdapter$1;

    invoke-direct {v1, p0, v10, p2}, Lcom/miui/common/card/models/FuncTopBannerScrollGlobalModel$MyPagerAdapter$1;-><init>(Lcom/miui/common/card/models/FuncTopBannerScrollGlobalModel$MyPagerAdapter;Lcom/miui/common/card/functions/BaseFunction;Lcom/miui/common/card/functions/FuncTopBannerScrollData;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v9, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    const/4 p2, 0x0

    invoke-virtual {p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

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

.method public setFuncTopBannerScrollDataList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/common/card/functions/FuncTopBannerScrollData;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/common/card/models/FuncTopBannerScrollGlobalModel$MyPagerAdapter;->funcTopBannerScrollDataList:Ljava/util/List;

    return-void
.end method

.class Lcom/miui/common/card/models/FuncTopBannerScrollCnModel$MyPagerAdapter;
.super Landroidx/viewpager/widget/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/common/card/models/FuncTopBannerScrollCnModel;
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

.field public options:Lrh/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Landroidx/viewpager/widget/a;-><init>()V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/FuncTopBannerScrollCnModel$MyPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/miui/common/card/models/FuncTopBannerScrollCnModel$MyPagerAdapter;->context:Landroid/content/Context;

    new-instance p1, Lrh/c$b;

    invoke-direct {p1}, Lrh/c$b;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lrh/c$b;->x(Z)Lrh/c$b;

    move-result-object p1

    sget-object v1, Lsh/d;->d:Lsh/d;

    invoke-virtual {p1, v1}, Lrh/c$b;->C(Lsh/d;)Lrh/c$b;

    move-result-object p1

    invoke-virtual {p1, v0}, Lrh/c$b;->y(Z)Lrh/c$b;

    move-result-object p1

    invoke-virtual {p1, v0}, Lrh/c$b;->A(Z)Lrh/c$b;

    move-result-object p1

    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v0}, Lrh/c$b;->v(Landroid/graphics/Bitmap$Config;)Lrh/c$b;

    move-result-object p1

    invoke-virtual {p1}, Lrh/c$b;->w()Lrh/c;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/common/card/models/FuncTopBannerScrollCnModel$MyPagerAdapter;->options:Lrh/c;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/common/card/models/FuncTopBannerScrollCnModel$MyPagerAdapter;Lcom/miui/common/card/functions/FuncTopBannerScrollData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/common/card/models/FuncTopBannerScrollCnModel$MyPagerAdapter;->statClick(Lcom/miui/common/card/functions/FuncTopBannerScrollData;)V

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

    const-string v0, "FuncTopBannerScrollCnModel click"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    check-cast p3, Landroid/view/View;

    const p2, 0x7f0b05ea

    invoke-virtual {p3, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-static {p2}, Lcom/miui/common/card/models/FuncTopBannerScrollCnModel;->releaseImageViewResouce(Landroid/widget/ImageView;)V

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 2

    iget-object v0, p0, Lcom/miui/common/card/models/FuncTopBannerScrollCnModel$MyPagerAdapter;->funcTopBannerScrollDataList:Ljava/util/List;

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

    iget-object v0, p0, Lcom/miui/common/card/models/FuncTopBannerScrollCnModel$MyPagerAdapter;->funcTopBannerScrollDataList:Ljava/util/List;

    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 11

    iget-object v0, p0, Lcom/miui/common/card/models/FuncTopBannerScrollCnModel$MyPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0e00ee

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

    const v4, 0x7f0b01d8

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    const v5, 0x7f0b05ea

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/miui/common/card/models/FuncTopBannerScrollCnModel$MyPagerAdapter;->funcTopBannerScrollDataList:Ljava/util/List;

    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    rem-int/2addr p2, v6

    if-ge p2, v6, :cond_0

    iget-object v6, p0, Lcom/miui/common/card/models/FuncTopBannerScrollCnModel$MyPagerAdapter;->funcTopBannerScrollDataList:Ljava/util/List;

    invoke-interface {v6, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/common/card/functions/FuncTopBannerScrollData;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/miui/common/card/functions/FuncTopBannerScrollData;->getCommonFunction()Lcom/miui/common/card/functions/BaseFunction;

    move-result-object v6

    iget-object v7, p0, Lcom/miui/common/card/models/FuncTopBannerScrollCnModel$MyPagerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f060cdc

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setColorFilter(I)V

    invoke-virtual {p2}, Lcom/miui/common/card/functions/FuncTopBannerScrollData;->getIcon()Ljava/lang/String;

    move-result-object v7

    sget-object v9, Lx4/o0;->h:Lrh/c;

    const v10, 0x7f0804c9

    invoke-static {v7, v1, v9, v10}, Lx4/o0;->e(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;I)V

    iget-object v1, p0, Lcom/miui/common/card/models/FuncTopBannerScrollCnModel$MyPagerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    invoke-virtual {p2}, Lcom/miui/common/card/functions/FuncTopBannerScrollData;->getImgUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v7, p0, Lcom/miui/common/card/models/FuncTopBannerScrollCnModel$MyPagerAdapter;->options:Lrh/c;

    const v8, 0x7f080495

    invoke-static {v1, v5, v7, v8}, Lx4/o0;->e(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;I)V

    invoke-virtual {p2}, Lcom/miui/common/card/functions/FuncTopBannerScrollData;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lcom/miui/common/card/functions/FuncTopBannerScrollData;->getSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lcom/miui/common/card/functions/FuncTopBannerScrollData;->getButton()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lx4/h0;->b(Landroid/view/View;)Z

    new-instance v1, Lcom/miui/common/card/models/FuncTopBannerScrollCnModel$MyPagerAdapter$1;

    invoke-direct {v1, p0, v6, p2}, Lcom/miui/common/card/models/FuncTopBannerScrollCnModel$MyPagerAdapter$1;-><init>(Lcom/miui/common/card/models/FuncTopBannerScrollCnModel$MyPagerAdapter;Lcom/miui/common/card/functions/BaseFunction;Lcom/miui/common/card/functions/FuncTopBannerScrollData;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/miui/common/card/models/FuncTopBannerScrollCnModel$MyPagerAdapter$2;

    invoke-direct {v1, p0, v6, p2}, Lcom/miui/common/card/models/FuncTopBannerScrollCnModel$MyPagerAdapter$2;-><init>(Lcom/miui/common/card/models/FuncTopBannerScrollCnModel$MyPagerAdapter;Lcom/miui/common/card/functions/BaseFunction;Lcom/miui/common/card/functions/FuncTopBannerScrollData;)V

    invoke-virtual {v4, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
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

    iput-object p1, p0, Lcom/miui/common/card/models/FuncTopBannerScrollCnModel$MyPagerAdapter;->funcTopBannerScrollDataList:Ljava/util/List;

    return-void
.end method

.class public Lcom/miui/common/card/models/PopularActionCardModel$PopularActionViewHolder;
.super Lcom/miui/common/card/BaseViewHolder;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/common/card/models/PopularActionCardModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PopularActionViewHolder"
.end annotation


# instance fields
.field private final mGridLayout:Landroid/widget/GridLayout;

.field private final mIvSubIconArray:[Landroid/widget/ImageView;

.field private final mSubContainerArray:[Landroid/widget/LinearLayout;

.field private final mSubIconBgArray:[Landroid/view/View;

.field private final mTvSubTitleArray:[Landroid/widget/TextView;

.field private final mTvTitle:Landroid/widget/TextView;

.field private options:Lrh/c;

.field public popularColumCount:I

.field public popularRowCount:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/miui/common/card/BaseViewHolder;-><init>(Landroid/view/View;)V

    new-instance v0, Lrh/c$b;

    invoke-direct {v0}, Lrh/c$b;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lrh/c$b;->E(Z)Lrh/c$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lrh/c$b;->x(Z)Lrh/c$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lrh/c$b;->y(Z)Lrh/c$b;

    move-result-object v0

    sget-object v2, Lsh/d;->d:Lsh/d;

    invoke-virtual {v0, v2}, Lrh/c$b;->C(Lsh/d;)Lrh/c$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lrh/c$b;->A(Z)Lrh/c$b;

    move-result-object v0

    invoke-virtual {v0}, Lrh/c$b;->w()Lrh/c;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionViewHolder;->options:Lrh/c;

    const v0, 0x7f0b0bc9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionViewHolder;->mTvTitle:Landroid/widget/TextView;

    const v0, 0x7f0b08d7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridLayout;

    iput-object v0, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionViewHolder;->mGridLayout:Landroid/widget/GridLayout;

    const/4 v0, 0x4

    new-array v1, v0, [Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionViewHolder;->mSubContainerArray:[Landroid/widget/LinearLayout;

    new-array v1, v0, [Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionViewHolder;->mTvSubTitleArray:[Landroid/widget/TextView;

    new-array v1, v0, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionViewHolder;->mIvSubIconArray:[Landroid/widget/ImageView;

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionViewHolder;->mSubIconBgArray:[Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionViewHolder;->initGridLayout(Landroid/view/View;)V

    return-void
.end method

.method private initGridLayout(Landroid/view/View;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionViewHolder;->initPopularRowColumCount(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionViewHolder;->mGridLayout:Landroid/widget/GridLayout;

    iget v1, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionViewHolder;->popularColumCount:I

    invoke-virtual {v0, v1}, Landroid/widget/GridLayout;->setColumnCount(I)V

    iget-object v0, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionViewHolder;->mGridLayout:Landroid/widget/GridLayout;

    iget v1, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionViewHolder;->popularRowCount:I

    invoke-virtual {v0, v1}, Landroid/widget/GridLayout;->setRowCount(I)V

    iget-object v0, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionViewHolder;->mGridLayout:Landroid/widget/GridLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_2

    iget v2, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionViewHolder;->popularColumCount:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    rem-int/lit8 v2, v1, 0x2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0e0259

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0e025a

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0e0258

    :goto_1
    iget-object v4, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionViewHolder;->mGridLayout:Landroid/widget/GridLayout;

    invoke-virtual {v2, v3, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0b0704

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionViewHolder;->mSubContainerArray:[Landroid/widget/LinearLayout;

    aput-object v3, v4, v1

    iget-object v3, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionViewHolder;->mTvSubTitleArray:[Landroid/widget/TextView;

    const v4, 0x7f0b0cdf

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    aput-object v4, v3, v1

    iget-object v3, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionViewHolder;->mIvSubIconArray:[Landroid/widget/ImageView;

    const v4, 0x7f0b0638

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    aput-object v4, v3, v1

    iget-object v3, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionViewHolder;->mSubIconBgArray:[Landroid/view/View;

    const v4, 0x7f0b0639

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    aput-object v4, v3, v1

    iget-object v3, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionViewHolder;->mGridLayout:Landroid/widget/GridLayout;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private initPopularRowColumCount(Landroid/view/View;)V
    .locals 6

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-static {}, Lx4/t;->r()Z

    move-result v1

    const-string v2, "zh_CN"

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 p1, p1, 0xf

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    if-ne p1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v4

    :goto_1
    const-string v1, "cetus"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    move v4, v5

    :cond_2
    iput v4, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionViewHolder;->popularColumCount:I

    if-eqz p1, :cond_9

    goto :goto_5

    :cond_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz p1, :cond_4

    :goto_2
    move v4, v5

    goto :goto_3

    :cond_4
    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    :goto_3
    iput v4, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionViewHolder;->popularColumCount:I

    if-eqz p1, :cond_6

    :goto_4
    goto :goto_5

    :cond_6
    if-eqz v0, :cond_9

    goto :goto_4

    :cond_7
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    move v4, v5

    :cond_8
    iput v4, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionViewHolder;->popularColumCount:I

    if-eqz p1, :cond_9

    :goto_5
    move v3, v5

    :cond_9
    iput v3, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionViewHolder;->popularRowCount:I

    return-void
.end method


# virtual methods
.method public fillData(Landroid/view/View;Lcom/miui/common/card/models/BaseCardModel;I)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    instance-of p3, p2, Lcom/miui/common/card/models/PopularActionCardModel;

    if-eqz p3, :cond_d

    iget-object p3, p2, Lcom/miui/common/card/models/BaseCardModel;->title:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionViewHolder;->mTvTitle:Landroid/widget/TextView;

    iget-object v0, p2, Lcom/miui/common/card/models/BaseCardModel;->title:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    check-cast p2, Lcom/miui/common/card/models/PopularActionCardModel;

    invoke-static {p2}, Lcom/miui/common/card/models/PopularActionCardModel;->access$000(Lcom/miui/common/card/models/PopularActionCardModel;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    const/4 v0, 0x4

    if-le p3, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    const/4 p3, 0x0

    :goto_1
    if-ge p3, v0, :cond_d

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;

    iget-object v2, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionViewHolder;->mSubContainerArray:[Landroid/widget/LinearLayout;

    aget-object v2, v2, p3

    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    const/16 v3, 0x20

    if-ne v2, v3, :cond_2

    invoke-virtual {v1}, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;->getDarkBgColor()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;->getBrightBgColor()Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    :try_start_0
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f07066c

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    iget-object v2, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionViewHolder;->mSubContainerArray:[Landroid/widget/LinearLayout;

    aget-object v2, v2, p3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    iget-object v2, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionViewHolder;->mTvSubTitleArray:[Landroid/widget/TextView;

    aget-object v2, v2, p3

    invoke-virtual {v1}, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;->getIntroColor()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    sget-boolean v2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const-string v3, ""

    const/4 v4, -0x1

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;->getTitleRes()I

    move-result v2

    if-eq v2, v4, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1}, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;->getTitleRes()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_4
    invoke-virtual {v1}, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;->getTitle()Ljava/lang/String;

    move-result-object v3

    :cond_5
    :goto_3
    iget-object v2, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionViewHolder;->mTvSubTitleArray:[Landroid/widget/TextView;

    aget-object v2, v2, p3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_6
    invoke-virtual {v1}, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v1}, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;->getTitleRes()I

    move-result v2

    if-eq v2, v4, :cond_7

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1}, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;->getTitleRes()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_7
    move-object v2, v3

    goto :goto_4

    :cond_8
    invoke-virtual {v1}, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;->getTitle()Ljava/lang/String;

    move-result-object v2

    :goto_4
    invoke-virtual {v1}, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;->getSummary()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {v1}, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;->getSummaryRes()I

    move-result v5

    if-eq v5, v4, :cond_a

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v1}, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;->getSummaryRes()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_9
    invoke-virtual {v1}, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;->getSummary()Ljava/lang/String;

    move-result-object v3

    :cond_a
    :goto_5
    iget-object v4, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionViewHolder;->mTvSubTitleArray:[Landroid/widget/TextView;

    aget-object v4, v4, p3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_6
    invoke-virtual {v1}, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;->getIconUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionViewHolder;->mIvSubIconArray:[Landroid/widget/ImageView;

    aget-object v2, v2, p3

    invoke-virtual {v1}, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;->getIconRes()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_7

    :cond_b
    invoke-virtual {v1}, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;->getIconUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionViewHolder;->mIvSubIconArray:[Landroid/widget/ImageView;

    aget-object v3, v3, p3

    iget-object v4, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionViewHolder;->options:Lrh/c;

    invoke-static {v2, v3, v4}, Lx4/o0;->d(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;)V

    :goto_7
    sget-boolean v2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionViewHolder;->mSubIconBgArray:[Landroid/view/View;

    aget-object v2, v2, p3

    invoke-virtual {v1}, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;->getIconBgRes()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_c
    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_1

    :cond_d
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;

    invoke-virtual {p1}, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lqf/c;->V0(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lqf/c;->V0(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/miui/common/card/BaseViewHolder;->handler:Landroid/os/Handler;

    const/16 v1, 0x1f5

    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

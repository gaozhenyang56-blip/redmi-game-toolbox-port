.class public Lcom/miui/gamebooster/globalgame/view/GameItemView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field static final TYPE_FULL_ROW:I = 0x1

.field static final TYPE_FULL_ROW_NO_DESC_TRANSPARENT_BG:I = 0x3

.field static final TYPE_FULL_ROW_NO_DESC_WHITE_BG:I = 0x2

.field static final TYPE_GRID_CELL:I


# instance fields
.field private context:Landroid/content/Context;

.field private desc:Landroid/widget/TextView;

.field private icon:Landroid/widget/ImageView;

.field private infoOverlay:Landroid/view/View;

.field private name:Landroid/widget/TextView;

.field private play:Landroid/widget/TextView;

.field private ratingBar:Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;

.field private ratingContainer:Landroid/view/View;

.field private ratingText:Landroid/widget/TextView;

.field private root:Landroid/view/View;

.field type:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/gamebooster/globalgame/view/GameItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/gamebooster/globalgame/view/GameItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lcom/miui/gamebooster/globalgame/view/GameItemView;->context:Landroid/content/Context;

    sget-object p3, Lef/y;->r1:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3, p3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lcom/miui/gamebooster/globalgame/view/GameItemView;->type:I

    const/4 v0, 0x1

    if-eqz p3, :cond_3

    const v1, 0x7f0e0228

    if-eq p3, v0, :cond_2

    const/4 v2, 0x2

    if-eq p3, v2, :cond_1

    const/4 v2, 0x3

    if-eq p3, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p1, v1, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    invoke-direct {p0}, Lcom/miui/gamebooster/globalgame/view/GameItemView;->validView()V

    invoke-direct {p0}, Lcom/miui/gamebooster/globalgame/view/GameItemView;->adjustDescAndMargin()V

    iget-object p1, p0, Lcom/miui/gamebooster/globalgame/view/GameItemView;->name:Landroid/widget/TextView;

    const/4 p3, -0x1

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p1, v1, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    invoke-direct {p0}, Lcom/miui/gamebooster/globalgame/view/GameItemView;->validView()V

    invoke-direct {p0}, Lcom/miui/gamebooster/globalgame/view/GameItemView;->adjustDescAndMargin()V

    const p1, 0x7f080459

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    invoke-virtual {p3, v1, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    invoke-direct {p0}, Lcom/miui/gamebooster/globalgame/view/GameItemView;->validView()V

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/globalgame/view/GameItemView;->adjustTopBottomMargin(Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p3, 0x7f0e0227

    invoke-virtual {p1, p3, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    invoke-direct {p0}, Lcom/miui/gamebooster/globalgame/view/GameItemView;->validView()V

    :goto_0
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private adjustDescAndMargin()V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/globalgame/view/GameItemView;->desc:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/globalgame/view/GameItemView;->ratingContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    mul-int/lit8 v1, v1, 0x5

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method private adjustTopBottomMargin(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/globalgame/view/GameItemView;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f070fe2

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    int-to-float p1, p1

    const v1, 0x3f2b851f    # 0.67f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget-object p1, p0, Lcom/miui/gamebooster/globalgame/view/GameItemView;->icon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/ViewParent;->requestLayout()V

    return-void
.end method

.method private customFullRowDetail(Lcom/miui/gamebooster/globalgame/module/GameListItem;Ljava/lang/String;)V
    .locals 4
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p1}, Lcom/miui/gamebooster/globalgame/module/GameListItem;->getDesc()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/miui/gamebooster/globalgame/view/GameItemView;->type:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/globalgame/view/GameItemView;->desc:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/globalgame/view/GameItemView;->desc:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/miui/gamebooster/globalgame/module/GameListItem;->getDesc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p1}, Lcom/miui/gamebooster/globalgame/module/GameListItem;->getScore()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/globalgame/view/GameItemView;->validRating(Ljava/lang/String;)F

    move-result p1

    iget-object v0, p0, Lcom/miui/gamebooster/globalgame/view/GameItemView;->ratingBar:Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;

    if-eqz v0, :cond_1

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, p1, v3

    invoke-virtual {v0, v3}, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->setRating(F)V

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/globalgame/view/GameItemView;->ratingText:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/globalgame/view/GameItemView;->ratingText:Landroid/widget/TextView;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "%.1f"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object p1, p0, Lcom/miui/gamebooster/globalgame/view/GameItemView;->play:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/gamebooster/globalgame/view/GameItemView;->play:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method private getIconRadius()I
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/globalgame/view/GameItemView;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070fe3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    return v0
.end method

.method private validRating(Ljava/lang/String;)F
    .locals 0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/high16 p1, 0x41200000    # 10.0f

    return p1
.end method

.method private validView()V
    .locals 1

    const v0, 0x7f0b0506

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gamebooster/globalgame/view/GameItemView;->icon:Landroid/widget/ImageView;

    const v0, 0x7f0b07e7

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gamebooster/globalgame/view/GameItemView;->name:Landroid/widget/TextView;

    iget v0, p0, Lcom/miui/gamebooster/globalgame/view/GameItemView;->type:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f0b02fc

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gamebooster/globalgame/view/GameItemView;->desc:Landroid/widget/TextView;

    const v0, 0x7f0b0950

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;

    iput-object v0, p0, Lcom/miui/gamebooster/globalgame/view/GameItemView;->ratingBar:Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;

    const v0, 0x7f0b08cb

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gamebooster/globalgame/view/GameItemView;->play:Landroid/widget/TextView;

    const v0, 0x7f0b0952

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gamebooster/globalgame/view/GameItemView;->ratingText:Landroid/widget/TextView;

    const v0, 0x7f0b0574

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/globalgame/view/GameItemView;->infoOverlay:Landroid/view/View;

    const v0, 0x7f0b09bd

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/globalgame/view/GameItemView;->root:Landroid/view/View;

    const v0, 0x7f0b0951

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/globalgame/view/GameItemView;->ratingContainer:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public update(Lcom/miui/gamebooster/globalgame/module/BannerCardBean;Lcom/miui/gamebooster/globalgame/module/GameListItem;Ljava/lang/String;)V
    .locals 4
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/gamebooster/globalgame/view/GameItemView;->icon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/globalgame/view/GameItemView;->context:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/miui/gamebooster/globalgame/module/GameListItem;->getIcon()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gamebooster/globalgame/view/GameItemView;->icon:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/miui/gamebooster/globalgame/view/GameItemView;->getIconRadius()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gamebooster/globalgame/present/b;->g(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;I)V

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/globalgame/view/GameItemView;->name:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/globalgame/view/GameItemView;->name:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/globalgame/view/GameItemView;->name:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/miui/gamebooster/globalgame/module/GameListItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget v0, p0, Lcom/miui/gamebooster/globalgame/view/GameItemView;->type:I

    if-eqz v0, :cond_3

    invoke-direct {p0, p2, p3}, Lcom/miui/gamebooster/globalgame/view/GameItemView;->customFullRowDetail(Lcom/miui/gamebooster/globalgame/module/GameListItem;Ljava/lang/String;)V

    :cond_3
    iget-object p3, p0, Lcom/miui/gamebooster/globalgame/view/GameItemView;->context:Landroid/content/Context;

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/view/View;

    iget-object v2, p0, Lcom/miui/gamebooster/globalgame/view/GameItemView;->infoOverlay:Landroid/view/View;

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/miui/gamebooster/globalgame/view/GameItemView;->icon:Landroid/widget/ImageView;

    :cond_4
    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/miui/gamebooster/globalgame/view/GameItemView;->name:Landroid/widget/TextView;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v3, p0, Lcom/miui/gamebooster/globalgame/view/GameItemView;->play:Landroid/widget/TextView;

    if-nez v3, :cond_5

    goto :goto_0

    :cond_5
    move-object v2, v3

    :goto_0
    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/miui/gamebooster/globalgame/view/GameItemView;->root:Landroid/view/View;

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/miui/gamebooster/globalgame/view/GameItemView;->icon:Landroid/widget/ImageView;

    :cond_6
    aput-object v2, v0, v1

    invoke-static {p3, p1, p2, v0}, Lcom/miui/gamebooster/globalgame/present/b;->c(Landroid/content/Context;Lcom/miui/gamebooster/globalgame/module/BannerCardBean;Lcom/miui/gamebooster/globalgame/module/GameListItem;[Landroid/view/View;)V

    return-void
.end method

.method public vanishDetail()V
    .locals 3

    iget-object v0, p0, Lcom/miui/gamebooster/globalgame/view/GameItemView;->icon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/globalgame/view/GameItemView;->name:Landroid/widget/TextView;

    const/4 v1, 0x4

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget v0, p0, Lcom/miui/gamebooster/globalgame/view/GameItemView;->type:I

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/gamebooster/globalgame/view/GameItemView;->desc:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/miui/gamebooster/globalgame/view/GameItemView;->ratingBar:Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->setRating(F)V

    :cond_3
    iget-object v0, p0, Lcom/miui/gamebooster/globalgame/view/GameItemView;->play:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    return-void
.end method

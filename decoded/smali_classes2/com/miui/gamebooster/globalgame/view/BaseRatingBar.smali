.class public Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gamebooster/globalgame/view/BaseRatingBar$a;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "SimpleRatingBar"


# instance fields
.field private mClearRatingEnabled:Z

.field private mEmptyDrawable:Landroid/graphics/drawable/Drawable;

.field private mFilledDrawable:Landroid/graphics/drawable/Drawable;

.field private mIsClickable:Z

.field private mIsIndicator:Z

.field private mIsScrollable:Z

.field private mMinimumStars:F

.field private mNumStars:I

.field private mOnRatingChangeListener:Lcom/miui/gamebooster/globalgame/view/BaseRatingBar$a;

.field private mPadding:I

.field protected mPartialViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/gamebooster/globalgame/view/b;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviousRating:F

.field private mRating:F

.field private mStarHeight:I

.field private mStarWidth:I

.field private mStartX:F

.field private mStartY:F

.field private mStepSize:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p3, 0x14

    iput p3, p0, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->mPadding:I

    const/4 p3, 0x0

    iput p3, p0, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->mMinimumStars:F

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->mRating:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->mStepSize:F

    iput p3, p0, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->mPreviousRating:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->mIsIndicator:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->mIsScrollable:Z

    iput-boolean v0, p0, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->mIsClickable:Z

    iput-boolean v0, p0, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->mClearRatingEnabled:Z

    sget-object v0, Lef/y;->J:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 v0, 0x7

    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    invoke-direct {p0, p2, p1}, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->initParamsValue(Landroid/content/res/TypedArray;Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->verifyParamsValue()V

    invoke-direct {p0}, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->initRatingView()V

    invoke-virtual {p0, p3}, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->setRating(F)V

    return-void
.end method

.method private getPartialView(IIIILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/miui/gamebooster/globalgame/view/b;
    .locals 7

    new-instance v6, Lcom/miui/gamebooster/globalgame/view/b;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v0, v6

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/miui/gamebooster/globalgame/view/b;-><init>(Landroid/content/Context;IIII)V

    invoke-virtual {v6, p5}, Lcom/miui/gamebooster/globalgame/view/b;->setFilledDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v6, p6}, Lcom/miui/gamebooster/globalgame/view/b;->setEmptyDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object v6
.end method

.method private handleClickEvent(F)V
    .locals 3

    iget-object v0, p0, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->mPartialViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gamebooster/globalgame/view/b;

    invoke-direct {p0, p1, v1}, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->isPositionInRatingView(FLandroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->mStepSize:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    goto :goto_1

    :cond_1
    invoke-static {v1, v0, p1}, Lcom/miui/gamebooster/globalgame/view/c;->a(Lcom/miui/gamebooster/globalgame/view/b;FF)F

    move-result p1

    :goto_1
    iget v0, p0, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->mPreviousRating:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->isClearRatingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget p1, p0, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->mMinimumStars:F

    :cond_2
    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->setRating(F)V

    :cond_3
    return-void
.end method

.method private handleMoveEvent(F)V
    .locals 5

    iget-object v0, p0, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->mPartialViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gamebooster/globalgame/view/b;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x41200000    # 10.0f

    div-float/2addr v2, v3

    iget v3, p0, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->mMinimumStars:F

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    cmpg-float v2, p1, v2

    if-gez v2, :cond_1

    iget p1, p0, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->mMinimumStars:F

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->setRating(F)V

    return-void

    :cond_1
    invoke-direct {p0, p1, v1}, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->isPositionInRatingView(FLandroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->mStepSize:F

    invoke-static {v1, v2, p1}, Lcom/miui/gamebooster/globalgame/view/c;->a(Lcom/miui/gamebooster/globalgame/view/b;FF)F

    move-result v1

    iget v2, p0, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->mRating:F

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->setRating(F)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private initParamsValue(Landroid/content/res/TypedArray;Landroid/content/Context;)V
    .locals 5

    iget v0, p0, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->mNumStars:I

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->mNumStars:I

    iget v0, p0, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->mStepSize:F

    const/16 v1, 0xc

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->mStepSize:F

    iget v0, p0, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->mMinimumStars:F

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->mMinimumStars:F

    iget v0, p0, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->mPadding:I

    const/16 v1, 0xa

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->mPadding:I

    const/16 v0, 0xb

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->mStarWidth:I

    const/16 v0, 0x9

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->mStarHeight:I

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v4

    :goto_0
    iput-object v0, p0, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->mEmptyDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :cond_1
    iput-object v4, p0, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->mFilledDrawable:Landroid/graphics/drawable/Drawable;

    const/4 p2, 0x4

    iget-boolean v0, p0, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->mIsIndicator:Z

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->mIsIndicator:Z

    const/16 p2, 0x8

    iget-boolean v0, p0, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->mIsScrollable:Z

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->mIsScrollable:Z

    const/4 p2, 0x1

    iget-boolean v0, p0, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->mIsClickable:Z

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->mIsClickable:Z

    iget-boolean p2, p0, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->mClearRatingEnabled:Z

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->mClearRatingEnabled:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private initRatingView()V
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->mPartialViews:Ljava/util/List;

    const/4 v0, 0x1

    :goto_0
    iget v1, p0, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->mNumStars:I

    if-gt v0, v1, :cond_0

    iget v3, p0, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->mStarWidth:I

    iget v4, p0, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->mStarHeight:I

    iget v5, p0, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->mPadding:I

    iget-object v6, p0, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->mFilledDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->mEmptyDrawable:Landroid/graphics/drawable/Drawable;

    move-object v1, p0

    move v2, v0

    invoke-direct/range {v1 .. v7}, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->getPartialView(IIIILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/miui/gamebooster/globalgame/view/b;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->mPartialViews:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private isPositionInRatingView(FLandroid/view/View;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result p2

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private verifyParamsValue()V
    .locals 3

    iget v0, p0, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->mNumStars:I

    if-gtz v0, :cond_0

    const/4 v0, 0x5

    iput v0, p0, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->mNumStars:I

    :cond_0
    iget v0, p0, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->mPadding:I

    if-gez v0, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->mPadding:I

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->mEmptyDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080772

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->mEmptyDrawable:Landroid/graphics/drawable/Drawable;

    :cond_2
    iget-object v0, p0, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->mFilledDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080773

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->mFilledDrawable:Landroid/graphics/drawable/Drawable;

    :cond_3
    iget v0, p0, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->mStepSize:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    if-lez v2, :cond_4

    :goto_0
    iput v1, p0, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->mStepSize:F

    goto :goto_1

    :cond_4
    const v1, 0x3dcccccd    # 0.1f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5

    goto :goto_0

    :cond_5
    :goto_1
    iget v0, p0, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->mMinimumStars:F

    iget v1, p0, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->mNumStars:I

    iget v2, p0, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->mStepSize:F

    invoke-static {v0, v1, v2}, Lcom/miui/gamebooster/globalgame/view/c;->c(FIF)F

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->mMinimumStars:F

    return-void
.end method


# virtual methods
.method protected emptyRatingBar()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->fillRatingBar(F)V

    return-void
.end method

.method protected fillRatingBar(F)V
    .locals 7

    iget-object v0, p0, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->mPartialViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gamebooster/globalgame/view/b;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    float-to-double v3, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    int-to-double v5, v2

    cmpl-double v2, v5, v3

    if-lez v2, :cond_0

    invoke-virtual {v1}, Lcom/miui/gamebooster/globalgame/view/b;->b()V

    goto :goto_0

    :cond_0
    if-nez v2, :cond_1

    invoke-virtual {v1, p1}, Lcom/miui/gamebooster/globalgame/view/b;->setPartialFilled(F)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/miui/gamebooster/globalgame/view/b;->c()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public getNumStars()I
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->mNumStars:I

    return v0
.end method

.method public getRating()F
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->mRating:F

    return v0
.end method

.method public getStarHeight()I
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->mStarHeight:I

    return v0
.end method

.method public getStarPadding()I
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->mPadding:I

    return v0
.end method

.method public getStarWidth()I
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->mStarWidth:I

    return v0
.end method

.method public getStepSize()F
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->mStepSize:F

    return v0
.end method

.method public isClearRatingEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->mClearRatingEnabled:Z

    return v0
.end method

.method public isClickable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->mIsClickable:Z

    return v0
.end method

.method public isIndicator()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->mIsIndicator:Z

    return v0
.end method

.method public isScrollable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->mIsScrollable:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    check-cast p1, Lcom/miui/gamebooster/globalgame/view/SavedState;

    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    invoke-virtual {p1}, Lcom/miui/gamebooster/globalgame/view/SavedState;->getRating()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->setRating(F)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/miui/gamebooster/globalgame/view/SavedState;

    invoke-direct {v1, v0}, Lcom/miui/gamebooster/globalgame/view/SavedState;-><init>(Landroid/os/Parcelable;)V

    iget v0, p0, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->mRating:F

    invoke-virtual {v1, v0}, Lcom/miui/gamebooster/globalgame/view/SavedState;->setRating(F)V

    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p0}, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->isIndicator()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_6

    if-eq v3, v4, :cond_3

    const/4 p1, 0x2

    if-eq v3, p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->isScrollable()Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    invoke-direct {p0, v0}, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->handleMoveEvent(F)V

    goto :goto_1

    :cond_3
    iget v2, p0, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->mStartX:F

    iget v3, p0, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->mStartY:F

    invoke-static {v2, v3, p1}, Lcom/miui/gamebooster/globalgame/view/c;->d(FFLandroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->isClickable()Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    invoke-direct {p0, v0}, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->handleClickEvent(F)V

    goto :goto_1

    :cond_5
    :goto_0
    return v1

    :cond_6
    iput v0, p0, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->mStartX:F

    iput v2, p0, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->mStartY:F

    iget p1, p0, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->mRating:F

    iput p1, p0, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->mPreviousRating:F

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    return v4
.end method

.method public setClearRatingEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->mClearRatingEnabled:Z

    return-void
.end method

.method public setClickable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->mIsClickable:Z

    return-void
.end method

.method public setEmptyDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iput-object p1, p0, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->mEmptyDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->mPartialViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gamebooster/globalgame/view/b;

    invoke-virtual {v1, p1}, Lcom/miui/gamebooster/globalgame/view/b;->setEmptyDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setEmptyDrawableRes(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->setEmptyDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setFilledDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iput-object p1, p0, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->mFilledDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->mPartialViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gamebooster/globalgame/view/b;

    invoke-virtual {v1, p1}, Lcom/miui/gamebooster/globalgame/view/b;->setFilledDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setFilledDrawableRes(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->setFilledDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setIsIndicator(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->mIsIndicator:Z

    return-void
.end method

.method public setMinimumStars(F)V
    .locals 2
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
        .end annotation
    .end param

    iget v0, p0, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->mNumStars:I

    iget v1, p0, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->mStepSize:F

    invoke-static {p1, v0, v1}, Lcom/miui/gamebooster/globalgame/view/c;->c(FIF)F

    move-result p1

    iput p1, p0, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->mMinimumStars:F

    return-void
.end method

.method public setNumStars(I)V
    .locals 1

    if-gtz p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->mPartialViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    iput p1, p0, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->mNumStars:I

    invoke-direct {p0}, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->initRatingView()V

    return-void
.end method

.method public setOnRatingChangeListener(Lcom/miui/gamebooster/globalgame/view/BaseRatingBar$a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->mOnRatingChangeListener:Lcom/miui/gamebooster/globalgame/view/BaseRatingBar$a;

    return-void
.end method

.method public setRating(F)V
    .locals 2

    iget v0, p0, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->mNumStars:I

    int-to-float v1, v0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    int-to-float p1, v0

    :cond_0
    iget v0, p0, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->mMinimumStars:F

    cmpg-float v1, p1, v0

    if-gez v1, :cond_1

    move p1, v0

    :cond_1
    iget v0, p0, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->mRating:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_2

    return-void

    :cond_2
    iput p1, p0, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->mRating:F

    iget-object v0, p0, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->mOnRatingChangeListener:Lcom/miui/gamebooster/globalgame/view/BaseRatingBar$a;

    if-eqz v0, :cond_3

    invoke-interface {v0, p0, p1}, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar$a;->a(Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;F)V

    :cond_3
    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->fillRatingBar(F)V

    return-void
.end method

.method public setScrollable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->mIsScrollable:Z

    return-void
.end method

.method public setStarHeight(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    iput p1, p0, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->mStarHeight:I

    iget-object v0, p0, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->mPartialViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gamebooster/globalgame/view/b;

    invoke-virtual {v1, p1}, Lcom/miui/gamebooster/globalgame/view/b;->setStarHeight(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setStarPadding(I)V
    .locals 2

    if-gez p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->mPadding:I

    iget-object p1, p0, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->mPartialViews:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/globalgame/view/b;

    iget v1, p0, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->mPadding:I

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setStarWidth(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    iput p1, p0, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->mStarWidth:I

    iget-object v0, p0, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->mPartialViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gamebooster/globalgame/view/b;

    invoke-virtual {v1, p1}, Lcom/miui/gamebooster/globalgame/view/b;->setStarWidth(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setStepSize(F)V
    .locals 0
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.1
            to = 1.0
        .end annotation
    .end param

    iput p1, p0, Lcom/miui/gamebooster/globalgame/view/BaseRatingBar;->mStepSize:F

    return-void
.end method

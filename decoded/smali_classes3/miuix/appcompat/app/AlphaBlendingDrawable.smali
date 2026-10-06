.class public Lmiuix/appcompat/app/AlphaBlendingDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Lmiuix/animation/styles/AlphaBlendingStateEffect$AlphaObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/app/AlphaBlendingDrawable$AlphaBlendingState;
    }
.end annotation


# static fields
.field private static final USE_FOLME:Z


# instance fields
.field private mActivatedAlpha:F

.field protected mAllRadii:[F

.field private mCheckedAlpha:F

.field private mFocusedAlpha:F

.field private mHoveredAlpha:F

.field private mHoveredCheckedAlpha:F

.field private mInsetB:I

.field private mInsetL:I

.field private mInsetR:I

.field private mInsetT:I

.field private mNormalAlpha:F

.field private final mPaint:Landroid/graphics/Paint;

.field private mPressedAlpha:F

.field private mRadius:I

.field protected final mRect:Landroid/graphics/RectF;

.field private mState:Lmiuix/appcompat/app/AlphaBlendingDrawable$AlphaBlendingState;

.field private mStateEffect:Lmiuix/animation/styles/AlphaBlendingStateEffect;

.field private mTintColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lpl/f;->a()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->USE_FOLME:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mRect:Landroid/graphics/RectF;

    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mAllRadii:[F

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mPaint:Landroid/graphics/Paint;

    new-instance v0, Lmiuix/animation/styles/AlphaBlendingStateEffect;

    invoke-direct {v0, p0}, Lmiuix/animation/styles/AlphaBlendingStateEffect;-><init>(Lmiuix/animation/styles/AlphaBlendingStateEffect$AlphaObserver;)V

    iput-object v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mStateEffect:Lmiuix/animation/styles/AlphaBlendingStateEffect;

    sget-boolean v1, Lmiuix/appcompat/app/AlphaBlendingDrawable;->USE_FOLME:Z

    invoke-virtual {v0, v1}, Lmiuix/animation/styles/DrawableStateEffect;->setEnableAnim(Z)V

    new-instance v0, Lmiuix/appcompat/app/AlphaBlendingDrawable$AlphaBlendingState;

    invoke-direct {v0}, Lmiuix/appcompat/app/AlphaBlendingDrawable$AlphaBlendingState;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mState:Lmiuix/appcompat/app/AlphaBlendingDrawable$AlphaBlendingState;

    return-void
.end method

.method constructor <init>(Lmiuix/appcompat/app/AlphaBlendingDrawable$AlphaBlendingState;Landroid/content/res/Resources;)V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mRect:Landroid/graphics/RectF;

    const/16 p2, 0x8

    new-array p2, p2, [F

    iput-object p2, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mAllRadii:[F

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mPaint:Landroid/graphics/Paint;

    new-instance p2, Lmiuix/animation/styles/AlphaBlendingStateEffect;

    invoke-direct {p2, p0}, Lmiuix/animation/styles/AlphaBlendingStateEffect;-><init>(Lmiuix/animation/styles/AlphaBlendingStateEffect$AlphaObserver;)V

    iput-object p2, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mStateEffect:Lmiuix/animation/styles/AlphaBlendingStateEffect;

    sget-boolean v0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->USE_FOLME:Z

    invoke-virtual {p2, v0}, Lmiuix/animation/styles/DrawableStateEffect;->setEnableAnim(Z)V

    iget p2, p1, Lmiuix/appcompat/app/AlphaBlendingDrawable$AlphaBlendingState;->mTintColor:I

    iput p2, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mTintColor:I

    iget p2, p1, Lmiuix/appcompat/app/AlphaBlendingDrawable$AlphaBlendingState;->mRadius:I

    iput p2, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mRadius:I

    iget p2, p1, Lmiuix/appcompat/app/AlphaBlendingDrawable$AlphaBlendingState;->mNormalAlpha:F

    iput p2, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mNormalAlpha:F

    iget p2, p1, Lmiuix/appcompat/app/AlphaBlendingDrawable$AlphaBlendingState;->mPressedAlpha:F

    iput p2, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mPressedAlpha:F

    iget p2, p1, Lmiuix/appcompat/app/AlphaBlendingDrawable$AlphaBlendingState;->mHoveredAlpha:F

    iput p2, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mHoveredAlpha:F

    iget p2, p1, Lmiuix/appcompat/app/AlphaBlendingDrawable$AlphaBlendingState;->mFocusedAlpha:F

    iput p2, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mFocusedAlpha:F

    iget p2, p1, Lmiuix/appcompat/app/AlphaBlendingDrawable$AlphaBlendingState;->mActivatedAlpha:F

    iput p2, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mActivatedAlpha:F

    iget p2, p1, Lmiuix/appcompat/app/AlphaBlendingDrawable$AlphaBlendingState;->mCheckedAlpha:F

    iput p2, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mCheckedAlpha:F

    iget p1, p1, Lmiuix/appcompat/app/AlphaBlendingDrawable$AlphaBlendingState;->mHoveredCheckedAlpha:F

    iput p1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mHoveredCheckedAlpha:F

    new-instance p1, Lmiuix/appcompat/app/AlphaBlendingDrawable$AlphaBlendingState;

    invoke-direct {p1}, Lmiuix/appcompat/app/AlphaBlendingDrawable$AlphaBlendingState;-><init>()V

    iput-object p1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mState:Lmiuix/appcompat/app/AlphaBlendingDrawable$AlphaBlendingState;

    invoke-direct {p0}, Lmiuix/appcompat/app/AlphaBlendingDrawable;->updateLocalState()V

    invoke-direct {p0}, Lmiuix/appcompat/app/AlphaBlendingDrawable;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    iget-object v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mTintColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mStateEffect:Lmiuix/animation/styles/AlphaBlendingStateEffect;

    iget v1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mNormalAlpha:F

    iput v1, v0, Lmiuix/animation/styles/AlphaBlendingStateEffect;->normalAlpha:F

    iget v1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mPressedAlpha:F

    iput v1, v0, Lmiuix/animation/styles/AlphaBlendingStateEffect;->pressedAlpha:F

    iget v1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mHoveredAlpha:F

    iput v1, v0, Lmiuix/animation/styles/AlphaBlendingStateEffect;->hoveredAlpha:F

    iget v1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mFocusedAlpha:F

    iput v1, v0, Lmiuix/animation/styles/AlphaBlendingStateEffect;->focusedAlpha:F

    iget v1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mCheckedAlpha:F

    iput v1, v0, Lmiuix/animation/styles/AlphaBlendingStateEffect;->checkedAlpha:F

    iget v1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mActivatedAlpha:F

    iput v1, v0, Lmiuix/animation/styles/AlphaBlendingStateEffect;->activatedAlpha:F

    iget v1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mHoveredCheckedAlpha:F

    iput v1, v0, Lmiuix/animation/styles/AlphaBlendingStateEffect;->hoveredCheckedAlpha:F

    invoke-virtual {v0}, Lmiuix/animation/styles/AlphaBlendingStateEffect;->initStates()V

    return-void
.end method

.method private updateLocalState()V
    .locals 2

    iget-object v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mState:Lmiuix/appcompat/app/AlphaBlendingDrawable$AlphaBlendingState;

    iget v1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mTintColor:I

    iput v1, v0, Lmiuix/appcompat/app/AlphaBlendingDrawable$AlphaBlendingState;->mTintColor:I

    iget v1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mRadius:I

    iput v1, v0, Lmiuix/appcompat/app/AlphaBlendingDrawable$AlphaBlendingState;->mRadius:I

    iget v1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mNormalAlpha:F

    iput v1, v0, Lmiuix/appcompat/app/AlphaBlendingDrawable$AlphaBlendingState;->mNormalAlpha:F

    iget v1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mPressedAlpha:F

    iput v1, v0, Lmiuix/appcompat/app/AlphaBlendingDrawable$AlphaBlendingState;->mPressedAlpha:F

    iget v1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mHoveredAlpha:F

    iput v1, v0, Lmiuix/appcompat/app/AlphaBlendingDrawable$AlphaBlendingState;->mHoveredAlpha:F

    iget v1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mFocusedAlpha:F

    iput v1, v0, Lmiuix/appcompat/app/AlphaBlendingDrawable$AlphaBlendingState;->mFocusedAlpha:F

    iget v1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mActivatedAlpha:F

    iput v1, v0, Lmiuix/appcompat/app/AlphaBlendingDrawable$AlphaBlendingState;->mActivatedAlpha:F

    iget v1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mCheckedAlpha:F

    iput v1, v0, Lmiuix/appcompat/app/AlphaBlendingDrawable$AlphaBlendingState;->mCheckedAlpha:F

    iget v1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mHoveredCheckedAlpha:F

    iput v1, v0, Lmiuix/appcompat/app/AlphaBlendingDrawable$AlphaBlendingState;->mHoveredCheckedAlpha:F

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mRect:Landroid/graphics/RectF;

    iget v1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mRadius:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object v3, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mState:Lmiuix/appcompat/app/AlphaBlendingDrawable$AlphaBlendingState;

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    const/4 p2, 0x0

    if-eqz p4, :cond_0

    sget-object p1, Lmiuix/appcompat/R$styleable;->StateTransitionDrawable:[I

    invoke-virtual {p4, p3, p1, p2, p2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object p4, Lmiuix/appcompat/R$styleable;->StateTransitionDrawable:[I

    invoke-virtual {p1, p3, p4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    :goto_0
    sget p3, Lmiuix/appcompat/R$styleable;->StateTransitionDrawable_tintColor:I

    const/high16 p4, -0x1000000

    invoke-virtual {p1, p3, p4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mTintColor:I

    sget p3, Lmiuix/appcompat/R$styleable;->StateTransitionDrawable_tintRadius:I

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mRadius:I

    sget p3, Lmiuix/appcompat/R$styleable;->StateTransitionDrawable_normalAlpha:I

    const/4 p4, 0x0

    invoke-virtual {p1, p3, p4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mNormalAlpha:F

    sget p3, Lmiuix/appcompat/R$styleable;->StateTransitionDrawable_pressedAlpha:I

    invoke-virtual {p1, p3, p4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mPressedAlpha:F

    sget p3, Lmiuix/appcompat/R$styleable;->StateTransitionDrawable_hoveredAlpha:I

    invoke-virtual {p1, p3, p4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mHoveredAlpha:F

    sget v0, Lmiuix/appcompat/R$styleable;->StateTransitionDrawable_focusedAlpha:I

    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mFocusedAlpha:F

    sget p3, Lmiuix/appcompat/R$styleable;->StateTransitionDrawable_activatedAlpha:I

    invoke-virtual {p1, p3, p4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mActivatedAlpha:F

    sget p3, Lmiuix/appcompat/R$styleable;->StateTransitionDrawable_checkedAlpha:I

    invoke-virtual {p1, p3, p4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mCheckedAlpha:F

    sget p3, Lmiuix/appcompat/R$styleable;->StateTransitionDrawable_hoveredCheckedAlpha:I

    invoke-virtual {p1, p3, p4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mHoveredCheckedAlpha:F

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const/16 p1, 0x8

    new-array p1, p1, [F

    iget p3, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mRadius:I

    int-to-float p4, p3

    aput p4, p1, p2

    const/4 p2, 0x1

    int-to-float p4, p3

    aput p4, p1, p2

    const/4 p2, 0x2

    int-to-float p4, p3

    aput p4, p1, p2

    const/4 p2, 0x3

    int-to-float p4, p3

    aput p4, p1, p2

    const/4 p2, 0x4

    int-to-float p4, p3

    aput p4, p1, p2

    const/4 p2, 0x5

    int-to-float p4, p3

    aput p4, p1, p2

    const/4 p2, 0x6

    int-to-float p4, p3

    aput p4, p1, p2

    const/4 p2, 0x7

    int-to-float p3, p3

    aput p3, p1, p2

    iput-object p1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mAllRadii:[F

    invoke-direct {p0}, Lmiuix/appcompat/app/AlphaBlendingDrawable;->init()V

    invoke-direct {p0}, Lmiuix/appcompat/app/AlphaBlendingDrawable;->updateLocalState()V

    return-void
.end method

.method public isStateful()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public jumpToCurrentState()V
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mStateEffect:Lmiuix/animation/styles/AlphaBlendingStateEffect;

    invoke-virtual {v0}, Lmiuix/animation/styles/AlphaBlendingStateEffect;->jumpToCurrentState()V

    return-void
.end method

.method public onAlphaChanged(F)V
    .locals 2

    iget-object v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 2
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mRect:Landroid/graphics/RectF;

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mInsetL:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->left:F

    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mInsetT:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->top:F

    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mInsetR:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->right:F

    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iget v1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mInsetB:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method protected onStateChange([I)Z
    .locals 1
    .param p1    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mStateEffect:Lmiuix/animation/styles/AlphaBlendingStateEffect;

    invoke-virtual {v0, p1}, Lmiuix/animation/styles/DrawableStateEffect;->onStateChange([I)Z

    move-result p1

    return p1
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public setInset(IIII)V
    .locals 0

    iput p1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mInsetL:I

    iput p2, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mInsetT:I

    iput p3, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mInsetR:I

    iput p4, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mInsetB:I

    return-void
.end method

.method public setRadius(I)V
    .locals 1

    iget v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mRadius:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mRadius:I

    iget-object v0, p0, Lmiuix/appcompat/app/AlphaBlendingDrawable;->mState:Lmiuix/appcompat/app/AlphaBlendingDrawable$AlphaBlendingState;

    iput p1, v0, Lmiuix/appcompat/app/AlphaBlendingDrawable$AlphaBlendingState;->mRadius:I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

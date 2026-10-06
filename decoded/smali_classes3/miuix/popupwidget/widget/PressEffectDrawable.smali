.class public Lmiuix/popupwidget/widget/PressEffectDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/popupwidget/widget/PressEffectDrawable$PressEffectState;
    }
.end annotation


# static fields
.field private static final ACTIVATE_ENTER_CONFIG:Lmiuix/animation/base/AnimConfig;

.field private static final ACTIVATE_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

.field private static final ALPHA_F:Ljava/lang/String; = "alphaF"

.field private static final HOVER_ENTER_CONFIG:Lmiuix/animation/base/AnimConfig;

.field private static final HOVER_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

.field private static final PRESS_ENTER_CONFIG:Lmiuix/animation/base/AnimConfig;

.field private static final PRESS_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

.field private static final STATE_ACTIVATED:[I

.field private static final STATE_DRAG_HOVERED:[I

.field private static final STATE_HOVERED:[I

.field private static final STATE_HOVERED_ACTIVATED:[I

.field private static final STATE_PRESSED:[I

.field private static final STATE_SELECTED:[I

.field private static final TAG:Ljava/lang/String; = "StateTransitionDrawable"

.field private static final USE_FOLME:Z


# instance fields
.field private mActivated:Z

.field private mActivatedAlpha:F

.field private mActivatedState:Lmiuix/animation/controller/AnimState;

.field private mHovered:Z

.field private mHoveredActivatedAlpha:F

.field private mHoveredActivatedState:Lmiuix/animation/controller/AnimState;

.field private mHoveredAlpha:F

.field private mHoveredState:Lmiuix/animation/controller/AnimState;

.field private mInsetB:I

.field private mInsetL:I

.field private mInsetR:I

.field private mInsetT:I

.field private mNormalAlpha:F

.field private mNormalState:Lmiuix/animation/controller/AnimState;

.field private final mPaint:Landroid/graphics/Paint;

.field private mPressed:Z

.field private mPressedAlpha:F

.field private mPressedState:Lmiuix/animation/controller/AnimState;

.field private final mRect:Landroid/graphics/RectF;

.field private mState:Lmiuix/popupwidget/widget/PressEffectDrawable$PressEffectState;

.field private mStyle:Lmiuix/animation/IStateStyle;

.field private mTintColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x10100a7

    const/4 v3, 0x0

    aput v2, v1, v3

    sput-object v1, Lmiuix/popupwidget/widget/PressEffectDrawable;->STATE_PRESSED:[I

    new-array v1, v0, [I

    const v2, 0x1010369

    aput v2, v1, v3

    sput-object v1, Lmiuix/popupwidget/widget/PressEffectDrawable;->STATE_DRAG_HOVERED:[I

    new-array v1, v0, [I

    const v2, 0x10100a1

    aput v2, v1, v3

    sput-object v1, Lmiuix/popupwidget/widget/PressEffectDrawable;->STATE_SELECTED:[I

    const/4 v1, 0x2

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    sput-object v2, Lmiuix/popupwidget/widget/PressEffectDrawable;->STATE_HOVERED_ACTIVATED:[I

    new-array v2, v0, [I

    const v4, 0x1010367

    aput v4, v2, v3

    sput-object v2, Lmiuix/popupwidget/widget/PressEffectDrawable;->STATE_HOVERED:[I

    new-array v2, v0, [I

    const v4, 0x10102fe

    aput v4, v2, v3

    sput-object v2, Lmiuix/popupwidget/widget/PressEffectDrawable;->STATE_ACTIVATED:[I

    invoke-static {}, Lgl/a;->G()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lgl/a;->E()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lgl/a;->H()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    sput-boolean v0, Lmiuix/popupwidget/widget/PressEffectDrawable;->USE_FOLME:Z

    if-eqz v0, :cond_1

    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v2, v1, [F

    fill-array-data v2, :array_1

    const/4 v3, -0x2

    invoke-static {v3, v2}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    sput-object v0, Lmiuix/popupwidget/widget/PressEffectDrawable;->HOVER_ENTER_CONFIG:Lmiuix/animation/base/AnimConfig;

    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v2, v1, [F

    fill-array-data v2, :array_2

    invoke-static {v3, v2}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    sput-object v0, Lmiuix/popupwidget/widget/PressEffectDrawable;->HOVER_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v2, v1, [F

    fill-array-data v2, :array_3

    invoke-static {v3, v2}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    sput-object v0, Lmiuix/popupwidget/widget/PressEffectDrawable;->PRESS_ENTER_CONFIG:Lmiuix/animation/base/AnimConfig;

    new-instance v2, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v2}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v1, v1, [F

    fill-array-data v1, :array_4

    invoke-static {v3, v1}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v1

    invoke-virtual {v2, v1}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    sput-object v1, Lmiuix/popupwidget/widget/PressEffectDrawable;->PRESS_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

    sput-object v0, Lmiuix/popupwidget/widget/PressEffectDrawable;->ACTIVATE_ENTER_CONFIG:Lmiuix/animation/base/AnimConfig;

    sput-object v1, Lmiuix/popupwidget/widget/PressEffectDrawable;->ACTIVATE_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    sput-object v0, Lmiuix/popupwidget/widget/PressEffectDrawable;->HOVER_ENTER_CONFIG:Lmiuix/animation/base/AnimConfig;

    sput-object v0, Lmiuix/popupwidget/widget/PressEffectDrawable;->HOVER_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

    sput-object v0, Lmiuix/popupwidget/widget/PressEffectDrawable;->PRESS_ENTER_CONFIG:Lmiuix/animation/base/AnimConfig;

    sput-object v0, Lmiuix/popupwidget/widget/PressEffectDrawable;->PRESS_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

    sput-object v0, Lmiuix/popupwidget/widget/PressEffectDrawable;->ACTIVATE_ENTER_CONFIG:Lmiuix/animation/base/AnimConfig;

    sput-object v0, Lmiuix/popupwidget/widget/PressEffectDrawable;->ACTIVATE_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0x1010367
        0x10102fe
    .end array-data

    :array_1
    .array-data 4
        0x3f7d70a4    # 0.99f
        0x3f19999a    # 0.6f
    .end array-data

    :array_2
    .array-data 4
        0x3f666666    # 0.9f
        0x3e4ccccd    # 0.2f
    .end array-data

    :array_3
    .array-data 4
        0x3f7d70a4    # 0.99f
        0x3e800000    # 0.25f
    .end array-data

    :array_4
    .array-data 4
        0x3f7d70a4    # 0.99f
        0x3eb33333    # 0.35f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mPaint:Landroid/graphics/Paint;

    new-instance v0, Lmiuix/popupwidget/widget/PressEffectDrawable$PressEffectState;

    invoke-direct {v0}, Lmiuix/popupwidget/widget/PressEffectDrawable$PressEffectState;-><init>()V

    iput-object v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mState:Lmiuix/popupwidget/widget/PressEffectDrawable$PressEffectState;

    return-void
.end method

.method constructor <init>(Lmiuix/popupwidget/widget/PressEffectDrawable$PressEffectState;Landroid/content/res/Resources;)V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mRect:Landroid/graphics/RectF;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mPaint:Landroid/graphics/Paint;

    iget p2, p1, Lmiuix/popupwidget/widget/PressEffectDrawable$PressEffectState;->mTintColor:I

    iput p2, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mTintColor:I

    iget p2, p1, Lmiuix/popupwidget/widget/PressEffectDrawable$PressEffectState;->mNormalAlpha:F

    iput p2, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mNormalAlpha:F

    iget p2, p1, Lmiuix/popupwidget/widget/PressEffectDrawable$PressEffectState;->mPressedAlpha:F

    iput p2, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mPressedAlpha:F

    iget p2, p1, Lmiuix/popupwidget/widget/PressEffectDrawable$PressEffectState;->mHoveredAlpha:F

    iput p2, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mHoveredAlpha:F

    iget p2, p1, Lmiuix/popupwidget/widget/PressEffectDrawable$PressEffectState;->mActivatedAlpha:F

    iput p2, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mActivatedAlpha:F

    iget p1, p1, Lmiuix/popupwidget/widget/PressEffectDrawable$PressEffectState;->mHoveredActivatedAlpha:F

    iput p1, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mHoveredActivatedAlpha:F

    new-instance p1, Lmiuix/popupwidget/widget/PressEffectDrawable$PressEffectState;

    invoke-direct {p1}, Lmiuix/popupwidget/widget/PressEffectDrawable$PressEffectState;-><init>()V

    iput-object p1, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mState:Lmiuix/popupwidget/widget/PressEffectDrawable$PressEffectState;

    invoke-direct {p0}, Lmiuix/popupwidget/widget/PressEffectDrawable;->updateLocalState()V

    invoke-direct {p0}, Lmiuix/popupwidget/widget/PressEffectDrawable;->init()V

    return-void
.end method

.method private init()V
    .locals 3

    iget-object v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mTintColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-boolean v0, Lmiuix/popupwidget/widget/PressEffectDrawable;->USE_FOLME:Z

    if-eqz v0, :cond_0

    new-instance v0, Lmiuix/animation/controller/AnimState;

    invoke-direct {v0}, Lmiuix/animation/controller/AnimState;-><init>()V

    iget v1, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mNormalAlpha:F

    const-string v2, "alphaF"

    invoke-virtual {v0, v2, v1}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/String;F)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    iput-object v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mNormalState:Lmiuix/animation/controller/AnimState;

    new-instance v0, Lmiuix/animation/controller/AnimState;

    invoke-direct {v0}, Lmiuix/animation/controller/AnimState;-><init>()V

    iget v1, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mPressedAlpha:F

    invoke-virtual {v0, v2, v1}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/String;F)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    iput-object v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mPressedState:Lmiuix/animation/controller/AnimState;

    new-instance v0, Lmiuix/animation/controller/AnimState;

    invoke-direct {v0}, Lmiuix/animation/controller/AnimState;-><init>()V

    iget v1, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mHoveredAlpha:F

    invoke-virtual {v0, v2, v1}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/String;F)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    iput-object v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mHoveredState:Lmiuix/animation/controller/AnimState;

    new-instance v0, Lmiuix/animation/controller/AnimState;

    invoke-direct {v0}, Lmiuix/animation/controller/AnimState;-><init>()V

    iget v1, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mActivatedAlpha:F

    invoke-virtual {v0, v2, v1}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/String;F)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    iput-object v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mActivatedState:Lmiuix/animation/controller/AnimState;

    new-instance v0, Lmiuix/animation/controller/AnimState;

    invoke-direct {v0}, Lmiuix/animation/controller/AnimState;-><init>()V

    iget v1, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mHoveredActivatedAlpha:F

    invoke-virtual {v0, v2, v1}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/String;F)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    iput-object v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mHoveredActivatedState:Lmiuix/animation/controller/AnimState;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v0

    iput-object v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    iget-object v1, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mNormalState:Lmiuix/animation/controller/AnimState;

    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    goto :goto_0

    :cond_0
    iget v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mNormalAlpha:F

    invoke-virtual {p0, v0}, Lmiuix/popupwidget/widget/PressEffectDrawable;->setAlphaF(F)V

    :goto_0
    return-void
.end method

.method private toActivatedState()Z
    .locals 6

    iget-boolean v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mPressed:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mPressed:Z

    iput-boolean v1, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mHovered:Z

    iput-boolean v2, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mActivated:Z

    sget-boolean v0, Lmiuix/popupwidget/widget/PressEffectDrawable;->USE_FOLME:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    iget-object v3, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mActivatedState:Lmiuix/animation/controller/AnimState;

    new-array v4, v2, [Lmiuix/animation/base/AnimConfig;

    sget-object v5, Lmiuix/popupwidget/widget/PressEffectDrawable;->PRESS_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

    aput-object v5, v4, v1

    invoke-interface {v0, v3, v4}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_0

    :cond_0
    iget v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mActivatedAlpha:F

    invoke-virtual {p0, v0}, Lmiuix/popupwidget/widget/PressEffectDrawable;->setAlphaF(F)V

    :goto_0
    return v2

    :cond_1
    iget-boolean v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mHovered:Z

    if-eqz v0, :cond_3

    iput-boolean v1, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mHovered:Z

    iput-boolean v2, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mActivated:Z

    sget-boolean v0, Lmiuix/popupwidget/widget/PressEffectDrawable;->USE_FOLME:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    iget-object v3, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mActivatedState:Lmiuix/animation/controller/AnimState;

    new-array v4, v2, [Lmiuix/animation/base/AnimConfig;

    sget-object v5, Lmiuix/popupwidget/widget/PressEffectDrawable;->HOVER_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

    aput-object v5, v4, v1

    invoke-interface {v0, v3, v4}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_1

    :cond_2
    iget v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mActivatedAlpha:F

    invoke-virtual {p0, v0}, Lmiuix/popupwidget/widget/PressEffectDrawable;->setAlphaF(F)V

    :goto_1
    return v2

    :cond_3
    iget-boolean v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mActivated:Z

    if-eqz v0, :cond_4

    return v1

    :cond_4
    iput-boolean v2, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mActivated:Z

    sget-boolean v0, Lmiuix/popupwidget/widget/PressEffectDrawable;->USE_FOLME:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    iget-object v3, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mActivatedState:Lmiuix/animation/controller/AnimState;

    new-array v4, v2, [Lmiuix/animation/base/AnimConfig;

    sget-object v5, Lmiuix/popupwidget/widget/PressEffectDrawable;->ACTIVATE_ENTER_CONFIG:Lmiuix/animation/base/AnimConfig;

    aput-object v5, v4, v1

    invoke-interface {v0, v3, v4}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_2

    :cond_5
    iget v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mActivatedAlpha:F

    invoke-virtual {p0, v0}, Lmiuix/popupwidget/widget/PressEffectDrawable;->setAlphaF(F)V

    :goto_2
    return v2
.end method

.method private toHoveredActivatedState()Z
    .locals 6

    iget-boolean v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mPressed:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mPressed:Z

    iput-boolean v2, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mHovered:Z

    iput-boolean v2, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mActivated:Z

    sget-boolean v0, Lmiuix/popupwidget/widget/PressEffectDrawable;->USE_FOLME:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    iget-object v3, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mHoveredActivatedState:Lmiuix/animation/controller/AnimState;

    new-array v4, v2, [Lmiuix/animation/base/AnimConfig;

    sget-object v5, Lmiuix/popupwidget/widget/PressEffectDrawable;->PRESS_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

    aput-object v5, v4, v1

    invoke-interface {v0, v3, v4}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_0

    :cond_0
    iget v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mHoveredActivatedAlpha:F

    invoke-virtual {p0, v0}, Lmiuix/popupwidget/widget/PressEffectDrawable;->setAlphaF(F)V

    :goto_0
    return v2

    :cond_1
    iget-boolean v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mHovered:Z

    if-eqz v0, :cond_2

    iget-boolean v3, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mActivated:Z

    if-eqz v3, :cond_2

    return v1

    :cond_2
    if-eqz v0, :cond_4

    iput-boolean v2, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mActivated:Z

    sget-boolean v0, Lmiuix/popupwidget/widget/PressEffectDrawable;->USE_FOLME:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    iget-object v3, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mHoveredActivatedState:Lmiuix/animation/controller/AnimState;

    new-array v4, v2, [Lmiuix/animation/base/AnimConfig;

    sget-object v5, Lmiuix/popupwidget/widget/PressEffectDrawable;->ACTIVATE_ENTER_CONFIG:Lmiuix/animation/base/AnimConfig;

    aput-object v5, v4, v1

    invoke-interface {v0, v3, v4}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_1

    :cond_3
    iget v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mHoveredActivatedAlpha:F

    invoke-virtual {p0, v0}, Lmiuix/popupwidget/widget/PressEffectDrawable;->setAlphaF(F)V

    :goto_1
    return v2

    :cond_4
    iget-boolean v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mActivated:Z

    if-eqz v0, :cond_6

    iput-boolean v2, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mHovered:Z

    sget-boolean v0, Lmiuix/popupwidget/widget/PressEffectDrawable;->USE_FOLME:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    iget-object v3, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mHoveredActivatedState:Lmiuix/animation/controller/AnimState;

    new-array v4, v2, [Lmiuix/animation/base/AnimConfig;

    sget-object v5, Lmiuix/popupwidget/widget/PressEffectDrawable;->HOVER_ENTER_CONFIG:Lmiuix/animation/base/AnimConfig;

    aput-object v5, v4, v1

    invoke-interface {v0, v3, v4}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_2

    :cond_5
    iget v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mHoveredActivatedAlpha:F

    invoke-virtual {p0, v0}, Lmiuix/popupwidget/widget/PressEffectDrawable;->setAlphaF(F)V

    :goto_2
    return v2

    :cond_6
    iput-boolean v2, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mActivated:Z

    iput-boolean v2, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mHovered:Z

    sget-boolean v0, Lmiuix/popupwidget/widget/PressEffectDrawable;->USE_FOLME:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    iget-object v3, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mHoveredActivatedState:Lmiuix/animation/controller/AnimState;

    new-array v4, v2, [Lmiuix/animation/base/AnimConfig;

    sget-object v5, Lmiuix/popupwidget/widget/PressEffectDrawable;->HOVER_ENTER_CONFIG:Lmiuix/animation/base/AnimConfig;

    aput-object v5, v4, v1

    invoke-interface {v0, v3, v4}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_3

    :cond_7
    iget v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mHoveredActivatedAlpha:F

    invoke-virtual {p0, v0}, Lmiuix/popupwidget/widget/PressEffectDrawable;->setAlphaF(F)V

    :goto_3
    return v2
.end method

.method private toHoveredState()Z
    .locals 6

    iget-boolean v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mPressed:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mPressed:Z

    iput-boolean v2, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mHovered:Z

    iput-boolean v1, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mActivated:Z

    sget-boolean v0, Lmiuix/popupwidget/widget/PressEffectDrawable;->USE_FOLME:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    iget-object v3, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mHoveredState:Lmiuix/animation/controller/AnimState;

    new-array v4, v2, [Lmiuix/animation/base/AnimConfig;

    sget-object v5, Lmiuix/popupwidget/widget/PressEffectDrawable;->PRESS_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

    aput-object v5, v4, v1

    invoke-interface {v0, v3, v4}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_0

    :cond_0
    iget v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mHoveredAlpha:F

    invoke-virtual {p0, v0}, Lmiuix/popupwidget/widget/PressEffectDrawable;->setAlphaF(F)V

    :goto_0
    return v2

    :cond_1
    iget-boolean v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mHovered:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mActivated:Z

    if-eqz v0, :cond_3

    sget-boolean v0, Lmiuix/popupwidget/widget/PressEffectDrawable;->USE_FOLME:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    iget-object v3, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mHoveredState:Lmiuix/animation/controller/AnimState;

    new-array v4, v2, [Lmiuix/animation/base/AnimConfig;

    sget-object v5, Lmiuix/popupwidget/widget/PressEffectDrawable;->HOVER_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

    aput-object v5, v4, v1

    invoke-interface {v0, v3, v4}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_1

    :cond_2
    iget v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mHoveredAlpha:F

    invoke-virtual {p0, v0}, Lmiuix/popupwidget/widget/PressEffectDrawable;->setAlphaF(F)V

    :goto_1
    return v2

    :cond_3
    return v1

    :cond_4
    iput-boolean v2, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mHovered:Z

    iput-boolean v1, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mActivated:Z

    sget-boolean v0, Lmiuix/popupwidget/widget/PressEffectDrawable;->USE_FOLME:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    iget-object v3, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mHoveredState:Lmiuix/animation/controller/AnimState;

    new-array v4, v2, [Lmiuix/animation/base/AnimConfig;

    sget-object v5, Lmiuix/popupwidget/widget/PressEffectDrawable;->HOVER_ENTER_CONFIG:Lmiuix/animation/base/AnimConfig;

    aput-object v5, v4, v1

    invoke-interface {v0, v3, v4}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_2

    :cond_5
    iget v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mHoveredAlpha:F

    invoke-virtual {p0, v0}, Lmiuix/popupwidget/widget/PressEffectDrawable;->setAlphaF(F)V

    :goto_2
    return v2
.end method

.method private toNormalState()Z
    .locals 6

    iget-boolean v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mPressed:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mPressed:Z

    iput-boolean v2, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mHovered:Z

    iput-boolean v2, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mActivated:Z

    sget-boolean v0, Lmiuix/popupwidget/widget/PressEffectDrawable;->USE_FOLME:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    iget-object v3, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mNormalState:Lmiuix/animation/controller/AnimState;

    new-array v4, v1, [Lmiuix/animation/base/AnimConfig;

    sget-object v5, Lmiuix/popupwidget/widget/PressEffectDrawable;->PRESS_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

    aput-object v5, v4, v2

    invoke-interface {v0, v3, v4}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_0

    :cond_0
    iget v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mNormalAlpha:F

    invoke-virtual {p0, v0}, Lmiuix/popupwidget/widget/PressEffectDrawable;->setAlphaF(F)V

    :goto_0
    return v1

    :cond_1
    iget-boolean v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mHovered:Z

    if-eqz v0, :cond_3

    iput-boolean v2, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mHovered:Z

    iput-boolean v2, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mActivated:Z

    sget-boolean v0, Lmiuix/popupwidget/widget/PressEffectDrawable;->USE_FOLME:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    iget-object v3, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mNormalState:Lmiuix/animation/controller/AnimState;

    new-array v4, v1, [Lmiuix/animation/base/AnimConfig;

    sget-object v5, Lmiuix/popupwidget/widget/PressEffectDrawable;->HOVER_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

    aput-object v5, v4, v2

    invoke-interface {v0, v3, v4}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_1

    :cond_2
    iget v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mNormalAlpha:F

    invoke-virtual {p0, v0}, Lmiuix/popupwidget/widget/PressEffectDrawable;->setAlphaF(F)V

    :goto_1
    return v1

    :cond_3
    iget-boolean v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mActivated:Z

    if-eqz v0, :cond_5

    iput-boolean v2, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mActivated:Z

    sget-boolean v0, Lmiuix/popupwidget/widget/PressEffectDrawable;->USE_FOLME:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    iget-object v3, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mNormalState:Lmiuix/animation/controller/AnimState;

    new-array v4, v1, [Lmiuix/animation/base/AnimConfig;

    sget-object v5, Lmiuix/popupwidget/widget/PressEffectDrawable;->ACTIVATE_EXIT_CONFIG:Lmiuix/animation/base/AnimConfig;

    aput-object v5, v4, v2

    invoke-interface {v0, v3, v4}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_2

    :cond_4
    iget v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mNormalAlpha:F

    invoke-virtual {p0, v0}, Lmiuix/popupwidget/widget/PressEffectDrawable;->setAlphaF(F)V

    :goto_2
    return v1

    :cond_5
    return v2
.end method

.method private toPressedState()Z
    .locals 6

    iget-boolean v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mPressed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget-boolean v0, Lmiuix/popupwidget/widget/PressEffectDrawable;->USE_FOLME:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    iget-object v3, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mPressedState:Lmiuix/animation/controller/AnimState;

    new-array v4, v2, [Lmiuix/animation/base/AnimConfig;

    sget-object v5, Lmiuix/popupwidget/widget/PressEffectDrawable;->PRESS_ENTER_CONFIG:Lmiuix/animation/base/AnimConfig;

    aput-object v5, v4, v1

    invoke-interface {v0, v3, v4}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_0

    :cond_1
    iget v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mPressedAlpha:F

    invoke-virtual {p0, v0}, Lmiuix/popupwidget/widget/PressEffectDrawable;->setAlphaF(F)V

    :goto_0
    iput-boolean v2, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mPressed:Z

    iput-boolean v1, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mHovered:Z

    iput-boolean v1, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mActivated:Z

    return v2
.end method

.method private updateLocalState()V
    .locals 2

    iget-object v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mState:Lmiuix/popupwidget/widget/PressEffectDrawable$PressEffectState;

    iget v1, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mTintColor:I

    iput v1, v0, Lmiuix/popupwidget/widget/PressEffectDrawable$PressEffectState;->mTintColor:I

    iget v1, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mNormalAlpha:F

    iput v1, v0, Lmiuix/popupwidget/widget/PressEffectDrawable$PressEffectState;->mNormalAlpha:F

    iget v1, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mPressedAlpha:F

    iput v1, v0, Lmiuix/popupwidget/widget/PressEffectDrawable$PressEffectState;->mPressedAlpha:F

    iget v1, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mHoveredAlpha:F

    iput v1, v0, Lmiuix/popupwidget/widget/PressEffectDrawable$PressEffectState;->mHoveredAlpha:F

    iget v1, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mActivatedAlpha:F

    iput v1, v0, Lmiuix/popupwidget/widget/PressEffectDrawable$PressEffectState;->mActivatedAlpha:F

    iget v1, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mHoveredActivatedAlpha:F

    iput v1, v0, Lmiuix/popupwidget/widget/PressEffectDrawable$PressEffectState;->mHoveredActivatedAlpha:F

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public getAlphaF()F
    .locals 2

    iget-object v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mState:Lmiuix/popupwidget/widget/PressEffectDrawable$PressEffectState;

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    if-eqz p4, :cond_0

    sget-object p1, Lmiuix/popupwidget/R$styleable;->StateTransitionDrawable:[I

    const/4 p2, 0x0

    invoke-virtual {p4, p3, p1, p2, p2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object p2, Lmiuix/popupwidget/R$styleable;->StateTransitionDrawable:[I

    invoke-virtual {p1, p3, p2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    :goto_0
    sget p2, Lmiuix/popupwidget/R$styleable;->StateTransitionDrawable_tintColor:I

    const/high16 p3, -0x1000000

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mTintColor:I

    sget p2, Lmiuix/popupwidget/R$styleable;->StateTransitionDrawable_normalAlpha:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mNormalAlpha:F

    sget p2, Lmiuix/popupwidget/R$styleable;->StateTransitionDrawable_pressedAlpha:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mPressedAlpha:F

    sget p2, Lmiuix/popupwidget/R$styleable;->StateTransitionDrawable_hoveredAlpha:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mHoveredAlpha:F

    sget p2, Lmiuix/popupwidget/R$styleable;->StateTransitionDrawable_activatedAlpha:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mActivatedAlpha:F

    sget p2, Lmiuix/popupwidget/R$styleable;->StateTransitionDrawable_hoveredActivatedAlpha:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mHoveredActivatedAlpha:F

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Lmiuix/popupwidget/widget/PressEffectDrawable;->init()V

    invoke-direct {p0}, Lmiuix/popupwidget/widget/PressEffectDrawable;->updateLocalState()V

    return-void
.end method

.method public isStateful()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public jumpToCurrentState()V
    .locals 2

    sget-boolean v0, Lmiuix/popupwidget/widget/PressEffectDrawable;->USE_FOLME:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mStyle:Lmiuix/animation/IStateStyle;

    invoke-interface {v0}, Lmiuix/animation/IStateStyle;->getCurrentState()Lmiuix/animation/controller/AnimState;

    move-result-object v1

    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    :cond_0
    return-void
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 2
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mRect:Landroid/graphics/RectF;

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mInsetL:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->left:F

    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mInsetT:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->top:F

    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mInsetR:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->right:F

    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iget v1, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mInsetB:I

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

    sget-object v0, Lmiuix/popupwidget/widget/PressEffectDrawable;->STATE_PRESSED:[I

    invoke-static {v0, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lmiuix/popupwidget/widget/PressEffectDrawable;->STATE_DRAG_HOVERED:[I

    invoke-static {v0, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lmiuix/popupwidget/widget/PressEffectDrawable;->STATE_SELECTED:[I

    invoke-static {v0, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lmiuix/popupwidget/widget/PressEffectDrawable;->STATE_HOVERED_ACTIVATED:[I

    invoke-static {v0, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lmiuix/popupwidget/widget/PressEffectDrawable;->toHoveredActivatedState()Z

    move-result p1

    return p1

    :cond_1
    sget-object v0, Lmiuix/popupwidget/widget/PressEffectDrawable;->STATE_HOVERED:[I

    invoke-static {v0, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lmiuix/popupwidget/widget/PressEffectDrawable;->toHoveredState()Z

    move-result p1

    return p1

    :cond_2
    sget-object v0, Lmiuix/popupwidget/widget/PressEffectDrawable;->STATE_ACTIVATED:[I

    invoke-static {v0, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lmiuix/popupwidget/widget/PressEffectDrawable;->toActivatedState()Z

    move-result p1

    return p1

    :cond_3
    invoke-direct {p0}, Lmiuix/popupwidget/widget/PressEffectDrawable;->toNormalState()Z

    move-result p1

    return p1

    :cond_4
    :goto_0
    invoke-direct {p0}, Lmiuix/popupwidget/widget/PressEffectDrawable;->toPressedState()Z

    move-result p1

    return p1
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setAlphaF(F)V
    .locals 2

    iget-object v0, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

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

    iput p1, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mInsetL:I

    iput p2, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mInsetT:I

    iput p3, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mInsetR:I

    iput p4, p0, Lmiuix/popupwidget/widget/PressEffectDrawable;->mInsetB:I

    return-void
.end method

.class public Lcom/miui/bubbles/animation/BubbleAnimator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ALPHA_ANIM_CONFIG:Lmiuix/animation/base/AnimConfig;

.field private static final ANIM_CONFIG_MOVE:Lmiuix/animation/base/AnimConfig;

.field private static final ANIM_CONFIG_TO_EDGE:Lmiuix/animation/base/AnimConfig;

.field private static final VIEW_PROPERTY_SCALE_CORNER_RADIUS:Ljava/lang/String; = "scale_corner_radius"

.field private static final VIEW_PROPERTY_SCALE_HEIGHT:Ljava/lang/String; = "scale_background_height"

.field private static final VIEW_PROPERTY_SCALE_WIDTH:Ljava/lang/String; = "scale_background_width"


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const/4 v3, -0x2

    invoke-virtual {v0, v3, v2}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    sget-object v2, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    new-instance v4, Lmiuix/animation/utils/EaseManager$EaseStyle;

    new-array v5, v1, [F

    fill-array-data v5, :array_1

    invoke-direct {v4, v3, v5}, Lmiuix/animation/utils/EaseManager$EaseStyle;-><init>(I[F)V

    const/4 v5, 0x0

    new-array v6, v5, [F

    invoke-virtual {v0, v2, v4, v6}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/utils/EaseManager$EaseStyle;[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    sget-object v2, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    new-instance v4, Lmiuix/animation/utils/EaseManager$EaseStyle;

    new-array v6, v1, [F

    fill-array-data v6, :array_2

    invoke-direct {v4, v3, v6}, Lmiuix/animation/utils/EaseManager$EaseStyle;-><init>(I[F)V

    new-array v5, v5, [F

    invoke-virtual {v0, v2, v4, v5}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/utils/EaseManager$EaseStyle;[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    sput-object v0, Lcom/miui/bubbles/animation/BubbleAnimator;->ANIM_CONFIG_TO_EDGE:Lmiuix/animation/base/AnimConfig;

    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v2, v1, [F

    fill-array-data v2, :array_3

    invoke-virtual {v0, v3, v2}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    sput-object v0, Lcom/miui/bubbles/animation/BubbleAnimator;->ANIM_CONFIG_MOVE:Lmiuix/animation/base/AnimConfig;

    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v1, v1, [F

    fill-array-data v1, :array_4

    invoke-virtual {v0, v3, v1}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    sput-object v0, Lcom/miui/bubbles/animation/BubbleAnimator;->ALPHA_ANIM_CONFIG:Lmiuix/animation/base/AnimConfig;

    return-void

    :array_0
    .array-data 4
        0x3f666666    # 0.9f
        0x3eb33333    # 0.35f
    .end array-data

    :array_1
    .array-data 4
        0x3f47ae14    # 0.78f
        0x3f19999a    # 0.6f
    .end array-data

    :array_2
    .array-data 4
        0x3f47ae14    # 0.78f
        0x3f19999a    # 0.6f
    .end array-data

    :array_3
    .array-data 4
        0x3f666666    # 0.9f
        0x3e19999a    # 0.15f
    .end array-data

    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static animMoveBubbleTo(Landroid/view/View;Ljava/lang/Runnable;Landroid/graphics/Rect;)V
    .locals 2

    sget-object v0, Lcom/miui/bubbles/animation/BubbleAnimator;->ANIM_CONFIG_TO_EDGE:Lmiuix/animation/base/AnimConfig;

    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget p2, p2, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    invoke-static {p0, v0, p1, v1, p2}, Lcom/miui/bubbles/animation/BubbleAnimator;->animMoveBubbleTo(Landroid/view/View;Lmiuix/animation/base/AnimConfig;Ljava/lang/Runnable;FF)V

    return-void
.end method

.method public static animMoveBubbleTo(Landroid/view/View;Lmiuix/animation/base/AnimConfig;Ljava/lang/Runnable;FF)V
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p0

    invoke-interface {p0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p0

    new-instance v1, Lmiuix/animation/controller/AnimState;

    invoke-direct {v1}, Lmiuix/animation/controller/AnimState;-><init>()V

    sget-object v3, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v1, v3, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    sget-object v3, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    float-to-double v4, p3

    invoke-virtual {v1, v3, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p3

    sget-object v1, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    float-to-double v3, p4

    invoke-virtual {p3, v1, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p3

    new-array p4, v0, [Lmiuix/animation/base/AnimConfig;

    new-array v0, v0, [Lmiuix/animation/listener/TransitionListener;

    new-instance v1, Lcom/miui/bubbles/animation/BubbleAnimator$2;

    invoke-direct {v1, p1, p2}, Lcom/miui/bubbles/animation/BubbleAnimator$2;-><init>(Lmiuix/animation/base/AnimConfig;Ljava/lang/Runnable;)V

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object p1

    aput-object p1, p4, v2

    invoke-interface {p0, p3, p4}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    return-void
.end method

.method public static animScaleTo(Lcom/miui/bubbles/views/BubbleImageView;Landroid/graphics/Rect;ZLjava/lang/Runnable;)V
    .locals 14

    move-object v0, p0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "scale_background_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v2}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v2

    const/4 v3, 0x6

    new-array v5, v3, [Ljava/lang/Object;

    const-string v6, "scale_background_width"

    aput-object v6, v5, v4

    invoke-virtual {p0}, Lcom/miui/bubbles/views/BubbleImageView;->getScaledWidth()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v1

    const/4 v7, 0x2

    const-string v8, "scale_background_height"

    aput-object v8, v5, v7

    invoke-virtual {p0}, Lcom/miui/bubbles/views/BubbleImageView;->getScaledHeight()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x3

    aput-object v9, v5, v10

    const/4 v9, 0x4

    const-string v11, "scale_corner_radius"

    aput-object v11, v5, v9

    invoke-virtual {p0}, Lcom/miui/bubbles/views/BubbleImageView;->getBubbleCornerRadius()F

    move-result v12

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    const/4 v13, 0x5

    aput-object v12, v5, v13

    invoke-interface {v2, v5}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v2

    const/16 v5, 0x8

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v6, v5, v4

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    aput-object v8, v5, v7

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    aput-object v11, v5, v9

    move/from16 v6, p2

    invoke-virtual {p0, v6}, Lcom/miui/bubbles/views/BubbleImageView;->getFinalCornerRadius(Z)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v13

    new-instance v6, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v6}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v1, v1, [Lmiuix/animation/listener/TransitionListener;

    new-instance v8, Lcom/miui/bubbles/animation/BubbleAnimator$1;

    move-object/from16 v9, p3

    invoke-direct {v8, p0, v9}, Lcom/miui/bubbles/animation/BubbleAnimator$1;-><init>(Lcom/miui/bubbles/views/BubbleImageView;Ljava/lang/Runnable;)V

    aput-object v8, v1, v4

    invoke-virtual {v6, v1}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    aput-object v0, v5, v3

    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v1, v7, [F

    fill-array-data v1, :array_0

    const/4 v3, -0x2

    invoke-virtual {v0, v3, v1}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    const/4 v1, 0x7

    aput-object v0, v5, v1

    invoke-interface {v2, v5}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    return-void

    nop

    :array_0
    .array-data 4
        0x3f7d70a4    # 0.99f
        0x3e4ccccd    # 0.2f
    .end array-data
.end method

.method public static animateAlphaTo(Landroid/view/View;F)V
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p0

    invoke-interface {p0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p0

    new-instance v1, Lmiuix/animation/controller/AnimState;

    invoke-direct {v1}, Lmiuix/animation/controller/AnimState;-><init>()V

    sget-object v3, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    float-to-double v4, p1

    invoke-virtual {v1, v3, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    new-array v0, v0, [Lmiuix/animation/base/AnimConfig;

    sget-object v1, Lcom/miui/bubbles/animation/BubbleAnimator;->ALPHA_ANIM_CONFIG:Lmiuix/animation/base/AnimConfig;

    aput-object v1, v0, v2

    invoke-interface {p0, p1, v0}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    return-void
.end method

.method public static getPredict(FFFFF)Landroid/graphics/PointF;
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [F

    invoke-static {p2, p4, v1}, Lmiuix/animation/Folme;->getPredictDistanceWithFriction(FF[F)F

    move-result p2

    add-float/2addr p0, p2

    new-array p2, v0, [F

    invoke-static {p3, p4, p2}, Lmiuix/animation/Folme;->getPredictDistanceWithFriction(FF[F)F

    move-result p2

    add-float/2addr p1, p2

    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2, p0, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p2
.end method

.method public static moveBubbleTo(Landroid/view/View;FF)V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/View;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p0

    invoke-interface {p0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p0

    new-instance v0, Lmiuix/animation/controller/AnimState;

    invoke-direct {v0}, Lmiuix/animation/controller/AnimState;-><init>()V

    sget-object v2, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    float-to-double v3, p1

    invoke-virtual {v0, v2, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    sget-object v0, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    float-to-double v2, p2

    invoke-virtual {p1, v0, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    new-array p2, v1, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p0, p1, p2}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    return-void
.end method

.method public static moveMessageToPosition(Landroid/view/View;F)V
    .locals 7

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p0

    invoke-interface {p0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p0

    new-instance v1, Lmiuix/animation/controller/AnimState;

    invoke-direct {v1}, Lmiuix/animation/controller/AnimState;-><init>()V

    sget-object v3, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    float-to-double v4, p1

    invoke-virtual {v1, v3, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    new-array v0, v0, [Lmiuix/animation/base/AnimConfig;

    new-instance v1, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v4, 0x2

    new-array v5, v4, [F

    fill-array-data v5, :array_0

    const/4 v6, -0x2

    invoke-virtual {v1, v6, v5}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    new-array v4, v4, [F

    fill-array-data v4, :array_1

    const-wide/16 v5, -0x2

    invoke-virtual {v1, v3, v5, v6, v4}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;J[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-interface {p0, p1, v0}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    return-void

    nop

    :array_0
    .array-data 4
        0x3f666666    # 0.9f
        0x3e800000    # 0.25f
    .end array-data

    :array_1
    .array-data 4
        0x3f266666    # 0.65f
        0x3e800000    # 0.25f
    .end array-data
.end method

.method public static moveStackFromTouch(Lcom/miui/bubbles/BubblePositioner;Landroid/view/View;FF)V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/bubbles/BubblePositioner;->getAllowablePosBounds()Landroid/graphics/RectF;

    move-result-object p0

    iget v0, p0, Landroid/graphics/RectF;->left:F

    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iget v0, p0, Landroid/graphics/RectF;->right:F

    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    move-result p2

    iget v0, p0, Landroid/graphics/RectF;->top:F

    invoke-static {v0, p3}, Ljava/lang/Math;->max(FF)F

    move-result p3

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    invoke-static {p3, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    sget-object p3, Lcom/miui/bubbles/animation/BubbleAnimator;->ANIM_CONFIG_MOVE:Lmiuix/animation/base/AnimConfig;

    const/4 v0, 0x0

    invoke-static {p1, p3, v0, p2, p0}, Lcom/miui/bubbles/animation/BubbleAnimator;->animMoveBubbleTo(Landroid/view/View;Lmiuix/animation/base/AnimConfig;Ljava/lang/Runnable;FF)V

    return-void
.end method

.method public static resetEdgeAlpha(Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p0

    invoke-interface {p0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v3, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    aput-object v3, v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-interface {p0, v1}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    return-void
.end method

.method public static showPinnedAppFromRestore(Lcom/miui/bubbles/views/BubbleImageView;)V
    .locals 9

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/miui/bubbles/R$dimen;->bubble_app_shown_part_size:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    new-array v5, v2, [Landroid/view/View;

    aput-object p0, v5, v3

    invoke-static {v5}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v5

    invoke-interface {v5}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v5

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Object;

    sget-object v8, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    aput-object v8, v7, v3

    if-eqz v1, :cond_2

    int-to-float v1, v4

    sub-float v1, v0, v1

    goto :goto_1

    :cond_2
    int-to-float v1, v4

    add-float/2addr v1, v0

    :goto_1
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v7, v2

    invoke-interface {v5, v7}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v1

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v8, v4, v3

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v4, v2

    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v2, v2, [Lmiuix/animation/listener/TransitionListener;

    new-instance v5, Lcom/miui/bubbles/animation/BubbleAnimator$4;

    invoke-direct {v5, p0}, Lcom/miui/bubbles/animation/BubbleAnimator$4;-><init>(Lcom/miui/bubbles/views/BubbleImageView;)V

    aput-object v5, v2, v3

    invoke-virtual {v0, v2}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object p0

    aput-object p0, v4, v6

    invoke-interface {v1, v4}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    return-void
.end method

.method public static showShadow(Lcom/miui/bubbles/views/BubbleImageView;)V
    .locals 8

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v1}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v1

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "shadow_alpha"

    aput-object v5, v4, v2

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v0

    invoke-interface {v1, v4}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v1

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v5, v4, v2

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v0

    new-instance v5, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v5}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v6, v3, [F

    fill-array-data v6, :array_0

    const/4 v7, -0x2

    invoke-virtual {v5, v7, v6}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v5

    new-array v0, v0, [Lmiuix/animation/listener/TransitionListener;

    new-instance v6, Lcom/miui/bubbles/animation/BubbleAnimator$3;

    invoke-direct {v6, p0}, Lcom/miui/bubbles/animation/BubbleAnimator$3;-><init>(Lcom/miui/bubbles/views/BubbleImageView;)V

    aput-object v6, v0, v2

    invoke-virtual {v5, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object p0

    aput-object p0, v4, v3

    invoke-interface {v1, v4}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
    .end array-data
.end method

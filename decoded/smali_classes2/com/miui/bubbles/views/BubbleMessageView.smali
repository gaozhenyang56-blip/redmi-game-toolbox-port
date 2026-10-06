.class public Lcom/miui/bubbles/views/BubbleMessageView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/bubbles/views/BubbleMessageView$Callback;
    }
.end annotation


# static fields
.field private static final ANIM_MOVE_DISTANCE:I = 0x14

.field private static final FLING_VELOCITY:F = 1000.0f

.field static final FLYOUT_HIDE_AFTER:I = 0x1388

.field static final HIDE_DISTANCE:I = 0x96

.field private static final MAX_ALPHA:I = 0xff

.field private static final TAG:Ljava/lang/String; = "MiuiBubbles.BubbleFlyoutView"


# instance fields
.field private isOnLeft:Z

.field private mAlpha:I

.field private mArrowWidth:I

.field private mBubbleSize:I

.field private mCallback:Lcom/miui/bubbles/views/BubbleMessageView$Callback;

.field private mFlyoutMessage:Lcom/miui/bubbles/Bubble$FlyoutMessage;

.field private final mFlyoutTouchListener:Lcom/miui/bubbles/RelativeTouchListener;

.field private mFlyoutY:F

.field private final mHideFlyout:Ljava/lang/Runnable;

.field private mHostBubble:Lcom/miui/bubbles/Bubble;

.field private final mIconView:Landroid/widget/ImageView;

.field private mMessageAnimName:Ljava/lang/String;

.field private final mMessageContainer:Landroid/view/ViewGroup;

.field private final mMessageView:Landroid/widget/TextView;

.field private final mMessageViewSize:Landroid/graphics/Point;

.field private final mPositioner:Lcom/miui/bubbles/BubblePositioner;

.field private mRestingTranslationX:F

.field private final mShadowBounds:Landroid/graphics/RectF;

.field private final mShadowPaint:Landroid/graphics/Paint;

.field private final mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/bubbles/BubblePositioner;)V
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/bubbles/views/BubbleMessageView;->mFlyoutY:F

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/bubbles/views/BubbleMessageView;->isOnLeft:Z

    iput v0, p0, Lcom/miui/bubbles/views/BubbleMessageView;->mRestingTranslationX:F

    new-instance v2, Lcom/miui/bubbles/views/e;

    invoke-direct {v2, p0}, Lcom/miui/bubbles/views/e;-><init>(Lcom/miui/bubbles/views/BubbleMessageView;)V

    iput-object v2, p0, Lcom/miui/bubbles/views/BubbleMessageView;->mHideFlyout:Ljava/lang/Runnable;

    new-instance v2, Landroid/graphics/Point;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3}, Landroid/graphics/Point;-><init>(II)V

    iput-object v2, p0, Lcom/miui/bubbles/views/BubbleMessageView;->mMessageViewSize:Landroid/graphics/Point;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/miui/bubbles/views/BubbleMessageView;->mShadowPaint:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, p0, Lcom/miui/bubbles/views/BubbleMessageView;->mShadowBounds:Landroid/graphics/RectF;

    new-instance v4, Lcom/miui/bubbles/views/BubbleMessageView$1;

    invoke-direct {v4, p0}, Lcom/miui/bubbles/views/BubbleMessageView$1;-><init>(Lcom/miui/bubbles/views/BubbleMessageView;)V

    iput-object v4, p0, Lcom/miui/bubbles/views/BubbleMessageView;->mFlyoutTouchListener:Lcom/miui/bubbles/RelativeTouchListener;

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    iput-object p2, p0, Lcom/miui/bubbles/views/BubbleMessageView;->mPositioner:Lcom/miui/bubbles/BubblePositioner;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/miui/bubbles/R$layout;->bubble_flyout:I

    invoke-virtual {p1, p2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget p1, Lcom/miui/bubbles/R$id;->bubble_flyout_text_container:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/miui/bubbles/views/BubbleMessageView;->mMessageContainer:Landroid/view/ViewGroup;

    sget p2, Lcom/miui/bubbles/R$id;->bubble_message_title:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/miui/bubbles/views/BubbleMessageView;->mTitleView:Landroid/widget/TextView;

    sget p2, Lcom/miui/bubbles/R$id;->bubble_message_icon:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/miui/bubbles/views/BubbleMessageView;->mIconView:Landroid/widget/ImageView;

    sget p2, Lcom/miui/bubbles/R$id;->bubble_message_content:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/bubbles/views/BubbleMessageView;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Landroid/view/View;->setWillNotDraw(Z)V

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutDirection(I)V

    invoke-virtual {p0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/miui/bubbles/R$dimen;->bubble_message_bg_arrow_h:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/miui/bubbles/views/BubbleMessageView;->mArrowWidth:I

    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    const/16 p1, 0xff

    iput p1, p0, Lcom/miui/bubbles/views/BubbleMessageView;->mAlpha:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "bubbles_message_show_"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/bubbles/views/BubbleMessageView;->mMessageAnimName:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/miui/bubbles/views/BubbleMessageView;Lcom/miui/bubbles/Bubble$FlyoutMessage;Landroid/graphics/PointF;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/bubbles/views/BubbleMessageView;->lambda$animateUpdate$3(Lcom/miui/bubbles/Bubble$FlyoutMessage;Landroid/graphics/PointF;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/bubbles/views/BubbleMessageView;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/miui/bubbles/views/BubbleMessageView;->mHideFlyout:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/bubbles/views/BubbleMessageView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/bubbles/views/BubbleMessageView;->isOnLeft:Z

    return p0
.end method

.method static synthetic access$200(Lcom/miui/bubbles/views/BubbleMessageView;)Lcom/miui/bubbles/BubblePositioner;
    .locals 0

    iget-object p0, p0, Lcom/miui/bubbles/views/BubbleMessageView;->mPositioner:Lcom/miui/bubbles/BubblePositioner;

    return-object p0
.end method

.method static synthetic access$302(Lcom/miui/bubbles/views/BubbleMessageView;F)F
    .locals 0

    iput p1, p0, Lcom/miui/bubbles/views/BubbleMessageView;->mRestingTranslationX:F

    return p1
.end method

.method static synthetic access$400(Lcom/miui/bubbles/views/BubbleMessageView;)Lcom/miui/bubbles/Bubble;
    .locals 0

    iget-object p0, p0, Lcom/miui/bubbles/views/BubbleMessageView;->mHostBubble:Lcom/miui/bubbles/Bubble;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/bubbles/views/BubbleMessageView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/bubbles/views/BubbleMessageView;->fixedWidthOrWrapContent(Z)V

    return-void
.end method

.method public static synthetic b(Lcom/miui/bubbles/views/BubbleMessageView;Landroid/graphics/PointF;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/bubbles/views/BubbleMessageView;->lambda$setupFlyoutStarting$1(Landroid/graphics/PointF;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic c(Lcom/miui/bubbles/views/BubbleMessageView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/bubbles/views/BubbleMessageView;->lambda$new$0()V

    return-void
.end method

.method public static synthetic d(Lcom/miui/bubbles/views/BubbleMessageView;Landroid/graphics/PointF;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/bubbles/views/BubbleMessageView;->lambda$animateUpdate$2(Landroid/graphics/PointF;)V

    return-void
.end method

.method private drawShadow(Landroid/graphics/Canvas;)V
    .locals 9

    iget-object v0, p0, Lcom/miui/bubbles/views/BubbleMessageView;->mShadowBounds:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    const/high16 v2, 0x43960000    # 300.0f

    sub-float v4, v1, v2

    iget v1, v0, Landroid/graphics/RectF;->top:F

    sub-float v5, v1, v2

    iget v1, v0, Landroid/graphics/RectF;->right:F

    add-float v6, v1, v2

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    add-float v7, v0, v2

    iget v8, p0, Lcom/miui/bubbles/views/BubbleMessageView;->mAlpha:I

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFI)I

    move-result v0

    iget-object v1, p0, Lcom/miui/bubbles/views/BubbleMessageView;->mShadowBounds:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/miui/bubbles/views/BubbleMessageView;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/bubbles/R$dimen;->bubble_app_shadow_radius_big:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sget v3, Lcom/miui/bubbles/R$color;->bubble_app_shadow_big:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    sget v4, Lcom/miui/bubbles/R$dimen;->bubble_app_shadow_offset:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v5, p0, Lcom/miui/bubbles/views/BubbleMessageView;->mShadowPaint:Landroid/graphics/Paint;

    int-to-float v2, v2

    int-to-float v4, v4

    const/4 v6, 0x0

    invoke-virtual {v5, v2, v6, v4, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    sget v2, Lcom/miui/bubbles/R$dimen;->bubble_message_radius:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/miui/bubbles/views/BubbleMessageView;->mShadowBounds:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/miui/bubbles/views/BubbleMessageView;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v2, v2, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    sget v3, Lcom/miui/bubbles/R$dimen;->bubble_app_shadow_radius_small:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sget v5, Lcom/miui/bubbles/R$color;->bubble_app_shadow_small:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iget-object v5, p0, Lcom/miui/bubbles/views/BubbleMessageView;->mShadowPaint:Landroid/graphics/Paint;

    int-to-float v3, v3

    invoke-virtual {v5, v3, v6, v4, v1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    iget-object v1, p0, Lcom/miui/bubbles/views/BubbleMessageView;->mShadowBounds:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/miui/bubbles/views/BubbleMessageView;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method private fade(Landroid/graphics/PointF;Ljava/lang/Runnable;)V
    .locals 0

    iget p1, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0, p1}, Lcom/miui/bubbles/views/BubbleMessageView;->updateFlyoutX(F)V

    iget p1, p0, Lcom/miui/bubbles/views/BubbleMessageView;->mRestingTranslationX:F

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private fixedWidthOrWrapContent(Z)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    :goto_0
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lcom/miui/bubbles/views/BubbleMessageView;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz p1, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/miui/bubbles/views/BubbleMessageView;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    :goto_1
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lcom/miui/bubbles/views/BubbleMessageView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/miui/bubbles/views/BubbleMessageView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    :goto_2
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    return-void
.end method

.method private synthetic lambda$animateUpdate$2(Landroid/graphics/PointF;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/bubbles/views/BubbleMessageView;->fade(Landroid/graphics/PointF;Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$animateUpdate$3(Lcom/miui/bubbles/Bubble$FlyoutMessage;Landroid/graphics/PointF;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/bubbles/views/BubbleMessageView;->updateFlyoutMessage(Lcom/miui/bubbles/Bubble$FlyoutMessage;)V

    new-instance p1, Lcom/miui/bubbles/views/f;

    invoke-direct {p1, p0, p2}, Lcom/miui/bubbles/views/f;-><init>(Lcom/miui/bubbles/views/BubbleMessageView;Landroid/graphics/PointF;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/bubbles/views/BubbleMessageView;->animateFlyoutCollapsed(Z)V

    iget-object v1, p0, Lcom/miui/bubbles/views/BubbleMessageView;->mHostBubble:Lcom/miui/bubbles/Bubble;

    invoke-static {v1, v0}, Lcom/miui/bubbles/utils/BubbleMessageTrackUtil;->trackBubbleMessageCollapsed(Lcom/miui/bubbles/Bubble;Z)V

    return-void
.end method

.method private synthetic lambda$setupFlyoutStarting$1(Landroid/graphics/PointF;Ljava/lang/Runnable;)V
    .locals 3

    iget v0, p1, Landroid/graphics/PointF;->y:F

    iget v1, p0, Lcom/miui/bubbles/views/BubbleMessageView;->mBubbleSize:I

    iget-object v2, p0, Lcom/miui/bubbles/views/BubbleMessageView;->mMessageContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/miui/bubbles/views/BubbleMessageView;->mFlyoutY:F

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    iget v0, p1, Landroid/graphics/PointF;->x:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/miui/bubbles/views/BubbleMessageView;->isOnLeft:Z

    iget-object v2, p0, Lcom/miui/bubbles/views/BubbleMessageView;->mMessageContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    sget v0, Lcom/miui/bubbles/R$drawable;->shape_bubble_message_bg_left:I

    goto :goto_1

    :cond_1
    sget v0, Lcom/miui/bubbles/R$drawable;->shape_bubble_message_bg_right:I

    :goto_1
    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget p1, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0, p1}, Lcom/miui/bubbles/views/BubbleMessageView;->updateFlyoutX(F)V

    iget-object p1, p0, Lcom/miui/bubbles/views/BubbleMessageView;->mMessageViewSize:Landroid/graphics/Point;

    iget-object v0, p0, Lcom/miui/bubbles/views/BubbleMessageView;->mMessageContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p1, Landroid/graphics/Point;->x:I

    iget-object p1, p0, Lcom/miui/bubbles/views/BubbleMessageView;->mMessageViewSize:Landroid/graphics/Point;

    iget-object v0, p0, Lcom/miui/bubbles/views/BubbleMessageView;->mMessageContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p1, Landroid/graphics/Point;->y:I

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_2
    iget-object p1, p0, Lcom/miui/bubbles/views/BubbleMessageView;->mShadowBounds:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v1, p2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method private startNotificationIntent(Landroid/service/notification/StatusBarNotification;)V
    .locals 11

    const-string v0, "startNotificationIntent: "

    const-string v1, "MiuiBubbles.BubbleFlyoutView"

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget-object v2, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    if-nez v2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget-object v3, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/bubbles/utils/BubbleMessageTrackUtil;->trackEnterFreeform(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method private updateFlyoutMessage(Lcom/miui/bubbles/Bubble$FlyoutMessage;)V
    .locals 2

    iget-object v0, p1, Lcom/miui/bubbles/Bubble$FlyoutMessage;->senderAvatar:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/bubbles/views/BubbleMessageView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_0
    iget-object v0, p1, Lcom/miui/bubbles/Bubble$FlyoutMessage;->largeIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/bubbles/views/BubbleMessageView;->mIconView:Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/miui/bubbles/Bubble$FlyoutMessage;->largeIconDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/bubbles/views/BubbleMessageView;->mIconView:Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/miui/bubbles/Bubble$FlyoutMessage;->appIcon:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    iget-object v0, p0, Lcom/miui/bubbles/views/BubbleMessageView;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/miui/bubbles/Bubble$FlyoutMessage;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/bubbles/views/BubbleMessageView;->mMessageView:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/miui/bubbles/Bubble$FlyoutMessage;->message:Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public animateFlyoutCollapsed(Z)V
    .locals 23

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-boolean v2, v0, Lcom/miui/bubbles/views/BubbleMessageView;->isOnLeft:Z

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotY(F)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "animateFlyoutCollapsed: collapsed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "\tthis="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MiuiBubbles.BubbleFlyoutView"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, v0, Lcom/miui/bubbles/views/BubbleMessageView;->mRestingTranslationX:F

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, v0, Lcom/miui/bubbles/views/BubbleMessageView;->mRestingTranslationX:F

    const-string v13, "alpha"

    const/4 v15, 0x3

    const/16 v7, 0xa

    const-string v5, "scaleY"

    const-string v6, "scaleX"

    const-string v8, "translationDeltaX"

    const-string v9, "width"

    const/4 v10, 0x1

    const/4 v11, 0x2

    const/4 v12, 0x0

    if-eqz v1, :cond_1

    invoke-direct {v0, v12}, Lcom/miui/bubbles/views/BubbleMessageView;->fixedWidthOrWrapContent(Z)V

    new-array v1, v10, [Ljava/lang/Object;

    iget-object v14, v0, Lcom/miui/bubbles/views/BubbleMessageView;->mMessageAnimName:Ljava/lang/String;

    aput-object v14, v1, v12

    invoke-static {v1}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v1

    new-array v14, v7, [Ljava/lang/Object;

    aput-object v9, v14, v12

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v14, v10

    aput-object v8, v14, v11

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v14, v15

    const/16 v21, 0x4

    aput-object v13, v14, v21

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getAlpha()F

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v22

    const/16 v20, 0x5

    aput-object v22, v14, v20

    const/16 v19, 0x6

    aput-object v6, v14, v19

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScaleX()F

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v22

    const/16 v18, 0x7

    aput-object v22, v14, v18

    const/16 v17, 0x8

    aput-object v5, v14, v17

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScaleY()F

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v22

    const/16 v16, 0x9

    aput-object v22, v14, v16

    invoke-interface {v1, v14}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v1

    const/16 v14, 0xb

    new-array v14, v14, [Ljava/lang/Object;

    aput-object v9, v14, v12

    iget v9, v0, Lcom/miui/bubbles/views/BubbleMessageView;->mArrowWidth:I

    iget-object v7, v0, Lcom/miui/bubbles/views/BubbleMessageView;->mMessageViewSize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    add-int/2addr v9, v7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v14, v10

    aput-object v13, v14, v11

    aput-object v4, v14, v15

    const/4 v4, 0x4

    aput-object v8, v14, v4

    const/16 v4, 0x14

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v7, 0x5

    aput-object v4, v14, v7

    const/4 v4, 0x6

    aput-object v6, v14, v4

    const v4, 0x3f19999a    # 0.6f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const/4 v7, 0x7

    aput-object v6, v14, v7

    const/16 v6, 0x8

    aput-object v5, v14, v6

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/16 v5, 0x9

    aput-object v4, v14, v5

    new-instance v4, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v4}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v5, v11, [F

    fill-array-data v5, :array_0

    const/4 v6, -0x2

    invoke-virtual {v4, v6, v5}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v4

    new-array v5, v10, [Lmiuix/animation/listener/TransitionListener;

    new-instance v6, Lcom/miui/bubbles/views/BubbleMessageView$2;

    invoke-direct {v6, v0, v2, v3}, Lcom/miui/bubbles/views/BubbleMessageView$2;-><init>(Lcom/miui/bubbles/views/BubbleMessageView;FF)V

    aput-object v6, v5, v12

    invoke-virtual {v4, v5}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object v2

    const/16 v3, 0xa

    aput-object v2, v14, v3

    invoke-interface {v1, v14}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    iget-object v1, v0, Lcom/miui/bubbles/views/BubbleMessageView;->mCallback:Lcom/miui/bubbles/views/BubbleMessageView$Callback;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/miui/bubbles/views/BubbleMessageView$Callback;->onHide()V

    goto/16 :goto_2

    :cond_1
    iget v1, v0, Lcom/miui/bubbles/views/BubbleMessageView;->mArrowWidth:I

    iget-object v7, v0, Lcom/miui/bubbles/views/BubbleMessageView;->mMessageViewSize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    add-int/2addr v1, v7

    int-to-float v1, v1

    iget-boolean v7, v0, Lcom/miui/bubbles/views/BubbleMessageView;->isOnLeft:Z

    if-eqz v7, :cond_2

    const/high16 v7, 0x41a00000    # 20.0f

    sub-float v7, v3, v7

    goto :goto_1

    :cond_2
    sub-float v7, v2, v1

    const/high16 v14, 0x41a00000    # 20.0f

    add-float/2addr v7, v14

    :goto_1
    new-instance v14, Lmiuix/animation/controller/AnimState;

    const-string v15, "show_start"

    invoke-direct {v14, v15}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v15, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    float-to-double v11, v7

    invoke-virtual {v14, v15, v11, v12}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v7

    sget-object v11, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    const-wide v14, 0x3fe3333340000000L    # 0.6000000238418579

    invoke-virtual {v7, v11, v14, v15}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v7

    sget-object v11, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    invoke-virtual {v7, v11, v14, v15}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v7

    sget-object v11, Lmiuix/animation/property/ViewProperty;->WIDTH:Lmiuix/animation/property/ViewProperty;

    float-to-double v14, v1

    invoke-virtual {v7, v11, v14, v15}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    sget-object v7, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    const-wide/16 v11, 0x0

    invoke-virtual {v1, v7, v11, v12}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    new-array v7, v10, [Landroid/view/View;

    const/4 v11, 0x0

    aput-object v0, v7, v11

    invoke-static {v7}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v7

    invoke-interface {v7}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v7

    invoke-interface {v7, v1}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    invoke-direct {v0, v11}, Lcom/miui/bubbles/views/BubbleMessageView;->fixedWidthOrWrapContent(Z)V

    new-instance v1, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v7, 0x2

    new-array v12, v7, [F

    fill-array-data v12, :array_1

    const/4 v14, -0x2

    invoke-virtual {v1, v14, v12}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    new-instance v12, Lmiuix/animation/utils/EaseManager$EaseStyle;

    new-array v15, v7, [F

    fill-array-data v15, :array_2

    invoke-direct {v12, v14, v15}, Lmiuix/animation/utils/EaseManager$EaseStyle;-><init>(I[F)V

    new-array v15, v11, [F

    invoke-virtual {v1, v8, v12, v15}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/utils/EaseManager$EaseStyle;[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    new-instance v12, Lmiuix/animation/utils/EaseManager$EaseStyle;

    new-array v15, v7, [F

    fill-array-data v15, :array_3

    invoke-direct {v12, v14, v15}, Lmiuix/animation/utils/EaseManager$EaseStyle;-><init>(I[F)V

    new-array v15, v11, [F

    invoke-virtual {v1, v9, v12, v15}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/utils/EaseManager$EaseStyle;[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    new-instance v12, Lmiuix/animation/utils/EaseManager$EaseStyle;

    new-array v15, v7, [F

    fill-array-data v15, :array_4

    invoke-direct {v12, v14, v15}, Lmiuix/animation/utils/EaseManager$EaseStyle;-><init>(I[F)V

    new-array v15, v11, [F

    invoke-virtual {v1, v6, v12, v15}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/utils/EaseManager$EaseStyle;[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    new-instance v12, Lmiuix/animation/utils/EaseManager$EaseStyle;

    new-array v15, v7, [F

    fill-array-data v15, :array_5

    invoke-direct {v12, v14, v15}, Lmiuix/animation/utils/EaseManager$EaseStyle;-><init>(I[F)V

    new-array v7, v11, [F

    invoke-virtual {v1, v5, v12, v7}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/utils/EaseManager$EaseStyle;[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    new-array v7, v10, [Lmiuix/animation/listener/TransitionListener;

    new-instance v12, Lcom/miui/bubbles/views/BubbleMessageView$3;

    invoke-direct {v12, v0, v2, v3}, Lcom/miui/bubbles/views/BubbleMessageView$3;-><init>(Lcom/miui/bubbles/views/BubbleMessageView;FF)V

    aput-object v12, v7, v11

    invoke-virtual {v1, v7}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    new-array v2, v10, [Ljava/lang/Object;

    iget-object v3, v0, Lcom/miui/bubbles/views/BubbleMessageView;->mMessageAnimName:Ljava/lang/String;

    aput-object v3, v2, v11

    invoke-static {v2}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v2

    const/16 v3, 0xa

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v9, v7, v11

    iget v3, v0, Lcom/miui/bubbles/views/BubbleMessageView;->mArrowWidth:I

    iget-object v11, v0, Lcom/miui/bubbles/views/BubbleMessageView;->mMessageViewSize:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->y:I

    add-int/2addr v3, v11

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v10

    const/4 v3, 0x2

    aput-object v8, v7, v3

    const/16 v3, 0x14

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v11, 0x3

    aput-object v3, v7, v11

    const/4 v3, 0x4

    aput-object v13, v7, v3

    const/4 v3, 0x5

    aput-object v4, v7, v3

    const/4 v3, 0x6

    aput-object v6, v7, v3

    const v3, 0x3f19999a    # 0.6f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v11, 0x7

    aput-object v4, v7, v11

    const/16 v4, 0x8

    aput-object v5, v7, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/16 v4, 0x9

    aput-object v3, v7, v4

    invoke-interface {v2, v7}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v2

    const/16 v3, 0xb

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v9, v3, v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v10

    const/4 v7, 0x2

    aput-object v8, v3, v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v7, 0x3

    aput-object v4, v3, v7

    const/4 v4, 0x4

    aput-object v13, v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    const/4 v8, 0x5

    aput-object v7, v3, v8

    const/4 v7, 0x6

    aput-object v6, v3, v7

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const/4 v7, 0x7

    aput-object v6, v3, v7

    const/16 v6, 0x8

    aput-object v5, v3, v6

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/16 v5, 0x9

    aput-object v4, v3, v5

    const/16 v4, 0xa

    aput-object v1, v3, v4

    invoke-interface {v2, v3}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    iget-object v1, v0, Lcom/miui/bubbles/views/BubbleMessageView;->mCallback:Lcom/miui/bubbles/views/BubbleMessageView$Callback;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/miui/bubbles/views/BubbleMessageView$Callback;->onShow()V

    :cond_3
    :goto_2
    return-void

    :array_0
    .array-data 4
        0x3f666666    # 0.9f
        0x3e4ccccd    # 0.2f
    .end array-data

    :array_1
    .array-data 4
        0x3f666666    # 0.9f
        0x3e800000    # 0.25f
    .end array-data

    :array_2
    .array-data 4
        0x3f59999a    # 0.85f
        0x3e800000    # 0.25f
    .end array-data

    :array_3
    .array-data 4
        0x3f400000    # 0.75f
        0x3e800000    # 0.25f
    .end array-data

    :array_4
    .array-data 4
        0x3f666666    # 0.9f
        0x3e800000    # 0.25f
    .end array-data

    :array_5
    .array-data 4
        0x3f666666    # 0.9f
        0x3e800000    # 0.25f
    .end array-data
.end method

.method public animateUpdate(Lcom/miui/bubbles/Bubble$FlyoutMessage;Landroid/graphics/PointF;)V
    .locals 1

    new-instance v0, Lcom/miui/bubbles/views/d;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/bubbles/views/d;-><init>(Lcom/miui/bubbles/views/BubbleMessageView;Lcom/miui/bubbles/Bubble$FlyoutMessage;Landroid/graphics/PointF;)V

    invoke-direct {p0, p2, v0}, Lcom/miui/bubbles/views/BubbleMessageView;->fade(Landroid/graphics/PointF;Ljava/lang/Runnable;)V

    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getOverlay()Landroid/view/ViewOverlay;
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    return-object v0
.end method

.method public hideFlyout()V
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public hideFlyoutDelay()V
    .locals 3

    iget-object v0, p0, Lcom/miui/bubbles/views/BubbleMessageView;->mHideFlyout:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/miui/bubbles/views/BubbleMessageView;->mHideFlyout:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/bubbles/views/BubbleMessageView;->hideFlyout()V

    iget-object p1, p0, Lcom/miui/bubbles/views/BubbleMessageView;->mFlyoutMessage:Lcom/miui/bubbles/Bubble$FlyoutMessage;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p1, Lcom/miui/bubbles/Bubble$FlyoutMessage;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-direct {p0, p1}, Lcom/miui/bubbles/views/BubbleMessageView;->startNotificationIntent(Landroid/service/notification/StatusBarNotification;)V

    iget-object p1, p0, Lcom/miui/bubbles/views/BubbleMessageView;->mHostBubble:Lcom/miui/bubbles/Bubble;

    invoke-static {p1}, Lcom/miui/bubbles/utils/BubbleMessageTrackUtil;->trackBubbleMessageClick(Lcom/miui/bubbles/Bubble;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string p1, "MiuiBubbles.BubbleFlyoutView"

    const-string v0, "onConfigurationChanged: ....BubbleMessageView"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/bubbles/views/BubbleMessageView;->mTitleView:Landroid/widget/TextView;

    sget v1, Lcom/miui/bubbles/R$color;->bubble_message_title:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/miui/bubbles/views/BubbleMessageView;->mMessageView:Landroid/widget/TextView;

    sget v1, Lcom/miui/bubbles/R$color;->bubble_message_content:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/miui/bubbles/views/BubbleMessageView;->mMessageView:Landroid/widget/TextView;

    sget v1, Lcom/miui/bubbles/R$dimen;->bubble_message_view_max_width:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMaxWidth(I)V

    iget-object p1, p0, Lcom/miui/bubbles/views/BubbleMessageView;->mMessageContainer:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p1, p0, Lcom/miui/bubbles/views/BubbleMessageView;->mMessageContainer:Landroid/view/ViewGroup;

    iget-boolean v0, p0, Lcom/miui/bubbles/views/BubbleMessageView;->isOnLeft:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/miui/bubbles/R$drawable;->shape_bubble_message_bg_left:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/miui/bubbles/R$drawable;->shape_bubble_message_bg_right:I

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/bubbles/views/BubbleMessageView;->mMessageContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/miui/bubbles/views/BubbleMessageView;->mShadowBounds:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-direct {p0, p1}, Lcom/miui/bubbles/views/BubbleMessageView;->drawShadow(Landroid/graphics/Canvas;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setAlpha(F)V
    .locals 1

    iget-object v0, p0, Lcom/miui/bubbles/views/BubbleMessageView;->mMessageContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/miui/bubbles/views/BubbleMessageView;->mAlpha:I

    return-void
.end method

.method public setCallback(Lcom/miui/bubbles/views/BubbleMessageView$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/bubbles/views/BubbleMessageView;->mCallback:Lcom/miui/bubbles/views/BubbleMessageView$Callback;

    return-void
.end method

.method public setUp(Lcom/miui/bubbles/BubbleStackView;Lcom/miui/bubbles/Bubble;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/View;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/miui/bubbles/Bubble;->removeFromParent([Landroid/view/View;)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    iput-object p2, p0, Lcom/miui/bubbles/views/BubbleMessageView;->mHostBubble:Lcom/miui/bubbles/Bubble;

    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p2, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p0, v1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setupFlyoutStarting(Lcom/miui/bubbles/Bubble$FlyoutMessage;Landroid/graphics/PointF;Ljava/lang/Runnable;)V
    .locals 1
    .param p3    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/miui/bubbles/views/BubbleMessageView;->mPositioner:Lcom/miui/bubbles/BubblePositioner;

    invoke-virtual {v0}, Lcom/miui/bubbles/BubblePositioner;->getBubbleSize()I

    move-result v0

    iput v0, p0, Lcom/miui/bubbles/views/BubbleMessageView;->mBubbleSize:I

    iput-object p1, p0, Lcom/miui/bubbles/views/BubbleMessageView;->mFlyoutMessage:Lcom/miui/bubbles/Bubble$FlyoutMessage;

    invoke-direct {p0, p1}, Lcom/miui/bubbles/views/BubbleMessageView;->updateFlyoutMessage(Lcom/miui/bubbles/Bubble$FlyoutMessage;)V

    new-instance p1, Lcom/miui/bubbles/views/c;

    invoke-direct {p1, p0, p2, p3}, Lcom/miui/bubbles/views/c;-><init>(Lcom/miui/bubbles/views/BubbleMessageView;Landroid/graphics/PointF;Ljava/lang/Runnable;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method updateFlyoutX(F)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/bubbles/R$dimen;->bubble_message_gap:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-boolean v1, p0, Lcom/miui/bubbles/views/BubbleMessageView;->isOnLeft:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/miui/bubbles/views/BubbleMessageView;->mBubbleSize:I

    int-to-float v1, v1

    add-float/2addr p1, v1

    int-to-float v0, v0

    add-float/2addr p1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr p1, v1

    int-to-float v0, v0

    sub-float/2addr p1, v0

    :goto_0
    iput p1, p0, Lcom/miui/bubbles/views/BubbleMessageView;->mRestingTranslationX:F

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method

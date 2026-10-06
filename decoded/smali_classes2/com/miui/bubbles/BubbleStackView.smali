.class public Lcom/miui/bubbles/BubbleStackView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# static fields
.field private static final BUBBLE_DISMISS_DELAY_INTERVAL:I = 0x1f4

.field private static final CONFIG_THEME_CHANGED:I = -0x80000000

.field private static final EDGE_FRICTION:F = 4.0f

.field private static final TAG:Ljava/lang/String; = "MiuiBubbles.BSV"


# instance fields
.field private final mBubbleClickListener:Landroid/view/View$OnClickListener;

.field private final mBubbleContainer:Landroid/widget/FrameLayout;

.field private final mBubbleData:Lcom/miui/bubbles/BubbleData;

.field private final mBubbleTouchListener:Lcom/miui/bubbles/RelativeTouchListener;

.field private final mConfiguration:Landroid/content/res/Configuration;

.field private final mHandler:Landroid/os/Handler;

.field private final mPositioner:Lcom/miui/bubbles/BubblePositioner;

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTempRegion:Landroid/graphics/Region;

.field private mViewUpdatedRequested:Z

.field private final mViewUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/bubbles/BubbleController;Lcom/miui/bubbles/BubbleData;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/bubbles/BubbleStackView;->mTempRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1, v0}, Landroid/graphics/Region;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, p0, Lcom/miui/bubbles/BubbleStackView;->mTempRegion:Landroid/graphics/Region;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/bubbles/BubbleStackView;->mViewUpdatedRequested:Z

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/miui/bubbles/BubbleStackView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/bubbles/BubbleStackView$1;

    invoke-direct {v1, p0}, Lcom/miui/bubbles/BubbleStackView$1;-><init>(Lcom/miui/bubbles/BubbleStackView;)V

    iput-object v1, p0, Lcom/miui/bubbles/BubbleStackView;->mViewUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    new-instance v1, Lcom/miui/bubbles/BubbleStackView$2;

    invoke-direct {v1, p0}, Lcom/miui/bubbles/BubbleStackView$2;-><init>(Lcom/miui/bubbles/BubbleStackView;)V

    iput-object v1, p0, Lcom/miui/bubbles/BubbleStackView;->mBubbleClickListener:Landroid/view/View$OnClickListener;

    new-instance v1, Lcom/miui/bubbles/BubbleStackView$3;

    invoke-direct {v1, p0}, Lcom/miui/bubbles/BubbleStackView$3;-><init>(Lcom/miui/bubbles/BubbleStackView;)V

    iput-object v1, p0, Lcom/miui/bubbles/BubbleStackView;->mBubbleTouchListener:Lcom/miui/bubbles/RelativeTouchListener;

    iput-object p3, p0, Lcom/miui/bubbles/BubbleStackView;->mBubbleData:Lcom/miui/bubbles/BubbleData;

    invoke-virtual {p2}, Lcom/miui/bubbles/BubbleController;->getPositioner()Lcom/miui/bubbles/BubblePositioner;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/bubbles/BubbleStackView;->mPositioner:Lcom/miui/bubbles/BubblePositioner;

    new-instance p2, Landroid/content/res/Configuration;

    invoke-direct {p2}, Landroid/content/res/Configuration;-><init>()V

    iput-object p2, p0, Lcom/miui/bubbles/BubbleStackView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    new-instance p2, Landroid/widget/FrameLayout;

    invoke-direct {p2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/miui/bubbles/BubbleStackView;->mBubbleContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p3, -0x1

    invoke-direct {p1, p3, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutDirection(I)V

    return-void
.end method

.method public static synthetic a(Lcom/miui/bubbles/BubbleStackView;Lcom/miui/bubbles/Bubble;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/bubbles/BubbleStackView;->lambda$animateInMessageForBubble$5(Lcom/miui/bubbles/Bubble;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/bubbles/BubbleStackView;)Landroid/view/ViewTreeObserver$OnPreDrawListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/bubbles/BubbleStackView;->mViewUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    return-object p0
.end method

.method static synthetic access$102(Lcom/miui/bubbles/BubbleStackView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/bubbles/BubbleStackView;->mViewUpdatedRequested:Z

    return p1
.end method

.method static synthetic access$200(Lcom/miui/bubbles/BubbleStackView;)Lcom/miui/bubbles/BubbleData;
    .locals 0

    iget-object p0, p0, Lcom/miui/bubbles/BubbleStackView;->mBubbleData:Lcom/miui/bubbles/BubbleData;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/bubbles/BubbleStackView;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/miui/bubbles/BubbleStackView;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/bubbles/BubbleStackView;Lcom/miui/bubbles/Bubble;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/bubbles/BubbleStackView;->dismissBubbleIfExists(Lcom/miui/bubbles/Bubble;)V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/bubbles/BubbleStackView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/bubbles/BubbleStackView;->hideFlyoutImmediate()V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/bubbles/BubbleStackView;)Lcom/miui/bubbles/BubblePositioner;
    .locals 0

    iget-object p0, p0, Lcom/miui/bubbles/BubbleStackView;->mPositioner:Lcom/miui/bubbles/BubblePositioner;

    return-object p0
.end method

.method private animateInMessageForBubble(Lcom/miui/bubbles/Bubble;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/miui/bubbles/BubbleStackView;->shouldShowFlyout(Lcom/miui/bubbles/Bubble;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/bubbles/BubbleStackView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/bubbles/j;

    invoke-direct {v1, p0, p1}, Lcom/miui/bubbles/j;-><init>(Lcom/miui/bubbles/BubbleStackView;Lcom/miui/bubbles/Bubble;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p1, Lcom/miui/bubbles/Bubble;->mFreeformMode:Lcom/miui/bubbles/data/FreeformMode;

    invoke-virtual {p1}, Lcom/miui/bubbles/Bubble;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/bubbles/utils/BubbleMessageTrackUtil;->trackBubbleMessageExposure(Lcom/miui/bubbles/data/FreeformMode;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/bubbles/Bubble;->getBubbleMessageView()Lcom/miui/bubbles/views/BubbleMessageView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/bubbles/views/BubbleMessageView;->hideFlyoutDelay()V

    return-void
.end method

.method public static synthetic b(Lcom/miui/bubbles/Bubble;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/bubbles/BubbleStackView;->lambda$addBubble$1(Lcom/miui/bubbles/Bubble;)V

    return-void
.end method

.method private boundsChanged(Landroid/content/res/Configuration;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/bubbles/BubbleStackView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-direct {p0, v0}, Lcom/miui/bubbles/BubbleStackView;->getWindowConfigBounds(Landroid/content/res/Configuration;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/miui/bubbles/BubbleStackView;->getWindowConfigBounds(Landroid/content/res/Configuration;)Landroid/graphics/Rect;

    move-result-object p1

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static synthetic c(Lcom/miui/bubbles/BubbleStackView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/bubbles/BubbleStackView;->lambda$updateBubblesLocation$6()V

    return-void
.end method

.method public static synthetic d(Lcom/miui/bubbles/BubbleStackView;Lcom/miui/bubbles/views/BubbleMessageView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/bubbles/BubbleStackView;->lambda$animateInMessageForBubble$4(Lcom/miui/bubbles/views/BubbleMessageView;)V

    return-void
.end method

.method private dismissBubbleIfExists(Lcom/miui/bubbles/Bubble;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/bubbles/BubbleStackView;->mBubbleData:Lcom/miui/bubbles/BubbleData;

    invoke-virtual {p1}, Lcom/miui/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/bubbles/BubbleData;->hasBubbleInStackWithKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/bubbles/BubbleStackView;->mBubbleData:Lcom/miui/bubbles/BubbleData;

    invoke-virtual {p1}, Lcom/miui/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/miui/bubbles/BubbleData;->dismissBubbleWithKey(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public static synthetic e(Lcom/miui/bubbles/views/BubbleImageView;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/bubbles/BubbleStackView;->lambda$addBubble$2(Lcom/miui/bubbles/views/BubbleImageView;)V

    return-void
.end method

.method public static synthetic f(Lcom/miui/bubbles/BubbleStackView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/bubbles/BubbleStackView;->lambda$onScreenStatusChanged$0(Z)V

    return-void
.end method

.method public static synthetic g(Lcom/miui/bubbles/views/BubbleMessageView;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/bubbles/BubbleStackView;->lambda$animateInMessageForBubble$3(Lcom/miui/bubbles/views/BubbleMessageView;)V

    return-void
.end method

.method private getTouchableRegion(Landroid/graphics/Region;)V
    .locals 4
    .param p1    # Landroid/graphics/Region;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/miui/bubbles/BubbleStackView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    invoke-virtual {p0}, Lcom/miui/bubbles/BubbleStackView;->getBubbleCount()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Region;->setEmpty()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/miui/bubbles/BubbleStackView;->mBubbleContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/bubbles/BubbleStackView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/graphics/Region;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/bubbles/BubbleStackView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/miui/bubbles/BubbleStackView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/bubbles/BubbleStackView;->mBubbleData:Lcom/miui/bubbles/BubbleData;

    invoke-virtual {v0}, Lcom/miui/bubbles/BubbleData;->getBubbles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/bubbles/Bubble;

    invoke-virtual {v1}, Lcom/miui/bubbles/Bubble;->getBubbleMessageView()Lcom/miui/bubbles/views/BubbleMessageView;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_3

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/miui/bubbles/BubbleStackView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/miui/bubbles/views/BubbleMessageView;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/miui/bubbles/BubbleStackView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    goto :goto_2

    :cond_4
    return-void
.end method

.method private getWindowConfigBounds(Landroid/content/res/Configuration;)Landroid/graphics/Rect;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "windowConfiguration"

    invoke-static {p1, v1}, Lbh/f;->j(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-class v1, Landroid/graphics/Rect;

    const-string v2, "getBounds"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, v1, v2, v0, v3}, Lbh/f;->b(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    goto :goto_0

    :catch_3
    move-exception p1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method private hideFlyoutImmediate()V
    .locals 2

    iget-object v0, p0, Lcom/miui/bubbles/BubbleStackView;->mBubbleData:Lcom/miui/bubbles/BubbleData;

    invoke-virtual {v0}, Lcom/miui/bubbles/BubbleData;->getBubbles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/bubbles/Bubble;

    invoke-virtual {v1}, Lcom/miui/bubbles/Bubble;->getBubbleMessageView()Lcom/miui/bubbles/views/BubbleMessageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/bubbles/views/BubbleMessageView;->hideFlyout()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private isThemeChanged(Landroid/content/res/Configuration;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/bubbles/BubbleStackView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result p1

    const/high16 v0, -0x80000000

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private static synthetic lambda$addBubble$1(Lcom/miui/bubbles/Bubble;)V
    .locals 0

    iget p0, p0, Lcom/miui/bubbles/Bubble;->stackId:I

    invoke-static {p0}, Lmiui/app/MiuiFreeFormManager;->hidePinFloatingWindow(I)V

    return-void
.end method

.method private static synthetic lambda$addBubble$2(Lcom/miui/bubbles/views/BubbleImageView;)V
    .locals 1

    sget-object v0, Lcom/miui/bubbles/data/EdgeState;->PINNED:Lcom/miui/bubbles/data/EdgeState;

    invoke-virtual {p0, v0}, Lcom/miui/bubbles/views/BubbleImageView;->setEdgeState(Lcom/miui/bubbles/data/EdgeState;)V

    return-void
.end method

.method private static synthetic lambda$animateInMessageForBubble$3(Lcom/miui/bubbles/views/BubbleMessageView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/bubbles/views/BubbleMessageView;->animateFlyoutCollapsed(Z)V

    invoke-virtual {p0}, Lcom/miui/bubbles/views/BubbleMessageView;->hideFlyoutDelay()V

    return-void
.end method

.method private synthetic lambda$animateInMessageForBubble$4(Lcom/miui/bubbles/views/BubbleMessageView;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/bubbles/BubbleStackView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/bubbles/k;

    invoke-direct {v1, p1}, Lcom/miui/bubbles/k;-><init>(Lcom/miui/bubbles/views/BubbleMessageView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$animateInMessageForBubble$5(Lcom/miui/bubbles/Bubble;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "animateInMessageForBubble: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiBubbles.BSV"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/miui/bubbles/Bubble;->getIconView()Lcom/miui/bubbles/views/BubbleImageView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/miui/bubbles/Bubble;->getBubbleMessageView()Lcom/miui/bubbles/views/BubbleMessageView;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/miui/bubbles/views/BubbleMessageView;->setUp(Lcom/miui/bubbles/BubbleStackView;Lcom/miui/bubbles/Bubble;)V

    new-instance v2, Lcom/miui/bubbles/BubbleStackView$4;

    invoke-direct {v2, p0, v0}, Lcom/miui/bubbles/BubbleStackView$4;-><init>(Lcom/miui/bubbles/BubbleStackView;Lcom/miui/bubbles/views/BubbleImageView;)V

    invoke-virtual {v1, v2}, Lcom/miui/bubbles/views/BubbleMessageView;->setCallback(Lcom/miui/bubbles/views/BubbleMessageView$Callback;)V

    invoke-static {v0}, Lcom/miui/bubbles/animation/BubbleAnimator;->resetEdgeAlpha(Landroid/view/View;)V

    new-instance v0, Lcom/miui/bubbles/p;

    invoke-direct {v0, p0, v1}, Lcom/miui/bubbles/p;-><init>(Lcom/miui/bubbles/BubbleStackView;Lcom/miui/bubbles/views/BubbleMessageView;)V

    iget-object v2, p0, Lcom/miui/bubbles/BubbleStackView;->mPositioner:Lcom/miui/bubbles/BubblePositioner;

    invoke-virtual {v2, p1}, Lcom/miui/bubbles/BubblePositioner;->getBubbleRect(Lcom/miui/bubbles/Bubble;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p1}, Lcom/miui/bubbles/Bubble;->getFlyoutMessage()Lcom/miui/bubbles/Bubble$FlyoutMessage;

    move-result-object p1

    new-instance v0, Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-direct {v0, v3, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v1, p1, v0}, Lcom/miui/bubbles/views/BubbleMessageView;->animateUpdate(Lcom/miui/bubbles/Bubble$FlyoutMessage;Landroid/graphics/PointF;)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/miui/bubbles/Bubble;->getFlyoutMessage()Lcom/miui/bubbles/Bubble$FlyoutMessage;

    move-result-object p1

    new-instance v3, Landroid/graphics/PointF;

    iget v4, v2, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-direct {v3, v4, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v1, p1, v3, v0}, Lcom/miui/bubbles/views/BubbleMessageView;->setupFlyoutStarting(Lcom/miui/bubbles/Bubble$FlyoutMessage;Landroid/graphics/PointF;Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onScreenStatusChanged$0(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/bubbles/BubbleStackView;->showOrHideBubbleTemporary(Z)V

    return-void
.end method

.method private synthetic lambda$updateBubblesLocation$6()V
    .locals 6

    iget-object v0, p0, Lcom/miui/bubbles/BubbleStackView;->mBubbleData:Lcom/miui/bubbles/BubbleData;

    invoke-virtual {v0}, Lcom/miui/bubbles/BubbleData;->getBubbles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/bubbles/Bubble;

    invoke-virtual {v1}, Lcom/miui/bubbles/Bubble;->getIconView()Lcom/miui/bubbles/views/BubbleImageView;

    move-result-object v2

    const-string v3, "MiuiBubbles.BSV"

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/miui/bubbles/views/BubbleImageView;->isEdgeState()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Lcom/miui/bubbles/Bubble;->getBubbleMessageView()Lcom/miui/bubbles/views/BubbleMessageView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/bubbles/views/BubbleMessageView;->hideFlyout()V

    invoke-virtual {v1}, Lcom/miui/bubbles/Bubble;->getBubbleMessageView()Lcom/miui/bubbles/views/BubbleMessageView;

    move-result-object v2

    invoke-virtual {v2, p0, v1}, Lcom/miui/bubbles/views/BubbleMessageView;->setUp(Lcom/miui/bubbles/BubbleStackView;Lcom/miui/bubbles/Bubble;)V

    invoke-virtual {v1}, Lcom/miui/bubbles/Bubble;->getIconView()Lcom/miui/bubbles/views/BubbleImageView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/bubbles/views/BubbleImageView;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateBubblesLocation: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/miui/bubbles/BubbleStackView;->mPositioner:Lcom/miui/bubbles/BubblePositioner;

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v2, v4}, Lcom/miui/bubbles/BubblePositioner;->adjustEdgeToAvoidIntersect(Lcom/miui/bubbles/Bubble;Landroid/graphics/Rect;Z)V

    iget v3, v1, Lcom/miui/bubbles/Bubble;->stackId:I

    invoke-static {v2, v3}, Lmiui/app/MiuiFreeFormManager;->updatePinFloatingWindowPos(Landroid/graphics/Rect;I)V

    invoke-virtual {v1}, Lcom/miui/bubbles/Bubble;->getIconView()Lcom/miui/bubbles/views/BubbleImageView;

    move-result-object v1

    iget v3, v2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-static {v1, v3, v2}, Lcom/miui/bubbles/animation/BubbleAnimator;->moveBubbleTo(Landroid/view/View;FF)V

    goto :goto_0

    :cond_1
    :goto_1
    const-string v1, "updateBubblesLocation continue!"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    return-void
.end method

.method private onConfigChanged()V
    .locals 1

    iget-object v0, p0, Lcom/miui/bubbles/BubbleStackView;->mPositioner:Lcom/miui/bubbles/BubblePositioner;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/bubbles/BubblePositioner;->update()V

    :cond_0
    invoke-virtual {p0}, Lcom/miui/bubbles/BubbleStackView;->updateBubblesLocation()V

    invoke-direct {p0}, Lcom/miui/bubbles/BubbleStackView;->updateBubbleAppBounds()V

    return-void
.end method

.method private requestUpdate()V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/bubbles/BubbleStackView;->mViewUpdatedRequested:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/bubbles/BubbleStackView;->mViewUpdatedRequested:Z

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/bubbles/BubbleStackView;->mViewUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private shouldShowFlyout(Lcom/miui/bubbles/Bubble;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/miui/bubbles/Bubble;->getFlyoutMessage()Lcom/miui/bubbles/Bubble$FlyoutMessage;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/bubbles/Bubble;->getIconView()Lcom/miui/bubbles/views/BubbleImageView;

    move-result-object p1

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/miui/bubbles/Bubble$FlyoutMessage;->message:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private showOrHideBubbleTemporary(Z)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showOrHideBubbleTemporary: isShow = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiBubbles.BSV"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/bubbles/BubbleStackView;->mBubbleData:Lcom/miui/bubbles/BubbleData;

    invoke-virtual {v0}, Lcom/miui/bubbles/BubbleData;->getBubbles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/bubbles/Bubble;

    invoke-virtual {v2}, Lcom/miui/bubbles/Bubble;->getIconView()Lcom/miui/bubbles/views/BubbleImageView;

    move-result-object v3

    if-eqz p1, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    const/16 v4, 0x8

    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2}, Lcom/miui/bubbles/Bubble;->getBubbleMessageView()Lcom/miui/bubbles/views/BubbleMessageView;

    move-result-object v3

    if-eqz v3, :cond_0

    if-nez p1, :cond_0

    invoke-virtual {v2}, Lcom/miui/bubbles/Bubble;->getBubbleMessageView()Lcom/miui/bubbles/views/BubbleMessageView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/bubbles/views/BubbleMessageView;->hideFlyout()V

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bubble touchable region : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/bubbles/BubbleStackView;->mTempRegion:Landroid/graphics/Region;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\tBubbleCount="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/bubbles/BubbleStackView;->getBubbleCount()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateBubbleAppBounds()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/bubbles/controller/FreeFormController;->getInstance(Landroid/content/Context;)Lcom/miui/bubbles/controller/FreeFormController;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/bubbles/BubbleStackView;->mBubbleData:Lcom/miui/bubbles/BubbleData;

    invoke-virtual {v0, v1}, Lcom/miui/bubbles/controller/FreeFormController;->updateBubbleAppBounds(Lcom/miui/bubbles/BubbleData;)V

    return-void
.end method


# virtual methods
.method addBubble(Lcom/miui/bubbles/Bubble;)V
    .locals 5

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/miui/bubbles/Bubble;->getIconView()Lcom/miui/bubbles/views/BubbleImageView;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/miui/bubbles/BubbleStackView;->mPositioner:Lcom/miui/bubbles/BubblePositioner;

    iget-object v1, p1, Lcom/miui/bubbles/Bubble;->pinFloatingWindowPos:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Lcom/miui/bubbles/BubblePositioner;->adjustEdgeToAvoidIntersect(Lcom/miui/bubbles/Bubble;Landroid/graphics/Rect;)V

    iget-object v0, p1, Lcom/miui/bubbles/Bubble;->pinFloatingWindowPos:Landroid/graphics/Rect;

    iget v1, p1, Lcom/miui/bubbles/Bubble;->stackId:I

    invoke-static {v0, v1}, Lmiui/app/MiuiFreeFormManager;->updatePinFloatingWindowPos(Landroid/graphics/Rect;I)V

    iget-object v0, p1, Lcom/miui/bubbles/Bubble;->pinFloatingWindowPos:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p1, Lcom/miui/bubbles/Bubble;->pinFloatingWindowPos:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p1}, Lcom/miui/bubbles/Bubble;->getIconView()Lcom/miui/bubbles/views/BubbleImageView;

    move-result-object v2

    sget-object v3, Lcom/miui/bubbles/data/EdgeState;->UNDEFINE:Lcom/miui/bubbles/data/EdgeState;

    invoke-virtual {v2, v3}, Lcom/miui/bubbles/views/BubbleImageView;->setEdgeState(Lcom/miui/bubbles/data/EdgeState;)V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v0, p1, Lcom/miui/bubbles/Bubble;->pinFloatingWindowPos:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p1, Lcom/miui/bubbles/Bubble;->pinFloatingWindowPos:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setTranslationY(F)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addBubble: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\tmAppBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/miui/bubbles/Bubble;->pinFloatingWindowPos:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiBubbles.BSV"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/view/View;->setEnabled(Z)V

    sget-object v1, Lcom/miui/bubbles/data/EdgeState;->ANIMATING:Lcom/miui/bubbles/data/EdgeState;

    invoke-virtual {v2, v1}, Lcom/miui/bubbles/views/BubbleImageView;->setEdgeState(Lcom/miui/bubbles/data/EdgeState;)V

    const/4 v1, 0x4

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/bubbles/BubbleStackView;->mBubbleContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v2}, Lcom/miui/bubbles/animation/BubbleAnimator;->showShadow(Lcom/miui/bubbles/views/BubbleImageView;)V

    iget-boolean v1, p1, Lcom/miui/bubbles/Bubble;->isRestored:Z

    if-nez v1, :cond_1

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/bubbles/BubbleStackView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/bubbles/n;

    invoke-direct {v1, p1}, Lcom/miui/bubbles/n;-><init>(Lcom/miui/bubbles/Bubble;)V

    const-wide/16 v3, 0x64

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/miui/bubbles/BubbleStackView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/bubbles/o;

    invoke-direct {v1, v2}, Lcom/miui/bubbles/o;-><init>(Lcom/miui/bubbles/views/BubbleImageView;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/miui/bubbles/BubbleStackView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Lcom/miui/bubbles/views/BubbleImageView;->disableForWhile(Landroid/os/Handler;)V

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lcom/miui/bubbles/animation/BubbleAnimator;->showPinnedAppFromRestore(Lcom/miui/bubbles/views/BubbleImageView;)V

    :goto_0
    iget-object v0, p0, Lcom/miui/bubbles/BubbleStackView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Lcom/miui/bubbles/views/BubbleImageView;->postReduceAlphaTask(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/miui/bubbles/BubbleStackView;->mPositioner:Lcom/miui/bubbles/BubblePositioner;

    iget-object v1, p1, Lcom/miui/bubbles/Bubble;->pinFloatingWindowPos:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Lcom/miui/bubbles/BubblePositioner;->setBubbleRect(Lcom/miui/bubbles/Bubble;Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/miui/bubbles/BubbleStackView;->mBubbleClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/bubbles/BubbleStackView;->mBubbleTouchListener:Lcom/miui/bubbles/RelativeTouchListener;

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-direct {p0}, Lcom/miui/bubbles/BubbleStackView;->requestUpdate()V

    invoke-static {}, Lcom/miui/bubbles/utils/TipsManager;->getInstance()Lcom/miui/bubbles/utils/TipsManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/bubbles/Bubble;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/miui/bubbles/utils/TipsManager;->showBarrageTipsIfNeed(Ljava/lang/String;I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BubbleCount"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/bubbles/BubbleStackView;->getBubbleCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "touchable region"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/bubbles/BubbleStackView;->mTempRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/bubbles/BubbleStackView;->mBubbleData:Lcom/miui/bubbles/BubbleData;

    invoke-virtual {v0}, Lcom/miui/bubbles/BubbleData;->getBubbles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/bubbles/Bubble;

    invoke-virtual {v1}, Lcom/miui/bubbles/Bubble;->getIconView()Lcom/miui/bubbles/views/BubbleImageView;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStatusBarStateChanged. Icon null: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiuiBubbles.BSV"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isRestored = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Lcom/miui/bubbles/Bubble;->isRestored:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/miui/bubbles/Bubble;->getIconView()Lcom/miui/bubbles/views/BubbleImageView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "edge state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/miui/bubbles/views/BubbleImageView;->getEdgeState()Lcom/miui/bubbles/data/EdgeState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "drag state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/miui/bubbles/views/BubbleImageView;->getDragState()Lcom/miui/bubbles/views/BubbleImageView$DragState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enable state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clickable state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/view/View;->isClickable()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bounds = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/miui/bubbles/views/BubbleImageView;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
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

.method public getBubbleCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/bubbles/BubbleStackView;->mBubbleContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getOverlay()Landroid/view/ViewOverlay;
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    return-void
.end method

.method public onComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    iget-object v0, p0, Lcom/miui/bubbles/BubbleStackView;->mTempRegion:Landroid/graphics/Region;

    invoke-direct {p0, v0}, Lcom/miui/bubbles/BubbleStackView;->getTouchableRegion(Landroid/graphics/Region;)V

    iget-object p1, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    iget-object v0, p0, Lcom/miui/bubbles/BubbleStackView;->mTempRegion:Landroid/graphics/Region;

    invoke-virtual {p1, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigurationChanged: Orientation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " densityDpi: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/miui/bubbles/BubbleStackView;->getWindowConfigBounds(Landroid/content/res/Configuration;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiBubbles.BSV"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/bubbles/BubbleStackView;->mConfiguration:Landroid/content/res/Configuration;

    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v3, :cond_0

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    iget v2, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-ne v0, v2, :cond_0

    invoke-direct {p0, p1}, Lcom/miui/bubbles/BubbleStackView;->boundsChanged(Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/miui/bubbles/BubbleStackView;->onConfigChanged()V

    :cond_1
    iget-object v0, p0, Lcom/miui/bubbles/BubbleStackView;->mConfiguration:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    if-eq v0, v2, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged: uiMode Changed, : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    invoke-static {v2}, Landroid/content/res/Configuration;->uiModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/miui/bubbles/BubbleStackView;->onUiModeChanged()V

    :cond_2
    invoke-direct {p0, p1}, Lcom/miui/bubbles/BubbleStackView;->isThemeChanged(Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/miui/bubbles/BubbleStackView;->onThemeChanged()V

    :cond_3
    iget-object v0, p0, Lcom/miui/bubbles/BubbleStackView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    return-void
.end method

.method public onScreenStatusChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/miui/bubbles/BubbleStackView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/bubbles/l;

    invoke-direct {v1, p0, p1}, Lcom/miui/bubbles/l;-><init>(Lcom/miui/bubbles/BubbleStackView;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onStatusBarStateChanged(Z)V
    .locals 4

    iget-object v0, p0, Lcom/miui/bubbles/BubbleStackView;->mBubbleData:Lcom/miui/bubbles/BubbleData;

    invoke-virtual {v0}, Lcom/miui/bubbles/BubbleData;->getBubbles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/bubbles/Bubble;

    invoke-virtual {v1}, Lcom/miui/bubbles/Bubble;->getIconView()Lcom/miui/bubbles/views/BubbleImageView;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStatusBarStateChanged. Icon null: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiuiBubbles.BSV"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/miui/bubbles/Bubble;->getBubbleMessageView()Lcom/miui/bubbles/views/BubbleMessageView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/bubbles/views/BubbleMessageView;->hideFlyout()V

    invoke-virtual {v1}, Lcom/miui/bubbles/Bubble;->getIconView()Lcom/miui/bubbles/views/BubbleImageView;

    move-result-object v1

    if-eqz p1, :cond_1

    const/4 v2, 0x4

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onThemeChanged()V
    .locals 7

    const-string v0, "MiuiBubbles.BSV"

    const-string v1, "onThemeChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/bubbles/BubbleStackView;->mBubbleData:Lcom/miui/bubbles/BubbleData;

    invoke-virtual {v2}, Lcom/miui/bubbles/BubbleData;->getBubbles()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/bubbles/Bubble;

    invoke-virtual {v3}, Lcom/miui/bubbles/Bubble;->getIconView()Lcom/miui/bubbles/views/BubbleImageView;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onThemeChanged. Icon null: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {v3}, Lcom/miui/bubbles/Bubble;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget v5, v3, Lcom/miui/bubbles/Bubble;->userId:I

    const/16 v6, 0x3e7

    if-ne v5, v6, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Lmiui/securityspace/XSpaceUserHandle;->getXSpaceIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :cond_1
    invoke-static {}, Lcom/miui/bubbles/utils/BubblesDimenUtils;->getBubbleIconSize()I

    move-result v5

    invoke-static {v4, v5}, Lcom/miui/bubbles/BubbleViewInfoTask;->getBitmapByDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3}, Lcom/miui/bubbles/Bubble;->getIconView()Lcom/miui/bubbles/views/BubbleImageView;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/miui/bubbles/views/BubbleImageView;->setIconBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v3, "onThemeChanged: getApplicationIcon error!"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onUiModeChanged()V
    .locals 4

    iget-object v0, p0, Lcom/miui/bubbles/BubbleStackView;->mBubbleData:Lcom/miui/bubbles/BubbleData;

    invoke-virtual {v0}, Lcom/miui/bubbles/BubbleData;->getBubbles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/bubbles/Bubble;

    invoke-virtual {v1}, Lcom/miui/bubbles/Bubble;->getIconView()Lcom/miui/bubbles/views/BubbleImageView;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Display size changed. Icon null: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiuiBubbles.BSV"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/miui/bubbles/Bubble;->getBubbleMessageView()Lcom/miui/bubbles/views/BubbleMessageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/bubbles/views/BubbleMessageView;->hideFlyout()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method removeBubble(Lcom/miui/bubbles/Bubble;)V
    .locals 1

    invoke-virtual {p1}, Lcom/miui/bubbles/Bubble;->cleanupViews()V

    iget-object v0, p0, Lcom/miui/bubbles/BubbleStackView;->mPositioner:Lcom/miui/bubbles/BubblePositioner;

    invoke-virtual {v0, p1}, Lcom/miui/bubbles/BubblePositioner;->onBubbleRemoved(Lcom/miui/bubbles/Bubble;)V

    return-void
.end method

.method updateBubble(Lcom/miui/bubbles/Bubble;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateBubble: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiBubbles.BSV"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/miui/bubbles/BubbleStackView;->animateInMessageForBubble(Lcom/miui/bubbles/Bubble;)V

    invoke-direct {p0}, Lcom/miui/bubbles/BubbleStackView;->requestUpdate()V

    return-void
.end method

.method public updateBubblesLocation()V
    .locals 2

    iget-object v0, p0, Lcom/miui/bubbles/BubbleStackView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/bubbles/m;

    invoke-direct {v1, p0}, Lcom/miui/bubbles/m;-><init>(Lcom/miui/bubbles/BubbleStackView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

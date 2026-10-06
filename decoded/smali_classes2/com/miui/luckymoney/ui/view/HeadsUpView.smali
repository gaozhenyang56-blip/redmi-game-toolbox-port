.class public Lcom/miui/luckymoney/ui/view/HeadsUpView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# static fields
.field private static final SHOW_ANIM_DURATION:J = 0x1f4L

.field private static final SHOW_DURATION:J = 0x1770L


# instance fields
.field private final autoDismissRunnable:Ljava/lang/Runnable;

.field private contentLayout:Landroid/view/View;

.field private gestureDetector:Landroid/view/GestureDetector;

.field private final height:I

.field private imgAds:Landroid/widget/ImageView;

.field private imgIcon:Landroid/widget/ImageView;

.field private isShown:Z

.field private negativeAction:Landroid/view/View;

.field private positiveAction:Landroid/view/View;

.field private settingsAction:Landroid/view/View;

.field private titleView:Landroid/widget/TextView;

.field private txvAds:Landroid/widget/TextView;

.field private final uiHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/luckymoney/ui/view/HeadsUpView;->uiHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f071052

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/luckymoney/ui/view/HeadsUpView;->height:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/luckymoney/ui/view/HeadsUpView;->isShown:Z

    new-instance v0, Lcom/miui/luckymoney/ui/view/HeadsUpView$1;

    invoke-direct {v0, p0}, Lcom/miui/luckymoney/ui/view/HeadsUpView$1;-><init>(Lcom/miui/luckymoney/ui/view/HeadsUpView;)V

    iput-object v0, p0, Lcom/miui/luckymoney/ui/view/HeadsUpView;->autoDismissRunnable:Ljava/lang/Runnable;

    invoke-direct {p0, p1}, Lcom/miui/luckymoney/ui/view/HeadsUpView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/miui/luckymoney/ui/view/HeadsUpView;->uiHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f071052

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/miui/luckymoney/ui/view/HeadsUpView;->height:I

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/miui/luckymoney/ui/view/HeadsUpView;->isShown:Z

    new-instance p2, Lcom/miui/luckymoney/ui/view/HeadsUpView$1;

    invoke-direct {p2, p0}, Lcom/miui/luckymoney/ui/view/HeadsUpView$1;-><init>(Lcom/miui/luckymoney/ui/view/HeadsUpView;)V

    iput-object p2, p0, Lcom/miui/luckymoney/ui/view/HeadsUpView;->autoDismissRunnable:Ljava/lang/Runnable;

    invoke-direct {p0, p1}, Lcom/miui/luckymoney/ui/view/HeadsUpView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/miui/luckymoney/ui/view/HeadsUpView;->uiHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f071052

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/miui/luckymoney/ui/view/HeadsUpView;->height:I

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/miui/luckymoney/ui/view/HeadsUpView;->isShown:Z

    new-instance p2, Lcom/miui/luckymoney/ui/view/HeadsUpView$1;

    invoke-direct {p2, p0}, Lcom/miui/luckymoney/ui/view/HeadsUpView$1;-><init>(Lcom/miui/luckymoney/ui/view/HeadsUpView;)V

    iput-object p2, p0, Lcom/miui/luckymoney/ui/view/HeadsUpView;->autoDismissRunnable:Ljava/lang/Runnable;

    invoke-direct {p0, p1}, Lcom/miui/luckymoney/ui/view/HeadsUpView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/luckymoney/ui/view/HeadsUpView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/luckymoney/ui/view/HeadsUpView;->removeMessageView()V

    return-void
.end method

.method private dismiss(Z)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f11000a

    invoke-static {v0, v1}, Lcom/miui/luckymoney/utils/NotificationUtil;->stopNotification(Landroid/content/Context;I)V

    iget-boolean v0, p0, Lcom/miui/luckymoney/ui/view/HeadsUpView;->isShown:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/luckymoney/ui/view/HeadsUpView;->isShown:Z

    iget-object v1, p0, Lcom/miui/luckymoney/ui/view/HeadsUpView;->uiHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/miui/luckymoney/ui/view/HeadsUpView;->autoDismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v3, v2, v0

    const/4 v0, 0x1

    iget v3, p0, Lcom/miui/luckymoney/ui/view/HeadsUpView;->height:I

    neg-int v3, v3

    int-to-float v3, v3

    aput v3, v2, v0

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    if-eqz p1, :cond_0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    new-instance p1, Lcom/miui/luckymoney/ui/view/HeadsUpView$3;

    invoke-direct {p1, p0}, Lcom/miui/luckymoney/ui/view/HeadsUpView$3;-><init>(Lcom/miui/luckymoney/ui/view/HeadsUpView;)V

    invoke-virtual {v0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/miui/luckymoney/ui/view/HeadsUpView;->removeMessageView()V

    :cond_1
    :goto_0
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 6

    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/view/HeadsUpView;->uiHandler:Landroid/os/Handler;

    invoke-direct {v0, p1, p0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/luckymoney/ui/view/HeadsUpView;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1}, La8/l0;->g(Landroid/content/Context;)Z

    move-result v1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    if-nez v0, :cond_2

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const v3, 0x7f0e0238

    goto :goto_2

    :cond_2
    :goto_1
    const v3, 0x7f0e0239

    :goto_2
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0b029e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/luckymoney/ui/view/HeadsUpView;->contentLayout:Landroid/view/View;

    const v3, 0x7f0b029d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-nez v0, :cond_3

    invoke-static {}, Lx4/a0;->x()Z

    move-result v4

    if-eqz v4, :cond_3

    if-nez v1, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08079f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    iget-object v3, p0, Lcom/miui/luckymoney/ui/view/HeadsUpView;->contentLayout:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v5, "window"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v5, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f071051

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v5, 0x428c0000    # 70.0f

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v5

    add-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    goto :goto_3

    :cond_4
    int-to-float v0, v5

    const/high16 v5, 0x42200000    # 40.0f

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v5, v4

    add-float/2addr v0, v5

    float-to-int v0, v0

    iput v0, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    const/high16 v0, -0x3f400000    # -6.0f

    mul-float v5, v4, v0

    float-to-int v5, v5

    iput v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    mul-float v5, v4, v0

    float-to-int v5, v5

    iput v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    mul-float/2addr v4, v0

    float-to-int v0, v4

    iput v0, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    :goto_3
    if-eqz v1, :cond_5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07104a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    :cond_5
    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/HeadsUpView;->contentLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/HeadsUpView;->contentLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    const v0, 0x7f0b0556

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/luckymoney/ui/view/HeadsUpView;->imgAds:Landroid/widget/ImageView;

    const v0, 0x7f0b0506

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/luckymoney/ui/view/HeadsUpView;->imgIcon:Landroid/widget/ImageView;

    const v0, 0x7f0b0d27

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/luckymoney/ui/view/HeadsUpView;->txvAds:Landroid/widget/TextView;

    const v0, 0x7f0b0bc9

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/luckymoney/ui/view/HeadsUpView;->titleView:Landroid/widget/TextView;

    const v0, 0x7f0b082e

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/ui/view/HeadsUpView;->positiveAction:Landroid/view/View;

    const v0, 0x7f0b0a50

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/ui/view/HeadsUpView;->settingsAction:Landroid/view/View;

    const v0, 0x7f0b0656

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/ui/view/HeadsUpView;->negativeAction:Landroid/view/View;

    new-instance v1, Lcom/miui/luckymoney/ui/view/HeadsUpView$2;

    invoke-direct {v1, p0}, Lcom/miui/luckymoney/ui/view/HeadsUpView$2;-><init>(Lcom/miui/luckymoney/ui/view/HeadsUpView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p1}, Lcom/miui/luckymoney/webapi/AdsHelper;->getCurrentAdsItem(Landroid/content/Context;)Lcom/miui/luckymoney/webapi/AdsHelper$AdsItem;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/HeadsUpView;->imgAds:Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/miui/luckymoney/webapi/AdsHelper$AdsItem;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/HeadsUpView;->txvAds:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/miui/luckymoney/webapi/AdsHelper$AdsItem;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-wide v0, p1, Lcom/miui/luckymoney/webapi/AdsHelper$AdsItem;->startTime:J

    invoke-static {v0, v1}, Lcom/miui/luckymoney/stats/MiStatUtil;->recordAds(J)V

    :cond_6
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private removeMessageView()V
    .locals 2

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/HeadsUpView;->titleView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p0}, Lcom/miui/luckymoney/ui/view/MessageViewUtil;->removeMessageView(Landroid/view/View;)V

    return-void
.end method

.method private showMessageView(Lcom/miui/luckymoney/model/config/BaseConfiguration;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/HeadsUpView;->titleView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/miui/luckymoney/ui/view/HeadsUpView;->imgIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/luckymoney/model/config/BaseConfiguration;->getHeadsUpViewBgResId()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget p1, p0, Lcom/miui/luckymoney/ui/view/HeadsUpView;->height:I

    const/4 p2, -0x1

    const/16 v0, 0x7da

    invoke-static {p0, p2, p1, v0}, Lcom/miui/luckymoney/ui/view/MessageViewUtil;->showMoneyMessageView(Landroid/view/View;III)V

    iget-object p1, p0, Lcom/miui/luckymoney/ui/view/HeadsUpView;->uiHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/miui/luckymoney/ui/view/HeadsUpView;->autoDismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/miui/luckymoney/ui/view/HeadsUpView;->uiHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/miui/luckymoney/ui/view/HeadsUpView;->autoDismissRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x1770

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/luckymoney/ui/view/HeadsUpView;->dismiss(Z)V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/luckymoney/ui/view/HeadsUpView;->dismiss()V

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public isAlive()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/luckymoney/ui/view/HeadsUpView;->isShown:Z

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    const/4 p3, 0x0

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const v0, 0x7f070dad

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p4

    int-to-float p4, p4

    invoke-virtual {p2, p3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    sub-float/2addr v0, v1

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result p2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result p1

    sub-float/2addr p2, p1

    const/4 p1, 0x0

    cmpl-float p1, p2, p1

    if-lez p1, :cond_1

    return p3

    :cond_1
    mul-float/2addr v0, v0

    mul-float/2addr p2, p2

    add-float/2addr v0, p2

    float-to-double p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    cmpg-float p1, p1, p4

    if-gez p1, :cond_2

    return p3

    :cond_2
    invoke-direct {p0, v1}, Lcom/miui/luckymoney/ui/view/HeadsUpView;->dismiss(Z)V

    return v1

    :cond_3
    :goto_0
    return p3
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/HeadsUpView;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setNegativeClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/HeadsUpView;->negativeAction:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setPositiveClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/HeadsUpView;->positiveAction:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setSettingsActionListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/HeadsUpView;->settingsAction:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public show(Lcom/miui/luckymoney/model/config/BaseConfiguration;Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/luckymoney/ui/view/HeadsUpView;->isShown:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/luckymoney/ui/view/HeadsUpView;->isShown:Z

    invoke-direct {p0, p1, p2}, Lcom/miui/luckymoney/ui/view/HeadsUpView;->showMessageView(Lcom/miui/luckymoney/model/config/BaseConfiguration;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public update(Lcom/miui/luckymoney/model/config/BaseConfiguration;Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/luckymoney/ui/view/HeadsUpView;->isShown:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/miui/luckymoney/ui/view/HeadsUpView;->showMessageView(Lcom/miui/luckymoney/model/config/BaseConfiguration;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

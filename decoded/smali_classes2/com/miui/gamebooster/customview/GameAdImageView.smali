.class public Lcom/miui/gamebooster/customview/GameAdImageView;
.super Lcom/miui/securitycenter/ad/view/AdImageView;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:Landroid/widget/ImageView;

.field private c:I

.field private d:I

.field private e:Landroid/view/WindowManager;

.field private f:Landroid/view/WindowManager$LayoutParams;

.field private g:Z

.field private h:I

.field private i:I

.field private j:I

.field private k:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/securitycenter/ad/view/AdImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/miui/gamebooster/customview/GameAdImageView;->g:Z

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/customview/GameAdImageView;->c(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .locals 3

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/customview/GameAdImageView;->f:Landroid/view/WindowManager$LayoutParams;

    invoke-static {v0}, Ls8/y;->a(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/GameAdImageView;->f:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v1, p0, Lcom/miui/gamebooster/customview/GameAdImageView;->i:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v1, p0, Lcom/miui/gamebooster/customview/GameAdImageView;->h:I

    iget v2, p0, Lcom/miui/gamebooster/customview/GameAdImageView;->j:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    const v1, 0x3f666666    # 0.9f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v1, 0x18

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gamebooster/customview/GameAdImageView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/miui/gamebooster/customview/GameAdImageView;->e:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/miui/gamebooster/customview/GameAdImageView;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/gamebooster/customview/GameAdImageView;->f:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0, v1}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private static b(Landroid/content/Context;)I
    .locals 4

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-nez v0, :cond_0

    :try_start_0
    const-string v1, "com.android.internal.R$dimen"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "status_bar_height"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return v0
.end method

.method private c(Landroid/content/Context;)V
    .locals 1

    invoke-static {p1}, Lcom/miui/gamebooster/customview/GameAdImageView;->b(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/customview/GameAdImageView;->j:I

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/miui/gamebooster/customview/GameAdImageView;->e:Landroid/view/WindowManager;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/miui/gamebooster/customview/GameAdImageView;->k:I

    return-void
.end method

.method private d(Landroid/view/View;II)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    if-lt p2, v1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v1, v3

    if-le p2, v1, :cond_1

    goto :goto_0

    :cond_1
    if-lt p3, v2, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr v2, p1

    if-le p3, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method private e()V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/customview/GameAdImageView;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/gamebooster/customview/GameAdImageView;->e:Landroid/view/WindowManager;

    invoke-interface {v1, v0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gamebooster/customview/GameAdImageView;->b:Landroid/widget/ImageView;

    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-boolean v0, p0, Lcom/miui/gamebooster/customview/GameAdImageView;->g:Z

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, p0, v0, v1}, Lcom/miui/gamebooster/customview/GameAdImageView;->d(Landroid/view/View;II)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/miui/gamebooster/customview/GameAdImageView;->d:I

    sub-int/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/miui/gamebooster/customview/GameAdImageView;->k:I

    if-le v0, v1, :cond_4

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->hasOnClickListeners()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->playSoundEffect(I)V

    invoke-virtual {p0}, Landroid/view/View;->callOnClick()Z

    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/miui/gamebooster/customview/GameAdImageView;->e()V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/gamebooster/customview/GameAdImageView;->c:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/gamebooster/customview/GameAdImageView;->d:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v2, p0, Lcom/miui/gamebooster/customview/GameAdImageView;->d:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/gamebooster/customview/GameAdImageView;->h:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v2, p0, Lcom/miui/gamebooster/customview/GameAdImageView;->c:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/gamebooster/customview/GameAdImageView;->i:I

    invoke-virtual {p0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/customview/GameAdImageView;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0602d9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/miui/gamebooster/customview/GameAdImageView;->a:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/GameAdImageView;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/miui/gamebooster/customview/GameAdImageView;->a(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    :cond_4
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/customview/GameAdImageView;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setShowGray(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/customview/GameAdImageView;->g:Z

    return-void
.end method

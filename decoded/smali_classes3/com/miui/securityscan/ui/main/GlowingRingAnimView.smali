.class public Lcom/miui/securityscan/ui/main/GlowingRingAnimView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private final d:Landroid/graphics/Paint;

.field private final e:Landroid/graphics/Paint;

.field private f:Landroid/graphics/Bitmap;

.field private g:I

.field private h:Landroid/view/View;

.field private i:Lcom/miui/securityscan/ui/main/MainVideoView$c;

.field private j:F

.field private k:F

.field private l:Landroid/animation/AnimatorSet;

.field private volatile m:Z

.field private n:Landroid/animation/ObjectAnimator;

.field private o:Landroid/animation/ObjectAnimator;

.field private p:Z

.field private q:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/securityscan/ui/main/GlowingRingAnimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/miui/securityscan/ui/main/GlowingRingAnimView;->d:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/miui/securityscan/ui/main/GlowingRingAnimView;->e:Landroid/graphics/Paint;

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/securityscan/ui/main/GlowingRingAnimView;->g:I

    const/4 p2, 0x0

    iput p2, p0, Lcom/miui/securityscan/ui/main/GlowingRingAnimView;->j:F

    const p2, 0x3faccccd    # 1.35f

    iput p2, p0, Lcom/miui/securityscan/ui/main/GlowingRingAnimView;->k:F

    iput-boolean p1, p0, Lcom/miui/securityscan/ui/main/GlowingRingAnimView;->m:Z

    iput-boolean p1, p0, Lcom/miui/securityscan/ui/main/GlowingRingAnimView;->p:Z

    invoke-direct {p0}, Lcom/miui/securityscan/ui/main/GlowingRingAnimView;->f()V

    return-void
.end method

.method public static synthetic a(Lcom/miui/securityscan/ui/main/GlowingRingAnimView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/securityscan/ui/main/GlowingRingAnimView;->g()V

    return-void
.end method

.method static synthetic b(Lcom/miui/securityscan/ui/main/GlowingRingAnimView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/securityscan/ui/main/GlowingRingAnimView;->h()V

    return-void
.end method

.method static synthetic c(Lcom/miui/securityscan/ui/main/GlowingRingAnimView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/securityscan/ui/main/GlowingRingAnimView;->p:Z

    return p0
.end method

.method static synthetic d(Lcom/miui/securityscan/ui/main/GlowingRingAnimView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/securityscan/ui/main/GlowingRingAnimView;->l(Z)V

    return-void
.end method

.method private e()V
    .locals 2

    invoke-direct {p0}, Lcom/miui/securityscan/ui/main/GlowingRingAnimView;->j()V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/GlowingRingAnimView;->n:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/GlowingRingAnimView;->n:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    iput-object v1, p0, Lcom/miui/securityscan/ui/main/GlowingRingAnimView;->n:Landroid/animation/ObjectAnimator;

    :cond_0
    iget-object v0, p0, Lcom/miui/securityscan/ui/main/GlowingRingAnimView;->o:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/GlowingRingAnimView;->o:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    iput-object v1, p0, Lcom/miui/securityscan/ui/main/GlowingRingAnimView;->o:Landroid/animation/ObjectAnimator;

    :cond_1
    return-void
.end method

.method private f()V
    .locals 3

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/GlowingRingAnimView;->e:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0603cf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/GlowingRingAnimView;->d:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private synthetic g()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/securityscan/ui/main/GlowingRingAnimView;->h()V

    iget-boolean v0, p0, Lcom/miui/securityscan/ui/main/GlowingRingAnimView;->p:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/miui/securityscan/ui/main/d;

    invoke-direct {v0, p0}, Lcom/miui/securityscan/ui/main/d;-><init>(Lcom/miui/securityscan/ui/main/GlowingRingAnimView;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private h()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/securityscan/ui/main/GlowingRingAnimView;->m:Z

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x4

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iget v1, p0, Lcom/miui/securityscan/ui/main/GlowingRingAnimView;->g:I

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080782

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080783

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/GlowingRingAnimView;->f:Landroid/graphics/Bitmap;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/securityscan/ui/main/GlowingRingAnimView;->m:Z

    return-void
.end method

.method private i(Z)V
    .locals 7

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/GlowingRingAnimView;->l:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_2

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/GlowingRingAnimView;->l:Landroid/animation/AnimatorSet;

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    const-string v2, "scaleValue"

    invoke-static {p0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v3, 0x33e

    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    new-array v4, v0, [F

    fill-array-data v4, :array_1

    const-string v5, "rotateDegree"

    invoke-static {p0, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-wide/16 v5, 0xbb8

    invoke-virtual {v4, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    invoke-virtual {v4, v3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    if-eqz p1, :cond_0

    new-array p1, v0, [F

    fill-array-data p1, :array_2

    invoke-static {p0, v2, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v2, 0x258

    invoke-virtual {p1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/GlowingRingAnimView;->l:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-static {}, Lx4/a0;->w()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/GlowingRingAnimView;->l:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_0

    :cond_0
    invoke-static {}, Lx4/a0;->w()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/securityscan/ui/main/GlowingRingAnimView;->l:Landroid/animation/AnimatorSet;

    new-array v0, v0, [Landroid/animation/Animator;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    aput-object v4, v0, v5

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/miui/securityscan/ui/main/GlowingRingAnimView;->l:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    :cond_2
    return-void

    :array_0
    .array-data 4
        0x3faccccd    # 1.35f
        0x3fcccccd    # 1.6f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3faccccd    # 1.35f
    .end array-data
.end method

.method private j()V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/GlowingRingAnimView;->l:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/GlowingRingAnimView;->l:Landroid/animation/AnimatorSet;

    :cond_0
    return-void
.end method

.method private l(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/securityscan/ui/main/GlowingRingAnimView;->m:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/miui/securityscan/ui/main/GlowingRingAnimView;->p:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/securityscan/ui/main/GlowingRingAnimView;->i(Z)V

    return-void
.end method

.method private m()V
    .locals 3

    invoke-direct {p0}, Lcom/miui/securityscan/ui/main/GlowingRingAnimView;->j()V

    const/4 v0, 0x2

    new-array v0, v0, [F

    iget v1, p0, Lcom/miui/securityscan/ui/main/GlowingRingAnimView;->k:F

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    const-string v1, "scaleValue"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/GlowingRingAnimView;->o:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/GlowingRingAnimView;->o:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/miui/securityscan/ui/main/GlowingRingAnimView$a;

    invoke-direct {v1, p0}, Lcom/miui/securityscan/ui/main/GlowingRingAnimView$a;-><init>(Lcom/miui/securityscan/ui/main/GlowingRingAnimView;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/GlowingRingAnimView;->o:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method


# virtual methods
.method public k()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/securityscan/ui/main/GlowingRingAnimView;->p:Z

    invoke-static {}, Lx4/a0;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/securityscan/ui/main/GlowingRingAnimView;->l(Z)V

    return-void
.end method

.method public n()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/securityscan/ui/main/GlowingRingAnimView;->p:Z

    invoke-direct {p0}, Lcom/miui/securityscan/ui/main/GlowingRingAnimView;->j()V

    iget-boolean v1, p0, Lcom/miui/securityscan/ui/main/GlowingRingAnimView;->m:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/miui/securityscan/ui/main/GlowingRingAnimView;->i:Lcom/miui/securityscan/ui/main/MainVideoView$c;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/miui/securityscan/ui/main/MainVideoView$c;->w()V

    :cond_1
    invoke-static {}, Lx4/a0;->w()Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    const/4 v1, 0x2

    new-array v1, v1, [F

    iget v2, p0, Lcom/miui/securityscan/ui/main/GlowingRingAnimView;->k:F

    aput v2, v1, v0

    const/4 v0, 0x1

    const v2, 0x3fcccccd    # 1.6f

    aput v2, v1, v0

    const-string v0, "scaleValue"

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/GlowingRingAnimView;->n:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/GlowingRingAnimView;->n:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/GlowingRingAnimView;->i:Lcom/miui/securityscan/ui/main/MainVideoView$c;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/GlowingRingAnimView;->i:Lcom/miui/securityscan/ui/main/MainVideoView$c;

    :cond_0
    invoke-direct {p0}, Lcom/miui/securityscan/ui/main/GlowingRingAnimView;->e()V

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/miui/securityscan/ui/main/GlowingRingAnimView;->k:F

    iget v1, p0, Lcom/miui/securityscan/ui/main/GlowingRingAnimView;->a:F

    iget v2, p0, Lcom/miui/securityscan/ui/main/GlowingRingAnimView;->b:F

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget v0, p0, Lcom/miui/securityscan/ui/main/GlowingRingAnimView;->j:F

    iget v1, p0, Lcom/miui/securityscan/ui/main/GlowingRingAnimView;->a:F

    iget v2, p0, Lcom/miui/securityscan/ui/main/GlowingRingAnimView;->b:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-boolean v0, p0, Lcom/miui/securityscan/ui/main/GlowingRingAnimView;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/GlowingRingAnimView;->f:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/GlowingRingAnimView;->f:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/miui/securityscan/ui/main/GlowingRingAnimView;->q:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/miui/securityscan/ui/main/GlowingRingAnimView;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget v0, p0, Lcom/miui/securityscan/ui/main/GlowingRingAnimView;->a:F

    iget v1, p0, Lcom/miui/securityscan/ui/main/GlowingRingAnimView;->b:F

    iget v2, p0, Lcom/miui/securityscan/ui/main/GlowingRingAnimView;->c:F

    iget-object v3, p0, Lcom/miui/securityscan/ui/main/GlowingRingAnimView;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    int-to-float p1, p1

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p1, p3

    iput p1, p0, Lcom/miui/securityscan/ui/main/GlowingRingAnimView;->a:F

    int-to-float p2, p2

    div-float/2addr p2, p3

    iput p2, p0, Lcom/miui/securityscan/ui/main/GlowingRingAnimView;->b:F

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    mul-float/2addr p1, p3

    const/high16 p2, 0x40400000    # 3.0f

    div-float/2addr p1, p2

    iput p1, p0, Lcom/miui/securityscan/ui/main/GlowingRingAnimView;->c:F

    new-instance p1, Landroid/graphics/RectF;

    iget p2, p0, Lcom/miui/securityscan/ui/main/GlowingRingAnimView;->a:F

    iget p3, p0, Lcom/miui/securityscan/ui/main/GlowingRingAnimView;->c:F

    sub-float p4, p2, p3

    iget v0, p0, Lcom/miui/securityscan/ui/main/GlowingRingAnimView;->b:F

    sub-float v1, v0, p3

    add-float/2addr p2, p3

    add-float/2addr v0, p3

    invoke-direct {p1, p4, v1, p2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p1, p0, Lcom/miui/securityscan/ui/main/GlowingRingAnimView;->q:Landroid/graphics/RectF;

    new-instance p1, Lcom/miui/securityscan/ui/main/c;

    invoke-direct {p1, p0}, Lcom/miui/securityscan/ui/main/c;-><init>(Lcom/miui/securityscan/ui/main/GlowingRingAnimView;)V

    invoke-static {p1}, Lmiuix/animation/internal/ThreadPoolUtil;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setPredictScanFinishListener(Lcom/miui/securityscan/ui/main/MainVideoView$c;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/ui/main/GlowingRingAnimView;->i:Lcom/miui/securityscan/ui/main/MainVideoView$c;

    return-void
.end method

.method public setRotateDegree(F)V
    .locals 0

    iput p1, p0, Lcom/miui/securityscan/ui/main/GlowingRingAnimView;->j:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setScaleValue(F)V
    .locals 0

    iput p1, p0, Lcom/miui/securityscan/ui/main/GlowingRingAnimView;->k:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setStubView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/ui/main/GlowingRingAnimView;->h:Landroid/view/View;

    return-void
.end method

.method public setType(I)V
    .locals 1

    iget v0, p0, Lcom/miui/securityscan/ui/main/GlowingRingAnimView;->g:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/miui/securityscan/ui/main/GlowingRingAnimView;->g:I

    invoke-direct {p0}, Lcom/miui/securityscan/ui/main/GlowingRingAnimView;->m()V

    :cond_0
    return-void
.end method

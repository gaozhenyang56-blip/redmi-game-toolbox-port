.class public Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/securityscan/ui/main/BottomNoticeAnimView$c;
    }
.end annotation


# instance fields
.field private A:I

.field private B:Landroid/animation/ObjectAnimator;

.field private C:Landroid/animation/ObjectAnimator;

.field private final D:Lum/b;

.field private E:I

.field private F:I

.field private G:Z

.field private H:Z

.field private I:I

.field private J:I

.field private final K:Landroid/graphics/Paint;

.field private final L:Landroid/animation/Animator$AnimatorListener;

.field private a:Landroid/graphics/Bitmap;

.field private b:Landroid/graphics/Bitmap;

.field private c:Landroid/graphics/Bitmap;

.field private d:Ljava/lang/String;

.field private final e:Landroid/graphics/Paint;

.field private final f:Landroid/graphics/Paint;

.field private g:I

.field private final h:Landroid/graphics/Paint;

.field private final i:Landroid/graphics/Rect;

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:Z

.field private y:Z

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->e:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->f:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->h:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->i:Landroid/graphics/Rect;

    const/4 p2, 0x0

    iput p2, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->p:I

    iput-boolean p2, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->x:Z

    iput-boolean p2, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->y:Z

    iput p2, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->A:I

    iput-boolean p3, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->G:Z

    iput-boolean p3, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->H:Z

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->K:Landroid/graphics/Paint;

    new-instance p2, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView$b;

    invoke-direct {p2, p0}, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView$b;-><init>(Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;)V

    iput-object p2, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->L:Landroid/animation/Animator$AnimatorListener;

    new-instance p2, Lum/b;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Lum/b;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->D:Lum/b;

    invoke-direct {p0}, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->e()V

    return-void
.end method

.method static synthetic a(Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->y:Z

    return p1
.end method

.method static synthetic b(Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;)I
    .locals 0

    iget p0, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->p:I

    return p0
.end method

.method static synthetic c(Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;I)I
    .locals 0

    iput p1, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->p:I

    return p1
.end method

.method private d(I)Landroid/graphics/Bitmap;
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method private e()V
    .locals 5

    const v0, 0x7f08049d

    invoke-direct {p0, v0}, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->d(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08049b

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->b:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08049c

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->c:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120443

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->f:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f071062

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->J:I

    iget-object v1, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->f:Landroid/graphics/Paint;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->f:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06013e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->K:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    const-string v2, "secondProgress"

    invoke-static {p0, v2, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->B:Landroid/animation/ObjectAnimator;

    new-instance v4, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v4}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v1, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->B:Landroid/animation/ObjectAnimator;

    new-instance v4, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView$a;

    invoke-direct {v4, p0}, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView$a;-><init>(Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;)V

    invoke-virtual {v1, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    const-string v1, "restoreProgress"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->C:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->L:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f071dda

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->E:I

    iput v0, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->F:I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x64
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x64
    .end array-data
.end method


# virtual methods
.method public f()Z
    .locals 2

    iget v0, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->p:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g(IZ)V
    .locals 7

    const/16 v0, 0x64

    if-gt p1, v0, :cond_0

    iget v1, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->E:I

    mul-int v2, v1, p1

    div-int/2addr v2, v0

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->F:I

    :cond_0
    iget-boolean v1, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->G:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->I:I

    sub-int v1, p1, v1

    if-lez v1, :cond_1

    iput-boolean v2, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->G:Z

    invoke-static {}, Lqf/c;->Z0()V

    :cond_1
    const/4 v1, 0x1

    if-nez p1, :cond_2

    iput-boolean v1, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->G:Z

    :cond_2
    iput p1, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->I:I

    iget v3, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->p:I

    const/4 v4, -0x1

    const v5, 0x7f06013e

    const/4 v6, 0x2

    if-eq v3, v4, :cond_9

    if-eq v3, v1, :cond_a

    const/4 p2, 0x3

    if-eq v3, v6, :cond_7

    if-eq v3, p2, :cond_3

    iput v1, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->p:I

    goto/16 :goto_1

    :cond_3
    iget-boolean p2, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->y:Z

    if-nez p2, :cond_4

    iget-object p1, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->f:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iput-boolean v1, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->y:Z

    iget-object p1, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->C:Landroid/animation/ObjectAnimator;

    goto :goto_0

    :cond_4
    if-lt p1, v0, :cond_6

    iget-object p1, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->C:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->C:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    :cond_5
    iput-boolean v2, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->y:Z

    iput v2, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->n:I

    iput v6, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->p:I

    goto :goto_1

    :cond_6
    iput p1, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->g:I

    goto :goto_1

    :cond_7
    iget-boolean v3, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->x:Z

    if-nez v3, :cond_8

    iput-boolean v1, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->x:Z

    iput v0, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->g:I

    iget-object p1, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->f:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f06013f

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->B:Landroid/animation/ObjectAnimator;

    :goto_0
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_1

    :cond_8
    if-ge p1, v0, :cond_b

    iput-boolean v2, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->x:Z

    iput v2, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->o:I

    iput p2, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->p:I

    iget-object p1, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->B:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->B:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    goto :goto_1

    :cond_9
    move p1, v2

    :cond_a
    iput p1, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->g:I

    iget-object v1, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->f:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    if-lt p1, v0, :cond_b

    if-eqz p2, :cond_b

    iput-boolean v2, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->x:Z

    iput v2, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->n:I

    iput v2, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->F:I

    iput v6, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->p:I

    new-instance p1, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView$c;

    iget-object p2, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->D:Lum/b;

    invoke-direct {p1, p2}, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView$c;-><init>(Lum/b;)V

    invoke-static {p1}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    :cond_b
    :goto_1
    return-void
.end method

.method public getSecIconPosition()[I
    .locals 4

    const/4 v0, 0x2

    new-array v1, v0, [I

    iget v2, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->q:I

    iget-object v3, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/2addr v3, v0

    add-int/2addr v2, v3

    const/4 v3, 0x0

    aput v2, v1, v3

    iget v2, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->r:I

    iget-object v3, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/2addr v3, v0

    add-int/2addr v2, v3

    iget v0, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->F:I

    sub-int/2addr v2, v0

    const/4 v0, 0x1

    aput v2, v1, v0

    return-object v1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->p:I

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x43480000    # 200.0f

    const/high16 v4, 0x42c80000    # 100.0f

    const/high16 v5, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->a:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->q:I

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->r:I

    iget v3, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->F:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    :cond_0
    iget v0, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->o:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->o:I

    int-to-float v1, v0

    div-float/2addr v1, v3

    sub-float v1, v2, v1

    int-to-float v0, v0

    div-float/2addr v0, v3

    sub-float/2addr v2, v0

    iget v0, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->j:I

    int-to-float v0, v0

    iget v6, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->k:I

    int-to-float v6, v6

    invoke-virtual {p1, v1, v2, v0, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->b:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->j:I

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v5

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->k:I

    int-to-float v2, v2

    iget-object v6, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    sub-float/2addr v2, v6

    iget-object v6, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v2, v6

    iget-object v6, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->c:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->j:I

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v5

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->k:I

    int-to-float v2, v2

    iget v6, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->z:I

    int-to-float v6, v6

    div-float/2addr v6, v5

    add-float/2addr v2, v6

    iget-object v6, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v2, v6

    iget-object v6, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const v0, 0x3f4ccccd    # 0.8f

    iget v1, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->o:I

    int-to-float v1, v1

    div-float/2addr v1, v4

    const v2, 0x3e4ccccd    # 0.2f

    iget v6, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->g:I

    int-to-float v6, v6

    div-float/2addr v6, v3

    add-float/2addr v6, v2

    mul-float/2addr v1, v6

    add-float/2addr v1, v0

    iget v0, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->q:I

    int-to-float v0, v0

    iget-object v2, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v5

    add-float/2addr v0, v2

    iget v2, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->r:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    iget v3, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->F:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {p1, v1, v1, v0, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->a:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->q:I

    int-to-float v2, v2

    iget v3, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->r:I

    int-to-float v3, v3

    iget v5, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->w:I

    int-to-float v5, v5

    div-float/2addr v5, v1

    iget v1, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->g:I

    int-to-float v1, v1

    mul-float/2addr v5, v1

    div-float/2addr v5, v4

    sub-float/2addr v3, v5

    iget v1, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->F:I

    int-to-float v1, v1

    sub-float/2addr v3, v1

    iget-object v1, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->n:I

    int-to-float v1, v0

    div-float/2addr v1, v4

    int-to-float v0, v0

    div-float/2addr v0, v4

    iget v2, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->j:I

    int-to-float v2, v2

    iget v3, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->k:I

    int-to-float v3, v3

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->b:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->j:I

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v5

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->k:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->c:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->j:I

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v5

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->k:I

    int-to-float v2, v2

    iget v3, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->z:I

    int-to-float v3, v3

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v0, 0x3fc00000    # 1.5f

    iget v1, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->n:I

    int-to-float v1, v1

    div-float/2addr v1, v4

    const v2, 0x3f333333    # 0.7f

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->q:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v5

    add-float/2addr v1, v2

    iget v2, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->r:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v1, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->a:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->q:I

    int-to-float v2, v2

    iget v3, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->r:I

    int-to-float v3, v3

    iget v4, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->w:I

    int-to-float v4, v4

    div-float/2addr v4, v0

    sub-float/2addr v3, v4

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->d:Ljava/lang/String;

    iget v1, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->l:I

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->m:I

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->g:I

    int-to-float v0, v0

    div-float/2addr v0, v3

    add-float/2addr v0, v2

    iget v1, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->q:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v5

    add-float/2addr v1, v2

    iget v2, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->r:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    iget v3, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->F:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v1, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->a:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->q:I

    int-to-float v2, v2

    iget v3, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->r:I

    int-to-float v3, v3

    iget v5, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->w:I

    int-to-float v5, v5

    div-float/2addr v5, v0

    iget v0, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->g:I

    int-to-float v0, v0

    mul-float/2addr v5, v0

    div-float/2addr v5, v4

    sub-float/2addr v3, v5

    iget v0, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->F:I

    int-to-float v0, v0

    sub-float/2addr v3, v0

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :goto_1
    iget-object v0, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->d:Ljava/lang/String;

    iget v1, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->l:I

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->m:I

    iget v3, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->F:I

    sub-int/2addr v2, v3

    :goto_2
    int-to-float v2, v2

    iget-object v3, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iget-object p3, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->b:Landroid/graphics/Bitmap;

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    iput p3, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->z:I

    iget-object p3, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->f:Landroid/graphics/Paint;

    iget-object p4, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->d:Ljava/lang/String;

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->i:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {p3, p4, v2, v0, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    div-int/lit8 p3, p1, 0x2

    iput p3, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->j:I

    div-int/lit8 p4, p2, 0x2

    iput p4, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->k:I

    iget-object p4, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->b:Landroid/graphics/Bitmap;

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p4

    sub-int/2addr p2, p4

    iget-object p4, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->c:Landroid/graphics/Bitmap;

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p4

    sub-int/2addr p2, p4

    iget p4, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->J:I

    sub-int/2addr p2, p4

    div-int/lit8 p2, p2, 0x2

    iput p2, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->t:I

    iget-object p2, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->b:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    sub-int p2, p1, p2

    div-int/lit8 p2, p2, 0x2

    iput p2, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->s:I

    iget-object p2, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->c:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    sub-int p2, p1, p2

    div-int/lit8 p2, p2, 0x2

    iput p2, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->u:I

    iget p2, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->t:I

    iget-object p4, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->b:Landroid/graphics/Bitmap;

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p4

    add-int/2addr p2, p4

    iput p2, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->v:I

    iget-object p2, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->q:I

    iget p1, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->v:I

    iget-object p2, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->c:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    add-int/2addr p1, p2

    iget-object p2, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p4, 0x7f071da6

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->r:I

    iput p3, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->l:I

    iget p1, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->t:I

    iget-object p2, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->b:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    add-int/2addr p1, p2

    iget-object p2, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->c:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    add-int/2addr p1, p2

    iget-object p2, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->i:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->m:I

    iget p1, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->r:I

    iget-object p2, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    iget p2, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->t:I

    iget-object p3, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->b:Landroid/graphics/Bitmap;

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    add-int/2addr p2, p3

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->w:I

    return-void
.end method

.method public setAnimEnable(Z)V
    .locals 1

    const/4 v0, -0x1

    if-nez p1, :cond_0

    iput v0, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->p:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->p:I

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->p:I

    :cond_1
    :goto_0
    return-void
.end method

.method public setRestoreProgress(I)V
    .locals 0

    iput p1, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->o:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setSecondProgress(I)V
    .locals 0

    iput p1, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->n:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

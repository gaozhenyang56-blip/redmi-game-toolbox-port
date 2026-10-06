.class public Lcom/miui/common/customview/ScoreTextView;
.super Landroid/widget/TextView;
.source "SourceFile"


# instance fields
.field private final a:I

.field private b:I

.field private c:Landroid/animation/ObjectAnimator;

.field private d:I

.field private e:Z

.field private f:Landroid/content/Context;

.field private g:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p2, 0x28a

    iput p2, p0, Lcom/miui/common/customview/ScoreTextView;->a:I

    const/4 p2, -0x1

    iput p2, p0, Lcom/miui/common/customview/ScoreTextView;->b:I

    iput p2, p0, Lcom/miui/common/customview/ScoreTextView;->d:I

    iput-object p1, p0, Lcom/miui/common/customview/ScoreTextView;->f:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/networkassistant/utils/TypefaceHelper;->getMiuiDemiBoldCondensed(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/common/customview/ScoreTextView;->g:Landroid/graphics/Typeface;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method static synthetic a(Lcom/miui/common/customview/ScoreTextView;)I
    .locals 0

    iget p0, p0, Lcom/miui/common/customview/ScoreTextView;->b:I

    return p0
.end method

.method static synthetic b(Lcom/miui/common/customview/ScoreTextView;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/common/customview/ScoreTextView;->d(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private declared-synchronized c(II)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/common/customview/ScoreTextView;->c:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/common/customview/ScoreTextView;->c:Landroid/animation/ObjectAnimator;

    :cond_0
    const-string v0, "FlipScore"

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p2, v1, p1

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/common/customview/ScoreTextView;->c:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0x28a

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object p1, p0, Lcom/miui/common/customview/ScoreTextView;->c:Landroid/animation/ObjectAnimator;

    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/miui/common/customview/ScoreTextView;->c:Landroid/animation/ObjectAnimator;

    new-instance p2, Lcom/miui/common/customview/ScoreTextView$a;

    invoke-direct {p2, p0}, Lcom/miui/common/customview/ScoreTextView$a;-><init>(Lcom/miui/common/customview/ScoreTextView;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/miui/common/customview/ScoreTextView;->c:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private d(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getFlipScore()I
    .locals 1

    iget v0, p0, Lcom/miui/common/customview/ScoreTextView;->d:I

    return v0
.end method

.method public getTextScore()I
    .locals 1

    iget v0, p0, Lcom/miui/common/customview/ScoreTextView;->b:I

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/miui/common/customview/ScoreTextView;->c:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/common/customview/ScoreTextView;->c:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    iget-boolean v0, p0, Lcom/miui/common/customview/ScoreTextView;->e:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    iget-boolean p1, p0, Lcom/miui/common/customview/ScoreTextView;->e:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p2

    invoke-virtual {p2}, Landroid/text/Layout;->getHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    :cond_0
    return-void
.end method

.method public setFlipScore(I)V
    .locals 3

    iget v0, p0, Lcom/miui/common/customview/ScoreTextView;->d:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/miui/common/customview/ScoreTextView;->d:I

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "%d"

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/common/customview/ScoreTextView;->d(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setNoPaddings(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/common/customview/ScoreTextView;->e:Z

    return-void
.end method

.method public setNumber(I)V
    .locals 4

    iget v0, p0, Lcom/miui/common/customview/ScoreTextView;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/miui/common/customview/ScoreTextView;->c(II)V

    goto :goto_1

    :cond_1
    :goto_0
    if-eq v0, p1, :cond_2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "%d"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/common/customview/ScoreTextView;->d(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    iput p1, p0, Lcom/miui/common/customview/ScoreTextView;->b:I

    return-void
.end method

.method public setScore(I)V
    .locals 4

    iget v0, p0, Lcom/miui/common/customview/ScoreTextView;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/miui/common/customview/ScoreTextView;->c(II)V

    goto :goto_1

    :cond_1
    :goto_0
    if-eq v0, p1, :cond_2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "%d"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/common/customview/ScoreTextView;->d(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    iput p1, p0, Lcom/miui/common/customview/ScoreTextView;->b:I

    return-void
.end method

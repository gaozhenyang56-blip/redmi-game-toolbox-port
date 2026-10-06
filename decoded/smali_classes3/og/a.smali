.class public Log/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/SeekBar;

.field private b:Z

.field private c:F


# direct methods
.method public constructor <init>(Landroid/widget/SeekBar;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Log/a;->a:Landroid/widget/SeekBar;

    iput-boolean p2, p0, Log/a;->b:Z

    return-void
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Log/a;->a:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v1, p0, Log/a;->a:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Log/a;->a:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getMax()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-boolean v2, p0, Log/a;->b:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    iget-object v2, p0, Log/a;->a:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    iget-object v4, p0, Log/a;->a:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    sub-int/2addr v2, v4

    iget-object v4, p0, Log/a;->a:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v2, v4

    aget v0, v0, v3

    iget-object v3, p0, Log/a;->a:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v0, v0

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v1

    int-to-float v1, v2

    mul-float/2addr v3, v1

    add-float/2addr v0, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    :goto_0
    sub-float/2addr v0, p1

    iput v0, p0, Log/a;->c:F

    goto :goto_2

    :cond_0
    iget-object v2, p0, Log/a;->a:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v4, p0, Log/a;->a:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingStart()I

    move-result v4

    sub-int/2addr v2, v4

    iget-object v4, p0, Log/a;->a:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingEnd()I

    move-result v4

    sub-int/2addr v2, v4

    iget-object v4, p0, Log/a;->a:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutDirection()I

    move-result v4

    const/4 v5, 0x0

    if-ne v4, v3, :cond_1

    aget v0, v0, v5

    iget-object v3, p0, Log/a;->a:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v0, v3

    iget-object v3, p0, Log/a;->a:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingEnd()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v0, v0

    int-to-float v2, v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    goto :goto_1

    :cond_1
    aget v0, v0, v5

    iget-object v3, p0, Log/a;->a:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingStart()I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v0, v0

    int-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    goto :goto_0

    :goto_2
    return-void
.end method


# virtual methods
.method public b(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Log/a;->a(Landroid/view/MotionEvent;)V

    :goto_0
    iget-boolean v0, p0, Log/a;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    iget v2, p0, Log/a;->c:F

    :goto_1
    if-eqz v0, :cond_2

    iget v1, p0, Log/a;->c:F

    :cond_2
    invoke-virtual {p1, v2, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    return-void
.end method

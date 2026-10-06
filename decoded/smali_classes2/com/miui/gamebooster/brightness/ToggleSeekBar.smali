.class public Lcom/miui/gamebooster/brightness/ToggleSeekBar;
.super Landroid/widget/SeekBar;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/SeekBar$OnSeekBarChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method b()V
    .locals 3

    iget-object v0, p0, Lcom/miui/gamebooster/brightness/ToggleSeekBar;->a:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    const/4 v2, 0x1

    invoke-interface {v0, p0, v1, v2}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    :cond_0
    return-void
.end method

.method c()V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/brightness/ToggleSeekBar;->a:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    :cond_0
    return-void
.end method

.method d()V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/brightness/ToggleSeekBar;->a:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    :cond_0
    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    monitor-enter p0

    const/high16 v0, -0x3d4c0000    # -90.0f

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p2, p1, p4, p3}, Landroid/widget/SeekBar;->onSizeChanged(IIII)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_2

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/miui/gamebooster/brightness/ToggleSeekBar;->a()V

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    mul-float/2addr v1, p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v1, p1

    float-to-int p1, v1

    sub-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-virtual {p0}, Lcom/miui/gamebooster/brightness/ToggleSeekBar;->b()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/miui/gamebooster/brightness/ToggleSeekBar;->d()V

    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v2}, Landroid/view/View;->setPressed(Z)V

    invoke-virtual {p0}, Lcom/miui/gamebooster/brightness/ToggleSeekBar;->c()V

    :goto_0
    return v2
.end method

.method public setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/brightness/ToggleSeekBar;->a:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-void
.end method

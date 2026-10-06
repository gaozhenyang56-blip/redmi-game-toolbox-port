.class Lcom/miui/maml/elements/video/NormalVideoView;
.super Lcom/miui/maml/elements/video/BaseVideoView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/maml/elements/video/BaseVideoView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected addSurfaceHolderCallback()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    iget v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mScaleMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    iget v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mVideoWidth:I

    invoke-static {v0, p1}, Landroid/view/View;->getDefaultSize(II)I

    move-result v0

    iget v1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mVideoHeight:I

    invoke-static {v1, p2}, Landroid/view/View;->getDefaultSize(II)I

    move-result v1

    iget v2, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mVideoWidth:I

    if-lez v2, :cond_8

    iget v2, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mVideoHeight:I

    if-lez v2, :cond_8

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_1

    if-ne v1, v2, :cond_1

    iget v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mVideoWidth:I

    mul-int v1, v0, p2

    iget v2, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mVideoHeight:I

    mul-int v3, p1, v2

    if-ge v1, v3, :cond_0

    mul-int/2addr v0, p2

    div-int/2addr v0, v2

    goto :goto_2

    :cond_0
    mul-int v1, v0, p2

    mul-int v3, p1, v2

    if-le v1, v3, :cond_4

    mul-int/2addr v2, p1

    div-int v1, v2, v0

    goto :goto_0

    :cond_1
    const/high16 v3, -0x80000000

    if-ne v0, v2, :cond_3

    iget v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mVideoHeight:I

    mul-int/2addr v0, p1

    iget v2, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mVideoWidth:I

    div-int/2addr v0, v2

    if-ne v1, v3, :cond_2

    if-le v0, p2, :cond_2

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_0
    move v0, p1

    goto :goto_4

    :cond_3
    if-ne v1, v2, :cond_6

    iget v1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mVideoWidth:I

    mul-int/2addr v1, p2

    iget v2, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mVideoHeight:I

    div-int/2addr v1, v2

    if-ne v0, v3, :cond_5

    if-le v1, p1, :cond_5

    :cond_4
    :goto_1
    move v0, p1

    goto :goto_2

    :cond_5
    move v0, v1

    :goto_2
    move v1, p2

    goto :goto_4

    :cond_6
    iget v2, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mVideoWidth:I

    iget v4, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mVideoHeight:I

    if-ne v1, v3, :cond_7

    if-le v4, p2, :cond_7

    mul-int v1, p2, v2

    div-int/2addr v1, v4

    goto :goto_3

    :cond_7
    move v1, v2

    move p2, v4

    :goto_3
    if-ne v0, v3, :cond_5

    if-le v1, p1, :cond_5

    mul-int/2addr v4, p1

    div-int v1, v4, v2

    goto :goto_0

    :cond_8
    :goto_4
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    goto :goto_5

    :cond_9
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onMeasure(II)V

    :goto_5
    return-void
.end method

.method protected onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mSurface:Landroid/view/Surface;

    return-void
.end method

.method protected onSurfaceDestroyed()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mSurface:Landroid/view/Surface;

    return-void
.end method

.method protected setFormat(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    return-void
.end method

.method protected updateVideoSize()V
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

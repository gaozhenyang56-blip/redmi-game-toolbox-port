.class public Lcom/miui/earthquakewarning/view/LocalCityRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private isClipBackground:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mRadius:F

.field private mRectF:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/earthquakewarning/view/LocalCityRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/earthquakewarning/view/LocalCityRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, 0x42400000    # 48.0f

    iput p1, p0, Lcom/miui/earthquakewarning/view/LocalCityRelativeLayout;->mRadius:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/earthquakewarning/view/LocalCityRelativeLayout;->isClipBackground:Z

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070d1d

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/miui/earthquakewarning/view/LocalCityRelativeLayout;->mRadius:F

    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/miui/earthquakewarning/view/LocalCityRelativeLayout;->mPath:Landroid/graphics/Path;

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/miui/earthquakewarning/view/LocalCityRelativeLayout;->mRectF:Landroid/graphics/RectF;

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1c

    if-ge p2, p3, :cond_0

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/miui/earthquakewarning/view/LocalCityRelativeLayout;->mPaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :cond_0
    return-void
.end method

.method private dispatchDraw27(Landroid/graphics/Canvas;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/earthquakewarning/view/LocalCityRelativeLayout;->mRectF:Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/16 v2, 0x1f

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-direct {p0}, Lcom/miui/earthquakewarning/view/LocalCityRelativeLayout;->genPath()Landroid/graphics/Path;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/earthquakewarning/view/LocalCityRelativeLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private dispatchDraw28(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-direct {p0}, Lcom/miui/earthquakewarning/view/LocalCityRelativeLayout;->genPath()Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private draw27(Landroid/graphics/Canvas;)V
    .locals 3

    iget-boolean v0, p0, Lcom/miui/earthquakewarning/view/LocalCityRelativeLayout;->isClipBackground:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/earthquakewarning/view/LocalCityRelativeLayout;->mRectF:Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/16 v2, 0x1f

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->draw(Landroid/graphics/Canvas;)V

    invoke-direct {p0}, Lcom/miui/earthquakewarning/view/LocalCityRelativeLayout;->genPath()Landroid/graphics/Path;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/earthquakewarning/view/LocalCityRelativeLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->draw(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method private draw28(Landroid/graphics/Canvas;)V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/earthquakewarning/view/LocalCityRelativeLayout;->isClipBackground:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-direct {p0}, Lcom/miui/earthquakewarning/view/LocalCityRelativeLayout;->genPath()Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->draw(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method private genPath()Landroid/graphics/Path;
    .locals 4

    iget-object v0, p0, Lcom/miui/earthquakewarning/view/LocalCityRelativeLayout;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/miui/earthquakewarning/view/LocalCityRelativeLayout;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/miui/earthquakewarning/view/LocalCityRelativeLayout;->mRectF:Landroid/graphics/RectF;

    iget v2, p0, Lcom/miui/earthquakewarning/view/LocalCityRelativeLayout;->mRadius:F

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lcom/miui/earthquakewarning/view/LocalCityRelativeLayout;->mPath:Landroid/graphics/Path;

    return-object v0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/miui/earthquakewarning/view/LocalCityRelativeLayout;->dispatchDraw28(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/earthquakewarning/view/LocalCityRelativeLayout;->dispatchDraw27(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingSuperCall"
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/miui/earthquakewarning/view/LocalCityRelativeLayout;->draw28(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/earthquakewarning/view/LocalCityRelativeLayout;->draw27(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    iget-object p3, p0, Lcom/miui/earthquakewarning/view/LocalCityRelativeLayout;->mRectF:Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    const/4 p4, 0x0

    invoke-virtual {p3, p4, p4, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public setRadius(F)V
    .locals 0

    iput p1, p0, Lcom/miui/earthquakewarning/view/LocalCityRelativeLayout;->mRadius:F

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

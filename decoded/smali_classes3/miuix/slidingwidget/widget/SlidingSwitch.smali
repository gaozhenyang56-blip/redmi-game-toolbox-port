.class public Lmiuix/slidingwidget/widget/SlidingSwitch;
.super Landroid/widget/Switch;
.source "SourceFile"


# instance fields
.field private a:Lnm/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Lmm/a;->a:I

    invoke-direct {p0, p1, p2, v0}, Lmiuix/slidingwidget/widget/SlidingSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lnm/b;

    invoke-direct {v0, p0}, Lnm/b;-><init>(Landroid/widget/CompoundButton;)V

    iput-object v0, p0, Lmiuix/slidingwidget/widget/SlidingSwitch;->a:Lnm/b;

    invoke-virtual {v0}, Lnm/b;->t()V

    sget-object v0, Lmm/e;->W:[I

    sget v1, Lmm/d;->a:I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    iget-object p3, p0, Lmiuix/slidingwidget/widget/SlidingSwitch;->a:Lnm/b;

    invoke-virtual {p3, p1, p2}, Lnm/b;->v(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 1

    invoke-super {p0}, Landroid/widget/Switch;->drawableStateChanged()V

    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingSwitch;->a:Lnm/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnm/b;->Q()V

    :cond_0
    return-void
.end method

.method public getAlpha()F
    .locals 1

    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingSwitch;->a:Lnm/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnm/b;->o()F

    move-result v0

    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/Switch;->getAlpha()F

    move-result v0

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    invoke-super {p0}, Landroid/widget/Switch;->jumpDrawablesToCurrentState()V

    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingSwitch;->a:Lnm/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnm/b;->w()V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingSwitch;->a:Lnm/b;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/Switch;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lnm/b;->A(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingSwitch;->a:Lnm/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lnm/b;->C(Landroid/view/MotionEvent;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Switch;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onMeasure(II)V
    .locals 0

    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingSwitch;->a:Lnm/b;

    invoke-virtual {p1}, Lnm/b;->q()I

    move-result p1

    iget-object p2, p0, Lmiuix/slidingwidget/widget/SlidingSwitch;->a:Lnm/b;

    invoke-virtual {p2}, Lnm/b;->p()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingSwitch;->a:Lnm/b;

    invoke-virtual {p1}, Lnm/b;->P()V

    return-void
.end method

.method protected onSetAlpha(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingSwitch;->a:Lnm/b;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lnm/b;->E(Landroid/view/MotionEvent;)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public performClick()Z
    .locals 1

    invoke-super {p0}, Landroid/widget/Switch;->performClick()Z

    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingSwitch;->a:Lnm/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnm/b;->z()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setAlpha(F)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/Switch;->setAlpha(F)V

    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingSwitch;->a:Lnm/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lnm/b;->K(F)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eq v0, p1, :cond_0

    invoke-super {p0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingSwitch;->a:Lnm/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lnm/b;->L(Z)V

    :cond_0
    return-void
.end method

.method public setLayerType(ILandroid/graphics/Paint;)V
    .locals 0
    .param p2    # Landroid/graphics/Paint;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Landroid/widget/Switch;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object p2, p0, Lmiuix/slidingwidget/widget/SlidingSwitch;->a:Lnm/b;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Lnm/b;->N(I)V

    :cond_0
    return-void
.end method

.method public setOnPerformCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 1

    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingSwitch;->a:Lnm/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lnm/b;->O(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_0
    return-void
.end method

.method public setPressed(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/Switch;->setPressed(Z)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/Switch;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingSwitch;->a:Lnm/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lnm/b;->T(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

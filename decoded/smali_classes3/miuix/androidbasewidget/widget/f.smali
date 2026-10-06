.class public Lmiuix/androidbasewidget/widget/f;
.super Lmiuix/androidbasewidget/widget/EditText;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/androidbasewidget/widget/f$a;
    }
.end annotation


# static fields
.field private static final p:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private h:Lmiuix/androidbasewidget/widget/f$a;

.field private i:Ljava/lang/String;

.field private j:I

.field private k:I

.field private l:[Landroid/graphics/drawable/Drawable;

.field private m:Z

.field private n:I

.field private o:Landroid/text/StaticLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Landroid/util/AttributeSet;

    aput-object v2, v0, v1

    sput-object v0, Lmiuix/androidbasewidget/widget/f;->p:[Ljava/lang/Class;

    return-void
.end method

.method private f()V
    .locals 5

    iget-object v0, p0, Lmiuix/androidbasewidget/widget/f;->i:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    iget v4, p0, Lmiuix/androidbasewidget/widget/f;->k:I

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v0

    iput-object v0, p0, Lmiuix/androidbasewidget/widget/f;->o:Landroid/text/StaticLayout;

    return-void
.end method

.method private g(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lmiuix/androidbasewidget/widget/f;->h:Lmiuix/androidbasewidget/widget/f$a;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lmiuix/androidbasewidget/widget/f;->j(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private getLabelLength()I
    .locals 2

    iget v0, p0, Lmiuix/androidbasewidget/widget/f;->k:I

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget v1, p0, Lmiuix/androidbasewidget/widget/f;->n:I

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method private getWidgetLength()I
    .locals 5

    iget-object v0, p0, Lmiuix/androidbasewidget/widget/f;->l:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p0, Lmiuix/androidbasewidget/widget/f;->n:I

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v3

    :cond_1
    return v1
.end method

.method private h(Landroid/graphics/Canvas;)V
    .locals 13

    iget-object v0, p0, Lmiuix/androidbasewidget/widget/f;->l:[Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/4 v6, 0x0

    if-nez v4, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iget v7, p0, Lmiuix/androidbasewidget/widget/f;->n:I

    add-int/2addr v4, v7

    :goto_0
    div-int/2addr v1, v5

    move v5, v6

    :goto_1
    iget-object v7, p0, Lmiuix/androidbasewidget/widget/f;->l:[Landroid/graphics/drawable/Drawable;

    array-length v8, v7

    if-ge v6, v8, :cond_2

    aget-object v7, v7, v6

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    iget-object v8, p0, Lmiuix/androidbasewidget/widget/f;->l:[Landroid/graphics/drawable/Drawable;

    aget-object v8, v8, v6

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    invoke-static {p0}, Lpl/j;->f(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lmiuix/androidbasewidget/widget/f;->l:[Landroid/graphics/drawable/Drawable;

    aget-object v9, v9, v6

    add-int v10, v2, v3

    add-int/2addr v10, v4

    add-int v11, v10, v5

    div-int/lit8 v8, v8, 0x2

    sub-int v12, v1, v8

    add-int/2addr v10, v7

    add-int/2addr v10, v5

    goto :goto_2

    :cond_1
    iget-object v9, p0, Lmiuix/androidbasewidget/widget/f;->l:[Landroid/graphics/drawable/Drawable;

    aget-object v9, v9, v6

    add-int v10, v2, v0

    sub-int/2addr v10, v3

    sub-int/2addr v10, v4

    sub-int v11, v10, v7

    sub-int/2addr v11, v5

    div-int/lit8 v8, v8, 0x2

    sub-int v12, v1, v8

    sub-int/2addr v10, v5

    :goto_2
    add-int/2addr v8, v1

    invoke-virtual {v9, v11, v12, v10, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget v5, p0, Lmiuix/androidbasewidget/widget/f;->n:I

    add-int/2addr v5, v7

    iget-object v7, p0, Lmiuix/androidbasewidget/widget/f;->l:[Landroid/graphics/drawable/Drawable;

    aget-object v7, v7, v6

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private i(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v0, p0, Lmiuix/androidbasewidget/widget/f;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lmiuix/androidbasewidget/widget/f;->o:Landroid/text/StaticLayout;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget v3, p0, Lmiuix/androidbasewidget/widget/f;->n:I

    add-int/2addr v3, v2

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    iget-object v5, p0, Lmiuix/androidbasewidget/widget/f;->o:Landroid/text/StaticLayout;

    invoke-virtual {v5}, Landroid/text/Layout;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-static {p0}, Lpl/j;->f(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v4, v3

    iget v3, p0, Lmiuix/androidbasewidget/widget/f;->k:I

    sub-int/2addr v4, v3

    sub-int/2addr v4, v1

    int-to-float v1, v4

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v4

    add-int/2addr v1, v4

    add-int/2addr v1, v3

    int-to-float v1, v1

    :goto_1
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Lmiuix/androidbasewidget/widget/f;->o:Landroid/text/StaticLayout;

    invoke-virtual {v1, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    :cond_2
    return-void
.end method

.method private j(Landroid/view/MotionEvent;)Z
    .locals 6

    iget-object v0, p0, Lmiuix/androidbasewidget/widget/f;->l:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lmiuix/androidbasewidget/widget/f;->l:[Landroid/graphics/drawable/Drawable;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget v5, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v0

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v0

    int-to-float v3, v3

    cmpl-float v3, v4, v3

    if-lez v3, :cond_0

    invoke-direct {p0, p1, v2}, Lmiuix/androidbasewidget/widget/f;->k(Landroid/view/MotionEvent;I)Z

    move-result p1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lmiuix/androidbasewidget/widget/f;->m:Z

    return v1
.end method

.method private k(Landroid/view/MotionEvent;I)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lmiuix/androidbasewidget/widget/f;->m:Z

    if-eqz p1, :cond_3

    iput-boolean v1, p0, Lmiuix/androidbasewidget/widget/f;->m:Z

    goto :goto_0

    :cond_1
    iget-boolean p1, p0, Lmiuix/androidbasewidget/widget/f;->m:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lmiuix/androidbasewidget/widget/f;->h:Lmiuix/androidbasewidget/widget/f$a;

    if-eqz p1, :cond_3

    invoke-virtual {p1, p2}, Lmiuix/androidbasewidget/widget/f$a;->onWidgetClick(I)V

    iput-boolean v1, p0, Lmiuix/androidbasewidget/widget/f;->m:Z

    return v0

    :cond_2
    iput-boolean v0, p0, Lmiuix/androidbasewidget/widget/f;->m:Z

    :cond_3
    :goto_0
    iget-boolean p1, p0, Lmiuix/androidbasewidget/widget/f;->m:Z

    return p1
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-direct {p0, p1}, Lmiuix/androidbasewidget/widget/f;->g(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Lmiuix/androidbasewidget/widget/EditText;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

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

.method public getCompoundPaddingLeft()I
    .locals 2

    invoke-super {p0}, Landroid/widget/EditText;->getCompoundPaddingLeft()I

    move-result v0

    invoke-static {p0}, Lpl/j;->f(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/f;->getWidgetLength()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/f;->getLabelLength()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public getCompoundPaddingRight()I
    .locals 2

    invoke-super {p0}, Landroid/widget/EditText;->getCompoundPaddingRight()I

    move-result v0

    invoke-static {p0}, Lpl/j;->f(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/f;->getLabelLength()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/f;->getWidgetLength()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/EditText;->onDraw(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lmiuix/androidbasewidget/widget/f;->h(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lmiuix/androidbasewidget/widget/f;->i(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Lmiuix/androidbasewidget/widget/EditText;->onMeasure(II)V

    iget-object p1, p0, Lmiuix/androidbasewidget/widget/f;->i:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lmiuix/androidbasewidget/widget/f;->o:Landroid/text/StaticLayout;

    if-eqz p1, :cond_1

    iget p1, p0, Lmiuix/androidbasewidget/widget/f;->j:I

    if-nez p1, :cond_0

    iget p1, p0, Lmiuix/androidbasewidget/widget/f;->k:I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    if-le p1, p2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lmiuix/androidbasewidget/widget/f;->k:I

    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/f;->f()V

    :cond_0
    iget-object p1, p0, Lmiuix/androidbasewidget/widget/f;->o:Landroid/text/StaticLayout;

    invoke-virtual {p1}, Landroid/text/Layout;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    add-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p2

    add-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    if-le p1, p2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    :cond_1
    return-void
.end method

.method public setInputType(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-super {p0, p1}, Landroid/widget/EditText;->setInputType(I)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lmiuix/androidbasewidget/widget/f;->i:Ljava/lang/String;

    iget v0, p0, Lmiuix/androidbasewidget/widget/f;->j:I

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-lez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    iget-object v0, p0, Lmiuix/androidbasewidget/widget/f;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    float-to-int p1, p1

    iget v0, p0, Lmiuix/androidbasewidget/widget/f;->j:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    iget-object v0, p0, Lmiuix/androidbasewidget/widget/f;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    float-to-int v1, p1

    :goto_0
    iput v1, p0, Lmiuix/androidbasewidget/widget/f;->k:I

    iget-object p1, p0, Lmiuix/androidbasewidget/widget/f;->i:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/f;->f()V

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setWidgetManager(Lmiuix/androidbasewidget/widget/f$a;)V
    .locals 1

    iget-object v0, p0, Lmiuix/androidbasewidget/widget/f;->h:Lmiuix/androidbasewidget/widget/f$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/androidbasewidget/widget/f$a;->onDetached()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiuix/androidbasewidget/widget/f;->l:[Landroid/graphics/drawable/Drawable;

    :cond_0
    iput-object p1, p0, Lmiuix/androidbasewidget/widget/f;->h:Lmiuix/androidbasewidget/widget/f$a;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lmiuix/androidbasewidget/widget/f$a;->getWidgetDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lmiuix/androidbasewidget/widget/f;->l:[Landroid/graphics/drawable/Drawable;

    iget-object p1, p0, Lmiuix/androidbasewidget/widget/f;->h:Lmiuix/androidbasewidget/widget/f$a;

    invoke-virtual {p1, p0}, Lmiuix/androidbasewidget/widget/f$a;->onAttached(Lmiuix/androidbasewidget/widget/f;)V

    :cond_1
    return-void
.end method

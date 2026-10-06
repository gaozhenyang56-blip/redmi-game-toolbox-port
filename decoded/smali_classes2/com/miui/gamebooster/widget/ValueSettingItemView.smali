.class public Lcom/miui/gamebooster/widget/ValueSettingItemView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static o:I = 0x14


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/view/View$OnClickListener;

.field private f:F

.field private g:F

.field private h:Landroid/graphics/Paint;

.field private i:Landroid/graphics/Path;

.field private j:I

.field private k:I

.field private l:I

.field private m:Landroid/view/View;

.field private n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

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

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gamebooster/widget/ValueSettingItemView;->f:F

    iput v0, p0, Lcom/miui/gamebooster/widget/ValueSettingItemView;->g:F

    invoke-direct {p0, p1, p2}, Lcom/miui/gamebooster/widget/ValueSettingItemView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const v0, 0x7f0e0210

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f0b09be

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/widget/ValueSettingItemView;->a:Landroid/view/View;

    const v0, 0x7f0b0d61

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gamebooster/widget/ValueSettingItemView;->d:Landroid/widget/TextView;

    const v0, 0x7f0b02a2

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/widget/ValueSettingItemView;->m:Landroid/view/View;

    if-nez p2, :cond_0

    return-void

    :cond_0
    const v0, 0x7f0b0bc9

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gamebooster/widget/ValueSettingItemView;->b:Landroid/widget/TextView;

    const v0, 0x7f0b0b17

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gamebooster/widget/ValueSettingItemView;->c:Landroid/widget/TextView;

    sget-object v0, Lef/y;->p1:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :cond_1
    move-object v0, p2

    move-object v1, v0

    move-object v2, v1

    :goto_0
    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/miui/gamebooster/widget/ValueSettingItemView;->b:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object p1, p0, Lcom/miui/gamebooster/widget/ValueSettingItemView;->c:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    invoke-virtual {p0, v2}, Lcom/miui/gamebooster/widget/ValueSettingItemView;->setValue(Ljava/lang/String;)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/miui/gamebooster/widget/ValueSettingItemView;->h:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/miui/gamebooster/widget/ValueSettingItemView;->i:Landroid/graphics/Path;

    iget-object p1, p0, Lcom/miui/gamebooster/widget/ValueSettingItemView;->h:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060261

    invoke-virtual {v0, v1, p2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/miui/gamebooster/widget/ValueSettingItemView;->h:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/miui/gamebooster/widget/ValueSettingItemView;->h:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0708f7

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/miui/gamebooster/widget/ValueSettingItemView;->l:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/miui/gamebooster/widget/ValueSettingItemView;->n:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/widget/ValueSettingItemView;->i:Landroid/graphics/Path;

    iget v1, p0, Lcom/miui/gamebooster/widget/ValueSettingItemView;->j:I

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/gamebooster/widget/ValueSettingItemView;->k:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget v0, p0, Lcom/miui/gamebooster/widget/ValueSettingItemView;->j:I

    iget v1, p0, Lcom/miui/gamebooster/widget/ValueSettingItemView;->l:I

    sub-int/2addr v0, v1

    iget v2, p0, Lcom/miui/gamebooster/widget/ValueSettingItemView;->k:I

    add-int/2addr v2, v1

    iget-object v1, p0, Lcom/miui/gamebooster/widget/ValueSettingItemView;->i:Landroid/graphics/Path;

    int-to-float v3, v0

    int-to-float v4, v2

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget v1, p0, Lcom/miui/gamebooster/widget/ValueSettingItemView;->l:I

    sub-int/2addr v0, v1

    sub-int/2addr v2, v1

    iget-object v1, p0, Lcom/miui/gamebooster/widget/ValueSettingItemView;->i:Landroid/graphics/Path;

    int-to-float v3, v0

    int-to-float v4, v2

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget v1, p0, Lcom/miui/gamebooster/widget/ValueSettingItemView;->l:I

    add-int/2addr v0, v1

    sub-int/2addr v2, v1

    iget-object v1, p0, Lcom/miui/gamebooster/widget/ValueSettingItemView;->i:Landroid/graphics/Path;

    int-to-float v0, v0

    int-to-float v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/miui/gamebooster/widget/ValueSettingItemView;->i:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/miui/gamebooster/widget/ValueSettingItemView;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget-object p1, p0, Lcom/miui/gamebooster/widget/ValueSettingItemView;->m:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f07041b

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/miui/gamebooster/widget/ValueSettingItemView;->j:I

    iget-object p1, p0, Lcom/miui/gamebooster/widget/ValueSettingItemView;->m:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070b60

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lcom/miui/gamebooster/widget/ValueSettingItemView;->k:I

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    iget v0, p0, Lcom/miui/gamebooster/widget/ValueSettingItemView;->f:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lcom/miui/gamebooster/widget/ValueSettingItemView;->g:F

    sub-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iget-object v0, p0, Lcom/miui/gamebooster/widget/ValueSettingItemView;->e:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_2

    sget v1, Lcom/miui/gamebooster/widget/ValueSettingItemView;->o:I

    int-to-float v2, v1

    cmpg-float p1, p1, v2

    if-gez p1, :cond_2

    int-to-float p1, v1

    cmpg-float p1, p2, p1

    if-gez p1, :cond_2

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/miui/gamebooster/widget/ValueSettingItemView;->f:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/miui/gamebooster/widget/ValueSettingItemView;->g:F

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public setDotVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/widget/ValueSettingItemView;->n:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const v0, 0x3e4ccccd    # 0.2f

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/miui/gamebooster/widget/ValueSettingItemView;->a:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/gamebooster/widget/ValueSettingItemView;->e:Landroid/view/View$OnClickListener;

    iget-object p1, p0, Lcom/miui/gamebooster/widget/ValueSettingItemView;->a:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    iget-object p1, p0, Lcom/miui/gamebooster/widget/ValueSettingItemView;->a:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public setSubTitle(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/widget/ValueSettingItemView;->c:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/miui/gamebooster/widget/ValueSettingItemView;->c:Landroid/widget/TextView;

    const/16 v0, 0x8

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/widget/ValueSettingItemView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/gamebooster/widget/ValueSettingItemView;->c:Landroid/widget/TextView;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/widget/ValueSettingItemView;->b:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/miui/gamebooster/widget/ValueSettingItemView;->b:Landroid/widget/TextView;

    const/16 v0, 0x8

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/widget/ValueSettingItemView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/gamebooster/widget/ValueSettingItemView;->b:Landroid/widget/TextView;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/widget/ValueSettingItemView;->d:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/miui/gamebooster/widget/ValueSettingItemView;->d:Landroid/widget/TextView;

    const/16 v0, 0x8

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/widget/ValueSettingItemView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/gamebooster/widget/ValueSettingItemView;->d:Landroid/widget/TextView;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

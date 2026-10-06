.class public Lcom/miui/gamebooster/widget/GtbTipsView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private final b:Landroid/graphics/Path;

.field private final c:I

.field private final d:I

.field private final e:Landroid/graphics/RectF;

.field private f:Landroid/view/View;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/gamebooster/widget/GtbTipsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/miui/gamebooster/widget/GtbTipsView;->e:Landroid/graphics/RectF;

    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/miui/gamebooster/widget/GtbTipsView;->b:Landroid/graphics/Path;

    const-string p2, "#B2000000"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/miui/gamebooster/widget/GtbTipsView;->c:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070c6f

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/miui/gamebooster/widget/GtbTipsView;->d:I

    return-void
.end method

.method private k()V
    .locals 3

    iget-object v0, p0, Lcom/miui/gamebooster/widget/GtbTipsView;->a:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/widget/GtbTipsView;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    iget-object v1, p0, Lcom/miui/gamebooster/widget/GtbTipsView;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget-object v1, p0, Lcom/miui/gamebooster/widget/GtbTipsView;->e:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget-object v1, p0, Lcom/miui/gamebooster/widget/GtbTipsView;->e:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget-object v1, p0, Lcom/miui/gamebooster/widget/GtbTipsView;->f:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public f(Z)V
    .locals 4

    iget-object v0, p0, Lcom/miui/gamebooster/widget/GtbTipsView;->g:Landroid/widget/TextView;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/widget/GtbTipsView;->h:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public g(Landroid/view/View;IIII)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/widget/GtbTipsView;->a:Landroid/view/View;

    iget-object p1, p0, Lcom/miui/gamebooster/widget/GtbTipsView;->f:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    iput p4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput p5, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput p3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget-object p2, p0, Lcom/miui/gamebooster/widget/GtbTipsView;->f:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public h(Landroid/view/View;Z)V
    .locals 7

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    aget p2, v0, v2

    aget v0, v0, v1

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/gamebooster/widget/GtbTipsView;->i(Landroid/view/View;II)V

    goto :goto_0

    :cond_0
    aget v3, v0, v2

    aget v4, v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/miui/gamebooster/widget/GtbTipsView;->g(Landroid/view/View;IIII)V

    :goto_0
    return-void
.end method

.method public i(Landroid/view/View;II)V
    .locals 4

    iput-object p1, p0, Lcom/miui/gamebooster/widget/GtbTipsView;->a:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/gamebooster/widget/GtbTipsView;->e:Landroid/graphics/RectF;

    int-to-float v1, p2

    int-to-float v2, p3

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v3

    add-int/2addr v3, p2

    int-to-float p2, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr p1, p3

    int-to-float p1, p1

    invoke-virtual {v0, v1, v2, p2, p1}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-direct {p0}, Lcom/miui/gamebooster/widget/GtbTipsView;->k()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/widget/GtbTipsView;->i:Landroid/widget/TextView;

    invoke-static {v0, p1}, Ldb/i;->f(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/widget/GtbTipsView;->j:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/widget/GtbTipsView;->j:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/gamebooster/widget/GtbTipsView;->g:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/gamebooster/widget/GtbTipsView;->h:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public m(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/widget/GtbTipsView;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/gamebooster/widget/GtbTipsView;->h:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public n(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/widget/GtbTipsView;->g:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget-object p1, p0, Lcom/miui/gamebooster/widget/GtbTipsView;->g:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/miui/gamebooster/widget/GtbTipsView;->b:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/miui/gamebooster/widget/GtbTipsView;->e:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/gamebooster/widget/GtbTipsView;->f:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/miui/gamebooster/widget/GtbTipsView;->f:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/miui/gamebooster/widget/GtbTipsView;->f:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/miui/gamebooster/widget/GtbTipsView;->f:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/miui/gamebooster/widget/GtbTipsView;->b:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/miui/gamebooster/widget/GtbTipsView;->e:Landroid/graphics/RectF;

    iget v2, p0, Lcom/miui/gamebooster/widget/GtbTipsView;->d:I

    int-to-float v3, v2

    int-to-float v2, v2

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/widget/GtbTipsView;->b:Landroid/graphics/Path;

    invoke-static {p1, v0}, Lcom/miui/gamebooster/widget/a;->a(Landroid/graphics/Canvas;Landroid/graphics/Path;)Z

    :cond_0
    iget v0, p0, Lcom/miui/gamebooster/widget/GtbTipsView;->c:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    const v0, 0x7f0b061d

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/widget/GtbTipsView;->f:Landroid/view/View;

    const v0, 0x7f0b0cf3

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gamebooster/widget/GtbTipsView;->g:Landroid/widget/TextView;

    const v0, 0x7f0b0c59

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gamebooster/widget/GtbTipsView;->h:Landroid/widget/TextView;

    const v0, 0x7f0b0c5a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gamebooster/widget/GtbTipsView;->j:Landroid/widget/TextView;

    const v0, 0x7f0b0c70

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gamebooster/widget/GtbTipsView;->i:Landroid/widget/TextView;

    return-void
.end method

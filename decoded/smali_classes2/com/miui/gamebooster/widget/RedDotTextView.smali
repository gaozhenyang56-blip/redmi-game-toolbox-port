.class public Lcom/miui/gamebooster/widget/RedDotTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Landroid/graphics/Path;

.field private c:I

.field private d:I

.field private e:I

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/miui/gamebooster/widget/RedDotTextView;->a()V

    return-void
.end method

.method private a()V
    .locals 4

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/widget/RedDotTextView;->a:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/widget/RedDotTextView;->b:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/miui/gamebooster/widget/RedDotTextView;->a:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060261

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/widget/RedDotTextView;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/miui/gamebooster/widget/RedDotTextView;->a:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0708f7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/widget/RedDotTextView;->e:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070619

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/widget/RedDotTextView;->c:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070bd9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/widget/RedDotTextView;->d:I

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/miui/gamebooster/widget/RedDotTextView;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/widget/RedDotTextView;->b:Landroid/graphics/Path;

    iget v1, p0, Lcom/miui/gamebooster/widget/RedDotTextView;->c:I

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/gamebooster/widget/RedDotTextView;->d:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget v0, p0, Lcom/miui/gamebooster/widget/RedDotTextView;->c:I

    iget v1, p0, Lcom/miui/gamebooster/widget/RedDotTextView;->e:I

    add-int/2addr v0, v1

    iget v2, p0, Lcom/miui/gamebooster/widget/RedDotTextView;->d:I

    sub-int/2addr v2, v1

    iget-object v1, p0, Lcom/miui/gamebooster/widget/RedDotTextView;->b:Landroid/graphics/Path;

    int-to-float v3, v0

    int-to-float v4, v2

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget v1, p0, Lcom/miui/gamebooster/widget/RedDotTextView;->e:I

    add-int/2addr v0, v1

    add-int/2addr v2, v1

    iget-object v1, p0, Lcom/miui/gamebooster/widget/RedDotTextView;->b:Landroid/graphics/Path;

    int-to-float v3, v0

    int-to-float v4, v2

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget v1, p0, Lcom/miui/gamebooster/widget/RedDotTextView;->e:I

    sub-int/2addr v0, v1

    add-int/2addr v2, v1

    iget-object v1, p0, Lcom/miui/gamebooster/widget/RedDotTextView;->b:Landroid/graphics/Path;

    int-to-float v0, v0

    int-to-float v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/miui/gamebooster/widget/RedDotTextView;->b:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/miui/gamebooster/widget/RedDotTextView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public setDotVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/widget/RedDotTextView;->f:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.class public Lcom/miui/powercenter/view/ShadowTextView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/powercenter/view/ShadowTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x14

    const/4 p2, 0x0

    const/16 p3, 0x28

    invoke-virtual {p0, p1, p2, p1, p3}, Landroid/view/View;->setPadding(IIII)V

    const/16 p1, 0x11

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setGravity(I)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/miui/powercenter/view/ShadowTextView;->b:Landroid/graphics/Paint;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/miui/powercenter/view/ShadowTextView;->b:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/miui/powercenter/view/ShadowTextView;->b:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-static {}, Lx4/a0;->D()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object p1, p0, Lcom/miui/powercenter/view/ShadowTextView;->b:Landroid/graphics/Paint;

    const/high16 p2, 0x41f00000    # 30.0f

    const/4 p3, 0x0

    const/high16 v0, 0x41700000    # 15.0f

    const-string v1, "#190099FF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Typeface;I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/view/ShadowTextView;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v0, p0, Lcom/miui/powercenter/view/ShadowTextView;->a:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/powercenter/view/ShadowTextView;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/miui/powercenter/view/ShadowTextView;->a:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/miui/powercenter/view/ShadowTextView;->a:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/miui/powercenter/view/ShadowTextView;->a:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/miui/powercenter/view/ShadowTextView;->a:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v4

    iget-object v5, p0, Lcom/miui/powercenter/view/ShadowTextView;->a:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v1, p0, Lcom/miui/powercenter/view/ShadowTextView;->b:Landroid/graphics/Paint;

    const/high16 v2, 0x42200000    # 40.0f

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getPaddingBottom()I
    .locals 1

    const/16 v0, 0x28

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f0b0b80

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/powercenter/view/ShadowTextView;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "There has no TextView with id \"text\" inflated."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/view/ShadowTextView;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

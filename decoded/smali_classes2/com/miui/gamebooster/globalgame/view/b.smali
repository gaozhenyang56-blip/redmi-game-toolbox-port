.class public Lcom/miui/gamebooster/globalgame/view/b;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/ImageView;

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IIII)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput p3, p0, Lcom/miui/gamebooster/globalgame/view/b;->c:I

    iput p4, p0, Lcom/miui/gamebooster/globalgame/view/b;->d:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p0, p5, p5, p5, p5}, Landroid/view/View;->setPadding(IIII)V

    invoke-direct {p0}, Lcom/miui/gamebooster/globalgame/view/b;->a()V

    return-void
.end method

.method private a()V
    .locals 4

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    iget v1, p0, Lcom/miui/gamebooster/globalgame/view/b;->c:I

    const/4 v2, -0x2

    if-nez v1, :cond_0

    move v1, v2

    :cond_0
    iget v3, p0, Lcom/miui/gamebooster/globalgame/view/b;->d:I

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/gamebooster/globalgame/view/b;->a:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v1, p0, Lcom/miui/gamebooster/globalgame/view/b;->a:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/gamebooster/globalgame/view/b;->b:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v1, p0, Lcom/miui/gamebooster/globalgame/view/b;->b:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/miui/gamebooster/globalgame/view/b;->b()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/globalgame/view/b;->a:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/globalgame/view/b;->b:Landroid/widget/ImageView;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/globalgame/view/b;->a:Landroid/widget/ImageView;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/globalgame/view/b;->b:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    return-void
.end method

.method public setEmptyDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/graphics/drawable/ClipDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const v1, 0x800005

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    iget-object p1, p0, Lcom/miui/gamebooster/globalgame/view/b;->b:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setFilledDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/graphics/drawable/ClipDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const v1, 0x800003

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    iget-object p1, p0, Lcom/miui/gamebooster/globalgame/view/b;->a:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPartialFilled(F)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    rem-float/2addr p1, v0

    const v0, 0x461c4000    # 10000.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    const/16 v0, 0x2710

    if-nez p1, :cond_0

    move p1, v0

    :cond_0
    iget-object v1, p0, Lcom/miui/gamebooster/globalgame/view/b;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageLevel(I)V

    iget-object v1, p0, Lcom/miui/gamebooster/globalgame/view/b;->b:Landroid/widget/ImageView;

    sub-int/2addr v0, p1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageLevel(I)V

    return-void
.end method

.method public setStarHeight(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    iput p1, p0, Lcom/miui/gamebooster/globalgame/view/b;->d:I

    iget-object p1, p0, Lcom/miui/gamebooster/globalgame/view/b;->a:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget v0, p0, Lcom/miui/gamebooster/globalgame/view/b;->d:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/miui/gamebooster/globalgame/view/b;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/miui/gamebooster/globalgame/view/b;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setStarWidth(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    iput p1, p0, Lcom/miui/gamebooster/globalgame/view/b;->c:I

    iget-object p1, p0, Lcom/miui/gamebooster/globalgame/view/b;->a:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget v0, p0, Lcom/miui/gamebooster/globalgame/view/b;->c:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lcom/miui/gamebooster/globalgame/view/b;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/miui/gamebooster/globalgame/view/b;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.class public Lcom/miui/powercenter/view/BatteryHealthNewView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private a:[I

.field private b:[I

.field private c:[I

.field private d:[I

.field private e:I

.field private f:Landroid/content/Context;

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/powercenter/view/BatteryHealthNewView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x4

    new-array p3, p2, [I

    fill-array-data p3, :array_0

    iput-object p3, p0, Lcom/miui/powercenter/view/BatteryHealthNewView;->a:[I

    new-array p3, p2, [I

    fill-array-data p3, :array_1

    iput-object p3, p0, Lcom/miui/powercenter/view/BatteryHealthNewView;->b:[I

    new-array p3, p2, [I

    fill-array-data p3, :array_2

    iput-object p3, p0, Lcom/miui/powercenter/view/BatteryHealthNewView;->c:[I

    new-array p3, p2, [I

    fill-array-data p3, :array_3

    iput-object p3, p0, Lcom/miui/powercenter/view/BatteryHealthNewView;->d:[I

    iput p2, p0, Lcom/miui/powercenter/view/BatteryHealthNewView;->e:I

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/miui/powercenter/view/BatteryHealthNewView;->g:Z

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setGravity(I)V

    iput-object p1, p0, Lcom/miui/powercenter/view/BatteryHealthNewView;->f:Landroid/content/Context;

    return-void

    nop

    :array_0
    .array-data 4
        0x7f1203aa
        0x7f1203a9
        0x7f1203a8
        0x7f1203a7
    .end array-data

    :array_1
    .array-data 4
        0x7f080860
        0x7f080861
        0x7f080862
        0x7f080863
    .end array-data

    :array_2
    .array-data 4
        0x7f080864
        0x7f080865
        0x7f080866
        0x7f080867
    .end array-data

    :array_3
    .array-data 4
        0x7f08085c
        0x7f08085d
        0x7f08085e
        0x7f08085f
    .end array-data
.end method

.method private a(Landroid/content/Context;I)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e0288

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0b0151

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v3, 0x7f0b0150

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f0b014d

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/powercenter/view/BatteryHealthNewView;->a:[I

    aget v6, v6, p2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v5, p2, 0x1

    iget v6, p0, Lcom/miui/powercenter/view/BatteryHealthNewView;->e:I

    const/4 v7, 0x0

    if-ne v5, v6, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0600f2

    invoke-virtual {v5, v6, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/powercenter/view/BatteryHealthNewView;->b:[I

    aget v6, v6, p2

    invoke-virtual {v5, v6, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/powercenter/view/BatteryHealthNewView;->c:[I

    aget v1, v1, p2

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060c37

    invoke-virtual {v5, v6, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v1, 0x4

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    invoke-static {}, Lx4/t;->z()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/powercenter/view/BatteryHealthNewView;->d:[I

    aget p2, v1, p2

    invoke-direct {p0, p1, p2}, Lcom/miui/powercenter/view/BatteryHealthNewView;->b(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/miui/powercenter/view/BatteryHealthNewView;->d:[I

    aget p1, p1, p2

    invoke-virtual {v4, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz p1, :cond_3

    const/high16 p2, 0x3f800000    # 1.0f

    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iput v7, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-void
.end method

.method private b(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 9
    .param p2    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance p2, Landroid/graphics/Canvas;

    invoke-direct {p2, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    const/high16 p1, -0x40800000    # -1.0f

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {v7, p1, p2}, Landroid/graphics/Matrix;->postScale(FF)Z

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v4, 0x0

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public setIsTabletSpitModel(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/powercenter/view/BatteryHealthNewView;->g:Z

    return-void
.end method

.method public setLevel(I)V
    .locals 1

    iput p1, p0, Lcom/miui/powercenter/view/BatteryHealthNewView;->e:I

    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/view/BatteryHealthNewView;->f:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/miui/powercenter/view/BatteryHealthNewView;->a(Landroid/content/Context;I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

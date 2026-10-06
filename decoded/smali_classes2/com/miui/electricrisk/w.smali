.class public Lcom/miui/electricrisk/w;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/CharSequence;Z)V
    .locals 5

    if-eqz p1, :cond_4

    if-nez p0, :cond_0

    goto/16 :goto_3

    :cond_0
    new-instance p2, Landroid/widget/TextView;

    invoke-direct {p2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f071905

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f071906

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p2, v0, v2, v1, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    if-eqz p3, :cond_1

    const v0, 0x7f12071b

    goto :goto_0

    :cond_1
    const v0, 0x7f1206f9

    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    if-eqz p3, :cond_2

    const v0, 0x7f080e9a

    goto :goto_1

    :cond_2
    const v0, 0x7f080e9b

    :goto_1
    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    if-eqz p3, :cond_3

    const p3, 0x7f060cc3

    goto :goto_2

    :cond_3
    const p3, 0x7f060cc6

    :goto_2
    invoke-virtual {p0, p3}, Landroid/content/Context;->getColor(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f071acc

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p3}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string p3, "mipro-demibold"

    invoke-static {p3, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {p2}, Landroid/view/View;->destroyDrawingCache()V

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/view/View;->measure(II)V

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p2, v0, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {p2}, Landroid/view/View;->buildDrawingCache()V

    invoke-virtual {p2, p3}, Landroid/view/View;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object p3

    invoke-static {p3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p3

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {v1, v0, v0, p3, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2, v1, p2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f071904

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    :cond_4
    :goto_3
    return-void
.end method

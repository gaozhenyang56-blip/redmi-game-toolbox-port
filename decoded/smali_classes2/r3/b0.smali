.class public Lr3/b0;
.super Lr3/z;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/miui/autotask/bean/n;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lr3/z;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method private x(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 4

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string p3, "  "

    invoke-virtual {v0, p3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p3

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v1, 0x7f071d5a

    invoke-direct {p0, v1}, Lr3/b0;->y(I)I

    move-result v2

    invoke-direct {p0, v1}, Lr3/b0;->y(I)I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p4, 0x7f071d3c

    invoke-direct {p0, p4}, Lr3/b0;->y(I)I

    move-result p4

    int-to-float p4, p4

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setTextSize(F)V

    const p4, 0x7f080451

    invoke-virtual {v0, p4}, Landroid/view/View;->setBackgroundResource(I)V

    const p4, 0x7f0600e5

    invoke-virtual {p1, p4}, Landroid/content/Context;->getColor(I)I

    move-result p4

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V

    const/4 p4, 0x1

    invoke-virtual {v0, p4}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {v0}, Landroid/view/View;->buildDrawingCache()V

    invoke-virtual {v0, p4}, Landroid/view/View;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Lwc/a;

    invoke-direct {v1, p1, v0}, Lwc/a;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    invoke-virtual {p3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    sub-int/2addr p1, p4

    invoke-virtual {p3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p4

    const/16 v0, 0x12

    invoke-virtual {p3, v1, p1, p4, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private y(I)I
    .locals 1

    iget-object v0, p0, Lr3/z;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    return p1
.end method


# virtual methods
.method t(Landroid/widget/ImageView;Lcom/miui/autotask/bean/n;)V
    .locals 1

    check-cast p2, Lcom/miui/autotask/bean/u;

    invoke-virtual {p2}, Lcom/miui/autotask/bean/u;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    const p2, 0x7f08111c

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/miui/autotask/bean/u;->j()I

    move-result p2

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method w(Landroid/widget/TextView;Lcom/miui/autotask/bean/n;)V
    .locals 2

    move-object v0, p2

    check-cast v0, Lcom/miui/autotask/bean/u;

    invoke-virtual {v0}, Lcom/miui/autotask/bean/u;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcom/miui/autotask/bean/n;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lr3/z;->b:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/miui/autotask/bean/n;->a()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v1, p1, p2, v0}, Lr3/b0;->x(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/CharSequence;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.class public Lcom/miui/networkassistant/ui/view/MainToolbarItemView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private mDescView:Landroid/widget/TextView;

.field private mIconImageView:Landroid/widget/ImageView;

.field private mNameView:Landroid/widget/TextView;

.field private tips:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/networkassistant/ui/view/MainToolbarItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/networkassistant/ui/view/MainToolbarItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainToolbarItemView;->mDescView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainToolbarItemView;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0b07e7

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/MainToolbarItemView;->mNameView:Landroid/widget/TextView;

    const v0, 0x7f0b02fc

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/MainToolbarItemView;->mDescView:Landroid/widget/TextView;

    const v0, 0x7f0b0506

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/MainToolbarItemView;->mIconImageView:Landroid/widget/ImageView;

    const v0, 0x7f0b0bc4

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/MainToolbarItemView;->tips:Landroid/widget/ImageView;

    return-void
.end method

.method public setCacheIcon(Ljava/lang/String;Lrh/c;)V
    .locals 3

    invoke-virtual {p2}, Lrh/c;->K()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lrh/d;->o()Lrh/d;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lrh/e;->a(Landroid/content/Context;)Lrh/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrh/d;->p(Lrh/e;)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/view/MainToolbarItemView;->mIconImageView:Landroid/widget/ImageView;

    new-instance v2, Lcom/miui/networkassistant/ui/view/MainToolbarItemView$1;

    invoke-direct {v2, p0}, Lcom/miui/networkassistant/ui/view/MainToolbarItemView$1;-><init>(Lcom/miui/networkassistant/ui/view/MainToolbarItemView;)V

    invoke-virtual {v0, p1, v1, p2, v2}, Lrh/d;->i(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;Lyh/a;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lrh/d;->o()Lrh/d;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lrh/e;->a(Landroid/content/Context;)Lrh/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrh/d;->p(Lrh/e;)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/view/MainToolbarItemView;->mIconImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1, v1, p2}, Lrh/d;->h(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;)V

    :goto_0
    return-void
.end method

.method public setCornerIcon(I)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/j;->a(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/i;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p1, p1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroidx/core/graphics/drawable/i;->e(F)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/view/MainToolbarItemView;->mIconImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setDesc(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainToolbarItemView;->mDescView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainToolbarItemView;->mDescView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setDescFromHtml(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainToolbarItemView;->mDescView:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/networkassistant/ui/view/MainToolbarItemView;->mDescView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public setIcon(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainToolbarItemView;->mIconImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainToolbarItemView;->mIconImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setName(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainToolbarItemView;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainToolbarItemView;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setNetIcon(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const p1, 0x7f080d82

    invoke-virtual {p0, p1}, Lcom/miui/networkassistant/ui/view/MainToolbarItemView;->setIcon(I)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lx4/o0;->n()Lrh/d;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/view/MainToolbarItemView;->mIconImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1, v1}, Lrh/d;->g(Ljava/lang/String;Landroid/widget/ImageView;)V

    :goto_0
    return-void
.end method

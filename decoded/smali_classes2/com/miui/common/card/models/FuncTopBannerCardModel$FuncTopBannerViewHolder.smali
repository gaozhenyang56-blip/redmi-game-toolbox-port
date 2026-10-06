.class public Lcom/miui/common/card/models/FuncTopBannerCardModel$FuncTopBannerViewHolder;
.super Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/common/card/models/FuncTopBannerCardModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FuncTopBannerViewHolder"
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public fillData(Landroid/view/View;Lcom/miui/common/card/models/BaseCardModel;I)V
    .locals 4

    invoke-super {p0, p1, p2, p3}, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;->fillData(Landroid/view/View;Lcom/miui/common/card/models/BaseCardModel;I)V

    check-cast p2, Lcom/miui/common/card/models/FuncTopBannerCardModel;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p2}, Lcom/miui/common/card/models/FunctionCardModel;->isHomePageFunc()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const p2, 0x7f0807c7

    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    move-result p2

    const v1, 0x7f07106c

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingEnd()I

    move-result v2

    const v3, 0x7f071085

    invoke-virtual {p3, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p1, p2, v1, v2, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    iget-object p1, p0, Lcom/miui/common/card/BaseViewHolder;->summaryView:Landroid/widget/TextView;

    const p2, 0x7f07106f

    goto :goto_0

    :cond_0
    const p2, 0x7f0804c3

    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    move-result p2

    const v1, 0x7f0702c2

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingEnd()I

    move-result v2

    const v3, 0x7f0719e0

    invoke-virtual {p3, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p1, p2, v1, v2, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    iget-object p1, p0, Lcom/miui/common/card/BaseViewHolder;->summaryView:Landroid/widget/TextView;

    const p2, 0x7f0702d2

    :goto_0
    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, v0, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

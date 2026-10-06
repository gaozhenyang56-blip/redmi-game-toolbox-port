.class public Lcom/miui/common/card/models/FunNoIconCardModel$NoIconViewHolder;
.super Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/common/card/models/FunNoIconCardModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NoIconViewHolder"
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public fillData(Landroid/view/View;Lcom/miui/common/card/models/BaseCardModel;I)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;->fillData(Landroid/view/View;Lcom/miui/common/card/models/BaseCardModel;I)V

    check-cast p2, Lcom/miui/common/card/models/FunNoIconCardModel;

    invoke-static {p2}, Lcom/miui/common/card/models/FunNoIconCardModel;->access$000(Lcom/miui/common/card/models/FunNoIconCardModel;)I

    move-result p3

    const/4 v0, -0x1

    if-eq p3, v0, :cond_0

    iget-object p3, p0, Lcom/miui/common/card/BaseViewHolder;->titleView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p2}, Lcom/miui/common/card/models/FunNoIconCardModel;->access$000(Lcom/miui/common/card/models/FunNoIconCardModel;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/miui/common/card/BaseViewHolder;->titleView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f0601d8

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method

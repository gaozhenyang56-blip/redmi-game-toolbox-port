.class public Lcom/miui/common/card/models/FuncBtnBottomCardModel$BtnBottomViewHolder;
.super Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/common/card/models/FuncBtnBottomCardModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BtnBottomViewHolder"
.end annotation


# instance fields
.field private isSavedCount:Z


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public fillData(Landroid/view/View;Lcom/miui/common/card/models/BaseCardModel;I)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;->fillData(Landroid/view/View;Lcom/miui/common/card/models/BaseCardModel;I)V

    check-cast p2, Lcom/miui/common/card/models/FuncBtnBottomCardModel;

    invoke-virtual {p2}, Lcom/miui/common/card/models/FuncBtnBottomCardModel;->getAbsModelIndex()I

    move-result p1

    const/16 p2, 0x41

    if-ne p1, p2, :cond_2

    iget-boolean p1, p0, Lcom/miui/common/card/models/FuncBtnBottomCardModel$BtnBottomViewHolder;->isSavedCount:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;->context:Landroid/content/Context;

    invoke-static {p1}, Lpf/i;->k(Landroid/content/Context;)I

    move-result p1

    const/4 p2, 0x1

    const/4 p3, 0x2

    if-ge p1, p3, :cond_0

    iget-object p3, p0, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;->context:Landroid/content/Context;

    add-int/2addr p1, p2

    invoke-static {p3, p1}, Lpf/i;->x(Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    if-ne p1, p3, :cond_1

    iget-object p1, p0, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;->context:Landroid/content/Context;

    const/4 p3, -0x1

    invoke-static {p1, p3}, Lpf/i;->x(Landroid/content/Context;I)V

    :cond_1
    :goto_0
    iput-boolean p2, p0, Lcom/miui/common/card/models/FuncBtnBottomCardModel$BtnBottomViewHolder;->isSavedCount:Z

    :cond_2
    return-void
.end method

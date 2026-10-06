.class public Lcom/miui/common/card/models/ScanResultTopCardModel$ResultTopViewHolder;
.super Lcom/miui/common/card/BaseViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/common/card/models/ScanResultTopCardModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResultTopViewHolder"
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/common/card/BaseViewHolder;-><init>(Landroid/view/View;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method


# virtual methods
.method public fillData(Landroid/view/View;Lcom/miui/common/card/models/BaseCardModel;I)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/miui/common/card/BaseViewHolder;->fillData(Landroid/view/View;Lcom/miui/common/card/models/BaseCardModel;I)V

    check-cast p2, Lcom/miui/common/card/models/ScanResultTopCardModel;

    invoke-static {p2}, Lcom/miui/common/card/models/ScanResultTopCardModel;->access$000(Lcom/miui/common/card/models/ScanResultTopCardModel;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    invoke-static {p2}, Lcom/miui/common/card/models/ScanResultTopCardModel;->access$000(Lcom/miui/common/card/models/ScanResultTopCardModel;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-static {p2}, Lcom/miui/common/card/models/ScanResultTopCardModel;->access$100(Lcom/miui/common/card/models/ScanResultTopCardModel;)I

    move-result p3

    if-lez p3, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    invoke-static {p2}, Lcom/miui/common/card/models/ScanResultTopCardModel;->access$100(Lcom/miui/common/card/models/ScanResultTopCardModel;)I

    move-result p2

    :goto_0
    iput p2, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    :cond_1
    invoke-virtual {p2}, Lcom/miui/common/card/models/BaseCardModel;->isFoldDevice()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p2}, Lcom/miui/common/card/models/BaseCardModel;->getScreenSize()I

    move-result p2

    const/4 v1, 0x3

    if-eq p2, v1, :cond_3

    const/4 v1, 0x4

    if-ne p2, v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p2, 0x1

    :goto_2
    if-eqz p2, :cond_4

    const p2, 0x7f071a39

    goto :goto_3

    :cond_4
    const p2, 0x7f071a3a

    :goto_3
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    goto :goto_0

    :cond_5
    :goto_4
    return-void
.end method

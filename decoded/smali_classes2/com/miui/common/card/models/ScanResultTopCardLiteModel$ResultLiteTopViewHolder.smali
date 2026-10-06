.class public Lcom/miui/common/card/models/ScanResultTopCardLiteModel$ResultLiteTopViewHolder;
.super Lcom/miui/common/card/BaseViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/common/card/models/ScanResultTopCardLiteModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResultLiteTopViewHolder"
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
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/miui/common/card/BaseViewHolder;->fillData(Landroid/view/View;Lcom/miui/common/card/models/BaseCardModel;I)V

    check-cast p2, Lcom/miui/common/card/models/ScanResultTopCardLiteModel;

    invoke-static {p2}, Lcom/miui/common/card/models/ScanResultTopCardLiteModel;->access$000(Lcom/miui/common/card/models/ScanResultTopCardLiteModel;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    invoke-static {p2}, Lcom/miui/common/card/models/ScanResultTopCardLiteModel;->access$000(Lcom/miui/common/card/models/ScanResultTopCardLiteModel;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-static {p2}, Lcom/miui/common/card/models/ScanResultTopCardLiteModel;->access$100(Lcom/miui/common/card/models/ScanResultTopCardLiteModel;)I

    move-result p3

    if-lez p3, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    invoke-static {p2}, Lcom/miui/common/card/models/ScanResultTopCardLiteModel;->access$100(Lcom/miui/common/card/models/ScanResultTopCardLiteModel;)I

    move-result p2

    iput p2, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

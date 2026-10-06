.class Lcom/miui/powercenter/batteryhistory/x$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/powercenter/batteryhistory/x;-><init>(Landroid/view/ViewGroup;Lcom/miui/powercenter/PowerMainActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/powercenter/batteryhistory/x;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/batteryhistory/x;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/x$b;->a:Lcom/miui/powercenter/batteryhistory/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    invoke-static {}, Lx4/t;->h()I

    move-result v0

    const-wide v1, 0x3fecccccc0000000L    # 0.8999999761581421

    const v3, 0x7f121295

    const/16 v4, 0x9

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ge v0, v4, :cond_0

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/x$b;->a:Lcom/miui/powercenter/batteryhistory/x;

    invoke-static {p1}, Lcom/miui/powercenter/batteryhistory/x;->e(Lcom/miui/powercenter/batteryhistory/x;)Lcom/miui/powercenter/PowerMainActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/x$b;->a:Lcom/miui/powercenter/batteryhistory/x;

    invoke-static {v0}, Lcom/miui/powercenter/batteryhistory/x;->e(Lcom/miui/powercenter/batteryhistory/x;)Lcom/miui/powercenter/PowerMainActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v6

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    :cond_0
    new-instance v0, Lmiuix/popupwidget/widget/GuidePopupWindow;

    iget-object v7, p0, Lcom/miui/powercenter/batteryhistory/x$b;->a:Lcom/miui/powercenter/batteryhistory/x;

    invoke-static {v7}, Lcom/miui/powercenter/batteryhistory/x;->e(Lcom/miui/powercenter/batteryhistory/x;)Lcom/miui/powercenter/PowerMainActivity;

    move-result-object v7

    invoke-direct {v0, v7}, Lmiuix/popupwidget/widget/GuidePopupWindow;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->setArrowMode(I)V

    iget-object v4, p0, Lcom/miui/powercenter/batteryhistory/x$b;->a:Lcom/miui/powercenter/batteryhistory/x;

    invoke-static {v4}, Lcom/miui/powercenter/batteryhistory/x;->e(Lcom/miui/powercenter/batteryhistory/x;)Lcom/miui/powercenter/PowerMainActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v7

    invoke-virtual {v7, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/popupwidget/widget/GuidePopupWindow;->setGuideText(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/x$b;->a:Lcom/miui/powercenter/batteryhistory/x;

    invoke-static {v1}, Lcom/miui/powercenter/batteryhistory/x;->e(Lcom/miui/powercenter/batteryhistory/x;)Lcom/miui/powercenter/PowerMainActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    if-ne v1, v5, :cond_1

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/x$b;->a:Lcom/miui/powercenter/batteryhistory/x;

    invoke-static {v1}, Lcom/miui/powercenter/batteryhistory/x;->j(Lcom/miui/powercenter/batteryhistory/x;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    iget-object v2, p0, Lcom/miui/powercenter/batteryhistory/x$b;->a:Lcom/miui/powercenter/batteryhistory/x;

    invoke-static {v2}, Lcom/miui/powercenter/batteryhistory/x;->e(Lcom/miui/powercenter/batteryhistory/x;)Lcom/miui/powercenter/PowerMainActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f071708

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/x$b;->a:Lcom/miui/powercenter/batteryhistory/x;

    invoke-static {v1}, Lcom/miui/powercenter/batteryhistory/x;->k(Lcom/miui/powercenter/batteryhistory/x;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/miui/powercenter/batteryhistory/x$b;->a:Lcom/miui/powercenter/batteryhistory/x;

    invoke-static {v2}, Lcom/miui/powercenter/batteryhistory/x;->e(Lcom/miui/powercenter/batteryhistory/x;)Lcom/miui/powercenter/PowerMainActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f071707

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    :goto_0
    invoke-virtual {v0, p1, v1, v6, v6}, Lmiuix/popupwidget/widget/GuidePopupWindow;->show(Landroid/view/View;IIZ)V

    :goto_1
    return-void
.end method

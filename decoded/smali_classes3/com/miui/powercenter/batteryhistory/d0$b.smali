.class Lcom/miui/powercenter/batteryhistory/d0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/powercenter/batteryhistory/d0;->N(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/powercenter/batteryhistory/d0;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/batteryhistory/d0;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/d0$b;->a:Lcom/miui/powercenter/batteryhistory/d0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p2, p0, Lcom/miui/powercenter/batteryhistory/d0$b;->a:Lcom/miui/powercenter/batteryhistory/d0;

    invoke-static {p2}, Lcom/miui/powercenter/batteryhistory/d0;->J(Lcom/miui/powercenter/batteryhistory/d0;)Lcom/miui/powercenter/mainui/MainBatteryView;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/miui/powercenter/mainui/MainBatteryView;->setSaveModeStatus(Z)V

    iget-object p2, p0, Lcom/miui/powercenter/batteryhistory/d0$b;->a:Lcom/miui/powercenter/batteryhistory/d0;

    invoke-static {p2}, Lcom/miui/powercenter/batteryhistory/d0;->t(Lcom/miui/powercenter/batteryhistory/d0;)Lcom/miui/common/ui/HoverSlidingSwitch;

    move-result-object p2

    invoke-virtual {p2, v0}, Lmiuix/slidingwidget/widget/SlidingSwitch;->setChecked(Z)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

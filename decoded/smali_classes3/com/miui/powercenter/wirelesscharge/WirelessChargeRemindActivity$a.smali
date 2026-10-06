.class Lcom/miui/powercenter/wirelesscharge/WirelessChargeRemindActivity$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/powercenter/wirelesscharge/WirelessChargeRemindActivity;->e0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/powercenter/wirelesscharge/WirelessChargeRemindActivity;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/wirelesscharge/WirelessChargeRemindActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/wirelesscharge/WirelessChargeRemindActivity$a;->a:Lcom/miui/powercenter/wirelesscharge/WirelessChargeRemindActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "status"

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v1, "plugged"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const/4 p1, 0x4

    if-eq p2, p1, :cond_2

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "miui.intent.action.ACTION_RX_OFFSET"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    const-string v0, "miui.intent.extra.EXTRA_RX_OFFSET"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {}, Lcom/miui/powercenter/wirelesscharge/WirelessChargeRemindActivity;->d0()I

    move-result p2

    if-eq p1, p2, :cond_2

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/miui/powercenter/wirelesscharge/WirelessChargeRemindActivity$a;->a:Lcom/miui/powercenter/wirelesscharge/WirelessChargeRemindActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finishAndRemoveTask()V

    :cond_2
    return-void
.end method

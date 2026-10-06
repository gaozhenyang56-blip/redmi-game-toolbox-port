.class Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity$b;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity$b;->a:Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "miui.intent.action.ACTION_WIRELESS_CHARGING"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    const-string v0, "miui.intent.extra.WIRELESS_CHARGING"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    iget-object p1, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity$b;->a:Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;

    invoke-static {p1}, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->p0(Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;)Lmiuix/slidingwidget/widget/SlidingButton;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity$b;->a:Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;

    invoke-static {p2}, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->j0(Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;)Loe/a;

    move-result-object p2

    invoke-interface {p2}, Loe/a;->g()Z

    move-result p2

    invoke-virtual {p1, p2}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "miui.intent.action.ACTION_WIRELESS_FW_UPDATE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity$b;->a:Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;

    const/4 v0, -0x1

    const-string v1, "miui.intent.extra.EXTRA_WIRELESS_FW_UPDATE"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->m0(Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;I)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "receive mWirelessFwState = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity$b;->a:Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;

    invoke-static {p2}, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->l0(Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WirelessReverseActivity"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object p1, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity$b;->a:Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;

    invoke-static {p1}, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->n0(Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity$b;->a:Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;

    const-string v0, "plugged"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->z0(Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;I)I

    iget-object p1, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity$b;->a:Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;

    invoke-static {p1}, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->q0(Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity$b;->a:Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;

    invoke-static {p1}, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->y0(Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;)I

    move-result p1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_2

    iget-object p1, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity$b;->a:Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;

    invoke-static {p1, v1}, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->r0(Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;Z)Z

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

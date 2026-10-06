.class Lcom/miui/powercenter/mainui/BatteryStatusView$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/powercenter/mainui/BatteryStatusView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/powercenter/mainui/BatteryStatusView;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/mainui/BatteryStatusView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/mainui/BatteryStatusView$a;->a:Lcom/miui/powercenter/mainui/BatteryStatusView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/powercenter/mainui/BatteryStatusView$a;->a:Lcom/miui/powercenter/mainui/BatteryStatusView;

    invoke-virtual {p1}, Lcom/miui/powercenter/mainui/BatteryStatusView;->o()V

    :cond_0
    return-void
.end method

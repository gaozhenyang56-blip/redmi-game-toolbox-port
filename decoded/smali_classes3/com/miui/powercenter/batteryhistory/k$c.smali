.class Lcom/miui/powercenter/batteryhistory/k$c;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/powercenter/batteryhistory/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/powercenter/batteryhistory/k;


# direct methods
.method private constructor <init>(Lcom/miui/powercenter/batteryhistory/k;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/k$c;->a:Lcom/miui/powercenter/batteryhistory/k;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/powercenter/batteryhistory/k;Lcom/miui/powercenter/batteryhistory/k$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/powercenter/batteryhistory/k$c;-><init>(Lcom/miui/powercenter/batteryhistory/k;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    const-string v0, "android.intent.extra.SHUTDOWN_USERSPACE_ONLY"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "shut user : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "BatteryHistoryManager"

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/k$c;->a:Lcom/miui/powercenter/batteryhistory/k;

    invoke-static {p1}, Lcom/miui/powercenter/batteryhistory/k;->a(Lcom/miui/powercenter/batteryhistory/k;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/powercenter/batteryhistory/g;->q(Landroid/content/Context;)Lcom/miui/powercenter/batteryhistory/g;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/miui/powercenter/batteryhistory/g;->y(J)V

    :cond_0
    return-void
.end method

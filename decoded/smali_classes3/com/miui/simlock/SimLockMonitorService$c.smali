.class Lcom/miui/simlock/SimLockMonitorService$c;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/simlock/SimLockMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/simlock/SimLockMonitorService;


# direct methods
.method constructor <init>(Lcom/miui/simlock/SimLockMonitorService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/simlock/SimLockMonitorService$c;->a:Lcom/miui/simlock/SimLockMonitorService;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 4

    const-string v0, "SimLock-MonitorService"

    const-string v1, "onSubscriptionsChanged now."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/simlock/SimLockMonitorService$c;->a:Lcom/miui/simlock/SimLockMonitorService;

    invoke-static {v0}, Lcom/miui/simlock/SimLockMonitorService;->b(Lcom/miui/simlock/SimLockMonitorService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

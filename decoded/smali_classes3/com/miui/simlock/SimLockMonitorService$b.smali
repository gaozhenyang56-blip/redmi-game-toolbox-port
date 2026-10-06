.class Lcom/miui/simlock/SimLockMonitorService$b;
.super Landroid/content/BroadcastReceiver;
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

    iput-object p1, p0, Lcom/miui/simlock/SimLockMonitorService$b;->a:Lcom/miui/simlock/SimLockMonitorService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive action:: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimLock-MonitorService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const-string v0, "rebroadcastOnUnlock"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceive action::"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", but return for EXTRA_REBROADCAST_ON_UNLOCK"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/simlock/SimLockMonitorService$b;->a:Lcom/miui/simlock/SimLockMonitorService;

    invoke-static {p1}, Lcom/miui/simlock/SimLockMonitorService;->a(Lcom/miui/simlock/SimLockMonitorService;)Lcom/miui/simlock/SimLockManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/simlock/SimLockManager;->K8()V

    return-void

    :cond_0
    invoke-static {p2}, Lfg/e;->a(Landroid/content/Intent;)Lfg/e;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/simlock/SimLockMonitorService$b;->a:Lcom/miui/simlock/SimLockMonitorService;

    invoke-static {p2}, Lcom/miui/simlock/SimLockMonitorService;->b(Lcom/miui/simlock/SimLockMonitorService;)Landroid/os/Handler;

    move-result-object p2

    iget v0, p1, Lfg/e;->c:I

    iget v1, p1, Lfg/e;->b:I

    iget-object p1, p1, Lfg/e;->a:Lr1/a;

    invoke-virtual {p2, v2, v0, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/miui/simlock/SimLockMonitorService$b;->a:Lcom/miui/simlock/SimLockMonitorService;

    invoke-static {p1}, Lcom/miui/simlock/SimLockMonitorService;->b(Lcom/miui/simlock/SimLockMonitorService;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    :cond_2
    const-string v0, "android.miui.intent.action.SIM_LOCKED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p1, "slot_id"

    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iget-object p2, p0, Lcom/miui/simlock/SimLockMonitorService$b;->a:Lcom/miui/simlock/SimLockMonitorService;

    invoke-static {p2}, Lcom/miui/simlock/SimLockMonitorService;->b(Lcom/miui/simlock/SimLockMonitorService;)Landroid/os/Handler;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p2, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/simlock/SimLockMonitorService$b;->a:Lcom/miui/simlock/SimLockMonitorService;

    invoke-static {p2}, Lcom/miui/simlock/SimLockMonitorService;->b(Lcom/miui/simlock/SimLockMonitorService;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/miui/simlock/SimLockMonitorService$b;->a:Lcom/miui/simlock/SimLockMonitorService;

    invoke-static {p2}, Lcom/miui/simlock/SimLockMonitorService;->b(Lcom/miui/simlock/SimLockMonitorService;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_3
    iget-object p2, p0, Lcom/miui/simlock/SimLockMonitorService$b;->a:Lcom/miui/simlock/SimLockMonitorService;

    invoke-static {p2}, Lcom/miui/simlock/SimLockMonitorService;->b(Lcom/miui/simlock/SimLockMonitorService;)Landroid/os/Handler;

    move-result-object p2

    const-wide/16 v0, 0x9c4

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2

    :cond_4
    const-string p2, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/miui/simlock/SimLockMonitorService$b;->a:Lcom/miui/simlock/SimLockMonitorService;

    invoke-static {p1}, Lcom/miui/simlock/SimLockMonitorService;->c(Lcom/miui/simlock/SimLockMonitorService;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/simlock/c;->i(Landroid/content/Context;)Z

    move-result p1

    iget-object p2, p0, Lcom/miui/simlock/SimLockMonitorService$b;->a:Lcom/miui/simlock/SimLockMonitorService;

    invoke-static {p2}, Lcom/miui/simlock/SimLockMonitorService;->d(Lcom/miui/simlock/SimLockMonitorService;)Z

    move-result p2

    if-eq p1, p2, :cond_6

    iget-object p2, p0, Lcom/miui/simlock/SimLockMonitorService$b;->a:Lcom/miui/simlock/SimLockMonitorService;

    if-eqz p1, :cond_5

    invoke-static {p2}, Lcom/miui/simlock/SimLockMonitorService;->c(Lcom/miui/simlock/SimLockMonitorService;)Landroid/content/Context;

    move-result-object p2

    const/16 v0, 0x271a

    invoke-static {p2, v0}, Lfg/h;->a(Landroid/content/Context;I)V

    goto :goto_1

    :cond_5
    invoke-static {p2}, Lcom/miui/simlock/SimLockMonitorService;->a(Lcom/miui/simlock/SimLockMonitorService;)Lcom/miui/simlock/SimLockManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/simlock/SimLockManager;->G8()V

    :goto_1
    iget-object p2, p0, Lcom/miui/simlock/SimLockMonitorService$b;->a:Lcom/miui/simlock/SimLockMonitorService;

    invoke-static {p2, p1}, Lcom/miui/simlock/SimLockMonitorService;->e(Lcom/miui/simlock/SimLockMonitorService;Z)Z

    :cond_6
    :goto_2
    return-void
.end method

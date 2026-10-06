.class public Lcom/miui/simlock/SimLockMonitorService;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/miui/simlock/SimLockManager;

.field private c:Landroid/telephony/SubscriptionManager;

.field private d:Z

.field private final e:Landroid/os/Handler;

.field private final f:Landroid/content/BroadcastReceiver;

.field private final g:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/miui/simlock/SimLockMonitorService$a;

    invoke-static {}, Lxc/q;->c()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/simlock/SimLockMonitorService$a;-><init>(Lcom/miui/simlock/SimLockMonitorService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/simlock/SimLockMonitorService;->e:Landroid/os/Handler;

    new-instance v0, Lcom/miui/simlock/SimLockMonitorService$b;

    invoke-direct {v0, p0}, Lcom/miui/simlock/SimLockMonitorService$b;-><init>(Lcom/miui/simlock/SimLockMonitorService;)V

    iput-object v0, p0, Lcom/miui/simlock/SimLockMonitorService;->f:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/miui/simlock/SimLockMonitorService$c;

    invoke-direct {v0, p0}, Lcom/miui/simlock/SimLockMonitorService$c;-><init>(Lcom/miui/simlock/SimLockMonitorService;)V

    iput-object v0, p0, Lcom/miui/simlock/SimLockMonitorService;->g:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    return-void
.end method

.method static synthetic a(Lcom/miui/simlock/SimLockMonitorService;)Lcom/miui/simlock/SimLockManager;
    .locals 0

    iget-object p0, p0, Lcom/miui/simlock/SimLockMonitorService;->b:Lcom/miui/simlock/SimLockManager;

    return-object p0
.end method

.method static synthetic b(Lcom/miui/simlock/SimLockMonitorService;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/miui/simlock/SimLockMonitorService;->e:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic c(Lcom/miui/simlock/SimLockMonitorService;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/simlock/SimLockMonitorService;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic d(Lcom/miui/simlock/SimLockMonitorService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/simlock/SimLockMonitorService;->d:Z

    return p0
.end method

.method static synthetic e(Lcom/miui/simlock/SimLockMonitorService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/simlock/SimLockMonitorService;->d:Z

    return p1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p1, p0, Lcom/miui/simlock/SimLockMonitorService;->b:Lcom/miui/simlock/SimLockManager;

    invoke-virtual {p1}, Lcom/miui/simlock/ISimLockManager$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public onCreate()V
    .locals 8

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate process: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/miui/analytics/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimLock-MonitorService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/miui/analytics/a;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.miui.securitycenter.bootaware"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/miui/simlock/c;->c:Z

    :cond_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/simlock/SimLockMonitorService;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/simlock/c;->i(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/simlock/SimLockMonitorService;->d:Z

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/simlock/SimLockManager;->p8(Landroid/content/Context;)Lcom/miui/simlock/SimLockManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/simlock/SimLockMonitorService;->b:Lcom/miui/simlock/SimLockManager;

    iget-object v0, p0, Lcom/miui/simlock/SimLockMonitorService;->a:Landroid/content/Context;

    const-string v1, "telephony_subscription_service"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    iput-object v0, p0, Lcom/miui/simlock/SimLockMonitorService;->c:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/miui/simlock/SimLockMonitorService;->g:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.miui.intent.action.SIM_LOCKED"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/miui/simlock/SimLockMonitorService;->f:Landroid/content/BroadcastReceiver;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/miui/simlock/SimLockMonitorService;->e:Landroid/os/Handler;

    const/4 v7, 0x2

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lx4/v;->n(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    return-void
.end method

.method public onDestroy()V
    .locals 3

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDestroy SimLockMonitorService in process "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/miui/analytics/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimLock-MonitorService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/simlock/SimLockMonitorService;->c:Landroid/telephony/SubscriptionManager;

    iget-object v2, p0, Lcom/miui/simlock/SimLockMonitorService;->g:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v2}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    iget-object v0, p0, Lcom/miui/simlock/SimLockMonitorService;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-static {}, Lcom/miui/analytics/a;->a()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.miui.securitycenter.bootaware"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/miui/simlock/c;->c:Z

    sget-boolean v0, Lcom/miui/simlock/c;->d:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start to kill com.miui.securitycenter.bootaware, pid = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const/4 p1, 0x2

    return p1
.end method

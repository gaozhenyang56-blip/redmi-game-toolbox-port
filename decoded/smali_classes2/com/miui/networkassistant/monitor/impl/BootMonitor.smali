.class public Lcom/miui/networkassistant/monitor/impl/BootMonitor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/networkassistant/monitor/IMonitor;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string p2, "invoked"

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "BootMonitor"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/miui/networkassistant/service/FirewallService;

    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Lx4/z1;->A()Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lx4/v;->w(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Lx4/z1;->A()Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lx4/v;->w(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public register()V
    .locals 1

    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-static {v0, p0}, Lcom/miui/networkassistant/monitor/GolbalReceiver;->addMonitor(Ljava/lang/String;Lcom/miui/networkassistant/monitor/IMonitor;)V

    return-void
.end method

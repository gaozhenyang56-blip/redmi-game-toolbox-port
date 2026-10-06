.class Lcom/miui/networkassistant/service/tm/TrafficManageService$18;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/networkassistant/service/tm/TrafficManageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$18;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/miui/networkassistant/service/tm/TrafficManageService$18;ILandroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/service/tm/TrafficManageService$18;->lambda$onReceive$0(ILandroid/content/Intent;)V

    return-void
.end method

.method private synthetic lambda$onReceive$0(ILandroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$18;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$500(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/AppMonitor;

    move-result-object v0

    aget-object p1, v0, p1

    invoke-virtual {p1, p2}, Lcom/miui/networkassistant/service/tm/AppMonitor;->onPackageChanged(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-static {}, Lx4/z1;->n()I

    move-result p1

    const-string v0, "android.intent.extra.user_handle"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mina mPackageReceiver "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TrafficManageService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lx4/z1;->n()I

    move-result v0

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3e7

    if-eq p1, v0, :cond_0

    invoke-static {p1}, Lx4/z1;->i(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    new-instance v0, Lcom/miui/networkassistant/service/tm/c;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/networkassistant/service/tm/c;-><init>(Lcom/miui/networkassistant/service/tm/TrafficManageService$18;ILandroid/content/Intent;)V

    invoke-static {v0}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

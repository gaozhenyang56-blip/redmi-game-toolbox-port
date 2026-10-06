.class Lcom/miui/networkassistant/service/FirewallService$7;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/networkassistant/service/FirewallService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/service/FirewallService;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/service/FirewallService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/service/FirewallService$7;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/miui/networkassistant/service/FirewallService$7;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/service/FirewallService$7;->lambda$onReceive$0(Landroid/content/Intent;Landroid/content/Context;)V

    return-void
.end method

.method private synthetic lambda$onReceive$0(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 6

    const-string v0, "FireWallService"

    const-string v1, "mina mPackageReceiver onReceive"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.extra.UID"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {p2, v1}, Lcom/miui/networkassistant/utils/PackageUtil;->getInstaller(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "null"

    invoke-static {p2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    :cond_2
    const-string p1, "is Pre-installed application"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    invoke-static {v1, v2}, Lcom/miui/networkassistant/utils/PackageUtil;->getPackageNameFormat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.extra.REPLACING"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_4

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object p1, p0, Lcom/miui/networkassistant/service/FirewallService$7;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {p1, p2}, Lcom/miui/networkassistant/service/FirewallService;->access$2300(Lcom/miui/networkassistant/service/FirewallService;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    if-nez p1, :cond_6

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/miui/networkassistant/service/FirewallService$7;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {p1}, Lcom/miui/networkassistant/service/FirewallService;->access$200(Lcom/miui/networkassistant/service/FirewallService;)Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/miui/networkassistant/utils/PackageUtil;->hasInternetPermission(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/miui/networkassistant/service/FirewallService$7;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {p1, v1, v3}, Lcom/miui/networkassistant/service/FirewallService;->access$2400(Lcom/miui/networkassistant/service/FirewallService;Ljava/lang/String;I)V

    sget-boolean p1, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_DUAL_CARD:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/miui/networkassistant/service/FirewallService$7;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    const/4 p2, 0x1

    invoke-static {p1, v1, p2}, Lcom/miui/networkassistant/service/FirewallService;->access$2400(Lcom/miui/networkassistant/service/FirewallService;Ljava/lang/String;I)V

    :cond_5
    iget-object p1, p0, Lcom/miui/networkassistant/service/FirewallService$7;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {p1, v1}, Lcom/miui/networkassistant/service/FirewallService;->access$2500(Lcom/miui/networkassistant/service/FirewallService;Ljava/lang/String;)V

    :cond_6
    :goto_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    new-instance v0, Lcom/miui/networkassistant/service/b;

    invoke-direct {v0, p0, p2, p1}, Lcom/miui/networkassistant/service/b;-><init>(Lcom/miui/networkassistant/service/FirewallService$7;Landroid/content/Intent;Landroid/content/Context;)V

    invoke-static {v0}, Lx4/f;->b(Ljava/lang/Runnable;)V

    return-void
.end method

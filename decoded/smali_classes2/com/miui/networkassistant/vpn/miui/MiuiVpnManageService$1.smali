.class Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$1;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$1;->lambda$onReceive$0()V

    return-void
.end method

.method private synthetic lambda$onReceive$0()V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$1;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->access$100(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)Lcom/miui/networkassistant/config/CommonConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/CommonConfig;->getMiuiVpnInfos()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$1;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->access$200(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    new-instance p1, Lcom/miui/networkassistant/vpn/miui/a;

    invoke-direct {p1, p0}, Lcom/miui/networkassistant/vpn/miui/a;-><init>(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$1;)V

    invoke-static {p1}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

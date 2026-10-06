.class Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnManageServiceBinder;
.super Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MiuiVpnManageServiceBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;


# direct methods
.method private constructor <init>(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnManageServiceBinder;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-direct {p0}, Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnManageServiceBinder;-><init>(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)V

    return-void
.end method


# virtual methods
.method public connectVpn(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnManageServiceBinder;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v0, p1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->access$1100(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public detectTimeDelay(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnManageServiceBinder;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v0, p1, p2}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->access$1800(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;Ljava/lang/String;I)V

    return-void
.end method

.method public disConnectVpn()V
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnManageServiceBinder;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->access$1700(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x107

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public getCoupons()V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnManageServiceBinder;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->access$1600(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)V

    return-void
.end method

.method public getSetting(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnManageServiceBinder;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v0, p1, p2}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->access$1200(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSettingEx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnManageServiceBinder;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v0, p1, p2, p3}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->access$1400(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSettingWithChannel(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnManageServiceBinder;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v0, p1, p2, p3}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->access$2000(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSupportApps(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->TAG:Ljava/lang/String;

    const-string v1, "getSupportApps"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnManageServiceBinder;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v0, p1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->access$700(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getSupportVpn()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->TAG:Ljava/lang/String;

    const-string v1, "getSupportVpn"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnManageServiceBinder;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->access$600(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVpnEnabled(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    sget-object v0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->TAG:Ljava/lang/String;

    const-string v1, "getVpnEnabled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnManageServiceBinder;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v0, p1, p2}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->access$400(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public init(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnManageServiceBinder;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v0, p1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->access$1000(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public refreshUserState()I
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnManageServiceBinder;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-virtual {v0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->refreshUserState()I

    move-result v0

    return v0
.end method

.method public registerCallback(Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageServiceCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnManageServiceBinder;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v0, p1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->access$800(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageServiceCallback;)V

    return-void
.end method

.method public setDSDASwitch(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnManageServiceBinder;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v0, p1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->access$1900(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;Z)V

    return-void
.end method

.method public setSetting(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnManageServiceBinder;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v0, p1, p2}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->access$1300(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setSettingEx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnManageServiceBinder;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v0, p1, p2, p3}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->access$1500(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setVpnEnabled(Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 2

    sget-object v0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->TAG:Ljava/lang/String;

    const-string v1, "setVpnEnabled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnManageServiceBinder;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v0, p1, p2, p3}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->access$500(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p1

    return p1
.end method

.method public unregisterCallback(Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageServiceCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnManageServiceBinder;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v0, p1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->access$900(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageServiceCallback;)V

    return-void
.end method

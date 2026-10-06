.class Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$3;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$3;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    sget-object p1, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->TAG:Ljava/lang/String;

    const-string v0, "mCloudDataObserver change"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$3;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->access$300(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;Z)V

    return-void
.end method

.class Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


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

    iput-object p1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$7;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x106

    if-eq p1, v0, :cond_1

    const/16 v0, 0x107

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$7;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {p1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->access$2200(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)I

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$7;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {p1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->access$3400(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.class Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->setVpnEnabled(Ljava/lang/String;Ljava/lang/String;Z)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

.field final synthetic val$vpnEnabled:Z

.field final synthetic val$vpnType:I


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;ZI)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$4;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    iput-boolean p2, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$4;->val$vpnEnabled:Z

    iput p3, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$4;->val$vpnType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-boolean v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$4;->val$vpnEnabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$4;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->access$2100(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$4;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->access$2200(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)I

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$4;->val$vpnEnabled:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$4;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->access$2100(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$4;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->access$2100(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)I

    move-result v0

    iget v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$4;->val$vpnType:I

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$4;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->access$2200(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)I

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$4;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->access$2100(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)I

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$4;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    iget v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$4;->val$vpnType:I

    invoke-static {v0, v1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->access$2300(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;I)Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$MiuiVpnDetailInfo;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$MiuiVpnDetailInfo;->getPackages()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$4;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v2}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->access$2400(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lx4/f1;->y(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v1, 0x1

    :cond_5
    if-eqz v1, :cond_6

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$4;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    iget v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$4;->val$vpnType:I

    invoke-static {v0, v1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->access$2500(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;I)I

    :cond_6
    :goto_0
    return-void
.end method

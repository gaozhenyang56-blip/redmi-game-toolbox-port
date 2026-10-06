.class Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->restartService()V
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

    iput-object p1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$9;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$9;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->access$2100(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$9;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->access$2700(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$9;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->access$2100(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->access$2300(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;I)Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$MiuiVpnDetailInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$MiuiVpnDetailInfo;->getPackages()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$9;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v3}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->access$2400(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lx4/f1;->y(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$9;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->access$2100(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->access$4200(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;I)I

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$9;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->access$2100(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->access$2500(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;I)I

    :cond_4
    return-void
.end method

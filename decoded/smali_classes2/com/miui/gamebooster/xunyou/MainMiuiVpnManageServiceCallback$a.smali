.class Lcom/miui/gamebooster/xunyou/MainMiuiVpnManageServiceCallback$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/xunyou/MainMiuiVpnManageServiceCallback;->onVpnStateChanged(IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;

.field final synthetic c:Lcom/miui/gamebooster/xunyou/MainMiuiVpnManageServiceCallback;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/xunyou/MainMiuiVpnManageServiceCallback;ILcom/miui/gamebooster/ui/GameBoosterRealMainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/xunyou/MainMiuiVpnManageServiceCallback$a;->c:Lcom/miui/gamebooster/xunyou/MainMiuiVpnManageServiceCallback;

    iput p2, p0, Lcom/miui/gamebooster/xunyou/MainMiuiVpnManageServiceCallback$a;->a:I

    iput-object p3, p0, Lcom/miui/gamebooster/xunyou/MainMiuiVpnManageServiceCallback$a;->b:Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget v0, p0, Lcom/miui/gamebooster/xunyou/MainMiuiVpnManageServiceCallback$a;->a:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/xunyou/MainMiuiVpnManageServiceCallback$a;->b:Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;

    iget-object v1, v0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->h:Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    const-string v2, "detailUrl"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;->getSetting(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->s:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/gamebooster/xunyou/MainMiuiVpnManageServiceCallback$a;->b:Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;

    iget-boolean v1, v0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->q:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->h:Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    invoke-interface {v0}, Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;->getCoupons()V

    iget-object v0, p0, Lcom/miui/gamebooster/xunyou/MainMiuiVpnManageServiceCallback$a;->b:Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->q:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/miui/gamebooster/xunyou/MainMiuiVpnManageServiceCallback;->k:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

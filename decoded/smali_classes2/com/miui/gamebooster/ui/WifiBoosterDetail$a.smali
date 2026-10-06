.class Lcom/miui/gamebooster/ui/WifiBoosterDetail$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/ui/WifiBoosterDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/ui/WifiBoosterDetail;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/ui/WifiBoosterDetail;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/WifiBoosterDetail$a;->a:Lcom/miui/gamebooster/ui/WifiBoosterDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    iget-object p1, p0, Lcom/miui/gamebooster/ui/WifiBoosterDetail$a;->a:Lcom/miui/gamebooster/ui/WifiBoosterDetail;

    invoke-static {p1}, Lcom/miui/gamebooster/ui/WifiBoosterDetail;->f0(Lcom/miui/gamebooster/ui/WifiBoosterDetail;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "action_detail_wifibooster"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/miui/gamebooster/ui/WifiBoosterDetail$a;->a:Lcom/miui/gamebooster/ui/WifiBoosterDetail;

    invoke-static {p1}, Lcom/miui/gamebooster/ui/WifiBoosterDetail;->g0(Lcom/miui/gamebooster/ui/WifiBoosterDetail;)Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    move-result-object p1

    const-string v0, "xunyou"

    const-string v1, "xunyou_wifi_accel_switch"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;->setSettingEx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static {p2}, Lm6/a;->o0(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {}, Lcom/miui/gamebooster/ui/WifiBoosterDetail;->i0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz p2, :cond_2

    iget-object p1, p0, Lcom/miui/gamebooster/ui/WifiBoosterDetail$a;->a:Lcom/miui/gamebooster/ui/WifiBoosterDetail;

    invoke-static {p1}, Lzg/a;->a(Landroid/content/Context;)Lzg/a;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lzg/a;->c(Z)V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/miui/gamebooster/ui/WifiBoosterDetail$a;->a:Lcom/miui/gamebooster/ui/WifiBoosterDetail;

    invoke-static {p1}, Lcom/miui/gamebooster/ui/WifiBoosterDetail;->f0(Lcom/miui/gamebooster/ui/WifiBoosterDetail;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "action_handsfree_mute"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p2}, Lm6/a;->k0(Z)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/miui/gamebooster/ui/WifiBoosterDetail$a;->a:Lcom/miui/gamebooster/ui/WifiBoosterDetail;

    invoke-static {p1}, Lcom/miui/gamebooster/ui/WifiBoosterDetail;->f0(Lcom/miui/gamebooster/ui/WifiBoosterDetail;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "action_detail_gwsd"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {p2}, Lm6/a;->f0(Z)V

    if-nez p2, :cond_2

    iget-object p1, p0, Lcom/miui/gamebooster/ui/WifiBoosterDetail$a;->a:Lcom/miui/gamebooster/ui/WifiBoosterDetail;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, -0x2

    const-string v1, "gb_gwsd"

    invoke-static {p1, v1, p2, v0}, La8/c0;->i(Landroid/content/ContentResolver;Ljava/lang/String;II)V

    :cond_2
    :goto_1
    return-void
.end method

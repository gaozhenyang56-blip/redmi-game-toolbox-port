.class Lcom/miui/gamebooster/ui/PerformanceSettingsFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment$b;->a:Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    const-string p1, "PerformanceSettingsFrag"

    iget-object v0, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment$b;->a:Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;

    invoke-static {p2}, Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->d0(Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;)Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    :try_start_0
    iget-object p2, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment$b;->a:Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;

    invoke-static {p2}, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->c0(Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;)Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    move-result-object v0

    const-string v1, "xunyou"

    const-string v2, "xunyou_wifi_accel_switch"

    const-string v3, "false"

    invoke-interface {v0, v1, v2, v3}, Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;->getSettingEx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->f0(Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object p2, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment$b;->a:Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;

    invoke-static {p2}, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->e0(Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {p2}, Lm6/a;->o0(Z)V

    iget-object p2, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment$b;->a:Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;

    invoke-static {p2}, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->p0(Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;)Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    move-result-object p2

    iget-object v0, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment$b;->a:Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->e0(Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, v1}, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->e(ZZZ)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mMiuiVpnService :"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment$b;->a:Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->c0(Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;)Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment$b;->a:Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->d0(Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;)Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    return-void
.end method

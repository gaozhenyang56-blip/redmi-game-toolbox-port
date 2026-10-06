.class Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;
.super Lcom/miui/networkassistant/service/IFirewallBinder$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/networkassistant/service/FirewallService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FirewallBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/service/FirewallService;


# direct methods
.method private constructor <init>(Lcom/miui/networkassistant/service/FirewallService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-direct {p0}, Lcom/miui/networkassistant/service/IFirewallBinder$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/networkassistant/service/FirewallService;Lcom/miui/networkassistant/service/FirewallService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;-><init>(Lcom/miui/networkassistant/service/FirewallService;)V

    return-void
.end method

.method private checkMobileRuleIsTempRestricted(Ljava/lang/String;I)Z
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/FirewallService;->access$000(Lcom/miui/networkassistant/service/FirewallService;)Lcom/miui/networkassistant/firewall/IFirewall;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/miui/networkassistant/firewall/IFirewall;->getTempMobileRule(Ljava/lang/String;I)Lcom/miui/networkassistant/model/FirewallRule;

    move-result-object v0

    sget-object v1, Lcom/miui/networkassistant/model/FirewallRule;->Restrict:Lcom/miui/networkassistant/model/FirewallRule;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/FirewallService;->access$000(Lcom/miui/networkassistant/service/FirewallService;)Lcom/miui/networkassistant/firewall/IFirewall;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/miui/networkassistant/firewall/IFirewall;->getTempMobileRuleSrcPkgName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/FirewallService;->access$700(Lcom/miui/networkassistant/service/FirewallService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "temp_rule_package"

    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "temp_rule_reason"

    invoke-virtual {v1, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {p1}, Lcom/miui/networkassistant/service/FirewallService;->access$700(Lcom/miui/networkassistant/service/FirewallService;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private checkWifiRuleIsTempRestricted(Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/FirewallService;->access$000(Lcom/miui/networkassistant/service/FirewallService;)Lcom/miui/networkassistant/firewall/IFirewall;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/networkassistant/firewall/IFirewall;->getTempWifiRule(Ljava/lang/String;)Lcom/miui/networkassistant/model/FirewallRule;

    move-result-object v0

    sget-object v1, Lcom/miui/networkassistant/model/FirewallRule;->Restrict:Lcom/miui/networkassistant/model/FirewallRule;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/FirewallService;->access$000(Lcom/miui/networkassistant/service/FirewallService;)Lcom/miui/networkassistant/firewall/IFirewall;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/networkassistant/firewall/IFirewall;->getTempWifiRuleSrcPkgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {v1}, Lcom/miui/networkassistant/service/FirewallService;->access$700(Lcom/miui/networkassistant/service/FirewallService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "temp_rule_package"

    invoke-virtual {v2, v3, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "temp_rule_reason"

    invoke-virtual {v2, p1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {p1}, Lcom/miui/networkassistant/service/FirewallService;->access$700(Lcom/miui/networkassistant/service/FirewallService;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private getApplicationInfo(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;
    .locals 8

    :try_start_0
    invoke-static {p1}, Lcom/miui/networkassistant/utils/PackageUtil;->isXSpaceApp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/FirewallService;->access$100(Lcom/miui/networkassistant/service/FirewallService;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "android.os.ServiceManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "getService"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v1

    new-array v5, v3, [Ljava/lang/Object;

    const-string v6, "package"

    aput-object v6, v5, v1

    invoke-static {v0, v2, v4, v5}, Lbh/f;->h(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    iget-object v2, p0, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    const-string v4, "android.content.pm.IPackageManager$Stub"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "asInterface"

    new-array v6, v3, [Ljava/lang/Class;

    const-class v7, Landroid/os/IBinder;

    aput-object v7, v6, v1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v1

    invoke-static {v4, v5, v6, v3}, Lbh/f;->h(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/miui/networkassistant/service/FirewallService;->access$102(Lcom/miui/networkassistant/service/FirewallService;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/FirewallService;->access$100(Lcom/miui/networkassistant/service/FirewallService;)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {v2}, Lcom/miui/networkassistant/service/FirewallService;->access$200(Lcom/miui/networkassistant/service/FirewallService;)Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {}, Lcom/miui/networkassistant/utils/PackageUtil;->getCurrentUserId()I

    move-result v3

    invoke-static {v0, v2, p1, v1, v3}, Lcom/miui/appmanager/AppManageUtils;->s(Ljava/lang/Object;Landroid/content/pm/PackageManager;Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "FireWallService"

    const-string v1, "setRule : package not found"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private setMobileRuleNoCheckSys(Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;I)Z
    .locals 7

    invoke-static {p1}, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->isPreFirewallWhiteListPackage(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->checkMobileRuleIsTempRestricted(Ljava/lang/String;I)Z

    move-result v0

    const-string v2, "FireWallService"

    if-eqz v0, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "cannot set mobile rule for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " because the package name exists in tempMobileRules."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/FirewallService;->access$900(Lcom/miui/networkassistant/service/FirewallService;)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, p3, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    iget-object v4, p0, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {v4}, Lcom/miui/networkassistant/service/FirewallService;->access$1000(Lcom/miui/networkassistant/service/FirewallService;)[Lcom/miui/networkassistant/config/FireWallConfig;

    move-result-object v4

    aget-object v4, v4, p3

    invoke-virtual {v4, p1, p2}, Lcom/miui/networkassistant/config/FireWallConfig;->set(Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;)V

    iget-object v4, p0, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {v4}, Lcom/miui/networkassistant/service/FirewallService;->access$1000(Lcom/miui/networkassistant/service/FirewallService;)[Lcom/miui/networkassistant/config/FireWallConfig;

    move-result-object v4

    rsub-int/lit8 v5, p3, 0x1

    aget-object v4, v4, v5

    if-eqz v4, :cond_3

    invoke-virtual {v4, p1}, Lcom/miui/networkassistant/config/ConfigFile;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_3

    sget-object v6, Lcom/miui/networkassistant/model/FirewallRule;->Allow:Lcom/miui/networkassistant/model/FirewallRule;

    invoke-virtual {v4, p1, v6}, Lcom/miui/networkassistant/config/FireWallConfig;->set(Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;)V

    iget-object v4, p0, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {v4, v5}, Lcom/miui/networkassistant/service/FirewallService;->access$1100(Lcom/miui/networkassistant/service/FirewallService;I)V

    :cond_3
    iget-object v4, p0, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {v4}, Lcom/miui/networkassistant/service/FirewallService;->access$000(Lcom/miui/networkassistant/service/FirewallService;)Lcom/miui/networkassistant/firewall/IFirewall;

    move-result-object v4

    invoke-interface {v4, p1, p2, p3, v0}, Lcom/miui/networkassistant/firewall/IFirewall;->setMobileRule(Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;IZ)V

    iget-object v4, p0, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {v4, p3}, Lcom/miui/networkassistant/service/FirewallService;->access$1100(Lcom/miui/networkassistant/service/FirewallService;I)V

    iget-object p3, p0, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    const-string v4, "mobile"

    invoke-static {p3, p1, v4}, Lcom/miui/networkassistant/service/FirewallService;->access$600(Lcom/miui/networkassistant/service/FirewallService;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p3, 0x3

    new-array p3, p3, [Ljava/lang/Object;

    aput-object p1, p3, v1

    invoke-virtual {p2}, Lcom/miui/networkassistant/model/FirewallRule;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, v3

    const/4 p1, 0x2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, p3, p1

    const-string p1, "set mobile rule for %s:%s:%b"

    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method private setWifiRuleNoCheckSys(Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;)Z
    .locals 4

    invoke-static {p1}, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->isPreFirewallWhiteListPackage(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->checkWifiRuleIsTempRestricted(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "FireWallService"

    if-eqz v0, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot set wifi rule for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " because the package name exists in tempWifiRules."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/FirewallService;->access$400(Lcom/miui/networkassistant/service/FirewallService;)Lcom/miui/networkassistant/config/FireWallConfig;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/miui/networkassistant/config/FireWallConfig;->set(Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;)V

    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/FirewallService;->access$000(Lcom/miui/networkassistant/service/FirewallService;)Lcom/miui/networkassistant/firewall/IFirewall;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/miui/networkassistant/firewall/IFirewall;->setWifiRule(Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;)V

    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/FirewallService;->access$500(Lcom/miui/networkassistant/service/FirewallService;)V

    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    const-string v3, "wifi"

    invoke-static {v0, p1, v3}, Lcom/miui/networkassistant/service/FirewallService;->access$600(Lcom/miui/networkassistant/service/FirewallService;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    invoke-virtual {p2}, Lcom/miui/networkassistant/model/FirewallRule;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const-string p1, "set wifi rule for %s:%s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p2
.end method


# virtual methods
.method public getMobileRestrictPackages(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/FirewallService;->access$000(Lcom/miui/networkassistant/service/FirewallService;)Lcom/miui/networkassistant/firewall/IFirewall;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/networkassistant/firewall/IFirewall;->getMobileRestrictPackages(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized getMobileRule(Ljava/lang/String;I)Lcom/miui/networkassistant/model/FirewallRule;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/FirewallService;->access$000(Lcom/miui/networkassistant/service/FirewallService;)Lcom/miui/networkassistant/firewall/IFirewall;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/miui/networkassistant/firewall/IFirewall;->getMobileRule(Ljava/lang/String;I)Lcom/miui/networkassistant/model/FirewallRule;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getRoamingAppCountByRule(Lcom/miui/networkassistant/model/FirewallRule;)I
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/FirewallService;->access$800(Lcom/miui/networkassistant/service/FirewallService;)Lcom/miui/networkassistant/config/FireWallConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/FireWallConfig;->getPairMap()Landroid/util/ArrayMap;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    if-ne p1, v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public getRoamingRule(Ljava/lang/String;)Lcom/miui/networkassistant/model/FirewallRule;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/FirewallService;->access$000(Lcom/miui/networkassistant/service/FirewallService;)Lcom/miui/networkassistant/firewall/IFirewall;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/networkassistant/firewall/IFirewall;->getRoamingRule(Ljava/lang/String;)Lcom/miui/networkassistant/model/FirewallRule;

    move-result-object p1

    return-object p1
.end method

.method public getRoamingWhiteListEnable()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/FirewallService;->access$000(Lcom/miui/networkassistant/service/FirewallService;)Lcom/miui/networkassistant/firewall/IFirewall;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/networkassistant/firewall/IFirewall;->getRoamingWhiteListEnable()Z

    move-result v0

    return v0
.end method

.method public getRule(Ljava/lang/String;)Lcom/miui/networkassistant/model/FirewallRuleSet;
    .locals 2

    invoke-static {}, Lcom/miui/networkassistant/model/FirewallRuleSet;->defaultValue()Lcom/miui/networkassistant/model/FirewallRuleSet;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->getMobileRule(Ljava/lang/String;I)Lcom/miui/networkassistant/model/FirewallRule;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/networkassistant/model/FirewallRuleSet;->mobileRule:Lcom/miui/networkassistant/model/FirewallRule;

    invoke-virtual {p0, p1}, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->getWifiRule(Ljava/lang/String;)Lcom/miui/networkassistant/model/FirewallRule;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/networkassistant/model/FirewallRuleSet;->wifiRule:Lcom/miui/networkassistant/model/FirewallRule;

    sget-boolean v1, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_DUAL_CARD:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->getMobileRule(Ljava/lang/String;I)Lcom/miui/networkassistant/model/FirewallRule;

    move-result-object p1

    iput-object p1, v0, Lcom/miui/networkassistant/model/FirewallRuleSet;->mobileRule2:Lcom/miui/networkassistant/model/FirewallRule;

    :cond_0
    return-object v0
.end method

.method public declared-synchronized getTempMobileRule(Ljava/lang/String;I)Lcom/miui/networkassistant/model/FirewallRule;
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->getMobileRule(Ljava/lang/String;I)Lcom/miui/networkassistant/model/FirewallRule;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getTempWifiRule(Ljava/lang/String;)Lcom/miui/networkassistant/model/FirewallRule;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->getWifiRule(Ljava/lang/String;)Lcom/miui/networkassistant/model/FirewallRule;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized getWifiRestrictPackages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/FirewallService;->access$000(Lcom/miui/networkassistant/service/FirewallService;)Lcom/miui/networkassistant/firewall/IFirewall;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/networkassistant/firewall/IFirewall;->getWifiRestrictPackages()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getWifiRule(Ljava/lang/String;)Lcom/miui/networkassistant/model/FirewallRule;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/FirewallService;->access$000(Lcom/miui/networkassistant/service/FirewallService;)Lcom/miui/networkassistant/firewall/IFirewall;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/networkassistant/firewall/IFirewall;->getWifiRule(Ljava/lang/String;)Lcom/miui/networkassistant/model/FirewallRule;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public isStarted()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/FirewallService;->access$000(Lcom/miui/networkassistant/service/FirewallService;)Lcom/miui/networkassistant/firewall/IFirewall;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/networkassistant/firewall/IFirewall;->isStarted()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized setMobileRule(Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;I)Z
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->getApplicationInfo(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/miui/networkassistant/utils/PackageUtil;->isSystemApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {p1}, Lcom/miui/networkassistant/service/FirewallService;->access$200(Lcom/miui/networkassistant/service/FirewallService;)Landroid/content/pm/PackageManager;

    move-result-object p1

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v3, p1, v1

    invoke-direct {p0, v3, p2, p3}, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->setMobileRuleNoCheckSys(Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;I)Z

    move-result v3

    and-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->setMobileRuleNoCheckSys(Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;I)Z

    move-result v2

    :cond_1
    iget-object p1, p0, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {p1, v2}, Lcom/miui/networkassistant/service/FirewallService;->access$300(Lcom/miui/networkassistant/service/FirewallService;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setMobileRuleForPackages(Ljava/util/Map;I)V
    .locals 3

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/networkassistant/model/FirewallRule;

    invoke-virtual {p0, v1, v2, p2}, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->setMobileRule(Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;I)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setRoamingRule(Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;)V
    .locals 2

    invoke-static {p1}, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->isPreFirewallWhiteListPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/FirewallService;->access$800(Lcom/miui/networkassistant/service/FirewallService;)Lcom/miui/networkassistant/config/FireWallConfig;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/miui/networkassistant/config/FireWallConfig;->set(Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;)V

    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/FirewallService;->access$000(Lcom/miui/networkassistant/service/FirewallService;)Lcom/miui/networkassistant/firewall/IFirewall;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/miui/networkassistant/firewall/IFirewall;->setRoamingRule(Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;)V

    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/FirewallService;->access$500(Lcom/miui/networkassistant/service/FirewallService;)V

    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    const-string v1, "mobile"

    invoke-static {v0, p1, v1}, Lcom/miui/networkassistant/service/FirewallService;->access$600(Lcom/miui/networkassistant/service/FirewallService;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    invoke-virtual {p2}, Lcom/miui/networkassistant/model/FirewallRule;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, p1

    const-string p1, "set roaming rule for %s:%s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "FireWallService"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setRoamingWhiteListEnable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/FirewallService;->access$000(Lcom/miui/networkassistant/service/FirewallService;)Lcom/miui/networkassistant/firewall/IFirewall;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/networkassistant/firewall/IFirewall;->setRoamingWhiteListEnable(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/FirewallService;->access$1200(Lcom/miui/networkassistant/service/FirewallService;)Lcom/miui/networkassistant/config/CommonConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/config/CommonConfig;->setDataRoamingWhiteListEnable(Z)Z

    return-void
.end method

.method public declared-synchronized setTempMobileRule(Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;Ljava/lang/String;I)Z
    .locals 18

    move-object/from16 v1, p0

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p3, :cond_0

    monitor-exit p0

    return v0

    :cond_0
    :try_start_0
    iget-object v2, v1, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {v2}, Lcom/miui/networkassistant/service/FirewallService;->access$900(Lcom/miui/networkassistant/service/FirewallService;)I

    move-result v2

    const/4 v8, 0x1

    move/from16 v9, p4

    if-ne v2, v9, :cond_1

    move v10, v8

    goto :goto_0

    :cond_1
    move v10, v0

    :goto_0
    invoke-direct/range {p0 .. p1}, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->getApplicationInfo(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    const/4 v11, 0x2

    const/4 v12, 0x3

    if-eqz v2, :cond_4

    invoke-static {v2}, Lcom/miui/networkassistant/utils/PackageUtil;->isSystemApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, v1, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {v3}, Lcom/miui/networkassistant/service/FirewallService;->access$200(Lcom/miui/networkassistant/service/FirewallService;)Landroid/content/pm/PackageManager;

    move-result-object v3

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v13

    array-length v14, v13

    move v15, v0

    move/from16 v16, v8

    :goto_1
    if-ge v15, v14, :cond_3

    aget-object v17, v13, v15

    invoke-static/range {v17 .. v17}, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->isPreFirewallWhiteListPackage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    move/from16 v16, v0

    goto :goto_2

    :cond_2
    iget-object v2, v1, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {v2}, Lcom/miui/networkassistant/service/FirewallService;->access$000(Lcom/miui/networkassistant/service/FirewallService;)Lcom/miui/networkassistant/firewall/IFirewall;

    move-result-object v2

    move-object/from16 v3, v17

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move v7, v10

    invoke-interface/range {v2 .. v7}, Lcom/miui/networkassistant/firewall/IFirewall;->setTempMobileRule(Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;Ljava/lang/String;IZ)Z

    move-result v2

    and-int v3, v16, v2

    const-string v4, "FireWallService"

    const-string v5, "set temp mobile rule for %s:%s:%b"

    new-array v6, v12, [Ljava/lang/Object;

    aput-object v17, v6, v0

    invoke-virtual/range {p2 .. p2}, Lcom/miui/networkassistant/model/FirewallRule;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v6, v11

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v16, v3

    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    :cond_3
    :goto_3
    move/from16 v0, v16

    goto :goto_4

    :cond_4
    invoke-static/range {p1 .. p1}, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->isPreFirewallWhiteListPackage(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_5

    monitor-exit p0

    return v0

    :cond_5
    :try_start_1
    iget-object v2, v1, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {v2}, Lcom/miui/networkassistant/service/FirewallService;->access$000(Lcom/miui/networkassistant/service/FirewallService;)Lcom/miui/networkassistant/firewall/IFirewall;

    move-result-object v2

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move v7, v10

    invoke-interface/range {v2 .. v7}, Lcom/miui/networkassistant/firewall/IFirewall;->setTempMobileRule(Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;Ljava/lang/String;IZ)Z

    move-result v16

    const-string v2, "FireWallService"

    const-string v3, "set temp mobile rule for %s:%s:%b"

    new-array v4, v12, [Ljava/lang/Object;

    aput-object p1, v4, v0

    invoke-virtual/range {p2 .. p2}, Lcom/miui/networkassistant/model/FirewallRule;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v4, v11

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :goto_4
    iget-object v2, v1, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {v2, v0}, Lcom/miui/networkassistant/service/FirewallService;->access$300(Lcom/miui/networkassistant/service/FirewallService;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setTempWifiRule(Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;Ljava/lang/String;)Z
    .locals 12

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->getApplicationInfo(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x3

    const-string v4, "Set temp wifi rule for %s:%s:%b"

    const-string v5, "FireWallService"

    const/4 v6, 0x1

    if-eqz v1, :cond_2

    invoke-static {v1}, Lcom/miui/networkassistant/utils/PackageUtil;->isSystemApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object p1, p0, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {p1}, Lcom/miui/networkassistant/service/FirewallService;->access$200(Lcom/miui/networkassistant/service/FirewallService;)Landroid/content/pm/PackageManager;

    move-result-object p1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p1

    array-length v1, p1

    move v7, v0

    move v8, v6

    :goto_0
    if-ge v7, v1, :cond_4

    aget-object v9, p1, v7

    invoke-static {v9}, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->isPreFirewallWhiteListPackage(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    move v8, v0

    goto :goto_1

    :cond_1
    iget-object v10, p0, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {v10}, Lcom/miui/networkassistant/service/FirewallService;->access$000(Lcom/miui/networkassistant/service/FirewallService;)Lcom/miui/networkassistant/firewall/IFirewall;

    move-result-object v10

    invoke-interface {v10, v9, p2, p3}, Lcom/miui/networkassistant/firewall/IFirewall;->setTempWifiRule(Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;Ljava/lang/String;)Z

    move-result v10

    and-int/2addr v8, v10

    new-array v11, v3, [Ljava/lang/Object;

    aput-object v9, v11, v0

    invoke-virtual {p2}, Lcom/miui/networkassistant/model/FirewallRule;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v11, v6

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v11, v2

    invoke-static {v4, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->isPreFirewallWhiteListPackage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    return v0

    :cond_3
    iget-object v1, p0, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {v1}, Lcom/miui/networkassistant/service/FirewallService;->access$000(Lcom/miui/networkassistant/service/FirewallService;)Lcom/miui/networkassistant/firewall/IFirewall;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/miui/networkassistant/firewall/IFirewall;->setTempWifiRule(Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;Ljava/lang/String;)Z

    move-result v8

    new-array p3, v3, [Ljava/lang/Object;

    aput-object p1, p3, v0

    invoke-virtual {p2}, Lcom/miui/networkassistant/model/FirewallRule;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, v6

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, p3, v2

    invoke-static {v4, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object p1, p0, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {p1, v8}, Lcom/miui/networkassistant/service/FirewallService;->access$300(Lcom/miui/networkassistant/service/FirewallService;Z)V

    return v8
.end method

.method public declared-synchronized setWifiRule(Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;)Z
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->getApplicationInfo(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/miui/networkassistant/utils/PackageUtil;->isSystemApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "com.qti.qcc"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p1, p0, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {p1}, Lcom/miui/networkassistant/service/FirewallService;->access$200(Lcom/miui/networkassistant/service/FirewallService;)Landroid/content/pm/PackageManager;

    move-result-object p1

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v3, p1, v1

    invoke-direct {p0, v3, p2}, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->setWifiRuleNoCheckSys(Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;)Z

    move-result v3

    and-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->setWifiRuleNoCheckSys(Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;)Z

    move-result v2

    :cond_1
    iget-object p1, p0, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {p1, v2}, Lcom/miui/networkassistant/service/FirewallService;->access$300(Lcom/miui/networkassistant/service/FirewallService;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setWifiRuleForPackages(Ljava/util/Map;)V
    .locals 3

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/networkassistant/model/FirewallRule;

    invoke-virtual {p0, v1, v2}, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->setWifiRule(Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

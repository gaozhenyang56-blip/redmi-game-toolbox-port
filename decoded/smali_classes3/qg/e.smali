.class public Lqg/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lqg/e;->b()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/miui/common/net/b;

    const-string v2, "module"

    invoke-direct {v1, v2, p1}, Lcom/miui/common/net/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Lp4/i;

    const-string v1, "superpower_accessmodulebypost"

    invoke-direct {p1, v1}, Lp4/i;-><init>(Ljava/lang/String;)V

    const-string v1, "https://api.sec.miui.com/common/whiteList/listByModule"

    const-string v2, "21da76da-224c-2313-ac60-abcd70139283"

    invoke-static {p0, v1, v2, v0, p1}, Lcom/miui/common/net/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lp4/i;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static b()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/common/net/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/miui/common/net/b;

    sget-object v2, Lcom/miui/networkassistant/utils/DeviceUtil;->DEVICE_NAME:Ljava/lang/String;

    const-string v3, "device"

    invoke-direct {v1, v3, v2}, Lcom/miui/common/net/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/miui/common/net/b;

    sget-boolean v2, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_STABLE_VERSION:Z

    if-eqz v2, :cond_0

    const-string v2, "stable"

    goto :goto_0

    :cond_0
    const-string v2, "development"

    :goto_0
    const-string v3, "t"

    invoke-direct {v1, v3, v2}, Lcom/miui/common/net/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/miui/common/net/b;

    invoke-static {}, Lcom/miui/networkassistant/utils/DeviceUtil;->getRegion()Ljava/lang/String;

    move-result-object v2

    const-string v3, "region"

    invoke-direct {v1, v3, v2}, Lcom/miui/common/net/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/miui/common/net/b;

    sget-object v2, Lcom/miui/networkassistant/utils/DeviceUtil;->MIUI_VERSION:Ljava/lang/String;

    const-string v3, "miuiVersion"

    invoke-direct {v1, v3, v2}, Lcom/miui/common/net/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/miui/common/net/b;

    sget-object v2, Lcom/miui/networkassistant/utils/DeviceUtil;->CARRIER:Ljava/lang/String;

    const-string v3, "carrier"

    invoke-direct {v1, v3, v2}, Lcom/miui/common/net/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/miui/common/net/b;

    invoke-static {}, Lcom/miui/networkassistant/utils/DeviceUtil;->getAppVersionCode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "appVersion"

    invoke-direct {v1, v3, v2}, Lcom/miui/common/net/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/miui/common/net/b;

    const-string v2, "dataVersion"

    const-string v3, "100"

    invoke-direct {v1, v2, v3}, Lcom/miui/common/net/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/miui/common/net/b;

    const-string v2, "initdev"

    const-string v3, "false"

    invoke-direct {v1, v2, v3}, Lcom/miui/common/net/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/miui/common/net/b;

    const-string v2, "isDiff"

    const-string v3, "true"

    invoke-direct {v1, v2, v3}, Lcom/miui/common/net/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/miui/common/net/b;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v2

    invoke-static {v2}, Ly4/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "oa"

    invoke-direct {v1, v3, v2}, Lcom/miui/common/net/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static c()Lqg/b;
    .locals 2

    const-string v0, "update"

    const-string v1, "superPower"

    invoke-static {v0, v1}, Lqg/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lqg/b;

    invoke-direct {v1, v0}, Lqg/b;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

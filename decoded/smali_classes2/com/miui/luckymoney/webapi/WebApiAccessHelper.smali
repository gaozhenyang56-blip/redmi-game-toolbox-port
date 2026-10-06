.class public Lcom/miui/luckymoney/webapi/WebApiAccessHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static accessModuleByPOST(Ljava/lang/String;Ljava/lang/String;Lp4/i;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/miui/luckymoney/webapi/WebApiAccessHelper;->getBaseParams()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/miui/common/net/b;

    const-string v2, "module"

    invoke-direct {v1, v2, p1}, Lcom/miui/common/net/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "https://api.sec.miui.com/common/whiteList/listByModule"

    const-string v1, "21da76da-224c-2313-ac60-abcd70139283"

    invoke-static {p0, p1, v1, v0, p2}, Lcom/miui/common/net/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lp4/i;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getBaseParams()Ljava/util/List;
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

    const-string v2, "t"

    const-string v3, "stable"

    invoke-direct {v1, v2, v3}, Lcom/miui/common/net/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/miui/common/net/b;

    invoke-static {}, Lcom/miui/networkassistant/utils/DeviceUtil;->getRegion()Ljava/lang/String;

    move-result-object v2

    const-string v3, "region"

    invoke-direct {v1, v3, v2}, Lcom/miui/common/net/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/miui/common/net/b;

    invoke-static {}, Lcom/miui/networkassistant/utils/DeviceUtil;->getImeiMd5LastLetter()Ljava/lang/String;

    move-result-object v2

    const-string v3, "type"

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

    return-object v0
.end method

.method public static updateMasterSwitchConfig()Lcom/miui/luckymoney/webapi/MasterSwitchResult;
    .locals 3

    new-instance v0, Lp4/i;

    const-string v1, "luckymoney_masterswith"

    invoke-direct {v0, v1}, Lp4/i;-><init>(Ljava/lang/String;)V

    const-string v1, "update"

    const-string v2, "masterSwitch"

    invoke-static {v1, v2, v0}, Lcom/miui/luckymoney/webapi/WebApiAccessHelper;->accessModuleByPOST(Ljava/lang/String;Ljava/lang/String;Lp4/i;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/miui/luckymoney/webapi/MasterSwitchResult;

    invoke-direct {v1, v0}, Lcom/miui/luckymoney/webapi/MasterSwitchResult;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

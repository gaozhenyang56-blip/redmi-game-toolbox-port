.class public Lcom/miui/networkassistant/webapi/WebApiAccessHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "WebApiAccessHelper"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static accessInternetByPost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/miui/networkassistant/webapi/WebApiAccessHelper;->getBaseParams()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lp4/i;

    const-string v2, "networkassistant_webapiaccesshelper"

    invoke-direct {v1, v2}, Lp4/i;-><init>(Ljava/lang/String;)V

    const-string v2, "5cad8778-cddf-4269-ab73-48007445baa3"

    invoke-static {p0, p1, v2, v0, v1}, Lcom/miui/common/net/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lp4/i;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static checkRichPurchaseOnlineResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/networkassistant/webapi/PurchaseOnlineResult;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "imei"

    const-string v2, "1119a27f-c197-49c2-ab4c-2e0aa53e74b9"

    invoke-static {v2}, Lcom/miui/networkassistant/utils/DeviceUtil;->getAndroidId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "zipCode"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "phonenum"

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "spType"

    invoke-virtual {v0, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "WebApiAccessHelper"

    const-string p2, "checkRichPurchaseOnlineResult"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "https://api.miui.security.xiaomi.com/netassist/floworderunity/supportfloworder"

    invoke-static {p0, p1}, Lcom/miui/networkassistant/webapi/WebApiAccessHelper;->accessInternetByPost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/miui/networkassistant/webapi/PurchaseOnlineResult;

    invoke-direct {p1, p0}, Lcom/miui/networkassistant/webapi/PurchaseOnlineResult;-><init>(Ljava/lang/String;)V

    return-object p1
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

    invoke-static {}, Lcom/miui/networkassistant/utils/DeviceUtil;->getMiuiVersionType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "versionType"

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

    return-object v0
.end method

.method private static getCloudDataParams()Ljava/util/List;
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

.method public static queryDataUsage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Lcom/miui/networkassistant/webapi/DataUsageResult;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "imei"

    const-string v2, "14ca47b4-7302-4900-91ef-6a76c65b40cc"

    invoke-static {v2}, Lcom/miui/networkassistant/utils/DeviceUtil;->getAndroidId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "imsi"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "zipCode"

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "phonenum"

    invoke-virtual {v0, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "spType"

    invoke-virtual {v0, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "monthused"

    invoke-virtual {v0, p0, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p0, "iccid"

    invoke-virtual {v0, p0, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "WebApiAccessHelper"

    const-string p2, "DataUsageResult"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "https://api.miui.security.xiaomi.com/netassist/flow/queryflow"

    invoke-static {p0, p1}, Lcom/miui/networkassistant/webapi/WebApiAccessHelper;->accessInternetByPost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/miui/networkassistant/webapi/DataUsageResult;

    invoke-direct {p1, p0}, Lcom/miui/networkassistant/webapi/DataUsageResult;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method public static reportTrafficCorrectionSms(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/common/net/c;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "imei"

    const-string v2, "14ca47b4-7302-4900-91ef-6a76c65b40cc"

    invoke-static {v2}, Lcom/miui/networkassistant/utils/DeviceUtil;->getAndroidId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "province"

    invoke-virtual {v0, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p4, "city"

    invoke-virtual {v0, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p4, "carrier"

    invoke-virtual {v0, p4, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p4, "product"

    invoke-virtual {v0, p4, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p4, "upward"

    invoke-virtual {v0, p4, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "directive"

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "downward"

    invoke-virtual {v0, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "message"

    invoke-virtual {v0, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "verison"

    const-string p1, "1.1"

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "type"

    invoke-virtual {v0, p0, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "result"

    invoke-virtual {v0, p0, p9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "WebApiAccessHelper"

    const-string p2, "reportTrafficCorrectionSms"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/miui/networkassistant/webapi/WebApiAccessHelper;->getBaseParams()Ljava/util/List;

    move-result-object p1

    new-instance p2, Lp4/i;

    const-string p3, "networkassistant_reporttrafficcorrectionsms"

    invoke-direct {p2, p3}, Lp4/i;-><init>(Ljava/lang/String;)V

    const-string p3, "https://api.sec.miui.com/v1/traffic/report"

    const-string p4, "5cdd8678-cddf-4269-ab73-48387445bba4"

    invoke-static {p0, p3, p4, p1, p2}, Lcom/miui/common/net/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lp4/i;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/miui/common/net/c;

    invoke-direct {p1, p0}, Lcom/miui/common/net/c;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method public static updateMiuiVpnInfos()Lcom/miui/networkassistant/webapi/CloudModuleResult;
    .locals 5

    invoke-static {}, Lcom/miui/networkassistant/webapi/WebApiAccessHelper;->getCloudDataParams()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/miui/common/net/b;

    const-string v2, "module"

    const-string v3, "miui_vpn_infos"

    invoke-direct {v1, v2, v3}, Lcom/miui/common/net/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lp4/i;

    const-string v2, "networkassistant_updatemiuivpninfos"

    invoke-direct {v1, v2}, Lp4/i;-><init>(Ljava/lang/String;)V

    const-string v2, "update"

    const-string v3, "https://api.sec.miui.com/common/whiteList/listByModule"

    const-string v4, "21da76da-224c-2313-ac60-abcd70139283"

    invoke-static {v2, v3, v4, v0, v1}, Lcom/miui/common/net/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lp4/i;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/miui/networkassistant/webapi/CloudModuleResult;

    invoke-direct {v1, v0}, Lcom/miui/networkassistant/webapi/CloudModuleResult;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public static updatePurchaseSmsNumberWhiteList()Lcom/miui/networkassistant/webapi/PurchaseSmsNumberResult;
    .locals 5

    const-string v0, "3e68adeb-b164-c212-s332-b0fb4dec6bf9"

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "imei"

    invoke-static {v0}, Lcom/miui/networkassistant/utils/DeviceUtil;->getAndroidId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "dataVersion"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "isDiff"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "WebApiAccessHelper"

    const-string v4, "updatePurchaseSmsNumberWhiteList"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/miui/networkassistant/webapi/WebApiAccessHelper;->getBaseParams()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lp4/i;

    const-string v4, "networkassistant_updatepurchasesmsnumberwhitelist"

    invoke-direct {v3, v4}, Lp4/i;-><init>(Ljava/lang/String;)V

    const-string v4, "https://api.sec.miui.com/common/whiteList/trafficChargeNum"

    invoke-static {v1, v4, v0, v2, v3}, Lcom/miui/common/net/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lp4/i;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/miui/networkassistant/webapi/PurchaseSmsNumberResult;

    invoke-direct {v1, v0}, Lcom/miui/networkassistant/webapi/PurchaseSmsNumberResult;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

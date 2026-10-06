.class public final Lcom/miui/sdk/tc/TcUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/sdk/tc/TcUtils$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/miui/sdk/tc/TcUtils$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "TcUtils"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private tcUpdateing:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/sdk/tc/TcUtils$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/sdk/tc/TcUtils$Companion;-><init>(Lbk/g;)V

    sput-object v0, Lcom/miui/sdk/tc/TcUtils;->Companion:Lcom/miui/sdk/tc/TcUtils$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic fetchTcTypeInfo$default(Lcom/miui/sdk/tc/TcUtils;ILcom/miui/sdk/tc/UserConfig;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)I
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const-string p5, ""

    :cond_0
    move-object v5, p5

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/miui/sdk/tc/TcUtils;->fetchTcTypeInfo(ILcom/miui/sdk/tc/UserConfig;Ljava/lang/String;ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method private final isValidJson(Ljava/lang/String;)Z
    .locals 1

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public final fetchTcTypeInfo(ILcom/miui/sdk/tc/UserConfig;Ljava/lang/String;ILjava/lang/String;)I
    .locals 16
    .param p2    # Lcom/miui/sdk/tc/UserConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object/from16 v1, p0

    move/from16 v0, p1

    move-object/from16 v4, p3

    move-object/from16 v7, p5

    const-string v2, "config"

    move-object/from16 v3, p2

    invoke-static {v3, v2}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "operator"

    invoke-static {v4, v2}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "phoneNumberPrefix"

    invoke-static {v7, v2}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "400"

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Lcom/miui/sdk/tc/TcManager$ReturnCode;->OK:Lcom/miui/sdk/tc/TcManager$ReturnCode;

    :goto_0
    invoke-virtual {v0}, Lcom/miui/sdk/tc/TcManager$ReturnCode;->value()I

    move-result v0

    return v0

    :cond_0
    const-string v2, "SuccIds"

    invoke-static {v2, v0}, Lcom/miui/sdk/tc/TcPlugin;->getTcPrefValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Brand"

    invoke-static {v6, v0}, Lcom/miui/sdk/tc/TcPlugin;->getTcPrefValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    iget-boolean v9, v1, Lcom/miui/sdk/tc/TcUtils;->tcUpdateing:Z

    if-eqz v9, :cond_1

    sget-object v0, Lcom/miui/sdk/tc/TcManager$ReturnCode;->ErrorUpdating:Lcom/miui/sdk/tc/TcManager$ReturnCode;

    goto :goto_0

    :cond_1
    const/4 v9, 0x1

    iput-boolean v9, v1, Lcom/miui/sdk/tc/TcUtils;->tcUpdateing:Z

    const/4 v10, 0x6

    new-array v10, v10, [Loj/l;

    invoke-static {}, Lcom/miui/networkassistant/utils/DeviceUtil;->getAppVersionCode()Ljava/lang/String;

    move-result-object v11

    const-string v12, "appVersion"

    invoke-static {v12, v11}, Loj/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Loj/l;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    sget-object v11, Lcom/miui/networkassistant/utils/DeviceUtil;->DEVICE_NAME:Ljava/lang/String;

    const-string v13, "device"

    invoke-static {v13, v11}, Loj/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Loj/l;

    move-result-object v11

    aput-object v11, v10, v9

    sget-object v11, Lcom/miui/networkassistant/utils/DeviceUtil;->MIUI_VERSION:Ljava/lang/String;

    const-string v13, "miuiVersion"

    invoke-static {v13, v11}, Loj/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Loj/l;

    move-result-object v11

    const/4 v13, 0x2

    aput-object v11, v10, v13

    const/4 v11, 0x3

    invoke-static {}, Lcom/miui/networkassistant/utils/DeviceUtil;->getRegion()Ljava/lang/String;

    move-result-object v14

    const-string v15, "region"

    invoke-static {v15, v14}, Loj/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Loj/l;

    move-result-object v14

    aput-object v14, v10, v11

    const/4 v11, 0x4

    invoke-static {}, Lcom/miui/networkassistant/utils/DeviceUtil;->getMiuiVersionType()Ljava/lang/String;

    move-result-object v14

    const-string v15, "versionType"

    invoke-static {v15, v14}, Loj/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Loj/l;

    move-result-object v14

    aput-object v14, v10, v11

    const/4 v11, 0x5

    const-string v14, "carrier"

    invoke-static {v14, v4}, Loj/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Loj/l;

    move-result-object v14

    aput-object v14, v10, v11

    invoke-static {v10}, Lqj/d0;->e([Loj/l;)Ljava/util/HashMap;

    move-result-object v10

    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    const-string v14, "Carrier"

    invoke-virtual {v11, v14, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static/range {p1 .. p1}, Lcom/miui/networkassistant/utils/TelephonyUtil;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v14

    const-string v15, "imsi"

    invoke-virtual {v11, v15, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_2

    goto :goto_1

    :cond_2
    const-string v8, "null"

    :goto_1
    invoke-virtual {v11, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual/range {p2 .. p2}, Lcom/miui/sdk/tc/UserConfig;->getCity()Ljava/lang/String;

    move-result-object v6

    const-string v8, "CITYID"

    invoke-virtual {v11, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const-string v8, "type"

    invoke-virtual {v11, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "PhoneNumberPrefix"

    invoke-virtual {v11, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "DataVersion"

    const-string v8, "4"

    invoke-virtual {v11, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "PackageName"

    const-string v8, "com.miui.securitycenter"

    invoke-virtual {v11, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "SecKey"

    const-string v8, "A2FscFVdX1+ULfEz/TTPQVNRXE+lzSe2"

    invoke-virtual {v11, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_2

    :cond_3
    const-string v5, "{}"

    :goto_2
    invoke-virtual {v11, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "paramJson.toString()"

    invoke-static {v2, v5}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/miui/sdk/tc/Base64AesUtil;->base64AndAesEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "param"

    invoke-interface {v10, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/miui/networkassistant/ui/network/BaseNetRequest;->INSTANCE:Lcom/miui/networkassistant/ui/network/BaseNetRequest;

    const-string v5, "https://net-assistant.10046.xiaomimobile.com/v1/traffic/directives"

    invoke-virtual {v2, v5, v10, v13, v9}, Lcom/miui/networkassistant/ui/network/BaseNetRequest;->makeHttpRequest(Ljava/lang/String;Ljava/util/HashMap;IZ)Ljava/lang/String;

    move-result-object v2

    :try_start_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {v2}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/miui/sdk/tc/Base64AesUtil;->base64AndAESDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Lcom/miui/sdk/tc/TcUtils;->isValidJson(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual/range {p2 .. p2}, Lcom/miui/sdk/tc/UserConfig;->getProvince()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/miui/sdk/tc/UserConfig;->getCity()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, p3

    move/from16 v5, p1

    move/from16 v6, p4

    move-object/from16 v7, p5

    invoke-static/range {v2 .. v8}, Lcom/miui/sdk/tc/TcPlugin;->updateByTcType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput-boolean v12, v1, Lcom/miui/sdk/tc/TcUtils;->tcUpdateing:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    iput-boolean v12, v1, Lcom/miui/sdk/tc/TcUtils;->tcUpdateing:Z

    sget-object v0, Lcom/miui/sdk/tc/TcManager$ReturnCode;->ErrorUpdateFailed:Lcom/miui/sdk/tc/TcManager$ReturnCode;

    goto/16 :goto_0
.end method

.method public final getTcUpdateing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/sdk/tc/TcUtils;->tcUpdateing:Z

    return v0
.end method

.method public final setTcUpdateing(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/sdk/tc/TcUtils;->tcUpdateing:Z

    return-void
.end method

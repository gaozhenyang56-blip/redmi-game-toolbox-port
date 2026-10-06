.class public final Lcom/miui/networkassistant/ui/order/orderlist/BhOrderRecorderModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/networkassistant/ui/order/orderlist/IOrderRecordModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fetchRecord(Ljava/lang/String;Landroid/content/Context;Lcom/miui/networkassistant/ui/network/BaseNetRequest$Callback;Ljava/lang/Long;)V
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/miui/networkassistant/ui/network/BaseNetRequest$Callback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Lcom/miui/networkassistant/ui/network/BaseNetRequest$Callback<",
            "Lcom/miui/networkassistant/ui/bean/RecordBean;",
            ">;",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v0, "productType"

    const-string v1, "trafficProduct"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {p2}, Ly4/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "accountValue"

    const-string v4, "accountType"

    if-nez v1, :cond_0

    const-string v1, "oaid"

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ly4/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {p2}, Ly4/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "getOAID(context)"

    invoke-static {v1, v4}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "uuid"

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/miui/networkassistant/utils/SettingsUtils;->INSTANCE:Lcom/miui/networkassistant/utils/SettingsUtils;

    invoke-virtual {v4}, Lcom/miui/networkassistant/utils/SettingsUtils;->getUUID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v4}, Lcom/miui/networkassistant/utils/SettingsUtils;->getUUID()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "language"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "slotId"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lx4/f1;->r(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    const-string v1, "appVersion"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-static {}, Lx4/t;->h()I

    move-result p1

    const-string v1, "miuiVersion"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-static {p2}, Lx4/a0;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "device"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "pageIndex"

    const-string v1, "home"

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "value.toString()"

    invoke-static {p1, v0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "commonParameters"

    invoke-interface {v3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p4, "trafficOrderCreateTime"

    invoke-interface {v3, p4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p4, "timestamp"

    invoke-interface {v3, p4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3}, Lcom/miui/networkassistant/utils/IDPhoneNumberUtil;->createLinkString(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/miui/networkassistant/utils/SignatureUtils;->getSignatureResults(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "signParams"

    invoke-static {p1, p2}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "sign"

    invoke-interface {v3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/miui/networkassistant/ui/bean/ParamsUtils;->isPreviewEnv()Z

    move-result p1

    sget-object v1, Lcom/miui/networkassistant/ui/network/NetRequest;->INSTANCE:Lcom/miui/networkassistant/ui/network/NetRequest;

    const-class v4, Lcom/miui/networkassistant/ui/bean/RecordBean;

    const/4 v6, 0x0

    const/16 v7, 0x10

    const/4 v8, 0x0

    if-eqz p1, :cond_1

    const-string v2, "https://preview-api-flow-intl.10046.xiaomimobile.com/order/product_order_list"

    goto :goto_1

    :cond_1
    const-string v2, "https://api-flow-intl.10046.xiaomimobile.com/order/product_order_list"

    :goto_1
    move-object v5, p3

    invoke-static/range {v1 .. v8}, Lcom/miui/networkassistant/ui/network/NetRequest;->get$default(Lcom/miui/networkassistant/ui/network/NetRequest;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/Class;Lcom/miui/networkassistant/ui/network/BaseNetRequest$Callback;Ljava/lang/Boolean;ILjava/lang/Object;)V

    return-void
.end method

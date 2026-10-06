.class public final Lcom/miui/networkassistant/ui/presenter/SettingsDataPresenter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/networkassistant/ui/presenter/IsettingsDataPresenter;


# instance fields
.field private context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private iOrderView:Lcom/miui/networkassistant/ui/presenter/ISettingsDataView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/networkassistant/ui/presenter/ISettingsDataView;Landroid/content/Context;)V
    .locals 1
    .param p1    # Lcom/miui/networkassistant/ui/presenter/ISettingsDataView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/networkassistant/ui/presenter/SettingsDataPresenter;->iOrderView:Lcom/miui/networkassistant/ui/presenter/ISettingsDataView;

    iput-object p2, p0, Lcom/miui/networkassistant/ui/presenter/SettingsDataPresenter;->context:Landroid/content/Context;

    return-void
.end method

.method public static final synthetic access$getIOrderView$p(Lcom/miui/networkassistant/ui/presenter/SettingsDataPresenter;)Lcom/miui/networkassistant/ui/presenter/ISettingsDataView;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/presenter/SettingsDataPresenter;->iOrderView:Lcom/miui/networkassistant/ui/presenter/ISettingsDataView;

    return-object p0
.end method

.method private final getUuid()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/networkassistant/utils/SettingsUtils;->INSTANCE:Lcom/miui/networkassistant/utils/SettingsUtils;

    invoke-virtual {v0}, Lcom/miui/networkassistant/utils/SettingsUtils;->getUUID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public fetchSettings()V
    .locals 8

    new-instance v4, Lcom/miui/networkassistant/ui/presenter/SettingsDataPresenter$fetchSettings$callback$1;

    invoke-direct {v4, p0}, Lcom/miui/networkassistant/ui/presenter/SettingsDataPresenter$fetchSettings$callback$1;-><init>(Lcom/miui/networkassistant/ui/presenter/SettingsDataPresenter;)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v0, "location"

    const-string v1, "toolList"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "language"

    const-string v3, "ID"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/presenter/SettingsDataPresenter;->context:Landroid/content/Context;

    invoke-static {v1}, Ly4/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "oaid"

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/miui/networkassistant/ui/presenter/SettingsDataPresenter;->getUuid()Ljava/lang/String;

    move-result-object v1

    const-string v3, "uuid"

    :goto_0
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/presenter/SettingsDataPresenter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lx4/f1;->r(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const-string v3, "appVersion"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-static {}, Lx4/t;->h()I

    move-result v1

    const-string v3, "miuiVersion"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/presenter/SettingsDataPresenter;->context:Landroid/content/Context;

    invoke-static {v1}, Lx4/a0;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "device"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/presenter/SettingsDataPresenter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v3, "country"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "pageIndex"

    const-string v3, "settings"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "jsonObject.toString()"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "commonParameters"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "timestamp"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Lcom/miui/networkassistant/utils/IDPhoneNumberUtil;->createLinkString(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/presenter/SettingsDataPresenter;->context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/miui/networkassistant/utils/SignatureUtils;->getSignatureResults(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "signParams"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "sign"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/miui/networkassistant/ui/bean/ParamsUtils;->isPreviewEnv()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/miui/networkassistant/ui/network/NetRequest;->INSTANCE:Lcom/miui/networkassistant/ui/network/NetRequest;

    const-class v3, Lcom/miui/networkassistant/ui/bean/RecommendBean;

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x0

    const-string v1, "https://preview-api-flow-intl.10046.xiaomimobile.com/product/recommend_product"

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/miui/networkassistant/ui/network/NetRequest;->INSTANCE:Lcom/miui/networkassistant/ui/network/NetRequest;

    const-class v3, Lcom/miui/networkassistant/ui/bean/RecommendBean;

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x0

    const-string v1, "https://api-flow-intl.10046.xiaomimobile.com/product/recommend_product"

    :goto_1
    invoke-static/range {v0 .. v7}, Lcom/miui/networkassistant/ui/network/NetRequest;->get$default(Lcom/miui/networkassistant/ui/network/NetRequest;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/Class;Lcom/miui/networkassistant/ui/network/BaseNetRequest$Callback;Ljava/lang/Boolean;ILjava/lang/Object;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/presenter/SettingsDataPresenter;->iOrderView:Lcom/miui/networkassistant/ui/presenter/ISettingsDataView;

    return-void
.end method

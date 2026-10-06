.class public final Lcom/miui/networkassistant/ui/presenter/ProductListPresenter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/networkassistant/ui/presenter/IproductListPresenter;


# instance fields
.field private context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private iOrderView:Lcom/miui/networkassistant/ui/presenter/IproductListView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mCarrier:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/networkassistant/ui/presenter/IproductListView;Landroid/content/Context;)V
    .locals 1
    .param p1    # Lcom/miui/networkassistant/ui/presenter/IproductListView;
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

    iput-object p1, p0, Lcom/miui/networkassistant/ui/presenter/ProductListPresenter;->iOrderView:Lcom/miui/networkassistant/ui/presenter/IproductListView;

    iput-object p2, p0, Lcom/miui/networkassistant/ui/presenter/ProductListPresenter;->context:Landroid/content/Context;

    const-string p1, ""

    iput-object p1, p0, Lcom/miui/networkassistant/ui/presenter/ProductListPresenter;->mCarrier:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getIOrderView$p(Lcom/miui/networkassistant/ui/presenter/ProductListPresenter;)Lcom/miui/networkassistant/ui/presenter/IproductListView;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/presenter/ProductListPresenter;->iOrderView:Lcom/miui/networkassistant/ui/presenter/IproductListView;

    return-object p0
.end method


# virtual methods
.method public final createLinkString(Ljava/util/Map;)Ljava/lang/String;
    .locals 8
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, ""

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const/4 v2, 0x0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    const/16 v7, 0x3d

    if-ne v2, v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x26

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public fetchProductList()V
    .locals 8
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1a
    .end annotation

    new-instance v4, Lcom/miui/networkassistant/ui/presenter/ProductListPresenter$fetchProductList$callback$1;

    invoke-direct {v4, p0}, Lcom/miui/networkassistant/ui/presenter/ProductListPresenter$fetchProductList$callback$1;-><init>(Lcom/miui/networkassistant/ui/presenter/ProductListPresenter;)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v0, "productType"

    const-string v1, "trafficProduct"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/presenter/ProductListPresenter;->mCarrier:Ljava/lang/String;

    const-string v1, "carrier"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/presenter/ProductListPresenter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v3, "language"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/presenter/ProductListPresenter;->context:Landroid/content/Context;

    invoke-static {v1}, Ly4/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "oaid"

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/miui/networkassistant/utils/SettingsUtils;->INSTANCE:Lcom/miui/networkassistant/utils/SettingsUtils;

    invoke-virtual {v1}, Lcom/miui/networkassistant/utils/SettingsUtils;->getUUID()Ljava/lang/String;

    move-result-object v1

    const-string v3, "uuid"

    :goto_0
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v3, "country"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "pageIndex"

    const-string v3, "home"

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

    invoke-virtual {p0, v2}, Lcom/miui/networkassistant/ui/presenter/ProductListPresenter;->createLinkString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/presenter/ProductListPresenter;->context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/miui/networkassistant/utils/SignatureUtils;->getSignatureResults(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sign"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/miui/networkassistant/ui/bean/ParamsUtils;->isPreviewEnv()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/miui/networkassistant/ui/network/NetRequest;->INSTANCE:Lcom/miui/networkassistant/ui/network/NetRequest;

    const-class v3, Lcom/miui/networkassistant/ui/bean/Card;

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x0

    const-string v1, "https://preview-api-flow-intl.10046.xiaomimobile.com/product/product_list"

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/miui/networkassistant/ui/network/NetRequest;->INSTANCE:Lcom/miui/networkassistant/ui/network/NetRequest;

    const-class v3, Lcom/miui/networkassistant/ui/bean/Card;

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x0

    const-string v1, "https://api-flow-intl.10046.xiaomimobile.com/product/product_list"

    :goto_1
    invoke-static/range {v0 .. v7}, Lcom/miui/networkassistant/ui/network/NetRequest;->get$default(Lcom/miui/networkassistant/ui/network/NetRequest;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/Class;Lcom/miui/networkassistant/ui/network/BaseNetRequest$Callback;Ljava/lang/Boolean;ILjava/lang/Object;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/presenter/ProductListPresenter;->iOrderView:Lcom/miui/networkassistant/ui/presenter/IproductListView;

    return-void
.end method

.method public final setCarrier(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "carrier"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/networkassistant/ui/presenter/ProductListPresenter;->mCarrier:Ljava/lang/String;

    return-void
.end method

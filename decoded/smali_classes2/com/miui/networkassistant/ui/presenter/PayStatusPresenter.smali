.class public final Lcom/miui/networkassistant/ui/presenter/PayStatusPresenter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/networkassistant/ui/presenter/IpayStatusPresenter;


# instance fields
.field private context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private iOrderView:Lcom/miui/networkassistant/ui/presenter/IpayStatusView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mCarrier:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mNonce:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mOrderID:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/networkassistant/ui/presenter/IpayStatusView;Landroid/content/Context;)V
    .locals 1
    .param p1    # Lcom/miui/networkassistant/ui/presenter/IpayStatusView;
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

    iput-object p1, p0, Lcom/miui/networkassistant/ui/presenter/PayStatusPresenter;->iOrderView:Lcom/miui/networkassistant/ui/presenter/IpayStatusView;

    iput-object p2, p0, Lcom/miui/networkassistant/ui/presenter/PayStatusPresenter;->context:Landroid/content/Context;

    const-string p1, ""

    iput-object p1, p0, Lcom/miui/networkassistant/ui/presenter/PayStatusPresenter;->mCarrier:Ljava/lang/String;

    iput-object p1, p0, Lcom/miui/networkassistant/ui/presenter/PayStatusPresenter;->mNonce:Ljava/lang/String;

    iput-object p1, p0, Lcom/miui/networkassistant/ui/presenter/PayStatusPresenter;->mOrderID:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getIOrderView$p(Lcom/miui/networkassistant/ui/presenter/PayStatusPresenter;)Lcom/miui/networkassistant/ui/presenter/IpayStatusView;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/presenter/PayStatusPresenter;->iOrderView:Lcom/miui/networkassistant/ui/presenter/IpayStatusView;

    return-object p0
.end method


# virtual methods
.method public fetchPayStatus()V
    .locals 8

    new-instance v4, Lcom/miui/networkassistant/ui/presenter/PayStatusPresenter$fetchPayStatus$callback$1;

    invoke-direct {v4, p0}, Lcom/miui/networkassistant/ui/presenter/PayStatusPresenter$fetchPayStatus$callback$1;-><init>(Lcom/miui/networkassistant/ui/presenter/PayStatusPresenter;)V

    invoke-static {}, Lcom/miui/networkassistant/ui/bean/ParamsUtils;->getPayParams()Ljava/util/HashMap;

    move-result-object v2

    const-string v0, "params"

    invoke-static {v2, v0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "productOrderId"

    invoke-static {v0}, Lcom/miui/networkassistant/ui/bean/ParamsUtils;->getNonce(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "nonce"

    invoke-static {v0}, Lcom/miui/networkassistant/ui/bean/ParamsUtils;->getNonce(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "timestamp"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Lcom/miui/networkassistant/utils/IDPhoneNumberUtil;->createLinkString(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/presenter/PayStatusPresenter;->context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/miui/networkassistant/utils/SignatureUtils;->getSignatureResults(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sign"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/miui/networkassistant/ui/bean/ParamsUtils;->isPreviewEnv()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/networkassistant/ui/network/NetRequest;->INSTANCE:Lcom/miui/networkassistant/ui/network/NetRequest;

    const-class v3, Lcom/miui/networkassistant/ui/bean/OrderSuccessData;

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x0

    const-string v1, "https://preview-api-flow-intl.10046.xiaomimobile.com/order/product_order_details"

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/miui/networkassistant/ui/network/NetRequest;->INSTANCE:Lcom/miui/networkassistant/ui/network/NetRequest;

    const-class v3, Lcom/miui/networkassistant/ui/bean/OrderSuccessData;

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x0

    const-string v1, "https://api-flow-intl.10046.xiaomimobile.com/order/product_order_details"

    :goto_0
    invoke-static/range {v0 .. v7}, Lcom/miui/networkassistant/ui/network/NetRequest;->get$default(Lcom/miui/networkassistant/ui/network/NetRequest;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/Class;Lcom/miui/networkassistant/ui/network/BaseNetRequest$Callback;Ljava/lang/Boolean;ILjava/lang/Object;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/presenter/PayStatusPresenter;->iOrderView:Lcom/miui/networkassistant/ui/presenter/IpayStatusView;

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

    iput-object p1, p0, Lcom/miui/networkassistant/ui/presenter/PayStatusPresenter;->mCarrier:Ljava/lang/String;

    return-void
.end method

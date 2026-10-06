.class public final Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailPresenter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/networkassistant/ui/order/orderdetail/IOrderDetailPresenter;


# instance fields
.field private final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mActivity:Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mOrderId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mOrderType:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "mOrderId"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mOrderType"

    invoke-static {p3, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailPresenter;->mActivity:Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;

    iput-object p2, p0, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailPresenter;->mOrderId:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailPresenter;->mOrderType:Ljava/lang/String;

    const-string p1, "bh_orderDetailPresenter"

    iput-object p1, p0, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailPresenter;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public fetchData()V
    .locals 0

    return-void
.end method

.method public final getMActivity()Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailPresenter;->mActivity:Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;

    return-object v0
.end method

.method public initData()V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailPresenter;->fetchData()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailPresenter;->mActivity:Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;

    return-void
.end method

.method public final setMActivity(Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;)V
    .locals 0
    .param p1    # Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailPresenter;->mActivity:Lcom/miui/networkassistant/ui/order/orderdetail/BhNormalOrderDetailActivity;

    return-void
.end method

.class public final Lcom/miui/networkassistant/ui/order/orderlist/BhOrderOrderRecordPresenter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/networkassistant/ui/order/orderlist/IOrderRecordPresenter;


# instance fields
.field private createTime1:Ljava/lang/Long;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private iOrderView:Lcom/miui/networkassistant/ui/order/orderlist/IOrderRecordView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final mModelOrder:Lcom/miui/networkassistant/ui/order/orderlist/IOrderRecordModel;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/networkassistant/ui/order/orderlist/IOrderRecordView;Lcom/miui/networkassistant/ui/order/orderlist/IOrderRecordModel;)V
    .locals 1
    .param p1    # Lcom/miui/networkassistant/ui/order/orderlist/IOrderRecordView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/miui/networkassistant/ui/order/orderlist/IOrderRecordModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "mModelOrder"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderOrderRecordPresenter;->iOrderView:Lcom/miui/networkassistant/ui/order/orderlist/IOrderRecordView;

    iput-object p2, p0, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderOrderRecordPresenter;->mModelOrder:Lcom/miui/networkassistant/ui/order/orderlist/IOrderRecordModel;

    const-wide/16 p1, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderOrderRecordPresenter;->createTime1:Ljava/lang/Long;

    return-void
.end method

.method public static final synthetic access$getIOrderView$p(Lcom/miui/networkassistant/ui/order/orderlist/BhOrderOrderRecordPresenter;)Lcom/miui/networkassistant/ui/order/orderlist/IOrderRecordView;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderOrderRecordPresenter;->iOrderView:Lcom/miui/networkassistant/ui/order/orderlist/IOrderRecordView;

    return-object p0
.end method


# virtual methods
.method public fetchRecorder(Ljava/lang/String;Landroid/content/Context;IZ)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderOrderRecordPresenter$fetchRecorder$callback$1;

    invoke-direct {v0, p2, p0, p4, p3}, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderOrderRecordPresenter$fetchRecorder$callback$1;-><init>(Landroid/content/Context;Lcom/miui/networkassistant/ui/order/orderlist/BhOrderOrderRecordPresenter;ZI)V

    if-nez p4, :cond_0

    const/4 p3, 0x0

    iput-object p3, p0, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderOrderRecordPresenter;->createTime1:Ljava/lang/Long;

    :cond_0
    iget-object p3, p0, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderOrderRecordPresenter;->mModelOrder:Lcom/miui/networkassistant/ui/order/orderlist/IOrderRecordModel;

    iget-object p4, p0, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderOrderRecordPresenter;->createTime1:Ljava/lang/Long;

    invoke-interface {p3, p1, p2, v0, p4}, Lcom/miui/networkassistant/ui/order/orderlist/IOrderRecordModel;->fetchRecord(Ljava/lang/String;Landroid/content/Context;Lcom/miui/networkassistant/ui/network/BaseNetRequest$Callback;Ljava/lang/Long;)V

    return-void
.end method

.method public final getCreateTime1()Ljava/lang/Long;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderOrderRecordPresenter;->createTime1:Ljava/lang/Long;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderOrderRecordPresenter;->iOrderView:Lcom/miui/networkassistant/ui/order/orderlist/IOrderRecordView;

    return-void
.end method

.method public final setCreateTime1(Ljava/lang/Long;)V
    .locals 0
    .param p1    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderOrderRecordPresenter;->createTime1:Ljava/lang/Long;

    return-void
.end method

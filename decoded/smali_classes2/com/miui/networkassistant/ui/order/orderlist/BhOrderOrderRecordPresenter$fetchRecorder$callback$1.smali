.class public final Lcom/miui/networkassistant/ui/order/orderlist/BhOrderOrderRecordPresenter$fetchRecorder$callback$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/networkassistant/ui/network/BaseNetRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/networkassistant/ui/order/orderlist/BhOrderOrderRecordPresenter;->fetchRecorder(Ljava/lang/String;Landroid/content/Context;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/networkassistant/ui/network/BaseNetRequest$Callback<",
        "Lcom/miui/networkassistant/ui/bean/RecordBean;",
        ">;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nBhOrderOrderRecordPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BhOrderOrderRecordPresenter.kt\ncom/miui/networkassistant/ui/order/orderlist/BhOrderOrderRecordPresenter$fetchRecorder$callback$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,54:1\n1#2:55\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $isMore:Z

.field final synthetic $pageIndex:I

.field final synthetic this$0:Lcom/miui/networkassistant/ui/order/orderlist/BhOrderOrderRecordPresenter;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/miui/networkassistant/ui/order/orderlist/BhOrderOrderRecordPresenter;ZI)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderOrderRecordPresenter$fetchRecorder$callback$1;->$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderOrderRecordPresenter$fetchRecorder$callback$1;->this$0:Lcom/miui/networkassistant/ui/order/orderlist/BhOrderOrderRecordPresenter;

    iput-boolean p3, p0, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderOrderRecordPresenter$fetchRecorder$callback$1;->$isMore:Z

    iput p4, p0, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderOrderRecordPresenter$fetchRecorder$callback$1;->$pageIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure()V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderOrderRecordPresenter$fetchRecorder$callback$1;->this$0:Lcom/miui/networkassistant/ui/order/orderlist/BhOrderOrderRecordPresenter;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderOrderRecordPresenter;->access$getIOrderView$p(Lcom/miui/networkassistant/ui/order/orderlist/BhOrderOrderRecordPresenter;)Lcom/miui/networkassistant/ui/order/orderlist/IOrderRecordView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderOrderRecordPresenter$fetchRecorder$callback$1;->$context:Landroid/content/Context;

    const v2, 0x7f120faf

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "context.getString(R.string.order_bh_net_error)"

    invoke-static {v1, v2}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderOrderRecordPresenter$fetchRecorder$callback$1;->$isMore:Z

    invoke-interface {v0, v1, v2}, Lcom/miui/networkassistant/ui/order/orderlist/IOrderRecordView;->showError(Ljava/lang/String;Z)V

    :cond_0
    const-string v0, "bh-fetchRecorder"

    const-string v1, "onFailure"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResponse(Lcom/miui/networkassistant/ui/bean/RecordBean;)V
    .locals 4
    .param p1    # Lcom/miui/networkassistant/ui/bean/RecordBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderOrderRecordPresenter$fetchRecorder$callback$1;->$context:Landroid/content/Context;

    const v1, 0x7f120faf

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "context.getString(R.string.order_bh_net_error)"

    invoke-static {v0, v2}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderOrderRecordPresenter$fetchRecorder$callback$1;->this$0:Lcom/miui/networkassistant/ui/order/orderlist/BhOrderOrderRecordPresenter;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderOrderRecordPresenter;->access$getIOrderView$p(Lcom/miui/networkassistant/ui/order/orderlist/BhOrderOrderRecordPresenter;)Lcom/miui/networkassistant/ui/order/orderlist/IOrderRecordView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderOrderRecordPresenter$fetchRecorder$callback$1;->$isMore:Z

    invoke-interface {p1, v0, v1}, Lcom/miui/networkassistant/ui/order/orderlist/IOrderRecordView;->showError(Ljava/lang/String;Z)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/bean/RecordBean;->getErrCode()I

    move-result v3

    if-eqz v3, :cond_6

    iget-object v1, p0, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderOrderRecordPresenter$fetchRecorder$callback$1;->this$0:Lcom/miui/networkassistant/ui/order/orderlist/BhOrderOrderRecordPresenter;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderOrderRecordPresenter;->access$getIOrderView$p(Lcom/miui/networkassistant/ui/order/orderlist/BhOrderOrderRecordPresenter;)Lcom/miui/networkassistant/ui/order/orderlist/IOrderRecordView;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/bean/RecordBean;->getErrMsg()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {v2}, Ljk/f;->n(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-nez v2, :cond_4

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/bean/RecordBean;->getErrMsg()Ljava/lang/String;

    move-result-object v0

    :cond_4
    iget-boolean p1, p0, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderOrderRecordPresenter$fetchRecorder$callback$1;->$isMore:Z

    invoke-interface {v1, v0, p1}, Lcom/miui/networkassistant/ui/order/orderlist/IOrderRecordView;->showError(Ljava/lang/String;Z)V

    :cond_5
    return-void

    :cond_6
    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/bean/RecordBean;->getData()Lcom/miui/networkassistant/ui/bean/RecordBean$Data;

    move-result-object v0

    if-nez v0, :cond_8

    iget-object p1, p0, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderOrderRecordPresenter$fetchRecorder$callback$1;->this$0:Lcom/miui/networkassistant/ui/order/orderlist/BhOrderOrderRecordPresenter;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderOrderRecordPresenter;->access$getIOrderView$p(Lcom/miui/networkassistant/ui/order/orderlist/BhOrderOrderRecordPresenter;)Lcom/miui/networkassistant/ui/order/orderlist/IOrderRecordView;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderOrderRecordPresenter$fetchRecorder$callback$1;->$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderOrderRecordPresenter$fetchRecorder$callback$1;->$isMore:Z

    invoke-interface {p1, v0, v1}, Lcom/miui/networkassistant/ui/order/orderlist/IOrderRecordView;->showError(Ljava/lang/String;Z)V

    :cond_7
    return-void

    :cond_8
    iget-object v0, p0, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderOrderRecordPresenter$fetchRecorder$callback$1;->this$0:Lcom/miui/networkassistant/ui/order/orderlist/BhOrderOrderRecordPresenter;

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/bean/RecordBean;->getData()Lcom/miui/networkassistant/ui/bean/RecordBean$Data;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/networkassistant/ui/bean/RecordBean$Data;->getTrafficOrderCreateTime()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderOrderRecordPresenter;->setCreateTime1(Ljava/lang/Long;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderOrderRecordPresenter$fetchRecorder$callback$1;->this$0:Lcom/miui/networkassistant/ui/order/orderlist/BhOrderOrderRecordPresenter;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderOrderRecordPresenter;->access$getIOrderView$p(Lcom/miui/networkassistant/ui/order/orderlist/BhOrderOrderRecordPresenter;)Lcom/miui/networkassistant/ui/order/orderlist/IOrderRecordView;

    move-result-object v0

    if-eqz v0, :cond_9

    iget v1, p0, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderOrderRecordPresenter$fetchRecorder$callback$1;->$pageIndex:I

    iget-boolean v2, p0, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderOrderRecordPresenter$fetchRecorder$callback$1;->$isMore:Z

    invoke-interface {v0, v1, p1, v2}, Lcom/miui/networkassistant/ui/order/orderlist/IOrderRecordView;->showData(ILcom/miui/networkassistant/ui/bean/RecordBean;Z)V

    :cond_9
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/miui/networkassistant/ui/bean/RecordBean;

    invoke-virtual {p0, p1}, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderOrderRecordPresenter$fetchRecorder$callback$1;->onResponse(Lcom/miui/networkassistant/ui/bean/RecordBean;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

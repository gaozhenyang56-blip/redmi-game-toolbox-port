.class public final Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity$LoadMoreAction;
.super Lmiuix/springback/trigger/a$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LoadMoreAction"
.end annotation


# instance fields
.field private hasMore:Z

.field final synthetic this$0:Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity;


# direct methods
.method public constructor <init>(Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity$LoadMoreAction;->this$0:Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity;

    const/16 p1, 0xa0

    invoke-direct {p0, p1}, Lmiuix/springback/trigger/a$c;-><init>(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity$LoadMoreAction;->hasMore:Z

    return-void
.end method


# virtual methods
.method public final getHasMore()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity$LoadMoreAction;->hasMore:Z

    return v0
.end method

.method protected onActivated()V
    .locals 0

    return-void
.end method

.method protected onEntered()V
    .locals 0

    return-void
.end method

.method protected onExit()V
    .locals 0

    return-void
.end method

.method protected onFinished()V
    .locals 0

    return-void
.end method

.method protected onTriggered()V
    .locals 5

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity$LoadMoreAction;->hasMore:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lmiuix/springback/trigger/a$c;->notifyActionNoData()V

    :cond_0
    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity$LoadMoreAction;->hasMore:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity$LoadMoreAction;->this$0:Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/view/BaseActivity;->getMPresenter()Lcom/miui/networkassistant/ui/view/IPresenter;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/ui/order/orderlist/IOrderRecordPresenter;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity$LoadMoreAction;->this$0:Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity;->access$getSlot$p(Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity$LoadMoreAction;->this$0:Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity;

    invoke-static {v2}, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity;->access$getMPageIndex$p(Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity;)I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/miui/networkassistant/ui/order/orderlist/IOrderRecordPresenter;->fetchRecorder(Ljava/lang/String;Landroid/content/Context;IZ)V

    :cond_1
    return-void
.end method

.method public final setHasMore(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity$LoadMoreAction;->hasMore:Z

    return-void
.end method

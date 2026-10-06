.class public final Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity$RefreshAction;
.super Lmiuix/springback/trigger/a$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "RefreshAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity;


# direct methods
.method public constructor <init>(Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity$RefreshAction;->this$0:Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity;

    const/16 p1, 0xa0

    invoke-direct {p0, p1}, Lmiuix/springback/trigger/a$b;-><init>(I)V

    return-void
.end method


# virtual methods
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
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity$RefreshAction;->this$0:Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity;->refreshData()V

    return-void
.end method

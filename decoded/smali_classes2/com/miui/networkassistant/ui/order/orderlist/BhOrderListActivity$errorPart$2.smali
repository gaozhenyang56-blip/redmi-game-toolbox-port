.class final Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity$errorPart$2;
.super Lbk/n;
.source "SourceFile"

# interfaces
.implements Lak/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbk/n;",
        "Lak/a<",
        "Landroid/widget/LinearLayout;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity$errorPart$2;->this$0:Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lbk/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/widget/LinearLayout;
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity$errorPart$2;->this$0:Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity;

    const v1, 0x7f0b0385

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity$errorPart$2;->invoke()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

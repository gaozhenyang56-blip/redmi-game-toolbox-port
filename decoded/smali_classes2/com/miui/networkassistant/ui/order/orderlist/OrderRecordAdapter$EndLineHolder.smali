.class public final Lcom/miui/networkassistant/ui/order/orderlist/OrderRecordAdapter$EndLineHolder;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/networkassistant/ui/order/orderlist/OrderRecordAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "EndLineHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/order/orderlist/OrderRecordAdapter;


# direct methods
.method public constructor <init>(Lcom/miui/networkassistant/ui/order/orderlist/OrderRecordAdapter;Landroid/view/View;)V
    .locals 1
    .param p1    # Lcom/miui/networkassistant/ui/order/orderlist/OrderRecordAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "_itemVie"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/networkassistant/ui/order/orderlist/OrderRecordAdapter$EndLineHolder;->this$0:Lcom/miui/networkassistant/ui/order/orderlist/OrderRecordAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    return-void
.end method

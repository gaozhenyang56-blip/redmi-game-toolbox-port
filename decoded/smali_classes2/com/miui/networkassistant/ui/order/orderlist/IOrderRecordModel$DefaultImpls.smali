.class public final Lcom/miui/networkassistant/ui/order/orderlist/IOrderRecordModel$DefaultImpls;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/networkassistant/ui/order/orderlist/IOrderRecordModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static synthetic fetchRecord$default(Lcom/miui/networkassistant/ui/order/orderlist/IOrderRecordModel;Ljava/lang/String;Landroid/content/Context;Lcom/miui/networkassistant/ui/network/BaseNetRequest$Callback;Ljava/lang/Long;ILjava/lang/Object;)V
    .locals 0

    if-nez p6, :cond_1

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    :cond_0
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/miui/networkassistant/ui/order/orderlist/IOrderRecordModel;->fetchRecord(Ljava/lang/String;Landroid/content/Context;Lcom/miui/networkassistant/ui/network/BaseNetRequest$Callback;Ljava/lang/Long;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: fetchRecord"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

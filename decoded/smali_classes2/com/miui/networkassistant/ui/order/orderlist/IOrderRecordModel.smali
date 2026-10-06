.class public interface abstract Lcom/miui/networkassistant/ui/order/orderlist/IOrderRecordModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/networkassistant/ui/order/orderlist/IOrderRecordModel$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract fetchRecord(Ljava/lang/String;Landroid/content/Context;Lcom/miui/networkassistant/ui/network/BaseNetRequest$Callback;Ljava/lang/Long;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/miui/networkassistant/ui/network/BaseNetRequest$Callback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Lcom/miui/networkassistant/ui/network/BaseNetRequest$Callback<",
            "Lcom/miui/networkassistant/ui/bean/RecordBean;",
            ">;",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation
.end method

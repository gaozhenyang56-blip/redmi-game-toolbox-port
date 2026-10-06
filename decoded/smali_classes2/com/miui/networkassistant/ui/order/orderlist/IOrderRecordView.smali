.class public interface abstract Lcom/miui/networkassistant/ui/order/orderlist/IOrderRecordView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/networkassistant/ui/base/IView;


# virtual methods
.method public abstract showData(ILcom/miui/networkassistant/ui/bean/RecordBean;Z)V
    .param p2    # Lcom/miui/networkassistant/ui/bean/RecordBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract showError(Ljava/lang/String;Z)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

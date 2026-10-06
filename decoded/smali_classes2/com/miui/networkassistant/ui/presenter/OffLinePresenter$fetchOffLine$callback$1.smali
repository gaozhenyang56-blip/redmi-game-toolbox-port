.class public final Lcom/miui/networkassistant/ui/presenter/OffLinePresenter$fetchOffLine$callback$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/networkassistant/ui/network/BaseNetRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/networkassistant/ui/presenter/OffLinePresenter;->fetchOffLine()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/networkassistant/ui/network/BaseNetRequest$Callback<",
        "Lcom/miui/networkassistant/ui/bean/PolicyCode;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/presenter/OffLinePresenter;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/presenter/OffLinePresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/presenter/OffLinePresenter$fetchOffLine$callback$1;->this$0:Lcom/miui/networkassistant/ui/presenter/OffLinePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/presenter/OffLinePresenter$fetchOffLine$callback$1;->this$0:Lcom/miui/networkassistant/ui/presenter/OffLinePresenter;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/presenter/OffLinePresenter;->access$getIOrderView$p(Lcom/miui/networkassistant/ui/presenter/OffLinePresenter;)Lcom/miui/networkassistant/ui/presenter/IOffLineView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/miui/networkassistant/ui/presenter/IOffLineView;->notOffLine()V

    :cond_0
    const-string v0, "bh-fetchRecorder"

    const-string v1, "onFailure"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResponse(Lcom/miui/networkassistant/ui/bean/PolicyCode;)V
    .locals 2
    .param p1    # Lcom/miui/networkassistant/ui/bean/PolicyCode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/networkassistant/ui/presenter/OffLinePresenter$fetchOffLine$callback$1;->this$0:Lcom/miui/networkassistant/ui/presenter/OffLinePresenter;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/presenter/OffLinePresenter;->access$getIOrderView$p(Lcom/miui/networkassistant/ui/presenter/OffLinePresenter;)Lcom/miui/networkassistant/ui/presenter/IOffLineView;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/miui/networkassistant/ui/presenter/IOffLineView;->notOffLine()V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/bean/PolicyCode;->getRtnCode()I

    move-result v0

    const v1, 0xfa01

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/presenter/OffLinePresenter$fetchOffLine$callback$1;->this$0:Lcom/miui/networkassistant/ui/presenter/OffLinePresenter;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/presenter/OffLinePresenter;->access$getIOrderView$p(Lcom/miui/networkassistant/ui/presenter/OffLinePresenter;)Lcom/miui/networkassistant/ui/presenter/IOffLineView;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lcom/miui/networkassistant/ui/presenter/IOffLineView;->offLineTraffic(Lcom/miui/networkassistant/ui/bean/PolicyCode;)V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/bean/PolicyCode;->getData()Lcom/miui/networkassistant/ui/bean/PolicyData;

    move-result-object p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/miui/networkassistant/ui/presenter/OffLinePresenter$fetchOffLine$callback$1;->this$0:Lcom/miui/networkassistant/ui/presenter/OffLinePresenter;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/presenter/OffLinePresenter;->access$getIOrderView$p(Lcom/miui/networkassistant/ui/presenter/OffLinePresenter;)Lcom/miui/networkassistant/ui/presenter/IOffLineView;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcom/miui/networkassistant/ui/presenter/IOffLineView;->notOffLine()V

    :cond_4
    return-void

    :cond_5
    iget-object p1, p0, Lcom/miui/networkassistant/ui/presenter/OffLinePresenter$fetchOffLine$callback$1;->this$0:Lcom/miui/networkassistant/ui/presenter/OffLinePresenter;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/presenter/OffLinePresenter;->access$getIOrderView$p(Lcom/miui/networkassistant/ui/presenter/OffLinePresenter;)Lcom/miui/networkassistant/ui/presenter/IOffLineView;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-interface {p1}, Lcom/miui/networkassistant/ui/presenter/IOffLineView;->notOffLine()V

    :cond_6
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/miui/networkassistant/ui/bean/PolicyCode;

    invoke-virtual {p0, p1}, Lcom/miui/networkassistant/ui/presenter/OffLinePresenter$fetchOffLine$callback$1;->onResponse(Lcom/miui/networkassistant/ui/bean/PolicyCode;)V

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

.class public final Lcom/miui/networkassistant/ui/presenter/FunctionItemPresenter$fetchFunctionItem$callback$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/networkassistant/ui/network/BaseNetRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/networkassistant/ui/presenter/FunctionItemPresenter;->fetchFunctionItem(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/networkassistant/ui/network/BaseNetRequest$Callback<",
        "Lcom/miui/networkassistant/ui/bean/FunctionData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $slot:I

.field final synthetic this$0:Lcom/miui/networkassistant/ui/presenter/FunctionItemPresenter;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/presenter/FunctionItemPresenter;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/presenter/FunctionItemPresenter$fetchFunctionItem$callback$1;->this$0:Lcom/miui/networkassistant/ui/presenter/FunctionItemPresenter;

    iput p2, p0, Lcom/miui/networkassistant/ui/presenter/FunctionItemPresenter$fetchFunctionItem$callback$1;->$slot:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure()V
    .locals 2

    const-string v0, "bh-fetchFunctionItem"

    const-string v1, "onFailure"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResponse(Lcom/miui/networkassistant/ui/bean/FunctionData;)V
    .locals 2
    .param p1    # Lcom/miui/networkassistant/ui/bean/FunctionData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const-string p1, "bh-fetchFunctionItem"

    const-string v0, "onResponse Error"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/presenter/FunctionItemPresenter$fetchFunctionItem$callback$1;->this$0:Lcom/miui/networkassistant/ui/presenter/FunctionItemPresenter;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/presenter/FunctionItemPresenter;->getWeakReference()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/ui/presenter/IFunctionItemView;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/miui/networkassistant/ui/presenter/FunctionItemPresenter$fetchFunctionItem$callback$1;->$slot:I

    invoke-interface {v0, p1, v1}, Lcom/miui/networkassistant/ui/presenter/IFunctionItemView;->showData(Lcom/miui/networkassistant/ui/bean/FunctionData;I)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/miui/networkassistant/ui/bean/FunctionData;

    invoke-virtual {p0, p1}, Lcom/miui/networkassistant/ui/presenter/FunctionItemPresenter$fetchFunctionItem$callback$1;->onResponse(Lcom/miui/networkassistant/ui/bean/FunctionData;)V

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

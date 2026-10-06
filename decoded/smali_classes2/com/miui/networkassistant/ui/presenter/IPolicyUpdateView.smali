.class public interface abstract Lcom/miui/networkassistant/ui/presenter/IPolicyUpdateView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/networkassistant/ui/base/IView;


# virtual methods
.method public abstract getPolicyUpdateFail()V
.end method

.method public abstract getPolicyUpdateSuccess(Lcom/miui/networkassistant/ui/bean/PolicyCode;)V
    .param p1    # Lcom/miui/networkassistant/ui/bean/PolicyCode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract postPolicyFail()V
.end method

.method public abstract postPolicySuccess(Lcom/miui/networkassistant/ui/bean/PolicyCode;)V
    .param p1    # Lcom/miui/networkassistant/ui/bean/PolicyCode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

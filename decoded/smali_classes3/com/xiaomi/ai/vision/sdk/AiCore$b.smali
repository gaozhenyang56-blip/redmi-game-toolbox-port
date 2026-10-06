.class public final Lcom/xiaomi/ai/vision/sdk/AiCore$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/ai/vision/sdk/AiCore;-><init>(Landroid/content/Context;Lji/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0010\u0010\u0008\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/xiaomi/ai/vision/sdk/AiCore$b",
        "Landroid/content/ServiceConnection;",
        "Landroid/content/ComponentName;",
        "name",
        "Landroid/os/IBinder;",
        "binder",
        "Loj/t;",
        "onServiceConnected",
        "onServiceDisconnected",
        "AiCapability_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/ai/vision/sdk/AiCore;


# direct methods
.method constructor <init>(Lcom/xiaomi/ai/vision/sdk/AiCore;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/ai/vision/sdk/AiCore$b;->a:Lcom/xiaomi/ai/vision/sdk/AiCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1    # Landroid/content/ComponentName;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/IBinder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "name"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "binder"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/ai/vision/sdk/AiCore$b;->a:Lcom/xiaomi/ai/vision/sdk/AiCore;

    invoke-static {p2}, Lcom/xiaomi/aiasst/vision/sdk/ITranslateSdkInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/aiasst/vision/sdk/ITranslateSdkInterface;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/xiaomi/ai/vision/sdk/AiCore;->m(Lcom/xiaomi/ai/vision/sdk/AiCore;Lcom/xiaomi/aiasst/vision/sdk/ITranslateSdkInterface;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onServiceConnected, name: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", protocol version: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/xiaomi/ai/vision/sdk/AiCore$b;->a:Lcom/xiaomi/ai/vision/sdk/AiCore;

    invoke-static {p1}, Lcom/xiaomi/ai/vision/sdk/AiCore;->j(Lcom/xiaomi/ai/vision/sdk/AiCore;)Lcom/xiaomi/aiasst/vision/sdk/ITranslateSdkInterface;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/xiaomi/aiasst/vision/sdk/ITranslateSdkInterface;->U3()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AiCore"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/xiaomi/ai/vision/sdk/AiCore$b;->a:Lcom/xiaomi/ai/vision/sdk/AiCore;

    invoke-static {p1}, Lcom/xiaomi/ai/vision/sdk/AiCore;->j(Lcom/xiaomi/ai/vision/sdk/AiCore;)Lcom/xiaomi/aiasst/vision/sdk/ITranslateSdkInterface;

    move-result-object p2

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v1}, Lcom/xiaomi/ai/vision/sdk/AiCore;->w(Landroid/os/IInterface;Z)V

    iget-object p1, p0, Lcom/xiaomi/ai/vision/sdk/AiCore$b;->a:Lcom/xiaomi/ai/vision/sdk/AiCore;

    invoke-static {p1, v0, v1, v0}, Lcom/xiaomi/ai/vision/sdk/AiCore;->o(Lcom/xiaomi/ai/vision/sdk/AiCore;Landroid/content/Context;ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/xiaomi/ai/vision/sdk/AiCore$b;->a:Lcom/xiaomi/ai/vision/sdk/AiCore;

    invoke-static {p1}, Lcom/xiaomi/ai/vision/sdk/AiCore;->j(Lcom/xiaomi/ai/vision/sdk/AiCore;)Lcom/xiaomi/aiasst/vision/sdk/ITranslateSdkInterface;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/xiaomi/ai/vision/sdk/AiCore$b;->a:Lcom/xiaomi/ai/vision/sdk/AiCore;

    invoke-static {p2}, Lcom/xiaomi/ai/vision/sdk/AiCore;->i(Lcom/xiaomi/ai/vision/sdk/AiCore;)Lcom/xiaomi/ai/vision/sdk/AiCore$sdkCallback$1;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/xiaomi/aiasst/vision/sdk/ITranslateSdkInterface;->x4(Lcom/xiaomi/aiasst/vision/sdk/ITranslateSdkCallback;)V

    :cond_1
    iget-object p1, p0, Lcom/xiaomi/ai/vision/sdk/AiCore$b;->a:Lcom/xiaomi/ai/vision/sdk/AiCore;

    invoke-virtual {p1}, Lcom/xiaomi/ai/vision/sdk/AiCore;->v()Lji/a;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1, v1}, Lji/a;->b(Z)V

    :cond_2
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1    # Landroid/content/ComponentName;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "name"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceDisconnected, name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AiCore"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/xiaomi/ai/vision/sdk/AiCore$b;->a:Lcom/xiaomi/ai/vision/sdk/AiCore;

    invoke-static {p1}, Lcom/xiaomi/ai/vision/sdk/AiCore;->j(Lcom/xiaomi/ai/vision/sdk/AiCore;)Lcom/xiaomi/aiasst/vision/sdk/ITranslateSdkInterface;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/ai/vision/sdk/AiCore;->w(Landroid/os/IInterface;Z)V

    iget-object p1, p0, Lcom/xiaomi/ai/vision/sdk/AiCore$b;->a:Lcom/xiaomi/ai/vision/sdk/AiCore;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/xiaomi/ai/vision/sdk/AiCore;->m(Lcom/xiaomi/ai/vision/sdk/AiCore;Lcom/xiaomi/aiasst/vision/sdk/ITranslateSdkInterface;)V

    iget-object p1, p0, Lcom/xiaomi/ai/vision/sdk/AiCore$b;->a:Lcom/xiaomi/ai/vision/sdk/AiCore;

    invoke-virtual {p1}, Lcom/xiaomi/ai/vision/sdk/AiCore;->v()Lji/a;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1, v1}, Lji/a;->b(Z)V

    :cond_0
    return-void
.end method

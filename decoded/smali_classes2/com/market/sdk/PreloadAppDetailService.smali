.class public Lcom/market/sdk/PreloadAppDetailService;
.super Lv1/b;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/market/IPreloadAppDetailService;


# instance fields
.field private u:Lcom/xiaomi/market/IPreloadAppDetailService;


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onDisconnected()V
    .locals 0

    return-void
.end method

.method public s8(Landroid/os/IBinder;)V
    .locals 0

    invoke-static {p1}, Lcom/xiaomi/market/IPreloadAppDetailService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/market/IPreloadAppDetailService;

    move-result-object p1

    iput-object p1, p0, Lcom/market/sdk/PreloadAppDetailService;->u:Lcom/xiaomi/market/IPreloadAppDetailService;

    return-void
.end method

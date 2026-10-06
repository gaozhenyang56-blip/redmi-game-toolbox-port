.class public Lcom/market/sdk/MarketService;
.super Lv1/b;
.source "SourceFile"

# interfaces
.implements Lcom/market/sdk/IMarketService;


# instance fields
.field private u:Lcom/market/sdk/IMarketService;


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

    invoke-static {p1}, Lcom/market/sdk/IMarketService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/market/sdk/IMarketService;

    move-result-object p1

    iput-object p1, p0, Lcom/market/sdk/MarketService;->u:Lcom/market/sdk/IMarketService;

    return-void
.end method

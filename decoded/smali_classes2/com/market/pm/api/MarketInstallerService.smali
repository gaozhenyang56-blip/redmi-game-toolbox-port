.class public Lcom/market/pm/api/MarketInstallerService;
.super Lv1/b;
.source "SourceFile"

# interfaces
.implements Lcom/market/pm/IMarketInstallerService;


# instance fields
.field private u:Lcom/market/pm/IMarketInstallerService;


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

    invoke-static {p1}, Lcom/market/pm/IMarketInstallerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/market/pm/IMarketInstallerService;

    move-result-object p1

    iput-object p1, p0, Lcom/market/pm/api/MarketInstallerService;->u:Lcom/market/pm/IMarketInstallerService;

    return-void
.end method

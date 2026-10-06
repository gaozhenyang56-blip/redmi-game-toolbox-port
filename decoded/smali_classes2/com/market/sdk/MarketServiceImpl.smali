.class public Lcom/market/sdk/MarketServiceImpl;
.super Lcom/market/sdk/IMarketService$Stub;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/market/sdk/IMarketService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public B(Ljava/lang/String;Ljava/lang/String;Z)Lcom/market/sdk/ApkVerifyInfo;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public B2([Ljava/lang/String;)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method public B6()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public D3()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public E1(Ljava/lang/String;IILcom/market/sdk/IImageCallback;)V
    .locals 0

    return-void
.end method

.method public F6(Landroid/os/ResultReceiver;)V
    .locals 0

    return-void
.end method

.method public Q7([Ljava/lang/String;Landroid/os/ResultReceiver;)V
    .locals 1

    const/4 p1, -0x1

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void
.end method

.method public V4(Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 0

    return-void
.end method

.method public W7(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public b6(JLjava/lang/String;Ljava/util/List;Lcom/market/sdk/IDesktopRecommendResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/market/sdk/IDesktopRecommendResponse;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public g0()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public i7(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public n7(Landroid/os/ResultReceiver;)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "whiteSet"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void
.end method

.method public q3(JLjava/lang/String;Ljava/util/List;Landroid/os/ResultReceiver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/ResultReceiver;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public t3(Ljava/lang/String;Ljava/lang/String;Lcom/market/sdk/IImageCallback;)V
    .locals 0

    return-void
.end method

.method public w6(Ljava/lang/String;Ljava/lang/String;Z)Lcom/market/sdk/ApkVerifyInfo;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

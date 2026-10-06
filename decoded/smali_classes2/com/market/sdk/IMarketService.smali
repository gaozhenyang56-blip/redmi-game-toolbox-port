.class public interface abstract Lcom/market/sdk/IMarketService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market/sdk/IMarketService$Stub;
    }
.end annotation


# virtual methods
.method public abstract B(Ljava/lang/String;Ljava/lang/String;Z)Lcom/market/sdk/ApkVerifyInfo;
.end method

.method public abstract B2([Ljava/lang/String;)I
.end method

.method public abstract B6()Ljava/lang/String;
.end method

.method public abstract D3()Z
.end method

.method public abstract E1(Ljava/lang/String;IILcom/market/sdk/IImageCallback;)V
.end method

.method public abstract F6(Landroid/os/ResultReceiver;)V
.end method

.method public abstract Q7([Ljava/lang/String;Landroid/os/ResultReceiver;)V
.end method

.method public abstract V4(Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
.end method

.method public abstract W7(Ljava/lang/String;)Z
.end method

.method public abstract b6(JLjava/lang/String;Ljava/util/List;Lcom/market/sdk/IDesktopRecommendResponse;)V
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
.end method

.method public abstract g0()Ljava/lang/String;
.end method

.method public abstract i7(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract n7(Landroid/os/ResultReceiver;)V
.end method

.method public abstract q3(JLjava/lang/String;Ljava/util/List;Landroid/os/ResultReceiver;)V
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
.end method

.method public abstract t3(Ljava/lang/String;Ljava/lang/String;Lcom/market/sdk/IImageCallback;)V
.end method

.method public abstract w6(Ljava/lang/String;Ljava/lang/String;Z)Lcom/market/sdk/ApkVerifyInfo;
.end method

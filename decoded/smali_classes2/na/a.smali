.class public Lna/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "NativeInterstitialAd"

    const-string p2, "cn constructor"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    const-string v0, "NativeInterstitialAd"

    const-string v1, "cn isReady"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public b()V
    .locals 2

    const-string v0, "NativeInterstitialAd"

    const-string v1, "cn loadAd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public c(Landroid/app/Activity;)V
    .locals 1

    const-string p1, "NativeInterstitialAd"

    const-string v0, "cn show"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

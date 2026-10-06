.class public interface abstract Lcom/miui/guardprovider/aidl/IAntiVirusServer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/guardprovider/aidl/IAntiVirusServer$Stub;,
        Lcom/miui/guardprovider/aidl/IAntiVirusServer$Default;
    }
.end annotation


# virtual methods
.method public abstract C2(Ljava/lang/String;Lcom/miui/guardprovider/aidl/IWifiDetectObserver;)I
.end method

.method public abstract D(Lcom/miui/guardprovider/aidl/IVirusObserver;)I
.end method

.method public abstract J1(Lcom/miui/guardprovider/aidl/IVirusObserver;Z)V
.end method

.method public abstract K(Ljava/lang/String;Lcom/miui/guardprovider/aidl/IWifiDetectObserver;)I
.end method

.method public abstract K0()Z
.end method

.method public abstract L5(Ljava/lang/String;I)V
.end method

.method public abstract O()[Ljava/lang/String;
.end method

.method public abstract O1(I)V
.end method

.method public abstract O3(Ljava/lang/String;Lcom/miui/guardprovider/aidl/IWifiDetectObserver;)I
.end method

.method public abstract P6(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract Q0()[Ljava/lang/String;
.end method

.method public abstract W(Ljava/lang/String;Z)V
.end method

.method public abstract X3(Ljava/lang/String;)Z
.end method

.method public abstract c5(Ljava/lang/String;Lcom/miui/guardprovider/aidl/IWifiDetectObserver;Ljava/lang/String;)I
.end method

.method public abstract getVersion()Ljava/lang/String;
.end method

.method public abstract h1()I
.end method

.method public abstract j2(I)V
.end method

.method public abstract m6(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract n0(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract q1(Lcom/miui/guardprovider/aidl/IVirusObserver;)I
.end method

.method public abstract r7(Ljava/lang/String;)Z
.end method

.method public abstract v0([Ljava/lang/String;Lcom/miui/guardprovider/aidl/IVirusObserver;Z)I
.end method

.method public abstract x0(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract y6([Ljava/lang/String;Lcom/miui/guardprovider/aidl/IVirusObserver;ZI)I
.end method

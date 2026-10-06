.class Lrk/e;
.super Lrk/d;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lrk/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/xiaomi/micloudsdk/utils/IXiaomiAccountServiceProxy;->invalidateSnsAccessToken(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public b(Landroid/os/IBinder;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2}, Lcom/xiaomi/micloudsdk/utils/IXiaomiAccountServiceProxy;->getSnsAccessToken(Landroid/os/IBinder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

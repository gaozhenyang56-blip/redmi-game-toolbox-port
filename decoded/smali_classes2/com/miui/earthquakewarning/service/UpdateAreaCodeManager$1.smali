.class Lcom/miui/earthquakewarning/service/UpdateAreaCodeManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/earthquakewarning/utils/LocationUtils$AreaResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/earthquakewarning/service/UpdateAreaCodeManager;->uploadSettings(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/earthquakewarning/service/UpdateAreaCodeManager;


# direct methods
.method constructor <init>(Lcom/miui/earthquakewarning/service/UpdateAreaCodeManager;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/earthquakewarning/service/UpdateAreaCodeManager$1;->this$0:Lcom/miui/earthquakewarning/service/UpdateAreaCodeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public areaFail()V
    .locals 0

    return-void
.end method

.method public areaSuccess(Landroid/location/Address;)V
    .locals 3

    invoke-virtual {p1}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    invoke-virtual {p1}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/earthquakewarning/utils/Utils;->setPreviousDistrict(Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1}, Landroid/location/Address;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1}, Landroid/location/Address;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    new-instance p1, Lcom/miui/earthquakewarning/service/RequestAreaCodeTask;

    invoke-direct {p1}, Lcom/miui/earthquakewarning/service/RequestAreaCodeTask;-><init>()V

    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

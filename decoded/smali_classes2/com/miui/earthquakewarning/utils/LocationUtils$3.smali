.class Lcom/miui/earthquakewarning/utils/LocationUtils$3;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/earthquakewarning/utils/LocationUtils;->getGeoArea(Landroid/content/Context;DDLcom/miui/earthquakewarning/utils/LocationUtils$AreaResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$latitude:D

.field final synthetic val$listener:Lcom/miui/earthquakewarning/utils/LocationUtils$AreaResultListener;

.field final synthetic val$longitude:D


# direct methods
.method constructor <init>(Landroid/content/Context;DDLcom/miui/earthquakewarning/utils/LocationUtils$AreaResultListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/earthquakewarning/utils/LocationUtils$3;->val$context:Landroid/content/Context;

    iput-wide p2, p0, Lcom/miui/earthquakewarning/utils/LocationUtils$3;->val$latitude:D

    iput-wide p4, p0, Lcom/miui/earthquakewarning/utils/LocationUtils$3;->val$longitude:D

    iput-object p6, p0, Lcom/miui/earthquakewarning/utils/LocationUtils$3;->val$listener:Lcom/miui/earthquakewarning/utils/LocationUtils$AreaResultListener;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    new-instance v0, Landroid/location/Geocoder;

    iget-object v1, p0, Lcom/miui/earthquakewarning/utils/LocationUtils$3;->val$context:Landroid/content/Context;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    :try_start_0
    iget-wide v1, p0, Lcom/miui/earthquakewarning/utils/LocationUtils$3;->val$latitude:D

    iget-wide v3, p0, Lcom/miui/earthquakewarning/utils/LocationUtils$3;->val$longitude:D

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    iget-object v1, p0, Lcom/miui/earthquakewarning/utils/LocationUtils$3;->val$listener:Lcom/miui/earthquakewarning/utils/LocationUtils$AreaResultListener;

    invoke-interface {v1, v0}, Lcom/miui/earthquakewarning/utils/LocationUtils$AreaResultListener;->areaSuccess(Landroid/location/Address;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/earthquakewarning/utils/LocationUtils$3;->val$listener:Lcom/miui/earthquakewarning/utils/LocationUtils$AreaResultListener;

    invoke-interface {v0}, Lcom/miui/earthquakewarning/utils/LocationUtils$AreaResultListener;->areaFail()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v0, p0, Lcom/miui/earthquakewarning/utils/LocationUtils$3;->val$listener:Lcom/miui/earthquakewarning/utils/LocationUtils$AreaResultListener;

    invoke-interface {v0}, Lcom/miui/earthquakewarning/utils/LocationUtils$AreaResultListener;->areaFail()V

    const-string v0, "LocationUtils"

    const-string v1, "getAddress exp "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

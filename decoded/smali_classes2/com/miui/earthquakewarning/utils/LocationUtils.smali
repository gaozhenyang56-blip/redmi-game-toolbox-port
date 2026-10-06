.class public Lcom/miui/earthquakewarning/utils/LocationUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/earthquakewarning/utils/LocationUtils$AreaResultListener;,
        Lcom/miui/earthquakewarning/utils/LocationUtils$LocationResultListener;
    }
.end annotation


# static fields
.field private static final CHECK_DELAY:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "LocationUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    invoke-static {}, Lcom/miui/earthquakewarning/utils/LocationUtils;->quitLooper()V

    return-void
.end method

.method public static getAdminAreaLocation2(Landroid/content/Context;Lcom/miui/earthquakewarning/utils/LocationUtils$LocationResultListener;)V
    .locals 2

    const-string v0, "location"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    :try_start_0
    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    invoke-interface {p1, v1}, Lcom/miui/earthquakewarning/utils/LocationUtils$LocationResultListener;->locationSuccess(Landroid/location/Location;)V

    goto :goto_0

    :cond_1
    invoke-static {p0, p1}, Lcom/miui/earthquakewarning/utils/LocationUtils;->requestLocationOnce2(Landroid/content/Context;Lcom/miui/earthquakewarning/utils/LocationUtils$LocationResultListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "LocationUtils"

    const-string v0, "getAdminAreaLocation failed to get location"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static getAdminAreaLocation3(Landroid/content/Context;Lcom/miui/earthquakewarning/utils/LocationUtils$AreaResultListener;)V
    .locals 8

    const-string v0, "location"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    :try_start_0
    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    move-object v2, p0

    move-object v7, p1

    invoke-static/range {v2 .. v7}, Lcom/miui/earthquakewarning/utils/LocationUtils;->getGeoArea(Landroid/content/Context;DDLcom/miui/earthquakewarning/utils/LocationUtils$AreaResultListener;)V

    goto :goto_0

    :cond_1
    invoke-static {p0, p1}, Lcom/miui/earthquakewarning/utils/LocationUtils;->requestLocationOnce3(Landroid/content/Context;Lcom/miui/earthquakewarning/utils/LocationUtils$AreaResultListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "LocationUtils"

    const-string p1, "getAdminAreaLocation failed to get location"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static getGeoArea(Landroid/content/Context;DDLcom/miui/earthquakewarning/utils/LocationUtils$AreaResultListener;)V
    .locals 8

    new-instance v7, Lcom/miui/earthquakewarning/utils/LocationUtils$3;

    move-object v0, v7

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/miui/earthquakewarning/utils/LocationUtils$3;-><init>(Landroid/content/Context;DDLcom/miui/earthquakewarning/utils/LocationUtils$AreaResultListener;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static quitLooper()V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :cond_0
    return-void
.end method

.method public static requestLocationOnce2(Landroid/content/Context;Lcom/miui/earthquakewarning/utils/LocationUtils$LocationResultListener;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string v0, "location"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Lcom/miui/earthquakewarning/utils/LocationUtils$1;

    invoke-direct {v0, p0, p1}, Lcom/miui/earthquakewarning/utils/LocationUtils$1;-><init>(Landroid/content/Context;Lcom/miui/earthquakewarning/utils/LocationUtils$LocationResultListener;)V

    new-instance p0, Ljava/lang/Thread;

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static requestLocationOnce3(Landroid/content/Context;Lcom/miui/earthquakewarning/utils/LocationUtils$AreaResultListener;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string v0, "location"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Lcom/miui/earthquakewarning/utils/LocationUtils$2;

    invoke-direct {v0, p0, p1}, Lcom/miui/earthquakewarning/utils/LocationUtils$2;-><init>(Landroid/content/Context;Lcom/miui/earthquakewarning/utils/LocationUtils$AreaResultListener;)V

    new-instance p0, Ljava/lang/Thread;

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method

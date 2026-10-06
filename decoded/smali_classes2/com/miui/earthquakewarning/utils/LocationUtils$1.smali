.class Lcom/miui/earthquakewarning/utils/LocationUtils$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/earthquakewarning/utils/LocationUtils;->requestLocationOnce2(Landroid/content/Context;Lcom/miui/earthquakewarning/utils/LocationUtils$LocationResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$listener:Lcom/miui/earthquakewarning/utils/LocationUtils$LocationResultListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/miui/earthquakewarning/utils/LocationUtils$LocationResultListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/earthquakewarning/utils/LocationUtils$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/earthquakewarning/utils/LocationUtils$1;->val$listener:Lcom/miui/earthquakewarning/utils/LocationUtils$LocationResultListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    :try_start_0
    iget-object v0, p0, Lcom/miui/earthquakewarning/utils/LocationUtils$1;->val$context:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Landroid/os/Looper;->prepare()V

    :cond_0
    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    new-instance v9, Lcom/miui/earthquakewarning/utils/LocationUtils$1$1;

    invoke-direct {v9, p0, v8, v0}, Lcom/miui/earthquakewarning/utils/LocationUtils$1$1;-><init>(Lcom/miui/earthquakewarning/utils/LocationUtils$1;Landroid/os/Handler;Landroid/location/LocationManager;)V

    const-string v2, "network"

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v7

    move-object v1, v0

    move-object v6, v9

    invoke-virtual/range {v1 .. v7}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    new-instance v1, Lcom/miui/earthquakewarning/utils/LocationUtils$1$2;

    invoke-direct {v1, p0, v0, v9}, Lcom/miui/earthquakewarning/utils/LocationUtils$1$2;-><init>(Lcom/miui/earthquakewarning/utils/LocationUtils$1;Landroid/location/LocationManager;Landroid/location/LocationListener;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v8, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {}, Landroid/os/Looper;->loop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "LocationUtils"

    const-string v1, "requestLocationOnce error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

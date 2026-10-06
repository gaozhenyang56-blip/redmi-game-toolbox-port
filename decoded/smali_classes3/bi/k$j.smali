.class Lbi/k$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbi/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbi/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbi/k$j$a;
    }
.end annotation


# instance fields
.field a:Lcom/qti/geofence/IGeofenceService;

.field final synthetic b:Lbi/k;


# direct methods
.method public constructor <init>(Lbi/k;Lcom/qti/geofence/IGeofenceService;)V
    .locals 0

    iput-object p1, p0, Lbi/k$j;->b:Lbi/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lbi/k$j;->a:Lcom/qti/geofence/IGeofenceService;

    return-void
.end method

.method private c(Lcom/qti/geofence/GeofenceData;)Lbi/c$d;
    .locals 8

    new-instance v7, Lbi/c$d;

    invoke-virtual {p1}, Lcom/qti/geofence/GeofenceData;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Lcom/qti/geofence/GeofenceData;->getLongitude()D

    move-result-wide v3

    invoke-virtual {p1}, Lcom/qti/geofence/GeofenceData;->getRadius()D

    move-result-wide v5

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lbi/c$d;-><init>(DDD)V

    invoke-virtual {p1}, Lcom/qti/geofence/GeofenceData;->getNotifyResponsiveness()I

    move-result v0

    invoke-virtual {v7, v0}, Lbi/c$d;->j(I)V

    invoke-static {}, Lbi/c$f;->values()[Lbi/c$f;

    move-result-object v0

    invoke-virtual {p1}, Lcom/qti/geofence/GeofenceData;->getTransitionType()Lcom/qti/geofence/GeofenceData$d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qti/geofence/GeofenceData$d;->a()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v7, v0}, Lbi/c$d;->k(Lbi/c$f;)V

    invoke-static {}, Lbi/c$e;->values()[Lbi/c$e;

    move-result-object v0

    invoke-virtual {p1}, Lcom/qti/geofence/GeofenceData;->getConfidence()Lcom/qti/geofence/GeofenceData$c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qti/geofence/GeofenceData$c;->a()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v7, v0}, Lbi/c$d;->h(Lbi/c$e;)V

    new-instance v0, Lbi/c$c;

    invoke-virtual {p1}, Lcom/qti/geofence/GeofenceData;->getDwellTime()I

    move-result v1

    invoke-virtual {p1}, Lcom/qti/geofence/GeofenceData;->getDwellType()Lcom/qti/geofence/GeofenceData$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qti/geofence/GeofenceData$b;->a()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lbi/c$c;-><init>(II)V

    invoke-virtual {v7, v0}, Lbi/c$d;->i(Lbi/c$c;)V

    return-object v7
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lbi/c$b;",
            "Lbi/c$d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lbi/k$j;->b:Lbi/k;

    invoke-static {v0}, Lbi/k;->z(Lbi/k;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbi/c$a;

    const/4 v7, 0x0

    if-nez v0, :cond_0

    invoke-static {}, Lbi/k;->B()Ljava/lang/String;

    move-result-object v0

    const-string v1, "callback is not registered"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7

    :cond_0
    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-static {}, Lbi/k;->A()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v3, p0, Lbi/k$j;->a:Lcom/qti/geofence/IGeofenceService;

    invoke-interface {v3, v1}, Lcom/qti/geofence/IGeofenceService;->z4(Ljava/util/List;)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {}, Lbi/k;->w()Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    :try_start_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qti/geofence/GeofenceData;

    invoke-direct {p0, v1}, Lbi/k$j;->c(Lcom/qti/geofence/GeofenceData;)Lbi/c$d;

    move-result-object v11

    const/4 v2, 0x0

    iget-object v3, p0, Lbi/k$j;->b:Lbi/k;

    invoke-static {v3}, Lbi/k;->x(Lbi/k;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lbi/k$e;

    invoke-virtual {v5}, Lbi/k$e;->d()I

    move-result v5

    invoke-virtual {v1}, Lcom/qti/geofence/GeofenceData;->getGeofenceId()I

    move-result v6

    if-ne v5, v6, :cond_2

    const/4 v2, 0x1

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbi/c$b;

    invoke-interface {v8, v3, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-nez v2, :cond_1

    new-instance v12, Lbi/k$j$a;

    invoke-direct {v12, p0, v7}, Lbi/k$j$a;-><init>(Lbi/k$j;Lbi/k$a;)V

    invoke-virtual {v1}, Lcom/qti/geofence/GeofenceData;->getAppTextData()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    :goto_1
    move-object v3, v2

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Lcom/qti/geofence/GeofenceData;->getAppBundleData()Landroid/os/Bundle;

    move-result-object v2

    goto :goto_1

    :goto_2
    iget-object v2, p0, Lbi/k$j;->b:Lbi/k;

    invoke-static {v2}, Lbi/k;->x(Lbi/k;)Ljava/util/Map;

    move-result-object v13

    new-instance v14, Lbi/k$e;

    iget-object v2, p0, Lbi/k$j;->b:Lbi/k;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/qti/geofence/GeofenceData;->getGeofenceId()I

    move-result v4

    move-object v1, v14

    move-object v5, v0

    move-object v6, v11

    invoke-direct/range {v1 .. v6}, Lbi/k$e;-><init>(Lbi/k;Ljava/lang/Object;ILbi/c$a;Lbi/c$d;)V

    invoke-interface {v13, v12, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v8, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    monitor-exit v9

    return-object v8

    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to recover geofences"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public b(Lbi/c$b;)V
    .locals 4

    if-eqz p1, :cond_2

    instance-of v0, p1, Lbi/k$j$a;

    if-eqz v0, :cond_2

    :try_start_0
    invoke-static {}, Lbi/k;->A()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lbi/k$j;->b:Lbi/k;

    invoke-static {v1}, Lbi/k;->x(Lbi/k;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbi/k$e;

    if-nez v1, :cond_1

    invoke-static {}, Lbi/k;->B()Ljava/lang/String;

    move-result-object v1

    const-string v2, "this request ID is unknown."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lbi/k$j;->b:Lbi/k;

    invoke-static {v1}, Lbi/k;->z(Lbi/k;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbi/c$a;

    if-eqz v1, :cond_0

    const/4 v2, 0x2

    const/16 v3, -0x66

    invoke-interface {v1, p1, v2, v3}, Lbi/c$a;->u(Lbi/c$b;II)V

    monitor-exit v0

    return-void

    :cond_0
    new-instance p1, Lbi/i;

    const-string v1, "Invalid Geofence handle"

    invoke-direct {p1, v1}, Lbi/i;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v2, p0, Lbi/k$j;->a:Lcom/qti/geofence/IGeofenceService;

    invoke-virtual {v1}, Lbi/k$e;->d()I

    move-result v1

    invoke-interface {v2, v1}, Lcom/qti/geofence/IGeofenceService;->r0(I)V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {}, Lbi/k;->w()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_2
    iget-object v0, p0, Lbi/k$j;->b:Lbi/k;

    invoke-static {v0}, Lbi/k;->x(Lbi/k;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p1
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed removeGeofence"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    new-instance p1, Lbi/i;

    const-string v0, "invalid input parameter"

    invoke-direct {p1, v0}, Lbi/i;-><init>(Ljava/lang/String;)V

    throw p1
.end method

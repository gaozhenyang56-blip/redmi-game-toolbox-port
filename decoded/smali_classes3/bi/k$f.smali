.class Lbi/k$f;
.super Lcom/qti/geofence/IGeofenceCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbi/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Lbi/k;


# direct methods
.method private constructor <init>(Lbi/k;)V
    .locals 0

    iput-object p1, p0, Lbi/k$f;->a:Lbi/k;

    invoke-direct {p0}, Lcom/qti/geofence/IGeofenceCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lbi/k;Lbi/k$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lbi/k$f;-><init>(Lbi/k;)V

    return-void
.end method


# virtual methods
.method public I1(IILandroid/location/Location;)V
    .locals 5

    invoke-static {}, Lbi/k;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lbi/k;->B()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTransitionEvent - geofenceHwId is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; event is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p3}, Lci/a;->d(Landroid/location/Location;)Lci/d;

    sget-object v0, Lci/d$a;->q:Lci/d$a;

    invoke-static {p2, v0}, Lci/a;->b(ILci/d$a;)Lci/d;

    invoke-static {}, Lbi/k;->w()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lbi/k$f;->a:Lbi/k;

    invoke-static {v1}, Lbi/k;->x(Lbi/k;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    monitor-exit v0

    return-void

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbi/k$j$a;

    iget-object v3, p0, Lbi/k$f;->a:Lbi/k;

    invoke-static {v3}, Lbi/k;->x(Lbi/k;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbi/k$e;

    invoke-virtual {v3}, Lbi/k$e;->d()I

    move-result v4

    if-ne v4, p1, :cond_1

    invoke-virtual {v3}, Lbi/k$e;->a()Lbi/c$a;

    move-result-object p1

    invoke-interface {p1, v2, p2, p3}, Lbi/c$a;->v(Lbi/c$b;ILandroid/location/Location;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public J2(III)V
    .locals 5

    invoke-static {}, Lbi/k;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lbi/k;->B()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRequestResultReturned - geofenceHwId is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; requestType is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; result is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lci/d$a;->r:Lci/d$a;

    invoke-static {p2, v0}, Lci/a;->b(ILci/d$a;)Lci/d;

    sget-object v0, Lci/d$a;->s:Lci/d$a;

    invoke-static {p3, v0}, Lci/a;->b(ILci/d$a;)Lci/d;

    if-eqz p3, :cond_4

    invoke-static {}, Lbi/k;->w()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lbi/k$f;->a:Lbi/k;

    invoke-static {v1}, Lbi/k;->x(Lbi/k;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    monitor-exit v0

    return-void

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbi/k$j$a;

    iget-object v3, p0, Lbi/k$f;->a:Lbi/k;

    invoke-static {v3}, Lbi/k;->x(Lbi/k;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbi/k$e;

    invoke-virtual {v3}, Lbi/k$e;->d()I

    move-result v4

    if-ne v4, p1, :cond_1

    const/4 p1, 0x1

    if-ne p1, p2, :cond_3

    iget-object p1, p0, Lbi/k$f;->a:Lbi/k;

    invoke-static {p1}, Lbi/k;->x(Lbi/k;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {v3}, Lbi/k$e;->a()Lbi/c$a;

    move-result-object p1

    invoke-interface {p1, v2, p2, p3}, Lbi/c$a;->u(Lbi/c$b;II)V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_4
    :goto_0
    return-void
.end method

.method public t(ILandroid/location/Location;)V
    .locals 4

    invoke-static {}, Lbi/k;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lbi/k;->B()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEngineReportStatus - status is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p2}, Lci/a;->d(Landroid/location/Location;)Lci/d;

    sget-object v0, Lci/d$a;->t:Lci/d$a;

    invoke-static {p1, v0}, Lci/a;->b(ILci/d$a;)Lci/d;

    invoke-static {}, Lbi/k;->y()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lbi/k$f;->a:Lbi/k;

    invoke-static {v1}, Lbi/k;->z(Lbi/k;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbi/k$j;

    iget-object v3, p0, Lbi/k$f;->a:Lbi/k;

    invoke-static {v3}, Lbi/k;->z(Lbi/k;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbi/c$a;

    invoke-interface {v2, p1, p2}, Lbi/c$a;->t(ILandroid/location/Location;)V

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

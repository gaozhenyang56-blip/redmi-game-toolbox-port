.class final Landroidx/core/location/i$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/location/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final a:Landroid/location/LocationManager;

.field private final b:Ljava/util/concurrent/Executor;

.field private final c:Landroid/os/Handler;

.field private d:Lb0/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb0/a<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field f:Ljava/lang/Runnable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/location/LocationManager;Ljava/util/concurrent/Executor;Lb0/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/LocationManager;",
            "Ljava/util/concurrent/Executor;",
            "Lb0/a<",
            "Landroid/location/Location;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/location/i$b;->a:Landroid/location/LocationManager;

    iput-object p2, p0, Landroidx/core/location/i$b;->b:Ljava/util/concurrent/Executor;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Landroidx/core/location/i$b;->c:Landroid/os/Handler;

    iput-object p3, p0, Landroidx/core/location/i$b;->d:Lb0/a;

    return-void
.end method

.method public static synthetic a(Lb0/a;Landroid/location/Location;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/core/location/i$b;->e(Lb0/a;Landroid/location/Location;)V

    return-void
.end method

.method public static synthetic b(Landroidx/core/location/i$b;)V
    .locals 0

    invoke-direct {p0}, Landroidx/core/location/i$b;->f()V

    return-void
.end method

.method private d()V
    .locals 3
    .annotation build Landroidx/annotation/RequiresPermission;
        anyOf = {
            "android.permission.ACCESS_COARSE_LOCATION",
            "android.permission.ACCESS_FINE_LOCATION"
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/core/location/i$b;->d:Lb0/a;

    iget-object v1, p0, Landroidx/core/location/i$b;->a:Landroid/location/LocationManager;

    invoke-virtual {v1, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    iget-object v1, p0, Landroidx/core/location/i$b;->f:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroidx/core/location/i$b;->c:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v0, p0, Landroidx/core/location/i$b;->f:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method private static synthetic e(Lb0/a;Landroid/location/Location;)V
    .locals 0

    invoke-interface {p0, p1}, Lb0/a;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic f()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/core/location/i$b;->f:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroidx/core/location/i$b;->onLocationChanged(Landroid/location/Location;)V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 1
    .annotation build Landroidx/annotation/RequiresPermission;
        anyOf = {
            "android.permission.ACCESS_COARSE_LOCATION",
            "android.permission.ACCESS_FINE_LOCATION"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroidx/core/location/i$b;->e:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/core/location/i$b;->e:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Landroidx/core/location/i$b;->d()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public g(J)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroidx/core/location/i$b;->e:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    new-instance v0, Landroidx/core/location/j;

    invoke-direct {v0, p0}, Landroidx/core/location/j;-><init>(Landroidx/core/location/i$b;)V

    iput-object v0, p0, Landroidx/core/location/i$b;->f:Ljava/lang/Runnable;

    iget-object v1, p0, Landroidx/core/location/i$b;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 3
    .param p1    # Landroid/location/Location;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresPermission;
        anyOf = {
            "android.permission.ACCESS_COARSE_LOCATION",
            "android.permission.ACCESS_FINE_LOCATION"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroidx/core/location/i$b;->e:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/core/location/i$b;->e:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroidx/core/location/i$b;->d:Lb0/a;

    iget-object v1, p0, Landroidx/core/location/i$b;->b:Ljava/util/concurrent/Executor;

    new-instance v2, Landroidx/core/location/k;

    invoke-direct {v2, v0, p1}, Landroidx/core/location/k;-><init>(Lb0/a;Landroid/location/Location;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Landroidx/core/location/i$b;->d()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresPermission;
        anyOf = {
            "android.permission.ACCESS_COARSE_LOCATION",
            "android.permission.ACCESS_FINE_LOCATION"
        }
    .end annotation

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/core/location/i$b;->onLocationChanged(Landroid/location/Location;)V

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

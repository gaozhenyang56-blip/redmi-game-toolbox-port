.class public final Landroidx/core/location/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/location/i$a;,
        Landroidx/core/location/i$b;,
        Landroidx/core/location/i$c;,
        Landroidx/core/location/i$d;
    }
.end annotation


# static fields
.field static final a:Ljava/util/WeakHashMap;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "sLocationListeners"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Landroidx/core/location/i;->a:Ljava/util/WeakHashMap;

    return-void
.end method

.method public static synthetic a(Lb0/a;Landroid/location/Location;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/core/location/i;->d(Lb0/a;Landroid/location/Location;)V

    return-void
.end method

.method public static b(Landroid/location/LocationManager;Ljava/lang/String;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Lb0/a;)V
    .locals 8
    .param p0    # Landroid/location/LocationManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/CancellationSignal;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lb0/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresPermission;
        anyOf = {
            "android.permission.ACCESS_COARSE_LOCATION",
            "android.permission.ACCESS_FINE_LOCATION"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/LocationManager;",
            "Ljava/lang/String;",
            "Landroid/os/CancellationSignal;",
            "Ljava/util/concurrent/Executor;",
            "Lb0/a<",
            "Landroid/location/Location;",
            ">;)V"
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/core/location/i$a;->a(Landroid/location/LocationManager;Ljava/lang/String;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Lb0/a;)V

    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    :cond_1
    invoke-virtual {p0, p1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v0}, Landroidx/core/location/b;->a(Landroid/location/Location;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x2710

    cmp-long v1, v1, v3

    if-gez v1, :cond_2

    new-instance p0, Landroidx/core/location/d;

    invoke-direct {p0, p4, v0}, Landroidx/core/location/d;-><init>(Lb0/a;Landroid/location/Location;)V

    invoke-interface {p3, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    new-instance v0, Landroidx/core/location/i$b;

    invoke-direct {v0, p0, p3, p4}, Landroidx/core/location/i$b;-><init>(Landroid/location/LocationManager;Ljava/util/concurrent/Executor;Lb0/a;)V

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    move-object v1, p0

    move-object v2, p1

    move-object v6, v0

    invoke-virtual/range {v1 .. v7}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    if-eqz p2, :cond_3

    new-instance p0, Landroidx/core/location/e;

    invoke-direct {p0, v0}, Landroidx/core/location/e;-><init>(Landroidx/core/location/i$b;)V

    invoke-virtual {p2, p0}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    :cond_3
    const-wide/16 p0, 0x7530

    invoke-virtual {v0, p0, p1}, Landroidx/core/location/i$b;->g(J)V

    return-void
.end method

.method public static c(Landroid/location/LocationManager;Ljava/lang/String;Lz/c;Ljava/util/concurrent/Executor;Lb0/a;)V
    .locals 0
    .param p0    # Landroid/location/LocationManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lz/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lb0/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresPermission;
        anyOf = {
            "android.permission.ACCESS_COARSE_LOCATION",
            "android.permission.ACCESS_FINE_LOCATION"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/LocationManager;",
            "Ljava/lang/String;",
            "Lz/c;",
            "Ljava/util/concurrent/Executor;",
            "Lb0/a<",
            "Landroid/location/Location;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lz/c;->b()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/CancellationSignal;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/core/location/i;->b(Landroid/location/LocationManager;Ljava/lang/String;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Lb0/a;)V

    return-void
.end method

.method private static synthetic d(Lb0/a;Landroid/location/Location;)V
    .locals 0

    invoke-interface {p0, p1}, Lb0/a;->accept(Ljava/lang/Object;)V

    return-void
.end method

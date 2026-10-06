.class Landroidx/core/location/i$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1e
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/location/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static b:Ljava/lang/reflect/Method;


# direct methods
.method static a(Landroid/location/LocationManager;Ljava/lang/String;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Lb0/a;)V
    .locals 1
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
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

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

    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroidx/core/location/h;

    invoke-direct {v0, p4}, Landroidx/core/location/h;-><init>(Lb0/a;)V

    invoke-static {p0, p1, p2, p3, v0}, Landroidx/core/location/f;->a(Landroid/location/LocationManager;Ljava/lang/String;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static b(Landroid/location/LocationManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroidx/core/location/GnssStatusCompat$a;)Z
    .locals 1
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .annotation build Landroidx/annotation/RequiresPermission;
        anyOf = {
            "android.permission.ACCESS_COARSE_LOCATION",
            "android.permission.ACCESS_FINE_LOCATION"
        }
    .end annotation

    sget-object p1, Landroidx/core/location/i$c;->a:Lm/g;

    monitor-enter p1

    :try_start_0
    invoke-virtual {p1, p3}, Lm/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/location/i$d;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/core/location/i$d;

    invoke-direct {v0, p3}, Landroidx/core/location/i$d;-><init>(Landroidx/core/location/GnssStatusCompat$a;)V

    :cond_0
    invoke-static {p0, p2, v0}, Landroidx/core/location/g;->a(Landroid/location/LocationManager;Ljava/util/concurrent/Executor;Landroid/location/GnssStatus$Callback;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1, p3, v0}, Lm/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    monitor-exit p1

    return p0

    :cond_1
    const/4 p0, 0x0

    monitor-exit p1

    return p0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static c(Landroid/location/LocationManager;Ljava/lang/String;Landroidx/core/location/LocationRequestCompat;Ljava/util/concurrent/Executor;Landroidx/core/location/c;)Z
    .locals 2
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 p1, 0x0

    const/16 p2, 0x1e

    if-lt p0, p2, :cond_2

    :try_start_0
    sget-object p0, Landroidx/core/location/i$a;->a:Ljava/lang/Class;

    if-nez p0, :cond_0

    const-string p0, "android.location.LocationRequest"

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    sput-object p0, Landroidx/core/location/i$a;->a:Ljava/lang/Class;

    :cond_0
    sget-object p0, Landroidx/core/location/i$a;->b:Ljava/lang/reflect/Method;

    if-nez p0, :cond_1

    const-class p0, Landroid/location/LocationManager;

    const-string p2, "requestLocationUpdates"

    const/4 p3, 0x3

    new-array p3, p3, [Ljava/lang/Class;

    sget-object p4, Landroidx/core/location/i$a;->a:Ljava/lang/Class;

    aput-object p4, p3, p1

    const-class p4, Ljava/util/concurrent/Executor;

    const/4 v0, 0x1

    aput-object p4, p3, v0

    const/4 p4, 0x2

    const-class v1, Landroid/location/LocationListener;

    aput-object v1, p3, p4

    invoke-virtual {p0, p2, p3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    sput-object p0, Landroidx/core/location/i$a;->b:Ljava/lang/reflect/Method;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    const/4 p0, 0x0

    throw p0

    :catch_0
    :cond_2
    return p1
.end method

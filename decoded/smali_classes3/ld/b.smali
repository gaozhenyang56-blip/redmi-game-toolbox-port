.class public Lld/b;
.super Loe/b;
.source "SourceFile"


# static fields
.field private static c:Lld/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Loe/b;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static declared-synchronized s(Landroid/content/Context;)Loe/a;
    .locals 2

    const-class v0, Lld/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lld/b;->c:Lld/b;

    if-nez v1, :cond_0

    new-instance v1, Lld/b;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lld/b;-><init>(Landroid/content/Context;)V

    sput-object v1, Lld/b;->c:Lld/b;

    :cond_0
    sget-object p0, Lld/b;->c:Lld/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

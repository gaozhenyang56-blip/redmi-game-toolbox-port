.class public Lw9/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw9/b$a;
    }
.end annotation


# static fields
.field private static volatile a:Lw9/b;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lw9/b;
    .locals 2

    sget-object v0, Lw9/b;->a:Lw9/b;

    if-nez v0, :cond_1

    const-class v0, Lw9/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lw9/b;->a:Lw9/b;

    if-nez v1, :cond_0

    new-instance v1, Lw9/b;

    invoke-direct {v1}, Lw9/b;-><init>()V

    sput-object v1, Lw9/b;->a:Lw9/b;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lw9/b;->a:Lw9/b;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/Object;Lw9/b$a;)V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public c(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public declared-synchronized d(Ljava/lang/Object;)V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public e(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

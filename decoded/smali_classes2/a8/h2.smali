.class public La8/h2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:La8/h2;


# instance fields
.field private a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, La8/h2;->a:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static declared-synchronized a()La8/h2;
    .locals 2

    const-class v0, La8/h2;

    monitor-enter v0

    :try_start_0
    sget-object v1, La8/h2;->b:La8/h2;

    if-nez v1, :cond_0

    new-instance v1, La8/h2;

    invoke-direct {v1}, La8/h2;-><init>()V

    sput-object v1, La8/h2;->b:La8/h2;

    :cond_0
    sget-object v1, La8/h2;->b:La8/h2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public b()V
    .locals 1

    iget-object v0, p0, La8/h2;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

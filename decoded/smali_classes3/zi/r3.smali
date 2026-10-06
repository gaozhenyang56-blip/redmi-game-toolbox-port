.class public Lzi/r3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile b:Lzi/r3;


# instance fields
.field private a:Lzi/q3;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lzi/r3;
    .locals 2

    sget-object v0, Lzi/r3;->b:Lzi/r3;

    if-nez v0, :cond_1

    const-class v0, Lzi/r3;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lzi/r3;->b:Lzi/r3;

    if-nez v1, :cond_0

    new-instance v1, Lzi/r3;

    invoke-direct {v1}, Lzi/r3;-><init>()V

    sput-object v1, Lzi/r3;->b:Lzi/r3;

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
    sget-object v0, Lzi/r3;->b:Lzi/r3;

    return-object v0
.end method


# virtual methods
.method public a()Lzi/q3;
    .locals 1

    iget-object v0, p0, Lzi/r3;->a:Lzi/q3;

    return-object v0
.end method

.method public c(Lzi/q3;)V
    .locals 0

    iput-object p1, p0, Lzi/r3;->a:Lzi/q3;

    return-void
.end method

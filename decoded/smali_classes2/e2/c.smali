.class public Le2/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static volatile a:Le2/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Le2/a;
    .locals 2

    sget-object v0, Le2/c;->a:Le2/a;

    if-nez v0, :cond_1

    const-class v0, Le2/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, Le2/c;->a:Le2/a;

    if-nez v1, :cond_0

    new-instance v1, Le2/a;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Le2/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Le2/c;->a:Le2/a;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Le2/c;->a:Le2/a;

    return-object p0
.end method

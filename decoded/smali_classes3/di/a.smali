.class public Ldi/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z

.field private static volatile b:Landroid/app/Application;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static declared-synchronized a()Landroid/app/Application;
    .locals 3

    const-class v0, Ldi/a;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Ldi/a;->a:Z

    if-eqz v1, :cond_1

    sget-object v1, Ldi/a;->b:Landroid/app/Application;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "getApplicationContext should be called after setApplicationContext() or ensureApplicationContext()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    sget-object v1, Ldi/a;->b:Landroid/app/Application;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

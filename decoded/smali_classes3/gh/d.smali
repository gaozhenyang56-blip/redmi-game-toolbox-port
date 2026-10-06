.class public Lgh/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgh/d$b;
    }
.end annotation


# direct methods
.method public static synthetic a()V
    .locals 0

    invoke-static {}, Lgh/d;->c()V

    return-void
.end method

.method public static b()V
    .locals 2

    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object v0

    new-instance v1, Lgh/c;

    invoke-direct {v1}, Lgh/c;-><init>()V

    invoke-virtual {v0, v1}, Lef/z;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic c()V
    .locals 2

    sget-boolean v0, Lsl/a;->a:Z

    if-nez v0, :cond_1

    invoke-static {}, Ldb/c;->b()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1

    new-instance v0, Lgh/d$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgh/d$b;-><init>(Lgh/d$a;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    :goto_0
    return-void
.end method

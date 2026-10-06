.class public final Lcom/gzy/redmiport/GameLaunch;
.super Ljava/lang/Object;
.source "GameLaunch.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static launchPackage(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 17
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/gzy/redmiport/GameLaunch;->start(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method public static start(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 4

    .line 10
    if-eqz p1, :cond_11

    .line 11
    :try_start_2
    instance-of v0, p0, Landroid/app/Activity;

    if-nez v0, :cond_b

    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 12
    :cond_b
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 13
    goto :goto_2f

    :catchall_f
    move-exception p1

    goto :goto_19

    .line 10
    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No launch activity"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_19
    .catchall {:try_start_2 .. :try_end_19} :catchall_f

    .line 13
    :goto_19
    const-string p2, "Public game launch"

    invoke-static {p2, p1}, Lcom/gzy/redmidiag/CrashReporter;->record(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 14
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/gzy/redmiport/GameLaunch$1;

    invoke-direct {p2, p0}, Lcom/gzy/redmiport/GameLaunch$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    :goto_2f
    return-void
.end method

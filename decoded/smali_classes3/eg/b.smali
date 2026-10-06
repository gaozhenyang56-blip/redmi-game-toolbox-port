.class public Leg/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leg/b$c;,
        Leg/b$b;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    new-instance v0, Leg/b$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Leg/b$b;-><init>(Leg/b$a;)V

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.google.android.gms.ads.identifier.service.START"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.google.android.gms"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    new-instance v2, Leg/b$c;

    invoke-virtual {v0}, Leg/b$b;->a()Landroid/os/IBinder;

    move-result-object v3

    invoke-direct {v2, v3}, Leg/b$c;-><init>(Landroid/os/IBinder;)V

    invoke-virtual {v2}, Leg/b$c;->v1()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v1

    :catch_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    return-object v1
.end method

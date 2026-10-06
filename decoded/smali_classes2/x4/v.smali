.class public Lx4/v;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "bindService fail "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ContextCompat"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static b(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    const-class v1, Landroid/content/ContextWrapper;

    const-string v2, "bindServiceAsUser"

    const/4 v3, 0x4

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Intent;

    aput-object v5, v4, v0

    const-class v5, Landroid/content/ServiceConnection;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x2

    aput-object v5, v4, v7

    const-class v5, Landroid/os/UserHandle;

    const/4 v8, 0x3

    aput-object v5, v4, v8

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v0

    aput-object p2, v3, v6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v7

    aput-object p4, v3, v8

    invoke-static {v1, p0, v2, v4, v3}, Lbh/d;->a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "ContextCompat"

    const-string p2, "bindServiceAsUser exception!!!"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method public static c(Landroid/app/NotificationManager;Ljava/lang/String;ILandroid/os/UserHandle;)V
    .locals 7

    :try_start_0
    const-string v0, "cancelAsUser"

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-class v3, Landroid/os/UserHandle;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v5

    aput-object p3, v1, v6

    invoke-static {p0, v0, v2, v1}, Lbh/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "ContextCompat"

    const-string p2, "cancelAsUser exception!!!"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static d(Landroid/app/NotificationManager;I)V
    .locals 2

    invoke-static {}, Lx4/z1;->d()Landroid/os/UserHandle;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v0}, Lx4/v;->c(Landroid/app/NotificationManager;Ljava/lang/String;ILandroid/os/UserHandle;)V

    return-void
.end method

.method public static e(Landroid/content/Context;ILandroid/os/UserHandle;)Landroid/content/Context;
    .locals 8

    :try_start_0
    const-class v0, Landroid/content/ContextWrapper;

    const-string v1, "createPackageContextAsUser"

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-class v4, Landroid/os/UserHandle;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v6

    aput-object p2, v2, v7

    invoke-static {v0, p0, v1, v3, v2}, Lbh/d;->a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "ContextCompat"

    const-string v0, "createPackageContextAsUser exception!!!"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object p0
.end method

.method public static f(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;
    .locals 11

    :try_start_0
    const-class v0, Landroid/app/PendingIntent;

    const-string v1, "getActivityAsUser"

    const/4 v2, 0x6

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-class v7, Landroid/content/Intent;

    const/4 v8, 0x2

    aput-object v7, v3, v8

    const/4 v7, 0x3

    aput-object v4, v3, v7

    const-class v4, Landroid/os/Bundle;

    const/4 v9, 0x4

    aput-object v4, v3, v9

    const-class v4, Landroid/os/UserHandle;

    const/4 v10, 0x5

    aput-object v4, v3, v10

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v6

    aput-object p2, v2, v8

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v7

    aput-object p4, v2, v9

    aput-object p5, v2, v10

    invoke-static {v0, v1, v3, v2}, Lbh/d;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "ContextCompat"

    const-string v2, "getActivityAsUser exception!!!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public static g(Landroid/content/Context;ILandroid/content/Intent;)Landroid/app/PendingIntent;
    .locals 6

    invoke-static {}, Lx4/z1;->d()Landroid/os/UserHandle;

    move-result-object v5

    const/high16 v3, 0xc000000

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lx4/v;->f(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static h(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;
    .locals 10

    :try_start_0
    const-class v0, Landroid/app/PendingIntent;

    const-string v1, "getBroadcastAsUser"

    const/4 v2, 0x5

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-class v7, Landroid/content/Intent;

    const/4 v8, 0x2

    aput-object v7, v3, v8

    const/4 v7, 0x3

    aput-object v4, v3, v7

    const-class v4, Landroid/os/UserHandle;

    const/4 v9, 0x4

    aput-object v4, v3, v9

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v6

    aput-object p2, v2, v8

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v7

    aput-object p4, v2, v9

    invoke-static {v0, v1, v3, v2}, Lbh/d;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/PendingIntent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "ContextCompat"

    const-string p2, "getBroadcastAsUser exception!!!"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static i(Landroid/content/Context;ILandroid/content/Intent;)Landroid/app/PendingIntent;
    .locals 2

    invoke-static {}, Lx4/z1;->d()Landroid/os/UserHandle;

    move-result-object v0

    const/high16 v1, 0xc000000

    invoke-static {p0, p1, p2, v1, v0}, Lx4/v;->h(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static j(Landroid/content/Context;)I
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-class v1, Landroid/content/ContextWrapper;

    const-string v2, "getUserId"

    const/4 v3, 0x0

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v1, p0, v2, v3, v4}, Lbh/d;->a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "ContextCompat"

    const-string v2, "getUserId exception: "

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method public static k(Landroid/app/NotificationManager;ILandroid/app/Notification;)V
    .locals 2

    invoke-static {}, Lx4/z1;->d()Landroid/os/UserHandle;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, p2, v0}, Lx4/v;->l(Landroid/app/NotificationManager;Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    return-void
.end method

.method public static l(Landroid/app/NotificationManager;Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V
    .locals 8

    :try_start_0
    const-string v0, "notifyAsUser"

    const/4 v1, 0x4

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-class v3, Landroid/app/Notification;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    const-class v3, Landroid/os/UserHandle;

    const/4 v7, 0x3

    aput-object v3, v2, v7

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v5

    aput-object p3, v1, v6

    aput-object p4, v1, v7

    invoke-static {p0, v0, v2, v1}, Lbh/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "ContextCompat"

    const-string p2, "notifyAsUser exception!!!"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;
    .locals 0
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/BroadcastReceiver;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/content/IntentFilter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {p0, p1, p2, p3}, Landroidx/core/content/ContextCompat;->k(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static n(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;
    .locals 0
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/BroadcastReceiver;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/content/IntentFilter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static/range {p0 .. p5}, Landroidx/core/content/ContextCompat;->l(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static o(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;I)V
    .locals 7

    const-string v4, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lx4/v;->p(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)V

    return-void
.end method

.method public static p(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)V
    .locals 15

    move-object v0, p0

    const-class v1, Ljava/lang/String;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v3, "registerReceiverAsUser exception!!!"

    const-string v4, "ContextCompat"

    const-string v5, "registerReceiverAsUser"

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x5

    const/16 v12, 0x22

    if-le v2, v12, :cond_0

    :try_start_0
    const-class v2, Landroid/content/ContextWrapper;

    const/4 v12, 0x6

    new-array v13, v12, [Ljava/lang/Class;

    const-class v14, Landroid/content/BroadcastReceiver;

    aput-object v14, v13, v10

    const-class v14, Landroid/os/UserHandle;

    aput-object v14, v13, v9

    const-class v14, Landroid/content/IntentFilter;

    aput-object v14, v13, v8

    aput-object v1, v13, v7

    const-class v1, Landroid/os/Handler;

    aput-object v1, v13, v6

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v13, v11

    new-array v1, v12, [Ljava/lang/Object;

    aput-object p1, v1, v10

    aput-object p2, v1, v9

    aput-object p3, v1, v8

    aput-object p4, v1, v7

    aput-object p5, v1, v6

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v11

    invoke-static {v2, p0, v5, v13, v1}, Lbh/d;->a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-class v2, Landroid/content/ContextWrapper;

    new-array v12, v11, [Ljava/lang/Class;

    const-class v13, Landroid/content/BroadcastReceiver;

    aput-object v13, v12, v10

    const-class v13, Landroid/os/UserHandle;

    aput-object v13, v12, v9

    const-class v13, Landroid/content/IntentFilter;

    aput-object v13, v12, v8

    aput-object v1, v12, v7

    const-class v1, Landroid/os/Handler;

    aput-object v1, v12, v6

    new-array v1, v11, [Ljava/lang/Object;

    aput-object p1, v1, v10

    aput-object p2, v1, v9

    aput-object p3, v1, v8

    aput-object p4, v1, v7

    aput-object p5, v1, v6

    invoke-static {v2, p0, v5, v12, v1}, Lbh/d;->a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v4, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static q(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 7

    :try_start_0
    const-class v0, Landroid/content/ContextWrapper;

    const-string v1, "sendBroadcastAsUser"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Intent;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Landroid/os/UserHandle;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    aput-object p2, v2, v6

    invoke-static {v0, p0, v1, v3, v2}, Lbh/d;->a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "ContextCompat"

    const-string p2, "sendBroadcastAsUser exception!!!"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static r(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    .locals 8

    :try_start_0
    const-class v0, Landroid/content/ContextWrapper;

    const-string v1, "sendBroadcastAsUser"

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Intent;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Landroid/os/UserHandle;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-class v4, Ljava/lang/String;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    aput-object p2, v2, v6

    aput-object p3, v2, v7

    invoke-static {v0, p0, v1, v3, v2}, Lbh/d;->a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "ContextCompat"

    const-string p2, "sendBroadcastAsUser exception!!!"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static s(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 9
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    :try_start_0
    const-class v0, Landroid/content/ContextWrapper;

    const-string v1, "sendBroadcastAsUser"

    const/4 v2, 0x4

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Intent;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Landroid/os/UserHandle;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-class v4, Ljava/lang/String;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    const-class v4, Landroid/os/Bundle;

    const/4 v8, 0x3

    aput-object v4, v3, v8

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    aput-object p2, v2, v6

    aput-object p3, v2, v7

    aput-object p4, v2, v8

    invoke-static {v0, p0, v1, v3, v2}, Lbh/d;->a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "sendBroadcastAsUser fail "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ContextCompat"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static t(Landroid/app/Activity;Landroid/content/Intent;Landroid/os/Bundle;ZI)V
    .locals 0
    invoke-static {p0, p1, p2}, Lcom/gzy/redmiport/GameLaunch;->start(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V
    return-void
.end method

.method public static u(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 1
    const/4 v0, 0x0
    invoke-static {p0, p1, v0}, Lcom/gzy/redmiport/GameLaunch;->start(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V
    return-void
.end method

.method public static v(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;Landroid/os/Bundle;)V
    .locals 8

    :try_start_0
    const-class v0, Landroid/content/ContextWrapper;

    const-string v1, "startActivityAsUser"

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Intent;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Landroid/os/Bundle;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-class v4, Landroid/os/UserHandle;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    aput-object p3, v2, v6

    aput-object p2, v2, v7

    invoke-static {v0, p0, v1, v3, v2}, Lbh/d;->a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "ContextCompat"

    const-string p2, "startActivityAsUser exception!!!"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static w(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 7

    :try_start_0
    const-class v0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "startServiceAsUser"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Intent;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Landroid/os/UserHandle;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    aput-object p2, v2, v6

    invoke-static {v0, p0, v1, v3, v2}, Lbh/d;->a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "ContextCompat"

    const-string p2, "startServiceAsUser exception!!!"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static x(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unBindService fail :"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ContextCompat"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

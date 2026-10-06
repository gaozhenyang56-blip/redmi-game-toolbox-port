.class public Lvg/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Landroid/content/Context;I)V
    .locals 10

    const-string v0, "asInterface"

    const-class v1, Ljava/lang/String;

    const-string v2, "ColorLightManager"

    :try_start_0
    const-string v3, "android.os.ServiceManager"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getService"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    new-array v8, v5, [Ljava/lang/Object;

    const-string v9, "notification"

    aput-object v9, v8, v7

    invoke-static {v3, v4, v6, v8}, Lbh/f;->h(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    const-string v4, "android.app.INotificationManager$Stub"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    new-array v6, v5, [Ljava/lang/Class;

    const-class v8, Landroid/os/IBinder;

    aput-object v8, v6, v7

    new-array v8, v5, [Ljava/lang/Object;

    aput-object v3, v8, v7

    invoke-static {v4, v0, v6, v8}, Lbh/f;->h(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-class v4, Landroid/os/IBinder;

    const-string v6, "getColorLightManager"

    const/4 v8, 0x0

    new-array v9, v7, [Ljava/lang/Object;

    invoke-static {v3, v4, v6, v8, v9}, Lbh/f;->b(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    const-string v4, "miui.lights.ILightsManager$Stub"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    new-array v6, v5, [Ljava/lang/Class;

    const-class v8, Landroid/os/IBinder;

    aput-object v8, v6, v7

    new-array v8, v5, [Ljava/lang/Object;

    aput-object v3, v8, v7

    invoke-static {v4, v0, v6, v8}, Lbh/f;->h(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v3, "setColorfulLight"

    const/4 v4, 0x3

    new-array v6, v4, [Ljava/lang/Class;

    aput-object v1, v6, v7

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v6, v5

    const/4 v8, 0x2

    aput-object v1, v6, v8

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v5

    invoke-static {}, Lx4/z1;->y()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v8

    invoke-static {v0, v3, v6, v1}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mode "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " setColorfulLight"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lvg/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lvg/b;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lvg/b;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lvg/a;->a(Landroid/content/Context;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lvg/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lvg/b;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lvg/b;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    invoke-static {p0, v0}, Lvg/a;->a(Landroid/content/Context;I)V

    :cond_1
    :goto_0
    return-void
.end method

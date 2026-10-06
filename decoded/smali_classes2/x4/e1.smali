.class public Lx4/e1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String; = "NotificationUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 7

    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    const-string v1, "android.app.Notification$Builder"

    invoke-static {v1}, Lbh/d$a;->d(Ljava/lang/String;)Lbh/d$a;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    aput-object p1, v2, v6

    invoke-virtual {v1, v3, v2}, Lbh/d$a;->j([Ljava/lang/Class;[Ljava/lang/Object;)Lbh/d$a;

    move-result-object p0

    invoke-virtual {p0}, Lbh/d$a;->f()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Notification$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const p1, 0x7f080f25

    :try_start_1
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v0, p0

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    sget-object p0, Lx4/e1;->a:Ljava/lang/String;

    const-string v1, "createNotificationBuilder exception: "

    invoke-static {p0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object p0, v0

    :goto_1
    return-object p0
.end method

.method public static b(Landroid/app/NotificationManager;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lx4/e1;->d(Landroid/app/NotificationManager;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void
.end method

.method public static c(Landroid/app/NotificationManager;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lx4/e1;->d(Landroid/app/NotificationManager;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void
.end method

.method public static d(Landroid/app/NotificationManager;Ljava/lang/String;Ljava/lang/String;IZZ)V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Landroid/app/NotificationChannel;

    invoke-direct {v0, p1, p2, p3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1, p1}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    const/4 p1, 0x1

    new-array p2, p1, [J

    const-wide/16 v1, 0x0

    const/4 p3, 0x0

    aput-wide v1, p2, p3

    invoke-virtual {v0, p2}, Landroid/app/NotificationChannel;->setVibrationPattern([J)V

    if-eqz p4, :cond_1

    invoke-static {}, Lx4/t;->h()I

    move-result p2

    const/16 p4, 0xd

    if-lt p2, p4, :cond_1

    const-class p2, Landroid/app/NotificationChannel;

    const-string p4, "mBlockableSystem"

    invoke-virtual {p2, p4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, v0, p4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    if-eqz p5, :cond_2

    invoke-static {}, Lcom/miui/common/e;->c()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0}, Lx4/e1;->f(Landroid/content/Context;Landroid/app/NotificationChannel;)Z

    goto :goto_0

    :cond_2
    const-string p2, "createNotificationChannel"

    new-array p4, p1, [Ljava/lang/Class;

    const-string p5, "android.app.NotificationChannel"

    invoke-static {p5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p5

    aput-object p5, p4, p3

    new-array p1, p1, [Ljava/lang/Object;

    aput-object v0, p1, p3

    invoke-static {p0, p2, p4, p1}, Lbh/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lx4/e1;->a:Ljava/lang/String;

    const-string p2, "createNotificationChannel exception: "

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 10

    const-string v0, "createNotificationChannelsForPackage"

    const-class v1, Ljava/lang/String;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-ge v2, v3, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {p3}, Lx4/e1;->h(I)I

    move-result p3

    const-string v2, "android.app.NotificationChannel"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const-class v6, Ljava/lang/CharSequence;

    const/4 v7, 0x1

    aput-object v6, v4, v7

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x2

    aput-object v6, v4, v8

    new-array v9, v3, [Ljava/lang/Object;

    aput-object p1, v9, v5

    aput-object p2, v9, v7

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v9, v8

    invoke-static {v2, v4, v9}, Lbh/d;->h(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    new-array p2, v7, [Ljava/lang/Object;

    aput-object p1, p2, v5

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/miui/networkassistant/utils/PackageUtil;->getUidByPackageName(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    const/4 p3, -0x1

    if-ne p2, p3, :cond_1

    return-void

    :cond_1
    const-string p3, "android.app.NotificationManager"

    invoke-static {p3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p3

    const-string v2, "getService"

    const/4 v4, 0x0

    new-array v9, v5, [Ljava/lang/Object;

    invoke-static {p3, v2, v4, v9}, Lbh/d;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    new-array v2, v3, [Ljava/lang/Class;

    aput-object v1, v2, v5

    aput-object v6, v2, v7

    const-class v4, Landroid/content/pm/ParceledListSlice;

    aput-object v4, v2, v8

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v7

    new-instance v9, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v9, p1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    aput-object v9, v4, v8

    invoke-static {p3, v0, v2, v4}, Lbh/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Lx4/z1;->u(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "android.provider.MiuiSettings$Secure"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v9, "SECOND_USER_ID"

    invoke-static {v4, v9, v1}, Lbh/d;->g(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/16 v9, -0x2710

    invoke-static {v2, v4, v9, v5}, La8/c0;->h(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    invoke-static {v2, p2}, Lx4/z1;->j(II)I

    move-result p2

    new-array v2, v3, [Ljava/lang/Class;

    aput-object v1, v2, v5

    aput-object v6, v2, v7

    const-class v1, Landroid/content/pm/ParceledListSlice;

    aput-object v1, v2, v8

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v7

    new-instance p0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p0, p1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    aput-object p0, v1, v8

    invoke-static {p3, v0, v2, v1}, Lbh/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lx4/e1;->a:Ljava/lang/String;

    const-string p2, "createNotificationChannelForAllUsers exception: "

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public static f(Landroid/content/Context;Landroid/app/NotificationChannel;)Z
    .locals 9

    const-string v0, "com.miui.securitymanager"

    sget-boolean v1, Lgh/b;->b:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-static {}, Lgh/b;->h()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-class v1, Landroid/app/NotificationManager;

    const-string v3, "getService"

    const/4 v4, 0x0

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v4, v5}, Lbh/d;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0}, Lcom/miui/networkassistant/utils/PackageUtil;->getUidByPackageName(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    const/4 v3, -0x1

    if-ne p0, v3, :cond_1

    return v2

    :cond_1
    const-string v3, "createNotificationChannelsForPackage"

    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v2

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const-class v6, Landroid/content/pm/ParceledListSlice;

    const/4 v8, 0x2

    aput-object v6, v5, v8

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v4, v7

    new-instance p0, Landroid/content/pm/ParceledListSlice;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    aput-object p0, v4, v8

    invoke-static {v1, v3, v5, v4}, Lbh/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v7

    :catch_0
    move-exception p0

    sget-object p1, Lx4/e1;->a:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return v2
.end method

.method public static g(Landroid/app/Notification;)Ljava/lang/String;
    .locals 4

    :try_start_0
    const-class v0, Ljava/lang/String;

    const-string v1, "getChannelId"

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2, v3}, Lbh/d;->b(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lx4/e1;->a:Ljava/lang/String;

    const-string v1, "getChannelId exception: "

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string p0, "com.miui.securitycenter"

    :goto_0
    return-object p0
.end method

.method private static h(I)I
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x3

    const/16 v2, 0x1a

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    :try_start_0
    const-class p0, Landroid/app/NotificationManager;

    const-string v0, "IMPORTANCE_DEFAULT"

    invoke-static {p0, v0}, Lbh/d;->f(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1
    const-class p0, Landroid/app/NotificationManager;

    const-string v0, "IMPORTANCE_MAX"

    invoke-static {p0, v0}, Lbh/d;->f(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_2
    const-class p0, Landroid/app/NotificationManager;

    const-string v0, "IMPORTANCE_HIGH"

    invoke-static {p0, v0}, Lbh/d;->f(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_3
    const-class p0, Landroid/app/NotificationManager;

    const-string v0, "IMPORTANCE_LOW"

    invoke-static {p0, v0}, Lbh/d;->f(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_4
    const-class p0, Landroid/app/NotificationManager;

    const-string v0, "IMPORTANCE_MIN"

    invoke-static {p0, v0}, Lbh/d;->f(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_5
    const-class p0, Landroid/app/NotificationManager;

    const-string v0, "IMPORTANCE_NONE"

    invoke-static {p0, v0}, Lbh/d;->f(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lx4/e1;->a:Ljava/lang/String;

    const-string v2, "getImportance exception: "

    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public static i(Landroid/app/Notification;Z)V
    .locals 5

    :try_start_0
    invoke-static {p0}, Lbh/d$a;->e(Ljava/lang/Object;)Lbh/d$a;

    move-result-object p0

    const-string v0, "extraNotification"

    invoke-virtual {p0, v0}, Lbh/d$a;->g(Ljava/lang/String;)Lbh/d$a;

    move-result-object p0

    invoke-virtual {p0}, Lbh/d$a;->l()Lbh/d$a;

    move-result-object p0

    const-string v0, "setCustomizedIcon"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v1, v4

    invoke-virtual {p0, v0, v2, v1}, Lbh/d$a;->b(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lbh/d$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lx4/e1;->a:Ljava/lang/String;

    const-string v0, "setCustomizedIcon exception: "

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static j(Landroid/app/Notification;Z)V
    .locals 5

    :try_start_0
    invoke-static {p0}, Lbh/d$a;->e(Ljava/lang/Object;)Lbh/d$a;

    move-result-object p0

    const-string v0, "extraNotification"

    invoke-virtual {p0, v0}, Lbh/d$a;->g(Ljava/lang/String;)Lbh/d$a;

    move-result-object p0

    invoke-virtual {p0}, Lbh/d$a;->l()Lbh/d$a;

    move-result-object p0

    const-string v0, "setEnableFloat"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v1, v4

    invoke-virtual {p0, v0, v2, v1}, Lbh/d$a;->b(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lbh/d$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lx4/e1;->a:Ljava/lang/String;

    const-string v0, "setEnableFloat exception: "

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static k(Landroid/app/Notification;Z)V
    .locals 5

    :try_start_0
    invoke-static {p0}, Lbh/d$a;->e(Ljava/lang/Object;)Lbh/d$a;

    move-result-object p0

    const-string v0, "extraNotification"

    invoke-virtual {p0, v0}, Lbh/d$a;->g(Ljava/lang/String;)Lbh/d$a;

    move-result-object p0

    invoke-virtual {p0}, Lbh/d$a;->l()Lbh/d$a;

    move-result-object p0

    const-string v0, "setEnableKeyguard"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v1, v4

    invoke-virtual {p0, v0, v2, v1}, Lbh/d$a;->b(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lbh/d$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lx4/e1;->a:Ljava/lang/String;

    const-string v0, "setEnableKeyguard exception: "

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static l(Landroid/app/Notification;I)V
    .locals 5

    :try_start_0
    invoke-static {p0}, Lbh/d$a;->e(Ljava/lang/Object;)Lbh/d$a;

    move-result-object p0

    const-string v0, "extraNotification"

    invoke-virtual {p0, v0}, Lbh/d$a;->g(Ljava/lang/String;)Lbh/d$a;

    move-result-object p0

    invoke-virtual {p0}, Lbh/d$a;->l()Lbh/d$a;

    move-result-object p0

    const-string v0, "setMessageCount"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v4

    invoke-virtual {p0, v0, v2, v1}, Lbh/d$a;->b(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lbh/d$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lx4/e1;->a:Ljava/lang/String;

    const-string v0, "setMessageCount exception: "

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

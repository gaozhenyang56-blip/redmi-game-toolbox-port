.class public Lse/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a(Lmiui/security/SecurityManager;Landroid/content/Context;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lse/e;->d(Lmiui/security/SecurityManager;Landroid/content/Context;Z)V

    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 4

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v2, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    if-ne v2, p2, :cond_0

    iget-object v2, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    if-eqz v2, :cond_0

    :goto_0
    iget-object v2, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private static c(Landroid/content/pm/PackageManager;Landroid/app/ActivityManager$RecentTaskInfo;)Landroid/content/pm/ResolveInfo;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iget-object p1, p1, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result p1

    const v1, -0x200001

    and-int/2addr p1, v1

    const/high16 v1, 0x10000000

    or-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic d(Lmiui/security/SecurityManager;Landroid/content/Context;Z)V
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lse/e;->f(Lmiui/security/SecurityManager;Landroid/content/Context;Z)V

    return-void
.end method

.method private static e(Landroid/content/Context;Ljava/lang/String;ZI)V
    .locals 2

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.gamebooster.PPRIVACYAPP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "pkgName"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "isPrivacy"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "userId"

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "com.miui.dock.permission.DOCK_EVENT"

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Utils"

    const-string p2, "notifyPrivacyAppChange: "

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private static f(Lmiui/security/SecurityManager;Landroid/content/Context;Z)V
    .locals 18
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const-string v0, "asInterface"

    const-string v1, "getService"

    const-string v2, "Utils"

    const-string v3, "android.os.ServiceManager"

    const-class v4, Ljava/lang/String;

    const-string v5, "user"

    move-object/from16 v6, p1

    invoke-virtual {v6, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserManager;

    invoke-virtual {v5}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    :try_start_0
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    new-array v11, v8, [Ljava/lang/Class;

    aput-object v4, v11, v9

    new-array v12, v8, [Ljava/lang/Object;

    const-string v13, "notification"

    aput-object v13, v12, v9

    invoke-static {v10, v1, v11, v12}, Lbh/f;->h(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/IBinder;

    const-string v11, "android.app.INotificationManager$Stub"

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    new-array v12, v8, [Ljava/lang/Class;

    const-class v13, Landroid/os/IBinder;

    aput-object v13, v12, v9

    new-array v13, v8, [Ljava/lang/Object;

    aput-object v10, v13, v9

    invoke-static {v11, v0, v12, v13}, Lbh/f;->h(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    new-array v11, v8, [Ljava/lang/Class;

    aput-object v4, v11, v9

    new-array v12, v8, [Ljava/lang/Object;

    const-string v13, "package"

    aput-object v13, v12, v9

    invoke-static {v3, v1, v11, v12}, Lbh/f;->h(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    const-string v3, "android.content.pm.IPackageManager$Stub"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    new-array v11, v8, [Ljava/lang/Class;

    const-class v12, Landroid/os/IBinder;

    aput-object v12, v11, v9

    new-array v12, v8, [Ljava/lang/Object;

    aput-object v1, v12, v9

    invoke-static {v3, v0, v11, v12}, Lbh/f;->h(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v10, v7

    :goto_0
    const-string v1, "reflect error while getService"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    :try_start_2
    const-string v5, "getAllPrivacyApps"

    new-array v6, v8, [Ljava/lang/Class;

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v6, v9

    new-array v11, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-object/from16 v12, p0

    :try_start_3
    invoke-static {v12, v5, v6, v11}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v7, :cond_1

    if-eqz v10, :cond_1

    invoke-static {v7, v1, v6, v9, v0}, Lcom/miui/appmanager/AppManageUtils;->s(Ljava/lang/Object;Landroid/content/pm/PackageManager;Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v11

    const-string v13, "setNotificationsEnabledForPackage"

    const/4 v14, 0x3

    new-array v15, v14, [Ljava/lang/Class;

    aput-object v4, v15, v9

    sget-object v16, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v16, v15, v8

    sget-object v16, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/16 v17, 0x2

    aput-object v16, v15, v17

    new-array v14, v14, [Ljava/lang/Object;

    aput-object v6, v14, v9

    iget v6, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v14, v8

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v14, v17

    invoke-static {v10, v13, v15, v14}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    move-object/from16 v12, p0

    :goto_4
    const-string v5, "reflect error while setNotificationEnable error"

    invoke-static {v2, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_2
    return-void
.end method

.method public static g(Landroid/content/Context;Ljava/lang/String;IZ)V
    .locals 4

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    const-string v1, "security"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/security/SecurityManager;

    invoke-virtual {v0, p1, p2, p3}, Lmiui/security/SecurityManager;->setPrivacyApp(Ljava/lang/String;IZ)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lpe/a;->a:Landroid/net/Uri;

    const/4 v2, 0x0

    const v3, 0x8000

    invoke-static {v0, v1, v2, v3}, Lm2/b;->a(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;I)V

    invoke-static {p0, p1, p3, p2}, Lse/e;->e(Landroid/content/Context;Ljava/lang/String;ZI)V

    return-void
.end method

.method private static h(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 9

    const-string v0, "Utils"

    const-string v1, "userId"

    const-string v2, "activity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v3, 0x3e9

    const/4 v4, 0x6

    invoke-virtual {v2, v3, v4}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RecentTaskInfo;

    invoke-static {p0, v5}, Lse/e;->c(Landroid/content/pm/PackageManager;Landroid/app/ActivityManager$RecentTaskInfo;)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v6, :cond_0

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v6, :cond_0

    const/4 v7, 0x0

    :try_start_0
    invoke-static {v5, v1}, Lbh/f;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v7
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v8

    goto :goto_1

    :catch_1
    move-exception v8

    :goto_1
    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    if-ne v7, p2, :cond_0

    :try_start_1
    iget p0, v5, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    invoke-static {p0}, Lcom/miui/appmanager/AppManageUtils;->q0(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_3

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_2
    :cond_1
    :goto_3
    invoke-static {v2, p1, p2}, Lcom/miui/appmanager/AppManageUtils;->m(Landroid/app/ActivityManager;Ljava/lang/String;I)V

    return-void
.end method

.method public static i(Landroid/content/Context;ZLjava/lang/String;I)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p0, p2, p3}, Lse/e;->b(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0, p2, p3}, Lse/e;->h(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public static j(Lmiui/security/SecurityManager;Landroid/content/Context;Z)V
    .locals 2

    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object v0

    new-instance v1, Lse/d;

    invoke-direct {v1, p0, p1, p2}, Lse/d;-><init>(Lmiui/security/SecurityManager;Landroid/content/Context;Z)V

    invoke-virtual {v0, v1}, Lef/z;->b(Ljava/lang/Runnable;)V

    return-void
.end method

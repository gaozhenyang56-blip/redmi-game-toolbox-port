.class public Lkh/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkh/d$b;
    }
.end annotation


# direct methods
.method static synthetic a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lkh/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 9

    const-string v0, "zman_share_sec"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/miui/networkassistant/utils/PackageUtil;->getAppVersionCode(Landroid/content/pm/PackageManager;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v1, "android.os.ServiceManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getService"

    const/4 v8, 0x1

    new-array v3, v8, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v3, v6

    new-array v5, v8, [Ljava/lang/Object;

    const-string v7, "package"

    aput-object v7, v5, v6

    invoke-static {v1, v2, v3, v5}, Lbh/f;->h(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    const-string v2, "android.content.pm.IPackageManager$Stub"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "asInterface"

    new-array v5, v8, [Ljava/lang/Class;

    const-class v7, Landroid/os/IBinder;

    aput-object v7, v5, v6

    new-array v7, v8, [Ljava/lang/Object;

    aput-object v1, v7, v6

    invoke-static {v2, v3, v5, v7}, Lbh/f;->h(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    new-instance v5, Lkh/d$b;

    const/4 v1, 0x0

    invoke-direct {v5, v1}, Lkh/d$b;-><init>(Lkh/d$a;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    invoke-static/range {v2 .. v7}, Lcom/miui/appmanager/AppManageUtils;->k(Ljava/lang/Object;Ljava/lang/String;ILandroid/content/pm/IPackageDeleteObserver;II)V

    invoke-static {p0}, Lcom/miui/networkassistant/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/config/CommonConfig;

    move-result-object p0

    invoke-virtual {p0, v8}, Lcom/miui/networkassistant/config/CommonConfig;->setXmanUninstalled(Z)Z

    const-string p0, "deletePackageAsUser success: "

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "uninstall "

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .locals 1

    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_MIUI12:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/miui/networkassistant/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/config/CommonConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/CommonConfig;->getXmanUninstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lkh/d$a;

    invoke-direct {v0, p0}, Lkh/d$a;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.class public Lcom/miui/securitycenter/receiver/BootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field public static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "com.miui.player"

    const-string v1, "com.miui.fm"

    const-string v2, "com.android.soundrecorder"

    const-string v3, "com.android.browser"

    const-string v4, "com.miui.voiceassist"

    const-string v5, "com.mipay.wallet"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/securitycenter/receiver/BootReceiver;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private a()V
    .locals 4

    invoke-static {}, Lef/x;->q()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/16 v1, 0x7de

    if-gt v0, v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lef/x;->n0(J)V

    :cond_1
    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 0

    invoke-static {p1}, Ljd/a;->b(Landroid/content/Context;)V

    invoke-static {p1}, Ljd/a;->c(Landroid/content/Context;)V

    return-void
.end method

.method private c(Landroid/content/Context;)V
    .locals 0

    invoke-static {p1}, Lcom/miui/powercenter/autotask/g;->l(Landroid/content/Context;)V

    return-void
.end method

.method private d(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/powercenter/provider/PowerSaveService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.miui.powercenter.action.TRY_CLOSE_SAVE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private e(Landroid/content/Context;)V
    .locals 3

    const-string v0, "security"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiui/security/SecurityManager;

    :try_start_0
    const-string v0, "updateLauncherPackageNames"

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v1, v2}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "BootReceiver"

    const-string v1, "updateLauncherPackageNames exception: "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    const-string p2, "BootReceiver"

    invoke-static {}, Lx4/z1;->e()I

    move-result v0

    invoke-static {p1}, Lx4/z1;->g(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    invoke-static {p1, v2}, Lef/x;->W(Landroid/content/Context;Z)V

    invoke-static {p1}, Lef/x;->E(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.android.settings"

    invoke-static {v0, v2, v2}, Lx4/t;->R(Ljava/lang/String;IZ)V

    :cond_0
    invoke-static {p1}, La8/r1;->a(Landroid/content/Context;)V

    invoke-static {p1}, Lof/j;->d(Landroid/content/Context;)V

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p1}, Lc3/f;->m0(JLandroid/content/Context;)V

    invoke-static {p1}, Lx4/v;->j(Landroid/content/Context;)I

    move-result v3

    invoke-static {p1, v3}, Lc3/f;->C0(Landroid/content/Context;I)V

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/miui/antispam/service/AntiSpamService;

    invoke-direct {v3, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v4, 0x1

    :try_start_0
    const-class v5, Landroid/content/ComponentName;

    const-string v6, "startServiceAsUser"

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Class;

    const-class v9, Landroid/content/Intent;

    aput-object v9, v8, v2

    const-class v9, Landroid/os/UserHandle;

    aput-object v9, v8, v4

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v3, v7, v2

    sget-object v3, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    aput-object v3, v7, v4

    invoke-static {p1, v5, v6, v8, v7}, Lbh/f;->e(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v5, "startServiceAsUser exception: "

    invoke-static {p2, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    new-instance v3, Landroid/content/Intent;

    const-class v5, Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-direct {v3, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Lx4/z1;->A()Landroid/os/UserHandle;

    move-result-object v5

    invoke-static {p1, v3, v5}, Lx4/v;->w(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-static {v0, v1}, Lfe/f;->b(J)V

    invoke-direct {p0, p1}, Lcom/miui/securitycenter/receiver/BootReceiver;->b(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/miui/securitycenter/receiver/BootReceiver;->d(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/miui/securitycenter/receiver/BootReceiver;->c(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/miui/securitycenter/receiver/BootReceiver;->a()V

    invoke-static {p1}, Lc3/e;->r(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/miui/securitycenter/receiver/BootReceiver;->e(Landroid/content/Context;)V

    invoke-static {}, Lx4/t;->h()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/miui/securitycenter/receiver/BootReceiver;->a:[Ljava/lang/String;

    array-length v1, v0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_2

    aget-object v5, v0, v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_notification_state"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v6

    :try_start_1
    invoke-static {p1}, Lcom/miui/permission/PermissionManager;->getInstance(Landroid/content/Context;)Lcom/miui/permission/PermissionManager;

    move-result-object v7

    const-wide/32 v8, 0x8000

    if-eqz v6, :cond_1

    const/4 v10, 0x3

    goto :goto_2

    :cond_1
    move v10, v4

    :goto_2
    new-array v11, v4, [Ljava/lang/String;

    aput-object v5, v11, v2

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/miui/permission/PermissionManager;->setApplicationPermission(JI[Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "set enable: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " package: "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    const-string v5, "sync notificaiton status error"

    invoke-static {p2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    new-instance p2, Lcom/miui/securitycenter/receiver/BootReceiver$a;

    invoke-direct {p2, p0, p1}, Lcom/miui/securitycenter/receiver/BootReceiver$a;-><init>(Lcom/miui/securitycenter/receiver/BootReceiver;Landroid/content/Context;)V

    invoke-static {p2}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p1

    invoke-static {p1}, Lg9/b;->c(Landroid/content/Context;)V

    return-void
.end method

.class public Lcom/miui/securitycenter/Application;
.super Lcom/miui/common/h;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/y0;


# static fields
.field private static n:I

.field private static o:Lcom/miui/securitycenter/Application;


# instance fields
.field private e:Z

.field private f:Ljava/lang/String;

.field private g:I

.field private h:F

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Landroidx/lifecycle/x0;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/lang/Runnable;

.field private m:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/h;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/securitycenter/Application;->i:Ljava/util/List;

    new-instance v0, Landroidx/lifecycle/x0;

    invoke-direct {v0}, Landroidx/lifecycle/x0;-><init>()V

    iput-object v0, p0, Lcom/miui/securitycenter/Application;->j:Landroidx/lifecycle/x0;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/securitycenter/Application;->k:Ljava/util/List;

    new-instance v0, Lcom/miui/securitycenter/Application$f;

    invoke-direct {v0, p0}, Lcom/miui/securitycenter/Application$f;-><init>(Lcom/miui/securitycenter/Application;)V

    iput-object v0, p0, Lcom/miui/securitycenter/Application;->l:Ljava/lang/Runnable;

    new-instance v0, Lcom/miui/securitycenter/Application$g;

    invoke-direct {v0, p0}, Lcom/miui/securitycenter/Application$g;-><init>(Lcom/miui/securitycenter/Application;)V

    iput-object v0, p0, Lcom/miui/securitycenter/Application;->m:Ljava/lang/Runnable;

    return-void
.end method

.method public static A()Lcom/miui/securitycenter/Application;
    .locals 1

    sget-object v0, Lcom/miui/securitycenter/Application;->o:Lcom/miui/securitycenter/Application;

    return-object v0
.end method

.method private B(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "miui.intent.action.FIREWALL_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v1, Li2/a;

    invoke-direct {v1}, Li2/a;-><init>()V

    const/4 v2, 0x2

    invoke-static {p0, v1, v0, v2}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    sget-boolean v0, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    if-nez v0, :cond_0

    invoke-static {}, Le2/b;->l()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lm2/a;->s(Landroid/content/Context;)V

    const/4 p1, 0x1

    invoke-static {p1}, Le2/b;->y(Z)V

    :cond_0
    invoke-static {p0}, Lj2/a;->e(Landroid/content/Context;)Lj2/a;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lj2/a;->d(Lj2/a$b;)V

    return-void
.end method

.method private static C(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lxf/b;->d(Landroid/content/Context;)Lxf/b;

    move-result-object p0

    invoke-virtual {p0}, Lxf/b;->f()V

    invoke-virtual {p0}, Lxf/b;->h()V

    return-void
.end method

.method private D(Landroid/content/Context;)V
    .locals 0

    invoke-static {p1}, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;->initForUIProcess(Landroid/content/Context;)V

    invoke-static {}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->initForUIProcess()V

    return-void
.end method

.method private E(Landroid/content/Context;)V
    .locals 0

    invoke-static {p1}, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->initGroupMap(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/miui/networkassistant/dual/SimCardHelper;->asyncInit(Landroid/content/Context;)V

    return-void
.end method

.method private static F(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object v0

    new-instance v1, Lef/u;

    invoke-direct {v1, p0}, Lef/u;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lef/z;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static G(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/monthreport/c;->m(Landroid/content/Context;)Lcom/miui/monthreport/c;

    invoke-static {p0}, Lcom/miui/push/a;->b(Landroid/content/Context;)Lcom/miui/push/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/push/a;->c()V

    return-void
.end method

.method private H(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "ACTION_USER_SWITCHED"

    invoke-static {v1}, La8/c0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v1, Ls2/m;

    invoke-direct {v1}, Ls2/m;-><init>()V

    const/4 v2, 0x2

    invoke-static {p1, v1, v0, v2}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Lo2/h;->k(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p1}, Lw2/t;->q(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/AbstractCollection;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->retainAll(Ljava/util/Collection;)Z

    invoke-static {v0}, Lo2/h;->M(Ljava/util/ArrayList;)V

    :cond_0
    invoke-static {}, Lo2/h;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/antivirus/service/GuardService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "action_register_foreground_notification"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_1
    return-void
.end method

.method private static I(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/miui/securitycenter/Application$e;

    invoke-direct {v0, p0}, Lcom/miui/securitycenter/Application$e;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static J(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lme/w;->H0(Landroid/content/Context;)V

    return-void
.end method

.method private K()V
    .locals 3

    const-string v0, "Application"

    const-string v1, "initRemoteProcessOnIdle"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/miui/securitycenter/Application;->J(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/miui/antivirus/service/VirusAutoUpdateJobService;->d(Landroid/content/Context;)V

    invoke-static {}, Lcom/miui/securitycenter/receiver/CleanerReceiver;->a()V

    invoke-static {p0}, Lcom/miui/securitycenter/Application;->F(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/miui/securitycenter/Application;->M(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/miui/luckymoney/upgrade/LuckyMoneyHelper;->init(Landroid/content/Context;)V

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/miui/networkassistant/service/FirewallService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Lx4/z1;->A()Landroid/os/UserHandle;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lx4/v;->w(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Lx4/z1;->A()Landroid/os/UserHandle;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lx4/v;->w(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    sget-boolean v1, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_INTERNATIONAL_BUILD:Z

    if-nez v1, :cond_0

    invoke-static {}, Lef/d0;->a()I

    move-result v1

    const/4 v2, 0x7

    if-lt v1, v2, :cond_0

    sget-boolean v1, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_L_OR_LATER:Z

    if-eqz v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Lx4/z1;->A()Landroid/os/UserHandle;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lx4/v;->w(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_0
    invoke-static {p0}, Ljg/a;->n(Landroid/content/Context;)V

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v1, :cond_2

    invoke-static {}, Lcom/miui/warningcenter/disasterwarning/Utils;->getStrongPushToggle()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/miui/warningcenter/disasterwarning/Utils;->getSystemPushToggle()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/miui/warningcenter/disasterwarning/service/WarningCenterDisasterService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_2
    new-instance v1, Lef/s;

    invoke-direct {v1, p0}, Lef/s;-><init>(Lcom/miui/securitycenter/Application;)V

    invoke-static {v1}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/miui/earthquakewarning/utils/Utils;->isEarthquakeWarningOpen()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/miui/earthquakewarning/service/EarthquakeWarningService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_3
    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v1, :cond_4

    invoke-static {}, Lcom/miui/earthquakewarning/utils/Utils;->isEarthquakeMonitorOpen()Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/miui/earthquakewarning/service/EarthquakeWarningService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "action_join_volunteer"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_4
    invoke-static {p0}, Ljg/a;->p(Landroid/content/Context;)V

    invoke-static {p0}, Lof/e;->l(Landroid/content/Context;)V

    invoke-static {p0}, Ld5/e;->b(Landroid/content/Context;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_5

    invoke-static {p0}, Lcom/miui/permcenter/i;->n(Landroid/content/Context;)V

    :cond_5
    invoke-static {p0}, Lcom/miui/securitycenter/Application;->I(Landroid/content/Context;)V

    invoke-static {p0}, Lkh/d;->c(Landroid/content/Context;)V

    const-string v1, "initRemoteProcess on idle over"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/miui/securitycenter/Application;->w()V

    invoke-static {p0}, Lt3/c;->i(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/miui/optimizecenter/storage/fbo/FboJobService;->c(Landroid/content/Context;)V

    new-instance v0, Lef/t;

    invoke-direct {v0, p0}, Lef/t;-><init>(Lcom/miui/securitycenter/Application;)V

    invoke-static {v0}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private L()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/miui/superpower/notification/SuperPowerTileService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lpg/i;->F(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0, v2, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "power_supersave_tile_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    return-void
.end method

.method private static M(Landroid/content/Context;)V
    .locals 2

    invoke-static {p0}, Lk6/a;->b(Landroid/content/Context;)V

    invoke-static {}, Lj8/s;->f()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/gamebooster/service/VideoToolBoxService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private static synthetic O(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lx5/p;->G1()V

    invoke-static {p0}, Lcom/miui/gamebooster/mutiwindow/FreeformWindowService;->b(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/miui/gamebooster/beauty/BeautyService;->h0(Landroid/content/Context;)V

    invoke-static {p0}, Lk6/a;->a(Landroid/content/Context;)V

    invoke-static {p0}, Lw6/i;->m(Landroid/content/Context;)V

    invoke-static {}, Li7/i;->l()Li7/i;

    move-result-object v0

    invoke-virtual {v0}, Li7/i;->y()V

    invoke-static {p0}, Lw6/i;->o(Landroid/content/Context;)V

    invoke-static {p0}, La8/h0;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, La8/m;->c()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p0}, Lk6/b;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, La8/w1;->e(Landroid/content/Context;)V

    invoke-static {}, La8/g0;->Y()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {v1}, Lm6/a;->J(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, La8/c;->a(Landroid/content/Context;)V

    invoke-static {v1}, Lm6/a;->v0(Z)V

    :cond_1
    invoke-static {}, La8/w1;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v1}, Lm6/a;->g0(I)V

    invoke-static {p0}, La8/w1;->k(Landroid/content/Context;)V

    :cond_2
    invoke-static {p0}, Lm6/a;->e(Landroid/content/Context;)Lm6/a;

    move-result-object v0

    invoke-virtual {v0}, Lm6/a;->x()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_3
    return-void

    :cond_4
    :goto_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, La8/v1;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {p0, v0}, La8/w1;->i(Landroid/content/Context;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method private synthetic P()V
    .locals 2

    invoke-direct {p0, p0}, Lcom/miui/securitycenter/Application;->H(Landroid/content/Context;)V

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/miui/permcenter/g;->a(Landroid/content/Context;)Lcom/miui/permcenter/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/permcenter/g;->c()V

    invoke-static {p0}, Lch/a;->u(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lch/a;->n(Landroid/content/Context;)Lch/a;

    move-result-object v0

    invoke-virtual {v0}, Lch/a;->o()V

    :cond_0
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    invoke-static {p0}, Lef/b0;->a(Landroid/content/Context;)Lef/b0;

    move-result-object v0

    invoke-virtual {v0}, Lef/b0;->b()V

    :cond_1
    return-void
.end method

.method private synthetic Q()V
    .locals 0

    invoke-direct {p0, p0}, Lcom/miui/securitycenter/Application;->Z(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic R()V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/analytics/AnalyticsUtil;->initMiStats(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/securitycenter/Application;->E(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lxc/p;->e(Landroid/content/Context;)Z

    return-void
.end method

.method private synthetic S()V
    .locals 1

    invoke-static {p0}, Ldf/h;->i0(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Ldf/d;->f(Landroid/content/Context;)Ldf/d;

    move-result-object v0

    invoke-virtual {v0}, Ldf/d;->i()V

    :cond_0
    invoke-static {p0}, Lcom/miui/permcenter/q;->k(Landroid/content/Context;)V

    sget-object v0, Lcom/miui/securityscan/scanner/o;->o:Lcom/miui/securityscan/scanner/o$b;

    invoke-virtual {v0}, Lcom/miui/securityscan/scanner/o$b;->a()Lcom/miui/securityscan/scanner/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/securityscan/scanner/o;->r()V

    invoke-direct {p0}, Lcom/miui/securitycenter/Application;->s()V

    return-void
.end method

.method private synthetic T()V
    .locals 0

    invoke-static {p0}, Lcom/miui/earthquakewarning/utils/Utils;->initEarthquakeWarningInSetting(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic U()Z
    .locals 1

    invoke-direct {p0}, Lcom/miui/securitycenter/Application;->K()V

    const/4 v0, 0x0

    return v0
.end method

.method private synthetic V()V
    .locals 1

    invoke-static {}, Lxc/y;->b()V

    invoke-static {p0}, Lcom/miui/bubbles/services/MiuiBubbleServiceManager;->startBubbleRemoteServicesIfNeed(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lgh/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private X()V
    .locals 2

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/miui/securitycenter/Application$b;

    invoke-direct {v0, p0}, Lcom/miui/securitycenter/Application$b;-><init>(Lcom/miui/securitycenter/Application;)V

    invoke-static {v0}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private Y()V
    .locals 1

    new-instance v0, Lcom/miui/securitycenter/Application$c;

    invoke-direct {v0, p0}, Lcom/miui/securitycenter/Application$c;-><init>(Lcom/miui/securitycenter/Application;)V

    invoke-static {v0}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private Z(Landroid/content/Context;)V
    .locals 5

    const-string v0, "is_credential_configured"

    const-string v1, "credential_service_config"

    :try_start_0
    sget-boolean v2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v2, :cond_0

    const-string v2, "ro.mi.os.version.code"

    const-string v3, "0"

    invoke-static {v2, v3}, Lx4/v1;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "credential_service"

    const v4, 0x7f030016

    invoke-direct {p0, p1, v3, v4}, Lcom/miui/securitycenter/Application;->b0(Landroid/content/Context;Ljava/lang/String;I)V

    const-string v3, "credential_service_primary"

    const v4, 0x7f030017

    invoke-direct {p0, p1, v3, v4}, Lcom/miui/securitycenter/Application;->b0(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDefaultConfigForCredentialManager error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Application"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private a0(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lse/a;

    invoke-direct {v0, p1}, Lse/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lse/a;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lse/a;->j(Landroid/content/Context;Z)V

    invoke-virtual {v0, v1}, Lse/a;->i(Z)V

    :cond_0
    return-void
.end method

.method private b0(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 4

    const-string v0, "Application"

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-interface {v1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Get default array for key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_0

    const-string p3, ":"

    invoke-static {p3, v1}, La/a;->a(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, p2, p3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public static synthetic c(Lcom/miui/securitycenter/Application;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/securitycenter/Application;->V()V

    return-void
.end method

.method private c0(Landroid/content/Context;)V
    .locals 13

    const-string v0, "Application"

    invoke-static {}, Lx4/t;->h()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/miui/securitycenter/receiver/BootReceiver;->a:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v5, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    const-string v7, "security"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "areNotificationsEnabledForPackage"

    const/4 v9, 0x2

    new-array v10, v9, [Ljava/lang/Class;

    const-class v11, Ljava/lang/String;

    aput-object v11, v10, v3

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v12, 0x1

    aput-object v11, v10, v12

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v5, v9, v3

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v9, v12

    invoke-static {v0, v7, v8, v10, v9}, Lbh/e;->b(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-static {p1}, Lcom/miui/permission/PermissionManager;->getInstance(Landroid/content/Context;)Lcom/miui/permission/PermissionManager;

    move-result-object v7

    const-wide/32 v8, 0x8000

    if-eqz v6, :cond_0

    const/4 v10, 0x3

    goto :goto_1

    :cond_0
    move v10, v12

    :goto_1
    new-array v11, v12, [Ljava/lang/String;

    aput-object v5, v11, v3

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

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v5

    const-string v6, "not found pkg"

    invoke-static {v0, v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static synthetic d(Lcom/miui/securitycenter/Application;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/securitycenter/Application;->T()V

    return-void
.end method

.method private d0(Z)V
    .locals 2

    sget v0, Lcom/miui/securitycenter/Application;->n:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lef/x;->H(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.securitycenter.action.UPDATE_NOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "notify"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public static synthetic e(Lcom/miui/securitycenter/Application;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/securitycenter/Application;->P()V

    return-void
.end method

.method public static synthetic f(Lcom/miui/securitycenter/Application;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/securitycenter/Application;->S()V

    return-void
.end method

.method public static synthetic g(Lcom/miui/securitycenter/Application;)Z
    .locals 0

    invoke-direct {p0}, Lcom/miui/securitycenter/Application;->U()Z

    move-result p0

    return p0
.end method

.method public static synthetic h(Lcom/miui/securitycenter/Application;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/securitycenter/Application;->R()V

    return-void
.end method

.method public static synthetic i(Lcom/miui/securitycenter/Application;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/securitycenter/Application;->Q()V

    return-void
.end method

.method public static synthetic j(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/securitycenter/Application;->O(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic k()I
    .locals 2

    sget v0, Lcom/miui/securitycenter/Application;->n:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/miui/securitycenter/Application;->n:I

    return v0
.end method

.method static synthetic l()I
    .locals 2

    sget v0, Lcom/miui/securitycenter/Application;->n:I

    add-int/lit8 v1, v0, -0x1

    sput v1, Lcom/miui/securitycenter/Application;->n:I

    return v0
.end method

.method static synthetic m(Lcom/miui/securitycenter/Application;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/securitycenter/Application;->d0(Z)V

    return-void
.end method

.method static synthetic n(Lcom/miui/securitycenter/Application;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/securitycenter/Application;->t()V

    return-void
.end method

.method static synthetic o(Lcom/miui/securitycenter/Application;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/miui/securitycenter/Application;->i:Ljava/util/List;

    return-object p0
.end method

.method static synthetic p(Lcom/miui/securitycenter/Application;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/miui/securitycenter/Application;->k:Ljava/util/List;

    return-object p0
.end method

.method static synthetic q(Ljava/io/File;)Z
    .locals 0

    invoke-static {p0}, Lcom/miui/securitycenter/Application;->u(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method private r()V
    .locals 2

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_0

    const-string v0, "com.miui.cleanmaster"

    invoke-static {p0, v0}, Lx4/g1;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/miui/securityscan/shortcut/d$b;->d:Lcom/miui/securityscan/shortcut/d$b;

    invoke-static {p0, v0}, Lcom/miui/securityscan/shortcut/d;->q(Landroid/content/Context;Lcom/miui/securityscan/shortcut/d$b;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0, v0}, Lcom/miui/securityscan/shortcut/d;->v(Landroid/content/Context;Lcom/miui/securityscan/shortcut/d$b;)V

    :cond_0
    return-void
.end method

.method private s()V
    .locals 2

    invoke-static {p0}, Lpf/i;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/miui/securityscan/shortcut/d$b;->m:Lcom/miui/securityscan/shortcut/d$b;

    invoke-static {p0, v0}, Lcom/miui/securityscan/shortcut/d;->q(Landroid/content/Context;Lcom/miui/securityscan/shortcut/d$b;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0, v0}, Lcom/miui/securityscan/shortcut/d;->v(Landroid/content/Context;Lcom/miui/securityscan/shortcut/d$b;)V

    :cond_1
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lpf/i;->s(Landroid/content/Context;Z)V

    return-void
.end method

.method private t()V
    .locals 6

    sget v0, Lcom/miui/securitycenter/Application;->n:I

    if-gtz v0, :cond_0

    invoke-static {}, Lef/c0;->a()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/securitycenter/Application;->l:Ljava/lang/Runnable;

    const-wide/32 v2, 0x1d4c0

    invoke-static {}, Lx4/a0;->d()I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v4, v2

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    invoke-static {}, Lef/c0;->a()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/securitycenter/Application;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Lef/c0;->a()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/securitycenter/Application;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private static u(Ljava/io/File;)Z
    .locals 3

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    invoke-static {v2}, Lcom/miui/securitycenter/Application;->u(Ljava/io/File;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    return p0
.end method

.method private v()V
    .locals 2

    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object v0

    new-instance v1, Lcom/miui/securitycenter/Application$h;

    invoke-direct {v1, p0}, Lcom/miui/securitycenter/Application$h;-><init>(Lcom/miui/securitycenter/Application;)V

    invoke-virtual {v0, v1}, Lef/z;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method private w()V
    .locals 5

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_2

    const-string v0, "vendor.xiaomi.trustedvm.version"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lx4/v1;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "ro.vendor.mitee_tui.support"

    invoke-static {v2, v1}, Lx4/v1;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tvm.enableTvmComponentIfNeed version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mitee_tui_sup:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Application"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.miui.tvm.service.TvmManagerService"

    invoke-direct {v3, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v3, v0, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    :cond_2
    return-void
.end method

.method public static z()Landroid/content/res/Resources;
    .locals 1

    sget-object v0, Lcom/miui/securitycenter/Application;->o:Lcom/miui/securitycenter/Application;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public N()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/securitycenter/Application;->e:Z

    return v0
.end method

.method protected W()V
    .locals 1

    new-instance v0, Lcom/miui/securitycenter/Application$d;

    invoke-direct {v0, p0}, Lcom/miui/securitycenter/Application$d;-><init>(Lcom/miui/securitycenter/Application;)V

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/miui/common/h;->attachBaseContext(Landroid/content/Context;)V

    sput-object p0, Lcom/miui/securitycenter/Application;->o:Lcom/miui/securitycenter/Application;

    invoke-static {p0}, Lcom/gzy/redmidiag/CrashReporter;->install(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/gzy/redmiport/PortRuntime;->init(Landroid/app/Application;)V

    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securitycenter/Application;->f:Ljava/lang/String;

    return-void
.end method

.method public getViewModelStore()Landroidx/lifecycle/x0;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/securitycenter/Application;->j:Landroidx/lifecycle/x0;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Lwk/d;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/miui/securitycenter/Application;->f:Ljava/lang/String;

    const-string v1, "com.miui.securitycenter.remote"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/securitycenter/Application;->g:I

    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    if-eq v0, v2, :cond_0

    invoke-static {p0}, Lcom/miui/permcenter/privacymanager/widget/a;->h(Landroid/content/Context;)V

    iget v0, p1, Landroid/content/res/Configuration;->uiMode:I

    iput v0, p0, Lcom/miui/securitycenter/Application;->g:I

    :cond_0
    iget-object v0, p0, Lcom/miui/securitycenter/Application;->f:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/miui/securitycenter/Application;->h:F

    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/miui/permcenter/o;->A()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lkc/q;->G(Landroid/content/Context;)Lkc/q;

    move-result-object v0

    invoke-virtual {v0}, Lkc/q;->i0()V

    iget p1, p1, Landroid/content/res/Configuration;->fontScale:F

    iput p1, p0, Lcom/miui/securitycenter/Application;->h:F

    :cond_1
    return-void
.end method

.method public onCreate()V
    .locals 2

    invoke-static {}, Lcom/gzy/redmidiag/CrashReporter;->diagnosticProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    return-void

    :cond_0
    invoke-super {p0}, Lcom/miui/common/h;->onCreate()V

    invoke-static {p0}, Lcom/gzy/redmiport/PortRuntime;->connect(Landroid/app/Application;)V

    const-string v0, "HuaweiOriginalPort"

    const-string v1, "Original game-space install/start test; runtime compatibility not verified"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Application;->onTrimMemory(I)V

    const/16 v0, 0x14

    if-lt p1, v0, :cond_0

    invoke-static {}, Lef/c0;->a()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/securitycenter/Application;->m:Ljava/lang/Runnable;

    const-wide/16 v1, 0x4e20

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public x()V
    .locals 2

    invoke-static {}, Lx4/a0;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/securitycenter/Application;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/securitycenter/Application;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    :cond_1
    return-void
.end method

.method public y()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/miui/securitycenter/Application;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/securitycenter/Application;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.class public Ll4/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ll4/i;->a:Ljava/util/HashMap;

    const-string v1, "http://sec-cdn.static.xiaomi.net/secStatic/icon/ziqidongguanli.png"

    const-string v2, "assets://img/ziqidongguanli.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "https://sec-cdn.static.xiaomi.net/secStatic/proj/xiezai.png"

    const-string v2, "assets://img/xiezai.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Ll4/i;->b:Ljava/util/List;

    return-void
.end method

.method private static a(Landroid/content/Context;)I
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {p0, v1, v0, v2}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    move-result-object p0

    const-string v0, "temperature"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    div-int/lit8 p0, p0, 0xa

    return p0
.end method

.method public static b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Ll4/i;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lc3/f;->G(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Ll4/i;->b:Ljava/util/List;

    :cond_0
    sget-object v0, Ll4/i;->b:Ljava/util/List;

    return-object v0
.end method

.method private static c(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "status_bar_show_network_assistant"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method private static d(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lmiui/cloud/external/CloudSysHelper;->isXiaomiAccountPresent(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static e(I)Z
    .locals 4

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p0, v1, :cond_b

    const/4 v3, 0x2

    if-eq p0, v3, :cond_a

    const/4 v3, 0x5

    if-eq p0, v3, :cond_9

    const/4 v3, 0x6

    if-eq p0, v3, :cond_8

    const/16 v3, 0xb

    if-eq p0, v3, :cond_7

    const/16 v3, 0x17

    if-eq p0, v3, :cond_6

    const/16 v3, 0x1b

    if-eq p0, v3, :cond_5

    const/16 v0, 0x22

    if-eq p0, v0, :cond_4

    const/16 v0, 0x2a

    if-eq p0, v0, :cond_3

    const/16 v0, 0x2c

    if-eq p0, v0, :cond_2

    const/16 v0, 0x10

    if-eq p0, v0, :cond_1

    const/16 v0, 0x11

    if-eq p0, v0, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p0

    invoke-static {p0}, Lah/a;->a(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_c

    return v2

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "status_bar_show_network_speed"

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p0, v1, :cond_c

    return v2

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p0

    invoke-static {p0}, Ll4/i;->h(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_c

    return v2

    :cond_3
    sget-boolean p0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p0, :cond_c

    return v2

    :cond_4
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p0

    invoke-static {p0}, Ll4/i;->g(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_c

    return v2

    :cond_5
    const-string p0, "support_network_controller"

    invoke-static {v0, p0}, Ll4/i;->i(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_c

    return v2

    :cond_6
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p0

    invoke-static {p0}, Ll4/i;->d(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_c

    return v2

    :cond_7
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p0

    invoke-static {p0}, Ll4/i;->c(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_c

    return v2

    :cond_8
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p0

    invoke-static {p0}, Lef/x;->x(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_c

    return v2

    :cond_9
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p0

    invoke-static {p0}, Lef/x;->F(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_c

    return v2

    :cond_a
    invoke-static {}, Lef/x;->z()Z

    move-result p0

    if-eqz p0, :cond_c

    return v2

    :cond_b
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0}, Ll4/i;->f(Landroid/content/ContentResolver;)Z

    move-result p0

    if-eqz p0, :cond_c

    return v2

    :cond_c
    :goto_0
    return v1
.end method

.method public static f(Landroid/content/ContentResolver;)Z
    .locals 2

    const-string v0, "extra_show_security_notification"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static g(Landroid/content/Context;)Z
    .locals 2

    invoke-static {}, Lef/d0;->a()I

    move-result p0

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p0

    invoke-static {p0}, Lc3/f;->G(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    sput-object p0, Ll4/i;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "appsArrayList Number"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Ll4/i;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v1, 0x4

    if-lt p0, v1, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static h(Landroid/content/Context;)Z
    .locals 8

    invoke-static {}, Lfe/k;->a()Lfe/k$a;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Lpf/g;->h(J)J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    const-wide/32 v3, 0x927c0

    cmp-long v3, v5, v3

    const/4 v4, 0x1

    const/4 v7, 0x0

    if-gez v3, :cond_0

    cmp-long v1, v5, v1

    if-lez v1, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v7

    :goto_0
    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lfe/k$a;->a:Z

    if-eqz v1, :cond_1

    iget v0, v0, Lfe/k$a;->b:I

    if-nez v0, :cond_1

    return v7

    :cond_1
    invoke-static {p0}, Ll4/i;->a(Landroid/content/Context;)I

    move-result p0

    invoke-static {}, Lgd/c;->t()I

    move-result v0

    if-ge p0, v0, :cond_2

    move v4, v7

    :cond_2
    return v4
.end method

.method public static i(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.miui.securitycenter"

    const/16 v1, 0x80

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static j(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Ll4/i;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

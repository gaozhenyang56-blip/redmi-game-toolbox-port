.class public Lod/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lod/c$c;,
        Lod/c$b;
    }
.end annotation


# static fields
.field private static e:Ljava/lang/String;


# instance fields
.field private a:Lod/c$c;

.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lod/a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/Context;

.field private d:Lod/a;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lod/c$a;)V
    .locals 0

    invoke-direct {p0}, Lod/c;-><init>()V

    return-void
.end method

.method public static synthetic a(Lod/c;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lod/c;->d(Ljava/lang/String;)V

    return-void
.end method

.method public static b()Lod/c;
    .locals 1

    invoke-static {}, Lod/c$b;->a()Lod/c;

    move-result-object v0

    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .locals 2

    sget-object v0, Lod/c;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "ro.ril.oem.psno"

    const-string v1, ""

    invoke-static {v0, v1}, Lmiuix/core/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lod/c;->e:Ljava/lang/String;

    :cond_0
    sget-object v0, Lod/c;->e:Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized d(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lod/c;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lod/c;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lod/a;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lod/a;->d()V

    invoke-direct {p0}, Lod/c;->k()V

    iget-object v0, p0, Lod/c;->d:Lod/a;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lod/a;->c(Z)V

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lod/a;->c(Z)V

    iput-object p1, p0, Lod/c;->d:Lod/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static e()Z
    .locals 1

    invoke-static {}, Lod/c;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private g()V
    .locals 1

    new-instance v0, Lod/b;

    invoke-direct {v0, p0}, Lod/b;-><init>(Lod/c;)V

    iput-object v0, p0, Lod/c;->a:Lod/c$c;

    return-void
.end method

.method public static h(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lod/c;->j(Landroid/content/Context;)Z

    move-result p0

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "&detectType="

    const-string v3, "&deviceSn="

    if-eqz p0, :cond_0

    const-string p0, "https://m.mi.com/p?pid=269&root=com.xiaomi.shop2.plugin.hardwaredetect.RootFragment"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lod/c;->c()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string p0, "com.xiaomi.shop"

    invoke-virtual {p1, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string p0, "https://m.mi.com/aftersale/detectpreview?"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lod/c;->c()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Landroid/content/Intent;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-direct {p1, v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :goto_0
    return-object p1
.end method

.method public static i(Landroid/content/Context;)Z
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-eqz p0, :cond_1

    :try_start_0
    const-string v0, "com.xiaomi.shop"

    const/16 v1, 0x4000

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "ChargeWarningManager"

    const-string v1, "isExistMiShop: "

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const-string p0, ""

    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static j(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "ChargeWarningManager"

    if-eqz p0, :cond_1

    :try_start_0
    const-string v2, "com.xiaomi.shop"

    const/16 v3, 0x4000

    invoke-virtual {p0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v2, "isMiShowDFS2Version: "

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    move p0, v0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isMiShowDFS2Version versionCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x134d82c

    if-lt p0, v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private k()V
    .locals 3

    iget-object v0, p0, Lod/c;->c:Landroid/content/Context;

    invoke-static {v0}, La8/t1;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lod/c;->c:Landroid/content/Context;

    const-class v2, Lcom/miui/powercenter/powerui/PowerPortDampActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lod/c;->c:Landroid/content/Context;

    invoke-static {v1}, Lme/q;->v(Landroid/content/Context;)Z

    move-result v1

    const-string v2, "supportDFSUi"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lod/c;->c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lod/c;->c:Landroid/content/Context;

    invoke-static {v0}, Lde/j;->S(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method private static l(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "ChargeWarningManager"

    :try_start_0
    invoke-static {p0, p1}, Lod/c;->h(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_0

    const/high16 v1, 0x10000000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "startDFSActivity: not activity"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "startDFSActivity: "

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static m(Landroid/content/Context;)V
    .locals 1

    const-string v0, "charge_nonstandard"

    invoke-static {p0, v0}, Lod/c;->l(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static n(Landroid/content/Context;)V
    .locals 1

    const-string v0, "charge_usbwet"

    invoke-static {p0, v0}, Lod/c;->l(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public f(Landroid/content/Context;)V
    .locals 4

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lod/c;->c:Landroid/content/Context;

    invoke-static {}, Lme/w;->a0()Z

    move-result v0

    invoke-static {}, Lme/w;->d0()Z

    move-result v1

    if-nez v0, :cond_0

    if-eqz v1, :cond_2

    :cond_0
    invoke-direct {p0}, Lod/c;->g()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lod/c;->b:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    new-instance v1, Lod/e;

    iget-object v3, p0, Lod/c;->a:Lod/c$c;

    invoke-direct {v1, p1, v3}, Lod/e;-><init>(Landroid/content/Context;Lod/c$c;)V

    const-string v3, "MODE_LPD"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz v0, :cond_2

    iget-object v0, p0, Lod/c;->b:Ljava/util/HashMap;

    new-instance v1, Lod/h;

    iget-object v2, p0, Lod/c;->a:Lod/c$c;

    invoke-direct {v1, p1, v2}, Lod/h;-><init>(Landroid/content/Context;Lod/c$c;)V

    const-string p1, "MODE_NTC"

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

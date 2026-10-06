.class public Lcom/miui/permcenter/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/permcenter/f$a;
    }
.end annotation


# static fields
.field private static e:Lcom/miui/permcenter/f;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/CharSequence;

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/permcenter/f;

    invoke-direct {v0}, Lcom/miui/permcenter/f;-><init>()V

    sput-object v0, Lcom/miui/permcenter/f;->e:Lcom/miui/permcenter/f;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/miui/permcenter/f;Landroid/content/Context;IILjava/lang/String;I)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/miui/permcenter/f;->f(Landroid/content/Context;IILjava/lang/String;I)V

    return-void
.end method

.method public static synthetic b(Lcom/miui/permcenter/f;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/permcenter/f;->e(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Lcom/miui/permcenter/f$a;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/miui/permcenter/f;->g(Lcom/miui/permcenter/f$a;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static d()Lcom/miui/permcenter/f;
    .locals 1

    sget-object v0, Lcom/miui/permcenter/f;->e:Lcom/miui/permcenter/f;

    return-object v0
.end method

.method private synthetic e(Ljava/lang/String;)V
    .locals 1

    const-string v0, "com.lbe.security.miui"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/miui/permcenter/f;->a:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private synthetic f(Landroid/content/Context;IILjava/lang/String;I)V
    .locals 2

    const/16 v0, 0x2726

    if-ne p2, v0, :cond_3

    const/4 p2, 0x1

    if-ne p5, p2, :cond_3

    iget-object p2, p0, Lcom/miui/permcenter/f;->a:Ljava/lang/String;

    invoke-static {p2, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/miui/permcenter/f;->b:Ljava/lang/String;

    invoke-static {p4, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    const/16 p2, 0x1080

    invoke-static {p1, p4, p2}, Lx4/f1;->o(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p5, p2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    const-string v0, "com.android.permission.GET_INSTALLED_APPS"

    invoke-static {p5, v0}, Lcom/miui/permission/PermissionManager$ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_1

    return-void

    :cond_1
    iget-object p5, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p5, p5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz p5, :cond_2

    const-string v0, "do_not_need_get_installed_apps"

    invoke-virtual {p5, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_2

    return-void

    :cond_2
    invoke-static {p3}, Lx4/z1;->m(I)I

    move-result p3

    const-wide/high16 v0, 0x200000000000000L

    invoke-static {p1, p3, p4, v0, v1}, Lcom/miui/permcenter/l;->o(Landroid/content/Context;ILjava/lang/String;J)Z

    move-result p5

    if-eqz p5, :cond_3

    iput p3, p0, Lcom/miui/permcenter/f;->d:I

    iput-object p4, p0, Lcom/miui/permcenter/f;->b:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object p2, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/permcenter/f;->c:Ljava/lang/CharSequence;

    new-instance p1, Landroid/content/Intent;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p2

    const-class p3, Lcom/miui/permcenter/settings/InstalledPermissionDialog;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object p2, p0, Lcom/miui/permcenter/f;->b:Ljava/lang/String;

    const-string p3, "intent_extra_pkg_name"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/miui/permcenter/f;->c:Ljava/lang/CharSequence;

    const-string p3, "intent_extra_pkg_label"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    iget p2, p0, Lcom/miui/permcenter/f;->d:I

    const-string p3, "intent_extra_user_id"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_3
    return-void
.end method

.method private static synthetic g(Lcom/miui/permcenter/f$a;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onOpNoted"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz p1, :cond_5

    array-length p1, p3

    const/16 p2, 0x2726

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x5

    const/4 v5, 0x6

    const/4 v6, 0x2

    if-ne p1, v5, :cond_2

    aget-object p1, p3, v0

    instance-of v7, p1, Ljava/lang/String;

    if-nez v7, :cond_0

    instance-of p1, p1, Ljava/lang/Integer;

    if-eqz p1, :cond_2

    :cond_0
    aget-object p1, p3, v3

    instance-of v7, p1, Ljava/lang/Integer;

    if-eqz v7, :cond_2

    aget-object v7, p3, v6

    instance-of v7, v7, Ljava/lang/String;

    if-eqz v7, :cond_2

    aget-object v7, p3, v2

    instance-of v8, v7, Ljava/lang/String;

    if-nez v8, :cond_1

    if-nez v7, :cond_2

    :cond_1
    aget-object v7, p3, v1

    instance-of v7, v7, Ljava/lang/Integer;

    if-eqz v7, :cond_2

    aget-object v7, p3, v4

    instance-of v7, v7, Ljava/lang/Integer;

    if-eqz v7, :cond_2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object v0, p3, v6

    check-cast v0, Ljava/lang/String;

    aget-object p3, p3, v4

    :goto_0
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-interface {p0, p2, p1, v0, p3}, Lcom/miui/permcenter/f$a;->onOpNoted(IILjava/lang/String;I)V

    goto/16 :goto_1

    :cond_2
    array-length p1, p3

    const/4 v7, 0x7

    if-ne p1, v7, :cond_a

    aget-object p1, p3, v0

    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_3

    instance-of p1, p1, Ljava/lang/Integer;

    if-eqz p1, :cond_a

    :cond_3
    aget-object p1, p3, v3

    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_a

    aget-object v0, p3, v6

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_a

    aget-object v0, p3, v2

    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_4

    if-nez v0, :cond_a

    :cond_4
    aget-object v0, p3, v1

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_a

    aget-object v0, p3, v4

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_a

    aget-object v0, p3, v5

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_a

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object v0, p3, v6

    check-cast v0, Ljava/lang/String;

    aget-object p3, p3, v5

    goto :goto_0

    :cond_5
    const-class p0, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    if-ne p0, p1, :cond_6

    const-string p0, ""

    return-object p0

    :cond_6
    const-class p0, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    if-ne p0, p1, :cond_7

    return-object v1

    :cond_7
    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    if-ne p0, p1, :cond_8

    return-object v1

    :cond_8
    const-class p0, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    if-ne p0, p1, :cond_9

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_9
    sget-object p0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    if-ne p0, p1, :cond_a

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_a
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private j(Landroid/app/AppOpsManager;[ILcom/miui/permcenter/f$a;)V
    .locals 7

    :try_start_0
    new-instance v0, Lcom/miui/permcenter/e;

    invoke-direct {v0, p3}, Lcom/miui/permcenter/e;-><init>(Lcom/miui/permcenter/f$a;)V

    const-string p3, "android.app.AppOpsManager$OnOpNotedListener"

    invoke-static {p3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p3

    const-class v1, Lcom/miui/permcenter/compact/AppOpsUtilsCompat;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    invoke-static {v1, v3, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "startWatchingNoted"

    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/Class;

    const-class v6, [I

    aput-object v6, v5, v4

    aput-object p3, v5, v2

    new-array p3, v3, [Ljava/lang/Object;

    aput-object p2, p3, v4

    aput-object v0, p3, v2

    invoke-static {p1, v1, v5, p3}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "InstalledPackagesMonitorManager"

    const-string p3, "startWatchingActive exception"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public h()V
    .locals 1

    const-string v0, ""

    iput-object v0, p0, Lcom/miui/permcenter/f;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/permcenter/f;->c:Ljava/lang/CharSequence;

    return-void
.end method

.method public i(Landroid/content/Context;)V
    .locals 4

    invoke-static {p1}, Lkc/q;->G(Landroid/content/Context;)Lkc/q;

    move-result-object v0

    new-instance v1, Lcom/miui/permcenter/c;

    invoke-direct {v1, p0}, Lcom/miui/permcenter/c;-><init>(Lcom/miui/permcenter/f;)V

    invoke-virtual {v0, v1}, Lkc/q;->b0(Lkc/q$e;)V

    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, 0x2726

    aput v3, v1, v2

    new-instance v2, Lcom/miui/permcenter/d;

    invoke-direct {v2, p0, p1}, Lcom/miui/permcenter/d;-><init>(Lcom/miui/permcenter/f;Landroid/content/Context;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/permcenter/f;->j(Landroid/app/AppOpsManager;[ILcom/miui/permcenter/f$a;)V

    return-void
.end method

.class public Ls2/j;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private A(Landroid/content/Context;)V
    .locals 4

    invoke-static {p1}, Lc4/c;->f(Landroid/content/Context;)Lc4/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc4/c;->n(I)V

    const-wide/16 v2, 0x0

    invoke-static {p1, v1, v2, v3}, Lef/x;->p0(Landroid/content/Context;ZJ)V

    invoke-static {p1, v1, v2, v3}, Lef/x;->Q(Landroid/content/Context;ZJ)V

    invoke-static {p1, v1, v2, v3}, Lef/x;->q0(Landroid/content/Context;ZJ)V

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Lc4/o;->a(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private B(Landroid/content/Context;Ljava/lang/String;IZ)V
    .locals 0

    if-eqz p4, :cond_0

    return-void

    :cond_0
    sget-boolean p4, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p4, :cond_1

    return-void

    :cond_1
    const-string p4, "com.miui.gallery"

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    return-void

    :cond_2
    invoke-direct {p0, p1, p3}, Ls2/j;->D(Landroid/content/Context;I)V

    return-void
.end method

.method private C(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "com.miui.mediaviewer"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {}, Lx4/z1;->y()I

    move-result p2

    const-string v0, "com.miui.gallery"

    invoke-static {p1, v0, p2}, Lx4/f1;->E(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Ls2/j;->D(Landroid/content/Context;I)V

    :cond_1
    return-void
.end method

.method private D(Landroid/content/Context;I)V
    .locals 4

    const-string v0, "com.miui.mediaviewer"

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.miui.photoplayer.activity.PhoneMainActivity"

    invoke-direct {v1, v0, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {p1, v1, p2, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v3, "com.miui.mediaviewer.editor.photo.app.CropperActivity"

    invoke-direct {v1, v0, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1, p2, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "AppInstalledReceiver"

    const-string v0, "setMediaviewer component enable state failed"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static synthetic a(Lcom/miui/guardprovider/aidl/IAntiVirusServer;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Ls2/j;->q(Lcom/miui/guardprovider/aidl/IAntiVirusServer;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Ljava/lang/String;Lcom/miui/guardprovider/aidl/IAntiVirusServer;)V
    .locals 0

    invoke-static {p0, p1}, Ls2/j;->r(Ljava/lang/String;Lcom/miui/guardprovider/aidl/IAntiVirusServer;)V

    return-void
.end method

.method public static synthetic c()V
    .locals 0

    invoke-static {}, Ls2/j;->s()V

    return-void
.end method

.method public static synthetic d(Ljava/lang/String;Lcom/miui/guardprovider/aidl/IAntiVirusServer;)V
    .locals 0

    invoke-static {p0, p1}, Ls2/j;->o(Ljava/lang/String;Lcom/miui/guardprovider/aidl/IAntiVirusServer;)V

    return-void
.end method

.method public static synthetic e(Ljava/lang/String;Lcom/miui/guardprovider/aidl/IAntiVirusServer;)V
    .locals 0

    invoke-static {p0, p1}, Ls2/j;->u(Ljava/lang/String;Lcom/miui/guardprovider/aidl/IAntiVirusServer;)V

    return-void
.end method

.method public static synthetic f(Lcom/miui/guardprovider/aidl/IAntiVirusServer;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Ls2/j;->t(Lcom/miui/guardprovider/aidl/IAntiVirusServer;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic g(Lcom/miui/guardprovider/aidl/IAntiVirusServer;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Ls2/j;->n(Lcom/miui/guardprovider/aidl/IAntiVirusServer;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic h()V
    .locals 0

    invoke-static {}, Ls2/j;->v()V

    return-void
.end method

.method public static synthetic i()V
    .locals 0

    invoke-static {}, Ls2/j;->p()V

    return-void
.end method

.method static synthetic j(Ls2/j;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ls2/j;->w(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic k(Ls2/j;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ls2/j;->y(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic l(Ls2/j;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ls2/j;->z(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic m(Ls2/j;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ls2/j;->x(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private static synthetic n(Lcom/miui/guardprovider/aidl/IAntiVirusServer;Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :try_start_0
    invoke-interface {p0, p1, v0}, Lcom/miui/guardprovider/aidl/IAntiVirusServer;->L5(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private static synthetic o(Ljava/lang/String;Lcom/miui/guardprovider/aidl/IAntiVirusServer;)V
    .locals 2

    sget-object v0, Lcom/miui/securityscan/scanner/o;->o:Lcom/miui/securityscan/scanner/o$b;

    invoke-virtual {v0}, Lcom/miui/securityscan/scanner/o$b;->a()Lcom/miui/securityscan/scanner/o;

    move-result-object v0

    new-instance v1, Ls2/h;

    invoke-direct {v1, p1, p0}, Ls2/h;-><init>(Lcom/miui/guardprovider/aidl/IAntiVirusServer;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/miui/securityscan/scanner/o;->w(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic p()V
    .locals 1

    sget-object v0, Lcom/miui/securityscan/scanner/o;->o:Lcom/miui/securityscan/scanner/o$b;

    invoke-virtual {v0}, Lcom/miui/securityscan/scanner/o$b;->a()Lcom/miui/securityscan/scanner/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/securityscan/scanner/o;->r()V

    return-void
.end method

.method private static synthetic q(Lcom/miui/guardprovider/aidl/IAntiVirusServer;Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x2

    :try_start_0
    invoke-interface {p0, p1, v0}, Lcom/miui/guardprovider/aidl/IAntiVirusServer;->L5(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private static synthetic r(Ljava/lang/String;Lcom/miui/guardprovider/aidl/IAntiVirusServer;)V
    .locals 2

    sget-object v0, Lcom/miui/securityscan/scanner/o;->o:Lcom/miui/securityscan/scanner/o$b;

    invoke-virtual {v0}, Lcom/miui/securityscan/scanner/o$b;->a()Lcom/miui/securityscan/scanner/o;

    move-result-object v0

    new-instance v1, Ls2/i;

    invoke-direct {v1, p1, p0}, Ls2/i;-><init>(Lcom/miui/guardprovider/aidl/IAntiVirusServer;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/miui/securityscan/scanner/o;->w(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic s()V
    .locals 1

    sget-object v0, Lcom/miui/securityscan/scanner/o;->o:Lcom/miui/securityscan/scanner/o$b;

    invoke-virtual {v0}, Lcom/miui/securityscan/scanner/o$b;->a()Lcom/miui/securityscan/scanner/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/securityscan/scanner/o;->r()V

    return-void
.end method

.method private static synthetic t(Lcom/miui/guardprovider/aidl/IAntiVirusServer;Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x3

    :try_start_0
    invoke-interface {p0, p1, v0}, Lcom/miui/guardprovider/aidl/IAntiVirusServer;->L5(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private static synthetic u(Ljava/lang/String;Lcom/miui/guardprovider/aidl/IAntiVirusServer;)V
    .locals 2

    sget-object v0, Lcom/miui/securityscan/scanner/o;->o:Lcom/miui/securityscan/scanner/o$b;

    invoke-virtual {v0}, Lcom/miui/securityscan/scanner/o$b;->a()Lcom/miui/securityscan/scanner/o;

    move-result-object v0

    new-instance v1, Ls2/g;

    invoke-direct {v1, p1, p0}, Ls2/g;-><init>(Lcom/miui/guardprovider/aidl/IAntiVirusServer;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/miui/securityscan/scanner/o;->w(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic v()V
    .locals 1

    sget-object v0, Lcom/miui/securityscan/scanner/o;->o:Lcom/miui/securityscan/scanner/o$b;

    invoke-virtual {v0}, Lcom/miui/securityscan/scanner/o$b;->a()Lcom/miui/securityscan/scanner/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/securityscan/scanner/o;->r()V

    return-void
.end method

.method private w(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "packageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppInstalledReceiver"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "android.intent.extra.REPLACING"

    const/4 v3, 0x0

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {p1, v0, v4}, Ly2/b;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-static {p1}, Lo2/e;->e(Landroid/content/Context;)Lo2/e;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v0, v6}, Lo2/e;->f(Ljava/lang/String;Z)V

    const/4 v5, 0x0

    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    invoke-static {p1, v0, v5, v7}, Le3/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v0, p1, v1}, Lc3/e;->o(Ljava/lang/String;Landroid/content/Context;Z)V

    const-string v1, "android.intent.extra.UID"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-static {p1, v0, p2}, Lf7/b;->t(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-static {p1, v0}, Lgh/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    const-string v1, "com.miui.packageinstaller"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Lcom/miui/permcenter/compact/AppOpsUtilsCompat;->autoOptmize(Landroid/content/Context;)V

    :cond_1
    const-string v1, "com.miui.cleanmaster"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lc4/k;->a()Lc4/k;

    move-result-object v1

    invoke-virtual {v1}, Lc4/k;->c()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lc4/k;->a()Lc4/k;

    move-result-object v1

    invoke-virtual {v1, p1}, Lc4/k;->b(Landroid/content/Context;)V

    :cond_2
    if-nez v4, :cond_3

    invoke-static {p1, v0, v3}, Lc4/k;->d(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_3
    sget-boolean v1, Ln9/a;->a:Z

    if-eqz v1, :cond_5

    invoke-static {p1}, Ln9/a;->c(Landroid/content/Context;)I

    move-result v1

    if-eq v1, v6, :cond_5

    sget-object v1, Ln9/a;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {p1, v0}, Ln9/a;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    invoke-static {p1, v6}, Ln9/a;->g(Landroid/content/Context;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "switch gms to enable because "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " has installed!"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v1, :cond_6

    if-nez v4, :cond_6

    invoke-static {p1}, Lcom/miui/permcenter/g;->a(Landroid/content/Context;)Lcom/miui/permcenter/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/permcenter/g;->b(Ljava/lang/String;)V

    sget-object v1, Lxc/k$a;->a:Lxc/k$a;

    invoke-virtual {v1, v0, p2}, Lxc/k$a;->f(Ljava/lang/String;I)V

    :cond_6
    if-nez v4, :cond_7

    new-instance p2, Lgc/c;

    invoke-direct {p2, p1}, Lgc/c;-><init>(Landroid/content/Context;)V

    new-array v1, v6, [Ljava/lang/String;

    aput-object v0, v1, v3

    invoke-virtual {p2, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_7
    const/4 p2, 0x2

    invoke-direct {p0, p1, v0, p2, v4}, Ls2/j;->B(Landroid/content/Context;Ljava/lang/String;IZ)V

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p1

    invoke-static {p1}, Lp9/a;->j(Landroid/content/Context;)Lp9/a;

    move-result-object p1

    new-instance p2, Ls2/c;

    invoke-direct {p2, v0}, Ls2/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lp9/a;->g(Lp9/a$b;)V

    const-string p1, "com.miui.guardprovider"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    sget-object p1, Lcom/miui/securityscan/scanner/o;->o:Lcom/miui/securityscan/scanner/o$b;

    invoke-virtual {p1}, Lcom/miui/securityscan/scanner/o$b;->a()Lcom/miui/securityscan/scanner/o;

    move-result-object p1

    new-instance p2, Ls2/d;

    invoke-direct {p2}, Ls2/d;-><init>()V

    invoke-virtual {p1, p2}, Lcom/miui/securityscan/scanner/o;->w(Ljava/lang/Runnable;)V

    :cond_8
    return-void
.end method

.method private x(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "android.intent.extra.UID"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v1, :cond_1

    sget-object v1, Lxc/k$a;->a:Lxc/k$a;

    invoke-virtual {v1, v0, p2}, Lxc/k$a;->f(Ljava/lang/String;I)V

    :cond_1
    invoke-static {}, Lcom/miui/permcenter/o;->A()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-static {p1}, Lkc/q;->G(Landroid/content/Context;)Lkc/q;

    move-result-object p1

    invoke-virtual {p1, v0}, Lkc/q;->T(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private y(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    invoke-static {p1, v0}, Le3/b;->k(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1}, Lo2/e;->e(Landroid/content/Context;)Lo2/e;

    move-result-object v2

    invoke-virtual {v2, v0, v3}, Lo2/e;->f(Ljava/lang/String;Z)V

    :cond_0
    invoke-static {p1, v0}, Lgh/b;->n(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const-string v2, "com.miui.cleanmaster"

    if-nez v1, :cond_1

    if-nez p2, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/miui/securityscan/shortcut/d$b;->d:Lcom/miui/securityscan/shortcut/d$b;

    invoke-static {p1, v1}, Lcom/miui/securityscan/shortcut/d;->q(Landroid/content/Context;Lcom/miui/securityscan/shortcut/d$b;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {p1, v1}, Lcom/miui/securityscan/shortcut/d;->v(Landroid/content/Context;Lcom/miui/securityscan/shortcut/d$b;)V

    :cond_1
    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v1, :cond_2

    if-nez p2, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p1}, Ls2/j;->A(Landroid/content/Context;)V

    :cond_2
    const/4 v1, 0x1

    if-nez p2, :cond_3

    invoke-static {p1, v0, v1}, Lc4/k;->d(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/miui/permcenter/o;->A()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p1}, Lkc/q;->G(Landroid/content/Context;)Lkc/q;

    move-result-object v2

    invoke-virtual {v2, v0}, Lkc/q;->T(Ljava/lang/String;)V

    :cond_3
    invoke-static {p1, v0}, Lx4/k1;->j(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "AppInstalledReceiver"

    if-nez p2, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "package removed, close privacy input mode"

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3, p1, v0}, Lx4/k1;->t(ZLandroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-static {p1}, Lx4/k1;->l(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "package replaced, close privacy input mode"

    goto :goto_0

    :cond_5
    :goto_1
    invoke-direct {p0, p1, v0, v1, p2}, Ls2/j;->B(Landroid/content/Context;Ljava/lang/String;IZ)V

    invoke-direct {p0, p1, v0}, Ls2/j;->C(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p1

    invoke-static {p1}, Lp9/a;->j(Landroid/content/Context;)Lp9/a;

    move-result-object p1

    new-instance p2, Ls2/a;

    invoke-direct {p2, v0}, Ls2/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lp9/a;->g(Lp9/a$b;)V

    const-string p1, "com.miui.guardprovider"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    sget-object p1, Lcom/miui/securityscan/scanner/o;->o:Lcom/miui/securityscan/scanner/o$b;

    invoke-virtual {p1}, Lcom/miui/securityscan/scanner/o$b;->a()Lcom/miui/securityscan/scanner/o;

    move-result-object p1

    new-instance p2, Ls2/b;

    invoke-direct {p2}, Ls2/b;-><init>()V

    invoke-virtual {p1, p2}, Lcom/miui/securityscan/scanner/o;->w(Ljava/lang/Runnable;)V

    :cond_6
    return-void
.end method

.method private z(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p2

    const-string v0, "com.miui.cleanmaster"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lc4/k;->a()Lc4/k;

    move-result-object v0

    invoke-virtual {v0}, Lc4/k;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lc4/k;->a()Lc4/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc4/k;->b(Landroid/content/Context;)V

    :cond_0
    invoke-direct {p0, p1}, Ls2/j;->A(Landroid/content/Context;)V

    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1}, Lcom/miui/securityscan/shortcut/a;->h(Landroid/content/Context;J)V

    :cond_1
    invoke-static {p1, p2}, Lcom/miui/permcenter/privacymanager/widget/a;->e(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lp3/g;->g(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lp9/a;->j(Landroid/content/Context;)Lp9/a;

    move-result-object v0

    new-instance v1, Ls2/e;

    invoke-direct {v1, p2}, Ls2/e;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lp9/a;->g(Lp9/a$b;)V

    const-string v0, "com.miui.guardprovider"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/miui/securityscan/scanner/o;->o:Lcom/miui/securityscan/scanner/o$b;

    invoke-virtual {v0}, Lcom/miui/securityscan/scanner/o$b;->a()Lcom/miui/securityscan/scanner/o;

    move-result-object v0

    new-instance v1, Ls2/f;

    invoke-direct {v1}, Ls2/f;-><init>()V

    invoke-virtual {v0, v1}, Lcom/miui/securityscan/scanner/o;->w(Ljava/lang/Runnable;)V

    :cond_2
    invoke-static {p1, p2}, Lgh/b;->k(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "AppInstalledReceiver"

    const-string v1, "receive broadcast"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ls2/j$a;

    invoke-direct {v0, p0, p2, p1}, Ls2/j$a;-><init>(Ls2/j;Landroid/content/Intent;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

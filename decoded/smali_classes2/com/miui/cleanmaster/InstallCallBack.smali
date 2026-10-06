.class public Lcom/miui/cleanmaster/InstallCallBack;
.super Landroid/content/pm/IPackageInstallObserver$Stub;
.source "SourceFile"


# instance fields
.field private a:Lc4/n;


# direct methods
.method public constructor <init>(Lc4/n;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver$Stub;-><init>()V

    iput-object p1, p0, Lcom/miui/cleanmaster/InstallCallBack;->a:Lc4/n;

    return-void
.end method

.method public static o8(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 10

    :try_start_0
    const-class v0, Lmiui/content/pm/PreloadedAppPolicy;

    const/4 v1, 0x0

    const-string v2, "installPreloadedDataApp"

    const/4 v3, 0x4

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    const-class v5, Landroid/content/pm/IPackageInstallObserver;

    const/4 v8, 0x2

    aput-object v5, v4, v8

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x3

    aput-object v5, v4, v9

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    aput-object p0, v3, v6

    const-string p0, "com.miui.cleanmaster"

    aput-object p0, v3, v7

    check-cast p1, Landroid/content/pm/IPackageInstallObserver;

    aput-object p1, v3, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v9

    invoke-static {v0, v1, v2, v4, v3}, Lbh/f;->g(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "InstallCallBack"

    const-string v0, "installCleanMaster exception: "

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method static synthetic v1(Lcom/miui/cleanmaster/InstallCallBack;)Lc4/n;
    .locals 0

    iget-object p0, p0, Lcom/miui/cleanmaster/InstallCallBack;->a:Lc4/n;

    return-object p0
.end method


# virtual methods
.method public packageInstalled(Ljava/lang/String;I)V
    .locals 3

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/miui/cleanmaster/InstallCallBack$a;

    invoke-direct {v0, p0, p2}, Lcom/miui/cleanmaster/InstallCallBack$a;-><init>(Lcom/miui/cleanmaster/InstallCallBack;I)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

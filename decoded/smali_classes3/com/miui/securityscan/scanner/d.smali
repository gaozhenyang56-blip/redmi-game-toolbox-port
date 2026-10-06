.class Lcom/miui/securityscan/scanner/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/securityscan/scanner/d$c;,
        Lcom/miui/securityscan/scanner/d$d;
    }
.end annotation


# static fields
.field private static e:Lcom/miui/securityscan/scanner/d;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/content/pm/PackageManager;

.field private c:Landroid/app/ActivityManager;

.field private d:Lxf/b;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/securityscan/scanner/d;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/scanner/d;->b:Landroid/content/pm/PackageManager;

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/miui/securityscan/scanner/d;->c:Landroid/app/ActivityManager;

    invoke-static {p1}, Lxf/b;->d(Landroid/content/Context;)Lxf/b;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/securityscan/scanner/d;->d:Lxf/b;

    return-void
.end method

.method static synthetic a(Lcom/miui/securityscan/scanner/d;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/securityscan/scanner/d;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b(Landroid/content/Context;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lcom/miui/securityscan/scanner/d;->g(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lcom/miui/securityscan/scanner/d;)Landroid/app/ActivityManager;
    .locals 0

    iget-object p0, p0, Lcom/miui/securityscan/scanner/d;->c:Landroid/app/ActivityManager;

    return-object p0
.end method

.method static synthetic d(Lcom/miui/securityscan/scanner/d;Landroid/app/ActivityManager$RecentTaskInfo;)Landroid/content/pm/ResolveInfo;
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/securityscan/scanner/d;->l(Landroid/app/ActivityManager$RecentTaskInfo;)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic e(Lcom/miui/securityscan/scanner/d;Ljava/lang/String;I)Landroid/util/SparseBooleanArray;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/securityscan/scanner/d;->i(Ljava/lang/String;I)Landroid/util/SparseBooleanArray;

    move-result-object p0

    return-object p0
.end method

.method private f(Landroid/content/Context;Ljava/lang/String;)I
    .locals 6

    const-string v0, "android.miui.AppOpsUtils"

    invoke-static {v0}, Lbh/d$a;->d(Ljava/lang/String;)Lbh/d$a;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    aput-object p2, v1, v5

    const-string p1, "getApplicationAutoStart"

    invoke-virtual {v0, p1, v2, v1}, Lbh/d$a;->c(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lbh/d$a;

    move-result-object p1

    invoke-virtual {p1}, Lbh/d$a;->i()I

    move-result p1

    return p1
.end method

.method private static g(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "android"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "com.android.providers.media"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "com.android.deskclock"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "com.google.android.marvin.talkback"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "com.miui.cleanmaster"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v1, :cond_0

    const-string v1, "com.miui.cleaner"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "default_input_method"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/app/WallpaperInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object v0
.end method

.method public static declared-synchronized h(Landroid/content/Context;)Lcom/miui/securityscan/scanner/d;
    .locals 2

    const-class v0, Lcom/miui/securityscan/scanner/d;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/securityscan/scanner/d;->e:Lcom/miui/securityscan/scanner/d;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/securityscan/scanner/d;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/miui/securityscan/scanner/d;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/miui/securityscan/scanner/d;->e:Lcom/miui/securityscan/scanner/d;

    :cond_0
    sget-object p0, Lcom/miui/securityscan/scanner/d;->e:Lcom/miui/securityscan/scanner/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private i(Ljava/lang/String;I)Landroid/util/SparseBooleanArray;
    .locals 4

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/miui/securityscan/scanner/d;->a:Landroid/content/Context;

    invoke-static {v2, p2}, Lcom/miui/securityscan/scanner/d;->k(Landroid/content/Context;I)Ljava/util/Set;

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object p2, p0, Lcom/miui/securityscan/scanner/d;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/miui/securityscan/scanner/d;->g(Landroid/content/Context;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object p2, p0, Lcom/miui/securityscan/scanner/d;->d:Lxf/b;

    invoke-virtual {p2}, Lxf/b;->e()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    const/4 v3, 0x2

    invoke-virtual {v0, v3, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object p2, p0, Lcom/miui/securityscan/scanner/d;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/miui/securityscan/scanner/d;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const/4 p1, 0x3

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return-object v0
.end method

.method private static j(I)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "MemoryCheckManager"

    :try_start_0
    const-string v1, "MemoryCheckManager"

    const-string v2, "miui.process.ProcessManager"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/util/List;

    const-string v4, "getLockedApplication"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v7, v8

    move-object v5, v6

    move-object v6, v7

    invoke-static/range {v1 .. v6}, Lbh/e;->e(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLockedApplication = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, "list is null"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v1, "getLockedApplication"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private static k(Landroid/content/Context;I)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/miui/securityscan/scanner/d;->j(I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    :goto_0
    return-object p1
.end method

.method private l(Landroid/app/ActivityManager$RecentTaskInfo;)Landroid/content/pm/ResolveInfo;
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

    iget-object p1, p0, Lcom/miui/securityscan/scanner/d;->b:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public m(Ljava/util/List;Lkf/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lkf/c;",
            ">;",
            "Lkf/a;",
            ")V"
        }
    .end annotation

    const-string v0, "MemoryCheckManager"

    const-string v1, "startCleanup"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/miui/securityscan/scanner/d$b;

    invoke-direct {v0, p0, p2, p1}, Lcom/miui/securityscan/scanner/d$b;-><init>(Lcom/miui/securityscan/scanner/d;Lkf/a;Ljava/util/List;)V

    invoke-static {v0}, Lx4/f;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public n(Lkf/b;)V
    .locals 2

    const-string v0, "MemoryCheckManager"

    const-string v1, "startScan"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/miui/securityscan/scanner/d$a;

    invoke-direct {v0, p0, p1}, Lcom/miui/securityscan/scanner/d$a;-><init>(Lcom/miui/securityscan/scanner/d;Lkf/b;)V

    invoke-static {v0}, Lx4/f;->b(Ljava/lang/Runnable;)V

    return-void
.end method

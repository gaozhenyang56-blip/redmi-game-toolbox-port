.class public Lcom/miui/securitycenter/memory/MemoryCheck;
.super Lcom/miui/securitycenter/memory/IMemoryCheck$Stub;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private k:Landroid/content/pm/PackageManager;

.field private l:Landroid/app/ActivityManager;

.field private m:Lxf/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/securitycenter/memory/IMemoryCheck$Stub;-><init>()V

    iput-object p1, p0, Lcom/miui/securitycenter/memory/MemoryCheck;->a:Landroid/content/Context;

    invoke-static {p1}, Lxf/b;->d(Landroid/content/Context;)Lxf/b;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securitycenter/memory/MemoryCheck;->m:Lxf/b;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securitycenter/memory/MemoryCheck;->k:Landroid/content/pm/PackageManager;

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    iput-object p1, p0, Lcom/miui/securitycenter/memory/MemoryCheck;->l:Landroid/app/ActivityManager;

    return-void
.end method

.method private o8(Landroid/content/Context;Ljava/lang/String;)I
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

.method private static p8()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "com.miui.cleanmaster"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v1, :cond_0

    const-string v1, "com.miui.cleaner"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method private static q8(Landroid/content/Context;)Ljava/util/List;
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

.method private r8(Ljava/lang/String;)Landroid/util/SparseBooleanArray;
    .locals 5

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/miui/securitycenter/memory/MemoryCheck;->a:Landroid/content/Context;

    invoke-static {}, Lx4/z1;->e()I

    move-result v3

    invoke-static {v2, v3}, Lcom/miui/securitycenter/memory/MemoryCheck;->t8(Landroid/content/Context;I)Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v1, p0, Lcom/miui/securitycenter/memory/MemoryCheck;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/securitycenter/memory/MemoryCheck;->q8(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v1, p0, Lcom/miui/securitycenter/memory/MemoryCheck;->m:Lxf/b;

    invoke-virtual {v1}, Lxf/b;->e()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v4, 0x2

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v1, p0, Lcom/miui/securitycenter/memory/MemoryCheck;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/miui/securitycenter/memory/MemoryCheck;->o8(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    const/4 p1, 0x3

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return-object v0
.end method

.method private static s8(Landroid/content/Context;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/miui/securitycenter/memory/MemoryCheck;->t8(Landroid/content/Context;I)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method private static t8(Landroid/content/Context;I)Ljava/util/Set;
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

    invoke-static {p1}, Lof/j;->b(I)Ljava/util/List;

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

.method private u8(Landroid/app/ActivityManager$RecentTaskInfo;)Landroid/content/pm/ResolveInfo;
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

    iget-object p1, p0, Lcom/miui/securitycenter/memory/MemoryCheck;->k:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    return-object p1
.end method

.method private v8(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/securitycenter/memory/MemoryCheck;->a:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/miui/securitycenter/memory/MemoryCheck;->w8(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/securitycenter/memory/MemoryCheck;->l:Landroid/app/ActivityManager;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/securitycenter/memory/MemoryCheck;->l:Landroid/app/ActivityManager;

    invoke-static {v0, p1}, Lx4/f1;->f(Landroid/app/ActivityManager;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private w8(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1, p2}, Lx4/f1;->K(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/miui/securitycenter/memory/MemoryCheck;->o8(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0

    :catch_0
    move-exception p1

    const-string p2, "MemoryCheck"

    const-string v1, "needKillBackgroundProcesses error"

    invoke-static {p2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method


# virtual methods
.method public C1(Ljava/lang/String;II)V
    .locals 1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    if-eqz p2, :cond_0

    return-void

    :cond_0
    if-ne p2, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, p3, v0}, Lx4/t;->R(Ljava/lang/String;IZ)V

    return-void
.end method

.method public E4(Ljava/lang/String;I)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    invoke-static {p1, p2}, Lx4/t;->v(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public G1(Lcom/miui/securitycenter/memory/IMemoryScanCallback;)V
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "impl MemoryCheck startScan RemoteException2"

    const-string v4, "impl MemoryCheck startScan callback.onFinishScan"

    const-string v5, "MemoryCheck"

    const-string v0, "impl MemoryCheck startScan"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x1

    const/4 v8, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iget-object v9, v1, Lcom/miui/securitycenter/memory/MemoryCheck;->a:Landroid/content/Context;

    const-string v10, "security"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lmiui/security/SecurityManager;

    const-string v10, "getPackageNameByPid"

    new-array v11, v7, [Ljava/lang/Class;

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v11, v8

    new-array v12, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v12, v8

    invoke-static {v9, v10, v11, v12}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v9, v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v9, "getPackageNameByPid error"

    invoke-static {v5, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v9, 0x0

    :goto_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    :try_start_1
    invoke-interface/range {p1 .. p1}, Lcom/miui/securitycenter/memory/IMemoryScanCallback;->d()V

    iget-object v0, v1, Lcom/miui/securitycenter/memory/MemoryCheck;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/securitycenter/memory/MemoryCheck;->q8(Landroid/content/Context;)Ljava/util/List;

    move-result-object v12

    invoke-static {}, Lx4/z1;->e()I

    move-result v13

    iget-object v0, v1, Lcom/miui/securitycenter/memory/MemoryCheck;->l:Landroid/app/ActivityManager;

    const/16 v14, 0x3e9

    const/4 v15, 0x2

    invoke-virtual {v0, v14, v15}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v14

    if-eqz v14, :cond_5

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    invoke-interface {v14, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RecentTaskInfo;

    invoke-direct {v1, v0}, Lcom/miui/securitycenter/memory/MemoryCheck;->u8(Landroid/app/ActivityManager$RecentTaskInfo;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v0, "impl MemoryCheck startScan recentTaskAppsMap add"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    const/4 v6, 0x1

    :goto_1
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ge v6, v0, :cond_4

    :try_start_2
    invoke-interface {v14, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RecentTaskInfo;

    invoke-direct {v1, v0}, Lcom/miui/securitycenter/memory/MemoryCheck;->u8(Landroid/app/ActivityManager$RecentTaskInfo;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_2

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v7, v1, Lcom/miui/securitycenter/memory/MemoryCheck;->k:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v0, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    invoke-interface {v12, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_1

    iget v8, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    const/16 v16, 0x1

    and-int/lit8 v8, v8, 0x1

    if-nez v8, :cond_1

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v7}, Lx4/z1;->m(I)I

    move-result v7

    if-ne v7, v13, :cond_1

    iget-object v7, v1, Lcom/miui/securitycenter/memory/MemoryCheck;->a:Landroid/content/Context;

    const/4 v8, 0x0

    invoke-static {v7, v0, v8}, Lx4/t;->y(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_1

    new-instance v7, Lcom/miui/securitycenter/memory/MemoryModel;

    invoke-direct {v7}, Lcom/miui/securitycenter/memory/MemoryModel;-><init>()V

    invoke-virtual {v7, v0}, Lcom/miui/securitycenter/memory/MemoryModel;->setPackageName(Ljava/lang/String;)V

    invoke-direct {v1, v0}, Lcom/miui/securitycenter/memory/MemoryCheck;->r8(Ljava/lang/String;)Landroid/util/SparseBooleanArray;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/miui/securitycenter/memory/MemoryModel;->setLockState(Landroid/util/SparseBooleanArray;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_a
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v18, v9

    const-wide/16 v8, 0x0

    :try_start_3
    invoke-virtual {v7, v8, v9}, Lcom/miui/securitycenter/memory/MemoryModel;->setMemorySize(J)V

    iget-object v8, v1, Lcom/miui/securitycenter/memory/MemoryCheck;->a:Landroid/content/Context;

    invoke-static {v8, v0}, Lx4/f1;->O(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/miui/securitycenter/memory/MemoryModel;->setAppName(Ljava/lang/String;)V

    invoke-interface {v15, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_1
    move-object/from16 v18, v9

    :goto_2
    invoke-interface/range {p1 .. p1}, Lcom/miui/securitycenter/memory/IMemoryScanCallback;->m()Z

    move-result v0
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_a
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_3

    :try_start_4
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2, v10}, Lcom/miui/securitycenter/memory/IMemoryScanCallback;->a(Ljava/util/List;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    invoke-static {v5, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    return-void

    :catch_2
    move-exception v0

    goto :goto_4

    :cond_2
    move-object/from16 v18, v9

    goto :goto_5

    :catch_3
    move-exception v0

    move-object/from16 v18, v9

    :goto_4
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_5
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v9, v18

    const/4 v8, 0x0

    goto/16 :goto_1

    :cond_4
    move-object/from16 v18, v9

    goto :goto_6

    :cond_5
    move-object/from16 v18, v9

    const/4 v15, 0x0

    :goto_6
    const-string v0, "impl MemoryCheck startScan runningAppsMap add"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v6, v1, Lcom/miui/securitycenter/memory/MemoryCheck;->l:Landroid/app/ActivityManager;

    invoke-virtual {v6}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v8, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    if-eqz v8, :cond_6

    const/4 v9, 0x0

    aget-object v8, v8, v9

    goto :goto_8

    :cond_6
    const/4 v8, 0x0

    :goto_8
    const/4 v9, 0x1

    new-array v14, v9, [I

    iget v7, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    const/4 v9, 0x0

    aput v7, v14, v9
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_a
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-static {v14}, Lmiui/securitycenter/utils/SecurityCenterHelper;->getProcessPss([I)[J

    move-result-object v7

    if-eqz v8, :cond_a

    iget-object v14, v1, Lcom/miui/securitycenter/memory/MemoryCheck;->k:Landroid/content/pm/PackageManager;

    invoke-virtual {v14, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v14

    invoke-interface {v12, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    iget v9, v14, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_a
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const/16 v16, 0x1

    and-int/lit8 v9, v9, 0x1

    if-nez v9, :cond_9

    :try_start_7
    iget v9, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v9}, Lx4/z1;->m(I)I

    move-result v9

    if-ne v9, v13, :cond_9

    iget-object v9, v1, Lcom/miui/securitycenter/memory/MemoryCheck;->a:Landroid/content/Context;

    const/4 v14, 0x0

    invoke-static {v9, v8, v14}, Lx4/t;->y(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v9

    if-nez v9, :cond_9

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miui/securitycenter/memory/MemoryModel;

    aget-wide v19, v7, v14

    const-wide/16 v21, 0x400

    mul-long v19, v19, v21

    if-nez v9, :cond_7

    new-instance v9, Lcom/miui/securitycenter/memory/MemoryModel;

    invoke-direct {v9}, Lcom/miui/securitycenter/memory/MemoryModel;-><init>()V

    invoke-virtual {v9, v8}, Lcom/miui/securitycenter/memory/MemoryModel;->setPackageName(Ljava/lang/String;)V

    invoke-direct {v1, v8}, Lcom/miui/securitycenter/memory/MemoryCheck;->r8(Ljava/lang/String;)Landroid/util/SparseBooleanArray;

    move-result-object v7

    invoke-virtual {v9, v7}, Lcom/miui/securitycenter/memory/MemoryModel;->setLockState(Landroid/util/SparseBooleanArray;)V
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_a
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object v7, v15

    const-wide/16 v14, 0x0

    :try_start_8
    invoke-virtual {v9, v14, v15}, Lcom/miui/securitycenter/memory/MemoryModel;->setMemorySize(J)V

    iget-object v14, v1, Lcom/miui/securitycenter/memory/MemoryCheck;->a:Landroid/content/Context;

    invoke-static {v14, v8}, Lx4/f1;->O(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Lcom/miui/securitycenter/memory/MemoryModel;->setAppName(Ljava/lang/String;)V

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_7
    move-object v7, v15

    :goto_9
    invoke-interface {v0, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual {v9}, Lcom/miui/securitycenter/memory/MemoryModel;->getMemorySize()J

    move-result-wide v14

    add-long v14, v14, v19

    invoke-virtual {v9, v14, v15}, Lcom/miui/securitycenter/memory/MemoryModel;->setMemorySize(J)V

    :cond_8
    invoke-interface/range {p1 .. p1}, Lcom/miui/securitycenter/memory/IMemoryScanCallback;->m()Z

    move-result v8
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_a
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v8, :cond_b

    :try_start_9
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2, v10}, Lcom/miui/securitycenter/memory/IMemoryScanCallback;->a(Ljava/util/List;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_a

    :catch_4
    move-exception v0

    invoke-static {v5, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_a
    return-void

    :catch_5
    :cond_9
    move-object v7, v15

    goto :goto_b

    :catch_6
    :cond_a
    move-object v7, v15

    const/16 v16, 0x1

    :catch_7
    :cond_b
    :goto_b
    move-object v15, v7

    goto/16 :goto_7

    :cond_c
    move-object v7, v15

    :try_start_a
    const-string v6, "impl MemoryCheck startScan modelPkgList.add"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iget-object v9, v1, Lcom/miui/securitycenter/memory/MemoryCheck;->a:Landroid/content/Context;

    invoke-static {v9, v8}, Lx4/f1;->O(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v9}, Lcom/miui/securitycenter/memory/IMemoryScanCallback;->u(Ljava/lang/String;)Z

    move-result v9
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz v9, :cond_d

    :try_start_b
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2, v10}, Lcom/miui/securitycenter/memory/IMemoryScanCallback;->a(Ljava/util/List;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_8

    goto :goto_d

    :catch_8
    move-exception v0

    invoke-static {v5, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_d
    return-void

    :cond_d
    :try_start_c
    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miui/securitycenter/memory/MemoryModel;

    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_e
    const-string v0, "impl MemoryCheck startScan modelList.add"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-static {}, Lcom/miui/securitycenter/memory/MemoryCheck;->p8()Ljava/util/List;

    move-result-object v0

    move-object/from16 v6, v18

    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    if-eqz v7, :cond_11

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v8, v1, Lcom/miui/securitycenter/memory/MemoryCheck;->a:Landroid/content/Context;

    invoke-static {v8, v6}, Lx4/f1;->O(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8}, Lcom/miui/securitycenter/memory/IMemoryScanCallback;->u(Ljava/lang/String;)Z

    move-result v8
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_a
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-eqz v8, :cond_10

    :try_start_d
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2, v10}, Lcom/miui/securitycenter/memory/IMemoryScanCallback;->a(Ljava/util/List;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_9

    goto :goto_f

    :catch_9
    move-exception v0

    invoke-static {v5, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_f
    return-void

    :cond_10
    :try_start_e
    invoke-interface {v11, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_f

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/securitycenter/memory/MemoryModel;

    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_a
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_e

    :cond_11
    :try_start_f
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2, v10}, Lcom/miui/securitycenter/memory/IMemoryScanCallback;->a(Ljava/util/List;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_b

    goto :goto_10

    :catchall_0
    move-exception v0

    move-object v6, v0

    goto :goto_11

    :catch_a
    move-exception v0

    :try_start_10
    const-string v6, "impl MemoryCheck startScan RemoteException1"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    :try_start_11
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2, v10}, Lcom/miui/securitycenter/memory/IMemoryScanCallback;->a(Ljava/util/List;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_b

    goto :goto_10

    :catch_b
    move-exception v0

    invoke-static {v5, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_10
    return-void

    :goto_11
    :try_start_12
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2, v10}, Lcom/miui/securitycenter/memory/IMemoryScanCallback;->a(Ljava/util/List;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_12} :catch_c

    goto :goto_12

    :catch_c
    move-exception v0

    invoke-static {v5, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_12
    throw v6
.end method

.method public G6(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/securitycenter/memory/MemoryCheck;->C1(Ljava/lang/String;II)V

    return-void
.end method

.method public M6()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/securitycenter/memory/MemoryCheck;->j3(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public j3(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/miui/securitycenter/memory/MemoryCheck;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/securitycenter/memory/MemoryCheck;->s8(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/securitycenter/memory/MemoryCheck;->a:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/miui/securitycenter/memory/MemoryCheck;->t8(Landroid/content/Context;I)Ljava/util/Set;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p1, v0

    :goto_0
    iget-object v0, p0, Lcom/miui/securitycenter/memory/MemoryCheck;->a:Landroid/content/Context;

    invoke-static {v0}, Lx4/a0;->A(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/securitycenter/memory/MemoryCheck;->m:Lxf/b;

    invoke-virtual {v0}, Lxf/b;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-object p1
.end method

.method public r2()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/miui/securitycenter/memory/MemoryCheck;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/securitycenter/memory/MemoryCheck;->s8(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/securitycenter/memory/MemoryCheck;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/securitycenter/memory/MemoryCheck;->q8(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/securitycenter/memory/MemoryCheck;->m:Lxf/b;

    invoke-virtual {v1}, Lxf/b;->e()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public x3(Ljava/util/List;Lcom/miui/securitycenter/memory/IMemoryCleanupCallback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/miui/securitycenter/memory/IMemoryCleanupCallback;",
            ")V"
        }
    .end annotation

    const-string v0, "MemoryCheck"

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cleanupAppsMemory callingPid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "   ;   callingUid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p2}, Lcom/miui/securitycenter/memory/IMemoryCleanupCallback;->v()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lcom/miui/securitycenter/memory/MemoryCheck;->l:Landroid/app/ActivityManager;

    const/16 v3, 0x3e9

    const/4 v4, 0x6

    invoke-virtual {v2, v3, v4}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    move v4, v3

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RecentTaskInfo;

    invoke-direct {p0, v5}, Lcom/miui/securitycenter/memory/MemoryCheck;->u8(Landroid/app/ActivityManager$RecentTaskInfo;)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v7, :cond_0

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v7, :cond_0

    invoke-interface {p1, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget v5, v5, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    iget-object v4, p0, Lcom/miui/securitycenter/memory/MemoryCheck;->a:Landroid/content/Context;

    invoke-static {v4}, Lyg/a;->a(Landroid/content/Context;)Lyg/a;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v4, v2}, Lyg/a;->b(I)V

    goto :goto_1

    :cond_2
    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v1, :cond_8

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/miui/securitycenter/memory/MemoryCheck;->l:Landroid/app/ActivityManager;

    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    if-eqz v5, :cond_4

    aget-object v5, v5, v3

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    :goto_3
    if-eqz v5, :cond_3

    invoke-interface {p1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/miui/securitycenter/memory/MemoryCheck;->a:Landroid/content/Context;

    invoke-direct {p0, v6, v5}, Lcom/miui/securitycenter/memory/MemoryCheck;->w8(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v4, p0, Lcom/miui/securitycenter/memory/MemoryCheck;->l:Landroid/app/ActivityManager;

    invoke-virtual {v4, v5}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    iget v4, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [I

    :goto_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_7

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_7
    invoke-static {v2, v0}, Lx4/f1;->N([ILjava/lang/String;)Z

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/securitycenter/memory/MemoryCheck;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lx4/f1;->O(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/miui/securitycenter/memory/IMemoryCleanupCallback;->k(Ljava/lang/String;)Z

    goto :goto_5

    :cond_8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/miui/securitycenter/memory/MemoryCheck;->v8(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/securitycenter/memory/MemoryCheck;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lx4/f1;->O(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/miui/securitycenter/memory/IMemoryCleanupCallback;->k(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    :cond_9
    :try_start_1
    invoke-interface {p2}, Lcom/miui/securitycenter/memory/IMemoryCleanupCallback;->i()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_7

    :catchall_0
    move-exception p1

    goto :goto_8

    :catch_0
    move-exception p1

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-interface {p2}, Lcom/miui/securitycenter/memory/IMemoryCleanupCallback;->i()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_7

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_7
    return-void

    :goto_8
    :try_start_4
    invoke-interface {p2}, Lcom/miui/securitycenter/memory/IMemoryCleanupCallback;->i()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_9

    :catch_2
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_9
    throw p1
.end method

.method public y0(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/miui/securitycenter/memory/MemoryCheck;->E4(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.class public Ljb/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:[Ljava/lang/String;

.field private b:Lib/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f030015

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljb/h;->a:[Ljava/lang/String;

    new-instance p1, Lib/b;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lib/b;-><init>(Z)V

    iput-object p1, p0, Ljb/h;->b:Lib/b;

    invoke-virtual {p1}, Lib/b;->c()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "com.miui.securitycenter"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "com.miui.securitymanager"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "com.xiaomi.securitycentertest"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "com.xiaomi.securitycentertest.test"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "com.miui.cleanmaster"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v1, :cond_0

    const-string v1, "com.miui.cleaner"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

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

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

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

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/app/WallpaperInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object v0
.end method

.method private b(Landroid/content/pm/PackageManager;Landroid/app/ActivityManager$RecentTaskInfo;)Landroid/content/pm/ResolveInfo;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p2, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iget-object p2, p2, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result p2

    const v1, -0x200001

    and-int/2addr p2, v1

    const/high16 v1, 0x10000000

    or-int/2addr p2, v1

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 p2, 0x0

    invoke-virtual {p1, v0, p2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    return-object p1
.end method

.method private d(Ljava/lang/String;)Z
    .locals 5

    iget-object v0, p0, Ljb/h;->a:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private e(Ljava/util/ArrayList;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private f(I)Z
    .locals 1

    invoke-static {p1}, Lx4/z1;->m(I)I

    move-result p1

    invoke-static {}, Lx4/z1;->e()I

    move-result v0

    if-eq p1, v0, :cond_1

    if-nez v0, :cond_0

    const/16 v0, 0x3e7

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private g(Ljava/lang/String;I)Z
    .locals 0

    invoke-static {p2}, Lx4/z1;->m(I)I

    move-result p2

    invoke-static {p1, p2}, Lx4/t;->v(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public c(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljb/a;",
            ">;)",
            "Ljava/util/List<",
            "Ljb/f;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "RunningProcessLoader"

    const-string v3, "userId"

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-nez v0, :cond_0

    return-object v4

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "activity"

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    invoke-static/range {p1 .. p1}, Ljb/h;->a(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v7

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    const/16 v0, 0x3e9

    const/4 v9, 0x6

    invoke-virtual {v6, v0, v9}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v9

    const/4 v10, 0x0

    if-eqz v9, :cond_4

    const/4 v12, 0x1

    :goto_0
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-ge v12, v0, :cond_4

    :try_start_0
    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/app/ActivityManager$RecentTaskInfo;

    invoke-direct {v1, v5, v13}, Ljb/h;->b(Landroid/content/pm/PackageManager;Landroid/app/ActivityManager$RecentTaskInfo;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_3

    iget-object v14, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v14, :cond_3

    invoke-direct {v1, v7, v14}, Ljb/h;->e(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_4

    :cond_1
    invoke-virtual {v5, v14, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v15

    new-instance v11, Ljb/f;

    invoke-direct {v11}, Ljb/f;-><init>()V

    iput-object v14, v11, Ljb/f;->a:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-static {v13, v3}, Lbh/f;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_3

    :catch_0
    move-exception v0

    :goto_1
    :try_start_2
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :goto_2
    move v0, v10

    :goto_3
    iget v15, v15, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0, v15}, Lx4/z1;->j(II)I

    move-result v0

    iput v0, v11, Ljb/f;->b:I

    invoke-direct {v1, v14, v0}, Ljb/h;->g(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, v11, Ljb/f;->e:Z

    invoke-virtual {v11}, Ljb/f;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v11}, Ljb/f;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljb/f;

    iget-object v0, v0, Ljb/f;->i:Ljava/util/List;

    iget v11, v13, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_2
    iget-object v0, v11, Ljb/f;->i:Ljava/util/List;

    iget v13, v13, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v11}, Ljb/f;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :cond_3
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    :cond_4
    const/16 v0, 0xc8

    invoke-virtual {v6, v0}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v0

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningServiceInfo;

    iget v5, v3, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-nez v5, :cond_5

    iget v5, v3, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v5, v9}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    iget v5, v3, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    :cond_5
    new-instance v9, Ljb/f$a;

    invoke-direct {v9}, Ljb/f$a;-><init>()V

    iget-object v11, v3, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    iput-object v11, v9, Ljb/f$a;->b:Landroid/content/ComponentName;

    iget v11, v3, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    iput v11, v9, Ljb/f$a;->a:I

    iget-wide v11, v3, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    iput-wide v11, v9, Ljb/f$a;->c:J

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_6
    invoke-virtual {v6}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v0, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    if-eqz v0, :cond_8

    aget-object v0, v0, v10

    goto :goto_7

    :cond_8
    const/4 v0, 0x0

    :goto_7
    if-eqz v0, :cond_7

    invoke-direct {v1, v7, v0}, Ljb/h;->e(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    goto :goto_6

    :cond_9
    iget v9, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    invoke-static {v0, v9}, Ljb/f;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljb/f;

    if-nez v11, :cond_a

    new-instance v11, Ljb/f;

    invoke-direct {v11}, Ljb/f;-><init>()V

    iput-object v0, v11, Ljb/f;->a:Ljava/lang/String;

    iget v12, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    invoke-direct {v1, v0, v12}, Ljb/h;->g(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, v11, Ljb/f;->e:Z

    iget v0, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    iput v0, v11, Ljb/f;->b:I

    :cond_a
    invoke-interface {v3, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_b
    iget v12, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_3
    const-string v0, "flags"

    invoke-static {v6, v0}, Lbh/f;->j(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-boolean v12, v11, Ljb/f;->f:Z

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_8

    :cond_c
    move v0, v10

    :goto_8
    or-int/2addr v0, v12

    iput-boolean v0, v11, Ljb/f;->f:Z
    :try_end_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_a

    :catch_3
    move-exception v0

    goto :goto_9

    :catch_4
    move-exception v0

    :goto_9
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_a
    const/16 v0, 0xe

    :try_start_4
    const-string v12, "processState"

    invoke-static {v6, v12}, Lbh/f;->j(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iget-boolean v13, v11, Ljb/f;->g:Z

    if-lt v12, v0, :cond_d

    const/4 v0, 0x1

    goto :goto_b

    :cond_d
    move v0, v10

    :goto_b
    or-int/2addr v0, v13

    iput-boolean v0, v11, Ljb/f;->g:Z
    :try_end_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_5

    :catch_5
    iget v0, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v6, 0x64

    if-ne v0, v6, :cond_e

    const/4 v6, 0x1

    iput-boolean v6, v11, Ljb/f;->h:Z

    goto :goto_c

    :cond_e
    const/4 v6, 0x1

    :goto_c
    invoke-virtual {v8, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    :cond_f
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iget-object v5, v1, Ljb/h;->b:Lib/b;

    invoke-virtual {v5}, Lib/b;->d()V

    iget-object v5, v1, Ljb/h;->b:Lib/b;

    invoke-virtual {v5}, Lib/b;->a()I

    move-result v5

    move v6, v10

    :goto_d
    if-ge v6, v5, :cond_10

    iget-object v7, v1, Ljb/h;->b:Lib/b;

    invoke-virtual {v7, v6}, Lib/b;->b(I)Lib/b$a;

    move-result-object v7

    iget v9, v7, Lib/b$a;->c:I

    iget-wide v11, v7, Lib/b$a;->l:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v9, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    :cond_10
    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_17

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljb/f;

    iget-boolean v9, v7, Ljb/f;->g:Z

    if-eqz v9, :cond_11

    iget-object v9, v7, Ljb/f;->a:Ljava/lang/String;

    invoke-direct {v1, v9}, Ljb/h;->d(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_11

    goto :goto_e

    :cond_11
    iget v9, v7, Ljb/f;->b:I

    invoke-direct {v1, v9}, Ljb/h;->f(I)Z

    move-result v9

    if-nez v9, :cond_12

    goto :goto_e

    :cond_12
    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    if-eqz v6, :cond_16

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_16

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [I

    iput-object v9, v7, Ljb/f;->c:[I

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [J

    iput-object v9, v7, Ljb/f;->k:[J

    move v9, v10

    :goto_f
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    if-ge v9, v11, :cond_16

    iget-object v11, v7, Ljb/f;->c:[I

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    aput v12, v11, v9

    iget-object v11, v7, Ljb/f;->c:[I

    aget v11, v11, v9

    invoke-virtual {v2, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    if-eqz v11, :cond_14

    iget-object v12, v7, Ljb/f;->l:Ljava/util/List;

    if-nez v12, :cond_13

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, v7, Ljb/f;->l:Ljava/util/List;

    :cond_13
    iget-object v12, v7, Ljb/f;->l:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_14
    iget-object v11, v7, Ljb/f;->c:[I

    aget v11, v11, v9

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    if-eqz v11, :cond_15

    iget-object v12, v7, Ljb/f;->k:[J

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    aput-wide v13, v12, v9

    goto :goto_10

    :cond_15
    iget-object v11, v7, Ljb/f;->k:[J

    const-wide/16 v12, 0x0

    aput-wide v12, v11, v9

    :goto_10
    add-int/lit8 v9, v9, 0x1

    goto :goto_f

    :cond_16
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e

    :cond_17
    return-object v4
.end method

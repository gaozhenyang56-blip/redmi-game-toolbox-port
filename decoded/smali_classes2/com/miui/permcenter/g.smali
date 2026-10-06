.class public Lcom/miui/permcenter/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final f:I

.field private static volatile g:Lcom/miui/permcenter/g;


# instance fields
.field private a:I

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/app/AppOpsManager;

.field private final d:Landroid/content/pm/PackageManager;

.field private final e:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    sput v0, Lcom/miui/permcenter/g;->f:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/permcenter/g;->b:Ljava/util/Set;

    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/miui/permcenter/g;->c:Landroid/app/AppOpsManager;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/permcenter/g;->d:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/permcenter/g;->e:Landroid/content/ContentResolver;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/miui/permcenter/g;
    .locals 2

    const-class v0, Lcom/miui/permcenter/g;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/permcenter/g;->g:Lcom/miui/permcenter/g;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/permcenter/g;

    invoke-direct {v1, p0}, Lcom/miui/permcenter/g;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/miui/permcenter/g;->g:Lcom/miui/permcenter/g;

    :cond_0
    sget-object p0, Lcom/miui/permcenter/g;->g:Lcom/miui/permcenter/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public b(Ljava/lang/String;)V
    .locals 10

    const-string v0, "LocalNotificationMgr"

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/miui/permcenter/g;->b:Ljava/util/Set;

    if-eqz v1, :cond_6

    invoke-static {}, Lx4/t;->h()I

    move-result v1

    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    goto/16 :goto_2

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/miui/permcenter/g;->d:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_5

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Lx4/z1;->b(I)I

    move-result v3

    const/16 v4, 0x2710

    if-lt v3, v4, :cond_5

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v4, 0x1

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    goto/16 :goto_1

    :cond_1
    iget v3, p0, Lcom/miui/permcenter/g;->a:I

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/miui/permcenter/g;->b:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_2
    sget v3, Lcom/miui/permcenter/g;->f:I

    goto :goto_0

    :cond_3
    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/miui/permcenter/g;->b:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/miui/permcenter/g;->b:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_4
    move v3, v2

    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pkg: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " mode:"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/permcenter/g;->c:Landroid/app/AppOpsManager;

    const/4 v5, 0x4

    new-array v6, v5, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v2

    aput-object v7, v6, v4

    const-class v8, Ljava/lang/String;

    const/4 v9, 0x2

    aput-object v8, v6, v9

    const/4 v8, 0x3

    aput-object v7, v6, v8

    new-array v5, v5, [Ljava/lang/Object;

    const/16 v7, 0x2731

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v2

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v4

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    aput-object v1, v5, v9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v8

    const-string v1, "setMode"

    invoke-static {v0, p1, v1, v6, v5}, Lbh/e;->b(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_1
    return-void

    :catch_0
    move-exception p1

    const-string v1, "getPackageInfo exception!"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_2
    return-void
.end method

.method public c()V
    .locals 12

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_f

    invoke-static {}, Lx4/t;->h()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    goto/16 :goto_7

    :cond_0
    iget-object v0, p0, Lcom/miui/permcenter/g;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/miui/permcenter/g;->e:Landroid/content/ContentResolver;

    const-string v1, "local_notification_mode"

    const-string v2, "mode"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/miui/support/provider/MiuiSettingsCompat$SettingsCloudData;->b(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/permcenter/g;->a:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/permcenter/g;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocalNotificationMgr"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iget v2, p0, Lcom/miui/permcenter/g;->a:I

    const/4 v4, 0x1

    if-nez v2, :cond_1

    iget-object v0, p0, Lcom/miui/permcenter/g;->e:Landroid/content/ContentResolver;

    const-string v2, "local_notification_blocks"

    :goto_0
    invoke-static {v0, v2}, Lcom/miui/support/provider/MiuiSettingsCompat$SettingsCloudData;->c(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_1
    if-ne v2, v4, :cond_2

    iget-object v0, p0, Lcom/miui/permcenter/g;->e:Landroid/content/ContentResolver;

    const-string v2, "local_notification_exceptions"

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_7

    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_2

    :cond_4
    new-instance v5, Lorg/json/JSONObject;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "list"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-nez v2, :cond_5

    goto :goto_2

    :cond_5
    move v5, v3

    :goto_3
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_3

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    iget-object v7, p0, Lcom/miui/permcenter/g;->b:Ljava/util/Set;

    invoke-interface {v7, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v2, "updateLocalNotificationList exception!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :cond_7
    iput v3, p0, Lcom/miui/permcenter/g;->a:I

    iget-object v0, p0, Lcom/miui/permcenter/g;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const-string v0, "No notification cloud data! reset mode to 0 and clear list"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_4
    :try_start_1
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Li4/a;->k(Landroid/content/Context;)Li4/a;

    move-result-object v0

    invoke-virtual {v0}, Li4/a;->j()Ljava/util/List;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5}, Lx4/z1;->b(I)I

    move-result v5

    const/16 v6, 0x2710

    if-lt v5, v6, :cond_9

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v5, v4

    if-eqz v5, :cond_a

    goto :goto_5

    :cond_a
    iget v5, p0, Lcom/miui/permcenter/g;->a:I

    if-nez v5, :cond_c

    iget-object v5, p0, Lcom/miui/permcenter/g;->b:Ljava/util/Set;

    iget-object v6, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    :cond_b
    sget v5, Lcom/miui/permcenter/g;->f:I

    goto :goto_6

    :cond_c
    if-ne v5, v4, :cond_d

    iget-object v5, p0, Lcom/miui/permcenter/g;->b:Ljava/util/Set;

    iget-object v6, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    :cond_d
    move v5, v3

    :goto_6
    iget-object v6, p0, Lcom/miui/permcenter/g;->c:Landroid/app/AppOpsManager;

    const/4 v7, 0x4

    new-array v8, v7, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v3

    aput-object v9, v8, v4

    const-class v10, Ljava/lang/String;

    const/4 v11, 0x2

    aput-object v10, v8, v11

    const/4 v10, 0x3

    aput-object v9, v8, v10

    new-array v7, v7, [Ljava/lang/Object;

    const/16 v9, 0x2731

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v3

    iget-object v9, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v4

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    aput-object v2, v7, v11

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v10

    const-string v2, "setMode"

    invoke-static {v1, v6, v2, v8, v7}, Lbh/e;->b(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_e
    const-string v0, "updateLocalNotificationList success!"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_1
    move-exception v0

    const-string v2, "updateLocalNotificationList: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_f
    :goto_7
    return-void
.end method

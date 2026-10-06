.class public Lcom/miui/permcenter/monitor/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile k:Lcom/miui/permcenter/monitor/a;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Z

.field private c:J

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lzb/e;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lzb/i;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lzb/m;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Malicious-Usage"

    iput-object v0, p0, Lcom/miui/permcenter/monitor/a;->a:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/permcenter/monitor/a;->c:J

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/permcenter/monitor/a;->d:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/permcenter/monitor/a;->e:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/permcenter/monitor/a;->f:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/permcenter/monitor/a;->g:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/permcenter/monitor/a;->h:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/permcenter/monitor/a;->j:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/permcenter/monitor/a;->i:Ljava/util/Map;

    return-void
.end method

.method public static synthetic a(Lcom/miui/permcenter/monitor/a;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/permcenter/monitor/a;->j(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic b(Lcom/miui/permcenter/monitor/a;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/permcenter/monitor/a;->k(Landroid/content/Context;)V

    return-void
.end method

.method private d(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/permcenter/monitor/a;->h:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    new-instance v1, Lzb/m;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iget v2, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/permission/RequiredPermissionsUtil;->getPackageSHA256(Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p1, v2, v3, v0}, Lzb/m;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/permcenter/monitor/a;->h:Ljava/util/Map;

    invoke-interface {p1, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private e()V
    .locals 2

    const-class v0, Lcom/miui/permcenter/monitor/a;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/miui/permcenter/monitor/a;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iget-object v1, p0, Lcom/miui/permcenter/monitor/a;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iget-object v1, p0, Lcom/miui/permcenter/monitor/a;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iget-object v1, p0, Lcom/miui/permcenter/monitor/a;->h:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iget-object v1, p0, Lcom/miui/permcenter/monitor/a;->g:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iget-object v1, p0, Lcom/miui/permcenter/monitor/a;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/miui/permcenter/monitor/a;->i:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private f(Landroid/content/Context;)V
    .locals 11

    const-class v0, Lcom/miui/permcenter/monitor/a;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/miui/permcenter/monitor/b$a;->a:Ljava/lang/String;

    sget-object v3, Lcom/miui/permcenter/monitor/b$a;->c:Ljava/lang/String;

    sget-boolean v4, Lcom/miui/permcenter/monitor/b;->c:Z

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v4, 0x7f120d2f

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {v1, v2, v3, p1}, Lcom/miui/support/provider/MiuiSettingsCompat$SettingsCloudData;->e(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "Malicious-Usage"

    const-string v0, "Unable to obtain cloud strategy correctly"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    move v2, p1

    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_8

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    sget-object v4, Lcom/miui/permcenter/monitor/b$a;->d:Ljava/lang/String;

    invoke-virtual {v3, v4, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_2

    goto/16 :goto_5

    :cond_2
    sget-object v5, Lcom/miui/permcenter/monitor/b$a;->g:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    sget-object v6, Lcom/miui/permcenter/monitor/b$a;->i:Ljava/lang/String;

    invoke-virtual {v3, v6, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    monitor-enter v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v7, p0, Lcom/miui/permcenter/monitor/a;->e:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_4

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v7, p1

    :goto_2
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_3

    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/miui/permcenter/monitor/a;->i:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    sget-object v5, Lcom/miui/permcenter/monitor/b$a;->j:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_7

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move v6, p1

    :goto_3
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_6

    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v7}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v7, v9, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v5, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_6
    monitor-enter v0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v3, p0, Lcom/miui/permcenter/monitor/a;->f:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    goto :goto_5

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_7
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :catchall_1
    move-exception p1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p1
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_8
    return-void
.end method

.method public static h()Lcom/miui/permcenter/monitor/a;
    .locals 2

    sget-object v0, Lcom/miui/permcenter/monitor/a;->k:Lcom/miui/permcenter/monitor/a;

    if-nez v0, :cond_1

    const-class v0, Lcom/miui/permcenter/monitor/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/permcenter/monitor/a;->k:Lcom/miui/permcenter/monitor/a;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/permcenter/monitor/a;

    invoke-direct {v1}, Lcom/miui/permcenter/monitor/a;-><init>()V

    sput-object v1, Lcom/miui/permcenter/monitor/a;->k:Lcom/miui/permcenter/monitor/a;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/miui/permcenter/monitor/a;->k:Lcom/miui/permcenter/monitor/a;

    return-object v0
.end method

.method private i(Ljava/lang/String;I)Z
    .locals 2

    const-class v0, Lcom/miui/permcenter/monitor/a;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/miui/permcenter/monitor/a;->i:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private synthetic j(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Lcom/miui/permcenter/monitor/a;->e()V

    sget-boolean v0, Lcom/miui/permcenter/monitor/b;->a:Z

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/miui/permcenter/monitor/b;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-string v0, "last_upload_time"

    invoke-static {v0, v1, v2}, Lr4/a;->j(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/permcenter/monitor/a;->c:J

    invoke-static {v3, v4, v0, v1}, Lmc/c;->i(JJ)I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    const-string p1, "Malicious-Usage"

    const-string v0, "Today has already invoke upload."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v0, "last_upload_time"

    invoke-static {v0, v3, v4}, Lr4/a;->q(Ljava/lang/String;J)V

    invoke-static {p1}, Lzb/g;->b(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/miui/permcenter/monitor/a;->f(Landroid/content/Context;)V

    const-class v0, Lcom/miui/permcenter/monitor/a;

    monitor-enter v0

    :try_start_0
    invoke-static {p1}, Lw2/t;->n(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/permcenter/monitor/a;->j:Ljava/util/List;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v1, p0, Lcom/miui/permcenter/monitor/a;->b:Z

    const-class v0, Lmiui/security/SecurityManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiui/security/SecurityManager;

    invoke-virtual {p1}, Lmiui/security/SecurityManager;->persistAppBehavior()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_2
    :goto_0
    invoke-static {p1}, Lzb/g;->a(Landroid/content/Context;)V

    const-string p1, "last_upload_time"

    invoke-static {p1, v1, v2}, Lr4/a;->q(Ljava/lang/String;J)V

    return-void
.end method

.method private synthetic k(Landroid/content/Context;)V
    .locals 16

    move-object/from16 v1, p0

    invoke-static/range {p1 .. p1}, Lzb/g;->d(Landroid/content/Context;)V

    invoke-direct/range {p0 .. p1}, Lcom/miui/permcenter/monitor/a;->l(Landroid/content/Context;)V

    const-class v2, Lcom/miui/permcenter/monitor/a;

    monitor-enter v2

    :try_start_0
    iget-object v0, v1, Lcom/miui/permcenter/monitor/a;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v5, v1, Lcom/miui/permcenter/monitor/a;->d:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lzb/e;

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    iget-object v6, v1, Lcom/miui/permcenter/monitor/a;->f:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    invoke-virtual {v5}, Lzb/e;->b()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lzb/b;

    invoke-virtual {v7}, Lzb/b;->e()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x3

    const/4 v10, 0x4

    if-ne v3, v10, :cond_8

    move-object v11, v7

    check-cast v11, Lzb/c;

    invoke-virtual {v11}, Lzb/c;->i()Ljava/lang/String;

    move-result-object v11

    iget-object v12, v1, Lcom/miui/permcenter/monitor/a;->f:Ljava/util/Map;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map;

    if-eqz v12, :cond_3

    invoke-interface {v12, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_3

    invoke-interface {v12, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    :goto_2
    check-cast v12, Ljava/lang/Integer;

    goto :goto_3

    :cond_3
    iget-object v12, v1, Lcom/miui/permcenter/monitor/a;->e:Ljava/util/Map;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    goto :goto_2

    :goto_3
    if-nez v12, :cond_4

    move v12, v4

    goto :goto_4

    :cond_4
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    :goto_4
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget-object v13, v1, Lcom/miui/permcenter/monitor/a;->f:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map;

    if-eqz v13, :cond_5

    invoke-interface {v13, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_5

    invoke-interface {v13, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    :goto_5
    check-cast v13, Ljava/lang/Integer;

    goto :goto_6

    :cond_5
    iget-object v13, v1, Lcom/miui/permcenter/monitor/a;->e:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    goto :goto_5

    :goto_6
    if-nez v13, :cond_6

    move v13, v4

    goto :goto_7

    :cond_6
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    :goto_7
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget-object v14, v1, Lcom/miui/permcenter/monitor/a;->g:Ljava/util/Map;

    invoke-interface {v14, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lzb/i;

    iget-object v15, v1, Lcom/miui/permcenter/monitor/a;->g:Ljava/util/Map;

    invoke-interface {v15, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lzb/i;

    if-eqz v14, :cond_7

    invoke-virtual {v14, v10}, Lzb/i;->b(I)I

    move-result v10

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-lt v10, v14, :cond_7

    goto :goto_b

    :cond_7
    if-eqz v11, :cond_2

    invoke-virtual {v11, v9}, Lzb/i;->b(I)I

    move-result v9

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-lt v9, v10, :cond_2

    move-object v12, v13

    goto :goto_b

    :cond_8
    if-eqz v6, :cond_9

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_9

    invoke-virtual {v7}, Lzb/b;->e()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    :goto_8
    check-cast v10, Ljava/lang/Integer;

    goto :goto_9

    :cond_9
    iget-object v10, v1, Lcom/miui/permcenter/monitor/a;->e:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    goto :goto_8

    :goto_9
    if-nez v10, :cond_a

    move v10, v4

    goto :goto_a

    :cond_a
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    :goto_a
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v3}, Lcom/miui/permcenter/monitor/b;->a(I)I

    move-result v10

    if-ne v10, v9, :cond_b

    iget-object v9, v1, Lcom/miui/permcenter/monitor/a;->g:Ljava/util/Map;

    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lzb/i;

    if-eqz v9, :cond_2

    invoke-virtual {v9, v3}, Lzb/i;->b(I)I

    move-result v9

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ge v9, v10, :cond_c

    goto/16 :goto_1

    :cond_b
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v7, v9}, Lzb/b;->f(I)Z

    move-result v9

    if-eqz v9, :cond_c

    goto/16 :goto_1

    :cond_c
    :goto_b
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v10, v1, Lcom/miui/permcenter/monitor/a;->h:Ljava/util/Map;

    invoke-interface {v10, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lzb/m;

    move-object/from16 v10, p1

    invoke-static {v10, v3, v9, v7, v8}, Lcom/miui/permcenter/monitor/b$b;->d(Landroid/content/Context;IILzb/b;Lzb/m;)V

    goto/16 :goto_1

    :cond_d
    move-object/from16 v10, p1

    goto/16 :goto_0

    :cond_e
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v4, v1, Lcom/miui/permcenter/monitor/a;->b:Z

    invoke-direct/range {p0 .. p0}, Lcom/miui/permcenter/monitor/a;->e()V

    const-string v0, "Malicious-Usage"

    const-string v2, "Uploading app usage data to the OneTrack is done"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private l(Landroid/content/Context;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-class v2, Lcom/miui/permcenter/monitor/a;

    invoke-direct/range {p0 .. p1}, Lcom/miui/permcenter/monitor/a;->m(Landroid/content/Context;)V

    monitor-enter v2

    :try_start_0
    iget-object v3, v1, Lcom/miui/permcenter/monitor/a;->e:Ljava/util/Map;

    const/16 v4, 0x2711

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    iget-object v5, v1, Lcom/miui/permcenter/monitor/a;->e:Ljava/util/Map;

    const/16 v6, 0x2714

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v3, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/PackageInfo;

    iget-object v10, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v10}, Lx4/z1;->b(I)I

    move-result v10

    const/16 v11, 0x2710

    if-lt v10, v11, :cond_0

    iget-object v10, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v11, v8

    if-nez v11, :cond_0

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v10}, Lmc/c;->j(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    goto :goto_0

    :cond_1
    monitor-enter v2

    :try_start_1
    iget-object v10, v1, Lcom/miui/permcenter/monitor/a;->d:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lzb/e;

    if-nez v10, :cond_2

    new-instance v10, Lzb/e;

    invoke-direct {v10}, Lzb/e;-><init>()V

    iget-object v11, v1, Lcom/miui/permcenter/monitor/a;->d:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    new-instance v11, Lzb/d;

    iget-object v12, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v11, v12, v8}, Lzb/d;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v10, v4, v11}, Lzb/e;->a(ILzb/b;)V

    iget-object v9, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v1, v0, v9}, Lcom/miui/permcenter/monitor/a;->d(Landroid/content/Context;Ljava/lang/String;)V

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_3
    if-eqz v5, :cond_8

    const-string v3, "account"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accounts/AccountManager;

    invoke-virtual {v3}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v4

    invoke-virtual {v3}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v3

    array-length v5, v4

    move v9, v7

    :goto_1
    if-ge v9, v5, :cond_8

    aget-object v10, v4, v9

    const-string v11, "com.xiaomi"

    iget-object v12, v10, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    :cond_4
    move v15, v8

    goto :goto_4

    :cond_5
    array-length v11, v3

    move v12, v7

    :goto_2
    if-ge v12, v11, :cond_4

    aget-object v13, v3, v12

    iget-object v14, v10, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v15, v13, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-static {v14, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_7

    iget-object v13, v13, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    new-instance v14, Landroid/content/Intent;

    const-string v15, "android.accounts.AccountAuthenticator"

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v13}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    invoke-virtual {v15, v14, v7}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v14

    if-eqz v14, :cond_7

    monitor-enter v2

    :try_start_2
    iget-object v15, v1, Lcom/miui/permcenter/monitor/a;->d:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v15, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lzb/e;

    if-nez v7, :cond_6

    new-instance v7, Lzb/e;

    invoke-direct {v7}, Lzb/e;-><init>()V

    iget-object v15, v1, Lcom/miui/permcenter/monitor/a;->d:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v15, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    new-instance v8, Lzb/a;

    iget-object v14, v14, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v14, v14, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    const/4 v15, 0x1

    invoke-direct {v8, v13, v14, v15}, Lzb/a;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v7, v6, v8}, Lzb/e;->a(ILzb/b;)V

    invoke-direct {v1, v0, v13}, Lcom/miui/permcenter/monitor/a;->d(Landroid/content/Context;Ljava/lang/String;)V

    monitor-exit v2

    goto :goto_3

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_7
    move v15, v8

    :goto_3
    add-int/lit8 v12, v12, 0x1

    move v8, v15

    const/4 v7, 0x0

    goto :goto_2

    :goto_4
    add-int/lit8 v9, v9, 0x1

    move v8, v15

    const/4 v7, 0x0

    goto :goto_1

    :cond_8
    return-void

    :catchall_2
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0
.end method

.method private m(Landroid/content/Context;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-class v2, Lcom/miui/permcenter/monitor/a;

    monitor-enter v2

    :try_start_0
    iget-object v3, v1, Lcom/miui/permcenter/monitor/a;->e:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/miui/permcenter/monitor/b;->b(I)Z

    move-result v4

    if-eqz v4, :cond_0

    move v3, v6

    goto :goto_0

    :cond_1
    move v3, v5

    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v3, :cond_2

    const-string v0, "Malicious-Usage"

    const-string v2, "loadPermUsage return for no need watching permission usage."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const-string v7, "permissionId"

    const-string v8, "pkgName"

    const-string v9, "calleePkg"

    const-string v10, "endTime"

    const-string v11, "count"

    const-string v12, "op"

    filled-new-array/range {v7 .. v12}, [Ljava/lang/String;

    move-result-object v15

    const/4 v3, 0x0

    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    sget-object v14, Lcom/miui/permission/PermissionContract;->RECORD_URI:Landroid/net/Uri;

    const-string v16, "calleePkg == \'null\' "

    const/16 v17, 0x0

    const-string v18, "_id DESC"

    invoke-virtual/range {v13 .. v18}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    :cond_3
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, 0x3

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lmc/c;->c(Ljava/lang/String;)J

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Lmc/c;->i(JJ)I

    move-result v4

    const/4 v9, 0x2

    if-lt v4, v9, :cond_4

    goto :goto_2

    :cond_4
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x4

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    const/4 v12, 0x5

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-static {v10, v11, v12}, Lcom/miui/permcenter/monitor/b;->f(JI)I

    move-result v10

    if-eqz v10, :cond_3

    if-lez v9, :cond_3

    invoke-direct {v1, v4, v10}, Lcom/miui/permcenter/monitor/a;->i(Ljava/lang/String;I)Z

    move-result v11

    if-nez v11, :cond_3

    invoke-static {v0, v4}, Lx4/f1;->K(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    goto :goto_1

    :cond_5
    monitor-enter v2
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v11, v1, Lcom/miui/permcenter/monitor/a;->d:Ljava/util/Map;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lzb/e;

    if-nez v11, :cond_6

    new-instance v11, Lzb/e;

    invoke-direct {v11}, Lzb/e;-><init>()V

    iget-object v12, v1, Lcom/miui/permcenter/monitor/a;->d:Ljava/util/Map;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    invoke-static {v10}, Lcom/miui/permcenter/monitor/b;->a(I)I

    move-result v12

    if-ne v12, v6, :cond_7

    new-instance v12, Lzb/d;

    invoke-direct {v12, v4, v9}, Lzb/d;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v11, v10, v12}, Lzb/e;->a(ILzb/b;)V

    :cond_7
    invoke-direct {v1, v0, v4}, Lcom/miui/permcenter/monitor/a;->d(Landroid/content/Context;Ljava/lang/String;)V

    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_8
    :goto_2
    invoke-static {v3}, Lbl/e;->a(Ljava/io/Closeable;)V

    return-void

    :goto_3
    invoke-static {v3}, Lbl/e;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0
.end method

.method private n(Ljava/lang/String;)I
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v1
.end method


# virtual methods
.method public c(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    if-eqz v0, :cond_13

    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_b

    :cond_0
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v1, v6}, Lcom/miui/permcenter/monitor/a;->n(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_1

    goto :goto_1

    :cond_1
    const-class v8, Lcom/miui/permcenter/monitor/a;

    monitor-enter v8
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v9, v1, Lcom/miui/permcenter/monitor/a;->d:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lzb/e;

    if-nez v9, :cond_2

    new-instance v9, Lzb/e;

    invoke-direct {v9}, Lzb/e;-><init>()V

    iget-object v10, v1, Lcom/miui/permcenter/monitor/a;->d:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-static {v7}, Lcom/miui/permcenter/monitor/b;->a(I)I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eq v10, v12, :cond_11

    const/4 v13, 0x3

    const/4 v14, 0x2

    const/4 v15, 0x4

    if-eq v10, v14, :cond_8

    if-eq v10, v13, :cond_5

    if-eq v10, v15, :cond_4

    :cond_3
    :goto_2
    move-object/from16 v0, p1

    goto/16 :goto_a

    :cond_4
    new-instance v10, Lzb/f;

    const-wide/16 v11, 0x0

    invoke-virtual {v4, v6, v11, v12}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v11

    invoke-direct {v10, v3, v11, v12}, Lzb/f;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v9, v7, v10}, Lzb/e;->a(ILzb/b;)V

    goto :goto_2

    :cond_5
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    move v10, v11

    :goto_3
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v10, v13, :cond_3

    invoke-virtual {v6, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v15, "@"

    invoke-virtual {v13, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    array-length v15, v13

    if-ge v15, v14, :cond_6

    goto :goto_4

    :cond_6
    new-instance v15, Lzb/a;

    aget-object v14, v13, v11

    aget-object v13, v13, v12

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-direct {v15, v3, v14, v13}, Lzb/a;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v9, v7, v15}, Lzb/e;->a(ILzb/b;)V

    iget-object v13, v1, Lcom/miui/permcenter/monitor/a;->g:Ljava/util/Map;

    invoke-interface {v13, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lzb/i;

    if-nez v13, :cond_7

    new-instance v13, Lzb/i;

    invoke-direct {v13}, Lzb/i;-><init>()V

    iget-object v14, v1, Lcom/miui/permcenter/monitor/a;->g:Ljava/util/Map;

    invoke-interface {v14, v3, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    invoke-virtual {v15}, Lzb/b;->c()I

    move-result v14

    invoke-virtual {v13, v7, v14}, Lzb/i;->a(II)V

    :goto_4
    add-int/lit8 v10, v10, 0x1

    const/4 v14, 0x2

    goto :goto_3

    :cond_8
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    :goto_5
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v11, v10, :cond_3

    invoke-virtual {v6, v11}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v14, "@"

    invoke-virtual {v10, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    array-length v14, v10

    if-ge v14, v15, :cond_9

    move v12, v13

    goto/16 :goto_8

    :cond_9
    new-instance v14, Lzb/c;

    invoke-direct {v14}, Lzb/c;-><init>()V

    invoke-virtual {v14, v3}, Lzb/b;->g(Ljava/lang/String;)V

    aget-object v17, v10, v13

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v14, v13}, Lzb/c;->k(I)V

    const/4 v13, 0x2

    aget-object v16, v10, v13

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    invoke-virtual {v14, v13}, Lzb/c;->n(Z)V

    aget-object v13, v10, v12

    invoke-virtual {v14, v13}, Lzb/c;->l(Ljava/lang/String;)V

    aget-object v10, v10, v12

    invoke-static {v10}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v10

    if-eqz v10, :cond_10

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_a

    goto/16 :goto_9

    :cond_a
    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14, v13}, Lzb/c;->m(Ljava/lang/String;)V

    if-ne v7, v15, :cond_b

    iget-object v13, v1, Lcom/miui/permcenter/monitor/a;->j:Ljava/util/List;

    invoke-virtual {v10}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v13, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    const/4 v12, 0x7

    iget-object v13, v1, Lcom/miui/permcenter/monitor/a;->d:Ljava/util/Map;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v13, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lzb/e;

    if-nez v13, :cond_c

    new-instance v13, Lzb/e;

    invoke-direct {v13}, Lzb/e;-><init>()V

    iget-object v15, v1, Lcom/miui/permcenter/monitor/a;->d:Ljava/util/Map;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v15, v0, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_b
    move v12, v7

    move-object v13, v9

    :cond_c
    :goto_6
    const/4 v0, 0x4

    if-ne v12, v0, :cond_f

    iget-object v0, v1, Lcom/miui/permcenter/monitor/a;->g:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzb/i;

    if-nez v0, :cond_d

    new-instance v0, Lzb/i;

    invoke-direct {v0}, Lzb/i;-><init>()V

    iget-object v12, v1, Lcom/miui/permcenter/monitor/a;->g:Ljava/util/Map;

    invoke-interface {v12, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    invoke-virtual {v14}, Lzb/c;->c()I

    move-result v12

    const/4 v15, 0x4

    invoke-virtual {v0, v15, v12}, Lzb/i;->a(II)V

    iget-object v0, v1, Lcom/miui/permcenter/monitor/a;->g:Ljava/util/Map;

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzb/i;

    if-nez v0, :cond_e

    new-instance v0, Lzb/i;

    invoke-direct {v0}, Lzb/i;-><init>()V

    iget-object v12, v1, Lcom/miui/permcenter/monitor/a;->g:Ljava/util/Map;

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v12, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    invoke-virtual {v14}, Lzb/c;->c()I

    move-result v10

    const/4 v12, 0x3

    invoke-virtual {v0, v12, v10}, Lzb/i;->a(II)V

    goto :goto_7

    :cond_f
    move v15, v0

    const/4 v12, 0x3

    :goto_7
    invoke-virtual {v13, v7, v14}, Lzb/e;->a(ILzb/b;)V

    :goto_8
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p2

    move v13, v12

    const/4 v12, 0x1

    goto/16 :goto_5

    :cond_10
    :goto_9
    monitor-exit v8

    return-void

    :cond_11
    new-instance v0, Lzb/d;

    invoke-virtual {v4, v6, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    invoke-direct {v0, v3, v6}, Lzb/d;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v9, v7, v0}, Lzb/e;->a(ILzb/b;)V

    goto/16 :goto_2

    :goto_a
    invoke-direct {v1, v0, v3}, Lcom/miui/permcenter/monitor/a;->d(Landroid/content/Context;Ljava/lang/String;)V

    monitor-exit v8

    move-object/from16 v0, p2

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_12
    move-object/from16 v0, p1

    move-object/from16 v0, p2

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_13
    :goto_b
    return-void
.end method

.method public g(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lzb/k;

    invoke-direct {v0, p0, p1}, Lzb/k;-><init>(Lcom/miui/permcenter/monitor/a;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public o(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uploadFileDataToOneTrack: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/permcenter/monitor/a;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Malicious-Usage"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/miui/permcenter/monitor/a;->b:Z

    if-eqz v0, :cond_0

    new-instance v0, Lzb/l;

    invoke-direct {v0, p0, p1}, Lzb/l;-><init>(Lcom/miui/permcenter/monitor/a;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

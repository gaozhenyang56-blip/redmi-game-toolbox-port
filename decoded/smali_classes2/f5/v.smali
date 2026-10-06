.class public Lf5/v;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf5/v$c;
    }
.end annotation


# static fields
.field private static j:Lf5/v;


# instance fields
.field private final a:Landroid/content/pm/PackageManager;

.field private b:Ljava/lang/Object;

.field private c:Lf5/v$c;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf5/x;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/Map;
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

.field private final i:Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor <init>()V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lf5/v;->d:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lf5/v;->e:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lf5/v;->f:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lf5/v;->g:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lf5/v;->h:Ljava/util/Map;

    new-instance v0, Lf5/v$a;

    invoke-direct {v0, p0}, Lf5/v$a;-><init>(Lf5/v;)V

    iput-object v0, p0, Lf5/v;->i:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lf5/v;->a:Landroid/content/pm/PackageManager;

    :try_start_0
    const-string v0, "android.os.ServiceManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getService"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-array v4, v2, [Ljava/lang/Object;

    const-string v6, "package"

    aput-object v6, v4, v5

    invoke-static {v0, v1, v3, v4}, Lbh/f;->h(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    const-string v1, "android.content.pm.IPackageManager$Stub"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v3, "asInterface"

    new-array v4, v2, [Ljava/lang/Class;

    const-class v6, Landroid/os/IBinder;

    aput-object v6, v4, v5

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v5

    invoke-static {v1, v3, v4, v2}, Lbh/f;->h(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lf5/v;->b:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Lf5/v;->b:Ljava/lang/Object;

    const-string v1, "GDAppManager"

    const-string v2, "DockAppManager: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method static synthetic a(Lf5/v;)V
    .locals 0

    invoke-direct {p0}, Lf5/v;->o()V

    return-void
.end method

.method static synthetic b(Lf5/v;)V
    .locals 0

    invoke-direct {p0}, Lf5/v;->g()V

    return-void
.end method

.method public static declared-synchronized d()Lf5/v;
    .locals 2

    const-class v0, Lf5/v;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lf5/v;->j:Lf5/v;

    if-nez v1, :cond_0

    new-instance v1, Lf5/v;

    invoke-direct {v1}, Lf5/v;-><init>()V

    sput-object v1, Lf5/v;->j:Lf5/v;

    :cond_0
    sget-object v1, Lf5/v;->j:Lf5/v;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private declared-synchronized e(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/util/List;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-static {p4}, Lc7/c;->n(Ljava/util/Collection;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_1
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_8

    iget-object v2, p0, Lf5/v;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x1e

    if-ne v2, v3, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {p2, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lf5/v;->a:Landroid/content/pm/PackageManager;

    invoke-static {p1, v2, v3}, Lx4/f1;->e(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/PackageManager;)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-eqz v3, :cond_3

    new-instance v4, Lf5/d;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {v4, v2, v5, v3, p5}, Lf5/d;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iget-object v3, p0, Lf5/v;->d:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lf5/v;->d:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v3, p0, Lf5/v;->b:Ljava/lang/Object;

    invoke-static {v3, v2}, Ltg/a;->g(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne p5, v4, :cond_4

    invoke-static {v2}, Lf7/b;->o(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_1

    :cond_4
    move v4, v0

    :goto_1
    if-eqz v4, :cond_5

    invoke-static {v2}, Lf7/b;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_5
    if-nez v3, :cond_6

    if-eqz v4, :cond_7

    :cond_6
    invoke-interface {p3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lf5/v;->a:Landroid/content/pm/PackageManager;

    const/16 v4, 0x3e7

    invoke-static {p1, v2, v3, v4}, Lx4/f1;->Q(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/PackageManager;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-eqz v3, :cond_7

    new-instance v4, Lf5/d;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {v4, v2, v5, v3, p5}, Lf5/d;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iget-object v2, p0, Lf5/v;->d:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lf5/v;->d:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_7
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_8
    :goto_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized g()V
    .locals 11

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lf5/v;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lf7/b;->q(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lf5/v;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object v0, p0, Lf5/v;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lf7/b;->s(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lc7/c;->n(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lf5/v;->f:Ljava/util/List;

    invoke-static {v1}, Lf7/b;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lf5/v;->g:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lf5/v;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lf5/v;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    monitor-exit p0

    return-void

    :cond_3
    :try_start_1
    iget-object v0, p0, Lf5/v;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lf5/v;->h:Ljava/util/Map;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    invoke-static {v1}, Lf5/v;->h(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object v0, p0, Lf5/v;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lf5/v;->e:Ljava/util/List;

    invoke-static {}, Lk5/a;->p()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lf5/v;->h:Ljava/util/Map;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    iget-object v4, p0, Lf5/v;->h:Ljava/util/Map;

    const/16 v5, 0x3e7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v8

    iget-object v6, p0, Lf5/v;->d:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    if-eqz v2, :cond_4

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_4
    if-eqz v4, :cond_5

    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_5
    iget-object v2, p0, Lf5/v;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_1

    :cond_7
    invoke-static {v4}, Lm5/c;->a(Ljava/lang/String;)Z

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_8

    :try_start_2
    new-instance v6, Li5/a;

    invoke-direct {v6}, Li5/a;-><init>()V

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Li5/a;->a(Lorg/json/JSONObject;)V

    iget-object v4, v6, Li5/a;->g:Ljava/lang/String;

    iget-object v7, p0, Lf5/v;->a:Landroid/content/pm/PackageManager;

    invoke-static {v8, v4, v7}, Lx4/f1;->e(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/PackageManager;)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lf5/v;->d:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lf5/v;->d:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v4

    :try_start_3
    const-string v6, "GDAppManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "generate quickInfo error "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_8
    const-string v6, ",,"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    array-length v6, v4

    if-nez v6, :cond_9

    goto :goto_1

    :cond_9
    aget-object v6, v4, v3

    array-length v7, v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v9, 0x2

    const/4 v10, -0x1

    if-ne v7, v9, :cond_a

    const/4 v7, 0x1

    :try_start_4
    aget-object v4, v4, v7

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catch_1
    :cond_a
    move v4, v10

    :goto_2
    if-eq v4, v10, :cond_c

    :try_start_5
    invoke-static {v4}, Lx4/z1;->m(I)I

    move-result v7

    if-ne v7, v5, :cond_c

    iget-object v7, p0, Lf5/v;->a:Landroid/content/pm/PackageManager;

    invoke-static {v4}, Lx4/z1;->m(I)I

    move-result v4

    invoke-static {v8, v6, v7, v4}, Lx4/f1;->Q(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/PackageManager;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-interface {v1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    new-instance v7, Lf5/d;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {v7, v6, v9, v4, v3}, Lf5/d;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iget-object v4, p0, Lf5/v;->d:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    iget-object v4, p0, Lf5/v;->d:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_c
    iget-object v4, p0, Lf5/v;->a:Landroid/content/pm/PackageManager;

    invoke-static {v8, v6, v4}, Lx4/f1;->e(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/PackageManager;)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    new-instance v7, Lf5/d;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {v7, v6, v9, v4, v3}, Lf5/d;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iget-object v4, p0, Lf5/v;->d:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    iget-object v4, p0, Lf5/v;->d:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_e
    iget-object v6, p0, Lf5/v;->g:Ljava/util/List;

    const/4 v7, 0x1

    move-object v2, p0

    move-object v3, v8

    move-object v4, v0

    move-object v5, v1

    invoke-direct/range {v2 .. v7}, Lf5/v;->e(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/util/List;I)V

    iget-object v6, p0, Lf5/v;->f:Ljava/util/List;

    const/4 v7, 0x2

    move-object v2, p0

    move-object v3, v8

    move-object v4, v0

    move-object v5, v1

    invoke-direct/range {v2 .. v7}, Lf5/v;->e(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/util/List;I)V

    const-string v0, "GDAppManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadDockApps: mDockAppList="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lf5/v;->d:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lf5/v;->j()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static h(Landroid/content/Context;)Ljava/util/Map;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    :try_start_0
    const-string v1, "user"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v1

    const-string v2, "security"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmiui/security/SecurityManager;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {p0, v2}, Lmiui/security/SecurityManager;->getAllPrivacyApps(I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadHiddenApps: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "GDAppManager"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private j()V
    .locals 1

    iget-object v0, p0, Lf5/v;->c:Lf5/v$c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lf5/v$c;->a()V

    :cond_0
    return-void
.end method

.method private declared-synchronized o()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lf5/v;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Lf5/v;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized c()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lg5/j;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    invoke-static {v1}, Lm5/f;->g(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lg5/l;

    invoke-direct {v1}, Lg5/l;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lg5/d;

    invoke-direct {v1}, Lg5/d;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lf5/v;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf5/x;

    instance-of v3, v2, Lf5/d;

    if-eqz v3, :cond_5

    check-cast v2, Lf5/d;

    iget-boolean v3, v2, Lf5/d;->d:Z

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const-string v3, "pkg_icon://"

    iget-object v4, v2, Lf5/d;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v4, v2, Lf5/d;->a:I

    invoke-static {v4}, Lx4/z1;->m(I)I

    move-result v4

    const/16 v5, 0x3e7

    if-ne v4, v5, :cond_3

    const-string v3, "pkg_icon_xspace://"

    iget-object v4, v2, Lf5/d;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_3
    new-instance v4, Lg5/f;

    invoke-direct {v4, v2}, Lg5/f;-><init>(Lf5/d;)V

    invoke-static {}, Lcom/miui/common/e;->e()Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Lx4/o0;->f:Lrh/c;

    new-instance v5, Lf5/v$b;

    invoke-direct {v5, p0, v4}, Lf5/v$b;-><init>(Lf5/v;Lg5/f;)V

    invoke-static {v3, v2, v5}, Lx4/o0;->o(Ljava/lang/String;Lrh/c;Lyh/a;)V

    :cond_4
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    instance-of v3, v2, Li5/a;

    if-eqz v3, :cond_1

    check-cast v2, Li5/a;

    invoke-static {v2}, Li5/c;->d(Li5/a;)Li5/c;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    invoke-static {}, Lx4/t;->E()Z

    move-result v1

    if-nez v1, :cond_7

    new-instance v1, Lg5/b;

    invoke-direct {v1}, Lg5/b;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_7
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public f()V
    .locals 2

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    iget-object v1, p0, Lf5/v;->i:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lm5/b;->c(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public declared-synchronized i(ILjava/lang/String;Z)V
    .locals 5
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lf5/v;->d:Ljava/util/List;

    invoke-static {v0}, Lc7/c;->n(Ljava/util/Collection;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    :try_start_1
    iget-object p1, p0, Lf5/v;->f:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object p1

    new-instance p3, Lf5/s;

    invoke-direct {p3, p0}, Lf5/s;-><init>(Lf5/v;)V

    invoke-virtual {p1, p3}, Lef/z;->b(Ljava/lang/Runnable;)V

    goto :goto_3

    :cond_1
    iget-object p3, p0, Lf5/v;->d:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_2
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf5/x;

    instance-of v1, v0, Lf5/d;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Lf5/d;

    iget v1, v1, Lf5/d;->a:I

    if-ne v1, p1, :cond_3

    move-object v1, v0

    check-cast v1, Lf5/d;

    iget-object v1, v1, Lf5/d;->b:Ljava/lang/String;

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    goto :goto_1

    :cond_3
    move v1, v3

    :goto_1
    instance-of v4, v0, Li5/a;

    if-eqz v4, :cond_4

    move-object v4, v0

    check-cast v4, Li5/a;

    iget-object v4, v4, Li5/a;->g:Ljava/lang/String;

    invoke-static {p2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    move v2, v3

    :goto_2
    if-nez v1, :cond_5

    if-eqz v2, :cond_2

    :cond_5
    invoke-interface {p3}, Ljava/util/Iterator;->remove()V

    invoke-static {v0}, Lk5/a;->u(Lf5/x;)V

    goto :goto_0

    :cond_6
    :goto_3
    const-string p1, "com.miui.notes"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p1

    invoke-static {p1}, Lm5/f;->e(Landroid/content/Context;)V

    :cond_7
    invoke-direct {p0}, Lf5/v;->j()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized k(Ljava/lang/String;ZI)V
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lf5/v;->d:Ljava/util/List;

    invoke-static {v0}, Lc7/c;->n(Ljava/util/Collection;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lf5/v;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf5/x;

    instance-of v2, v1, Lf5/d;

    if-eqz v2, :cond_2

    check-cast v1, Lf5/d;

    iget-object v2, v1, Lf5/d;->b:Ljava/lang/String;

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, v1, Lf5/d;->a:I

    invoke-static {v2}, Lx4/z1;->m(I)I

    move-result v2

    if-ne v2, p3, :cond_1

    iput-boolean p2, v1, Lf5/d;->d:Z

    if-eqz p2, :cond_1

    :goto_1
    invoke-static {v1}, Lk5/a;->u(Lf5/x;)V

    goto :goto_0

    :cond_2
    instance-of v2, v1, Li5/a;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Li5/a;

    iget-object v2, v2, Li5/a;->g:Ljava/lang/String;

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lf5/v;->h:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lf5/v;->h:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "GDAppManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "privacyAppChange: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " uid= "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " p= "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lf5/v;->j()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public l()V
    .locals 2

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    iget-object v1, p0, Lf5/v;->i:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lm5/b;->d(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public m()V
    .locals 0

    invoke-direct {p0}, Lf5/v;->g()V

    return-void
.end method

.method public n(Lf5/v$c;)V
    .locals 0

    iput-object p1, p0, Lf5/v;->c:Lf5/v$c;

    return-void
.end method

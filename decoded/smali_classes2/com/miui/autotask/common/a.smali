.class public final Lcom/miui/autotask/common/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/autotask/common/a$a;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nGeofenceManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GeofenceManager.kt\ncom/miui/autotask/common/GeofenceManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,356:1\n1855#2,2:357\n*S KotlinDebug\n*F\n+ 1 GeofenceManager.kt\ncom/miui/autotask/common/GeofenceManager\n*L\n231#1:357,2\n*E\n"
    }
.end annotation


# static fields
.field public static final j:Lcom/miui/autotask/common/a$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/autotask/taskitem/AddressTaskItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final e:Loj/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final f:Loj/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private g:Lbi/c;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private h:Lcom/xiaomi/gnss/polaris/sdk/geofence/PolarisGeofenceService;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final i:Loj/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/autotask/common/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/autotask/common/a$a;-><init>(Lbk/g;)V

    sput-object v0, Lcom/miui/autotask/common/a;->j:Lcom/miui/autotask/common/a$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/autotask/common/a;->a:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/autotask/common/a;->b:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/autotask/common/a;->c:Ljava/util/Map;

    sget-object v0, Lcom/miui/autotask/common/a$c;->a:Lcom/miui/autotask/common/a$c;

    invoke-static {v0}, Loj/g;->a(Lak/a;)Loj/f;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/autotask/common/a;->e:Loj/f;

    sget-object v0, Lcom/miui/autotask/common/a$b;->a:Lcom/miui/autotask/common/a$b;

    invoke-static {v0}, Loj/g;->a(Lak/a;)Loj/f;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/autotask/common/a;->f:Loj/f;

    sget-object v0, Lcom/miui/autotask/common/a$d;->a:Lcom/miui/autotask/common/a$d;

    invoke-static {v0}, Loj/g;->a(Lak/a;)Loj/f;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/autotask/common/a;->i:Loj/f;

    return-void
.end method

.method public static final synthetic a(Lcom/miui/autotask/common/a;)Lbi/k;
    .locals 0

    invoke-direct {p0}, Lcom/miui/autotask/common/a;->k()Lbi/k;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Lcom/miui/autotask/common/a;)Lcom/xiaomi/gnss/polaris/sdk/geofence/PolarisGeofenceService;
    .locals 0

    iget-object p0, p0, Lcom/miui/autotask/common/a;->h:Lcom/xiaomi/gnss/polaris/sdk/geofence/PolarisGeofenceService;

    return-object p0
.end method

.method public static final synthetic c(Lcom/miui/autotask/common/a;)Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;
    .locals 0

    invoke-direct {p0}, Lcom/miui/autotask/common/a;->l()Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic d(Lcom/miui/autotask/common/a;Lbi/c;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/autotask/common/a;->g:Lbi/c;

    return-void
.end method

.method public static final synthetic e(Lcom/miui/autotask/common/a;Lcom/xiaomi/gnss/polaris/sdk/geofence/PolarisGeofenceService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/autotask/common/a;->h:Lcom/xiaomi/gnss/polaris/sdk/geofence/PolarisGeofenceService;

    return-void
.end method

.method private final f(Ljava/lang/String;DD)V
    .locals 2

    const-string v0, "GeofenceManager"

    new-instance v1, Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;

    invoke-direct {v1}, Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;-><init>()V

    invoke-virtual {v1, p1}, Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;->setId(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;->setLatitude(D)V

    invoke-virtual {v1, p4, p5}, Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;->setLongitude(D)V

    const/16 p2, 0x1f4

    invoke-virtual {v1, p2}, Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;->setRadius(I)V

    const/4 p2, 0x3

    invoke-virtual {v1, p2}, Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;->setTransitionType(I)V

    invoke-virtual {v1, p2}, Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;->setConfidence(I)V

    :try_start_0
    iget-object p2, p0, Lcom/miui/autotask/common/a;->h:Lcom/xiaomi/gnss/polaris/sdk/geofence/PolarisGeofenceService;

    if-eqz p2, :cond_0

    const/4 p3, 0x0

    invoke-interface {p2, v1, p3}, Lcom/xiaomi/gnss/polaris/sdk/geofence/PolarisGeofenceService;->addGeofence(Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "add geofence result:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/xiaomi/gnss/polaris/sdk/exception/PolarisException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    const-string p3, "polaris add GeofenceError:"

    invoke-static {v0, p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    iget-object p2, p0, Lcom/miui/autotask/common/a;->d:Ljava/util/Set;

    if-eqz p2, :cond_1

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object p2, p0, Lcom/miui/autotask/common/a;->c:Ljava/util/Map;

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final i(Lcom/miui/autotask/taskitem/AddressTaskItem;)V
    .locals 8

    iget-object v0, p0, Lcom/miui/autotask/common/a;->d:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/autotask/common/a;->d:Ljava/util/Set;

    invoke-direct {p0}, Lcom/miui/autotask/common/a;->o()V

    invoke-direct {p0}, Lcom/miui/autotask/common/a;->n()V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "auto_task_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/TaskItem;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/miui/autotask/common/a;->d:Ljava/util/Set;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    if-eqz v1, :cond_2

    return-void

    :cond_2
    sget-object v0, Lcom/miui/autotask/common/a;->j:Lcom/miui/autotask/common/a$a;

    invoke-virtual {v0}, Lcom/miui/autotask/common/a$a;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/AddressTaskItem;->w()D

    move-result-wide v4

    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/AddressTaskItem;->x()D

    move-result-wide v6

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/miui/autotask/common/a;->f(Ljava/lang/String;DD)V

    :cond_3
    return-void
.end method

.method private final j()V
    .locals 3

    iget-object v0, p0, Lcom/miui/autotask/common/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/autotask/common/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/autotask/taskitem/AddressTaskItem;

    invoke-direct {p0, v1}, Lcom/miui/autotask/common/a;->i(Lcom/miui/autotask/taskitem/AddressTaskItem;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/autotask/common/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1
    iget-object v0, p0, Lcom/miui/autotask/common/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/autotask/common/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/autotask/common/a;->c:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;

    if-eqz v2, :cond_3

    invoke-direct {p0, v2}, Lcom/miui/autotask/common/a;->q(Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;)V

    :cond_3
    iget-object v2, p0, Lcom/miui/autotask/common/a;->d:Ljava/util/Set;

    if-eqz v2, :cond_2

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    return-void
.end method

.method private final k()Lbi/k;
    .locals 1

    iget-object v0, p0, Lcom/miui/autotask/common/a;->f:Loj/f;

    invoke-interface {v0}, Loj/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbi/k;

    return-object v0
.end method

.method private final l()Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;
    .locals 1

    iget-object v0, p0, Lcom/miui/autotask/common/a;->e:Loj/f;

    invoke-interface {v0}, Loj/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;

    return-object v0
.end method

.method private final m()Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/miui/autotask/common/a;->i:Loj/f;

    invoke-interface {v0}, Loj/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private final n()V
    .locals 12

    const-string v0, "GeofenceManager"

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/miui/autotask/common/a;->g:Lbi/c;

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lbi/c;->a()Ljava/util/Map;

    move-result-object v2

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "izat geofence size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v4

    goto :goto_0

    :cond_1
    move v4, v1

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    const-string v4, "init izat service error"

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    const/4 v0, 0x1

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v1, v0

    :cond_3
    if-nez v1, :cond_6

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbi/c$b;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbi/c$d;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "auto_task_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lbi/c$b;->getContext()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v4, p0, Lcom/miui/autotask/common/a;->g:Lbi/c;

    if-eqz v4, :cond_4

    invoke-interface {v4, v3}, Lbi/c;->b(Lbi/c$b;)V

    :cond_4
    invoke-virtual {v2}, Lbi/c$d;->c()D

    move-result-wide v8

    invoke-virtual {v2}, Lbi/c$d;->d()D

    move-result-wide v10

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/miui/autotask/common/a;->f(Ljava/lang/String;DD)V

    goto :goto_2

    :cond_5
    invoke-direct {p0}, Lcom/miui/autotask/common/a;->m()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "isIzatEmpty"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_6
    return-void
.end method

.method private final o()V
    .locals 7

    const-string v0, "GeofenceManager"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v2, p0, Lcom/miui/autotask/common/a;->h:Lcom/xiaomi/gnss/polaris/sdk/geofence/PolarisGeofenceService;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/xiaomi/gnss/polaris/sdk/geofence/PolarisGeofenceService;->listGeofence()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init polars geofence size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    const-string v2, "polaris service is empty or geofenceList is empty"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "init polars error!"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;

    sget-object v4, Lcom/miui/autotask/common/a;->j:Lcom/miui/autotask/common/a$a;

    invoke-virtual {v3}, Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;->getId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "miGeofence.id"

    invoke-static {v5, v6}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/miui/autotask/common/a$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lu3/h;->y0()Lu3/h;

    move-result-object v5

    invoke-virtual {v5, v4}, Lu3/h;->l0(Ljava/lang/String;)Lcom/miui/autotask/taskitem/AddressTaskItem;

    move-result-object v4

    if-nez v4, :cond_2

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/miui/autotask/common/a;->d:Ljava/util/Set;

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v6}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v4, p0, Lcom/miui/autotask/common/a;->c:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v6}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed geofence size = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;

    invoke-direct {p0, v1}, Lcom/miui/autotask/common/a;->q(Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;)V

    goto :goto_2

    :cond_5
    return-void
.end method

.method private final q(Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;)V
    .locals 3

    const-string v0, "GeofenceManager"

    iget-object v1, p0, Lcom/miui/autotask/common/a;->h:Lcom/xiaomi/gnss/polaris/sdk/geofence/PolarisGeofenceService;

    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v1, p1}, Lcom/xiaomi/gnss/polaris/sdk/geofence/PolarisGeofenceService;->deleteGeofence(Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "polaris delete geofence error"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/autotask/common/a;->b:Ljava/util/List;

    invoke-virtual {p1}, Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v1, "miGeofence.id"

    invoke-static {p1, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method private final s()V
    .locals 7

    invoke-direct {p0}, Lcom/miui/autotask/common/a;->m()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "isIzatEmpty"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "GeofenceManager"

    if-eqz v0, :cond_0

    const-string v0, "IZat is empty!"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v0, Lcom/miui/autotask/common/a;->j:Lcom/miui/autotask/common/a$a;

    invoke-static {v0}, Lcom/miui/autotask/common/a$a;->a(Lcom/miui/autotask/common/a$a;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "izat no support"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-static {}, Llk/w0;->b()Llk/d0;

    move-result-object v0

    invoke-static {v0}, Llk/j0;->a(Ltj/g;)Llk/i0;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v4, Lcom/miui/autotask/common/a$e;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Lcom/miui/autotask/common/a$e;-><init>(Lcom/miui/autotask/common/a;Ltj/d;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Llk/g;->b(Llk/i0;Ltj/g;Llk/k0;Lak/p;ILjava/lang/Object;)Llk/s1;

    return-void
.end method

.method private final t()V
    .locals 7

    sget-object v0, Lcom/miui/autotask/common/a;->j:Lcom/miui/autotask/common/a$a;

    invoke-virtual {v0}, Lcom/miui/autotask/common/a$a;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "GeofenceManager"

    const-string v1, "Polaris no support"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_1

    return-void

    :cond_1
    invoke-static {}, Llk/w0;->b()Llk/d0;

    move-result-object v0

    invoke-static {v0}, Llk/j0;->a(Ltj/g;)Llk/i0;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v4, Lcom/miui/autotask/common/a$f;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Lcom/miui/autotask/common/a$f;-><init>(Lcom/miui/autotask/common/a;Ltj/d;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Llk/g;->b(Llk/i0;Ltj/g;Llk/k0;Lak/p;ILjava/lang/Object;)Llk/s1;

    return-void
.end method


# virtual methods
.method public final g(Lcom/miui/autotask/taskitem/AddressTaskItem;)V
    .locals 1
    .param p1    # Lcom/miui/autotask/taskitem/AddressTaskItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "item"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/miui/autotask/common/a;->j:Lcom/miui/autotask/common/a$a;

    invoke-virtual {v0}, Lcom/miui/autotask/common/a$a;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/autotask/common/a;->h:Lcom/xiaomi/gnss/polaris/sdk/geofence/PolarisGeofenceService;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/miui/autotask/common/a;->i(Lcom/miui/autotask/taskitem/AddressTaskItem;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/autotask/common/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final h(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "uuid"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "auto_task_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/autotask/common/a;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/miui/autotask/common/a;->q(Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/autotask/common/a;->d:Ljava/util/Set;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public final p()V
    .locals 3

    invoke-direct {p0}, Lcom/miui/autotask/common/a;->k()Lbi/k;

    move-result-object v0

    const-string v1, "GeofenceManager"

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/miui/autotask/common/a;->g:Lbi/c;

    if-eqz v2, :cond_0

    :try_start_0
    invoke-virtual {v0, v2}, Lbi/k;->T(Lbi/c;)V

    sget-object v0, Loj/t;->a:Loj/t;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "disconnect izat service error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/miui/autotask/common/a;->h:Lcom/xiaomi/gnss/polaris/sdk/geofence/PolarisGeofenceService;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/xiaomi/gnss/polaris/sdk/geofence/PolarisGeofenceService;->unregisterComponent()V
    :try_end_1
    .catch Lcom/xiaomi/gnss/polaris/sdk/exception/PolarisException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v2, "unregisterComponent error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-void
.end method

.method public final r()V
    .locals 2

    const-string v0, "GeofenceManager"

    const-string v1, "startGeofence"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/miui/autotask/common/a;->t()V

    invoke-direct {p0}, Lcom/miui/autotask/common/a;->s()V

    invoke-direct {p0}, Lcom/miui/autotask/common/a;->j()V

    return-void
.end method

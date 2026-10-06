.class public Lk7/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk7/f$b;
    }
.end annotation


# static fields
.field private static d:Lk7/f;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lk7/f;->c:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a(Lk7/f;Ljava/lang/String;Lk7/f$b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lk7/f;->q(Ljava/lang/String;Lk7/f$b;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lk7/f$b;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lk7/f;->o(Lk7/f$b;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic c(Lk7/f;Lk7/f$b;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lk7/f;->p(Lk7/f$b;Z)V

    return-void
.end method

.method public static synthetic d(Lk7/f$b;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lk7/f;->n(Lk7/f$b;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic e(Lk7/f;Ljava/lang/String;Lk7/f$b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lk7/f;->r(Ljava/lang/String;Lk7/f$b;)V

    return-void
.end method

.method static synthetic f(Lk7/f;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lk7/f;->a:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic g(Lk7/f;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lk7/f;->b:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic h(Lk7/f;Ljava/util/List;Lk7/f$b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lk7/f;->s(Ljava/util/List;Lk7/f$b;)V

    return-void
.end method

.method private i()Ljava/lang/String;
    .locals 5

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_1

    const-string v0, ""

    :try_start_0
    invoke-static {}, Lef/v;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/securitykey/ConfigManager;->getUuidAesKey(Landroid/content/Context;)Lcom/miui/securitykey/ConfigManager$UuidAesKey;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/miui/securitykey/ConfigManager$UuidAesKey;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/miui/securitykey/ConfigManager$UuidAesKey;->getIv()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v1, v3, v2}, Leg/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "GameAwardRepository"

    const-string v3, "getAdvertisingId error"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lef/w;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private j(ILjava/lang/String;)Ljava/lang/String;
    .locals 0

    const/16 p2, 0x2715

    if-eq p1, p2, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    invoke-static {}, Lcom/miui/securitycenter/Application;->z()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f120a99

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static declared-synchronized k()Lk7/f;
    .locals 2

    const-class v0, Lk7/f;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lk7/f;->d:Lk7/f;

    if-nez v1, :cond_0

    new-instance v1, Lk7/f;

    invoke-direct {v1}, Lk7/f;-><init>()V

    sput-object v1, Lk7/f;->d:Lk7/f;

    :cond_0
    sget-object v1, Lk7/f;->d:Lk7/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private l()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.miui.securityadd"

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    const-string v2, "active_float_version"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    move v0, v2

    :cond_0
    return v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail call isAppSupport : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GameAwardRepository"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0
.end method

.method private static synthetic n(Lk7/f$b;Ljava/util/List;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lk7/f$b;->c(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private static synthetic o(Lk7/f$b;Ljava/util/List;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lk7/f$b;->c(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private synthetic p(Lk7/f$b;Z)V
    .locals 3

    invoke-static {}, Li7/i;->l()Li7/i;

    move-result-object v0

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Li7/i;->o(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0}, Lk7/f;->l()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v0}, Lc7/c;->n(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_2

    iget-object p2, p0, Lk7/f;->a:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lk7/f;->b:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    :cond_1
    invoke-static {}, Lwe/c;->j()Lwe/c;

    move-result-object p2

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    new-instance v2, Lk7/f$a;

    invoke-direct {v2, p0, v0, p1}, Lk7/f$a;-><init>(Lk7/f;Ljava/util/List;Lk7/f$b;)V

    invoke-virtual {p2, v1, v2}, Lwe/c;->k(Landroid/content/Context;Lwe/c$c;)V

    return-void

    :cond_2
    invoke-direct {p0, v0, p1}, Lk7/f;->s(Ljava/util/List;Lk7/f$b;)V

    return-void

    :cond_3
    :goto_0
    iget-object p2, p0, Lk7/f;->c:Landroid/os/Handler;

    new-instance v1, Lk7/c;

    invoke-direct {v1, p1, v0}, Lk7/c;-><init>(Lk7/f$b;Ljava/util/List;)V

    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic q(Ljava/lang/String;Lk7/f$b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p3}, Lcom/miui/earthquakewarning/utils/MD5Util;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lk7/f;->a:Ljava/lang/String;

    iput-object p4, p0, Lk7/f;->b:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lk7/f;->y(Ljava/lang/String;Lk7/f$b;)V

    return-void
.end method

.method private synthetic r(Ljava/lang/String;Lk7/f$b;)V
    .locals 3

    iget-object v0, p0, Lk7/f;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lk7/f;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lk7/f;->y(Ljava/lang/String;Lk7/f$b;)V

    return-void

    :cond_1
    :goto_0
    invoke-static {}, Lwe/c;->j()Lwe/c;

    move-result-object v0

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    new-instance v2, Lk7/d;

    invoke-direct {v2, p0, p1, p2}, Lk7/d;-><init>(Lk7/f;Ljava/lang/String;Lk7/f$b;)V

    invoke-virtual {v0, v1, v2}, Lwe/c;->k(Landroid/content/Context;Lwe/c$c;)V

    return-void
.end method

.method private s(Ljava/util/List;Lk7/f$b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Li7/a;",
            ">;",
            "Lk7/f$b;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lk7/f;->x(Ljava/util/List;Z)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lc7/c;->o(Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li7/a;

    iget-object v3, v2, Li7/a;->a:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lj7/a;

    iput-object v3, v2, Li7/a;->d:Lj7/a;

    goto :goto_0

    :cond_0
    invoke-static {}, Li7/i;->l()Li7/i;

    move-result-object v1

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Li7/i;->N(Landroid/content/Context;Ljava/util/Map;)V

    iget-object v0, p0, Lk7/f;->c:Landroid/os/Handler;

    new-instance v1, Lk7/e;

    invoke-direct {v1, p2, p1}, Lk7/e;-><init>(Lk7/f$b;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private x(Ljava/util/List;Z)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Li7/a;",
            ">;Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lj7/a;",
            ">;"
        }
    .end annotation

    const-string v0, "data"

    const-string v1, "GameAwardRepository"

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Li7/a;

    iget-object v4, v4, Li7/a;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    if-eqz p2, :cond_2

    iget-object p2, p0, Lk7/f;->a:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "miid"

    iget-object v4, p0, Lk7/f;->a:Ljava/lang/String;

    invoke-interface {p1, p2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object p2, p0, Lk7/f;->b:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "serviceToken"

    iget-object v4, p0, Lk7/f;->b:Ljava/lang/String;

    invoke-interface {p1, p2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string p2, "udid"

    invoke-direct {p0}, Lk7/f;->i()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, p2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "packageNames"

    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, p2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "https://game.sec.miui.com/tencent/award/query"

    new-instance v3, Lp4/i;

    const-string v4, "game_award"

    invoke-direct {v3, v4}, Lp4/i;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2, v3}, Leg/j;->t(Ljava/util/Map;Ljava/lang/String;Lp4/i;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p1, "requestAward: result is invalid"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_3
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "requestAward: result has no valid data"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_4
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    new-instance v5, Lj7/a;

    invoke-direct {v5, v3}, Lj7/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Lj7/a;->a(Lorg/json/JSONObject;)V

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v5}, Lj7/a;->d()Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v4, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v5, v4}, Lj7/a;->h(Lorg/json/JSONObject;)V

    invoke-interface {p1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_5
    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "requestAward: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method private y(Ljava/lang/String;Lk7/f$b;)V
    .locals 6

    :try_start_0
    invoke-static {}, Lx4/z0;->g()Lx4/z0;

    move-result-object v0

    invoke-virtual {v0}, Lx4/z0;->f()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lk7/f;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "miid"

    iget-object v3, p0, Lk7/f;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v2, p0, Lk7/f;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "serviceToken"

    iget-object v3, p0, Lk7/f;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v2, "packageName"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "udid"

    invoke-direct {p0}, Lk7/f;->i()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "fid"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "tzSign"

    iget-object v2, p0, Lk7/f;->a:Ljava/lang/String;

    invoke-static {v2}, Laf/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "https://game.sec.miui.com/tencent/award/receive"

    new-instance v2, Lp4/i;

    const-string v3, "game_award"

    invoke-direct {v2, v3}, Lp4/i;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0, v2}, Leg/j;->t(Ljava/util/Map;Ljava/lang/String;Lp4/i;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p2, :cond_2

    invoke-static {}, Lcom/miui/securitycenter/Application;->z()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f120a98

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lk7/f$b;->a(Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "code"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0xc8

    if-eq v0, v2, :cond_5

    const-string p1, "mess"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_4

    invoke-direct {p0, v0, p1}, Lk7/f;->j(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lk7/f$b;->a(Ljava/lang/String;)V

    :cond_4
    return-void

    :cond_5
    new-instance v0, Lj7/a;

    invoke-direct {v0, p1}, Lj7/a;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "data"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lj7/a;->a(Lorg/json/JSONObject;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0}, Lj7/a;->d()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lj7/a;->h(Lorg/json/JSONObject;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lj7/a;->i(Z)V

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Li7/i;->l()Li7/i;

    move-result-object v0

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v3

    invoke-virtual {v0, v3, p1, v1}, Li7/i;->M(Landroid/content/Context;Ljava/lang/String;Z)V

    if-eqz p2, :cond_6

    invoke-interface {p2, v2}, Lk7/f$b;->b(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    :goto_0
    return-void
.end method


# virtual methods
.method public m()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.miui.securityadd"

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    const-string v2, "active_float_version"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    move v0, v2

    :cond_0
    return v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail call isSupportHonorKings : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GameAwardRepository"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0
.end method

.method public t(Lk7/f$b;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lk7/f;->u(ZLk7/f$b;)V

    return-void
.end method

.method public u(ZLk7/f$b;)V
    .locals 2

    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object v0

    new-instance v1, Lk7/a;

    invoke-direct {v1, p0, p2, p1}, Lk7/a;-><init>(Lk7/f;Lk7/f$b;Z)V

    invoke-virtual {v0, v1}, Lef/z;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public v(Ljava/lang/String;Lk7/f$b;)V
    .locals 2

    invoke-direct {p0}, Lk7/f;->l()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/miui/securitycenter/Application;->z()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f120a98

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lk7/f$b;->a(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object v0

    new-instance v1, Lk7/b;

    invoke-direct {v1, p0, p1, p2}, Lk7/b;-><init>(Lk7/f;Ljava/lang/String;Lk7/f$b;)V

    invoke-virtual {v0, v1}, Lef/z;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public w()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lk7/f;->a:Ljava/lang/String;

    iput-object v0, p0, Lk7/f;->b:Ljava/lang/String;

    invoke-static {}, Lwe/c;->j()Lwe/c;

    move-result-object v0

    invoke-virtual {v0}, Lwe/c;->n()V

    return-void
.end method

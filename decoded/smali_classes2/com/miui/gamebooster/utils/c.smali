.class public Lcom/miui/gamebooster/utils/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gamebooster/utils/c$c;
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String; = "com.miui.gamebooster.utils.c"

.field private static d:Lcom/miui/gamebooster/utils/c;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/gamebooster/model/ActiveTrackModel;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/utils/c;->a:Ljava/util/List;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/utils/c;->b:Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lcom/miui/gamebooster/utils/c;Ljava/lang/String;)Ljava/util/Map;
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/utils/c;->s(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/miui/gamebooster/utils/c;Ljava/util/Map;Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/gamebooster/utils/c;->o(Ljava/util/Map;Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic c(Lcom/miui/gamebooster/utils/c;Ljava/util/ArrayList;)Ljava/util/Map;
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/utils/c;->r(Ljava/util/ArrayList;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Lcom/miui/gamebooster/utils/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/utils/c;->g()V

    return-void
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/gamebooster/utils/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method private g()V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "key_active_track_for_h5"

    invoke-static {v1, v0}, Lr4/a;->s(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "gamebooster"

    const-string v2, "gb_active_track"

    invoke-static {v1, v2, v0}, La8/y;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "gb_active_click_track"

    invoke-static {v1, v2, v0}, La8/y;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "gb_active_view_track"

    invoke-static {v1, v2, v0}, La8/y;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z

    return-void
.end method

.method public static h(Lve/d;Lcom/miui/gamebooster/model/ActiveModel;Ljava/lang/String;)Lcom/miui/gamebooster/model/ActiveTrackModel;
    .locals 13

    if-eqz p1, :cond_1

    new-instance v12, Lcom/miui/gamebooster/model/ActiveTrackModel;

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/ActiveModel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/ActiveModel;->getGamePkgName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/ActiveModel;->getImgUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/ActiveModel;->getActivityText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/ActiveModel;->getGamePkgNameCn()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lve/d;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/ActiveModel;->getRedirectType()I

    move-result v8

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/ActiveModel;->getPageSource()I

    move-result v9

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/ActiveModel;->isHandleByFloatingWindow()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "H5"

    goto :goto_0

    :cond_0
    const-string p0, "window"

    :goto_0
    move-object v10, p0

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/ActiveModel;->getRecommendGame()Ljava/lang/String;

    move-result-object v11

    move-object v0, v12

    move-object v2, p2

    invoke-direct/range {v0 .. v11}, Lcom/miui/gamebooster/model/ActiveTrackModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    return-object v12

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private i()Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Leg/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static declared-synchronized j()Lcom/miui/gamebooster/utils/c;
    .locals 2

    const-class v0, Lcom/miui/gamebooster/utils/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/gamebooster/utils/c;->d:Lcom/miui/gamebooster/utils/c;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/gamebooster/utils/c;

    invoke-direct {v1}, Lcom/miui/gamebooster/utils/c;-><init>()V

    sput-object v1, Lcom/miui/gamebooster/utils/c;->d:Lcom/miui/gamebooster/utils/c;

    :cond_0
    sget-object v1, Lcom/miui/gamebooster/utils/c;->d:Lcom/miui/gamebooster/utils/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private l()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lef/w;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private m()Z
    .locals 4

    const-string v0, "gamebooster_key_active_track"

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lr4/a;->j(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/32 v0, 0x2932e00

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static n()Z
    .locals 2

    const-string v0, "ro.miui.restrict_imei"

    const-string v1, ""

    invoke-static {v0, v1}, Lx4/v1;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private o(Ljava/util/Map;Lorg/json/JSONArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/miui/gamebooster/model/ActiveTrackModel;",
            ">;>;",
            "Lorg/json/JSONArray;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gamebooster/model/ActiveTrackModel;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/miui/gamebooster/model/ActiveTrackModel;->setTimes(I)V

    invoke-direct {p0, v1}, Lcom/miui/gamebooster/utils/c;->q(Lcom/miui/gamebooster/model/ActiveTrackModel;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private p()V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/utils/c;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/miui/gamebooster/utils/c;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private q(Lcom/miui/gamebooster/model/ActiveTrackModel;)Lorg/json/JSONObject;
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "date"

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/ActiveTrackModel;->getDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "id"

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/ActiveTrackModel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "s"

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/ActiveTrackModel;->getS()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "type"

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/ActiveTrackModel;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "times"

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/ActiveTrackModel;->getTimes()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "i"

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/ActiveTrackModel;->getI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "a"

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/ActiveTrackModel;->getA()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "game"

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/ActiveTrackModel;->getGame()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "redirectType"

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/ActiveTrackModel;->getRedirectType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "pageSource"

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/ActiveTrackModel;->getPageSource()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "recommendGame"

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/ActiveTrackModel;->getRecommendPkg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "from"

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/ActiveTrackModel;->getShowWay()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/miui/gamebooster/utils/c;->n()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Leg/c;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "MD5"

    invoke-static {p1, v1}, Llm/a;->b(Ljava/lang/CharSequence;Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lsm/a;->d([B)Ljava/lang/String;

    move-result-object p1

    const-string v1, "m"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    sget-boolean p1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p1, :cond_1

    const-string p1, "g"

    invoke-direct {p0}, Lcom/miui/gamebooster/utils/c;->i()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_1
    const-string p1, "oa"

    invoke-direct {p0}, Lcom/miui/gamebooster/utils/c;->l()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_1
    return-object v0

    :catch_0
    move-exception p1

    sget-object v0, Lcom/miui/gamebooster/utils/c;->c:Ljava/lang/String;

    const-string v1, "to json error"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method private r(Ljava/util/ArrayList;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/miui/gamebooster/model/ActiveTrackModel;",
            ">;>;"
        }
    .end annotation

    invoke-static {p1}, Lc7/c;->n(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Lcom/miui/gamebooster/model/ActiveTrackModel;

    invoke-direct {v2}, Lcom/miui/gamebooster/model/ActiveTrackModel;-><init>()V

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "type"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/miui/gamebooster/model/ActiveTrackModel;->setType(Ljava/lang/String;)V

    const-string v1, "game"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/miui/gamebooster/model/ActiveTrackModel;->setRecommendPkg(Ljava/lang/String;)V

    const-string v1, "H5"

    invoke-virtual {v2, v1}, Lcom/miui/gamebooster/model/ActiveTrackModel;->setShowWay(Ljava/lang/String;)V

    const-string v1, "extra"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "id"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/gamebooster/model/ActiveTrackModel;->setId(Ljava/lang/String;)V

    const-string v3, "redirectType"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/gamebooster/model/ActiveTrackModel;->setRedirectType(Ljava/lang/String;)V

    const-string v3, "pageSource"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/gamebooster/model/ActiveTrackModel;->setPageSource(Ljava/lang/String;)V

    const-string v3, "sourcepkg"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/gamebooster/model/ActiveTrackModel;->setS(Ljava/lang/String;)V

    const-string v3, "sourcepkgCn"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/gamebooster/model/ActiveTrackModel;->setGame(Ljava/lang/String;)V

    const-string v3, "channel"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/gamebooster/model/ActiveTrackModel;->setChannel(Ljava/lang/String;)V

    const-string v3, "date"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/miui/gamebooster/model/ActiveTrackModel;->setDate(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v2}, Lcom/miui/gamebooster/model/ActiveTrackModel;->getDate()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v2}, Lcom/miui/gamebooster/model/ActiveTrackModel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v2}, Lcom/miui/gamebooster/model/ActiveTrackModel;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto/16 :goto_0

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/miui/gamebooster/model/ActiveTrackModel;->getDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/miui/gamebooster/model/ActiveTrackModel;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/miui/gamebooster/model/ActiveTrackModel;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_5
    return-object v0
.end method

.method private s(Ljava/lang/String;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/miui/gamebooster/model/ActiveTrackModel;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_5

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    const-class v4, Lcom/miui/gamebooster/model/ActiveTrackModel;

    invoke-static {v3, v4}, Lx4/l0;->c(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gamebooster/model/ActiveTrackModel;

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/miui/gamebooster/model/ActiveTrackModel;->getDate()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/miui/gamebooster/model/ActiveTrackModel;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/miui/gamebooster/model/ActiveTrackModel;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method private v(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/gamebooster/model/ActiveTrackModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "gb_active_track"

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/miui/gamebooster/utils/c;->k(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    goto :goto_0

    :cond_1
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gamebooster/model/ActiveTrackModel;

    invoke-static {v2}, Lx4/l0;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    :cond_2
    const-string p1, "gamebooster"

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, La8/y;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/miui/gamebooster/utils/c;->p()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    sget-object v0, Lcom/miui/gamebooster/utils/c;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "write error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method


# virtual methods
.method public f(Lcom/miui/gamebooster/model/ActiveTrackModel;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/utils/c;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/miui/gamebooster/utils/c;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object p1

    new-instance v0, Lcom/miui/gamebooster/utils/c$a;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/utils/c$a;-><init>(Lcom/miui/gamebooster/utils/c;)V

    invoke-virtual {p1, v0}, Lef/z;->b(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public k(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "gamebooster"

    invoke-static {v0, p2, p1}, La8/y;->c(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public t()V
    .locals 2

    invoke-static {}, Lef/x;->z()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/miui/gamebooster/utils/c;->m()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object v0

    new-instance v1, Lcom/miui/gamebooster/utils/c$b;

    invoke-direct {v1, p0}, Lcom/miui/gamebooster/utils/c$b;-><init>(Lcom/miui/gamebooster/utils/c;)V

    invoke-virtual {v0, v1}, Lef/z;->b(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public u()V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/utils/c;->a:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/miui/gamebooster/utils/c;->v(Ljava/util/List;)V

    return-void
.end method

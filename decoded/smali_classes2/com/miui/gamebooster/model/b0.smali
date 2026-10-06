.class public Lcom/miui/gamebooster/model/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/gamebooster/model/a0;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/gamebooster/model/c0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/model/b0;->a:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/model/b0;->b:Ljava/util/List;

    return-void
.end method

.method private a(Lcom/miui/gamebooster/model/c0;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/model/b0;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private static b(Lorg/json/JSONArray;Lcom/miui/gamebooster/model/b0;Z)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz p2, :cond_1

    new-instance v3, Lcom/miui/gamebooster/model/a0;

    invoke-direct {v3, v2}, Lcom/miui/gamebooster/model/a0;-><init>(Lorg/json/JSONObject;)V

    invoke-direct {p1, v3}, Lcom/miui/gamebooster/model/b0;->c(Lcom/miui/gamebooster/model/a0;)V

    goto :goto_1

    :cond_1
    new-instance v3, Lcom/miui/gamebooster/model/c0;

    invoke-direct {v3, v2}, Lcom/miui/gamebooster/model/c0;-><init>(Lorg/json/JSONObject;)V

    invoke-direct {p1, v3}, Lcom/miui/gamebooster/model/b0;->a(Lcom/miui/gamebooster/model/c0;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private c(Lcom/miui/gamebooster/model/a0;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/model/b0;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static d(Lorg/json/JSONObject;)Lcom/miui/gamebooster/model/b0;
    .locals 3

    new-instance v0, Lcom/miui/gamebooster/model/b0;

    invoke-direct {v0}, Lcom/miui/gamebooster/model/b0;-><init>()V

    const-string v1, "windows"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/miui/gamebooster/model/b0;->b(Lorg/json/JSONArray;Lcom/miui/gamebooster/model/b0;Z)V

    const-string v1, "activities"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    :cond_0
    if-nez v2, :cond_1

    const/16 p0, 0x270f

    const-string v1, "gb_notification_business_period"

    invoke-static {v1, p0}, Lr4/a;->p(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/miui/gamebooster/model/b0;->b(Lorg/json/JSONArray;Lcom/miui/gamebooster/model/b0;Z)V

    :goto_0
    return-object v0
.end method

.method public static g(I)Lcom/miui/gamebooster/model/c0;
    .locals 3

    :try_start_0
    const-string v0, "gamebooster"

    const-string v1, "gbxunyoubusiness"

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v2

    invoke-static {v0, v1, v2}, La8/y;->c(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/miui/gamebooster/model/b0;->d(Lorg/json/JSONObject;)Lcom/miui/gamebooster/model/b0;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/gamebooster/model/b0;->e()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gamebooster/model/c0;

    invoke-virtual {v1}, Lcom/miui/gamebooster/model/c0;->e()I

    move-result v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p0, v2, :cond_0

    return-object v1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static h(Ljava/util/Map;Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "UTF-8"

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "userId"

    invoke-static {p1}, Lc3/w;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-nez p0, :cond_0

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    move-object p0, p1

    :cond_0
    const-string p1, "param"

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v3, 0x2

    invoke-static {v1, v3}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {p0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NetUtils"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    sget-object p1, Leg/j$b;->b:Leg/j$b;

    new-instance v0, Lp4/i;

    const-string v1, "gamebooster_xunyoumodel_post"

    invoke-direct {v0, v1}, Lp4/i;-><init>(Ljava/lang/String;)V

    const-string v1, "https://game.sec.miui.com/game/queryXunYouActivityList"

    const-string v2, "22bcec80-cb42-4fd3-b220-45630fc37259"

    invoke-static {p0, v1, p1, v2, v0}, Leg/j;->B(Ljava/util/Map;Ljava/lang/String;Leg/j$b;Ljava/lang/String;Lp4/i;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/gamebooster/model/c0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/gamebooster/model/b0;->b:Ljava/util/List;

    return-object v0
.end method

.method public f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/gamebooster/model/a0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/gamebooster/model/b0;->a:Ljava/util/List;

    return-object v0
.end method

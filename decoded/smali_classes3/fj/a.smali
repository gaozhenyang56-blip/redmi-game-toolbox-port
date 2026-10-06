.class public Lfj/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lfj/a;->a:Ljava/util/Map;

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    const-string v0, "xsof_authority_preferences"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-wide/16 v2, -0x1

    invoke-interface {p0, p1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long p0, v2, p0

    if-gtz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lfj/c;->a(Landroid/content/Context;)Lfj/b;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1, p3, p2}, Lfj/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    invoke-static {p1}, Lfj/a;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0x3f4

    return p0

    :cond_0
    invoke-static {p0, p1}, Lfj/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x3f2

    if-nez v0, :cond_3

    sget-object v0, Lfj/a;->a:Ljava/util/Map;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lx4/l1;->b()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {p0, p1, p2, p3}, Lfj/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    move p0, v1

    goto :goto_0

    :cond_1
    const/16 p0, 0x3f3

    :goto_0
    const-string p2, "\u4e91\u63a7"

    goto :goto_1

    :cond_2
    invoke-static {p0, p1, p2, p3}, Lfj/a;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    const-string p2, "\u8054\u7f51"

    :goto_1
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    const-string p2, "\u672c\u5730"

    move p0, v1

    :goto_2
    if-ne p0, v1, :cond_4

    const-string p3, "\u6210\u529f"

    goto :goto_3

    :cond_4
    const-string p3, "\u5931\u8d25"

    :goto_3
    const-string v0, "xsof_app_auth"

    invoke-static {v0, p1, p2, p3}, Ljj/c;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method private static d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 6

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "appId"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "appKey"

    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "pkgName"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string p3, "timestamp"

    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, p1}, Ljj/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "appSignature"

    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lfj/d;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Lp4/i;

    const-string p2, "XSOF"

    invoke-direct {v5, p2}, Lp4/i;-><init>(Ljava/lang/String;)V

    const-string v2, "13zt5239-a34f-3ty9-eb73-75456785ns5c"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Leg/j;->s(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;ZZLp4/i;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lfj/a;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static e(J)J
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    add-long/2addr v2, v0

    cmp-long v4, p0, v2

    if-gez v4, :cond_0

    move-wide p0, v2

    goto :goto_0

    :cond_0
    const-wide/32 v2, 0x240c8400

    add-long/2addr v0, v2

    cmp-long v2, p0, v0

    if-lez v2, :cond_1

    move-wide p0, v0

    :cond_1
    :goto_0
    return-wide p0
.end method

.method private static f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0x3ed

    return p0

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "code"

    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p2

    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const/16 v2, 0xc8

    if-ne p2, v2, :cond_1

    if-eqz v1, :cond_1

    const-string p2, "timestamp"

    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lfj/a;->e(J)J

    move-result-wide v0

    const-string p2, "xsof_authority_preferences"

    const/4 v2, 0x0

    invoke-virtual {p0, p2, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 p0, 0x3f2

    return p0

    :catch_0
    const-string p0, "AppAuthManager"

    const-string p1, "Request authority data format error!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/16 p0, 0x3f3

    return p0
.end method

.method private static g(Ljava/lang/String;)Z
    .locals 2

    sget-object v0, Lfj/a;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

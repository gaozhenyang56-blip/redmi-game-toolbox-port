.class public final Lc9/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lc9/h;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc9/h;

    invoke-direct {v0}, Lc9/h;-><init>()V

    sput-object v0, Lc9/h;->a:Lc9/h;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Lc9/e;)V
    .locals 0

    invoke-static {p0, p1}, Lc9/h;->d(Ljava/lang/String;Lc9/e;)V

    return-void
.end method

.method public static synthetic b(Ljava/lang/String;Lc9/e;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lc9/h;->f(Ljava/lang/String;Lc9/e;I)V

    return-void
.end method

.method private static final d(Ljava/lang/String;Lc9/e;)V
    .locals 1

    const-string v0, "$onLoadFinishListener"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lc9/h;->a:Lc9/h;

    invoke-direct {v0, p0, p1}, Lc9/h;->j(Ljava/lang/String;Lc9/e;)V

    return-void
.end method

.method private static final f(Ljava/lang/String;Lc9/e;I)V
    .locals 1

    const-string v0, "$onLoadFinishListener"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lc9/h;->a:Lc9/h;

    invoke-direct {v0, p0, p1, p2}, Lc9/h;->i(Ljava/lang/String;Lc9/e;I)V

    return-void
.end method

.method private final g(Ljava/lang/String;)Lb9/e;
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "data"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "optJSONObject(\"data\")"

    invoke-static {p1, v0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lb9/e;

    invoke-direct {v0}, Lb9/e;-><init>()V

    invoke-virtual {v0, p1}, Lb9/e;->a(Lorg/json/JSONObject;)V

    move-object v1, v0

    :cond_1
    :goto_0
    return-object v1
.end method

.method private final h(Ljava/lang/String;)Lb9/f;
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "data"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "optJSONObject(\"data\")"

    invoke-static {p1, v0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lb9/f;

    invoke-direct {v0}, Lb9/f;-><init>()V

    invoke-virtual {v0, p1}, Lb9/f;->a(Lorg/json/JSONObject;)V

    move-object v1, v0

    :cond_1
    :goto_0
    return-object v1
.end method

.method private final i(Ljava/lang/String;Lc9/e;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lc9/e<",
            "Lb9/e;",
            ">;I)V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "packageName"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p1

    const-string v1, "com.xiaomi.gamecenter"

    invoke-static {p1, v1}, Lw2/p;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "versionCode"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p3, "page"

    invoke-interface {v0, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "size"

    const-string p3, "10"

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lp4/i;

    const-string p3, "game_center_recommend"

    invoke-direct {p1, p3}, Lp4/i;-><init>(Ljava/lang/String;)V

    const-string p3, "https://adv.sec.miui.com/gameTurbo/gcgt/tab/feed"

    invoke-static {v0, p3, p1}, Leg/j;->j(Ljava/util/Map;Ljava/lang/String;Lp4/i;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lc9/h;->g(Ljava/lang/String;)Lb9/e;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lb9/e;->b()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p2, p1}, Lc9/e;->b(Ljava/lang/Object;)V

    return-void

    :cond_1
    :goto_0
    const-string p1, "recommend data result is null"

    invoke-interface {p2, p1}, Lc9/e;->a(Ljava/lang/String;)V

    return-void
.end method

.method private final j(Ljava/lang/String;Lc9/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lc9/e<",
            "Lb9/f;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "packageName"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p1

    const-string v1, "com.xiaomi.gamecenter"

    invoke-static {p1, v1}, Lw2/p;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "versionCode"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lp4/i;

    const-string v1, "game_center_tool"

    invoke-direct {p1, v1}, Lp4/i;-><init>(Ljava/lang/String;)V

    const-string v1, "https://adv.sec.miui.com/gameTurbo/gcgt/tab/page-detail"

    invoke-static {v0, v1, p1}, Leg/j;->j(Ljava/util/Map;Ljava/lang/String;Lp4/i;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lc9/h;->h(Ljava/lang/String;)Lb9/f;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lb9/f;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p2, p1}, Lc9/e;->b(Ljava/lang/Object;)V

    return-void

    :cond_1
    :goto_0
    const-string p1, "active tool data result is null"

    invoke-interface {p2, p1}, Lc9/e;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/String;Lc9/e;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lc9/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lc9/e<",
            "Lb9/f;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onLoadFinishListener"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "pkgName is null when get tool data"

    invoke-interface {p2, p1}, Lc9/e;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lef/x;->z()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lp4/d;->f(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object v0

    new-instance v1, Lc9/f;

    invoke-direct {v1, p1, p2}, Lc9/f;-><init>(Ljava/lang/String;Lc9/e;)V

    invoke-virtual {v0, v1}, Lef/z;->b(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    :goto_0
    invoke-static {}, Lef/x;->z()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-interface {p2, p1}, Lc9/e;->c(Z)V

    return-void
.end method

.method public final e(Ljava/lang/String;Lc9/e;I)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lc9/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lc9/e<",
            "Lb9/e;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "onLoadFinishListener"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "pkgName is null when get recommend data"

    invoke-interface {p2, p1}, Lc9/e;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lef/x;->z()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lp4/d;->f(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object v0

    new-instance v1, Lc9/g;

    invoke-direct {v1, p1, p2, p3}, Lc9/g;-><init>(Ljava/lang/String;Lc9/e;I)V

    invoke-virtual {v0, v1}, Lef/z;->b(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    :goto_0
    invoke-static {}, Lef/x;->z()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-interface {p2, p1}, Lc9/e;->c(Z)V

    return-void
.end method

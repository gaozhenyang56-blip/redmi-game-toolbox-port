.class public Lb7/b;
.super Lb7/a;
.source "SourceFile"


# direct methods
.method private static c(Landroid/content/Context;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lb7/a;->a(Ljava/util/Map;)V

    invoke-static {p0}, Lc3/w;->c(Landroid/content/Context;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "isLogin"

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static d(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0, v0}, Lb7/b;->c(Landroid/content/Context;Ljava/util/Map;)V

    const-string p0, "exposure_main"

    invoke-static {p0, v0}, Lcom/miui/gamebooster/utils/a$n;->k(Ljava/lang/String;Ljava/util/Map;)V

    const-string v1, "event:exposeMain"

    invoke-static {v1, p0, v0}, Lb7/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static e(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0, v0}, Lb7/b;->c(Landroid/content/Context;Ljava/util/Map;)V

    const-string p0, "exposure_add_game"

    invoke-static {p0, v0}, Lcom/miui/gamebooster/utils/a$n;->k(Ljava/lang/String;Ljava/util/Map;)V

    const-string v1, "event:exposureAddGame"

    invoke-static {v1, p0, v0}, Lb7/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static f(Landroid/content/Context;Ljava/lang/String;IZ)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0, v0}, Lb7/b;->c(Landroid/content/Context;Ljava/util/Map;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    const-string p0, "add"

    :goto_0
    const-string p1, "title"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "position"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_1

    const-string p0, "game_click_icon"

    goto :goto_1

    :cond_1
    const-string p0, "game_click_start"

    :goto_1
    invoke-static {p0, v0}, Lcom/miui/gamebooster/utils/a$n;->k(Ljava/lang/String;Ljava/util/Map;)V

    const-string p1, "event:exposureGameClick"

    invoke-static {p1, p0, v0}, Lb7/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static g(Landroid/content/Context;I)V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0, v0}, Lb7/b;->c(Landroid/content/Context;Ljava/util/Map;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "display"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "game_count"

    invoke-static {p0, v0}, Lcom/miui/gamebooster/utils/a$n;->k(Ljava/lang/String;Ljava/util/Map;)V

    const-string p1, "event:exposureGameCount"

    invoke-static {p1, p0, v0}, Lb7/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static h(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0, v0}, Lb7/b;->c(Landroid/content/Context;Ljava/util/Map;)V

    const-string p0, "title"

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    const-string p0, "game_add"

    goto :goto_0

    :cond_0
    const-string p0, "game_remove"

    :goto_0
    invoke-static {p0, v0}, Lcom/miui/gamebooster/utils/a$n;->k(Ljava/lang/String;Ljava/util/Map;)V

    const-string p1, "event:exposureGameStatusChange"

    invoke-static {p1, p0, v0}, Lb7/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

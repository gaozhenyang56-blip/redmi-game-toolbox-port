.class public Lcom/miui/gamebooster/utils/a$h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/utils/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# direct methods
.method public static synthetic a(ZZ)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/gamebooster/utils/a$h;->b(ZZ)V

    return-void
.end method

.method private static synthetic b(ZZ)V
    .locals 1

    if-nez p0, :cond_1

    new-instance p0, Ljava/util/HashMap;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/util/HashMap;-><init>(I)V

    if-eqz p1, :cond_0

    const-string p1, "high"

    goto :goto_0

    :cond_0
    const-string p1, "balance"

    :goto_0
    const-string v0, "select_mode"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "redmi_performance_mode"

    invoke-static {p1, p0}, Lcom/miui/gamebooster/utils/a$n;->k(Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method public static c(Z)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    if-eqz p0, :cond_0

    const-string p0, "high"

    goto :goto_0

    :cond_0
    const-string p0, "balance"

    :goto_0
    const-string v1, "select_mode"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "performance_mode_click"

    invoke-static {p0, v0}, Lcom/miui/gamebooster/utils/a$n;->k(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static d(Z)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    if-eqz p0, :cond_0

    const-string p0, "high"

    goto :goto_0

    :cond_0
    const-string p0, "balance"

    :goto_0
    const-string v1, "select_mode"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "performance_mode_show"

    invoke-static {p0, v0}, Lcom/miui/gamebooster/utils/a$n;->k(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static e()V
    .locals 2

    invoke-static {}, Lh7/g;->l()Lh7/g;

    move-result-object v0

    new-instance v1, La8/d;

    invoke-direct {v1}, La8/d;-><init>()V

    invoke-virtual {v0, v1}, Lh7/g;->m(Lh7/g$b;)V

    return-void
.end method

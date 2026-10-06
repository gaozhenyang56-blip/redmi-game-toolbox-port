.class public Lp7/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {p0, v0}, Lp7/e;->b(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/miui/gamebooster/utils/a$n;->k(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static c(ZZ)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_0

    const-string p1, "single"

    goto :goto_0

    :cond_0
    const-string p1, "section"

    :goto_0
    const-string v1, "status"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p0, :cond_1

    const-string p0, "shoulder_key_shoulder_finish_left"

    goto :goto_1

    :cond_1
    const-string p0, "shoulder_key_shoulder_finish_right"

    :goto_1
    invoke-static {p0, v0}, Lp7/e;->b(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

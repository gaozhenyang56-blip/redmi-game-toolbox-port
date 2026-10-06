.class public Lcom/miui/gamebooster/utils/a$m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/utils/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "m"
.end annotation


# direct methods
.method public static a(Ljava/lang/String;I)V
    .locals 8

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {}, Lt7/b;->d()Lt7/b;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Lt7/b;->e(Ljava/lang/String;I)Lt7/d;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, La8/b;->d()La8/b;

    move-result-object p1

    invoke-virtual {p1}, La8/b;->h()Ljava/util/Set;

    move-result-object p1

    const-string v2, "SUPER CORE"

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    const-string v2, "\u5f00\u542f"

    const-string v3, "\u5173\u95ed"

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lt7/d;->b()I

    move-result p1

    if-ne p1, v1, :cond_1

    move-object p1, v2

    goto :goto_0

    :cond_1
    move-object p1, v3

    :goto_0
    const-string v4, "hypernuclear_following_state"

    invoke-interface {v0, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-static {}, La8/b;->d()La8/b;

    move-result-object p1

    invoke-virtual {p1}, La8/b;->h()Ljava/util/Set;

    move-result-object p1

    const-string v4, "SUPER CHIP"

    invoke-interface {p1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lt7/d;->a()I

    move-result p1

    if-ne p1, v1, :cond_3

    goto :goto_1

    :cond_3
    move-object v2, v3

    :goto_1
    const-string p1, "speed_sensor_status"

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-static {}, La8/b;->d()La8/b;

    move-result-object p1

    invoke-virtual {p1}, La8/b;->h()Ljava/util/Set;

    move-result-object p1

    const-string v2, "SUPER ALGO"

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    const-string v2, "\u4e2d"

    const/4 v4, 0x3

    const/4 v5, 0x2

    const-string v6, ""

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Lt7/d;->e()I

    move-result p1

    if-eqz p1, :cond_8

    if-eq p1, v1, :cond_7

    if-eq p1, v5, :cond_6

    if-eq p1, v4, :cond_5

    move-object p1, v6

    goto :goto_2

    :cond_5
    const-string p1, "\u9ad8"

    goto :goto_2

    :cond_6
    move-object p1, v2

    goto :goto_2

    :cond_7
    const-string p1, "\u4f4e"

    goto :goto_2

    :cond_8
    move-object p1, v3

    :goto_2
    const-string v7, "intelligent_anti_shake_status"

    invoke-interface {v0, v7, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    invoke-static {}, La8/b;->d()La8/b;

    move-result-object p1

    invoke-virtual {p1}, La8/b;->h()Ljava/util/Set;

    move-result-object p1

    const-string v7, "SUPER_MISTOUCH"

    invoke-interface {p1, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-virtual {p0}, Lt7/d;->d()I

    move-result p0

    if-eqz p0, :cond_d

    if-eq p0, v1, :cond_c

    if-eq p0, v5, :cond_b

    if-eq p0, v4, :cond_a

    move-object v3, v6

    goto :goto_3

    :cond_a
    const-string v3, "\u5927"

    goto :goto_3

    :cond_b
    move-object v3, v2

    goto :goto_3

    :cond_c
    const-string v3, "\u5c0f"

    :cond_d
    :goto_3
    const-string p0, "edge_suppression_state"

    invoke-interface {v0, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    const-string p0, "touch_enhancement_status"

    invoke-static {p0, v0}, Lcom/miui/gamebooster/utils/a$n;->k(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static b(ILjava/lang/String;I)V
    .locals 0

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    if-eqz p0, :cond_3

    const/4 p2, 0x1

    if-eq p0, p2, :cond_2

    const/4 p2, 0x2

    if-eq p0, p2, :cond_1

    const/4 p2, 0x3

    if-eq p0, p2, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    const-string p0, "\u9ad8"

    goto :goto_0

    :cond_1
    const-string p0, "\u4e2d"

    goto :goto_0

    :cond_2
    const-string p0, "\u4f4e"

    goto :goto_0

    :cond_3
    const-string p0, "\u5173\u95ed"

    :goto_0
    const-string p2, "intelligent_anti_shake_status"

    invoke-virtual {p1, p2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "touch_enhancement_set"

    invoke-static {p0, p1}, Lcom/miui/gamebooster/utils/a$n;->k(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static c(Z)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p0, :cond_0

    const-string p0, "\u5f00\u542f"

    goto :goto_0

    :cond_0
    const-string p0, "\u5173\u95ed"

    :goto_0
    const-string v1, "speed_sensor_status"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "touch_enhancement_set"

    invoke-static {p0, v0}, Lcom/miui/gamebooster/utils/a$n;->k(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static d(Z)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p0, :cond_0

    const-string p0, "\u5f00\u542f"

    goto :goto_0

    :cond_0
    const-string p0, "\u5173\u95ed"

    :goto_0
    const-string v1, "hypernuclear_following_state"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "touch_enhancement_set"

    invoke-static {p0, v0}, Lcom/miui/gamebooster/utils/a$n;->k(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static e(ILjava/lang/String;I)V
    .locals 0

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    if-eqz p0, :cond_3

    const/4 p2, 0x1

    if-eq p0, p2, :cond_2

    const/4 p2, 0x2

    if-eq p0, p2, :cond_1

    const/4 p2, 0x3

    if-eq p0, p2, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    const-string p0, "\u5927"

    goto :goto_0

    :cond_1
    const-string p0, "\u4e2d"

    goto :goto_0

    :cond_2
    const-string p0, "\u5c0f"

    goto :goto_0

    :cond_3
    const-string p0, "\u5173\u95ed"

    :goto_0
    const-string p2, "edge_suppression_state"

    invoke-virtual {p1, p2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "touch_enhancement_set"

    invoke-static {p0, p1}, Lcom/miui/gamebooster/utils/a$n;->k(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

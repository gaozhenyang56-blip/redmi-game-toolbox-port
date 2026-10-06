.class public final Lx5/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx5/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lbk/g;)V
    .locals 0

    invoke-direct {p0}, Lx5/e$a;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lx5/e$a;Z)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lx5/e$a;->d(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Lx5/e$a;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lx5/e$a;->e(Ljava/util/Map;)V

    return-void
.end method

.method private final d(Z)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {}, Lx5/e;->e()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lx5/e;->c()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private final e(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lx4/y;->s()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lx5/e;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "phone_type"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public final c()V
    .locals 5
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    :try_start_0
    invoke-static {}, Lx5/p;->H0()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v1, "call_toolbox_status"

    invoke-static {}, Lx5/p;->l0()Z

    move-result v2

    invoke-direct {p0, v2}, Lx5/e$a;->d(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lw5/f;->G()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "beauty_status"

    if-eqz v1, :cond_1

    :try_start_1
    invoke-static {}, Lw5/f;->H()Z

    move-result v1

    invoke-direct {p0, v1}, Lx5/e$a;->d(Z)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    invoke-static {}, Lx5/e;->h()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :goto_1
    const-string v1, "fill_light_status"

    sget-object v2, Ld6/a;->d:Ld6/a$a;

    invoke-virtual {v2}, Ld6/a$a;->e()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "\u7269\u7406\u8865\u5149"

    goto :goto_2

    :cond_2
    const-string v3, "\u6a21\u62df\u8865\u5149"

    :goto_2
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Ld6/a$a;->e()Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v3, "fill_light_bright_value"

    if-eqz v1, :cond_5

    :try_start_2
    invoke-static {}, La8/p;->c()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "intelligent_light_bright"

    invoke-virtual {v2}, Ld6/a$a;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lx5/e;->e()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_3
    invoke-static {}, Lx5/e;->c()Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const-string v1, "fill_light_bright_temp_value"

    invoke-static {}, Lw5/f;->q()I

    move-result v2

    invoke-static {v2}, Lz5/a;->k(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "lightColor2Str(BeautyManager.getLightColor())"

    invoke-static {v2, v4}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lw5/f;->o()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :goto_4
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_5
    invoke-static {}, Lw5/f;->w()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :goto_5
    invoke-static {}, Lw5/f;->Y()Z

    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v2, "portrait_center_status"

    if-eqz v1, :cond_6

    :try_start_3
    invoke-static {}, Lw5/f;->W()Z

    move-result v1

    invoke-direct {p0, v1}, Lx5/e$a;->d(Z)Ljava/lang/String;

    move-result-object v1

    :goto_6
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_6
    invoke-static {}, Lx5/e;->h()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :goto_7
    invoke-static {}, Lj8/u;->n()Z

    move-result v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string v2, "ultra_clear_status"

    if-eqz v1, :cond_7

    :try_start_4
    invoke-static {}, Lx5/p;->L0()Z

    move-result v1

    invoke-direct {p0, v1}, Lx5/e$a;->d(Z)Ljava/lang/String;

    move-result-object v1

    :goto_8
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_7
    invoke-static {}, Lx5/e;->h()Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    :goto_9
    invoke-static {}, Lx5/p;->I0()Z

    move-result v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const-string v2, "gesture_effect_status"

    if-eqz v1, :cond_8

    :try_start_5
    invoke-static {}, Lx5/p;->t0()Z

    move-result v1

    invoke-direct {p0, v1}, Lx5/e$a;->d(Z)Ljava/lang/String;

    move-result-object v1

    :goto_a
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :cond_8
    invoke-static {}, Lx5/e;->h()Ljava/lang/String;

    move-result-object v1

    goto :goto_a

    :goto_b
    invoke-static {}, Lx5/p;->J0()Z

    move-result v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    const-string v2, "speaker_reduction__status"

    const-string v3, "microphone_reduction__status"

    if-eqz v1, :cond_9

    :try_start_6
    invoke-static {}, Lx5/p;->q0()Z

    move-result v1

    invoke-direct {p0, v1}, Lx5/e$a;->d(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lx5/p;->C0()Z

    move-result v1

    invoke-direct {p0, v1}, Lx5/e$a;->d(Z)Ljava/lang/String;

    move-result-object v1

    :goto_c
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_9
    invoke-static {}, Lx5/e;->h()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lx5/e;->h()Ljava/lang/String;

    move-result-object v1

    goto :goto_c

    :goto_d
    const-string v1, "screen_translation_status"

    invoke-static {}, Lx5/p;->r0()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-static {}, Lx5/e;->f()Ljava/lang/String;

    move-result-object v2

    goto :goto_e

    :cond_a
    invoke-static {}, Lx5/e;->h()Ljava/lang/String;

    move-result-object v2

    :goto_e
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "recording_status"

    sget-object v2, Ld6/b;->g:Ld6/b$b;

    invoke-virtual {v2}, Ld6/b$b;->e()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-static {}, Lx5/e;->f()Ljava/lang/String;

    move-result-object v2

    goto :goto_f

    :cond_b
    invoke-static {}, Lx5/e;->h()Ljava/lang/String;

    move-result-object v2

    :goto_f
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lw5/f;->a0()Z

    move-result v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    const-string v2, "privacy_shooting_status"

    if-eqz v1, :cond_d

    const/4 v1, 0x0

    :try_start_7
    invoke-static {v1}, Lw5/f;->Z(Lw5/a;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-static {}, Lx5/e;->e()Ljava/lang/String;

    move-result-object v1

    goto :goto_10

    :cond_c
    invoke-static {}, Lx5/e;->c()Ljava/lang/String;

    move-result-object v1

    :goto_10
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    :cond_d
    invoke-static {}, Lx5/e;->h()Ljava/lang/String;

    move-result-object v1

    goto :goto_10

    :goto_11
    const-string v1, "tip"

    const-string v2, "1513.1.0.1.36170"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0}, Lx5/e$a;->e(Ljava/util/Map;)V

    const-string v1, "status"

    invoke-static {v1, v0}, Lcom/miui/analytics/AnalyticsUtil;->trackConversationToolBoxEvent(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_12

    :catch_0
    move-exception v0

    invoke-static {}, Lx5/e;->g()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "daily track fail "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_12
    return-void
.end method

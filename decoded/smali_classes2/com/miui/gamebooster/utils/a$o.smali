.class public Lcom/miui/gamebooster/utils/a$o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/utils/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "o"
.end annotation


# direct methods
.method public static A(Z)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p0, :cond_0

    const-string p0, "1"

    goto :goto_0

    :cond_0
    const-string p0, "0"

    :goto_0
    const-string v1, "switch_status"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "video_vpp"

    invoke-static {p0, v0}, Lcom/miui/gamebooster/utils/a$o;->c(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic a()V
    .locals 0

    invoke-static {}, Lcom/miui/gamebooster/utils/a$o;->t()V

    return-void
.end method

.method public static b(I)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "switch_status"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "video_display_sytle"

    invoke-static {p0, v0}, Lcom/miui/gamebooster/utils/a$o;->c(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
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

    const-string v0, "vtb"

    invoke-static {v0, p0, p1}, Lcom/miui/analytics/AnalyticsUtil;->recordGameTurboEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/util/Map;)V
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

    invoke-static {p0, p1}, Lcom/miui/analytics/AnalyticsUtil;->trackGameTurboEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p0

    invoke-static {p0}, Li8/c;->D(Landroid/content/Context;)Z

    move-result p0

    invoke-static {p0}, Lcom/miui/gamebooster/utils/a$o;->y(Z)V

    invoke-static {}, Li8/c;->C()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lcom/miui/gamebooster/utils/a$o;->u(Z)V

    invoke-static {}, Li8/c;->I()Z

    move-result p0

    invoke-static {p0}, Lcom/miui/gamebooster/utils/a$o;->n(Z)V

    invoke-static {}, La8/t;->k()Z

    move-result p0

    invoke-static {p0}, Lcom/miui/gamebooster/utils/a$o;->p(Z)V

    invoke-static {}, Li8/c;->V()Z

    move-result p0

    invoke-static {p0}, Lcom/miui/gamebooster/utils/a$o;->A(Z)V

    invoke-static {}, Li8/c;->K()Z

    move-result p0

    invoke-static {p0}, Lcom/miui/gamebooster/utils/a$o;->s(Z)V

    invoke-static {}, Li8/c;->J()Z

    move-result p0

    invoke-static {p0}, Lcom/miui/gamebooster/utils/a$o;->r(Z)V

    invoke-static {}, Li8/c;->i()I

    move-result p0

    invoke-static {p0}, Lcom/miui/gamebooster/utils/a$o;->b(I)V

    invoke-static {}, Li8/c;->x()Z

    move-result p0

    invoke-static {p0}, Lcom/miui/gamebooster/utils/a$o;->h(Z)V

    return-void
.end method

.method public static f(Z)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p0, :cond_0

    const-string p0, "\u5f00\u542f"

    goto :goto_0

    :cond_0
    const-string p0, "\u5173\u95ed"

    :goto_0
    const-string v1, "after_click_status"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "click"

    invoke-static {p0, v0}, Lcom/miui/gamebooster/utils/a$o;->d(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static g()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Li8/c;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "app_pkg"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {v2, v1}, La8/k0;->c(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v2, "app_name"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lj8/p;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Li8/c;->z()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "\u5f00\u542f"

    goto :goto_0

    :cond_0
    const-string v1, "\u5173\u95ed"

    goto :goto_0

    :cond_1
    const-string v1, "\u4e0d\u652f\u6301"

    :goto_0
    const-string v2, "cinema_mode_status"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "status"

    invoke-static {v1, v0}, Lcom/miui/gamebooster/utils/a$o;->d(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static h(Z)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-nez p0, :cond_0

    const-string p0, "\u81ea\u5b9a\u4e49\u6a21\u5f0f"

    goto :goto_0

    :cond_0
    const-string p0, "\u5f71\u9662\u6a21\u5f0f"

    :goto_0
    const-string v1, "vtb_model"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "status"

    invoke-static {p0, v0}, Lcom/miui/gamebooster/utils/a$o;->d(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static i(Z)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p0, :cond_0

    const-string p0, "0"

    goto :goto_0

    :cond_0
    const-string p0, "1"

    :goto_0
    const-string v1, "show"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "video_box_ad_click"

    invoke-static {p0, v0}, Lcom/miui/gamebooster/utils/a$o;->c(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static j(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "video_bubble"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "video_box_bubble_show"

    invoke-static {p0, v0}, Lcom/miui/gamebooster/utils/a$o;->c(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static k(Z)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p0, :cond_0

    const-string p0, "\u5f00\u542f"

    goto :goto_0

    :cond_0
    const-string p0, "\u5173\u95ed"

    :goto_0
    const-string v1, "dual_core_visual_effect_status"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "dual_core_visual_effect_setting"

    invoke-static {p0, v0}, Lcom/miui/gamebooster/utils/a$o;->c(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static l(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "entertainment_pkg"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "vtb"

    const-string v1, "video_box_app_management"

    invoke-static {p0, v1, v0}, Lcom/miui/analytics/AnalyticsUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static m(I)V
    .locals 2

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :pswitch_0
    const-string p0, "ai_stronger"

    goto :goto_0

    :pswitch_1
    const-string p0, "new_mecha"

    goto :goto_0

    :pswitch_2
    const-string p0, "new_girl"

    goto :goto_0

    :pswitch_3
    const-string p0, "new_solar"

    goto :goto_0

    :pswitch_4
    const-string p0, "new_knight"

    goto :goto_0

    :pswitch_5
    const-string p0, "new_green_orange"

    goto :goto_0

    :pswitch_6
    const-string p0, "new_grim"

    goto :goto_0

    :pswitch_7
    const-string p0, "new_warmth"

    goto :goto_0

    :pswitch_8
    const-string p0, "new_black_white"

    goto :goto_0

    :pswitch_9
    const-string p0, "new_hdr"

    goto :goto_0

    :pswitch_a
    const-string p0, "new_nostalgia"

    goto :goto_0

    :pswitch_b
    const-string p0, "new_gorgeous"

    goto :goto_0

    :pswitch_c
    const-string p0, "new_original"

    goto :goto_0

    :pswitch_d
    const-string p0, "black"

    goto :goto_0

    :pswitch_e
    const-string p0, "old"

    goto :goto_0

    :pswitch_f
    const-string p0, "outdoor"

    goto :goto_0

    :pswitch_10
    const-string p0, "movie"

    goto :goto_0

    :pswitch_11
    const-string p0, "original"

    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "click"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "video_box_image_click"

    invoke-static {p0, v0}, Lcom/miui/gamebooster/utils/a$o;->c(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static n(Z)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p0, :cond_0

    const-string p0, "1"

    goto :goto_0

    :cond_0
    const-string p0, "0"

    :goto_0
    const-string v1, "switch_status"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "video_box_super_division"

    invoke-static {p0, v0}, Lcom/miui/gamebooster/utils/a$o;->c(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static o(II)V
    .locals 1

    const/16 v0, 0xd

    if-ne p0, v0, :cond_0

    const-string p0, "dialog_enhancer"

    goto :goto_0

    :cond_0
    const/16 v0, 0xe

    if-ne p0, v0, :cond_1

    const-string p0, "stereo_expansion"

    goto :goto_0

    :cond_1
    const-string p0, "unknown"

    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string p0, "video_box_dolby_click"

    invoke-static {p0, v0}, Lcom/miui/gamebooster/utils/a$o;->c(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static p(Z)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p0, :cond_0

    const-string p0, "1"

    goto :goto_0

    :cond_0
    const-string p0, "0"

    :goto_0
    const-string v1, "switch_status"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "video_dolby"

    invoke-static {p0, v0}, Lcom/miui/gamebooster/utils/a$o;->c(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static q(Lg8/a;)V
    .locals 2

    if-eqz p0, :cond_1

    sget-object v0, Lg8/a;->h:Lg8/a;

    if-ne p0, v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/miui/gamebooster/utils/a$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const-string p0, "unknown"

    goto :goto_0

    :pswitch_0
    const-string p0, "\u53cc\u82af\u89c6\u6548"

    goto :goto_0

    :pswitch_1
    const-string p0, "video_super_division"

    goto :goto_0

    :pswitch_2
    const-string p0, "dynamic_fps"

    goto :goto_0

    :pswitch_3
    const-string p0, "ai_subtitle"

    goto :goto_0

    :pswitch_4
    const-string p0, "auto_bgm"

    goto :goto_0

    :pswitch_5
    const-string p0, "dolby"

    goto :goto_0

    :pswitch_6
    const-string p0, "voice_stronger"

    goto :goto_0

    :pswitch_7
    const-string p0, "pic_opt"

    goto :goto_0

    :pswitch_8
    const-string p0, "cast_screen"

    goto :goto_0

    :pswitch_9
    const-string p0, "listen_book"

    goto :goto_0

    :pswitch_a
    const-string p0, "screenshot"

    goto :goto_0

    :pswitch_b
    const-string p0, "screen_record"

    goto :goto_0

    :pswitch_c
    const-string p0, "display_style"

    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "click"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "video_box_click"

    invoke-static {p0, v0}, Lcom/miui/gamebooster/utils/a$o;->c(Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static r(Z)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p0, :cond_0

    const-string p0, "1"

    goto :goto_0

    :cond_0
    const-string p0, "0"

    :goto_0
    const-string v1, "switch_status"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "video_fps"

    invoke-static {p0, v0}, Lcom/miui/gamebooster/utils/a$o;->c(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static s(Z)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p0, :cond_0

    const-string p0, "1"

    goto :goto_0

    :cond_0
    const-string p0, "0"

    :goto_0
    const-string v1, "switch_status"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "video_frc"

    invoke-static {p0, v0}, Lcom/miui/gamebooster/utils/a$o;->c(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static t()V
    .locals 8

    :try_start_0
    invoke-static {}, Lf8/a;->g()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lc7/c;->n(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lh8/i;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lh8/i;->p()Lg8/b;

    move-result-object v3

    sget-object v4, Lg8/b;->e:Lg8/b;

    if-eq v3, v4, :cond_1

    invoke-virtual {v2}, Lh8/i;->p()Lg8/b;

    move-result-object v3

    sget-object v4, Lg8/b;->f:Lg8/b;

    if-eq v3, v4, :cond_1

    invoke-virtual {v2}, Lh8/i;->p()Lg8/b;

    move-result-object v3

    sget-object v4, Lg8/b;->c:Lg8/b;

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lh8/i;->l()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lc7/c;->n(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lh8/h;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v6, "item_title"

    invoke-virtual {v4}, Lh8/b;->c()I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "position"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "content_type"

    invoke-virtual {v4}, Lh8/h;->j()Lg8/a;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "video_function_support"

    invoke-static {v4, v5}, Lcom/miui/gamebooster/utils/a$o;->c(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "GameBooster.Analy"

    const-string v2, "track error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    return-void
.end method

.method public static u(Z)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p0, :cond_0

    const-string p0, "left"

    goto :goto_0

    :cond_0
    const-string p0, "right"

    :goto_0
    const-string v1, "click"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "video_box_position"

    invoke-static {p0, v0}, Lcom/miui/gamebooster/utils/a$o;->c(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static v(IZ)V
    .locals 1

    const/16 v0, 0x8

    if-ne p0, v0, :cond_0

    const-string p0, "move"

    goto :goto_0

    :cond_0
    const/16 v0, 0x9

    if-ne p0, v0, :cond_1

    const-string p0, "Enhance"

    goto :goto_0

    :cond_1
    const-string p0, "unknown"

    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_2

    :try_start_0
    const-string p1, "1"

    goto :goto_1

    :cond_2
    const-string p1, "0"

    :goto_1
    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string p0, "video_box_pic_click"

    invoke-static {p0, v0}, Lcom/miui/gamebooster/utils/a$o;->c(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static w(Ljava/lang/String;ZZ)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "turbo_pkg"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p0

    invoke-static {p0}, La8/k2;->B(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "horizontal"

    goto :goto_0

    :cond_0
    const-string p0, "vertical"

    :goto_0
    const-string v1, "game_orientation"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_1

    const-string p0, "left"

    goto :goto_1

    :cond_1
    const-string p0, "right"

    :goto_1
    const-string p1, "location"

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_2

    const-string p0, "\u70ed\u533a\u70b9\u51fb"

    goto :goto_2

    :cond_2
    const-string p0, "\u5212\u51fa"

    :goto_2
    const-string p1, "open_way"

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "video_box_show"

    invoke-static {p0, v0}, Lcom/miui/gamebooster/utils/a$o;->c(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static x(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0}, Li8/c;->D(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "\u5f00\u542f"

    goto :goto_0

    :cond_0
    const-string p0, "\u5173\u95ed"

    :goto_0
    const-string v1, "video_toolbox_status"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "status"

    invoke-static {p0, v0}, Lcom/miui/gamebooster/utils/a$o;->d(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static y(Z)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "toggle_video_box"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/miui/gamebooster/utils/a$o;->c(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static z(II)V
    .locals 1

    const/4 v0, 0x6

    if-ne p0, v0, :cond_0

    const-string p0, "movie_vocal"

    goto :goto_0

    :cond_0
    const/4 v0, 0x7

    if-ne p0, v0, :cond_1

    const-string p0, "movie_surround"

    goto :goto_0

    :cond_1
    const-string p0, "unknown"

    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string p0, "video_box_music_click"

    invoke-static {p0, v0}, Lcom/miui/gamebooster/utils/a$o;->c(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

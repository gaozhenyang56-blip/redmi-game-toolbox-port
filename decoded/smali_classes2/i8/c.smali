.class public Li8/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li8/c$a;
    }
.end annotation


# direct methods
.method public static A(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "pref_video_box_app_del_list"

    invoke-static {v0, p0}, Lr4/a;->m(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static A0(Z)V
    .locals 1

    const-string v0, "pref_video_theatre_status"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static B(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "pref_video_box_app_list"

    invoke-static {v0, p0}, Lr4/a;->m(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p0

    if-nez p0, :non_null_list

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :non_null_list
    return-object p0
.end method

.method public static B0(Z)V
    .locals 1

    const-string v0, "pref_theatre_mode_guide_status"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static C()I
    .locals 2

    invoke-static {}, Lc5/a;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Lk5/a;->b()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const-string v0, "pref_videobox_line_location"

    invoke-static {v0, v1}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static C0(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const-string p0, "pref_video_box_app_del_list"

    invoke-static {p0, v0}, Lr4/a;->s(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static D(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lk6/e;->a(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0, v0}, Li8/c;->E(Landroid/content/Context;I)Z

    move-result p0

    return p0
.end method

.method public static D0(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const-string p0, "pref_video_box_app_list"

    invoke-static {p0, v0}, Lr4/a;->s(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method private static E(Landroid/content/Context;I)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "pref_videobox_switch_status"

    const/4 v1, -0x2

    invoke-static {p0, v0, p1, v1}, La8/c0;->h(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static E0(Z)V
    .locals 1

    const-string v0, "pref_video_box_hangup_pkg"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static F()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "pref_vision_lut_app_support"

    invoke-static {v1, v0}, Lr4/a;->m(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static F0(I)V
    .locals 1

    const-string v0, "pref_videobox_line_location"

    invoke-static {v0, p0}, Lr4/a;->p(Ljava/lang/String;I)V

    return-void
.end method

.method public static G()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "pref_vtb_support_vpp_apps"

    invoke-static {v1, v0}, Lr4/a;->m(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static G0(Z)V
    .locals 1

    const-string v0, "pref_video_booster_status"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static H()Z
    .locals 2

    const-string v0, "vtb_daily_track"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static H0(Landroid/content/Context;Z)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p1}, Li8/c$a;->a(Z)I

    move-result p1

    const-string v0, "pref_videobox_switch_status"

    const/4 v1, -0x2

    invoke-static {p0, v0, p1, v1}, La8/c0;->i(Landroid/content/ContentResolver;Ljava/lang/String;II)V

    return-void
.end method

.method public static I()Z
    .locals 2

    const-string v0, "pref_video_division"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static I0(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "pref_vision_lut_app_support"

    invoke-static {v0, p0}, Lr4/a;->s(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static J()Z
    .locals 2

    const-string v0, "pref_fps_status"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static J0(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "pref_vtb_support_vpp_apps"

    invoke-static {v0, p0}, Lr4/a;->s(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static K()Z
    .locals 2

    invoke-static {}, Lj8/u;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lj8/u;->q()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    const-string v1, "pref_videobox_frc_status"

    invoke-static {v1, v0}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static K0(Z)V
    .locals 1

    const-string v0, "pref_videobox_vpp_status"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static L()Z
    .locals 2

    const-string v0, "key_videobox_hangup_ok"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static M()Z
    .locals 2

    const-string v0, "pref_hifi_status"

    const/4 v1, 0x0

    invoke-static {v0, v1}, La8/g2;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static N()Z
    .locals 2

    const-string v0, "key_videobox_milink_hangup_ok"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static O()Z
    .locals 1

    const-string v0, "pref_videobox_line_location"

    invoke-static {v0}, Lr4/a;->d(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static P()Z
    .locals 1

    const-string v0, "pref_videobox_line_status"

    invoke-static {v0}, Lr4/a;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static Q(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {p0, v0}, Li8/c;->R(Landroid/content/Context;I)Z

    move-result v1

    invoke-static {p0}, Lx4/z1;->u(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lx4/z1;->g(Landroid/content/Context;)I

    move-result v1

    invoke-static {p0, v1}, Li8/c;->R(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    return v1
.end method

.method public static R(Landroid/content/Context;I)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "pref_videobox_switch_status"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1, p1}, La8/c0;->h(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-ne p0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static S(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "key_securitycenter_never_show_vb_box"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static T(Landroid/content/Context;)Z
    .locals 3

    invoke-static {p0}, Li8/c;->S(Landroid/content/Context;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lj8/g;->p()Z

    move-result p0

    const/4 v1, -0x1

    if-nez p0, :cond_1

    invoke-static {}, Lj8/g;->j()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const-string p0, "pref_video_box_dispaly_style"

    invoke-static {p0, v1}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result p0

    if-eq p0, v1, :cond_2

    return v0

    :cond_2
    invoke-static {}, Lj8/u;->D()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {}, Li8/c;->I()Z

    move-result p0

    if-eqz p0, :cond_3

    return v0

    :cond_3
    invoke-static {}, Lj8/u;->w()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-static {}, Li8/c;->K()Z

    move-result p0

    if-eqz p0, :cond_4

    return v0

    :cond_4
    invoke-static {}, Lj8/u;->E()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-static {}, Li8/c;->V()Z

    move-result p0

    if-eqz p0, :cond_5

    return v0

    :cond_5
    invoke-static {}, La8/t;->l()Z

    move-result p0

    if-eqz p0, :cond_9

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p0

    if-nez p0, :cond_6

    return v0

    :cond_6
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "effect_implementer"

    invoke-static {p0, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_7

    return v0

    :cond_7
    const-string p0, "pref_dialog_enhancer_level"

    invoke-static {p0, v1}, La8/g2;->b(Ljava/lang/String;I)I

    move-result p0

    if-eq p0, v1, :cond_8

    return v0

    :cond_8
    const-string p0, "pref_stereo_widening_level"

    invoke-static {p0, v1}, La8/g2;->b(Ljava/lang/String;I)I

    move-result p0

    if-eq p0, v1, :cond_9

    return v0

    :cond_9
    invoke-static {}, Lcom/miui/gamebooster/videobox/utils/MiSoundEffectUtils;->d()Z

    move-result p0

    const/4 v2, 0x1

    if-nez p0, :cond_a

    invoke-static {}, Lcom/miui/gamebooster/videobox/utils/MiSoundEffectUtils;->e()Z

    move-result p0

    if-eqz p0, :cond_14

    :cond_a
    invoke-static {}, Lcom/miui/gamebooster/videobox/utils/MiSoundEffectUtils;->e()Z

    move-result p0

    if-eqz p0, :cond_b

    const-string p0, "pref_movie_vocal_level"

    invoke-static {p0, v1}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result p0

    if-eq p0, v1, :cond_b

    return v0

    :cond_b
    invoke-static {}, Lcom/miui/gamebooster/videobox/utils/MiSoundEffectUtils;->d()Z

    move-result p0

    if-eqz p0, :cond_c

    const-string p0, "pref_movie_surround_level"

    invoke-static {p0, v1}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result p0

    if-eq p0, v1, :cond_c

    return v0

    :cond_c
    invoke-static {}, Li8/c;->o()I

    move-result p0

    if-nez p0, :cond_e

    invoke-static {}, Li8/c;->n()I

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_0

    :cond_d
    move p0, v0

    goto :goto_1

    :cond_e
    :goto_0
    move p0, v2

    :goto_1
    invoke-static {}, Lj8/m;->n()Z

    move-result v1

    if-eqz v1, :cond_13

    if-nez p0, :cond_12

    invoke-static {}, Lj8/m;->f()Z

    move-result p0

    if-eqz p0, :cond_f

    invoke-static {}, Lj8/k;->h()Z

    move-result p0

    if-eqz p0, :cond_10

    invoke-static {}, Lj8/m;->b()Z

    move-result p0

    if-eqz p0, :cond_10

    goto :goto_2

    :cond_f
    invoke-static {}, Lj8/m;->b()Z

    move-result p0

    if-nez p0, :cond_12

    :cond_10
    invoke-static {}, Lj8/m;->j()Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_2

    :cond_11
    move p0, v0

    goto :goto_3

    :cond_12
    :goto_2
    move p0, v2

    :cond_13
    :goto_3
    if-eqz p0, :cond_14

    return v0

    :cond_14
    return v2
.end method

.method public static U()Z
    .locals 2

    const-string v0, "pref_video_box_hangup_pkg"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static V()Z
    .locals 2

    const-string v0, "pref_videobox_vpp_status"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static W(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "pref_vtb_support_ai_apps"

    invoke-static {v0, p0}, Lr4/a;->s(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static X(Z)V
    .locals 1

    const-string v0, "pref_allow_auto_close_video_box"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static Y(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "pref_cb_support_division_apps"

    invoke-static {v0, p0}, Lr4/a;->s(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static Z(Ljava/lang/String;)V
    .locals 1

    const-string v0, "pref_current_video_app"

    invoke-static {v0, p0}, Lr4/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 7

    invoke-static {}, La8/t;->k()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    const-string v0, "pref_video_dolby_bubble"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v2}, Lr4/a;->m(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "#"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    invoke-static {v4}, Lcom/miui/networkassistant/utils/DateUtil;->getDateFormat(I)Ljava/text/SimpleDateFormat;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    aget-object v6, v2, v3

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    aget-object p0, v2, v4

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_2

    move v1, v3

    :cond_2
    return v1

    :cond_3
    return v3

    :catch_0
    move-exception p0

    const-string v0, "VideoBoxSettings"

    const-string v2, "canShowDolbyBubble error"

    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public static a0(Z)V
    .locals 1

    const-string v0, "vtb_daily_track"

    invoke-static {v0, p0}, Lr4/a;->e(Ljava/lang/String;Z)Z

    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Li8/c$a;->a(Z)I

    move-result v2

    const-string v3, "pref_videobox_switch_status"

    invoke-static {v0, v3, v2, v1}, La8/c0;->i(Landroid/content/ContentResolver;Ljava/lang/String;II)V

    invoke-static {p0}, Lx4/z1;->u(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v1}, Li8/c$a;->a(Z)I

    move-result v1

    invoke-static {p0}, Lx4/z1;->g(Landroid/content/Context;)I

    move-result p0

    invoke-static {v0, v3, v1, p0}, La8/c0;->i(Landroid/content/ContentResolver;Ljava/lang/String;II)V

    :cond_0
    return-void
.end method

.method public static b0(I)V
    .locals 1

    const-string v0, "pref_dialog_enhancer_level"

    invoke-static {v0, p0}, La8/g2;->e(Ljava/lang/String;I)V

    return-void
.end method

.method public static c()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "pref_vtb_support_ai_apps"

    invoke-static {v1, v0}, Lr4/a;->m(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static c0(I)V
    .locals 1

    const-string v0, "pref_video_box_dispaly_style"

    invoke-static {v0, p0}, Lr4/a;->p(Ljava/lang/String;I)V

    return-void
.end method

.method public static d(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lk5/a;->G(Landroid/content/Context;)Z

    move-result p0

    const-string v0, "pref_allow_auto_close_video_box"

    invoke-static {v0, p0}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static d0(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "pref_vtb_support_division_apps"

    invoke-static {v0, p0}, Lr4/a;->s(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static e()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "pref_cb_support_division_apps"

    invoke-static {v1, v0}, Lr4/a;->m(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static e0(Z)V
    .locals 1

    const-string v0, "pref_video_division"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static f()Ljava/lang/String;
    .locals 2

    const-string v0, "pref_current_video_app"

    const-string v1, "unknown"

    invoke-static {v0, v1}, Lr4/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static f0(I)V
    .locals 1

    const-string v0, "pref_dolby_effect_profile"

    invoke-static {v0, p0}, La8/g2;->e(Ljava/lang/String;I)V

    return-void
.end method

.method public static g(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "gamebooster"

    const-string v1, "vtb_net_support_apps"

    invoke-static {v0, v1, p0}, La8/y;->e(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "vtb_default_support_list"

    invoke-static {v0, p0}, La8/y;->d(Ljava/lang/String;Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static g0(Ljava/lang/String;)V
    .locals 6

    const-string v0, "#"

    const-string v1, "pref_video_dolby_bubble"

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, v2}, Lr4/a;->m(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x2

    invoke-static {p0}, Lcom/miui/networkassistant/utils/DateUtil;->getDateFormat(I)Ljava/text/SimpleDateFormat;

    move-result-object p0

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x1

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v1, v2}, Lr4/a;->s(Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "VideoBoxSettings"

    const-string v1, "setDolbyShow error"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static h()I
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, La8/t;->e(I)I

    move-result v0

    const-string v1, "pref_dialog_enhancer_level"

    invoke-static {v1, v0}, La8/g2;->b(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static h0(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "pref_vtb_dolby_special"

    invoke-static {v0, p0}, Lr4/a;->s(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static i()I
    .locals 2

    const-string v0, "pref_video_box_dispaly_style"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static i0(Z)V
    .locals 1

    const-string v0, "pref_fps_status"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static j()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "pref_vtb_support_division_apps"

    invoke-static {v1, v0}, Lr4/a;->m(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static j0(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "pref_vtb_support_frc_apps"

    invoke-static {v0, p0}, Lr4/a;->s(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static k()I
    .locals 2

    const-string v0, "pref_dolby_effect_profile"

    const/4 v1, 0x0

    invoke-static {v0, v1}, La8/g2;->b(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static k0(Z)V
    .locals 1

    const-string v0, "pref_videobox_frc_status"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static l()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "pref_vtb_dolby_special"

    invoke-static {v1, v0}, Lr4/a;->m(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static l0(Z)V
    .locals 1

    const-string v0, "key_videobox_hangup_ok"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static m()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "pref_vtb_support_frc_apps"

    invoke-static {v1, v0}, Lr4/a;->m(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static m0(Z)V
    .locals 1

    const-string v0, "pref_hifi_status"

    invoke-static {v0, p0}, La8/g2;->d(Ljava/lang/String;Z)V

    return-void
.end method

.method public static n()I
    .locals 2

    const-string v0, "pref_movie_surround_level"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static n0(Z)V
    .locals 1

    const-string v0, "key_videobox_milink_hangup_ok"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static o()I
    .locals 2

    const-string v0, "pref_movie_vocal_level"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static o0(I)V
    .locals 1

    const-string v0, "pref_movie_surround_level"

    invoke-static {v0, p0}, Lr4/a;->p(Ljava/lang/String;I)V

    return-void
.end method

.method public static p()I
    .locals 2

    const-string v0, "pref_pre_video_box_display_style"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static p0(I)V
    .locals 1

    const-string v0, "pref_movie_vocal_level"

    invoke-static {v0, p0}, Lr4/a;->p(Ljava/lang/String;I)V

    return-void
.end method

.method public static q()Z
    .locals 2

    const-string v0, "pref_pre_dolby_status"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static q0(Z)V
    .locals 1

    const-string v0, "pref_never_switch_to_theatre_mode"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static r()Z
    .locals 2

    const-string v0, "pref_pre_videobox_frc_status"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static r0(Landroid/content/Context;Z)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "key_securitycenter_never_show_vb_box"

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setNeverUseVbBox fail : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VideoBoxSettings"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public static s()Z
    .locals 2

    const-string v0, "pref_pre_immerse_voice_status"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static s0(I)V
    .locals 1

    const-string v0, "pref_pre_video_box_display_style"

    invoke-static {v0, p0}, Lr4/a;->p(Ljava/lang/String;I)V

    return-void
.end method

.method public static t()Ljava/lang/String;
    .locals 2

    const-string v0, "pref_pre_video_app"

    const-string v1, "unknown"

    invoke-static {v0, v1}, Lr4/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static t0(Z)V
    .locals 1

    const-string v0, "pref_pre_dolby_status"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static u()Z
    .locals 2

    const-string v0, "pref_pre_video_division"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static u0(Z)V
    .locals 1

    const-string v0, "pref_pre_videobox_frc_status"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static v()Z
    .locals 2

    const-string v0, "pref_pre_visaul_status"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static v0(Z)V
    .locals 1

    const-string v0, "pref_pre_immerse_voice_status"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static w()I
    .locals 2

    const/4 v0, 0x4

    invoke-static {v0}, La8/t;->h(I)I

    move-result v0

    const-string v1, "pref_stereo_widening_level"

    invoke-static {v1, v0}, La8/g2;->b(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static w0(Ljava/lang/String;)V
    .locals 1

    const-string v0, "pref_pre_video_app"

    invoke-static {v0, p0}, Lr4/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static x()Z
    .locals 2

    invoke-static {}, Lj8/p;->e()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "pref_video_theatre_status"

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static x0(Z)V
    .locals 1

    const-string v0, "pref_pre_video_division"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static y(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lj8/p;->f(Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string p0, "pref_video_theatre_status"

    invoke-static {p0, v0}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static y0(Z)V
    .locals 1

    const-string v0, "pref_pre_visaul_status"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static z()Z
    .locals 2

    const-string v0, "pref_video_theatre_status"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static z0(I)V
    .locals 1

    const-string v0, "pref_stereo_widening_level"

    invoke-static {v0, p0}, La8/g2;->e(Ljava/lang/String;I)V

    return-void
.end method

.class public Lcom/miui/common/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4

    :try_start_0
    const-string p0, "default"

    const/4 v0, 0x0

    invoke-virtual {p2, p0, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x745aa763

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "is_miui_dock_support"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p2, p1, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_3

    :cond_2
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p0

    invoke-static {p0}, Lk5/a;->d(Landroid/content/Context;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_3
    return-object p2

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 6

    :try_start_0
    const-string v0, "default"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "pkg_name"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x1

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v4, "is_front_assistant_support"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v3, v5

    goto/16 :goto_0

    :sswitch_1
    const-string v4, "shield_status"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v3, 0x8

    goto/16 :goto_0

    :sswitch_2
    const-string v4, "is_remove_advanced_settings"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v3, 0xb

    goto/16 :goto_0

    :sswitch_3
    const-string v4, "dnd_status"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x7

    goto :goto_0

    :sswitch_4
    const-string v4, "game_support_function"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x5

    goto :goto_0

    :sswitch_5
    const-string v4, "is_gt_support"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x3

    goto :goto_0

    :sswitch_6
    const-string v4, "is_game_booster_app"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v3, 0x9

    goto :goto_0

    :sswitch_7
    const-string v4, "is_integration_gt_vtb_support"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :sswitch_8
    const-string v4, "is_bubbles_notificatioin_support"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x6

    goto :goto_0

    :sswitch_9
    const-string v4, "is_sidebar_box_support"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v3, 0xc

    goto :goto_0

    :sswitch_a
    const-string v4, "is_conversation_assistant_support"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x2

    goto :goto_0

    :sswitch_b
    const-string v4, "is_remove_enhance"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v3, 0xa

    goto :goto_0

    :sswitch_c
    const-string v4, "is_miui_dock_support"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v3, v1

    :cond_0
    :goto_0
    packed-switch v3, :pswitch_data_0

    goto :goto_5

    :pswitch_0
    invoke-static {}, Lc5/a;->a()Z

    move-result v0

    invoke-static {}, Lk6/d;->c()Z

    move-result v2

    invoke-static {}, Lk6/d;->e()Z

    move-result v3

    invoke-static {}, Lx5/p;->H0()Z

    move-result v4

    if-nez v0, :cond_2

    if-nez v2, :cond_2

    if-nez v3, :cond_2

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_2

    :cond_2
    :goto_1
    move v0, v5

    :goto_2
    sget-boolean v2, Lsl/a;->b:Z

    if-nez v2, :cond_3

    invoke-static {}, Lf7/b;->m()Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    if-eqz v0, :cond_4

    :goto_3
    move v1, v5

    :cond_4
    :goto_4
    invoke-virtual {p1, p0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_a

    :pswitch_1
    invoke-static {}, La8/b;->d()La8/b;

    move-result-object v0

    const/high16 v1, 0x40600000    # 3.5f

    invoke-virtual {v0, v1}, La8/b;->t(F)Z

    move-result v0

    :goto_5
    invoke-virtual {p1, p0, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_a

    :pswitch_2
    invoke-static {}, La8/r;->b()Z

    move-result v0

    goto :goto_5

    :pswitch_3
    invoke-static {}, Lk6/d;->c()Z

    move-result v0

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v3

    invoke-static {v3}, Lm6/a;->e(Landroid/content/Context;)Lm6/a;

    move-result-object v3

    invoke-virtual {v3}, Lm6/a;->x()Z

    move-result v3

    if-eqz v3, :cond_7

    if-nez v0, :cond_5

    goto :goto_8

    :cond_5
    const-string v0, "pkg_uid"

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lx4/z1;->m(I)I

    move-result v0

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v3

    invoke-static {v3, v2, v0, v1}, Lm7/a;->c(Landroid/content/Context;Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_6

    :goto_6
    move v1, v5

    :cond_6
    :goto_7
    invoke-virtual {p1, p0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_a

    :cond_7
    :goto_8
    const-string v2, "FeatureManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not support Game Turbo, supportGameTurbo = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", gameTurboEnable = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :pswitch_4
    invoke-static {v1}, Lm6/a;->H(Z)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_6

    :pswitch_5
    invoke-static {}, La8/g0;->R()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lm6/a;->e(Landroid/content/Context;)Lm6/a;

    invoke-static {v1}, Lm6/a;->i(Z)Z

    move-result v0

    goto :goto_9

    :cond_8
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lm6/a;->e(Landroid/content/Context;)Lm6/a;

    invoke-static {v1}, Lm6/a;->j(Z)Z

    move-result v0

    :goto_9
    if-eqz v0, :cond_6

    goto :goto_6

    :pswitch_6
    invoke-static {}, Lcom/miui/bubbles/utils/BubbleUpManager;->isSupportBubbleUpNotification()Z

    move-result v0

    goto/16 :goto_5

    :pswitch_7
    invoke-static {v2}, Lt6/a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :pswitch_8
    invoke-virtual {p1, p0, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_a

    :pswitch_9
    invoke-static {}, Lk6/d;->c()Z

    move-result v0

    goto/16 :goto_5

    :pswitch_a
    invoke-static {}, Lx5/p;->y0()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, La8/z;->d()Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_3

    :pswitch_b
    invoke-static {}, Lcom/miui/common/d;->c()Z

    move-result v0

    if-eqz v0, :cond_9

    goto/16 :goto_4

    :cond_9
    invoke-static {}, Lw5/f;->p()Lw5/f;

    move-result-object v0

    invoke-virtual {v0}, Lw5/f;->f0()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lx5/p;->y0()Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_3

    :pswitch_c
    invoke-static {}, Lc5/a;->a()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    :goto_a
    return-object p1

    :catch_0
    const/4 p0, 0x0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x745aa763 -> :sswitch_c
        -0x73433a58 -> :sswitch_b
        -0x60413b99 -> :sswitch_a
        -0x1b52b59d -> :sswitch_9
        -0x110e2e55 -> :sswitch_8
        -0x49eee5e -> :sswitch_7
        0xfab929a -> :sswitch_6
        0x1ffa40b2 -> :sswitch_5
        0x2103b6f5 -> :sswitch_4
        0x224b36b7 -> :sswitch_3
        0x249d9e1a -> :sswitch_2
        0x44e03588 -> :sswitch_1
        0x77ef7ec3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method public static c()Z
    .locals 2

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "rothko"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "degas"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ruyi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static d(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5

    :try_start_0
    const-string v0, "default"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x745aa763

    if-eq v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "is_miui_dock_support"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    :goto_1
    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-static {p0, v0}, Lk5/a;->C(Landroid/content/Context;Z)V

    if-eqz v0, :cond_3

    invoke-static {p0}, Ld5/e;->b(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_2
    return-object p1

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

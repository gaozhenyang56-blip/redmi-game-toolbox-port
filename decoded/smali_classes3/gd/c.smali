.class public Lgd/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static A()Z
    .locals 2

    const-string v0, "key_charge_full_in_night"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static A0()I
    .locals 2

    const-string v0, "on_time_shutdown_time"

    const/16 v1, 0x582

    invoke-static {v0, v1}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static A1(Z)V
    .locals 1

    const-string v0, "key_pogo_charge_enable"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static A2(I)V
    .locals 1

    const-string v0, "key_fast_charge_power_max"

    invoke-static {v0, p0}, Lr4/a;->p(Ljava/lang/String;I)V

    return-void
.end method

.method public static B(Ljava/lang/String;)J
    .locals 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    const-string p0, "key_battery_info_charge_full_time_ac"

    :goto_0
    invoke-static {p0, v1, v2}, Lr4/a;->j(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string v3, "4"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x3

    goto :goto_1

    :pswitch_1
    const-string v3, "3"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x2

    goto :goto_1

    :pswitch_2
    const-string v3, "2"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    :pswitch_3
    const-string v3, "1"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    packed-switch v0, :pswitch_data_1

    const-string p0, "key_battery_info_charge_full_time_ac_0"

    goto :goto_0

    :pswitch_4
    const-string p0, "key_battery_info_charge_full_time_ac_4"

    goto :goto_0

    :pswitch_5
    const-string p0, "key_battery_info_charge_full_time_ac_3"

    goto :goto_0

    :pswitch_6
    const-string p0, "key_battery_info_charge_full_time_ac_2"

    goto :goto_0

    :pswitch_7
    const-string p0, "key_battery_info_charge_full_time_ac_1"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public static B0()I
    .locals 2

    const-string v0, "key_partical_wakelock_abnormal_threshold"

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static final B1(I)V
    .locals 1

    const-string v0, "key_current_wls_tx_speed"

    invoke-static {v0, p0}, Lr4/a;->p(Ljava/lang/String;I)V

    return-void
.end method

.method public static B2(I)V
    .locals 1

    add-int/lit8 p0, p0, 0x1

    mul-int/lit8 p0, p0, 0xa

    const-string v0, "key_fast_charge_power_threshold"

    invoke-static {v0, p0}, Lr4/a;->p(Ljava/lang/String;I)V

    return-void
.end method

.method public static C()J
    .locals 3

    const-string v0, "key_battery_info_charge_full_time_usb"

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lr4/a;->j(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static C0()I
    .locals 2

    const-string v0, "key_fast_charge_power_max"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static C1(I)V
    .locals 1

    const-string v0, "key_disable_mobile_data_time"

    invoke-static {v0, p0}, Lr4/a;->p(Ljava/lang/String;I)V

    return-void
.end method

.method public static C2(Z)V
    .locals 1

    const-string v0, "key_pogopin_tip_shutdown"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static D(Ljava/lang/String;)J
    .locals 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    const-string p0, "key_battery_info_charge_full_time_wireless"

    :goto_0
    invoke-static {p0, v1, v2}, Lr4/a;->j(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v3, "15"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x6

    goto :goto_1

    :sswitch_1
    const-string v3, "14"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x5

    goto :goto_1

    :sswitch_2
    const-string v3, "13"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x4

    goto :goto_1

    :sswitch_3
    const-string v3, "12"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x3

    goto :goto_1

    :sswitch_4
    const-string v3, "11"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_1

    :cond_5
    const/4 v0, 0x2

    goto :goto_1

    :sswitch_5
    const-string v3, "10"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_1

    :cond_6
    const/4 v0, 0x1

    goto :goto_1

    :sswitch_6
    const-string v3, "9"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_1

    :cond_7
    const/4 v0, 0x0

    :goto_1
    packed-switch v0, :pswitch_data_0

    const-string p0, "key_battery_info_charge_full_time_wireless_1"

    goto :goto_0

    :pswitch_0
    const-string p0, "key_battery_info_charge_full_time_wireless_5"

    goto :goto_0

    :pswitch_1
    const-string p0, "key_battery_info_charge_full_time_wireless_4"

    goto :goto_0

    :pswitch_2
    const-string p0, "key_battery_info_charge_full_time_wireless_3"

    goto :goto_0

    :pswitch_3
    const-string p0, "key_battery_info_charge_full_time_wireless_2"

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x39 -> :sswitch_6
        0x61f -> :sswitch_5
        0x620 -> :sswitch_4
        0x621 -> :sswitch_3
        0x622 -> :sswitch_2
        0x623 -> :sswitch_1
        0x624 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static D0()I
    .locals 2

    const-string v0, "key_fast_charge_power_threshold"

    const/16 v1, 0x14

    invoke-static {v0, v1}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static D1(I)V
    .locals 1

    const-string v0, "key_earliest_night_charge_end_minutes"

    invoke-static {v0, p0}, Lr4/a;->p(Ljava/lang/String;I)V

    return-void
.end method

.method public static D2(Z)V
    .locals 1

    const-string v0, "key_power_save_alarm_enabled"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static E(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    invoke-static {p0, v0}, Lr4/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static E0()Z
    .locals 2

    const-string v0, "key_pogopin_tip_shutdown"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static E1()V
    .locals 2

    const-string v0, "key_enter_night_charge_times"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lr4/a;->p(Ljava/lang/String;I)V

    return-void
.end method

.method public static E2(I)V
    .locals 1

    const-string v0, "key_power_save_close_time"

    invoke-static {v0, p0}, Lr4/a;->p(Ljava/lang/String;I)V

    return-void
.end method

.method public static F()Z
    .locals 2

    const-string v0, "key_close_wakeup_for_notification"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static F0()Z
    .locals 2

    const-string v0, "key_power_save_alarm_enabled"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static F1(Z)V
    .locals 1

    const-string v0, "pc_extreme_state_value"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static F2(I)V
    .locals 1

    const-string v0, "key_power_save_open_time"

    invoke-static {v0, p0}, Lr4/a;->p(Ljava/lang/String;I)V

    return-void
.end method

.method public static G()Z
    .locals 2

    const-string v0, "pc_key_lpd_cloud_enable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static G0()I
    .locals 2

    const-string v0, "key_power_save_close_time"

    const/16 v1, 0x1a4

    invoke-static {v0, v1}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static G1()V
    .locals 2

    const-string v0, "key_pc_show_miai_auth_times"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lr4/a;->p(Ljava/lang/String;I)V

    return-void
.end method

.method public static G2(Z)V
    .locals 1

    const-string v0, "key_show_battery_consume_abnormal"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static H()Z
    .locals 2

    const-string v0, "pc_key_ntc_cloud_enable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static H0()I
    .locals 2

    const-string v0, "key_power_save_open_time"

    const/16 v1, 0x564

    invoke-static {v0, v1}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static H1(Ljava/lang/String;)V
    .locals 1

    const-string v0, "key_fiveg_dialog_list"

    invoke-static {v0, p0}, Lr4/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static H2(Z)V
    .locals 1

    const-string v0, "key_show_battery_power_save_suggest"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static I()Z
    .locals 2

    const-string v0, "key_pogo_charge_enable"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static I0()Z
    .locals 2

    const-string v0, "key_show_battery_consume_abnormal"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static I1()V
    .locals 2

    const-string v0, "pc_key_no_fold_wiress_charge_reminder"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lr4/a;->p(Ljava/lang/String;I)V

    return-void
.end method

.method public static I2()V
    .locals 2

    const-string v0, "key_showed_camera_handle"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static final J()I
    .locals 2

    const-string v0, "key_current_wls_tx_speed"

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static J0()Z
    .locals 2

    const-string v0, "key_printer_kit_showed"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static J1(Z)V
    .locals 1

    const-string v0, "pc_high_fps_video_show_black"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static J2()V
    .locals 2

    const-string v0, "key_printer_kit_showed"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static K()I
    .locals 5

    const-string v0, "key_disable_mobile_data_time"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0x3c

    if-ne v0, v2, :cond_0

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f030047

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    array-length v4, v3

    if-lez v4, :cond_0

    aget v0, v3, v1

    mul-int/2addr v0, v2

    invoke-static {v0}, Lgd/c;->C1(I)V

    :cond_0
    return v0
.end method

.method public static K0()Z
    .locals 2

    const-string v0, "key_showed_stand_charge"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static K1(J)V
    .locals 1

    const-string v0, "pc_high_fps_video_show_time"

    invoke-static {v0, p0, p1}, Lr4/a;->q(Ljava/lang/String;J)V

    return-void
.end method

.method public static K2()V
    .locals 2

    const-string v0, "key_showed_stand_charge"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static L()I
    .locals 2

    const-string v0, "key_earliest_night_charge_end_minutes"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static L0()J
    .locals 3

    const-string v0, "key_shutdowntime"

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lr4/a;->j(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static L1(I)V
    .locals 1

    const-string v0, "pc_high_temp_air_plan_mode"

    invoke-static {v0, p0}, Lr4/a;->p(Ljava/lang/String;I)V

    return-void
.end method

.method public static L2(J)V
    .locals 1

    const-string v0, "key_shutdowntime"

    invoke-static {v0, p0, p1}, Lr4/a;->q(Ljava/lang/String;J)V

    return-void
.end method

.method public static M()I
    .locals 2

    const-string v0, "key_enter_night_charge_times"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static M0()Z
    .locals 2

    const-string v0, "pc_smart_discharge_state"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static M1(I)V
    .locals 1

    const-string v0, "pc_high_temp_force_fsg_nav_bar"

    invoke-static {v0, p0}, Lr4/a;->p(Ljava/lang/String;I)V

    return-void
.end method

.method public static M2(Z)V
    .locals 1

    const-string v0, "pc_smart_discharge_state"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static N()Z
    .locals 2

    const-string v0, "pc_extreme_state_value"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static N0()I
    .locals 2

    const-string v0, "pc_smart_discharge_value"

    const/16 v1, 0x50

    invoke-static {v0, v1}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static N1(Z)V
    .locals 1

    const-string v0, "key_intellect_protect_button_state"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static N2(I)V
    .locals 1

    const-string v0, "pc_smart_discharge_value"

    invoke-static {v0, p0}, Lr4/a;->p(Ljava/lang/String;I)V

    return-void
.end method

.method public static O()I
    .locals 2

    const-string v0, "key_pc_show_miai_auth_times"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static final O0()Z
    .locals 2

    const-string v0, "key_super_wireless_charge_dialog_enable"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static final O1(Z)V
    .locals 1

    const-string v0, "key_is_connected_super_wls_tx"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static final O2(Z)V
    .locals 1

    const-string v0, "key_super_wireless_charge_dialog_enable"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static P()Lorg/json/JSONArray;
    .locals 4

    const-string v0, "key_fiveg_dialog_list"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Preferences"

    const-string v3, "getCloudSupport error:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v1
.end method

.method public static P0()Z
    .locals 2

    const-string v0, "key_show_super_wireless_charge_noti"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static P1(Z)V
    .locals 1

    const-string v0, "key_is_need_send_unoffical_battery_dialog"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static P2(Z)V
    .locals 1

    const-string v0, "key_show_super_wireless_charge_noti"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static Q()Z
    .locals 2

    const-string v0, "pc_high_fps_video_show_black"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static Q0()Ljava/lang/String;
    .locals 2

    const-string v0, "key_user_active_time"

    const-string v1, ""

    invoke-static {v0, v1}, Lr4/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static Q1(Z)V
    .locals 1

    const-string v0, "key_is_need_send_unoffical_battery_noti"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static Q2(Ljava/lang/String;)V
    .locals 1

    const-string v0, "key_user_active_time"

    invoke-static {v0, p0}, Lr4/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static R()J
    .locals 3

    const-string v0, "pc_high_fps_video_show_time"

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lr4/a;->j(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static R0()I
    .locals 2

    const-string v0, "pc_high_temp_force_fsg_nav_bar"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static R1(I)V
    .locals 1

    const-string v0, "key_partical_wakelock_abnormal_threshold"

    invoke-static {v0, p0}, Lr4/a;->p(Ljava/lang/String;I)V

    return-void
.end method

.method public static S()I
    .locals 2

    const-string v0, "pc_high_temp_air_plan_mode"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static S0()Z
    .locals 3

    const-string v0, "pc_key_no_fold_wiress_charge_reminder"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public static S1(Z)V
    .locals 1

    const-string v0, "key_auto_upload_batteryhealth"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static T()Z
    .locals 2

    const-string v0, "key_intellect_protect_button_state"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static T0()Z
    .locals 2

    const-string v0, "key_move_auto_task_data_over"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static T1(J)V
    .locals 1

    const-string v0, "key_battery_abnormal_consume_noti_time"

    invoke-static {v0, p0, p1}, Lr4/a;->q(Ljava/lang/String;J)V

    return-void
.end method

.method public static U()Z
    .locals 3

    const-string v0, "key_night_charge_back_device"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public static U0()Z
    .locals 2

    const-string v0, "key_fast_charge_enabled_default"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static U1(Z)V
    .locals 1

    const-string v0, "key_battery_abnormal_noti_enable"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static V()Z
    .locals 2

    const-string v0, "key_is_need_send_unoffical_battery_dialog"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static V0()Z
    .locals 2

    const-string v0, "key_fast_charge_noti_enabled"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static V1(Ljava/lang/String;)V
    .locals 1

    const-string v0, "key_battery_scan_black_list"

    invoke-static {v0, p0}, Lr4/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static W()Z
    .locals 2

    const-string v0, "key_is_need_send_unoffical_battery_noti"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static W0()Z
    .locals 2

    const-string v0, "key_fast_charge_power_connected"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static W1(I)V
    .locals 1

    const-string v0, "key_battery_scan_suggest_noti_times"

    invoke-static {v0, p0}, Lr4/a;->p(Ljava/lang/String;I)V

    return-void
.end method

.method public static X()Z
    .locals 2

    const-string v0, "key_auto_upload_batteryhealth"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static X0()Z
    .locals 2

    const-string v0, "key_show_battery_power_save_suggest"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static X1(Ljava/lang/String;)V
    .locals 1

    const-string v0, "key_battery_suggest_id_list"

    invoke-static {v0, p0}, Lr4/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static Y()J
    .locals 3

    const-string v0, "key_battery_abnormal_consume_noti_time"

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lr4/a;->j(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static Y0()V
    .locals 2

    const-string v0, "key_adnormal_exit_night_charge_times"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lr4/a;->p(Ljava/lang/String;I)V

    return-void
.end method

.method public static Y1(I)V
    .locals 1

    const-string v0, "key_cpu_abnormal_threshold"

    invoke-static {v0, p0}, Lr4/a;->p(Ljava/lang/String;I)V

    return-void
.end method

.method public static Z()Z
    .locals 2

    const-string v0, "key_battery_abnormal_noti_enable"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static Z0(Z)V
    .locals 1

    const-string v0, "key_auto_exit_power_save_mode_enabled"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static Z1(Z)V
    .locals 1

    const-string v0, "key_is_need_charge_protection"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static a()V
    .locals 2

    const-string v0, "key_pc_this_time_no_protect"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static a0()Ljava/lang/String;
    .locals 2

    const-string v0, "key_battery_scan_black_list"

    const-string v1, ""

    invoke-static {v0, v1}, Lr4/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a1(Ljava/lang/String;)V
    .locals 1

    const-string v0, "key_autostart_by_self_whitelist"

    invoke-static {v0, p0}, Lr4/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a2(J)V
    .locals 1

    const-string v0, "key_last_battery_scan_issue_noti_time"

    invoke-static {v0, p0, p1}, Lr4/a;->q(Ljava/lang/String;J)V

    return-void
.end method

.method public static b()V
    .locals 2

    const-string v0, "key_adnormal_exit_night_charge_times"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->p(Ljava/lang/String;I)V

    return-void
.end method

.method public static b0()I
    .locals 2

    const-string v0, "key_battery_scan_suggest_noti_times"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static b1(I)V
    .locals 1

    const-string v0, "key_ave_night_charge_start_minutes"

    invoke-static {v0, p0}, Lr4/a;->p(Ljava/lang/String;I)V

    return-void
.end method

.method public static b2(J)V
    .locals 1

    const-string v0, "key_last_battery_scan_suggest_noti_time"

    invoke-static {v0, p0, p1}, Lr4/a;->q(Ljava/lang/String;J)V

    return-void
.end method

.method public static c()V
    .locals 2

    const-string v0, "key_enter_night_charge_times"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->p(Ljava/lang/String;I)V

    return-void
.end method

.method public static c0()Ljava/lang/String;
    .locals 2

    const-string v0, "key_battery_suggest_id_list"

    const-string v1, ""

    invoke-static {v0, v1}, Lr4/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c1(Ljava/lang/String;)V
    .locals 1

    const-string v0, "key_battery_abnormal_consume_device_blacklist"

    invoke-static {v0, p0}, Lr4/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static c2(J)V
    .locals 1

    const-string v0, "key_last_charge_stamp"

    invoke-static {v0, p0, p1}, Lr4/a;->q(Ljava/lang/String;J)V

    return-void
.end method

.method public static d()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "key_battery_info_charge_full_time_ac_4"

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lr4/a;->j(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "key_battery_info_charge_full_time_ac_3"

    invoke-static {v1, v2, v3}, Lr4/a;->j(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "key_battery_info_charge_full_time_ac_2"

    invoke-static {v1, v2, v3}, Lr4/a;->j(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "key_battery_info_charge_full_time_ac_1"

    invoke-static {v1, v2, v3}, Lr4/a;->j(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "key_battery_info_charge_full_time_ac_0"

    invoke-static {v1, v2, v3}, Lr4/a;->j(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "key_battery_info_charge_full_time_ac"

    invoke-static {v1, v2, v3}, Lr4/a;->j(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static d0()I
    .locals 2

    const-string v0, "key_cpu_abnormal_threshold"

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static d1(Ljava/lang/String;)V
    .locals 1

    const-string v0, "key_battery_abnormal_noti_app_white_list"

    invoke-static {v0, p0}, Lr4/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static d2(I)V
    .locals 1

    const-string v0, "key_last_refresh_rate"

    invoke-static {v0, p0}, Lr4/a;->p(Ljava/lang/String;I)V

    return-void
.end method

.method public static e()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "key_battery_info_charge_full_time_wireless_5"

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lr4/a;->j(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "key_battery_info_charge_full_time_wireless_4"

    invoke-static {v1, v2, v3}, Lr4/a;->j(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "key_battery_info_charge_full_time_wireless_3"

    invoke-static {v1, v2, v3}, Lr4/a;->j(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "key_battery_info_charge_full_time_wireless_2"

    invoke-static {v1, v2, v3}, Lr4/a;->j(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "key_battery_info_charge_full_time_wireless_1"

    invoke-static {v1, v2, v3}, Lr4/a;->j(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "key_battery_info_charge_full_time_wireless"

    invoke-static {v1, v2, v3}, Lr4/a;->j(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static e0()Z
    .locals 2

    const-string v0, "key_is_need_charge_protection"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static e1(I)V
    .locals 1

    const-string v0, "key_battery_health_apperence_times"

    invoke-static {v0, p0}, Lr4/a;->p(Ljava/lang/String;I)V

    return-void
.end method

.method public static e2(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "key_night_charge_record"

    invoke-static {v0, p0}, Lr4/a;->s(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static f()I
    .locals 2

    const-string v0, "key_adnormal_exit_night_charge_times"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static f0()J
    .locals 3

    const-string v0, "key_last_battery_scan_issue_noti_time"

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lr4/a;->j(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static f1(Ljava/lang/String;)V
    .locals 1

    const-string v0, "key_battery_health_device_blacklist"

    invoke-static {v0, p0}, Lr4/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static f2(Ljava/lang/String;)V
    .locals 1

    const-string v0, "key_open_darkmode_battery_scan_device"

    invoke-static {v0, p0}, Lr4/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static g()Z
    .locals 2

    const-string v0, "key_auto_exit_power_save_mode_enabled"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static g0()J
    .locals 3

    const-string v0, "key_last_battery_scan_suggest_noti_time"

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lr4/a;->j(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static g1(Z)V
    .locals 1

    const-string v0, "key_battery_health_tip_closed"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static g2(I)V
    .locals 1

    const-string v0, "key_today_charge_times"

    invoke-static {v0, p0}, Lr4/a;->p(Ljava/lang/String;I)V

    return-void
.end method

.method public static h()Ljava/lang/String;
    .locals 2

    const-string v0, "key_autostart_by_self_whitelist"

    const-string v1, ""

    invoke-static {v0, v1}, Lr4/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static h0()J
    .locals 4

    invoke-static {}, Lx4/z1;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x6e

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "key_last_charge_stamp"

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3, v0}, Lr4/a;->k(Ljava/lang/String;JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public static h1(J)V
    .locals 1

    const-string v0, "key_battery_last_charge_time"

    invoke-static {v0, p0, p1}, Lr4/a;->q(Ljava/lang/String;J)V

    return-void
.end method

.method public static h2(J)V
    .locals 1

    const-string v0, "key_last_show_over_heat_time"

    invoke-static {v0, p0, p1}, Lr4/a;->q(Ljava/lang/String;J)V

    return-void
.end method

.method public static i()I
    .locals 2

    const-string v0, "key_ave_night_charge_start_minutes"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static i0()I
    .locals 2

    const-string v0, "key_last_refresh_rate"

    const/16 v1, 0x3c

    invoke-static {v0, v1}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static i1(I)V
    .locals 1

    const-string v0, "key_battery_last_drain_percent"

    invoke-static {v0, p0}, Lr4/a;->p(Ljava/lang/String;I)V

    return-void
.end method

.method public static i2(Z)V
    .locals 1

    const-string v0, "pc_low_battery_charger_fast_black"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static j()Ljava/lang/String;
    .locals 2

    const-string v0, "key_battery_abnormal_consume_device_blacklist"

    const-string v1, ""

    invoke-static {v0, v1}, Lr4/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static j0()Ljava/lang/String;
    .locals 2

    const-string v0, "key_open_darkmode_battery_scan_device"

    const-string v1, ""

    invoke-static {v0, v1}, Lr4/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static j1(J)V
    .locals 1

    const-string v0, "key_battery_last_drain_time_duration"

    invoke-static {v0, p0, p1}, Lr4/a;->q(Ljava/lang/String;J)V

    return-void
.end method

.method public static j2(I)V
    .locals 1

    const-string v0, "key_memory_clean_time"

    invoke-static {v0, p0}, Lr4/a;->p(Ljava/lang/String;I)V

    return-void
.end method

.method public static k()Ljava/lang/String;
    .locals 2

    const-string v0, "key_battery_abnormal_noti_app_white_list"

    const-string v1, ""

    invoke-static {v0, v1}, Lr4/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static k0()I
    .locals 3

    invoke-static {}, Lx4/z1;->t()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/16 v0, 0x6e

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v2, "key_today_charge_times"

    invoke-static {v2, v1, v0}, Lr4/a;->i(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public static k1(I)V
    .locals 1

    const-string v0, "key_battery_over_heat_value"

    invoke-static {v0, p0}, Lr4/a;->p(Ljava/lang/String;I)V

    return-void
.end method

.method public static k2(Z)V
    .locals 1

    const-string v0, "key_move_auto_task_data_over"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static l()Z
    .locals 3

    const-string v0, "key_pc_battery_above_95_show_flag"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public static l0()J
    .locals 3

    const-string v0, "key_last_show_over_heat_time"

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lr4/a;->j(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static l1(J)V
    .locals 1

    const-string v0, "key_battery_record_resettime"

    invoke-static {v0, p0, p1}, Lr4/a;->q(Ljava/lang/String;J)V

    return-void
.end method

.method public static l2(Z)V
    .locals 1

    const-string v0, "pc_navigation_charge_black"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static m()Ljava/lang/String;
    .locals 2

    const-string v0, "key_pc_battery_above_95_time"

    const-string v1, ""

    invoke-static {v0, v1}, Lr4/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static m0()Z
    .locals 2

    const-string v0, "pc_low_battery_charger_fast_black"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static m1(I)V
    .locals 1

    const-string v0, "pc_before_lock_screen_time"

    invoke-static {v0, p0}, Lr4/a;->p(Ljava/lang/String;I)V

    return-void
.end method

.method public static m2(I)V
    .locals 1

    const-string v0, "key_night_charge_end_minutes_sd"

    invoke-static {v0, p0}, Lr4/a;->p(Ljava/lang/String;I)V

    return-void
.end method

.method public static n()I
    .locals 2

    const-string v0, "key_battery_health_apperence_times"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static n0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static n1(I)V
    .locals 1

    const-string v0, "pc_before_brightness_percentage"

    invoke-static {v0, p0}, Lr4/a;->p(Ljava/lang/String;I)V

    return-void
.end method

.method public static n2(Z)V
    .locals 1

    const-string v0, "key_night_charge_protection_mode"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static o()Ljava/lang/String;
    .locals 2

    const-string v0, "key_battery_health_device_blacklist"

    const-string v1, ""

    invoke-static {v0, v1}, Lr4/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static o0()I
    .locals 2

    const-string v0, "key_memory_clean_time"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static o1(I)V
    .locals 1

    const-string v0, "is_smart_fps"

    invoke-static {v0, p0}, Lr4/a;->p(Ljava/lang/String;I)V

    return-void
.end method

.method public static o2(I)V
    .locals 1

    const-string v0, "key_night_charge_start_minutes_sd"

    invoke-static {v0, p0}, Lr4/a;->p(Ljava/lang/String;I)V

    return-void
.end method

.method public static p()Z
    .locals 2

    const-string v0, "key_battery_health_tip_closed"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static p0()Z
    .locals 2

    const-string v0, "pc_navigation_charge_black"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static p1()V
    .locals 2

    const-string v0, "key_car_pad_high_temp_no_reminder"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static p2(Z)V
    .locals 1

    const-string v0, "on_time_boot_enabled"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static q()J
    .locals 4

    invoke-static {}, Lx4/z1;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x6e

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "key_battery_last_charge_time"

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3, v0}, Lr4/a;->k(Ljava/lang/String;JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public static q0()I
    .locals 2

    const-string v0, "key_night_charge_end_minutes_sd"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static q1(J)V
    .locals 1

    const-string v0, "key_charge_begin_time"

    invoke-static {v0, p0, p1}, Lr4/a;->q(Ljava/lang/String;J)V

    return-void
.end method

.method public static q2(I)V
    .locals 1

    const-string v0, "on_time_boot_repeat"

    invoke-static {v0, p0}, Lr4/a;->p(Ljava/lang/String;I)V

    return-void
.end method

.method public static r()I
    .locals 2

    const-string v0, "key_battery_last_drain_percent"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static r0()Z
    .locals 2

    const-string v0, "key_night_charge_protection_mode"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static r1(Z)V
    .locals 1

    const-string v0, "key_charge_full_in_night"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static r2(I)V
    .locals 1

    const-string v0, "on_time_boot_time"

    invoke-static {v0, p0}, Lr4/a;->p(Ljava/lang/String;I)V

    return-void
.end method

.method public static s()J
    .locals 3

    const-string v0, "key_battery_last_drain_time_duration"

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lr4/a;->j(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static s0()I
    .locals 2

    const-string v0, "key_night_charge_start_minutes_sd"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static s1(JLjava/lang/String;)V
    .locals 2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "key_battery_info_charge_full_time_ac"

    invoke-static {v0, p0, p1}, Lr4/a;->q(Ljava/lang/String;J)V

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v1, "4"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_1
    const-string v1, "3"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_2
    const-string v1, "2"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_3
    const-string v1, "1"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_1

    const-string p2, "key_battery_info_charge_full_time_ac_0"

    goto :goto_1

    :pswitch_4
    const-string p2, "key_battery_info_charge_full_time_ac_4"

    :goto_1
    invoke-static {p2, p0, p1}, Lr4/a;->q(Ljava/lang/String;J)V

    goto :goto_2

    :pswitch_5
    const-string p2, "key_battery_info_charge_full_time_ac_3"

    goto :goto_1

    :pswitch_6
    const-string p2, "key_battery_info_charge_full_time_ac_2"

    goto :goto_1

    :pswitch_7
    const-string p2, "key_battery_info_charge_full_time_ac_1"

    goto :goto_1

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public static s2(J)V
    .locals 1

    const-string v0, "bootTimeKey"

    invoke-static {v0, p0, p1}, Lr4/a;->q(Ljava/lang/String;J)V

    return-void
.end method

.method public static t()I
    .locals 2

    const-string v0, "key_battery_over_heat_value"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static t0()Z
    .locals 2

    const-string v0, "on_time_boot_enabled"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static t1(J)V
    .locals 1

    const-string v0, "key_battery_info_charge_full_time_usb"

    invoke-static {v0, p0, p1}, Lr4/a;->q(Ljava/lang/String;J)V

    return-void
.end method

.method public static t2(J)V
    .locals 1

    const-string v0, "saved_shutdown_time"

    invoke-static {v0, p0, p1}, Lr4/a;->q(Ljava/lang/String;J)V

    return-void
.end method

.method public static u()J
    .locals 3

    const-string v0, "key_battery_record_resettime"

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lr4/a;->j(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static u0()I
    .locals 2

    const-string v0, "on_time_boot_repeat"

    const/16 v1, 0x7f

    invoke-static {v0, v1}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static u1(JLjava/lang/String;)V
    .locals 2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "key_battery_info_charge_full_time_wireless"

    invoke-static {v0, p0, p1}, Lr4/a;->q(Ljava/lang/String;J)V

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "15"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x6

    goto :goto_0

    :sswitch_1
    const-string v1, "14"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_2
    const-string v1, "13"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_3
    const-string v1, "12"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v1, "11"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_5
    const-string v1, "10"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_6
    const-string v1, "9"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    const-string p2, "key_battery_info_charge_full_time_wireless_1"

    goto :goto_1

    :pswitch_0
    const-string p2, "key_battery_info_charge_full_time_wireless_5"

    :goto_1
    invoke-static {p2, p0, p1}, Lr4/a;->q(Ljava/lang/String;J)V

    goto :goto_2

    :pswitch_1
    const-string p2, "key_battery_info_charge_full_time_wireless_4"

    goto :goto_1

    :pswitch_2
    const-string p2, "key_battery_info_charge_full_time_wireless_3"

    goto :goto_1

    :pswitch_3
    const-string p2, "key_battery_info_charge_full_time_wireless_2"

    goto :goto_1

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x39 -> :sswitch_6
        0x61f -> :sswitch_5
        0x620 -> :sswitch_4
        0x621 -> :sswitch_3
        0x622 -> :sswitch_2
        0x623 -> :sswitch_1
        0x624 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static u2(Z)V
    .locals 1

    const-string v0, "shutdown_on_time_enabled"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static v()I
    .locals 2

    const-string v0, "pc_before_lock_screen_time"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static v0()I
    .locals 2

    const-string v0, "on_time_boot_time"

    const/16 v1, 0x1a4

    invoke-static {v0, v1}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static v1(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lr4/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static v2(I)V
    .locals 1

    const-string v0, "on_time_shutdown_repeat"

    invoke-static {v0, p0}, Lr4/a;->p(Ljava/lang/String;I)V

    return-void
.end method

.method public static w()I
    .locals 2

    const-string v0, "pc_before_brightness_percentage"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static w0()J
    .locals 3

    const-string v0, "bootTimeKey"

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lr4/a;->j(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static w1(Z)V
    .locals 1

    const-string v0, "key_close_wakeup_for_notification"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static w2(I)V
    .locals 1

    const-string v0, "on_time_shutdown_time"

    invoke-static {v0, p0}, Lr4/a;->p(Ljava/lang/String;I)V

    return-void
.end method

.method public static x()I
    .locals 2

    const-string v0, "is_smart_fps"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static x0()J
    .locals 3

    const-string v0, "saved_shutdown_time"

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lr4/a;->j(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static x1(Z)V
    .locals 1

    const-string v0, "pc_key_lpd_cloud_enable"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static x2(Z)V
    .locals 1

    const-string v0, "key_fast_charge_enabled_default"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static y()Z
    .locals 2

    const-string v0, "key_car_pad_high_temp_no_reminder"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static y0()Z
    .locals 2

    const-string v0, "shutdown_on_time_enabled"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static y1()V
    .locals 2

    const-string v0, "key_night_charge_back_device"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lr4/a;->p(Ljava/lang/String;I)V

    return-void
.end method

.method public static y2(Z)V
    .locals 1

    const-string v0, "key_fast_charge_noti_enabled"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static z()J
    .locals 3

    const-string v0, "key_charge_begin_time"

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lr4/a;->j(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static z0()I
    .locals 2

    const-string v0, "on_time_shutdown_repeat"

    const/16 v1, 0x7f

    invoke-static {v0, v1}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static z1(Z)V
    .locals 1

    const-string v0, "pc_key_ntc_cloud_enable"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static z2(Z)V
    .locals 1

    const-string v0, "key_fast_charge_power_connected"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

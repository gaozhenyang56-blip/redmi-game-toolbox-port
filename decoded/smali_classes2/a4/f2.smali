.class public La4/f2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static A(Landroid/content/Context;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "key_bluetooth_result_item"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "key_wlan_result_item"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "key_airplan_result_item"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "key_location_result_item"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "key_hotspot_result_item"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p0}, La4/f2;->F(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "key_nfc_result_item"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v2, "key_disturb_result_item"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "key_save_battery_result_item"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lme/w;->e0()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "key_network_result_item"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "key_adjust_volume_result_item"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lme/w;->e0()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "key_dial_tone_result_item"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    const-string v3, "key_mute_result_item"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p0}, Lcom/miui/powercenter/autotask/k;->a(Landroid/content/Context;)Lcom/miui/powercenter/autotask/k;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/k;->b()Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "key_touch_result_item"

    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    const-string v4, "support_dc_backlight"

    invoke-static {v4, v3}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "key_twinkle_result_item"

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    const-string v3, "key_auto_brightness_result_item"

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "key_rotate_off_result_item"

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "key_dark_result_item"

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "key_typeface_result_item"

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "key_screen_brightness_result_item"

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, La4/f2;->H()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "key_screen_display_result_item"

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    const-string v3, "key_eye_care_result_item"

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "key_lock_screen_result_item"

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "key_flashlight_result_item"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "key_switch_result_item"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "key_start_activity_result_item"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lx4/g0;->d()Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "key_absorbed_result_item"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-static {}, La4/c;->b()Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "key_drive_result_item"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    const-string v4, "key_setting_item_result_category"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "key_sound_and_vibration_result_category"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "key_screen_display_result_category"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "key_function_result_category"

    invoke-interface {v0, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static B(Ljava/lang/String;)Lcom/miui/autotask/taskitem/TaskItem;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "key_absorbed_result_item"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x2e

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "key_hotspot_condition_item"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x6

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "key_dial_tone_result_item"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x20

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "key_absorbed_condition_item"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x14

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "key_screen_display_result_item"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x2b

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "key_bluetooth_disconnect_device_condition_item"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xf

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "key_wlan_result_item"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x18

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "key_screen_brightness_result_item"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x25

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "key_wlan_disconnect_specified_condition_item"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x11

    goto/16 :goto_1

    :sswitch_9
    const-string v0, "key_battery_condition_item"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xc

    goto/16 :goto_1

    :sswitch_a
    const-string v0, "key_to_somewhere_condition_item"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto/16 :goto_1

    :sswitch_b
    const-string v0, "key_network_result_item"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x19

    goto/16 :goto_1

    :sswitch_c
    const-string v0, "key_wlan_condition_item"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x8

    goto/16 :goto_1

    :sswitch_d
    const-string v0, "key_twinkle_result_item"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x29

    goto/16 :goto_1

    :sswitch_e
    const-string v0, "key_bluetooth_condition_item"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x5

    goto/16 :goto_1

    :sswitch_f
    const-string v0, "key_touch_result_item"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x23

    goto/16 :goto_1

    :sswitch_10
    const-string v0, "key_mute_condition_item"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xd

    goto/16 :goto_1

    :sswitch_11
    const-string v0, "key_rotate_off_result_item"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x26

    goto/16 :goto_1

    :sswitch_12
    const-string v0, "key_auto_brightness_result_item"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x24

    goto/16 :goto_1

    :sswitch_13
    const-string v0, "key_result_list"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto/16 :goto_1

    :sswitch_14
    const-string v0, "key_nfc_condition_item"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x13

    goto/16 :goto_1

    :sswitch_15
    const-string v0, "key_disturb_result_item"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x1c

    goto/16 :goto_1

    :sswitch_16
    const-string v0, "key_mute_result_item"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x21

    goto/16 :goto_1

    :sswitch_17
    const-string v0, "key_lock_screen_result_item"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x2c

    goto/16 :goto_1

    :sswitch_18
    const-string v0, "key_bluetooth_result_item"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x17

    goto/16 :goto_1

    :sswitch_19
    const-string v0, "key_switch_result_item"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x2f

    goto/16 :goto_1

    :sswitch_1a
    const-string v0, "key_dark_result_item"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x28

    goto/16 :goto_1

    :sswitch_1b
    const-string v0, "key_typeface_result_item"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x2a

    goto/16 :goto_1

    :sswitch_1c
    const-string v0, "key_location_condition_item"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x9

    goto/16 :goto_1

    :sswitch_1d
    const-string v0, "key_nfc_result_item"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x1f

    goto/16 :goto_1

    :sswitch_1e
    const-string v0, "key_save_battery_result_item"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x1d

    goto/16 :goto_1

    :sswitch_1f
    const-string v0, "key_headset_condition_item"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x7

    goto/16 :goto_1

    :sswitch_20
    const-string v0, "key_airplan_result_item"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x1a

    goto/16 :goto_1

    :sswitch_21
    const-string v0, "key_condition_list"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x32

    goto/16 :goto_1

    :sswitch_22
    const-string v0, "key_leave_activity_condition_item"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xb

    goto/16 :goto_1

    :sswitch_23
    const-string v0, "key_incall_condition_item"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x16

    goto/16 :goto_1

    :sswitch_24
    const-string v0, "key_charge_condition_item"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x12

    goto/16 :goto_1

    :sswitch_25
    const-string v0, "key_start_activity_condition_item"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xa

    goto/16 :goto_1

    :sswitch_26
    const-string v0, "key_flashlight_result_item"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x2d

    goto/16 :goto_1

    :sswitch_27
    const-string v0, "key_hotspot_result_item"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x1e

    goto/16 :goto_1

    :sswitch_28
    const-string v0, "key_meeting_condition_item"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    goto/16 :goto_1

    :sswitch_29
    const-string v0, "key_custom_time_condition_item"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto/16 :goto_1

    :sswitch_2a
    const-string v0, "key_start_activity_result_item"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x31

    goto :goto_1

    :sswitch_2b
    const-string v0, "key_bluetooth_connect_device_condition_item"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xe

    goto :goto_1

    :sswitch_2c
    const-string v0, "key_eye_care_result_item"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x27

    goto :goto_1

    :sswitch_2d
    const-string v0, "key_leave_condition_item"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_1

    :sswitch_2e
    const-string v0, "key_wlan_connect_specified_condition_item"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x10

    goto :goto_1

    :sswitch_2f
    const-string v0, "key_drive_result_item"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x30

    goto :goto_1

    :sswitch_30
    const-string v0, "key_location_result_item"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x1b

    goto :goto_1

    :sswitch_31
    const-string v0, "key_lock_screen_condition_item"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x15

    goto :goto_1

    :sswitch_32
    const-string v0, "key_adjust_volume_result_item"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x22

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, -0x1

    :goto_1
    packed-switch p0, :pswitch_data_0

    new-instance p0, Lcom/miui/autotask/taskitem/DefaultConditionItem;

    invoke-direct {p0}, Lcom/miui/autotask/taskitem/DefaultConditionItem;-><init>()V

    goto/16 :goto_2

    :pswitch_0
    new-instance p0, Lcom/miui/autotask/taskitem/StartActivityResultItem;

    invoke-direct {p0}, Lcom/miui/autotask/taskitem/StartActivityResultItem;-><init>()V

    goto/16 :goto_2

    :pswitch_1
    new-instance p0, Lcom/miui/autotask/taskitem/DriveResultItem;

    invoke-direct {p0}, Lcom/miui/autotask/taskitem/DriveResultItem;-><init>()V

    goto/16 :goto_2

    :pswitch_2
    new-instance p0, Lcom/miui/autotask/taskitem/SwitchResultItem;

    invoke-direct {p0}, Lcom/miui/autotask/taskitem/SwitchResultItem;-><init>()V

    goto/16 :goto_2

    :pswitch_3
    new-instance p0, Lcom/miui/autotask/taskitem/AbsorbedResultItem;

    invoke-direct {p0}, Lcom/miui/autotask/taskitem/AbsorbedResultItem;-><init>()V

    goto/16 :goto_2

    :pswitch_4
    new-instance p0, Lcom/miui/autotask/taskitem/FlashlightResultItem;

    invoke-direct {p0}, Lcom/miui/autotask/taskitem/FlashlightResultItem;-><init>()V

    goto/16 :goto_2

    :pswitch_5
    new-instance p0, Lcom/miui/autotask/taskitem/LockScreenResultItem;

    invoke-direct {p0}, Lcom/miui/autotask/taskitem/LockScreenResultItem;-><init>()V

    goto/16 :goto_2

    :pswitch_6
    new-instance p0, Lcom/miui/autotask/taskitem/ScreenDisplayResultItem;

    invoke-direct {p0}, Lcom/miui/autotask/taskitem/ScreenDisplayResultItem;-><init>()V

    goto/16 :goto_2

    :pswitch_7
    new-instance p0, Lcom/miui/autotask/taskitem/TypefaceResultItem;

    invoke-direct {p0}, Lcom/miui/autotask/taskitem/TypefaceResultItem;-><init>()V

    goto/16 :goto_2

    :pswitch_8
    new-instance p0, Lcom/miui/autotask/taskitem/TwinkleResultItem;

    invoke-direct {p0}, Lcom/miui/autotask/taskitem/TwinkleResultItem;-><init>()V

    goto/16 :goto_2

    :pswitch_9
    new-instance p0, Lcom/miui/autotask/taskitem/DarkResultItem;

    invoke-direct {p0}, Lcom/miui/autotask/taskitem/DarkResultItem;-><init>()V

    goto/16 :goto_2

    :pswitch_a
    new-instance p0, Lcom/miui/autotask/taskitem/EyeCareResultItem;

    invoke-direct {p0}, Lcom/miui/autotask/taskitem/EyeCareResultItem;-><init>()V

    goto/16 :goto_2

    :pswitch_b
    new-instance p0, Lcom/miui/autotask/taskitem/RotateOffResultItem;

    invoke-direct {p0}, Lcom/miui/autotask/taskitem/RotateOffResultItem;-><init>()V

    goto/16 :goto_2

    :pswitch_c
    new-instance p0, Lcom/miui/autotask/taskitem/ScreenBrightnessResultItem;

    invoke-direct {p0}, Lcom/miui/autotask/taskitem/ScreenBrightnessResultItem;-><init>()V

    goto/16 :goto_2

    :pswitch_d
    new-instance p0, Lcom/miui/autotask/taskitem/AutoBrightnessResultItem;

    invoke-direct {p0}, Lcom/miui/autotask/taskitem/AutoBrightnessResultItem;-><init>()V

    goto/16 :goto_2

    :pswitch_e
    new-instance p0, Lcom/miui/autotask/taskitem/TouchResultItem;

    invoke-direct {p0}, Lcom/miui/autotask/taskitem/TouchResultItem;-><init>()V

    goto/16 :goto_2

    :pswitch_f
    new-instance p0, Lcom/miui/autotask/taskitem/AdjustVolumeResultItem;

    invoke-direct {p0}, Lcom/miui/autotask/taskitem/AdjustVolumeResultItem;-><init>()V

    goto/16 :goto_2

    :pswitch_10
    new-instance p0, Lcom/miui/autotask/taskitem/MuteResultItem;

    invoke-direct {p0}, Lcom/miui/autotask/taskitem/MuteResultItem;-><init>()V

    goto/16 :goto_2

    :pswitch_11
    new-instance p0, Lcom/miui/autotask/taskitem/DialToneResultItem;

    invoke-direct {p0}, Lcom/miui/autotask/taskitem/DialToneResultItem;-><init>()V

    goto/16 :goto_2

    :pswitch_12
    new-instance p0, Lcom/miui/autotask/taskitem/NfcResultItem;

    invoke-direct {p0}, Lcom/miui/autotask/taskitem/NfcResultItem;-><init>()V

    goto/16 :goto_2

    :pswitch_13
    new-instance p0, Lcom/miui/autotask/taskitem/HotspotResultItem;

    invoke-direct {p0}, Lcom/miui/autotask/taskitem/HotspotResultItem;-><init>()V

    goto/16 :goto_2

    :pswitch_14
    new-instance p0, Lcom/miui/autotask/taskitem/SaveBatteryResultItem;

    invoke-direct {p0}, Lcom/miui/autotask/taskitem/SaveBatteryResultItem;-><init>()V

    goto/16 :goto_2

    :pswitch_15
    new-instance p0, Lcom/miui/autotask/taskitem/DisturbResultItem;

    invoke-direct {p0}, Lcom/miui/autotask/taskitem/DisturbResultItem;-><init>()V

    goto/16 :goto_2

    :pswitch_16
    new-instance p0, Lcom/miui/autotask/taskitem/LocationResultItem;

    invoke-direct {p0}, Lcom/miui/autotask/taskitem/LocationResultItem;-><init>()V

    goto/16 :goto_2

    :pswitch_17
    new-instance p0, Lcom/miui/autotask/taskitem/AirplaneResultItem;

    invoke-direct {p0}, Lcom/miui/autotask/taskitem/AirplaneResultItem;-><init>()V

    goto/16 :goto_2

    :pswitch_18
    new-instance p0, Lcom/miui/autotask/taskitem/NetworkResultItem;

    invoke-direct {p0}, Lcom/miui/autotask/taskitem/NetworkResultItem;-><init>()V

    goto/16 :goto_2

    :pswitch_19
    new-instance p0, Lcom/miui/autotask/taskitem/WlanResultItem;

    invoke-direct {p0}, Lcom/miui/autotask/taskitem/WlanResultItem;-><init>()V

    goto/16 :goto_2

    :pswitch_1a
    new-instance p0, Lcom/miui/autotask/taskitem/BluetoothResultItem;

    invoke-direct {p0}, Lcom/miui/autotask/taskitem/BluetoothResultItem;-><init>()V

    goto/16 :goto_2

    :pswitch_1b
    new-instance p0, Lcom/miui/autotask/taskitem/InCallConditionItem;

    invoke-direct {p0}, Lcom/miui/autotask/taskitem/InCallConditionItem;-><init>()V

    goto/16 :goto_2

    :pswitch_1c
    new-instance p0, Lcom/miui/autotask/taskitem/LockScreenConditionItem;

    invoke-direct {p0}, Lcom/miui/autotask/taskitem/LockScreenConditionItem;-><init>()V

    goto/16 :goto_2

    :pswitch_1d
    new-instance p0, Lcom/miui/autotask/taskitem/AbsorbedConditionItem;

    invoke-direct {p0}, Lcom/miui/autotask/taskitem/AbsorbedConditionItem;-><init>()V

    goto/16 :goto_2

    :pswitch_1e
    new-instance p0, Lcom/miui/autotask/taskitem/NfcConditionItem;

    invoke-direct {p0}, Lcom/miui/autotask/taskitem/NfcConditionItem;-><init>()V

    goto/16 :goto_2

    :pswitch_1f
    new-instance p0, Lcom/miui/autotask/taskitem/ChargeConditionItem;

    invoke-direct {p0}, Lcom/miui/autotask/taskitem/ChargeConditionItem;-><init>()V

    goto/16 :goto_2

    :pswitch_20
    new-instance p0, Lcom/miui/autotask/taskitem/WlanDisconnectSpecifiedConditionItem;

    invoke-direct {p0}, Lcom/miui/autotask/taskitem/WlanDisconnectSpecifiedConditionItem;-><init>()V

    goto/16 :goto_2

    :pswitch_21
    new-instance p0, Lcom/miui/autotask/taskitem/WlanConnectSpecifiedConditionItem;

    invoke-direct {p0}, Lcom/miui/autotask/taskitem/WlanConnectSpecifiedConditionItem;-><init>()V

    goto/16 :goto_2

    :pswitch_22
    new-instance p0, Lcom/miui/autotask/taskitem/BluetoothDisconnectDeviceConditionItem;

    invoke-direct {p0}, Lcom/miui/autotask/taskitem/BluetoothDisconnectDeviceConditionItem;-><init>()V

    goto :goto_2

    :pswitch_23
    new-instance p0, Lcom/miui/autotask/taskitem/BluetoothConnectDeviceConditionItem;

    invoke-direct {p0}, Lcom/miui/autotask/taskitem/BluetoothConnectDeviceConditionItem;-><init>()V

    goto :goto_2

    :pswitch_24
    new-instance p0, Lcom/miui/autotask/taskitem/MuteConditionItem;

    invoke-direct {p0}, Lcom/miui/autotask/taskitem/MuteConditionItem;-><init>()V

    goto :goto_2

    :pswitch_25
    new-instance p0, Lcom/miui/autotask/taskitem/BatteryConditionItem;

    invoke-direct {p0}, Lcom/miui/autotask/taskitem/BatteryConditionItem;-><init>()V

    goto :goto_2

    :pswitch_26
    new-instance p0, Lcom/miui/autotask/taskitem/LeaveAppConditionItem;

    invoke-direct {p0}, Lcom/miui/autotask/taskitem/LeaveAppConditionItem;-><init>()V

    goto :goto_2

    :pswitch_27
    new-instance p0, Lcom/miui/autotask/taskitem/StartActivityConditionItem;

    invoke-direct {p0}, Lcom/miui/autotask/taskitem/StartActivityConditionItem;-><init>()V

    goto :goto_2

    :pswitch_28
    new-instance p0, Lcom/miui/autotask/taskitem/LocationConditionItem;

    invoke-direct {p0}, Lcom/miui/autotask/taskitem/LocationConditionItem;-><init>()V

    goto :goto_2

    :pswitch_29
    new-instance p0, Lcom/miui/autotask/taskitem/WlanConditionItem;

    invoke-direct {p0}, Lcom/miui/autotask/taskitem/WlanConditionItem;-><init>()V

    goto :goto_2

    :pswitch_2a
    new-instance p0, Lcom/miui/autotask/taskitem/HeadsetConditionItem;

    invoke-direct {p0}, Lcom/miui/autotask/taskitem/HeadsetConditionItem;-><init>()V

    goto :goto_2

    :pswitch_2b
    new-instance p0, Lcom/miui/autotask/taskitem/HotspotConditionItem;

    invoke-direct {p0}, Lcom/miui/autotask/taskitem/HotspotConditionItem;-><init>()V

    goto :goto_2

    :pswitch_2c
    new-instance p0, Lcom/miui/autotask/taskitem/BluetoothConditionItem;

    invoke-direct {p0}, Lcom/miui/autotask/taskitem/BluetoothConditionItem;-><init>()V

    goto :goto_2

    :pswitch_2d
    new-instance p0, Lcom/miui/autotask/taskitem/MeetingConditionItem;

    invoke-direct {p0}, Lcom/miui/autotask/taskitem/MeetingConditionItem;-><init>()V

    goto :goto_2

    :pswitch_2e
    new-instance p0, Lcom/miui/autotask/taskitem/LeaveConditionItem;

    invoke-direct {p0}, Lcom/miui/autotask/taskitem/LeaveConditionItem;-><init>()V

    goto :goto_2

    :pswitch_2f
    new-instance p0, Lcom/miui/autotask/taskitem/ToSomewhereConditionItem;

    invoke-direct {p0}, Lcom/miui/autotask/taskitem/ToSomewhereConditionItem;-><init>()V

    goto :goto_2

    :pswitch_30
    new-instance p0, Lcom/miui/autotask/taskitem/CustomTimeConditionItem;

    invoke-direct {p0}, Lcom/miui/autotask/taskitem/CustomTimeConditionItem;-><init>()V

    goto :goto_2

    :pswitch_31
    new-instance p0, Lcom/miui/autotask/taskitem/DefaultResultItem;

    invoke-direct {p0}, Lcom/miui/autotask/taskitem/DefaultResultItem;-><init>()V

    :goto_2
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x779afee0 -> :sswitch_32
        -0x774d5e4a -> :sswitch_31
        -0x726e75b5 -> :sswitch_30
        -0x706dc320 -> :sswitch_2f
        -0x66c04728 -> :sswitch_2e
        -0x5e12c7e1 -> :sswitch_2d
        -0x5df0640b -> :sswitch_2c
        -0x5a2c5486 -> :sswitch_2b
        -0x5857f99e -> :sswitch_2a
        -0x4fef2c85 -> :sswitch_29
        -0x4efeb3e5 -> :sswitch_28
        -0x49c3855b -> :sswitch_27
        -0x3ce4f3c4 -> :sswitch_26
        -0x3586c3d6 -> :sswitch_25
        -0x32b1f53e -> :sswitch_24
        -0x2d5e076d -> :sswitch_23
        -0x2a64a881 -> :sswitch_22
        -0x24f0a4de -> :sswitch_21
        -0x2381aab7 -> :sswitch_20
        -0x1ca6830c -> :sswitch_1f
        -0x14bf6d1f -> :sswitch_1e
        -0x1499d47f -> :sswitch_1d
        -0x14193c5f -> :sswitch_1c
        -0xc7e1fd3 -> :sswitch_1b
        -0x99bcf74 -> :sswitch_1a
        0x199534a -> :sswitch_19
        0xb19c004 -> :sswitch_18
        0xb676c56 -> :sswitch_17
        0x1652b6af -> :sswitch_16
        0x16bba1d5 -> :sswitch_15
        0x16db0eab -> :sswitch_14
        0x220991a0 -> :sswitch_13
        0x23dbc1b7 -> :sswitch_12
        0x24a6f621 -> :sswitch_11
        0x33b38cbd -> :sswitch_10
        0x33d69b15 -> :sswitch_f
        0x39ca8748 -> :sswitch_e
        0x3f126f92 -> :sswitch_d
        0x44bfbdf4 -> :sswitch_c
        0x49f21f84 -> :sswitch_b
        0x4b717467 -> :sswitch_a
        0x55fb8a09 -> :sswitch_9
        0x5991f64c -> :sswitch_8
        0x5a1b125a -> :sswitch_7
        0x5c73e8d8 -> :sswitch_6
        0x614f3aae -> :sswitch_5
        0x669ecf85 -> :sswitch_4
        0x69bc7bea -> :sswitch_3
        0x6f4205b7 -> :sswitch_2
        0x783ebd07 -> :sswitch_1
        0x7e72dea2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
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

.method public static C(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, La4/f2;->D(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static D(Ljava/lang/String;Z)Z
    .locals 1

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p0, p1}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static E(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/autotask/bean/r;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    new-instance v1, Lcom/miui/autotask/bean/r;

    invoke-direct {v1}, Lcom/miui/autotask/bean/r;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/autotask/bean/r;->H(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/miui/autotask/bean/r;->B(Z)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f120081

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/miui/autotask/bean/r;->G(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/miui/autotask/bean/r;->x(Z)V

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Lcom/miui/autotask/bean/r;->C(I)V

    invoke-virtual {v1, p0}, Lcom/miui/autotask/bean/r;->D(Ljava/lang/String;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lcom/miui/autotask/taskitem/CustomTimeConditionItem;

    invoke-direct {v4}, Lcom/miui/autotask/taskitem/CustomTimeConditionItem;-><init>()V

    invoke-virtual {v4, v2}, Lcom/miui/autotask/taskitem/TaskItem;->u(Ljava/lang/String;)V

    new-instance v5, Lcom/miui/powercenter/bootshutdown/DaysOfWeek;

    const/16 v6, 0x7f

    invoke-direct {v5, v6}, Lcom/miui/powercenter/bootshutdown/DaysOfWeek;-><init>(I)V

    invoke-virtual {v4, v5}, Lcom/miui/autotask/taskitem/CustomTimeConditionItem;->E(Lcom/miui/powercenter/bootshutdown/DaysOfWeek;)V

    const/16 v5, 0x2d0

    invoke-virtual {v4, v5}, Lcom/miui/autotask/taskitem/CustomTimeConditionItem;->F(I)V

    const/16 v5, 0x348

    invoke-virtual {v4, v5}, Lcom/miui/autotask/taskitem/CustomTimeConditionItem;->C(I)V

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/miui/autotask/taskitem/CustomTimeConditionItem;->G(I)V

    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/miui/autotask/taskitem/DisturbResultItem;

    invoke-direct {v4}, Lcom/miui/autotask/taskitem/DisturbResultItem;-><init>()V

    invoke-virtual {v4, v2}, Lcom/miui/autotask/taskitem/TaskItem;->u(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, p0}, Lcom/miui/autotask/bean/r;->v(Ljava/util/List;)V

    invoke-virtual {v1, v0}, Lcom/miui/autotask/bean/r;->u(Ljava/util/List;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method private static F(Landroid/content/Context;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.nfc"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static G(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "_condition_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static H()Z
    .locals 3

    const-string v0, "ro.vendor.display.type"

    const-string v1, "lcd"

    invoke-static {v0, v1}, Lx4/v1;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "oled"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ro.display.type"

    invoke-static {v0, v1}, Lx4/v1;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method private static I()Z
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.miui.securityadd"

    const-string v3, "com.miui.auto_task.MapSelectActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSecurityAddSupport : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "auto_task_tag"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private static J(Ljava/lang/String;)Ljava/util/List;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const-string v2, "key_bluetooth_disconnect_device_condition_item"

    const-string v3, "key_wlan_disconnect_specified_condition_item"

    const-string v4, "key_to_somewhere_condition_item"

    const-string v5, "key_mute_condition_item"

    const-string v6, "key_disturb_result_item"

    const-string v7, "key_mute_result_item"

    const-string v8, "key_lock_screen_result_item"

    const-string v9, "key_location_condition_item"

    const-string v10, "key_leave_activity_condition_item"

    const-string v11, "key_start_activity_condition_item"

    const-string v12, "key_hotspot_result_item"

    const-string v13, "key_start_activity_result_item"

    const-string v14, "key_bluetooth_connect_device_condition_item"

    const-string v15, "key_leave_condition_item"

    move-object/from16 v16, v15

    const-string v15, "key_wlan_connect_specified_condition_item"

    move-object/from16 v17, v15

    const-string v15, "key_location_result_item"

    move-object/from16 v18, v15

    const-string v15, "key_lock_screen_condition_item"

    move-object/from16 v19, v15

    const-string v15, "key_wlan_result_item"

    move-object/from16 v20, v14

    const-string v14, "key_wlan_condition_item"

    move-object/from16 v21, v13

    const-string v13, "key_bluetooth_condition_item"

    move-object/from16 v22, v12

    const-string v12, "key_bluetooth_result_item"

    move-object/from16 v23, v11

    const-string v11, "key_airplan_result_item"

    const/16 v24, -0x1

    sparse-switch v1, :sswitch_data_0

    :goto_0
    move-object/from16 v1, v23

    :goto_1
    move-object/from16 v23, v8

    move-object/from16 v8, v22

    :goto_2
    move-object/from16 v22, v9

    move-object/from16 v9, v21

    :goto_3
    move-object/from16 v21, v3

    move-object/from16 v3, v20

    :goto_4
    move-object/from16 v20, v4

    :goto_5
    move-object/from16 v4, v19

    goto/16 :goto_9

    :sswitch_0
    const-string v1, "key_absorbed_result_item"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v24, 0x18

    goto :goto_0

    :sswitch_1
    const-string v1, "key_hotspot_condition_item"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v24, 0x17

    goto :goto_0

    :sswitch_2
    const-string v1, "key_absorbed_condition_item"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/16 v24, 0x16

    goto :goto_0

    :sswitch_3
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/16 v24, 0x15

    goto :goto_0

    :sswitch_4
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/16 v24, 0x14

    goto :goto_0

    :sswitch_5
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/16 v24, 0x13

    goto :goto_0

    :sswitch_6
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/16 v24, 0x12

    goto :goto_0

    :sswitch_7
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/16 v24, 0x11

    goto :goto_0

    :sswitch_8
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/16 v24, 0x10

    goto :goto_0

    :sswitch_9
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    const/16 v24, 0xf

    goto :goto_0

    :sswitch_a
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v24, 0xe

    goto/16 :goto_0

    :sswitch_b
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v24, 0xd

    goto/16 :goto_0

    :sswitch_c
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v24, 0xc

    goto/16 :goto_0

    :sswitch_d
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v24, 0xb

    goto/16 :goto_0

    :sswitch_e
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v24, 0xa

    goto/16 :goto_0

    :sswitch_f
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v24, 0x9

    goto/16 :goto_0

    :sswitch_10
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v24, 0x8

    goto/16 :goto_0

    :sswitch_11
    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto/16 :goto_1

    :cond_11
    const/16 v24, 0x7

    goto/16 :goto_1

    :sswitch_12
    move-object/from16 v1, v23

    move-object/from16 v23, v8

    move-object/from16 v8, v22

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto/16 :goto_2

    :cond_12
    const/16 v24, 0x6

    goto/16 :goto_2

    :sswitch_13
    move-object/from16 v1, v23

    move-object/from16 v23, v8

    move-object/from16 v8, v22

    move-object/from16 v22, v9

    move-object/from16 v9, v21

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto/16 :goto_3

    :cond_13
    const/16 v24, 0x5

    goto/16 :goto_3

    :sswitch_14
    move-object/from16 v1, v23

    move-object/from16 v23, v8

    move-object/from16 v8, v22

    move-object/from16 v22, v9

    move-object/from16 v9, v21

    move-object/from16 v21, v3

    move-object/from16 v3, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto/16 :goto_4

    :cond_14
    const/16 v24, 0x4

    goto/16 :goto_4

    :sswitch_15
    move-object/from16 v1, v23

    move-object/from16 v23, v8

    move-object/from16 v8, v22

    move-object/from16 v22, v9

    move-object/from16 v9, v21

    move-object/from16 v21, v3

    move-object/from16 v3, v20

    move-object/from16 v20, v4

    move-object/from16 v4, v16

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_6

    :cond_15
    const/16 v24, 0x3

    :goto_6
    move-object/from16 v16, v4

    goto/16 :goto_5

    :sswitch_16
    move-object/from16 v1, v23

    move-object/from16 v23, v8

    move-object/from16 v8, v22

    move-object/from16 v22, v9

    move-object/from16 v9, v21

    move-object/from16 v21, v3

    move-object/from16 v3, v20

    move-object/from16 v20, v4

    move-object/from16 v4, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_7

    :cond_16
    const/16 v24, 0x2

    :goto_7
    move-object/from16 v17, v4

    goto/16 :goto_5

    :sswitch_17
    move-object/from16 v1, v23

    move-object/from16 v23, v8

    move-object/from16 v8, v22

    move-object/from16 v22, v9

    move-object/from16 v9, v21

    move-object/from16 v21, v3

    move-object/from16 v3, v20

    move-object/from16 v20, v4

    move-object/from16 v4, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_8

    :cond_17
    const/16 v24, 0x1

    :goto_8
    move-object/from16 v18, v4

    goto/16 :goto_5

    :sswitch_18
    move-object/from16 v1, v23

    move-object/from16 v23, v8

    move-object/from16 v8, v22

    move-object/from16 v22, v9

    move-object/from16 v9, v21

    move-object/from16 v21, v3

    move-object/from16 v3, v20

    move-object/from16 v20, v4

    move-object/from16 v4, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_9

    :cond_18
    const/16 v24, 0x0

    :goto_9
    packed-switch v24, :pswitch_data_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :pswitch_0
    const-string v0, "key_absorbed_condition_item"

    const-string v1, "key_absorbed_result_item"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :pswitch_1
    filled-new-array {v15, v14, v11}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :pswitch_2
    filled-new-array {v5, v7, v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :pswitch_3
    filled-new-array {v13, v12, v11}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :pswitch_4
    filled-new-array {v15, v14, v13, v12}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :pswitch_5
    const-string v0, "key_hotspot_condition_item"

    filled-new-array {v0, v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :pswitch_6
    filled-new-array {v10, v1, v9}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :pswitch_7
    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :pswitch_8
    move-object/from16 v1, v16

    move-object/from16 v0, v20

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :pswitch_9
    move-object/from16 v1, v17

    move-object/from16 v0, v21

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :pswitch_a
    move-object/from16 v1, v18

    move-object/from16 v0, v22

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :pswitch_b
    move-object/from16 v0, v23

    filled-new-array {v4, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x774d5e4a -> :sswitch_18
        -0x726e75b5 -> :sswitch_17
        -0x66c04728 -> :sswitch_16
        -0x5e12c7e1 -> :sswitch_15
        -0x5a2c5486 -> :sswitch_14
        -0x5857f99e -> :sswitch_13
        -0x49c3855b -> :sswitch_12
        -0x3586c3d6 -> :sswitch_11
        -0x2a64a881 -> :sswitch_10
        -0x2381aab7 -> :sswitch_f
        -0x14193c5f -> :sswitch_e
        0xb19c004 -> :sswitch_d
        0xb676c56 -> :sswitch_c
        0x1652b6af -> :sswitch_b
        0x16bba1d5 -> :sswitch_a
        0x33b38cbd -> :sswitch_9
        0x39ca8748 -> :sswitch_8
        0x44bfbdf4 -> :sswitch_7
        0x4b717467 -> :sswitch_6
        0x5991f64c -> :sswitch_5
        0x5c73e8d8 -> :sswitch_4
        0x614f3aae -> :sswitch_3
        0x69bc7bea -> :sswitch_2
        0x783ebd07 -> :sswitch_1
        0x7e72dea2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_b
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_8
        :pswitch_9
        :pswitch_1
        :pswitch_7
        :pswitch_0
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method

.method public static K(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, La4/f2;->J(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method public static L(Ljava/lang/String;Z)Z
    .locals 1

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p0, p1}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static M(Lcom/miui/autotask/bean/r;)V
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-virtual {p0}, Lcom/miui/autotask/bean/r;->b()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    invoke-virtual {p0}, Lcom/miui/autotask/bean/r;->b()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/autotask/taskitem/TaskItem;

    invoke-virtual {v4}, Lcom/miui/autotask/taskitem/TaskItem;->e()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, La4/f2;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v4}, Lcom/miui/analytics/AnalyticsUtil;->trackEvent(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "condition"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v3, v2

    :goto_1
    invoke-virtual {p0}, Lcom/miui/autotask/bean/r;->a()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-virtual {p0}, Lcom/miui/autotask/bean/r;->a()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/autotask/taskitem/TaskItem;

    invoke-virtual {v4}, Lcom/miui/autotask/taskitem/TaskItem;->e()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, La4/f2;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v4}, Lcom/miui/analytics/AnalyticsUtil;->trackEvent(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "action"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/miui/autotask/bean/r;->q()Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    invoke-virtual {p0}, Lcom/miui/autotask/bean/r;->e()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-virtual {p0}, Lcom/miui/autotask/bean/r;->e()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/autotask/taskitem/TaskItem;

    invoke-virtual {v3}, Lcom/miui/autotask/taskitem/TaskItem;->k()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {p0}, Lcom/miui/autotask/bean/r;->e()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/autotask/taskitem/TaskItem;

    invoke-virtual {v3}, Lcom/miui/autotask/taskitem/TaskItem;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, La4/f2;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Lcom/miui/analytics/AnalyticsUtil;->trackEvent(Ljava/lang/String;)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_4

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "exit_condition"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const-string p0, "key_task_map"

    invoke-static {p0, v0}, Lcom/miui/analytics/AnalyticsUtil;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static a(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 v1, 0x7

    if-eq p0, v1, :cond_1

    const/4 v1, 0x6

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static b(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x5

    if-eq p0, v1, :cond_1

    const/4 v1, 0x6

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static c(I)Z
    .locals 1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static d(Lcom/miui/powercenter/autotask/AutoTask;)Lcom/miui/autotask/bean/r;
    .locals 14

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    new-instance v1, Lcom/miui/autotask/bean/r;

    invoke-direct {v1}, Lcom/miui/autotask/bean/r;-><init>()V

    invoke-static {v0, p0}, Lcom/miui/powercenter/autotask/r;->b(Landroid/content/Context;Lcom/miui/powercenter/autotask/AutoTask;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/miui/autotask/bean/r;->G(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/AutoTask;->getEnabled()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/miui/autotask/bean/r;->x(Z)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/miui/autotask/bean/r;->H(Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/AutoTask;->getConditionNames()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, -0x1

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v11, "battery_level_up"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    goto :goto_1

    :cond_0
    move v6, v7

    goto :goto_1

    :sswitch_1
    const-string v11, "hour_minute_duration"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    goto :goto_1

    :cond_1
    move v6, v8

    goto :goto_1

    :sswitch_2
    const-string v11, "battery_level_down"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    goto :goto_1

    :cond_2
    move v6, v10

    goto :goto_1

    :sswitch_3
    const-string v11, "hour_minute"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    goto :goto_1

    :cond_3
    move v6, v9

    :goto_1
    const/16 v11, 0x3c

    const/16 v12, 0x582

    const/16 v13, 0x1e

    packed-switch v6, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance v6, Lcom/miui/autotask/taskitem/BatteryConditionItem;

    invoke-direct {v6}, Lcom/miui/autotask/taskitem/BatteryConditionItem;-><init>()V

    new-array v7, v7, [I

    invoke-virtual {p0, v5}, Lcom/miui/powercenter/autotask/AutoTask;->getCondition(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    aput v10, v7, v9

    aput v13, v7, v10

    if-nez v5, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v11

    :goto_2
    aput v11, v7, v8

    invoke-virtual {v6, v7}, Lcom/miui/autotask/taskitem/BatteryConditionItem;->w([I)V

    goto :goto_4

    :pswitch_1
    new-instance v6, Lcom/miui/autotask/taskitem/CustomTimeConditionItem;

    invoke-direct {v6}, Lcom/miui/autotask/taskitem/CustomTimeConditionItem;-><init>()V

    invoke-virtual {p0, v5}, Lcom/miui/powercenter/autotask/AutoTask;->getCondition(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    shr-int/lit8 v7, v5, 0x10

    const v9, 0xffff

    and-int/2addr v5, v9

    invoke-virtual {v6, v12}, Lcom/miui/autotask/taskitem/CustomTimeConditionItem;->D(I)V

    invoke-virtual {v6, v7}, Lcom/miui/autotask/taskitem/CustomTimeConditionItem;->F(I)V

    invoke-virtual {v6, v5}, Lcom/miui/autotask/taskitem/CustomTimeConditionItem;->C(I)V

    new-instance v5, Lcom/miui/powercenter/bootshutdown/DaysOfWeek;

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/AutoTask;->getRepeatType()I

    move-result v7

    invoke-direct {v5, v7}, Lcom/miui/powercenter/bootshutdown/DaysOfWeek;-><init>(I)V

    invoke-virtual {v6, v5}, Lcom/miui/autotask/taskitem/CustomTimeConditionItem;->E(Lcom/miui/powercenter/bootshutdown/DaysOfWeek;)V

    invoke-virtual {v6, v8}, Lcom/miui/autotask/taskitem/CustomTimeConditionItem;->G(I)V

    goto :goto_4

    :pswitch_2
    new-instance v6, Lcom/miui/autotask/taskitem/BatteryConditionItem;

    invoke-direct {v6}, Lcom/miui/autotask/taskitem/BatteryConditionItem;-><init>()V

    new-array v7, v7, [I

    invoke-virtual {p0, v5}, Lcom/miui/powercenter/autotask/AutoTask;->getCondition(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-nez v5, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v13

    :goto_3
    aput v13, v7, v10

    aput v11, v7, v8

    invoke-virtual {v6, v7}, Lcom/miui/autotask/taskitem/BatteryConditionItem;->w([I)V

    goto :goto_4

    :pswitch_3
    new-instance v6, Lcom/miui/autotask/taskitem/CustomTimeConditionItem;

    invoke-direct {v6}, Lcom/miui/autotask/taskitem/CustomTimeConditionItem;-><init>()V

    invoke-virtual {p0, v5}, Lcom/miui/powercenter/autotask/AutoTask;->getCondition(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v6, v5}, Lcom/miui/autotask/taskitem/CustomTimeConditionItem;->D(I)V

    invoke-virtual {v6, v12}, Lcom/miui/autotask/taskitem/CustomTimeConditionItem;->F(I)V

    const/16 v5, 0x1a4

    invoke-virtual {v6, v5}, Lcom/miui/autotask/taskitem/CustomTimeConditionItem;->C(I)V

    new-instance v5, Lcom/miui/powercenter/bootshutdown/DaysOfWeek;

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/AutoTask;->getRepeatType()I

    move-result v7

    invoke-direct {v5, v7}, Lcom/miui/powercenter/bootshutdown/DaysOfWeek;-><init>(I)V

    invoke-virtual {v6, v5}, Lcom/miui/autotask/taskitem/CustomTimeConditionItem;->E(Lcom/miui/powercenter/bootshutdown/DaysOfWeek;)V

    invoke-virtual {v6, v10}, Lcom/miui/autotask/taskitem/CustomTimeConditionItem;->G(I)V

    :goto_4
    invoke-virtual {v6, v0}, Lcom/miui/autotask/taskitem/TaskItem;->u(Ljava/lang/String;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/AutoTask;->getOperationNames()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_1

    goto/16 :goto_6

    :sswitch_4
    const-string v11, "bluetooth"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    const/4 v11, 0x4

    goto/16 :goto_7

    :sswitch_5
    const-string v11, "synchronization"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    const/16 v11, 0xb

    goto/16 :goto_7

    :sswitch_6
    const-string v11, "auto_clean_memory"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    const/16 v11, 0xc

    goto/16 :goto_7

    :sswitch_7
    const-string v11, "brightness"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    move v11, v10

    goto/16 :goto_7

    :sswitch_8
    const-string v11, "internet"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    move v11, v7

    goto :goto_7

    :sswitch_9
    const-string v11, "auto_brightness"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    move v11, v9

    goto :goto_7

    :sswitch_a
    const-string v11, "airplane_mode"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    const/4 v11, 0x6

    goto :goto_7

    :sswitch_b
    const-string v11, "save_mode"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    const/16 v11, 0x9

    goto :goto_7

    :sswitch_c
    const-string v11, "sleep"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    const/16 v11, 0x8

    goto :goto_7

    :sswitch_d
    const-string v11, "wifi"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    move v11, v8

    goto :goto_7

    :sswitch_e
    const-string v11, "mute"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    const/4 v11, 0x7

    goto :goto_7

    :sswitch_f
    const-string v11, "gps"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    const/4 v11, 0x5

    goto :goto_7

    :sswitch_10
    const-string v11, "vibration"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    const/16 v11, 0xa

    goto :goto_7

    :cond_7
    :goto_6
    move v11, v6

    :goto_7
    packed-switch v11, :pswitch_data_1

    goto/16 :goto_5

    :pswitch_4
    new-instance v11, Lcom/miui/autotask/taskitem/MuteResultItem;

    invoke-direct {v11}, Lcom/miui/autotask/taskitem/MuteResultItem;-><init>()V

    invoke-virtual {p0, v5}, Lcom/miui/powercenter/autotask/AutoTask;->getOperation(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-nez v5, :cond_8

    goto/16 :goto_5

    :cond_8
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v10, :cond_10

    goto/16 :goto_8

    :pswitch_5
    new-instance v11, Lcom/miui/autotask/taskitem/AirplaneResultItem;

    invoke-direct {v11}, Lcom/miui/autotask/taskitem/AirplaneResultItem;-><init>()V

    invoke-virtual {p0, v5}, Lcom/miui/powercenter/autotask/AutoTask;->getOperation(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-nez v5, :cond_9

    goto/16 :goto_5

    :cond_9
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v10, :cond_10

    goto/16 :goto_8

    :pswitch_6
    new-instance v11, Lcom/miui/autotask/taskitem/LocationResultItem;

    invoke-direct {v11}, Lcom/miui/autotask/taskitem/LocationResultItem;-><init>()V

    invoke-virtual {p0, v5}, Lcom/miui/powercenter/autotask/AutoTask;->getOperation(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-nez v5, :cond_a

    goto/16 :goto_5

    :cond_a
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v7, :cond_10

    goto/16 :goto_8

    :pswitch_7
    new-instance v11, Lcom/miui/autotask/taskitem/BluetoothResultItem;

    invoke-direct {v11}, Lcom/miui/autotask/taskitem/BluetoothResultItem;-><init>()V

    invoke-virtual {p0, v5}, Lcom/miui/powercenter/autotask/AutoTask;->getOperation(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-nez v5, :cond_b

    goto/16 :goto_5

    :cond_b
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v10, :cond_10

    goto :goto_8

    :pswitch_8
    new-instance v11, Lcom/miui/autotask/taskitem/NetworkResultItem;

    invoke-direct {v11}, Lcom/miui/autotask/taskitem/NetworkResultItem;-><init>()V

    invoke-virtual {p0, v5}, Lcom/miui/powercenter/autotask/AutoTask;->getOperation(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-nez v5, :cond_c

    goto/16 :goto_5

    :cond_c
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v10, :cond_10

    goto :goto_8

    :pswitch_9
    new-instance v11, Lcom/miui/autotask/taskitem/WlanResultItem;

    invoke-direct {v11}, Lcom/miui/autotask/taskitem/WlanResultItem;-><init>()V

    invoke-virtual {p0, v5}, Lcom/miui/powercenter/autotask/AutoTask;->getOperation(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-nez v5, :cond_d

    goto/16 :goto_5

    :cond_d
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v10, :cond_10

    goto :goto_8

    :pswitch_a
    new-instance v11, Lcom/miui/autotask/taskitem/ScreenBrightnessResultItem;

    invoke-direct {v11}, Lcom/miui/autotask/taskitem/ScreenBrightnessResultItem;-><init>()V

    invoke-virtual {p0, v5}, Lcom/miui/powercenter/autotask/AutoTask;->getOperation(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-nez v5, :cond_e

    goto/16 :goto_5

    :cond_e
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v11, v5}, Lcom/miui/autotask/taskitem/ScreenBrightnessResultItem;->y(I)V

    goto :goto_a

    :pswitch_b
    new-instance v11, Lcom/miui/autotask/taskitem/AutoBrightnessResultItem;

    invoke-direct {v11}, Lcom/miui/autotask/taskitem/AutoBrightnessResultItem;-><init>()V

    invoke-virtual {p0, v5}, Lcom/miui/powercenter/autotask/AutoTask;->getOperation(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-nez v5, :cond_f

    goto/16 :goto_5

    :cond_f
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v10, :cond_10

    :goto_8
    move v5, v10

    goto :goto_9

    :cond_10
    move v5, v9

    :goto_9
    invoke-virtual {v11, v5}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    :goto_a
    invoke-virtual {v11, v0}, Lcom/miui/autotask/taskitem/TaskItem;->u(Ljava/lang/String;)V

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_11
    invoke-virtual {v1, v2}, Lcom/miui/autotask/bean/r;->v(Ljava/util/List;)V

    invoke-virtual {v1, v3}, Lcom/miui/autotask/bean/r;->u(Ljava/util/List;)V

    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x3046fb31 -> :sswitch_3
        0xba21ef -> :sswitch_2
        0xc377304 -> :sswitch_1
        0x25d3fb28 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x4e10d6e -> :sswitch_10
        0x190aa -> :sswitch_f
        0x335219 -> :sswitch_e
        0x37af15 -> :sswitch_d
        0x6872ed7 -> :sswitch_c
        0xaf69725 -> :sswitch_b
        0xb611670 -> :sswitch_a
        0x176690e1 -> :sswitch_9
        0x21ffc741 -> :sswitch_8
        0x26a22c51 -> :sswitch_7
        0x2e479047 -> :sswitch_6
        0x4f99f260 -> :sswitch_5
        0x755ac2ae -> :sswitch_4
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public static e(Lcom/miui/autotask/taskitem/TaskItem;Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/autotask/taskitem/TaskItem;",
            "Ljava/util/List<",
            "Lcom/miui/autotask/taskitem/TaskItem;",
            ">;)I"
        }
    .end annotation

    instance-of v0, p0, Lcom/miui/autotask/taskitem/CustomTimeConditionItem;

    const/4 v1, -0x1

    if-nez v0, :cond_b

    instance-of v0, p0, Lcom/miui/autotask/taskitem/InCallConditionItem;

    if-nez v0, :cond_b

    instance-of v0, p0, Lcom/miui/autotask/taskitem/BatteryConditionItem;

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    instance-of v0, p0, Lcom/miui/autotask/taskitem/SwitchTypeItem;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/TaskItem;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La4/f2;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, La4/f2;->f(Ljava/util/List;Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_1

    return v1

    :cond_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/autotask/taskitem/SwitchTypeItem;

    check-cast p0, Lcom/miui/autotask/taskitem/SwitchTypeItem;

    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->v()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    goto/16 :goto_3

    :cond_2
    instance-of v0, p0, Lcom/miui/autotask/taskitem/LunchAppItem;

    if-eqz v0, :cond_5

    instance-of v0, p0, Lcom/miui/autotask/taskitem/LeaveAppConditionItem;

    if-eqz v0, :cond_3

    const-string v0, "key_start_activity_condition_item"

    goto :goto_0

    :cond_3
    const-string v0, "key_leave_activity_condition_item"

    :goto_0
    invoke-static {p1, v0}, La4/f2;->f(Ljava/util/List;Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_4

    return v1

    :cond_4
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/autotask/taskitem/LunchAppItem;

    check-cast p0, Lcom/miui/autotask/taskitem/LunchAppItem;

    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/LunchAppItem;->B()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/autotask/taskitem/LunchAppItem;->F(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/LunchAppItem;->A()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/autotask/taskitem/LunchAppItem;->E(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/LunchAppItem;->x()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/autotask/taskitem/LunchAppItem;->D(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/LunchAppItem;->w()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/miui/autotask/taskitem/LunchAppItem;->C(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    instance-of v0, p0, Lcom/miui/autotask/taskitem/BluetoothDeviceConditionItem;

    if-eqz v0, :cond_8

    instance-of v0, p0, Lcom/miui/autotask/taskitem/BluetoothConnectDeviceConditionItem;

    if-eqz v0, :cond_6

    const-string v0, "key_bluetooth_disconnect_device_condition_item"

    goto :goto_1

    :cond_6
    const-string v0, "key_bluetooth_connect_device_condition_item"

    :goto_1
    invoke-static {p1, v0}, La4/f2;->f(Ljava/util/List;Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_7

    return v1

    :cond_7
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/autotask/taskitem/BluetoothDeviceConditionItem;

    check-cast p0, Lcom/miui/autotask/taskitem/BluetoothDeviceConditionItem;

    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/BluetoothDeviceConditionItem;->v()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/autotask/taskitem/BluetoothDeviceConditionItem;->A(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/BluetoothDeviceConditionItem;->w()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/miui/autotask/taskitem/BluetoothDeviceConditionItem;->B(Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    instance-of v0, p0, Lcom/miui/autotask/taskitem/WlanSpecifiedConditionItem;

    if-eqz v0, :cond_b

    instance-of v0, p0, Lcom/miui/autotask/taskitem/WlanDisconnectSpecifiedConditionItem;

    if-eqz v0, :cond_9

    const-string v0, "key_wlan_connect_specified_condition_item"

    goto :goto_2

    :cond_9
    const-string v0, "key_wlan_disconnect_specified_condition_item"

    :goto_2
    invoke-static {p1, v0}, La4/f2;->f(Ljava/util/List;Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_a

    return v1

    :cond_a
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/autotask/taskitem/WlanSpecifiedConditionItem;

    check-cast p0, Lcom/miui/autotask/taskitem/WlanSpecifiedConditionItem;

    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/WlanSpecifiedConditionItem;->v()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/autotask/taskitem/WlanSpecifiedConditionItem;->x(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/WlanSpecifiedConditionItem;->w()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/miui/autotask/taskitem/WlanSpecifiedConditionItem;->y(Ljava/lang/String;)V

    :cond_b
    :goto_3
    return v1
.end method

.method private static f(Ljava/util/List;Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/autotask/taskitem/TaskItem;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/autotask/taskitem/TaskItem;

    invoke-virtual {v1}, Lcom/miui/autotask/taskitem/TaskItem;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private static g(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xe

    if-gt v0, v1, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0xa

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static h(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Lcom/miui/autotask/taskitem/TaskItem;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "key_absorbed_result_item"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0x33

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "key_hotspot_condition_item"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0x32

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "key_dial_tone_result_item"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0x31

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "key_absorbed_condition_item"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0x30

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "key_screen_display_result_item"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0x2f

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "key_bluetooth_disconnect_device_condition_item"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0x2e

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "key_wlan_result_item"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v1, 0x2d

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "key_screen_brightness_result_item"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v1, 0x2c

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "key_wlan_disconnect_specified_condition_item"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v1, 0x2b

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "key_battery_condition_item"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v1, 0x2a

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "key_to_somewhere_condition_item"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v1, 0x29

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "key_network_result_item"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v1, 0x28

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "key_wlan_condition_item"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v1, 0x27

    goto/16 :goto_0

    :sswitch_d
    const-string v0, "key_twinkle_result_item"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v1, 0x26

    goto/16 :goto_0

    :sswitch_e
    const-string v0, "key_bluetooth_condition_item"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v1, 0x25

    goto/16 :goto_0

    :sswitch_f
    const-string v0, "key_touch_result_item"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v1, 0x24

    goto/16 :goto_0

    :sswitch_10
    const-string v0, "key_mute_condition_item"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v1, 0x23

    goto/16 :goto_0

    :sswitch_11
    const-string v0, "key_rotate_off_result_item"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v1, 0x22

    goto/16 :goto_0

    :sswitch_12
    const-string v0, "key_auto_brightness_result_item"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v1, 0x21

    goto/16 :goto_0

    :sswitch_13
    const-string v0, "key_result_list"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v1, 0x20

    goto/16 :goto_0

    :sswitch_14
    const-string v0, "key_nfc_condition_item"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v1, 0x1f

    goto/16 :goto_0

    :sswitch_15
    const-string v0, "key_disturb_result_item"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v1, 0x1e

    goto/16 :goto_0

    :sswitch_16
    const-string v0, "key_mute_result_item"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v1, 0x1d

    goto/16 :goto_0

    :sswitch_17
    const-string v0, "key_lock_screen_result_item"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v1, 0x1c

    goto/16 :goto_0

    :sswitch_18
    const-string v0, "key_bluetooth_result_item"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_18

    goto/16 :goto_0

    :cond_18
    const/16 v1, 0x1b

    goto/16 :goto_0

    :sswitch_19
    const-string v0, "key_app_use_condition_item"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_19

    goto/16 :goto_0

    :cond_19
    const/16 v1, 0x1a

    goto/16 :goto_0

    :sswitch_1a
    const-string v0, "key_switch_result_item"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1a

    goto/16 :goto_0

    :cond_1a
    const/16 v1, 0x19

    goto/16 :goto_0

    :sswitch_1b
    const-string v0, "key_dark_result_item"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1b

    goto/16 :goto_0

    :cond_1b
    const/16 v1, 0x18

    goto/16 :goto_0

    :sswitch_1c
    const-string v0, "key_typeface_result_item"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1c

    goto/16 :goto_0

    :cond_1c
    const/16 v1, 0x17

    goto/16 :goto_0

    :sswitch_1d
    const-string v0, "key_location_condition_item"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1d

    goto/16 :goto_0

    :cond_1d
    const/16 v1, 0x16

    goto/16 :goto_0

    :sswitch_1e
    const-string v0, "key_nfc_result_item"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1e

    goto/16 :goto_0

    :cond_1e
    const/16 v1, 0x15

    goto/16 :goto_0

    :sswitch_1f
    const-string v0, "key_save_battery_result_item"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1f

    goto/16 :goto_0

    :cond_1f
    const/16 v1, 0x14

    goto/16 :goto_0

    :sswitch_20
    const-string v0, "key_headset_condition_item"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_20

    goto/16 :goto_0

    :cond_20
    const/16 v1, 0x13

    goto/16 :goto_0

    :sswitch_21
    const-string v0, "key_airplan_result_item"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_21

    goto/16 :goto_0

    :cond_21
    const/16 v1, 0x12

    goto/16 :goto_0

    :sswitch_22
    const-string v0, "key_condition_list"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_22

    goto/16 :goto_0

    :cond_22
    const/16 v1, 0x11

    goto/16 :goto_0

    :sswitch_23
    const-string v0, "key_leave_activity_condition_item"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_23

    goto/16 :goto_0

    :cond_23
    const/16 v1, 0x10

    goto/16 :goto_0

    :sswitch_24
    const-string v0, "key_incall_condition_item"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_24

    goto/16 :goto_0

    :cond_24
    const/16 v1, 0xf

    goto/16 :goto_0

    :sswitch_25
    const-string v0, "key_charge_condition_item"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_25

    goto/16 :goto_0

    :cond_25
    const/16 v1, 0xe

    goto/16 :goto_0

    :sswitch_26
    const-string v0, "key_start_activity_condition_item"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_26

    goto/16 :goto_0

    :cond_26
    const/16 v1, 0xd

    goto/16 :goto_0

    :sswitch_27
    const-string v0, "key_flashlight_result_item"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_27

    goto/16 :goto_0

    :cond_27
    const/16 v1, 0xc

    goto/16 :goto_0

    :sswitch_28
    const-string v0, "key_hotspot_result_item"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_28

    goto/16 :goto_0

    :cond_28
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_29
    const-string v0, "key_meeting_condition_item"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_29

    goto/16 :goto_0

    :cond_29
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_2a
    const-string v0, "key_custom_time_condition_item"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2a

    goto/16 :goto_0

    :cond_2a
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_2b
    const-string v0, "key_start_activity_result_item"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2b

    goto/16 :goto_0

    :cond_2b
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_2c
    const-string v0, "key_bluetooth_connect_device_condition_item"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2c

    goto :goto_0

    :cond_2c
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_2d
    const-string v0, "key_eye_care_result_item"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2d

    goto :goto_0

    :cond_2d
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_2e
    const-string v0, "key_leave_condition_item"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2e

    goto :goto_0

    :cond_2e
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_2f
    const-string v0, "key_wlan_connect_specified_condition_item"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2f

    goto :goto_0

    :cond_2f
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_30
    const-string v0, "key_drive_result_item"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_30

    goto :goto_0

    :cond_30
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_31
    const-string v0, "key_location_result_item"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_31

    goto :goto_0

    :cond_31
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_32
    const-string v0, "key_lock_screen_condition_item"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_32

    goto :goto_0

    :cond_32
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_33
    const-string v0, "key_adjust_volume_result_item"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_33

    goto :goto_0

    :cond_33
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    const-class p0, Lcom/miui/autotask/taskitem/AbsorbedResultItem;

    goto/16 :goto_2

    :pswitch_1
    const-class p0, Lcom/miui/autotask/taskitem/HotspotConditionItem;

    goto/16 :goto_2

    :pswitch_2
    const-class p0, Lcom/miui/autotask/taskitem/DialToneResultItem;

    goto/16 :goto_2

    :pswitch_3
    const-class p0, Lcom/miui/autotask/taskitem/AbsorbedConditionItem;

    goto/16 :goto_2

    :pswitch_4
    const-class p0, Lcom/miui/autotask/taskitem/ScreenDisplayResultItem;

    goto/16 :goto_2

    :pswitch_5
    const-class p0, Lcom/miui/autotask/taskitem/BluetoothDisconnectDeviceConditionItem;

    goto/16 :goto_2

    :pswitch_6
    const-class p0, Lcom/miui/autotask/taskitem/WlanResultItem;

    goto/16 :goto_2

    :pswitch_7
    const-class p0, Lcom/miui/autotask/taskitem/ScreenBrightnessResultItem;

    goto/16 :goto_2

    :pswitch_8
    const-class p0, Lcom/miui/autotask/taskitem/WlanDisconnectSpecifiedConditionItem;

    goto/16 :goto_2

    :pswitch_9
    const-class p0, Lcom/miui/autotask/taskitem/BatteryConditionItem;

    goto/16 :goto_2

    :pswitch_a
    const-class p0, Lcom/miui/autotask/taskitem/ToSomewhereConditionItem;

    goto/16 :goto_2

    :pswitch_b
    const-class p0, Lcom/miui/autotask/taskitem/NetworkResultItem;

    goto/16 :goto_2

    :pswitch_c
    const-class p0, Lcom/miui/autotask/taskitem/WlanConditionItem;

    goto/16 :goto_2

    :pswitch_d
    const-class p0, Lcom/miui/autotask/taskitem/TwinkleResultItem;

    goto/16 :goto_2

    :pswitch_e
    const-class p0, Lcom/miui/autotask/taskitem/BluetoothConditionItem;

    goto/16 :goto_2

    :pswitch_f
    const-class p0, Lcom/miui/autotask/taskitem/TouchResultItem;

    goto/16 :goto_2

    :pswitch_10
    const-class p0, Lcom/miui/autotask/taskitem/MuteConditionItem;

    goto/16 :goto_2

    :pswitch_11
    const-class p0, Lcom/miui/autotask/taskitem/RotateOffResultItem;

    goto/16 :goto_2

    :pswitch_12
    const-class p0, Lcom/miui/autotask/taskitem/AutoBrightnessResultItem;

    goto/16 :goto_2

    :pswitch_13
    const-class p0, Lcom/miui/autotask/taskitem/DefaultResultItem;

    goto/16 :goto_2

    :pswitch_14
    const-class p0, Lcom/miui/autotask/taskitem/NfcConditionItem;

    goto/16 :goto_2

    :pswitch_15
    const-class p0, Lcom/miui/autotask/taskitem/DisturbResultItem;

    goto/16 :goto_2

    :pswitch_16
    const-class p0, Lcom/miui/autotask/taskitem/MuteResultItem;

    goto/16 :goto_2

    :pswitch_17
    const-class p0, Lcom/miui/autotask/taskitem/LockScreenResultItem;

    goto/16 :goto_2

    :pswitch_18
    const-class p0, Lcom/miui/autotask/taskitem/BluetoothResultItem;

    goto/16 :goto_2

    :pswitch_19
    const-class p0, Lcom/miui/autotask/taskitem/AppUseConditionItem;

    goto/16 :goto_2

    :pswitch_1a
    const-class p0, Lcom/miui/autotask/taskitem/SwitchResultItem;

    goto :goto_2

    :pswitch_1b
    const-class p0, Lcom/miui/autotask/taskitem/DarkResultItem;

    goto :goto_2

    :pswitch_1c
    const-class p0, Lcom/miui/autotask/taskitem/TypefaceResultItem;

    goto :goto_2

    :pswitch_1d
    const-class p0, Lcom/miui/autotask/taskitem/LocationConditionItem;

    goto :goto_2

    :pswitch_1e
    const-class p0, Lcom/miui/autotask/taskitem/NfcResultItem;

    goto :goto_2

    :pswitch_1f
    const-class p0, Lcom/miui/autotask/taskitem/SaveBatteryResultItem;

    goto :goto_2

    :pswitch_20
    const-class p0, Lcom/miui/autotask/taskitem/HeadsetConditionItem;

    goto :goto_2

    :pswitch_21
    const-class p0, Lcom/miui/autotask/taskitem/AirplaneResultItem;

    goto :goto_2

    :goto_1
    :pswitch_22
    const-class p0, Lcom/miui/autotask/taskitem/DefaultConditionItem;

    goto :goto_2

    :pswitch_23
    const-class p0, Lcom/miui/autotask/taskitem/LeaveAppConditionItem;

    goto :goto_2

    :pswitch_24
    const-class p0, Lcom/miui/autotask/taskitem/InCallConditionItem;

    goto :goto_2

    :pswitch_25
    const-class p0, Lcom/miui/autotask/taskitem/ChargeConditionItem;

    goto :goto_2

    :pswitch_26
    const-class p0, Lcom/miui/autotask/taskitem/StartActivityConditionItem;

    goto :goto_2

    :pswitch_27
    const-class p0, Lcom/miui/autotask/taskitem/FlashlightResultItem;

    goto :goto_2

    :pswitch_28
    const-class p0, Lcom/miui/autotask/taskitem/HotspotResultItem;

    goto :goto_2

    :pswitch_29
    const-class p0, Lcom/miui/autotask/taskitem/MeetingConditionItem;

    goto :goto_2

    :pswitch_2a
    const-class p0, Lcom/miui/autotask/taskitem/CustomTimeConditionItem;

    goto :goto_2

    :pswitch_2b
    const-class p0, Lcom/miui/autotask/taskitem/StartActivityResultItem;

    goto :goto_2

    :pswitch_2c
    const-class p0, Lcom/miui/autotask/taskitem/BluetoothConnectDeviceConditionItem;

    goto :goto_2

    :pswitch_2d
    const-class p0, Lcom/miui/autotask/taskitem/EyeCareResultItem;

    goto :goto_2

    :pswitch_2e
    const-class p0, Lcom/miui/autotask/taskitem/LeaveConditionItem;

    goto :goto_2

    :pswitch_2f
    const-class p0, Lcom/miui/autotask/taskitem/WlanConnectSpecifiedConditionItem;

    goto :goto_2

    :pswitch_30
    const-class p0, Lcom/miui/autotask/taskitem/DriveResultItem;

    goto :goto_2

    :pswitch_31
    const-class p0, Lcom/miui/autotask/taskitem/LocationResultItem;

    goto :goto_2

    :pswitch_32
    const-class p0, Lcom/miui/autotask/taskitem/LockScreenConditionItem;

    goto :goto_2

    :pswitch_33
    const-class p0, Lcom/miui/autotask/taskitem/AdjustVolumeResultItem;

    :goto_2
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x779afee0 -> :sswitch_33
        -0x774d5e4a -> :sswitch_32
        -0x726e75b5 -> :sswitch_31
        -0x706dc320 -> :sswitch_30
        -0x66c04728 -> :sswitch_2f
        -0x5e12c7e1 -> :sswitch_2e
        -0x5df0640b -> :sswitch_2d
        -0x5a2c5486 -> :sswitch_2c
        -0x5857f99e -> :sswitch_2b
        -0x4fef2c85 -> :sswitch_2a
        -0x4efeb3e5 -> :sswitch_29
        -0x49c3855b -> :sswitch_28
        -0x3ce4f3c4 -> :sswitch_27
        -0x3586c3d6 -> :sswitch_26
        -0x32b1f53e -> :sswitch_25
        -0x2d5e076d -> :sswitch_24
        -0x2a64a881 -> :sswitch_23
        -0x24f0a4de -> :sswitch_22
        -0x2381aab7 -> :sswitch_21
        -0x1ca6830c -> :sswitch_20
        -0x14bf6d1f -> :sswitch_1f
        -0x1499d47f -> :sswitch_1e
        -0x14193c5f -> :sswitch_1d
        -0xc7e1fd3 -> :sswitch_1c
        -0x99bcf74 -> :sswitch_1b
        0x199534a -> :sswitch_1a
        0x94d7e2d -> :sswitch_19
        0xb19c004 -> :sswitch_18
        0xb676c56 -> :sswitch_17
        0x1652b6af -> :sswitch_16
        0x16bba1d5 -> :sswitch_15
        0x16db0eab -> :sswitch_14
        0x220991a0 -> :sswitch_13
        0x23dbc1b7 -> :sswitch_12
        0x24a6f621 -> :sswitch_11
        0x33b38cbd -> :sswitch_10
        0x33d69b15 -> :sswitch_f
        0x39ca8748 -> :sswitch_e
        0x3f126f92 -> :sswitch_d
        0x44bfbdf4 -> :sswitch_c
        0x49f21f84 -> :sswitch_b
        0x4b717467 -> :sswitch_a
        0x55fb8a09 -> :sswitch_9
        0x5991f64c -> :sswitch_8
        0x5a1b125a -> :sswitch_7
        0x5c73e8d8 -> :sswitch_6
        0x614f3aae -> :sswitch_5
        0x669ecf85 -> :sswitch_4
        0x69bc7bea -> :sswitch_3
        0x6f4205b7 -> :sswitch_2
        0x783ebd07 -> :sswitch_1
        0x7e72dea2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
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

.method private static i(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x11

    if-gt v0, v1, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0xd

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static j()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lcom/miui/autotask/common/a;->j:Lcom/miui/autotask/common/a$a;

    invoke-virtual {v2}, Lcom/miui/autotask/common/a$a;->f()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, La4/f2;->I()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "key_to_somewhere_condition_item"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "key_leave_condition_item"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v2, "key_custom_time_condition_item"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "key_bluetooth_condition_item"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "key_wlan_condition_item"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "key_location_condition_item"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "key_headset_condition_item"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "key_hotspot_condition_item"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "key_start_activity_condition_item"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "key_leave_activity_condition_item"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "key_bluetooth_connect_device_condition_item"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "key_bluetooth_disconnect_device_condition_item"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "key_wlan_connect_specified_condition_item"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "key_wlan_disconnect_specified_condition_item"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lx4/g0;->d()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "key_absorbed_condition_item"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v4, "key_mute_condition_item"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "key_charge_condition_item"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "key_battery_condition_item"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "key_lock_screen_condition_item"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lme/w;->e0()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "key_incall_condition_item"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    const-string v5, "key_situation_condition_category"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "key_setting_item_condition_category"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "key_event_condition_category"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "key_comminication_condition_category"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static k(Lcom/miui/autotask/bean/p;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/autotask/bean/p;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/autotask/bean/r;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    new-instance v1, Lcom/miui/autotask/bean/r;

    invoke-direct {v1}, Lcom/miui/autotask/bean/r;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/autotask/bean/r;->H(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/miui/autotask/bean/r;->B(Z)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f120081

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/miui/autotask/bean/r;->G(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/miui/autotask/bean/r;->x(Z)V

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lcom/miui/autotask/bean/r;->C(I)V

    invoke-virtual {p0}, Lcom/miui/autotask/bean/p;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/miui/autotask/bean/r;->D(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lcom/miui/autotask/taskitem/BluetoothConnectDeviceConditionItem;

    invoke-direct {v4}, Lcom/miui/autotask/taskitem/BluetoothConnectDeviceConditionItem;-><init>()V

    invoke-virtual {v4, v2}, Lcom/miui/autotask/taskitem/TaskItem;->u(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/autotask/bean/p;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/miui/autotask/taskitem/BluetoothDeviceConditionItem;->B(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/autotask/bean/p;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/miui/autotask/taskitem/BluetoothDeviceConditionItem;->A(Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/miui/autotask/taskitem/StartActivityResultItem;

    invoke-direct {v4}, Lcom/miui/autotask/taskitem/StartActivityResultItem;-><init>()V

    invoke-virtual {v4, v2}, Lcom/miui/autotask/taskitem/TaskItem;->u(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/autotask/bean/p;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/miui/autotask/taskitem/LunchAppItem;->C(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/autotask/bean/p;->e()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Lcom/miui/autotask/taskitem/LunchAppItem;->E(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v0}, Lcom/miui/autotask/bean/r;->v(Ljava/util/List;)V

    invoke-virtual {v1, v3}, Lcom/miui/autotask/bean/r;->u(Ljava/util/List;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public static l(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/autotask/taskitem/TaskItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "DTT_SLEEP"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v3

    goto :goto_1

    :sswitch_1
    const-string v1, "DTT_DRIVER_CAR"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v4

    goto :goto_1

    :sswitch_2
    const-string v1, "DTT_WATCH_VIDEO"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x5

    goto :goto_1

    :sswitch_3
    const-string v1, "DTT_LISTENER_MUSIC"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x6

    goto :goto_1

    :sswitch_4
    const-string v1, "DTT_NOON_BREAK"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v5

    goto :goto_1

    :sswitch_5
    const-string v1, "DTT_GET_UP"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v6

    goto :goto_1

    :sswitch_6
    const-string v1, "DTT_SAVE_POWER"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v2

    goto :goto_1

    :sswitch_7
    const-string v1, "DTT_MEET"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x7

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, -0x1

    :goto_1
    packed-switch p0, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    new-instance p0, Lcom/miui/autotask/taskitem/BluetoothResultItem;

    invoke-direct {p0}, Lcom/miui/autotask/taskitem/BluetoothResultItem;-><init>()V

    goto/16 :goto_2

    :pswitch_1
    new-instance p0, Lcom/miui/autotask/taskitem/WlanResultItem;

    invoke-direct {p0}, Lcom/miui/autotask/taskitem/WlanResultItem;-><init>()V

    invoke-virtual {p0, v6}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p0, Lcom/miui/autotask/taskitem/RotateOffResultItem;

    invoke-direct {p0}, Lcom/miui/autotask/taskitem/RotateOffResultItem;-><init>()V

    invoke-virtual {p0, v3}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p0, Lcom/miui/autotask/taskitem/AdjustVolumeResultItem;

    invoke-direct {p0}, Lcom/miui/autotask/taskitem/AdjustVolumeResultItem;-><init>()V

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    const-class v7, Landroid/media/AudioManager;

    invoke-virtual {v1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    if-nez v1, :cond_1

    new-array v1, v4, [I

    fill-array-data v1, :array_0

    invoke-virtual {p0, v1}, Lcom/miui/autotask/taskitem/AdjustVolumeResultItem;->x([I)V

    goto/16 :goto_3

    :cond_1
    invoke-virtual {v1, v5}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v7

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    invoke-virtual {v1, v4}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    new-array v4, v4, [I

    div-int/2addr v7, v5

    aput v7, v4, v3

    div-int/2addr v2, v5

    aput v2, v4, v6

    div-int/2addr v1, v5

    aput v1, v4, v5

    invoke-virtual {p0, v4}, Lcom/miui/autotask/taskitem/AdjustVolumeResultItem;->x([I)V

    goto :goto_3

    :pswitch_2
    new-instance p0, Lcom/miui/autotask/taskitem/SaveBatteryResultItem;

    invoke-direct {p0}, Lcom/miui/autotask/taskitem/SaveBatteryResultItem;-><init>()V

    goto :goto_2

    :pswitch_3
    new-instance p0, Lcom/miui/autotask/taskitem/HotspotResultItem;

    invoke-direct {p0}, Lcom/miui/autotask/taskitem/HotspotResultItem;-><init>()V

    goto :goto_2

    :pswitch_4
    new-instance p0, Lcom/miui/autotask/taskitem/DisturbResultItem;

    invoke-direct {p0}, Lcom/miui/autotask/taskitem/DisturbResultItem;-><init>()V

    goto :goto_2

    :pswitch_5
    new-instance p0, Lcom/miui/autotask/taskitem/DisturbResultItem;

    invoke-direct {p0}, Lcom/miui/autotask/taskitem/DisturbResultItem;-><init>()V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p0, Lcom/miui/autotask/taskitem/BluetoothResultItem;

    invoke-direct {p0}, Lcom/miui/autotask/taskitem/BluetoothResultItem;-><init>()V

    invoke-virtual {p0, v6}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p0, Lcom/miui/autotask/taskitem/WlanResultItem;

    invoke-direct {p0}, Lcom/miui/autotask/taskitem/WlanResultItem;-><init>()V

    invoke-virtual {p0, v6}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p0, Lcom/miui/autotask/taskitem/NetworkResultItem;

    invoke-direct {p0}, Lcom/miui/autotask/taskitem/NetworkResultItem;-><init>()V

    goto :goto_2

    :pswitch_6
    new-instance p0, Lcom/miui/autotask/taskitem/DisturbResultItem;

    invoke-direct {p0}, Lcom/miui/autotask/taskitem/DisturbResultItem;-><init>()V

    invoke-virtual {p0, v6}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p0, Lcom/miui/autotask/taskitem/DarkResultItem;

    invoke-direct {p0}, Lcom/miui/autotask/taskitem/DarkResultItem;-><init>()V

    invoke-virtual {p0, v6}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p0, Lcom/miui/autotask/taskitem/WlanResultItem;

    invoke-direct {p0}, Lcom/miui/autotask/taskitem/WlanResultItem;-><init>()V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p0, Lcom/miui/autotask/taskitem/NetworkResultItem;

    invoke-direct {p0}, Lcom/miui/autotask/taskitem/NetworkResultItem;-><init>()V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p0, Lcom/miui/autotask/taskitem/ScreenBrightnessResultItem;

    invoke-direct {p0}, Lcom/miui/autotask/taskitem/ScreenBrightnessResultItem;-><init>()V

    const/16 v1, 0x28

    invoke-virtual {p0, v1}, Lcom/miui/autotask/taskitem/ScreenBrightnessResultItem;->y(I)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p0, Lcom/miui/autotask/taskitem/SaveBatteryResultItem;

    invoke-direct {p0}, Lcom/miui/autotask/taskitem/SaveBatteryResultItem;-><init>()V

    :goto_2
    invoke-virtual {p0, v6}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    :goto_3
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x77eeca1e -> :sswitch_7
        -0x4f63db02 -> :sswitch_6
        -0x419ac8e1 -> :sswitch_5
        0xb16ac9b -> :sswitch_4
        0x1234da95 -> :sswitch_3
        0x1775aed0 -> :sswitch_2
        0x4979b478 -> :sswitch_1
        0x7a6d407c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x32
        0x32
        0x32
    .end array-data
.end method

.method public static m(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/autotask/taskitem/TaskItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "DTT_SLEEP"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :sswitch_1
    const-string v1, "DTT_DRIVER_CAR"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x6

    goto :goto_1

    :sswitch_2
    const-string v1, "DTT_WATCH_VIDEO"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v3

    goto :goto_1

    :sswitch_3
    const-string v1, "DTT_LISTENER_MUSIC"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x7

    goto :goto_1

    :sswitch_4
    const-string v1, "DTT_NOON_BREAK"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    :sswitch_5
    const-string v1, "DTT_GET_UP"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    goto :goto_1

    :sswitch_6
    const-string v1, "DTT_SAVE_POWER"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v2

    goto :goto_1

    :sswitch_7
    const-string v1, "DTT_MEET"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x5

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, -0x1

    :goto_1
    packed-switch p0, :pswitch_data_0

    new-instance p0, Lcom/miui/autotask/taskitem/StartActivityConditionItem;

    invoke-direct {p0}, Lcom/miui/autotask/taskitem/StartActivityConditionItem;-><init>()V

    goto :goto_3

    :pswitch_0
    new-instance p0, Lcom/miui/autotask/taskitem/BluetoothConnectDeviceConditionItem;

    invoke-direct {p0}, Lcom/miui/autotask/taskitem/BluetoothConnectDeviceConditionItem;-><init>()V

    goto :goto_3

    :pswitch_1
    new-instance p0, Lcom/miui/autotask/taskitem/BatteryConditionItem;

    invoke-direct {p0}, Lcom/miui/autotask/taskitem/BatteryConditionItem;-><init>()V

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    invoke-virtual {p0, v1}, Lcom/miui/autotask/taskitem/BatteryConditionItem;->w([I)V

    goto :goto_3

    :pswitch_2
    new-instance p0, Lcom/miui/autotask/taskitem/StartActivityConditionItem;

    invoke-direct {p0}, Lcom/miui/autotask/taskitem/StartActivityConditionItem;-><init>()V

    goto :goto_3

    :pswitch_3
    new-instance p0, Lcom/miui/autotask/taskitem/CustomTimeConditionItem;

    invoke-direct {p0}, Lcom/miui/autotask/taskitem/CustomTimeConditionItem;-><init>()V

    invoke-virtual {p0, v3}, Lcom/miui/autotask/taskitem/CustomTimeConditionItem;->G(I)V

    new-instance v1, Lcom/miui/powercenter/bootshutdown/DaysOfWeek;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Lcom/miui/powercenter/bootshutdown/DaysOfWeek;-><init>(I)V

    invoke-virtual {p0, v1}, Lcom/miui/autotask/taskitem/CustomTimeConditionItem;->E(Lcom/miui/powercenter/bootshutdown/DaysOfWeek;)V

    const/16 v1, 0x30c

    invoke-virtual {p0, v1}, Lcom/miui/autotask/taskitem/CustomTimeConditionItem;->F(I)V

    const/16 v1, 0x348

    goto :goto_2

    :pswitch_4
    new-instance p0, Lcom/miui/autotask/taskitem/CustomTimeConditionItem;

    invoke-direct {p0}, Lcom/miui/autotask/taskitem/CustomTimeConditionItem;-><init>()V

    invoke-virtual {p0, v3}, Lcom/miui/autotask/taskitem/CustomTimeConditionItem;->G(I)V

    new-instance v1, Lcom/miui/powercenter/bootshutdown/DaysOfWeek;

    const/16 v2, 0x7f

    invoke-direct {v1, v2}, Lcom/miui/powercenter/bootshutdown/DaysOfWeek;-><init>(I)V

    invoke-virtual {p0, v1}, Lcom/miui/autotask/taskitem/CustomTimeConditionItem;->E(Lcom/miui/powercenter/bootshutdown/DaysOfWeek;)V

    const/16 v1, 0x528

    invoke-virtual {p0, v1}, Lcom/miui/autotask/taskitem/CustomTimeConditionItem;->F(I)V

    const/16 v1, 0x1e0

    :goto_2
    invoke-virtual {p0, v1}, Lcom/miui/autotask/taskitem/CustomTimeConditionItem;->C(I)V

    :goto_3
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :pswitch_5
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x77eeca1e -> :sswitch_7
        -0x4f63db02 -> :sswitch_6
        -0x419ac8e1 -> :sswitch_5
        0xb16ac9b -> :sswitch_4
        0x1234da95 -> :sswitch_3
        0x1775aed0 -> :sswitch_2
        0x4979b478 -> :sswitch_1
        0x7a6d407c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_5
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x0
        0x1e
        0x3c
    .end array-data
.end method

.method public static n(Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "DTT_SLEEP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :sswitch_1
    const-string v0, "DTT_DRIVER_CAR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_1

    :sswitch_2
    const-string v0, "DTT_WATCH_VIDEO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x5

    goto :goto_1

    :sswitch_3
    const-string v0, "DTT_LISTENER_MUSIC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x6

    goto :goto_1

    :sswitch_4
    const-string v0, "DTT_NOON_BREAK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_1

    :sswitch_5
    const-string v0, "DTT_GET_UP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    :sswitch_6
    const-string v0, "DTT_SAVE_POWER"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    goto :goto_1

    :sswitch_7
    const-string v0, "DTT_MEET"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x7

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, -0x1

    :goto_1
    packed-switch p0, :pswitch_data_0

    const p0, 0x7f0803e8

    return p0

    :pswitch_0
    const p0, 0x7f0803e6

    return p0

    :pswitch_1
    const p0, 0x7f0803f0

    return p0

    :pswitch_2
    const p0, 0x7f0803ec

    return p0

    :pswitch_3
    const p0, 0x7f0803e2

    return p0

    :pswitch_4
    const p0, 0x7f0803ea

    return p0

    :pswitch_5
    const p0, 0x7f0803e4

    return p0

    :pswitch_6
    const p0, 0x7f0803ee

    return p0

    :sswitch_data_0
    .sparse-switch
        -0x77eeca1e -> :sswitch_7
        -0x4f63db02 -> :sswitch_6
        -0x419ac8e1 -> :sswitch_5
        0xb16ac9b -> :sswitch_4
        0x1234da95 -> :sswitch_3
        0x1775aed0 -> :sswitch_2
        0x4979b478 -> :sswitch_1
        0x7a6d407c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static o(Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "DTT_SLEEP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :sswitch_1
    const-string v0, "DTT_DRIVER_CAR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_1

    :sswitch_2
    const-string v0, "DTT_WATCH_VIDEO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x5

    goto :goto_1

    :sswitch_3
    const-string v0, "DTT_LISTENER_MUSIC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x6

    goto :goto_1

    :sswitch_4
    const-string v0, "DTT_NOON_BREAK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_1

    :sswitch_5
    const-string v0, "DTT_GET_UP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    :sswitch_6
    const-string v0, "DTT_SAVE_POWER"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    goto :goto_1

    :sswitch_7
    const-string v0, "DTT_MEET"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x7

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, -0x1

    :goto_1
    packed-switch p0, :pswitch_data_0

    const p0, 0x7f0803e7

    return p0

    :pswitch_0
    const p0, 0x7f0803e5

    return p0

    :pswitch_1
    const p0, 0x7f0803ef

    return p0

    :pswitch_2
    const p0, 0x7f0803eb

    return p0

    :pswitch_3
    const p0, 0x7f0803e1

    return p0

    :pswitch_4
    const p0, 0x7f0803e9

    return p0

    :pswitch_5
    const p0, 0x7f0803e3

    return p0

    :pswitch_6
    const p0, 0x7f0803ed

    return p0

    :sswitch_data_0
    .sparse-switch
        -0x77eeca1e -> :sswitch_7
        -0x4f63db02 -> :sswitch_6
        -0x419ac8e1 -> :sswitch_5
        0xb16ac9b -> :sswitch_4
        0x1234da95 -> :sswitch_3
        0x1775aed0 -> :sswitch_2
        0x4979b478 -> :sswitch_1
        0x7a6d407c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static p(Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "DTT_SLEEP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :sswitch_1
    const-string v0, "DTT_DRIVER_CAR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_1

    :sswitch_2
    const-string v0, "DTT_WATCH_VIDEO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x5

    goto :goto_1

    :sswitch_3
    const-string v0, "DTT_LISTENER_MUSIC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x6

    goto :goto_1

    :sswitch_4
    const-string v0, "DTT_NOON_BREAK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_1

    :sswitch_5
    const-string v0, "DTT_GET_UP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    :sswitch_6
    const-string v0, "DTT_SAVE_POWER"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    goto :goto_1

    :sswitch_7
    const-string v0, "DTT_MEET"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x7

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, -0x1

    :goto_1
    packed-switch p0, :pswitch_data_0

    const p0, 0x7f1202f4

    return p0

    :pswitch_0
    const p0, 0x7f1202f3

    return p0

    :pswitch_1
    const p0, 0x7f1202f8

    return p0

    :pswitch_2
    const p0, 0x7f1202f6

    return p0

    :pswitch_3
    const p0, 0x7f1202f1

    return p0

    :pswitch_4
    const p0, 0x7f1202f5

    return p0

    :pswitch_5
    const p0, 0x7f1202f2

    return p0

    :pswitch_6
    const p0, 0x7f1202f7

    return p0

    :sswitch_data_0
    .sparse-switch
        -0x77eeca1e -> :sswitch_7
        -0x4f63db02 -> :sswitch_6
        -0x419ac8e1 -> :sswitch_5
        0xb16ac9b -> :sswitch_4
        0x1234da95 -> :sswitch_3
        0x1775aed0 -> :sswitch_2
        0x4979b478 -> :sswitch_1
        0x7a6d407c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static q(Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "DTT_SLEEP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :sswitch_1
    const-string v0, "DTT_DRIVER_CAR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_1

    :sswitch_2
    const-string v0, "DTT_WATCH_VIDEO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x5

    goto :goto_1

    :sswitch_3
    const-string v0, "DTT_LISTENER_MUSIC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x6

    goto :goto_1

    :sswitch_4
    const-string v0, "DTT_NOON_BREAK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_1

    :sswitch_5
    const-string v0, "DTT_GET_UP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    :sswitch_6
    const-string v0, "DTT_SAVE_POWER"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    goto :goto_1

    :sswitch_7
    const-string v0, "DTT_MEET"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x7

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, -0x1

    :goto_1
    packed-switch p0, :pswitch_data_0

    const p0, 0x7f1202fc

    return p0

    :pswitch_0
    const p0, 0x7f1202fb

    return p0

    :pswitch_1
    const p0, 0x7f120300

    return p0

    :pswitch_2
    const p0, 0x7f1202fe

    return p0

    :pswitch_3
    const p0, 0x7f1202f9

    return p0

    :pswitch_4
    const p0, 0x7f1202fd

    return p0

    :pswitch_5
    const p0, 0x7f1202fa

    return p0

    :pswitch_6
    const p0, 0x7f1202ff

    return p0

    :sswitch_data_0
    .sparse-switch
        -0x77eeca1e -> :sswitch_7
        -0x4f63db02 -> :sswitch_6
        -0x419ac8e1 -> :sswitch_5
        0xb16ac9b -> :sswitch_4
        0x1234da95 -> :sswitch_3
        0x1775aed0 -> :sswitch_2
        0x4979b478 -> :sswitch_1
        0x7a6d407c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static r(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x12

    if-gt v0, v1, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0xe

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "e_c"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static s(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v1, "key_bluetooth_disconnect_device_condition_item"

    const-string v2, "key_wlan_disconnect_specified_condition_item"

    const-string v3, "key_to_somewhere_condition_item"

    const-string v4, "key_leave_activity_condition_item"

    const-string v5, "key_start_activity_condition_item"

    const-string v6, "key_bluetooth_connect_device_condition_item"

    const-string v7, "key_leave_condition_item"

    const-string v8, "key_wlan_connect_specified_condition_item"

    const/4 v9, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v9, 0x7

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v9, 0x6

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v9, 0x5

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v9, 0x4

    goto :goto_0

    :sswitch_4
    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v9, 0x3

    goto :goto_0

    :sswitch_5
    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v9, 0x2

    goto :goto_0

    :sswitch_6
    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v9, 0x1

    goto :goto_0

    :sswitch_7
    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v9, 0x0

    :goto_0
    packed-switch v9, :pswitch_data_0

    return-object p0

    :pswitch_0
    return-object v6

    :pswitch_1
    return-object v8

    :pswitch_2
    return-object v7

    :pswitch_3
    return-object v5

    :pswitch_4
    return-object v4

    :pswitch_5
    return-object v1

    :pswitch_6
    return-object v3

    :pswitch_7
    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x66c04728 -> :sswitch_7
        -0x5e12c7e1 -> :sswitch_6
        -0x5a2c5486 -> :sswitch_5
        -0x3586c3d6 -> :sswitch_4
        -0x2a64a881 -> :sswitch_3
        0x4b717467 -> :sswitch_2
        0x5991f64c -> :sswitch_1
        0x614f3aae -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method public static t(Lcom/miui/autotask/taskitem/TaskItem;)Lcom/miui/autotask/taskitem/TaskItem;
    .locals 6

    instance-of v0, p0, Lcom/miui/autotask/taskitem/SwitchTypeItem;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/TaskItem;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, La4/f2;->h(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/autotask/taskitem/SwitchTypeItem;

    move-object v2, p0

    check-cast v2, Lcom/miui/autotask/taskitem/SwitchTypeItem;

    invoke-virtual {v2}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->v()Z

    move-result v2

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/TaskItem;->j()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/miui/autotask/taskitem/TaskItem;->u(Ljava/lang/String;)V

    return-object v0

    :cond_0
    instance-of v0, p0, Lcom/miui/autotask/taskitem/InCallConditionItem;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Lcom/miui/autotask/taskitem/InCallConditionItem;

    invoke-virtual {v0}, Lcom/miui/autotask/taskitem/InCallConditionItem;->v()I

    move-result v0

    const/16 v1, 0x67

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/miui/autotask/taskitem/InCallConditionItem;

    invoke-direct {v0}, Lcom/miui/autotask/taskitem/InCallConditionItem;-><init>()V

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Lcom/miui/autotask/taskitem/InCallConditionItem;->x(I)V

    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/TaskItem;->j()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/miui/autotask/taskitem/TaskItem;->u(Ljava/lang/String;)V

    return-object v0

    :cond_1
    return-object v2

    :cond_2
    instance-of v0, p0, Lcom/miui/autotask/taskitem/LunchAppItem;

    if-eqz v0, :cond_4

    instance-of v0, p0, Lcom/miui/autotask/taskitem/LeaveAppConditionItem;

    if-eqz v0, :cond_3

    new-instance v0, Lcom/miui/autotask/taskitem/StartActivityConditionItem;

    invoke-direct {v0}, Lcom/miui/autotask/taskitem/StartActivityConditionItem;-><init>()V

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/miui/autotask/taskitem/LeaveAppConditionItem;

    invoke-direct {v0}, Lcom/miui/autotask/taskitem/LeaveAppConditionItem;-><init>()V

    :goto_0
    move-object v1, p0

    check-cast v1, Lcom/miui/autotask/taskitem/LunchAppItem;

    invoke-virtual {v1}, Lcom/miui/autotask/taskitem/LunchAppItem;->B()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/autotask/taskitem/LunchAppItem;->F(Ljava/util/List;)V

    invoke-virtual {v1}, Lcom/miui/autotask/taskitem/LunchAppItem;->A()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/autotask/taskitem/LunchAppItem;->E(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/miui/autotask/taskitem/LunchAppItem;->x()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/autotask/taskitem/LunchAppItem;->D(Ljava/util/List;)V

    invoke-virtual {v1}, Lcom/miui/autotask/taskitem/LunchAppItem;->w()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/autotask/taskitem/LunchAppItem;->C(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/TaskItem;->j()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/miui/autotask/taskitem/TaskItem;->u(Ljava/lang/String;)V

    return-object v0

    :cond_4
    instance-of v0, p0, Lcom/miui/autotask/taskitem/BluetoothDeviceConditionItem;

    if-eqz v0, :cond_6

    instance-of v0, p0, Lcom/miui/autotask/taskitem/BluetoothConnectDeviceConditionItem;

    if-eqz v0, :cond_5

    new-instance v0, Lcom/miui/autotask/taskitem/BluetoothDisconnectDeviceConditionItem;

    invoke-direct {v0}, Lcom/miui/autotask/taskitem/BluetoothDisconnectDeviceConditionItem;-><init>()V

    goto :goto_1

    :cond_5
    new-instance v0, Lcom/miui/autotask/taskitem/BluetoothConnectDeviceConditionItem;

    invoke-direct {v0}, Lcom/miui/autotask/taskitem/BluetoothConnectDeviceConditionItem;-><init>()V

    :goto_1
    move-object v1, p0

    check-cast v1, Lcom/miui/autotask/taskitem/BluetoothDeviceConditionItem;

    invoke-virtual {v1}, Lcom/miui/autotask/taskitem/BluetoothDeviceConditionItem;->v()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/autotask/taskitem/BluetoothDeviceConditionItem;->A(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/miui/autotask/taskitem/BluetoothDeviceConditionItem;->w()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/autotask/taskitem/BluetoothDeviceConditionItem;->B(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/TaskItem;->j()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/miui/autotask/taskitem/TaskItem;->u(Ljava/lang/String;)V

    return-object v0

    :cond_6
    instance-of v0, p0, Lcom/miui/autotask/taskitem/WlanSpecifiedConditionItem;

    if-eqz v0, :cond_8

    instance-of v0, p0, Lcom/miui/autotask/taskitem/WlanDisconnectSpecifiedConditionItem;

    if-eqz v0, :cond_7

    new-instance v0, Lcom/miui/autotask/taskitem/WlanConnectSpecifiedConditionItem;

    invoke-direct {v0}, Lcom/miui/autotask/taskitem/WlanConnectSpecifiedConditionItem;-><init>()V

    goto :goto_2

    :cond_7
    new-instance v0, Lcom/miui/autotask/taskitem/WlanDisconnectSpecifiedConditionItem;

    invoke-direct {v0}, Lcom/miui/autotask/taskitem/WlanDisconnectSpecifiedConditionItem;-><init>()V

    :goto_2
    move-object v1, p0

    check-cast v1, Lcom/miui/autotask/taskitem/WlanSpecifiedConditionItem;

    invoke-virtual {v1}, Lcom/miui/autotask/taskitem/WlanSpecifiedConditionItem;->v()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/autotask/taskitem/WlanSpecifiedConditionItem;->x(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/miui/autotask/taskitem/WlanSpecifiedConditionItem;->w()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/autotask/taskitem/WlanSpecifiedConditionItem;->y(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/TaskItem;->j()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/miui/autotask/taskitem/TaskItem;->u(Ljava/lang/String;)V

    return-object v0

    :cond_8
    instance-of v0, p0, Lcom/miui/autotask/taskitem/BatteryConditionItem;

    if-eqz v0, :cond_b

    new-instance v0, Lcom/miui/autotask/taskitem/BatteryConditionItem;

    invoke-direct {v0}, Lcom/miui/autotask/taskitem/BatteryConditionItem;-><init>()V

    move-object v3, p0

    check-cast v3, Lcom/miui/autotask/taskitem/BatteryConditionItem;

    invoke-virtual {v3}, Lcom/miui/autotask/taskitem/BatteryConditionItem;->v()[I

    move-result-object v3

    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/TaskItem;->l()Z

    move-result p0

    if-nez p0, :cond_9

    return-object v2

    :cond_9
    const/4 p0, 0x3

    new-array p0, p0, [I

    const/4 v2, 0x0

    aget v4, v3, v2

    if-nez v4, :cond_a

    move v4, v1

    goto :goto_3

    :cond_a
    move v4, v2

    :goto_3
    aput v4, p0, v2

    const/4 v4, 0x2

    aget v5, v3, v4

    add-int/lit8 v5, v5, -0x28

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, p0, v1

    aget v1, v3, v1

    add-int/lit8 v1, v1, 0x28

    const/16 v2, 0x64

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    aput v1, p0, v4

    invoke-virtual {v0, p0}, Lcom/miui/autotask/taskitem/BatteryConditionItem;->w([I)V

    return-object v0

    :cond_b
    return-object v2
.end method

.method public static u(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/autotask/bean/c;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "DTT_DRIVER_CAR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    goto :goto_0

    :sswitch_1
    const-string v0, "DTT_WATCH_VIDEO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_2
    const-string v0, "DTT_LISTENER_MUSIC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move v3, v2

    goto :goto_0

    :sswitch_3
    const-string v0, "DTT_SAVE_POWER"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    new-instance p0, Ljava/util/ArrayList;

    packed-switch v3, :pswitch_data_0

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :pswitch_0
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/miui/autotask/bean/j;

    invoke-direct {v0}, Lcom/miui/autotask/bean/j;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/miui/autotask/bean/e;

    new-instance v1, Lcom/miui/autotask/taskitem/BluetoothDisconnectDeviceConditionItem;

    invoke-direct {v1}, Lcom/miui/autotask/taskitem/BluetoothDisconnectDeviceConditionItem;-><init>()V

    invoke-direct {v0, v1}, Lcom/miui/autotask/bean/e;-><init>(Lcom/miui/autotask/taskitem/TaskItem;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    :pswitch_1
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/miui/autotask/bean/j;

    invoke-direct {v0}, Lcom/miui/autotask/bean/j;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/miui/autotask/bean/e;

    new-instance v1, Lcom/miui/autotask/taskitem/LeaveAppConditionItem;

    invoke-direct {v1}, Lcom/miui/autotask/taskitem/LeaveAppConditionItem;-><init>()V

    invoke-direct {v0, v1}, Lcom/miui/autotask/bean/e;-><init>(Lcom/miui/autotask/taskitem/TaskItem;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    :pswitch_2
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/miui/autotask/bean/j;

    invoke-direct {v0, v2}, Lcom/miui/autotask/bean/j;-><init>(Z)V

    invoke-virtual {v0, v2}, Lcom/miui/autotask/bean/j;->d(Z)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/miui/autotask/taskitem/BatteryConditionItem;

    invoke-direct {v0}, Lcom/miui/autotask/taskitem/BatteryConditionItem;-><init>()V

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Lcom/miui/autotask/taskitem/BatteryConditionItem;->w([I)V

    new-instance v1, Lcom/miui/autotask/bean/e;

    invoke-direct {v1, v0}, Lcom/miui/autotask/bean/e;-><init>(Lcom/miui/autotask/taskitem/TaskItem;)V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x4f63db02 -> :sswitch_3
        0x1234da95 -> :sswitch_2
        0x1775aed0 -> :sswitch_1
        0x4979b478 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x1
        0x14
        0x50
    .end array-data
.end method

.method public static v(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/-"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static w(Ljava/lang/String;Ljava/util/HashSet;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/miui/autotask/bean/r;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    new-instance v1, Lcom/miui/autotask/bean/r;

    invoke-direct {v1}, Lcom/miui/autotask/bean/r;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/autotask/bean/r;->H(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/miui/autotask/bean/r;->B(Z)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f120081

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/miui/autotask/bean/r;->G(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/miui/autotask/bean/r;->x(Z)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/miui/autotask/bean/r;->C(I)V

    invoke-virtual {v1, p0}, Lcom/miui/autotask/bean/r;->D(Ljava/lang/String;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, La4/f2;->x(Ljava/util/HashSet;)Lcom/miui/autotask/taskitem/StartActivityConditionItem;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/miui/autotask/taskitem/TaskItem;->u(Ljava/lang/String;)V

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/miui/autotask/taskitem/LocationResultItem;

    invoke-direct {v5}, Lcom/miui/autotask/taskitem/LocationResultItem;-><init>()V

    invoke-virtual {v5, v2}, Lcom/miui/autotask/taskitem/TaskItem;->u(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/miui/autotask/taskitem/LeaveAppConditionItem;

    invoke-direct {v5}, Lcom/miui/autotask/taskitem/LeaveAppConditionItem;-><init>()V

    invoke-virtual {v5, v2}, Lcom/miui/autotask/taskitem/TaskItem;->u(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Lcom/miui/autotask/taskitem/TaskItem;->q(Z)V

    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/LunchAppItem;->x()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/miui/autotask/taskitem/LunchAppItem;->D(Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/LunchAppItem;->B()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v5, p1}, Lcom/miui/autotask/taskitem/LunchAppItem;->F(Ljava/util/List;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v3}, Lcom/miui/autotask/bean/r;->z(Z)V

    invoke-virtual {v1, p0}, Lcom/miui/autotask/bean/r;->v(Ljava/util/List;)V

    invoke-virtual {v1, v0}, Lcom/miui/autotask/bean/r;->u(Ljava/util/List;)V

    invoke-virtual {v1, v4}, Lcom/miui/autotask/bean/r;->A(Ljava/util/List;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method private static x(Ljava/util/HashSet;)Lcom/miui/autotask/taskitem/StartActivityConditionItem;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/miui/autotask/taskitem/StartActivityConditionItem;"
        }
    .end annotation

    new-instance v0, Lcom/miui/autotask/taskitem/StartActivityConditionItem;

    invoke-direct {v0}, Lcom/miui/autotask/taskitem/StartActivityConditionItem;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v3

    invoke-static {v3}, Li4/a;->k(Landroid/content/Context;)Li4/a;

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    :try_start_0
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Li4/a;->f(Ljava/lang/String;)Li4/b;

    move-result-object v5

    invoke-virtual {v5}, Li4/b;->a()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v5, ""

    :goto_1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-interface {p0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p0}, Lcom/miui/autotask/taskitem/LunchAppItem;->D(Ljava/util/List;)V

    invoke-virtual {v0, v2}, Lcom/miui/autotask/taskitem/LunchAppItem;->F(Ljava/util/List;)V

    return-object v0
.end method

.method public static y(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static z(Ljava/lang/String;Ljava/util/HashSet;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/miui/autotask/bean/r;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    new-instance v1, Lcom/miui/autotask/bean/r;

    invoke-direct {v1}, Lcom/miui/autotask/bean/r;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/autotask/bean/r;->H(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/miui/autotask/bean/r;->B(Z)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f120081

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/miui/autotask/bean/r;->G(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/miui/autotask/bean/r;->x(Z)V

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Lcom/miui/autotask/bean/r;->C(I)V

    invoke-virtual {v1, p0}, Lcom/miui/autotask/bean/r;->D(Ljava/lang/String;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, La4/f2;->x(Ljava/util/HashSet;)Lcom/miui/autotask/taskitem/StartActivityConditionItem;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/miui/autotask/taskitem/TaskItem;->u(Ljava/lang/String;)V

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/miui/autotask/taskitem/EyeCareResultItem;

    invoke-direct {v5}, Lcom/miui/autotask/taskitem/EyeCareResultItem;-><init>()V

    invoke-virtual {v5, v2}, Lcom/miui/autotask/taskitem/TaskItem;->u(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/miui/autotask/taskitem/LeaveAppConditionItem;

    invoke-direct {v5}, Lcom/miui/autotask/taskitem/LeaveAppConditionItem;-><init>()V

    invoke-virtual {v5, v2}, Lcom/miui/autotask/taskitem/TaskItem;->u(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Lcom/miui/autotask/taskitem/TaskItem;->q(Z)V

    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/LunchAppItem;->x()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/miui/autotask/taskitem/LunchAppItem;->D(Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/LunchAppItem;->B()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v5, p1}, Lcom/miui/autotask/taskitem/LunchAppItem;->F(Ljava/util/List;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v3}, Lcom/miui/autotask/bean/r;->z(Z)V

    invoke-virtual {v1, p0}, Lcom/miui/autotask/bean/r;->v(Ljava/util/List;)V

    invoke-virtual {v1, v0}, Lcom/miui/autotask/bean/r;->u(Ljava/util/List;)V

    invoke-virtual {v1, v4}, Lcom/miui/autotask/bean/r;->A(Ljava/util/List;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

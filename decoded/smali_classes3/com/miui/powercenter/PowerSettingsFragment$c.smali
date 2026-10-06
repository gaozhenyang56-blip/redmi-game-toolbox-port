.class Lcom/miui/powercenter/PowerSettingsFragment$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/powercenter/PowerSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/powercenter/PowerSettingsFragment;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/PowerSettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/PowerSettingsFragment$c;->a:Lcom/miui/powercenter/PowerSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "preference_key_battery_consume_abnormal"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p1}, Lgd/c;->G2(Z)V

    goto/16 :goto_1

    :cond_0
    const-string v0, "preference_key_settings_5g_save"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/powercenter/PowerSettingsFragment$c;->a:Lcom/miui/powercenter/PowerSettingsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1}, Lme/h;->l(Landroid/content/Context;I)V

    goto/16 :goto_1

    :cond_1
    iget-object p1, p0, Lcom/miui/powercenter/PowerSettingsFragment$c;->a:Lcom/miui/powercenter/PowerSettingsFragment;

    invoke-static {p1}, Lcom/miui/powercenter/PowerSettingsFragment;->d0(Lcom/miui/powercenter/PowerSettingsFragment;)V

    goto/16 :goto_1

    :cond_2
    const-string v0, "preference_key_battery_power_save_suggest"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p1}, Lgd/c;->H2(Z)V

    goto/16 :goto_1

    :cond_3
    const-string v0, "preference_key_super_wireless_charge_noti"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p1}, Lgd/c;->P2(Z)V

    goto/16 :goto_1

    :cond_4
    const-string v0, "preference_key_super_wireless_charging"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p1, p0, Lcom/miui/powercenter/PowerSettingsFragment$c;->a:Lcom/miui/powercenter/PowerSettingsFragment;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {p1, p2}, Lcom/miui/powercenter/PowerSettingsFragment;->o0(Lcom/miui/powercenter/PowerSettingsFragment;Z)V

    goto/16 :goto_1

    :cond_5
    const-string v0, "key_low_battery_fast_charge"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object p1, p0, Lcom/miui/powercenter/PowerSettingsFragment$c;->a:Lcom/miui/powercenter/PowerSettingsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {p1, p2}, Lme/w;->L0(Landroid/content/Context;Z)V

    goto :goto_1

    :cond_6
    const-string v0, "preference_key_settings_night_save"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object p1, p0, Lcom/miui/powercenter/PowerSettingsFragment$c;->a:Lcom/miui/powercenter/PowerSettingsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const-string v0, "sec_pc_config_scenario_policies_open"

    :goto_0
    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_7
    const-string v0, "preference_key_deep_save_memory_clean_in_lockscreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object p1, p0, Lcom/miui/powercenter/PowerSettingsFragment$c;->a:Lcom/miui/powercenter/PowerSettingsFragment;

    invoke-static {p1}, Lcom/miui/powercenter/PowerSettingsFragment;->B0(Lcom/miui/powercenter/PowerSettingsFragment;)Lmiuix/preference/DropDownPreference;

    move-result-object p1

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lmiuix/preference/DropDownPreference;->D(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/powercenter/PowerSettingsFragment$c;->a:Lcom/miui/powercenter/PowerSettingsFragment;

    invoke-static {p1}, Lcom/miui/powercenter/PowerSettingsFragment;->B0(Lcom/miui/powercenter/PowerSettingsFragment;)Lmiuix/preference/DropDownPreference;

    move-result-object p2

    invoke-virtual {p2}, Lmiuix/preference/DropDownPreference;->s()I

    move-result p2

    invoke-static {p1, p2}, Lcom/miui/powercenter/PowerSettingsFragment;->D0(Lcom/miui/powercenter/PowerSettingsFragment;I)I

    iget-object p1, p0, Lcom/miui/powercenter/PowerSettingsFragment$c;->a:Lcom/miui/powercenter/PowerSettingsFragment;

    invoke-static {p1}, Lcom/miui/powercenter/PowerSettingsFragment;->E0(Lcom/miui/powercenter/PowerSettingsFragment;)[I

    move-result-object p1

    iget-object p2, p0, Lcom/miui/powercenter/PowerSettingsFragment$c;->a:Lcom/miui/powercenter/PowerSettingsFragment;

    invoke-static {p2}, Lcom/miui/powercenter/PowerSettingsFragment;->C0(Lcom/miui/powercenter/PowerSettingsFragment;)I

    move-result p2

    aget p1, p1, p2

    mul-int/lit8 p1, p1, 0x3c

    invoke-static {p1}, Lgd/c;->j2(I)V

    goto :goto_1

    :cond_8
    const-string v0, "preference_key_settings_low_temperature"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/miui/powercenter/PowerSettingsFragment$c;->a:Lcom/miui/powercenter/PowerSettingsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const-string v0, "pc_low_temperature_extreme_endurance_switch"

    goto :goto_0

    :cond_9
    :goto_1
    return v1
.end method

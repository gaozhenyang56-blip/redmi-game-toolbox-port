.class Lcom/miui/powercenter/PowerSettingsFragment$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$d;


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

    iput-object p1, p0, Lcom/miui/powercenter/PowerSettingsFragment$d;->a:Lcom/miui/powercenter/PowerSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "preference_key_deep_save_memory_clean_in_lockscreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/miui/powercenter/PowerSettingsFragment$d;->a:Lcom/miui/powercenter/PowerSettingsFragment;

    invoke-static {p1}, Lcom/miui/powercenter/PowerSettingsFragment;->F0(Lcom/miui/powercenter/PowerSettingsFragment;)V

    goto/16 :goto_0

    :cond_0
    const-string v0, "preference_key_boot_shutdown_ontime"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/miui/powercenter/PowerSettingsFragment$d;->a:Lcom/miui/powercenter/PowerSettingsFragment;

    invoke-static {p1}, Lcom/miui/powercenter/PowerSettingsFragment;->G0(Lcom/miui/powercenter/PowerSettingsFragment;)V

    goto/16 :goto_0

    :cond_1
    const-string v0, "preference_key_battery_style"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/miui/powercenter/PowerSettingsFragment$d;->a:Lcom/miui/powercenter/PowerSettingsFragment;

    invoke-static {p1}, Lcom/miui/powercenter/PowerSettingsFragment;->H0(Lcom/miui/powercenter/PowerSettingsFragment;)V

    goto/16 :goto_0

    :cond_2
    const-string v0, "preference_key_settings_power_save"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/miui/powercenter/PowerSettingsFragment$d;->a:Lcom/miui/powercenter/PowerSettingsFragment;

    invoke-static {p1}, Lcom/miui/powercenter/PowerSettingsFragment;->I0(Lcom/miui/powercenter/PowerSettingsFragment;)V

    goto :goto_0

    :cond_3
    const-string v0, "preference_key_settings_super_save"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p1, p0, Lcom/miui/powercenter/PowerSettingsFragment$d;->a:Lcom/miui/powercenter/PowerSettingsFragment;

    invoke-static {p1}, Lcom/miui/powercenter/PowerSettingsFragment;->e0(Lcom/miui/powercenter/PowerSettingsFragment;)V

    goto :goto_0

    :cond_4
    const-string v0, "preference_key_background_app_save"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p1, p0, Lcom/miui/powercenter/PowerSettingsFragment$d;->a:Lcom/miui/powercenter/PowerSettingsFragment;

    invoke-static {p1}, Lcom/miui/powercenter/PowerSettingsFragment;->f0(Lcom/miui/powercenter/PowerSettingsFragment;)V

    goto :goto_0

    :cond_5
    const-string v0, "preference_key_config_scenario_policies"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object p1, p0, Lcom/miui/powercenter/PowerSettingsFragment$d;->a:Lcom/miui/powercenter/PowerSettingsFragment;

    invoke-static {p1}, Lcom/miui/powercenter/PowerSettingsFragment;->g0(Lcom/miui/powercenter/PowerSettingsFragment;)V

    goto :goto_0

    :cond_6
    const-string v0, "preference_key_wireless_driver_update"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object p1, p0, Lcom/miui/powercenter/PowerSettingsFragment$d;->a:Lcom/miui/powercenter/PowerSettingsFragment;

    invoke-static {p1}, Lcom/miui/powercenter/PowerSettingsFragment;->h0(Lcom/miui/powercenter/PowerSettingsFragment;)V

    goto :goto_0

    :cond_7
    const-string v0, "preference_key_auto_task"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/powercenter/PowerSettingsFragment$d;->a:Lcom/miui/powercenter/PowerSettingsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "openFrom"

    const-string v1, "open_from_power"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/powercenter/PowerSettingsFragment$d;->a:Lcom/miui/powercenter/PowerSettingsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string p1, "auto_task"

    invoke-static {p1}, Lhd/a;->O0(Ljava/lang/String;)V

    :cond_8
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

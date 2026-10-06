.class public Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$h;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 5

    const-class v0, Lcom/miui/gamebooster/ui/WifiBoosterDetail;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$h;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;

    invoke-static {v1}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->d1(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lc7/c;->a(Landroid/app/Activity;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return v3

    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->V0(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v4, "pref_setting_detail"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance p1, Landroid/content/Intent;

    invoke-static {v1}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->d1(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Landroid/app/Activity;

    move-result-object v0

    const-class v2, Lcom/miui/gamebooster/ui/WhiteListActivity;

    invoke-direct {p1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_0
    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    :cond_1
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v4, "pref_net_booster_wifi"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance p1, Landroid/content/Intent;

    invoke-static {v1}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->d1(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {p1, v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "action_detail_wifibooster"

    :goto_1
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v4, "pref_value_performance_booster"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance p1, Landroid/content/Intent;

    invoke-static {v1}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->d1(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Landroid/app/Activity;

    move-result-object v0

    const-class v2, Lcom/miui/gamebooster/ui/CompetitionDetailActivity;

    invoke-direct {p1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v4, "pref_advanced_setting"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance p1, Landroid/content/Intent;

    invoke-static {v1}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->d1(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Landroid/app/Activity;

    move-result-object v0

    const-class v2, Lcom/miui/gamebooster/ui/AdvanceSettingsActivity;

    invoke-direct {p1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v4, "pref_function_shield"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance p1, Landroid/content/Intent;

    invoke-static {v1}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->d1(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Landroid/app/Activity;

    move-result-object v0

    const-class v2, Lcom/miui/gamebooster/ui/FunctionShieldSettingsActivity;

    invoke-direct {p1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v4, "pref_function_gwsd"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance p1, Landroid/content/Intent;

    invoke-static {v1}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->d1(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {p1, v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "action_detail_gwsd"

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "pref_game_uninstall"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    new-instance p1, Landroid/content/Intent;

    invoke-static {v1}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->d1(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Landroid/app/Activity;

    move-result-object v0

    const-class v2, Lcom/miui/gamebooster/ui/VerticalGameUninstallActivity;

    invoke-direct {p1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto/16 :goto_0

    :cond_7
    :goto_2
    return v3
.end method

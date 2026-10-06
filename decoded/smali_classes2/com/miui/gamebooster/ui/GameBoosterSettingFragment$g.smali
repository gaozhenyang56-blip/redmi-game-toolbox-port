.class public Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
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

    iput-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$g;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$g;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->d1(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lc7/c;->a(Landroid/app/Activity;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    instance-of v1, p2, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->V0(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_shield_keyboard"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    invoke-static {v0}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->i1(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Lm6/a;

    invoke-static {v1}, Lm6/a;->R(Z)V

    return v4

    :cond_2
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v5, "pref_net_booster"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v0}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->i1(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Lm6/a;

    invoke-static {v1}, Lm6/a;->n0(Z)V

    invoke-static {v0}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->h0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Lmiuix/preference/TextPreference;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return v4

    :cond_3
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v5, "pref_call_handsfree"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {v0}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->d1(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Landroid/app/Activity;

    move-result-object p1

    invoke-static {v1, p1}, La8/s;->a(ZLandroid/app/Activity;)V

    return v4

    :cond_4
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v5, "pref_game_shortcut"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 p1, 0x0

    instance-of p2, v0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;

    if-eqz p2, :cond_5

    invoke-virtual {v0}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->l1()Lcom/miui/gamebooster/service/IGameBooster;

    move-result-object p1

    :cond_5
    invoke-static {v0}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->d1(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Landroid/app/Activity;

    move-result-object p2

    invoke-static {v1, p2, p1}, La8/z0;->b(ZLandroid/app/Activity;Lcom/miui/gamebooster/service/IGameBooster;)V

    invoke-static {v0, v1}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->W0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;Z)V

    return v4

    :cond_6
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v5, "pref_slip"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {v0, v1}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->o0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;Z)Z

    invoke-static {v0}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->i1(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Lm6/a;

    invoke-static {v1}, Lm6/a;->w0(Z)V

    return v4

    :cond_7
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v5, "pref_game_box"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {v0, v1}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->q0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;Z)Z

    invoke-static {v1}, La8/z0;->c(Z)V

    return v4

    :cond_8
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v5, "pref_game_net_priority"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-static {v0}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->i1(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Lm6/a;

    invoke-static {v1}, Lm6/a;->V(Z)V

    return v4

    :cond_9
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v5, "pref_performance_booster"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    if-eqz v1, :cond_a

    invoke-static {v0}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->L0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)I

    move-result p1

    if-ne p1, v4, :cond_a

    invoke-virtual {v0}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->j1()V

    return v2

    :cond_a
    invoke-static {v0}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->L0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)I

    move-result p1

    if-ne p1, v4, :cond_b

    invoke-static {v0}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->i1(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Lm6/a;

    invoke-static {v1}, Lm6/a;->q0(Z)V

    goto :goto_1

    :cond_b
    invoke-static {v0}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->L0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_c

    :try_start_0
    invoke-virtual {v0}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->k1()Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->f1(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;)Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->e1(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    move-result-object p1

    if-eqz p1, :cond_c

    invoke-static {v0}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->e1(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;->i0(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-static {}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->t0()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    :goto_1
    return v4

    :cond_d
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v5, "pref_shortcut"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-static {v0, v1}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->B0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;Z)Z

    invoke-static {v0}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->R0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-static {v0}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->d1(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Landroid/app/Activity;

    move-result-object p1

    invoke-static {v1, p1}, La8/z0;->d(ZLandroid/app/Activity;)V

    goto/16 :goto_2

    :cond_e
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v5, "pref_game_storage"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-static {v0, v1}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->Y0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;Z)V

    goto/16 :goto_2

    :cond_f
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v5, "pref_disable_ndds_sim"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-static {v0}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->d1(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1, v1}, Lm6/a;->X(Landroid/content/Context;Z)V

    return v4

    :cond_10
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v3, "pref_smart_five_g"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p1}, Lp6/b;->h(Z)V

    return v4

    :cond_11
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v3, "pref_wlan_speed_g"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-static {v0}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->k0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object p1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p1}, Lu6/f;->c(Z)V

    goto :goto_2

    :cond_12
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v3, "pref_shoulder_key"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-static {v0}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->Z0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object p1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-static {}, Lp7/d;->b()Lp7/d;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v1}, Lp7/d;->n(Z)V

    invoke-static {}, Lp7/a;->b()Lp7/a;

    move-result-object p1

    invoke-static {v0}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->d1(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, v0, p2}, Lp7/a;->h(Landroid/content/Context;Z)V

    goto :goto_2

    :cond_13
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v3, "pref_content_setting"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-static {v0}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->T0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object p1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p1}, La8/o0;->p(Z)V

    goto :goto_2

    :cond_14
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v1, "pref_brightness"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    invoke-static {v0}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->U0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object p1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p1}, Lf6/a;->b(Z)V

    :cond_15
    :goto_2
    return v2
.end method

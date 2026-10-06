.class Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment$a;->a:Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iget-object v0, p0, Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment$a;->a:Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;->d0(Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;)Lm6/a;

    iget-object v0, p0, Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment$a;->a:Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;

    if-eqz p2, :cond_0

    invoke-static {v0}, Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;->b0(Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;->c0(Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;)I

    move-result v0

    :goto_0
    invoke-static {v0}, Lm6/a;->e0(I)V

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_auto_bright"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment$a;->a:Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;

    invoke-static {p1}, Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;->d0(Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;)Lm6/a;

    invoke-static {p2}, Lm6/a;->r0(Z)V

    return v1

    :cond_1
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "pref_eye_shield"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment$a;->a:Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;

    invoke-static {p1}, Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;->d0(Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;)Lm6/a;

    invoke-static {p2}, Lm6/a;->s0(Z)V

    if-nez p2, :cond_2

    const-string p1, "android.provider.MiuiSettings$ScreenEffect"

    const-string p2, "GAME_MODE"

    invoke-static {p1, p2}, La8/c0;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object p2, p0, Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment$a;->a:Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;

    invoke-static {p2}, Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;->h0(Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;)Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2, p1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    return v1

    :cond_3
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v3, "pref_three_finger"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p1, p0, Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment$a;->a:Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;

    invoke-static {p1}, Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;->d0(Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;)Lm6/a;

    invoke-static {p2}, Lm6/a;->u0(Z)V

    return v1

    :cond_4
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v3, "pref_pull_notification_bar"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p1, p0, Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment$a;->a:Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;

    invoke-static {p1}, Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;->d0(Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;)Lm6/a;

    invoke-static {p2}, Lm6/a;->t0(Z)V

    return v1

    :cond_5
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "pref_disable_voicetrigger"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment$a;->a:Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;

    invoke-static {p1}, Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;->d0(Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;)Lm6/a;

    invoke-static {p2}, Lm6/a;->Y(Z)V

    return v1

    :cond_6
    return v2
.end method

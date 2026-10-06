.class Lcom/miui/superpower/SuperPowerSettingsFragement$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/superpower/SuperPowerSettingsFragement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/superpower/SuperPowerSettingsFragement;


# direct methods
.method constructor <init>(Lcom/miui/superpower/SuperPowerSettingsFragement;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/superpower/SuperPowerSettingsFragement$a;->a:Lcom/miui/superpower/SuperPowerSettingsFragement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "preference_key_superpower_switch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    const-string p1, "setting"

    invoke-static {p1}, Lpg/e;->h(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/superpower/SuperPowerSettingsFragement$a;->a:Lcom/miui/superpower/SuperPowerSettingsFragement;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2, v1}, Lme/w;->F0(Landroid/content/Context;ZZ)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/superpower/SuperPowerSettingsFragement$a;->a:Lcom/miui/superpower/SuperPowerSettingsFragement;

    invoke-static {p1}, Lcom/miui/superpower/SuperPowerSettingsFragement;->a0(Lcom/miui/superpower/SuperPowerSettingsFragement;)V

    goto :goto_0

    :cond_1
    const-string v0, "preference_key_superpower_autoleave"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {p2}, Lpg/d;->e(Z)V

    :cond_2
    :goto_0
    return v1
.end method

.class public Lcom/miui/electricrisk/ElectricProtectAppFragment;
.super Lmiuix/preference/PreferenceFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/electricrisk/ElectricProtectAppFragment$b;
    }
.end annotation


# instance fields
.field private a:Landroidx/preference/CheckBoxPreference;

.field private b:Landroidx/preference/CheckBoxPreference;

.field private c:Lcom/miui/electricrisk/ElectricProtectAppFragment$b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiuix/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic a0(Lcom/miui/electricrisk/ElectricProtectAppFragment;)Landroidx/preference/CheckBoxPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/electricrisk/ElectricProtectAppFragment;->a:Landroidx/preference/CheckBoxPreference;

    return-object p0
.end method

.method static synthetic b0(Lcom/miui/electricrisk/ElectricProtectAppFragment;)Landroidx/preference/CheckBoxPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/electricrisk/ElectricProtectAppFragment;->b:Landroidx/preference/CheckBoxPreference;

    return-object p0
.end method

.method public static c0()Lcom/miui/electricrisk/ElectricProtectAppFragment;
    .locals 1

    new-instance v0, Lcom/miui/electricrisk/ElectricProtectAppFragment;

    invoke-direct {v0}, Lcom/miui/electricrisk/ElectricProtectAppFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    const p1, 0x7f150025

    invoke-virtual {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->setPreferencesFromResource(ILjava/lang/String;)V

    new-instance p1, Lcom/miui/electricrisk/ElectricProtectAppFragment$b;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/miui/electricrisk/ElectricProtectAppFragment$b;-><init>(Lcom/miui/electricrisk/ElectricProtectAppFragment;Lcom/miui/electricrisk/ElectricProtectAppFragment$a;)V

    iput-object p1, p0, Lcom/miui/electricrisk/ElectricProtectAppFragment;->c:Lcom/miui/electricrisk/ElectricProtectAppFragment$b;

    const-string p1, "key_protect_app_risk_one"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/miui/electricrisk/ElectricProtectAppFragment;->a:Landroidx/preference/CheckBoxPreference;

    const-string p1, "key_protect_app_risk_two"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/miui/electricrisk/ElectricProtectAppFragment;->b:Landroidx/preference/CheckBoxPreference;

    iget-object p1, p0, Lcom/miui/electricrisk/ElectricProtectAppFragment;->a:Landroidx/preference/CheckBoxPreference;

    iget-object p2, p0, Lcom/miui/electricrisk/ElectricProtectAppFragment;->c:Lcom/miui/electricrisk/ElectricProtectAppFragment$b;

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object p1, p0, Lcom/miui/electricrisk/ElectricProtectAppFragment;->b:Landroidx/preference/CheckBoxPreference;

    iget-object p2, p0, Lcom/miui/electricrisk/ElectricProtectAppFragment;->c:Lcom/miui/electricrisk/ElectricProtectAppFragment$b;

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    iget-object v0, p0, Lcom/miui/electricrisk/ElectricProtectAppFragment;->a:Landroidx/preference/CheckBoxPreference;

    invoke-static {}, Lcom/miui/electricrisk/h;->c()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/electricrisk/ElectricProtectAppFragment;->b:Landroidx/preference/CheckBoxPreference;

    invoke-static {}, Lcom/miui/electricrisk/h;->e()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

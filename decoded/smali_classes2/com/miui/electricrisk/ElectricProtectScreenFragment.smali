.class public Lcom/miui/electricrisk/ElectricProtectScreenFragment;
.super Lmiuix/preference/PreferenceFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/electricrisk/ElectricProtectScreenFragment$b;
    }
.end annotation


# instance fields
.field private a:Landroidx/preference/CheckBoxPreference;

.field private b:Lcom/miui/electricrisk/ElectricProtectScreenFragment$b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiuix/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic a0(Lcom/miui/electricrisk/ElectricProtectScreenFragment;)Landroidx/preference/CheckBoxPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/electricrisk/ElectricProtectScreenFragment;->a:Landroidx/preference/CheckBoxPreference;

    return-object p0
.end method

.method public static b0()Lcom/miui/electricrisk/ElectricProtectScreenFragment;
    .locals 1

    new-instance v0, Lcom/miui/electricrisk/ElectricProtectScreenFragment;

    invoke-direct {v0}, Lcom/miui/electricrisk/ElectricProtectScreenFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    const p1, 0x7f150029

    invoke-virtual {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->setPreferencesFromResource(ILjava/lang/String;)V

    new-instance p1, Lcom/miui/electricrisk/ElectricProtectScreenFragment$b;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/miui/electricrisk/ElectricProtectScreenFragment$b;-><init>(Lcom/miui/electricrisk/ElectricProtectScreenFragment;Lcom/miui/electricrisk/ElectricProtectScreenFragment$a;)V

    iput-object p1, p0, Lcom/miui/electricrisk/ElectricProtectScreenFragment;->b:Lcom/miui/electricrisk/ElectricProtectScreenFragment$b;

    const-string p1, "key_protect_screen"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/miui/electricrisk/ElectricProtectScreenFragment;->a:Landroidx/preference/CheckBoxPreference;

    iget-object p2, p0, Lcom/miui/electricrisk/ElectricProtectScreenFragment;->b:Lcom/miui/electricrisk/ElectricProtectScreenFragment$b;

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    iget-object v0, p0, Lcom/miui/electricrisk/ElectricProtectScreenFragment;->a:Landroidx/preference/CheckBoxPreference;

    invoke-static {}, Lcom/miui/electricrisk/h;->n()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.class public Lcom/miui/powercenter/fastCharge/FastChargeActivity$FastChargeFragment;
.super Lcom/miui/common/base/ui/MiuiXPreferenceFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/powercenter/fastCharge/FastChargeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FastChargeFragment"
.end annotation


# instance fields
.field private b:Lcom/miui/powercenter/fastCharge/FastChargeActivity;

.field private c:Landroidx/preference/CheckBoxPreference;

.field private d:Landroidx/preference/CheckBoxPreference;

.field private e:Lmiuix/preference/DropDownPreference;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/common/base/ui/MiuiXPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic c0(Lcom/miui/powercenter/fastCharge/FastChargeActivity$FastChargeFragment;)Lcom/miui/powercenter/fastCharge/FastChargeActivity;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/fastCharge/FastChargeActivity$FastChargeFragment;->b:Lcom/miui/powercenter/fastCharge/FastChargeActivity;

    return-object p0
.end method

.method static synthetic d0(Lcom/miui/powercenter/fastCharge/FastChargeActivity$FastChargeFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/fastCharge/FastChargeActivity$FastChargeFragment;->f:Ljava/util/List;

    return-object p0
.end method

.method private e0()V
    .locals 4

    iget-object v0, p0, Lcom/miui/powercenter/fastCharge/FastChargeActivity$FastChargeFragment;->b:Lcom/miui/powercenter/fastCharge/FastChargeActivity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030048

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/powercenter/fastCharge/FastChargeActivity$FastChargeFragment;->f:Ljava/util/List;

    const-string v1, "fast_charge_enabled"

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/miui/powercenter/fastCharge/FastChargeActivity$FastChargeFragment;->c:Landroidx/preference/CheckBoxPreference;

    const-string v1, "fast_charge_notification_enabled"

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/miui/powercenter/fastCharge/FastChargeActivity$FastChargeFragment;->d:Landroidx/preference/CheckBoxPreference;

    const-string v1, "power_threshold"

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lmiuix/preference/DropDownPreference;

    iput-object v1, p0, Lcom/miui/powercenter/fastCharge/FastChargeActivity$FastChargeFragment;->e:Lmiuix/preference/DropDownPreference;

    iget-object v1, p0, Lcom/miui/powercenter/fastCharge/FastChargeActivity$FastChargeFragment;->c:Landroidx/preference/CheckBoxPreference;

    invoke-static {}, Lgd/c;->U0()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/miui/powercenter/fastCharge/FastChargeActivity$FastChargeFragment;->d:Landroidx/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/miui/powercenter/fastCharge/FastChargeActivity$FastChargeFragment;->b:Lcom/miui/powercenter/fastCharge/FastChargeActivity;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f121045

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/miui/powercenter/fastCharge/FastChargeActivity$FastChargeFragment;->d:Landroidx/preference/CheckBoxPreference;

    invoke-static {}, Lgd/c;->V0()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/miui/powercenter/fastCharge/FastChargeActivity$FastChargeFragment;->e:Lmiuix/preference/DropDownPreference;

    new-instance v2, Lsd/a;

    iget-object v3, p0, Lcom/miui/powercenter/fastCharge/FastChargeActivity$FastChargeFragment;->b:Lcom/miui/powercenter/fastCharge/FastChargeActivity;

    invoke-direct {v2, v3, v0}, Lsd/a;-><init>(Landroid/content/Context;[Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v2}, Lmiuix/preference/DropDownPreference;->w(Landroid/widget/ArrayAdapter;)V

    iget-object v0, p0, Lcom/miui/powercenter/fastCharge/FastChargeActivity$FastChargeFragment;->e:Lmiuix/preference/DropDownPreference;

    invoke-static {}, Lgd/c;->D0()I

    move-result v1

    div-int/lit8 v1, v1, 0xa

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lmiuix/preference/DropDownPreference;->E(I)V

    iget-object v0, p0, Lcom/miui/powercenter/fastCharge/FastChargeActivity$FastChargeFragment;->c:Landroidx/preference/CheckBoxPreference;

    new-instance v1, Lcom/miui/powercenter/fastCharge/FastChargeActivity$FastChargeFragment$a;

    invoke-direct {v1, p0}, Lcom/miui/powercenter/fastCharge/FastChargeActivity$FastChargeFragment$a;-><init>(Lcom/miui/powercenter/fastCharge/FastChargeActivity$FastChargeFragment;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object v0, p0, Lcom/miui/powercenter/fastCharge/FastChargeActivity$FastChargeFragment;->d:Landroidx/preference/CheckBoxPreference;

    new-instance v1, Lcom/miui/powercenter/fastCharge/FastChargeActivity$FastChargeFragment$b;

    invoke-direct {v1, p0}, Lcom/miui/powercenter/fastCharge/FastChargeActivity$FastChargeFragment$b;-><init>(Lcom/miui/powercenter/fastCharge/FastChargeActivity$FastChargeFragment;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object v0, p0, Lcom/miui/powercenter/fastCharge/FastChargeActivity$FastChargeFragment;->e:Lmiuix/preference/DropDownPreference;

    new-instance v1, Lcom/miui/powercenter/fastCharge/FastChargeActivity$FastChargeFragment$c;

    invoke-direct {v1, p0}, Lcom/miui/powercenter/fastCharge/FastChargeActivity$FastChargeFragment$c;-><init>(Lcom/miui/powercenter/fastCharge/FastChargeActivity$FastChargeFragment;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lmiuix/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/miui/powercenter/fastCharge/FastChargeActivity;

    iput-object p1, p0, Lcom/miui/powercenter/fastCharge/FastChargeActivity$FastChargeFragment;->b:Lcom/miui/powercenter/fastCharge/FastChargeActivity;

    const p1, 0x7f150048

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->addPreferencesFromResource(I)V

    invoke-direct {p0}, Lcom/miui/powercenter/fastCharge/FastChargeActivity$FastChargeFragment;->e0()V

    return-void
.end method

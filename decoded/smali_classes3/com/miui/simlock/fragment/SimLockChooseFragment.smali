.class public Lcom/miui/simlock/fragment/SimLockChooseFragment;
.super Lcom/miui/simlock/fragment/SimLockBaseFragment;
.source "SourceFile"


# instance fields
.field private d:Landroidx/preference/Preference;

.field private e:Landroidx/preference/Preference;

.field private final f:Landroidx/preference/Preference$d;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/simlock/fragment/SimLockBaseFragment;-><init>()V

    new-instance v0, Lcom/miui/simlock/fragment/SimLockChooseFragment$a;

    invoke-direct {v0, p0}, Lcom/miui/simlock/fragment/SimLockChooseFragment$a;-><init>(Lcom/miui/simlock/fragment/SimLockChooseFragment;)V

    iput-object v0, p0, Lcom/miui/simlock/fragment/SimLockChooseFragment;->f:Landroidx/preference/Preference$d;

    return-void
.end method

.method static synthetic b0(Lcom/miui/simlock/fragment/SimLockChooseFragment;)Landroidx/preference/Preference;
    .locals 0

    iget-object p0, p0, Lcom/miui/simlock/fragment/SimLockChooseFragment;->d:Landroidx/preference/Preference;

    return-object p0
.end method

.method static synthetic c0(Lcom/miui/simlock/fragment/SimLockChooseFragment;)Landroidx/preference/Preference;
    .locals 0

    iget-object p0, p0, Lcom/miui/simlock/fragment/SimLockChooseFragment;->e:Landroidx/preference/Preference;

    return-object p0
.end method

.method private d0(Lmiui/telephony/SubscriptionInfo;Landroidx/preference/Preference;)V
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f121667

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v6

    add-int/2addr v6, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-virtual {v2, v3, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmiui/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p2, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {p1}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result p1

    invoke-virtual {v1, p1}, Lmiui/telephony/TelephonyManager;->getSimStateForSlot(I)I

    move-result p1

    const/4 v1, 0x5

    if-ne p1, v1, :cond_1

    move v0, v4

    :cond_1
    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public a0()V
    .locals 2

    iget-object v0, p0, Lcom/miui/simlock/fragment/SimLockBaseFragment;->a:Lmiui/telephony/SubscriptionManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoForSlot(I)Lmiui/telephony/SubscriptionInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/simlock/fragment/SimLockChooseFragment;->d:Landroidx/preference/Preference;

    invoke-direct {p0, v0, v1}, Lcom/miui/simlock/fragment/SimLockChooseFragment;->d0(Lmiui/telephony/SubscriptionInfo;Landroidx/preference/Preference;)V

    iget-object v0, p0, Lcom/miui/simlock/fragment/SimLockBaseFragment;->a:Lmiui/telephony/SubscriptionManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoForSlot(I)Lmiui/telephony/SubscriptionInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/simlock/fragment/SimLockChooseFragment;->e:Landroidx/preference/Preference;

    invoke-direct {p0, v0, v1}, Lcom/miui/simlock/fragment/SimLockChooseFragment;->d0(Lmiui/telephony/SubscriptionInfo;Landroidx/preference/Preference;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lmiuix/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/miui/simlock/fragment/SimLockBaseFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    const p1, 0x7f150005

    invoke-virtual {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->setPreferencesFromResource(ILjava/lang/String;)V

    const-string p1, "sim_0"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/simlock/fragment/SimLockChooseFragment;->d:Landroidx/preference/Preference;

    const-string p1, "sim_1"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/simlock/fragment/SimLockChooseFragment;->e:Landroidx/preference/Preference;

    iget-object p1, p0, Lcom/miui/simlock/fragment/SimLockChooseFragment;->d:Landroidx/preference/Preference;

    iget-object p2, p0, Lcom/miui/simlock/fragment/SimLockChooseFragment;->f:Landroidx/preference/Preference$d;

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object p1, p0, Lcom/miui/simlock/fragment/SimLockChooseFragment;->e:Landroidx/preference/Preference;

    iget-object p2, p0, Lcom/miui/simlock/fragment/SimLockChooseFragment;->f:Landroidx/preference/Preference$d;

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    invoke-virtual {p0}, Lcom/miui/simlock/fragment/SimLockChooseFragment;->a0()V

    return-void
.end method

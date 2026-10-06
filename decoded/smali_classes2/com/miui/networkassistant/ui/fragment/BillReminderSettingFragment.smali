.class public Lcom/miui/networkassistant/ui/fragment/BillReminderSettingFragment;
.super Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$c;


# static fields
.field private static final PREF_KEY_REMINDER_COUNT:Ljava/lang/String; = "pref_key_reminder_count"

.field private static final PREF_KEY_REMINDER_TYPE:Ljava/lang/String; = "pref_key_reminder_type"

.field private static final PREF_KEY_REPEAT_TYPE:Ljava/lang/String; = "pref_key_repeat_type"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private countType:[I

.field public mIsSwitchOn:Z

.field private mReminderCount:Lmiuix/preference/DropDownPreference;

.field private mReminderCountSelected:I

.field private mReminderCountType:[Ljava/lang/String;

.field private mReminderType:Lmiuix/preference/TextPreference;

.field private mRepeatType:Lmiuix/preference/TextPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/miui/networkassistant/ui/fragment/BillReminderSettingFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/networkassistant/ui/fragment/BillReminderSettingFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;-><init>()V

    const/4 v0, 0x6

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/miui/networkassistant/ui/fragment/BillReminderSettingFragment;->mReminderCountType:[Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/networkassistant/ui/fragment/BillReminderSettingFragment;->mIsSwitchOn:Z

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/BillReminderSettingFragment;->countType:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
    .end array-data
.end method

.method static synthetic access$000(Lcom/miui/networkassistant/ui/fragment/BillReminderSettingFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/BillReminderSettingFragment;->initData()V

    return-void
.end method

.method private initData()V
    .locals 3

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mServiceConnected:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getReminderCount()I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/BillReminderSettingFragment;->mReminderCountSelected:I

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/BillReminderSettingFragment;->countType:[I

    invoke-static {v1, v0}, Lcom/miui/networkassistant/utils/CollectionUtils;->getIntArrayIndex([II)I

    move-result v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/BillReminderSettingFragment;->mReminderCount:Lmiuix/preference/DropDownPreference;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/BillReminderSettingFragment;->mReminderCountType:[Ljava/lang/String;

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Lmiuix/preference/DropDownPreference;->D(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v1, v0, Lmiuix/appcompat/app/AppCompatActivity;

    if-eqz v1, :cond_1

    check-cast v0, Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->acquirePhoneNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private reportBillReminder()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-boolean v1, p0, Lcom/miui/networkassistant/ui/fragment/BillReminderSettingFragment;->mIsSwitchOn:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "bill_reminder_switch"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/BillReminderSettingFragment;->mReminderCountSelected:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "bill_reminder_count"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "bill_reminder"

    invoke-static {v1, v0}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private saveTrafficCorrectionInfo()V
    .locals 3

    invoke-static {}, Lef/x;->z()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mServiceConnected:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->saveBillReminderSwitch(Z)V

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->isDataUsageAutoCorrectionOn()Z

    move-result v1

    iget v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    invoke-interface {v0, v1, v2}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->toggleDataUsageAutoCorrection(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/miui/networkassistant/ui/fragment/BillReminderSettingFragment;->TAG:Ljava/lang/String;

    const-string v2, "toggleDataUsageAutoCorrection"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getBrand()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/BillReminderSettingFragment;->startCorrection()V

    :cond_3
    return-void
.end method

.method private startCorrection()V
    .locals 5

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mServiceConnected:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :try_start_0
    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    const/4 v2, 0x0

    iget v3, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    const/4 v4, 0x1

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->startCorrection(ZIZI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/miui/networkassistant/ui/fragment/BillReminderSettingFragment;->TAG:Ljava/lang/String;

    const-string v2, "stat Correction exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic getDefaultViewModelCreationExtras()Lp0/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Landroidx/lifecycle/j;->a(Landroidx/lifecycle/k;)Lp0/a;

    move-result-object v0

    return-object v0
.end method

.method protected getXmlPreference()I
    .locals 1

    const v0, 0x7f15001b

    return v0
.end method

.method protected initPreferenceView()V
    .locals 7

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/BillReminderSettingFragment;->mReminderCountType:[Ljava/lang/String;

    const v1, 0x7f120c95

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/BillReminderSettingFragment;->mReminderCountType:[Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    const/16 v6, 0xa

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/BillReminderSettingFragment;->mReminderCountType:[Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    const/16 v6, 0x1e

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v0, v4

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/BillReminderSettingFragment;->mReminderCountType:[Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    const/16 v6, 0x32

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v0, v4

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/BillReminderSettingFragment;->mReminderCountType:[Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    const/16 v6, 0x50

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    aput-object v2, v0, v4

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/BillReminderSettingFragment;->mReminderCountType:[Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    const/16 v3, 0x64

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v0, "pref_key_reminder_count"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/DropDownPreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/BillReminderSettingFragment;->mReminderCount:Lmiuix/preference/DropDownPreference;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/BillReminderSettingFragment;->mReminderCountType:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiuix/preference/DropDownPreference;->y([Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/BillReminderSettingFragment;->mReminderCount:Lmiuix/preference/DropDownPreference;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/BillReminderSettingFragment;->mReminderCountType:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiuix/preference/DropDownPreference;->B([Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/BillReminderSettingFragment;->mReminderCount:Lmiuix/preference/DropDownPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    const-string v0, "pref_key_reminder_type"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/TextPreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/BillReminderSettingFragment;->mReminderType:Lmiuix/preference/TextPreference;

    const-string v0, "pref_key_repeat_type"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/TextPreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/BillReminderSettingFragment;->mRepeatType:Lmiuix/preference/TextPreference;

    const v1, 0x7f12156a

    invoke-virtual {v0, v1}, Lmiuix/preference/TextPreference;->setText(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/BillReminderSettingFragment;->mReminderType:Lmiuix/preference/TextPreference;

    const v1, 0x7f120ee5

    invoke-virtual {v0, v1}, Lmiuix/preference/TextPreference;->setText(I)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onCustomizeActionBar(Landroidx/appcompat/app/ActionBar;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->onDestroy()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/BillReminderSettingFragment;->reportBillReminder()V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/BillReminderSettingFragment;->saveTrafficCorrectionInfo()V

    invoke-super {p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->onPause()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/BillReminderSettingFragment;->mReminderCount:Lmiuix/preference/DropDownPreference;

    if-ne p1, v0, :cond_0

    invoke-virtual {v0}, Lmiuix/preference/DropDownPreference;->q()[Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/networkassistant/utils/CollectionUtils;->getArrayIndex([Ljava/lang/CharSequence;Ljava/lang/String;)I

    move-result p1

    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/BillReminderSettingFragment;->countType:[I

    aget p1, p2, p1

    invoke-virtual {p0, p1}, Lcom/miui/networkassistant/ui/fragment/BillReminderSettingFragment;->onSelectReminderCount(I)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onSelectReminderCount(I)V
    .locals 3

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mServiceConnected:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getReminderCount()I

    move-result v0

    if-eq v0, p1, :cond_1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/miui/networkassistant/ui/fragment/BillReminderSettingFragment;->mReminderCountSelected:I

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/BillReminderSettingFragment;->countType:[I

    invoke-static {v0, p1}, Lcom/miui/networkassistant/utils/CollectionUtils;->getIntArrayIndex([II)I

    move-result v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/BillReminderSettingFragment;->mReminderCount:Lmiuix/preference/DropDownPreference;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/BillReminderSettingFragment;->mReminderCountType:[Ljava/lang/String;

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Lmiuix/preference/DropDownPreference;->D(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/config/SimUserInfo;->saveReminderCount(I)Z

    :cond_1
    :goto_0
    return-void
.end method

.method protected onSetTitle()I
    .locals 1

    const v0, 0x7f1200b5

    return v0
.end method

.method protected onTrafficManageServiceConnected()V
    .locals 1

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/BillReminderSettingFragment$1;

    invoke-direct {v0, p0, p0}, Lcom/miui/networkassistant/ui/fragment/BillReminderSettingFragment$1;-><init>(Lcom/miui/networkassistant/ui/fragment/BillReminderSettingFragment;Landroidx/fragment/app/Fragment;)V

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BasePreferenceFragment;->postOnUiThread(Lcom/miui/common/base/asyn/b;)V

    return-void
.end method

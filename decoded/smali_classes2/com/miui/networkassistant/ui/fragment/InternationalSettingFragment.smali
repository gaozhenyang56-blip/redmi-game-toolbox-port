.class public Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;
.super Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$c;
.implements Landroidx/preference/Preference$d;
.implements Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog$PhoneNumInputDialogListener;
.implements Lcom/miui/networkassistant/ui/presenter/IsettingsDataPresenter;
.implements Lcom/miui/networkassistant/ui/presenter/ISettingsDataView;
.implements Lcom/miui/networkassistant/ui/presenter/IOffLinePresenter;
.implements Lcom/miui/networkassistant/ui/presenter/IOffLineView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment$UiHandler;,
        Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment$MyTrafficInputDialogListener;,
        Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment$NetRunnable;
    }
.end annotation


# static fields
.field private static final ACTION_FLAG_INPUT_PHONE_NUM:I = 0x1

.field private static final MSG_TRAFFIC_MANAGE_SERVICE_CONNECTED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "NASettingFragment"

.field private static final TITLE_FILED:I = 0x7f121628

.field private static mPolicyData:Lcom/miui/networkassistant/ui/bean/PolicyCode;


# instance fields
.field private final PREF_CATEGORY_KEY_OTHER:Ljava/lang/String;

.field private final PREF_CATEGORY_KEY_TRAFFIC:Ljava/lang/String;

.field private final PREF_CATEGORY_KEY_TRAFFIC2:Ljava/lang/String;

.field private final PREF_KEY_DECLARATION:Ljava/lang/String;

.field private final PREF_KEY_IMPORTANT_DISCLAIMER:Ljava/lang/String;

.field private final PREF_KEY_LIMIT_TRAFFIC_PER_DAY:Ljava/lang/String;

.field private final PREF_KEY_LIMIT_TRAFFIC_PER_DAY2:Ljava/lang/String;

.field private final PREF_KEY_MI_SIM_SETTING:Ljava/lang/String;

.field private final PREF_KEY_MI_SIM_SETTINGS2:Ljava/lang/String;

.field private final PREF_KEY_PACKAGE_TRAFFIC:Ljava/lang/String;

.field private final PREF_KEY_PACKAGE_TRAFFIC2:Ljava/lang/String;

.field private final PREF_KEY_PRIVACY_POLICY:Ljava/lang/String;

.field private final PREF_KEY_SET_PHONE_NUMBER_SLOT1:Ljava/lang/String;

.field private final PREF_KEY_SET_PHONE_NUMBER_SLOT2:Ljava/lang/String;

.field private final PREF_KEY_TRAFFIC_CORRECTION:Ljava/lang/String;

.field private final PREF_KEY_TRAFFIC_CORRECTION2:Ljava/lang/String;

.field private final PREF_KEY_USER_AGREEMENT:Ljava/lang/String;

.field private final PREF_KEY_WITHDRAWAL_CONSENT:Ljava/lang/String;

.field private final PREF_SHOW_NETWORK_SPEED:Ljava/lang/String;

.field private final PREF_SHOW_TRAFFIC_NOTIFICATION:Ljava/lang/String;

.field private final PREF_TRAFFIC_MANAGE:Ljava/lang/String;

.field private final PREF_TRAFFIC_MANAGE2:Ljava/lang/String;

.field private inputPhoneDialog:Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;

.field private mAgreement:Landroidx/preference/Preference;

.field private mDeclarationPreference:Landroidx/preference/Preference;

.field private mDisplayTrafficInBar:I

.field private mHandler:Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment$UiHandler;

.field private mInputDialog:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

.field private mIsID:Z

.field private mLimitTrafficPreferences:[Landroidx/preference/Preference;

.field private mMiSimSettingPreferences:[Landroidx/preference/Preference;

.field private mNeedShow:Z

.field private final mNetworkSpeedObserver:Landroid/database/ContentObserver;

.field private mOffLinePresenter:Lcom/miui/networkassistant/ui/presenter/OffLinePresenter;

.field private mPackageTrafficPreferences:[Lmiuix/preference/TextPreference;

.field private final mPermanentNotificationEnableObserver:Landroid/database/ContentObserver;

.field private mPolicy:Landroidx/preference/Preference;

.field private mPresenter:Lcom/miui/networkassistant/ui/presenter/IsettingsDataPresenter;

.field private mRecommendBean:Lcom/miui/networkassistant/ui/bean/RecommendBean;

.field private mSecondCountDialog:Lcom/miui/networkassistant/ui/dialog/SecondCountDialog;

.field private mSetPhoneNum:[Landroidx/preference/Preference;

.field private mShowNetworkSpeed:Landroidx/preference/CheckBoxPreference;

.field private mShowNetworkSpeedBar:I

.field private mShowTrafficNotification:Landroidx/preference/CheckBoxPreference;

.field private mTrafficCorrectionPreferences:[Lmiuix/preference/TextPreference;

.field private mTrafficInputDialogListener:Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment$MyTrafficInputDialogListener;

.field private mTrafficManagerPreferences:[Landroidx/preference/CheckBoxPreference;

.field private mTrafficPreferenceCategorys:[Landroidx/preference/PreferenceCategory;

.field private mUserPolicy:Ljava/lang/String;

.field private mUserPrivacy:Ljava/lang/String;

.field private mWithdrawal:Landroidx/preference/Preference;

.field private needOffLine:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;-><init>()V

    const-string v0, "category_key_traffic"

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->PREF_CATEGORY_KEY_TRAFFIC:Ljava/lang/String;

    const-string v0, "pref_key_package_traffic"

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->PREF_KEY_PACKAGE_TRAFFIC:Ljava/lang/String;

    const-string v0, "pref_key_traffic_correction"

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->PREF_KEY_TRAFFIC_CORRECTION:Ljava/lang/String;

    const-string v0, "pref_key_limit_traffic_per_day"

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->PREF_KEY_LIMIT_TRAFFIC_PER_DAY:Ljava/lang/String;

    const-string v0, "pref_key_mi_sim_settings"

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->PREF_KEY_MI_SIM_SETTING:Ljava/lang/String;

    const-string v0, "pref_traffic_manage"

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->PREF_TRAFFIC_MANAGE:Ljava/lang/String;

    const-string v0, "category_key_traffic2"

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->PREF_CATEGORY_KEY_TRAFFIC2:Ljava/lang/String;

    const-string v0, "pref_key_package_traffic2"

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->PREF_KEY_PACKAGE_TRAFFIC2:Ljava/lang/String;

    const-string v0, "pref_key_traffic_correction2"

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->PREF_KEY_TRAFFIC_CORRECTION2:Ljava/lang/String;

    const-string v0, "pref_key_limit_traffic_per_day2"

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->PREF_KEY_LIMIT_TRAFFIC_PER_DAY2:Ljava/lang/String;

    const-string v0, "pref_key_mi_sim_settings2"

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->PREF_KEY_MI_SIM_SETTINGS2:Ljava/lang/String;

    const-string v0, "pref_traffic_manage2"

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->PREF_TRAFFIC_MANAGE2:Ljava/lang/String;

    const-string v0, "category_key_other"

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->PREF_CATEGORY_KEY_OTHER:Ljava/lang/String;

    const-string v0, "pref_show_traffic_notification"

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->PREF_SHOW_TRAFFIC_NOTIFICATION:Ljava/lang/String;

    const-string v0, "pref_show_traffic_speed_state"

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->PREF_SHOW_NETWORK_SPEED:Ljava/lang/String;

    const-string v0, "pref_key_declaration"

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->PREF_KEY_DECLARATION:Ljava/lang/String;

    const-string v0, "pref_key_important_disclaimer"

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->PREF_KEY_IMPORTANT_DISCLAIMER:Ljava/lang/String;

    const-string v0, "pref_key_user_agreement"

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->PREF_KEY_USER_AGREEMENT:Ljava/lang/String;

    const-string v0, "pref_key_privacy_policy"

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->PREF_KEY_PRIVACY_POLICY:Ljava/lang/String;

    const-string v0, "pref_key_withdrawal_consent"

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->PREF_KEY_WITHDRAWAL_CONSENT:Ljava/lang/String;

    const-string v0, "pref_key_set_phone_number_slot1"

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->PREF_KEY_SET_PHONE_NUMBER_SLOT1:Ljava/lang/String;

    const-string v0, "pref_key_set_phone_number_slot2"

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->PREF_KEY_SET_PHONE_NUMBER_SLOT2:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v1, v0, [Landroidx/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mTrafficPreferenceCategorys:[Landroidx/preference/PreferenceCategory;

    new-array v1, v0, [Landroidx/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mTrafficManagerPreferences:[Landroidx/preference/CheckBoxPreference;

    new-array v1, v0, [Lmiuix/preference/TextPreference;

    iput-object v1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mPackageTrafficPreferences:[Lmiuix/preference/TextPreference;

    new-array v1, v0, [Lmiuix/preference/TextPreference;

    iput-object v1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mTrafficCorrectionPreferences:[Lmiuix/preference/TextPreference;

    new-array v1, v0, [Landroidx/preference/Preference;

    iput-object v1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mLimitTrafficPreferences:[Landroidx/preference/Preference;

    new-array v1, v0, [Landroidx/preference/Preference;

    iput-object v1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mMiSimSettingPreferences:[Landroidx/preference/Preference;

    const-string v1, "ID"

    invoke-static {v1}, Lmiui/os/Build;->checkRegion(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mIsID:Z

    new-array v0, v0, [Landroidx/preference/Preference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mSetPhoneNum:[Landroidx/preference/Preference;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mNeedShow:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->needOffLine:Z

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment$3;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mHandler:Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment$UiHandler;

    invoke-direct {v0, p0, v1}, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment$3;-><init>(Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mPermanentNotificationEnableObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment$4;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mHandler:Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment$UiHandler;

    invoke-direct {v0, p0, v1}, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment$4;-><init>(Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mNetworkSpeedObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/miui/common/base/ui/BasePreferenceFragment;->isAttatched()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mServiceConnected:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;)I
    .locals 0

    iget p0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    return p0
.end method

.method static synthetic access$1200(Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;)Lcom/miui/networkassistant/service/ITrafficManageBinder;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->initData()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->showNoNetDialog()V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->postWithDrawal()V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mIsID:Z

    return p0
.end method

.method static synthetic access$500()Ljava/util/HashMap;
    .locals 1

    invoke-static {}, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->buildWithDrawalParameters()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/miui/common/base/ui/BasePreferenceFragment;->isAttatched()Z

    move-result p0

    return p0
.end method

.method static synthetic access$700()Lcom/miui/networkassistant/ui/bean/PolicyCode;
    .locals 1

    sget-object v0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mPolicyData:Lcom/miui/networkassistant/ui/bean/PolicyCode;

    return-object v0
.end method

.method static synthetic access$702(Lcom/miui/networkassistant/ui/bean/PolicyCode;)Lcom/miui/networkassistant/ui/bean/PolicyCode;
    .locals 0

    sput-object p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mPolicyData:Lcom/miui/networkassistant/ui/bean/PolicyCode;

    return-object p0
.end method

.method static synthetic access$800(Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->initTrafficNotificationCheckboxPref()V

    return-void
.end method

.method static synthetic access$900(Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->initNetworkSpeedCheckboxPref()V

    return-void
.end method

.method public static synthetic b0(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->lambda$withDrawal$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private buildPreWithDrawalParameters()Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Ly4/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "uuid"

    const-string v5, "oaid"

    if-nez v3, :cond_0

    invoke-virtual {v2, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/miui/networkassistant/utils/SettingsUtils;->INSTANCE:Lcom/miui/networkassistant/utils/SettingsUtils;

    invoke-virtual {v3}, Lcom/miui/networkassistant/utils/SettingsUtils;->getUUID()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v3}, Lcom/miui/networkassistant/utils/SettingsUtils;->getUUID()Ljava/lang/String;

    move-result-object v6

    :cond_1
    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v6, "accountValue"

    const-string v7, "accountType"

    if-nez v3, :cond_2

    invoke-virtual {v0, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/miui/networkassistant/utils/SettingsUtils;->INSTANCE:Lcom/miui/networkassistant/utils/SettingsUtils;

    invoke-virtual {v1}, Lcom/miui/networkassistant/utils/SettingsUtils;->getUUID()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    const-string v1, "language"

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "country"

    const-string v3, "Indonesia"

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "pageIndex"

    const-string v3, "home"

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    const-string v1, "operateType"

    const-string v3, "query"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "commonParameters"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "timestamp"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/miui/networkassistant/utils/IDPhoneNumberUtil;->createLinkString(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/miui/networkassistant/utils/SignatureUtils;->getSignatureResults(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sign"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "buildPreWithDrawalParameters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NASettingFragment"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private buildRecommendParameters()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "location"

    const-string v2, "toolList"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "language"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v2}, Ly4/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "oaid"

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/miui/networkassistant/utils/SettingsUtils;->INSTANCE:Lcom/miui/networkassistant/utils/SettingsUtils;

    invoke-virtual {v2}, Lcom/miui/networkassistant/utils/SettingsUtils;->getUUID()Ljava/lang/String;

    move-result-object v2

    const-string v3, "uuid"

    :goto_0
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lx4/f1;->r(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const-string v3, "appVersion"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-static {}, Lx4/t;->h()I

    move-result v2

    const-string v3, "miuiVersion"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v2}, Lx4/a0;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "device"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    const-string v3, "country"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "pageIndex"

    const-string v3, "settings"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "commonParameters"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static buildWithDrawalParameters()Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    invoke-static {v1}, Ly4/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "accountValue"

    const-string v5, "accountType"

    if-nez v3, :cond_0

    const-string v3, "oaid"

    invoke-virtual {v0, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    const-string v1, "uuid"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/miui/networkassistant/utils/SettingsUtils;->INSTANCE:Lcom/miui/networkassistant/utils/SettingsUtils;

    invoke-virtual {v3}, Lcom/miui/networkassistant/utils/SettingsUtils;->getUUID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/miui/networkassistant/utils/SettingsUtils;->getUUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_0
    :try_start_0
    const-string v1, "language"

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "country"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "pageIndex"

    const-string v3, "home"

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    const-string v1, "operateType"

    const-string v3, "withdraw"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "commonParameters"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "timestamp"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/miui/networkassistant/utils/IDPhoneNumberUtil;->createLinkString(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/miui/networkassistant/utils/SignatureUtils;->getSignatureResults(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sign"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static synthetic c0(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->lambda$withDrawal$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic d0()V
    .locals 0

    invoke-static {}, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->lambda$getPreWithDrawal$2()V

    return-void
.end method

.method private getPreWithDrawal()V
    .locals 1

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/d;

    invoke-direct {v0}, Lcom/miui/networkassistant/ui/fragment/d;-><init>()V

    invoke-static {v0}, Lcom/miui/networkassistant/ui/thread/ThreadPool;->runOnPool(Ljava/lang/Runnable;)V

    return-void
.end method

.method private initData()V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mServiceConnected:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/common/base/ui/BasePreferenceFragment;->isAttatched()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimCardHelper:Lcom/miui/networkassistant/dual/SimCardHelper;

    invoke-virtual {v0}, Lcom/miui/networkassistant/dual/SimCardHelper;->isDualSimInserted()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->setSimTitle()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->initSimRelated(I)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->initSimRelated(I)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->initSimRelated(I)V

    iget v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->removeNoSimCardCategory(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private initNetworkSpeedCheckboxPref()V
    .locals 4

    iget-object v0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "status_bar_show_network_speed"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mShowNetworkSpeedBar:I

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mShowNetworkSpeed:Landroidx/preference/CheckBoxPreference;

    const/4 v3, 0x1

    if-ne v3, v0, :cond_0

    move v2, v3

    :cond_0
    invoke-virtual {v1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method private initPurchasePreference()V
    .locals 4

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mIsID:Z

    if-eqz v0, :cond_5

    invoke-static {}, La8/z;->d()Z

    move-result v0

    if-nez v0, :cond_5

    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimCardHelper:Lcom/miui/networkassistant/dual/SimCardHelper;

    invoke-virtual {v0}, Lcom/miui/networkassistant/dual/SimCardHelper;->isSim1Inserted()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mSetPhoneNum:[Landroidx/preference/Preference;

    const-string v2, "pref_key_set_phone_number_slot1"

    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mSetPhoneNum:[Landroidx/preference/Preference;

    aget-object v0, v0, v3

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mSetPhoneNum:[Landroidx/preference/Preference;

    aget-object v0, v0, v3

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimCardHelper:Lcom/miui/networkassistant/dual/SimCardHelper;

    invoke-virtual {v0}, Lcom/miui/networkassistant/dual/SimCardHelper;->isSim2Inserted()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mSetPhoneNum:[Landroidx/preference/Preference;

    const-string v2, "pref_key_set_phone_number_slot2"

    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mSetPhoneNum:[Landroidx/preference/Preference;

    aget-object v0, v0, v1

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mSetPhoneNum:[Landroidx/preference/Preference;

    aget-object v0, v0, v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_2
    const-string v0, "pref_key_user_agreement"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mAgreement:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mAgreement:Landroidx/preference/Preference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120403

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const-string v0, "pref_key_privacy_policy"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mPolicy:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mPolicy:Landroidx/preference/Preference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120404

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const-string v0, "pref_key_withdrawal_consent"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mWithdrawal:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mWithdrawal:Landroidx/preference/Preference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120402

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimCardHelper:Lcom/miui/networkassistant/dual/SimCardHelper;

    invoke-virtual {v0}, Lcom/miui/networkassistant/dual/SimCardHelper;->isSim2Inserted()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mSetPhoneNum:[Landroidx/preference/Preference;

    aget-object v0, v0, v1

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mTrafficPreferenceCategorys:[Landroidx/preference/PreferenceCategory;

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :goto_0
    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mIsID:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mNeedShow:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mAgreement:Landroidx/preference/Preference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mPolicy:Landroidx/preference/Preference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mWithdrawal:Landroidx/preference/Preference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    goto :goto_1

    :cond_4
    const-string v0, "category_key_other"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mAgreement:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mPolicy:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mWithdrawal:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_5
    :goto_1
    return-void
.end method

.method private initSimRelated(I)V
    .locals 8

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->hasImsi()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Lcom/miui/networkassistant/config/SimUserInfo;->isTrafficManageControlEnable()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    iget-boolean v4, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mIsID:Z

    if-eqz v4, :cond_3

    invoke-static {}, La8/z;->d()Z

    move-result v4

    if-nez v4, :cond_3

    sget-boolean v4, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v4, :cond_3

    if-eqz v3, :cond_2

    const-wide/16 v4, 0x1

    goto :goto_1

    :cond_2
    const-wide/16 v4, 0x0

    :goto_1
    const-string v6, "traffic_monitor"

    invoke-static {v6, v4, v5}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordNumericEvent(Ljava/lang/String;J)V

    :cond_3
    iget-object v4, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v4, p1}, Lcom/miui/networkassistant/utils/MiSimUtil;->isMiSimEnable(Landroid/content/Context;I)Z

    move-result v4

    iget-object v5, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object v5, v5, p1

    invoke-virtual {v5}, Lcom/miui/networkassistant/config/SimUserInfo;->isNotLimitCardEnable()Z

    move-result v5

    iget-object v6, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mTrafficManagerPreferences:[Landroidx/preference/CheckBoxPreference;

    aget-object v6, v6, p1

    invoke-virtual {v6, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    invoke-direct {p0, p1, v3}, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->updateTrafficPreference(IZ)V

    if-eqz v4, :cond_5

    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mMiSimSettingPreferences:[Landroidx/preference/Preference;

    aget-object v3, v3, p1

    const v6, 0x7f1213bc

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object v7, v7, p1

    invoke-virtual {v7}, Lcom/miui/networkassistant/config/SimUserInfo;->getSimName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, ""

    goto :goto_2

    :cond_4
    iget-object v7, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object v7, v7, p1

    invoke-virtual {v7}, Lcom/miui/networkassistant/config/SimUserInfo;->getSimName()Ljava/lang/String;

    move-result-object v7

    :goto_2
    aput-object v7, v1, v2

    invoke-virtual {p0, v6, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mTrafficPreferenceCategorys:[Landroidx/preference/PreferenceCategory;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mTrafficManagerPreferences:[Landroidx/preference/CheckBoxPreference;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_3

    :cond_5
    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mTrafficPreferenceCategorys:[Landroidx/preference/PreferenceCategory;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mTrafficManagerPreferences:[Landroidx/preference/CheckBoxPreference;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :goto_3
    if-eqz v4, :cond_6

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mTrafficPreferenceCategorys:[Landroidx/preference/PreferenceCategory;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mPackageTrafficPreferences:[Lmiuix/preference/TextPreference;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mTrafficPreferenceCategorys:[Landroidx/preference/PreferenceCategory;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mMiSimSettingPreferences:[Landroidx/preference/Preference;

    aget-object v2, v2, p1

    goto :goto_4

    :cond_6
    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mTrafficPreferenceCategorys:[Landroidx/preference/PreferenceCategory;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mMiSimSettingPreferences:[Landroidx/preference/Preference;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mTrafficPreferenceCategorys:[Landroidx/preference/PreferenceCategory;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mPackageTrafficPreferences:[Lmiuix/preference/TextPreference;

    aget-object v2, v2, p1

    :goto_4
    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->isBrandSetted()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mPackageTrafficPreferences:[Lmiuix/preference/TextPreference;

    aget-object v1, v1, p1

    const v2, 0x7f121ad5

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setTitle(I)V

    :cond_7
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->isTotalDataUsageSetted(I)Z

    move-result v1

    if-eqz v1, :cond_8

    if-eqz v0, :cond_8

    if-nez v4, :cond_8

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->showOperatorSettings(I)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mPackageTrafficPreferences:[Lmiuix/preference/TextPreference;

    aget-object v1, v1, p1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mTrafficPreferenceCategorys:[Landroidx/preference/PreferenceCategory;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mTrafficCorrectionPreferences:[Lmiuix/preference/TextPreference;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_5

    :cond_8
    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mPackageTrafficPreferences:[Lmiuix/preference/TextPreference;

    aget-object v1, v1, p1

    const v2, 0x7f1213ab

    invoke-virtual {v1, v2}, Lmiuix/preference/TextPreference;->setText(I)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mTrafficPreferenceCategorys:[Landroidx/preference/PreferenceCategory;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mTrafficCorrectionPreferences:[Lmiuix/preference/TextPreference;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :goto_5
    if-eqz v0, :cond_9

    if-nez v4, :cond_9

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->isTotalDataUsageSetted(I)Z

    move-result v0

    if-eqz v0, :cond_9

    if-nez v5, :cond_9

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mTrafficPreferenceCategorys:[Landroidx/preference/PreferenceCategory;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mLimitTrafficPreferences:[Landroidx/preference/Preference;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_6

    :cond_9
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mTrafficPreferenceCategorys:[Landroidx/preference/PreferenceCategory;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mLimitTrafficPreferences:[Landroidx/preference/Preference;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :goto_6
    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_b

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->isTotalDataUsageSetted(I)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mTrafficCorrectionPreferences:[Lmiuix/preference/TextPreference;

    aget-object p1, v0, p1

    const v0, 0x7f120c63

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(I)V

    goto :goto_7

    :cond_a
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mTrafficPreferenceCategorys:[Landroidx/preference/PreferenceCategory;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mTrafficCorrectionPreferences:[Lmiuix/preference/TextPreference;

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_b
    :goto_7
    return-void
.end method

.method private initTrafficNotificationCheckboxPref()V
    .locals 4

    iget-object v0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "status_bar_show_network_assistant"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2}, Lah/f;->a(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mDisplayTrafficInBar:I

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mShowTrafficNotification:Landroidx/preference/CheckBoxPreference;

    const/4 v3, 0x1

    if-ne v3, v0, :cond_0

    move v2, v3

    :cond_0
    invoke-virtual {v1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method private isNormalNum(Ljava/lang/String;)Z
    .locals 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/16 v2, 0xd

    const/4 v3, 0x7

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v2, :cond_4

    :cond_1
    const-string v0, "08"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/16 v4, 0xe

    const/16 v5, 0x8

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v5, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v4, :cond_4

    :cond_2
    const-string v0, "+628"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v2, :cond_4

    :cond_3
    const-string v0, "+6208"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v5, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-ge p1, v4, :cond_5

    :cond_4
    const/4 p1, 0x1

    return p1

    :cond_5
    return v1
.end method

.method private isTotalDataUsageSetted(I)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/miui/networkassistant/config/SimUserInfo;->isTotalDataUsageSetted()Z

    move-result p1

    return p1
.end method

.method private static synthetic lambda$getPreWithDrawal$2()V
    .locals 5

    const-string v0, "NASettingFragment"

    :try_start_0
    invoke-static {}, Lcom/miui/networkassistant/ui/bean/ParamsUtils;->isPreviewEnv()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "query_micard_info"

    if-eqz v1, :cond_0

    :try_start_1
    const-string v1, "https://preview-api-flow-intl.10046.xiaomimobile.com/privacy/withdraw_agree"

    invoke-static {}, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->buildWithDrawalParameters()Ljava/util/HashMap;

    move-result-object v3

    new-instance v4, Lp4/i;

    invoke-direct {v4, v2}, Lp4/i;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v1, v3, v4}, Leg/j;->f(Ljava/lang/String;Ljava/util/Map;Lp4/i;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_0
    const-string v1, "https://api-flow-intl.10046.xiaomimobile.com/privacy/withdraw_agree"

    invoke-static {}, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->buildWithDrawalParameters()Ljava/util/HashMap;

    move-result-object v3

    new-instance v4, Lp4/i;

    invoke-direct {v4, v2}, Lp4/i;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPreWithDrawal: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    const-class v3, Lcom/miui/networkassistant/ui/bean/PolicyCode;

    invoke-virtual {v2, v1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/networkassistant/ui/bean/PolicyCode;

    sput-object v1, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mPolicyData:Lcom/miui/networkassistant/ui/bean/PolicyCode;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    const-string v2, "Exception"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method

.method private static synthetic lambda$withDrawal$0(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private static synthetic lambda$withDrawal$1(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private overseaAdjustManually(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mServiceConnected:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mTrafficInputDialogListener:Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment$MyTrafficInputDialogListener;

    if-nez v0, :cond_1

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment$MyTrafficInputDialogListener;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment$MyTrafficInputDialogListener;-><init>(Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mTrafficInputDialogListener:Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment$MyTrafficInputDialogListener;

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mInputDialog:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

    if-nez v0, :cond_2

    iput p1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    new-instance p1, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

    iget-object v0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mTrafficInputDialogListener:Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment$MyTrafficInputDialogListener;

    invoke-direct {p1, v0, v1}, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;-><init>(Landroid/app/Activity;Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog$TrafficInputDialogListener;)V

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mInputDialog:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->clearInputText()V

    :goto_0
    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mInputDialog:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

    const v0, 0x7f120d48

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f120c63

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->buildInputDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private postWithDrawal()V
    .locals 1

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment$NetRunnable;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment$NetRunnable;-><init>(Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;)V

    invoke-static {v0}, Lcom/miui/networkassistant/ui/thread/ThreadPool;->runOnPool(Ljava/lang/Runnable;)V

    return-void
.end method

.method private registerNetworkSpeedObserver()V
    .locals 4

    iget-object v0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "status_bar_show_network_speed"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mNetworkSpeedObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private registerPermanentNotificationEnableObserver()V
    .locals 4

    iget-object v0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "status_bar_show_network_assistant"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mPermanentNotificationEnableObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private removeNoSimCardCategory(I)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mTrafficPreferenceCategorys:[Landroidx/preference/PreferenceCategory;

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method private setSimTitle()V
    .locals 2

    const/4 v0, 0x0

    const v1, 0x7f1206d8

    invoke-direct {p0, v0, v1}, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->setSimTitle(II)V

    const/4 v0, 0x1

    const v1, 0x7f1206d9

    invoke-direct {p0, v0, v1}, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->setSimTitle(II)V

    return-void
.end method

.method private setSimTitle(II)V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->hasImsi()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getSimName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v1

    const-string p2, "%s(%s)"

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mTrafficPreferenceCategorys:[Landroidx/preference/PreferenceCategory;

    aget-object p1, v0, p1

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private showNoNetDialog()V
    .locals 4

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    const v2, 0x7f120ea7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    const v3, 0x7f120ea5

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    const v3, 0x7f120ea4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment$2;

    invoke-direct {v3, p0}, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment$2;-><init>(Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;)V

    invoke-virtual {v1, v2, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method private showOperatorSettings(I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MIMOBILE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/miui/networkassistant/config/SimUserInfo;->isMiMobileOperatorModify()Z

    :cond_0
    return-void
.end method

.method private startPackageSettingFragment(I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isBrandSetted()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean p1, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mIsID:Z

    if-eqz p1, :cond_0

    invoke-static {}, La8/z;->d()Z

    move-result p1

    if-nez p1, :cond_0

    sget-boolean p1, Lmiui/os/Build;->IS_TABLET:Z

    if-nez p1, :cond_0

    const-wide/16 v0, 0x1

    const-string p1, "package_settings"

    invoke-static {p1, v0, v1}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordNumericEvent(Ljava/lang/String;J)V

    :cond_0
    iget-object p1, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    const-class v0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    const-class v0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;

    :goto_0
    invoke-static {p1, v0}, Lcom/miui/networkassistant/ui/base/UniversalPreferenceActivity;->startWithFragment(Landroid/app/Activity;Ljava/lang/Class;)V

    goto :goto_1

    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "sim_slot_num_tag"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    const-class v1, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;

    invoke-static {p1, v1, v0}, Lcom/miui/networkassistant/ui/base/UniversalPreferenceActivity;->startWithFragment(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;)V

    :goto_1
    return-void
.end method

.method private unRegisterNetworkSpeedObserver()V
    .locals 2

    iget-object v0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mNetworkSpeedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method private unRegisterPermanentNotificationEnableObserver()V
    .locals 2

    iget-object v0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mPermanentNotificationEnableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method private updateTrafficPreference(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mTrafficManagerPreferences:[Landroidx/preference/CheckBoxPreference;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mPackageTrafficPreferences:[Lmiuix/preference/TextPreference;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mTrafficCorrectionPreferences:[Lmiuix/preference/TextPreference;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mLimitTrafficPreferences:[Landroidx/preference/Preference;

    aget-object p1, v0, p1

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method private withDrawal()V
    .locals 8

    iget-object v0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lp4/d;->f(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->showNoNetDialog()V

    return-void

    :cond_0
    sget-object v0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mPolicyData:Lcom/miui/networkassistant/ui/bean/PolicyCode;

    const v1, 0x7f1203ff

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/bean/PolicyCode;->getRtnCode()I

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/miui/networkassistant/ui/dialog/SecondCountDialog;

    iget-object v3, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1203fd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-instance v7, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment$1;

    invoke-direct {v7, p0}, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment$1;-><init>(Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;)V

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/miui/networkassistant/ui/dialog/SecondCountDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mSecondCountDialog:Lcom/miui/networkassistant/ui/dialog/SecondCountDialog;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/dialog/SecondCountDialog;->show()V

    goto :goto_0

    :cond_1
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1203fe

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120f48

    new-instance v2, Lcom/miui/networkassistant/ui/fragment/b;

    invoke-direct {v2}, Lcom/miui/networkassistant/ui/fragment/b;-><init>()V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120499

    new-instance v2, Lcom/miui/networkassistant/ui/fragment/c;

    invoke-direct {v2}, Lcom/miui/networkassistant/ui/fragment/c;-><init>()V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    :goto_0
    return-void
.end method


# virtual methods
.method public fetchOffLine()V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mOffLinePresenter:Lcom/miui/networkassistant/ui/presenter/OffLinePresenter;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/presenter/OffLinePresenter;->fetchOffLine()V

    return-void
.end method

.method public fetchSettings()V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mPresenter:Lcom/miui/networkassistant/ui/presenter/IsettingsDataPresenter;

    invoke-interface {v0}, Lcom/miui/networkassistant/ui/presenter/IsettingsDataPresenter;->fetchSettings()V

    return-void
.end method

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

    const v0, 0x7f150037

    return v0
.end method

.method protected initPreferenceView()V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mTrafficPreferenceCategorys:[Landroidx/preference/PreferenceCategory;

    const-string v1, "category_key_traffic"

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/PreferenceCategory;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mPackageTrafficPreferences:[Lmiuix/preference/TextPreference;

    const-string v1, "pref_key_package_traffic"

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lmiuix/preference/TextPreference;

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mTrafficCorrectionPreferences:[Lmiuix/preference/TextPreference;

    const-string v1, "pref_key_traffic_correction"

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lmiuix/preference/TextPreference;

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mLimitTrafficPreferences:[Landroidx/preference/Preference;

    const-string v1, "pref_key_limit_traffic_per_day"

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mMiSimSettingPreferences:[Landroidx/preference/Preference;

    const-string v1, "pref_key_mi_sim_settings"

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mTrafficManagerPreferences:[Landroidx/preference/CheckBoxPreference;

    const-string v1, "pref_traffic_manage"

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/CheckBoxPreference;

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mPackageTrafficPreferences:[Lmiuix/preference/TextPreference;

    aget-object v0, v0, v2

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mTrafficCorrectionPreferences:[Lmiuix/preference/TextPreference;

    aget-object v0, v0, v2

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mLimitTrafficPreferences:[Landroidx/preference/Preference;

    aget-object v0, v0, v2

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mMiSimSettingPreferences:[Landroidx/preference/Preference;

    aget-object v0, v0, v2

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mTrafficManagerPreferences:[Landroidx/preference/CheckBoxPreference;

    aget-object v0, v0, v2

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mTrafficPreferenceCategorys:[Landroidx/preference/PreferenceCategory;

    const-string v1, "category_key_traffic2"

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/PreferenceCategory;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mPackageTrafficPreferences:[Lmiuix/preference/TextPreference;

    const-string v1, "pref_key_package_traffic2"

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lmiuix/preference/TextPreference;

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mTrafficCorrectionPreferences:[Lmiuix/preference/TextPreference;

    const-string v1, "pref_key_traffic_correction2"

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lmiuix/preference/TextPreference;

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mLimitTrafficPreferences:[Landroidx/preference/Preference;

    const-string v1, "pref_key_limit_traffic_per_day2"

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mMiSimSettingPreferences:[Landroidx/preference/Preference;

    const-string v1, "pref_key_mi_sim_settings2"

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mTrafficManagerPreferences:[Landroidx/preference/CheckBoxPreference;

    const-string v1, "pref_traffic_manage2"

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/CheckBoxPreference;

    aput-object v1, v0, v2

    new-instance v0, Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;-><init>(Landroid/app/Activity;Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog$PhoneNumInputDialogListener;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->inputPhoneDialog:Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;

    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_DUAL_CARD:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mPackageTrafficPreferences:[Lmiuix/preference/TextPreference;

    aget-object v0, v0, v2

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mTrafficCorrectionPreferences:[Lmiuix/preference/TextPreference;

    aget-object v0, v0, v2

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mLimitTrafficPreferences:[Landroidx/preference/Preference;

    aget-object v0, v0, v2

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mMiSimSettingPreferences:[Landroidx/preference/Preference;

    aget-object v0, v0, v2

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mTrafficManagerPreferences:[Landroidx/preference/CheckBoxPreference;

    aget-object v0, v0, v2

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mTrafficPreferenceCategorys:[Landroidx/preference/PreferenceCategory;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :goto_0
    const-string v0, "pref_show_traffic_notification"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mShowTrafficNotification:Landroidx/preference/CheckBoxPreference;

    const-string v0, "pref_show_traffic_speed_state"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mShowNetworkSpeed:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    const-string v0, "pref_key_declaration"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mDeclarationPreference:Landroidx/preference/Preference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/networkassistant/utils/DeviceUtil;->isUseControlPanel(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "category_key_other"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mShowTrafficNotification:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mShowTrafficNotification:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->initTrafficNotificationCheckboxPref()V

    :goto_1
    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mIsID:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lp4/d;->f(Landroid/content/Context;)Z

    :cond_2
    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->initNetworkSpeedCheckboxPref()V

    return-void
.end method

.method public notOffLine()V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->fetchSettings()V

    const-string v0, "NASettingFragment"

    const-string v1, "notOffLine: \u4e0d\u9700\u8981\u4e0b\u7ebf"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public offLineTraffic(Lcom/miui/networkassistant/ui/bean/PolicyCode;)V
    .locals 1
    .param p1    # Lcom/miui/networkassistant/ui/bean/PolicyCode;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->needOffLine:Z

    iget-boolean p1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mIsID:Z

    const-string p1, "NASettingFragment"

    const-string v0, "notOffLine: \u9700\u8981\u4e0b\u7ebf"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-static {}, Lcom/miui/networkassistant/ui/thread/ThreadPool;->startup()V

    invoke-super {p0, p1}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->onCreate(Landroid/os/Bundle;)V

    iget-boolean p1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mIsID:Z

    if-eqz p1, :cond_0

    invoke-static {}, La8/z;->d()Z

    move-result p1

    if-nez p1, :cond_0

    sget-boolean p1, Lmiui/os/Build;->IS_TABLET:Z

    if-nez p1, :cond_0

    new-instance p1, Lcom/miui/networkassistant/ui/presenter/SettingsDataPresenter;

    iget-object v0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    invoke-direct {p1, p0, v0}, Lcom/miui/networkassistant/ui/presenter/SettingsDataPresenter;-><init>(Lcom/miui/networkassistant/ui/presenter/ISettingsDataView;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mPresenter:Lcom/miui/networkassistant/ui/presenter/IsettingsDataPresenter;

    new-instance p1, Lcom/miui/networkassistant/ui/presenter/OffLinePresenter;

    iget-object v0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    invoke-direct {p1, p0, v0}, Lcom/miui/networkassistant/ui/presenter/OffLinePresenter;-><init>(Lcom/miui/networkassistant/ui/presenter/IOffLineView;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mOffLinePresenter:Lcom/miui/networkassistant/ui/presenter/OffLinePresenter;

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->fetchOffLine()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->getPreWithDrawal()V

    :cond_0
    new-instance p1, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment$UiHandler;

    invoke-direct {p1, p0}, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment$UiHandler;-><init>(Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;)V

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mHandler:Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment$UiHandler;

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->getPreWithDrawal()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->registerNetworkSpeedObserver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->registerPermanentNotificationEnableObserver()V

    return-void
.end method

.method protected onCustomizeActionBar(Landroidx/appcompat/app/ActionBar;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->onDestroy()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mSecondCountDialog:Lcom/miui/networkassistant/ui/dialog/SecondCountDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/dialog/SecondCountDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mPresenter:Lcom/miui/networkassistant/ui/presenter/IsettingsDataPresenter;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/miui/networkassistant/ui/view/IPresenter;->onDestroy()V

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mOffLinePresenter:Lcom/miui/networkassistant/ui/presenter/OffLinePresenter;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/presenter/OffLinePresenter;->onDestroy()V

    :cond_2
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mHandler:Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment$UiHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    sput-object v1, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mPolicyData:Lcom/miui/networkassistant/ui/bean/PolicyCode;

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->unRegisterNetworkSpeedObserver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->unRegisterPermanentNotificationEnableObserver()V

    return-void
.end method

.method public onNumUpdated(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->isNormalNum(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-static {}, Lcom/miui/networkassistant/dual/Sim;->getCurrentOptSlotNum()I

    move-result v0

    aget-object p2, p2, v0

    invoke-virtual {p2, p1}, Lcom/miui/networkassistant/config/SimUserInfo;->savePhoneNumber(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mServiceConnected:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mShowTrafficNotification:Landroidx/preference/CheckBoxPreference;

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    iget p1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mDisplayTrafficInBar:I

    if-eq p1, p2, :cond_4

    iput p2, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mDisplayTrafficInBar:I

    iget-object p1, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget p2, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mDisplayTrafficInBar:I

    const-string v0, "status_bar_show_network_assistant"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Lx4/z1;->y()I

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget p2, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mDisplayTrafficInBar:I

    invoke-static {p1, v0, p2, v2}, Lah/f;->b(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mShowNetworkSpeed:Landroidx/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_2

    iget p1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mShowNetworkSpeedBar:I

    if-eq p1, p2, :cond_4

    iput p2, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mShowNetworkSpeedBar:I

    iget-object p1, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget p2, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mShowNetworkSpeedBar:I

    const-string v0, "status_bar_show_network_speed"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mTrafficManagerPreferences:[Landroidx/preference/CheckBoxPreference;

    aget-object v3, v0, v2

    if-ne p1, v3, :cond_3

    iget-object p1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object p1, p1, v2

    invoke-virtual {p1, p2}, Lcom/miui/networkassistant/config/SimUserInfo;->setTrafficManageControlEnable(Z)Z

    invoke-direct {p0, v2, p2}, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->updateTrafficPreference(IZ)V

    goto :goto_0

    :cond_3
    aget-object v0, v0, v1

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object p1, p1, v1

    invoke-virtual {p1, p2}, Lcom/miui/networkassistant/config/SimUserInfo;->setTrafficManageControlEnable(Z)Z

    invoke-direct {p0, v1, p2}, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->updateTrafficPreference(IZ)V

    :cond_4
    :goto_0
    return v1
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 8

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mServiceConnected:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mPackageTrafficPreferences:[Lmiuix/preference/TextPreference;

    const/4 v2, 0x0

    aget-object v3, v0, v2

    if-ne p1, v3, :cond_1

    invoke-static {}, Lcom/miui/networkassistant/dual/Sim;->operateOnSlot1()V

    invoke-direct {p0, v2}, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->startPackageSettingFragment(I)V

    goto/16 :goto_8

    :cond_1
    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mTrafficCorrectionPreferences:[Lmiuix/preference/TextPreference;

    aget-object v4, v3, v2

    const-string v5, "input_package"

    const-wide/16 v6, 0x1

    if-ne p1, v4, :cond_5

    iget-object p1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object p1, p1, v2

    invoke-virtual {p1}, Lcom/miui/networkassistant/config/SimUserInfo;->isOversea()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object p1, p1, v2

    invoke-virtual {p1}, Lcom/miui/networkassistant/config/SimUserInfo;->isSmsAvailable()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {}, Lcom/miui/networkassistant/dual/Sim;->operateOnSlot1()V

    :goto_0
    iget-object p1, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    const-class v0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;

    :goto_1
    invoke-static {p1, v0}, Lcom/miui/networkassistant/ui/base/UniversalPreferenceActivity;->startWithFragment(Landroid/app/Activity;Ljava/lang/Class;)V

    goto/16 :goto_8

    :cond_3
    :goto_2
    iget-boolean p1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mIsID:Z

    if-eqz p1, :cond_4

    invoke-static {}, La8/z;->d()Z

    move-result p1

    if-nez p1, :cond_4

    sget-boolean p1, Lmiui/os/Build;->IS_TABLET:Z

    if-nez p1, :cond_4

    invoke-static {v5, v6, v7}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordNumericEvent(Ljava/lang/String;J)V

    :cond_4
    invoke-direct {p0, v2}, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->overseaAdjustManually(I)V

    goto/16 :goto_8

    :cond_5
    iget-object v4, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mDeclarationPreference:Landroidx/preference/Preference;

    if-ne p1, v4, :cond_6

    const p1, 0x7f1213cc

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f120631

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/miui/networkassistant/ui/dialog/MessageDialog;

    iget-object v3, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/miui/networkassistant/ui/dialog/MessageDialog;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2, p1, v0}, Lcom/miui/networkassistant/ui/dialog/MessageDialog;->buildShowDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_6
    aget-object v0, v0, v1

    if-ne p1, v0, :cond_7

    invoke-static {}, Lcom/miui/networkassistant/dual/Sim;->operateOnSlot2()V

    invoke-direct {p0, v1}, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->startPackageSettingFragment(I)V

    goto/16 :goto_8

    :cond_7
    aget-object v0, v3, v1

    if-ne p1, v0, :cond_b

    iget-object p1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object p1, p1, v1

    invoke-virtual {p1}, Lcom/miui/networkassistant/config/SimUserInfo;->isOversea()Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object p1, p1, v1

    invoke-virtual {p1}, Lcom/miui/networkassistant/config/SimUserInfo;->isSmsAvailable()Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_3

    :cond_8
    invoke-static {}, Lcom/miui/networkassistant/dual/Sim;->operateOnSlot2()V

    goto :goto_0

    :cond_9
    :goto_3
    iget-boolean p1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mIsID:Z

    if-eqz p1, :cond_a

    invoke-static {}, La8/z;->d()Z

    move-result p1

    if-nez p1, :cond_a

    sget-boolean p1, Lmiui/os/Build;->IS_TABLET:Z

    if-nez p1, :cond_a

    invoke-static {v5, v6, v7}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordNumericEvent(Ljava/lang/String;J)V

    :cond_a
    invoke-direct {p0, v1}, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->overseaAdjustManually(I)V

    goto/16 :goto_8

    :cond_b
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mLimitTrafficPreferences:[Landroidx/preference/Preference;

    aget-object v3, v0, v2

    const-string v4, "limited_package"

    if-ne p1, v3, :cond_d

    iget-boolean p1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mIsID:Z

    if-eqz p1, :cond_c

    invoke-static {}, La8/z;->d()Z

    move-result p1

    if-nez p1, :cond_c

    sget-boolean p1, Lmiui/os/Build;->IS_TABLET:Z

    if-nez p1, :cond_c

    invoke-static {v4, v6, v7}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordNumericEvent(Ljava/lang/String;J)V

    :cond_c
    invoke-static {}, Lcom/miui/networkassistant/dual/Sim;->operateOnSlot1()V

    :goto_4
    iget-object p1, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    const-class v0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;

    goto/16 :goto_1

    :cond_d
    aget-object v0, v0, v1

    if-ne p1, v0, :cond_f

    iget-boolean p1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mIsID:Z

    if-eqz p1, :cond_e

    invoke-static {}, La8/z;->d()Z

    move-result p1

    if-nez p1, :cond_e

    sget-boolean p1, Lmiui/os/Build;->IS_TABLET:Z

    if-nez p1, :cond_e

    invoke-static {v4, v6, v7}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordNumericEvent(Ljava/lang/String;J)V

    :cond_e
    invoke-static {}, Lcom/miui/networkassistant/dual/Sim;->operateOnSlot2()V

    goto :goto_4

    :cond_f
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mMiSimSettingPreferences:[Landroidx/preference/Preference;

    aget-object v3, v0, v2

    if-eq p1, v3, :cond_18

    aget-object v0, v0, v1

    if-ne p1, v0, :cond_10

    goto/16 :goto_7

    :cond_10
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mSetPhoneNum:[Landroidx/preference/Preference;

    aget-object v2, v0, v2

    if-ne p1, v2, :cond_11

    invoke-static {}, Lcom/miui/networkassistant/dual/Sim;->operateOnSlot1()V

    :goto_5
    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->showWriteNum()V

    goto/16 :goto_8

    :cond_11
    aget-object v0, v0, v1

    if-ne p1, v0, :cond_12

    invoke-static {}, Lcom/miui/networkassistant/dual/Sim;->operateOnSlot2()V

    goto :goto_5

    :cond_12
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mPolicy:Landroidx/preference/Preference;

    const-string v2, "android.intent.action.VIEW"

    if-ne p1, v0, :cond_14

    iget-boolean p1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mIsID:Z

    if-eqz p1, :cond_13

    invoke-static {}, La8/z;->d()Z

    move-result p1

    if-nez p1, :cond_13

    sget-boolean p1, Lmiui/os/Build;->IS_TABLET:Z

    if-nez p1, :cond_13

    const-string p1, "user_agreement"

    invoke-static {p1, v6, v7}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordNumericEvent(Ljava/lang/String;J)V

    :cond_13
    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mUserPolicy:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :goto_6
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_8

    :cond_14
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mWithdrawal:Landroidx/preference/Preference;

    if-ne p1, v0, :cond_16

    iget-boolean p1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mIsID:Z

    if-eqz p1, :cond_15

    invoke-static {}, La8/z;->d()Z

    move-result p1

    if-nez p1, :cond_15

    sget-boolean p1, Lmiui/os/Build;->IS_TABLET:Z

    if-nez p1, :cond_15

    const-string p1, "withdrawal"

    invoke-static {p1, v6, v7}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordNumericEvent(Ljava/lang/String;J)V

    :cond_15
    const-string p1, ""

    invoke-static {p1}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordCountEvent(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->withDrawal()V

    goto :goto_8

    :cond_16
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mAgreement:Landroidx/preference/Preference;

    if-ne p1, v0, :cond_19

    iget-boolean p1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mIsID:Z

    if-eqz p1, :cond_17

    invoke-static {}, La8/z;->d()Z

    move-result p1

    if-nez p1, :cond_17

    sget-boolean p1, Lmiui/os/Build;->IS_TABLET:Z

    if-nez p1, :cond_17

    const-string p1, "policy"

    invoke-static {p1, v6, v7}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordNumericEvent(Ljava/lang/String;J)V

    :cond_17
    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mUserPrivacy:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_6

    :cond_18
    :goto_7
    iget-object p1, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    const-string v0, "assistInfo"

    invoke-static {p1, v0}, Lcom/miui/networkassistant/utils/VirtualSimUtil;->startVirtualSimActivity(Landroid/content/Context;Ljava/lang/String;)V

    :cond_19
    :goto_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPreferenceClick: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NASettingFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->onResume()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->initData()V

    return-void
.end method

.method protected onSetTitle()I
    .locals 3

    iget-object v0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "extra_settings_title_res"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BasePreferenceFragment;->setTitle(I)V

    return v2

    :cond_0
    const v0, 0x7f121628

    return v0
.end method

.method protected onTrafficManageServiceConnected()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mHandler:Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment$UiHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected resetTitle()V
    .locals 0

    return-void
.end method

.method public showData(Lcom/miui/networkassistant/ui/bean/RecommendBean;)V
    .locals 5
    .param p1    # Lcom/miui/networkassistant/ui/bean/RecommendBean;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/bean/RecommendBean;->getData()Lcom/miui/networkassistant/ui/bean/RecommendData;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/bean/RecommendBean;->getData()Lcom/miui/networkassistant/ui/bean/RecommendData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/networkassistant/ui/bean/RecommendData;->getToolList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/bean/RecommendBean;->getData()Lcom/miui/networkassistant/ui/bean/RecommendData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/networkassistant/ui/bean/RecommendData;->getToolList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_3

    :goto_0
    if-ge v0, v2, :cond_2

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/bean/RecommendBean;->getData()Lcom/miui/networkassistant/ui/bean/RecommendData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/networkassistant/ui/bean/RecommendData;->getToolList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/networkassistant/ui/bean/Tool;

    invoke-virtual {v1}, Lcom/miui/networkassistant/ui/bean/Tool;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/bean/RecommendBean;->getData()Lcom/miui/networkassistant/ui/bean/RecommendData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/networkassistant/ui/bean/RecommendData;->getToolList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/networkassistant/ui/bean/Tool;

    invoke-virtual {v3}, Lcom/miui/networkassistant/ui/bean/Tool;->getRedirectUrl()Ljava/lang/String;

    move-result-object v3

    const-string v4, "userPolicy"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iput-object v3, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mUserPolicy:Ljava/lang/String;

    goto :goto_1

    :cond_0
    const-string v4, "privicyPolicy"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v3, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mUserPrivacy:Ljava/lang/String;

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mNeedShow:Z

    goto :goto_2

    :cond_3
    iput-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mNeedShow:Z

    :goto_2
    iget-object p1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimCardHelper:Lcom/miui/networkassistant/dual/SimCardHelper;

    invoke-virtual {p1}, Lcom/miui/networkassistant/dual/SimCardHelper;->isSimInserted()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->initPurchasePreference()V

    :cond_4
    return-void
.end method

.method public showError()V
    .locals 2

    const-string v0, "NASettingFragment"

    const-string v1, "showError: \u6267\u884c\u4e86"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->mNeedShow:Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimCardHelper:Lcom/miui/networkassistant/dual/SimCardHelper;

    invoke-virtual {v0}, Lcom/miui/networkassistant/dual/SimCardHelper;->isSimInserted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->initPurchasePreference()V

    :cond_0
    return-void
.end method

.method public showWriteNum()V
    .locals 6

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->inputPhoneDialog:Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1203e0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    const v3, 0x7f120c60

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1203f9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;->buildInputDialog(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->inputPhoneDialog:Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;->clearInputText()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->inputPhoneDialog:Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;->setCheckTextView()V

    return-void
.end method

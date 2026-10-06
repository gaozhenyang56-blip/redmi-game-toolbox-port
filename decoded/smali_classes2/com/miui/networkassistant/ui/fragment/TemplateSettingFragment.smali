.class public Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;
.super Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$c;
.implements Landroidx/preference/Preference$d;


# static fields
.field private static final ACTION_BILL_SMS_CONTENT:I = 0x4

.field private static final ACTION_BILL_SMS_NUM:I = 0x3

.field private static final ACTION_SMS_CONTENT:I = 0x2

.field private static final ACTION_SMS_NUM:I = 0x1

.field private static final MSG_TRAFFIC_MANAGE_SERVICE_CONNECTED:I = 0x1

.field private static final PREF_BILL_CORRECTION_CUSTOM:Ljava/lang/String; = "bill_custom"

.field private static final PREF_BILL_CORRECTION_SETTING_SWITCH:Ljava/lang/String; = "pref_bill_correction_setting_switch"

.field private static final PREF_BILL_CORRECTION_SMS_CONTENT:Ljava/lang/String; = "pref_bill_correction_sms_content"

.field private static final PREF_BILL_CORRECTION_SMS_NUMBER:Ljava/lang/String; = "pref_bill_correction_sms_number"

.field private static final PREF_CORRECTION_SETTING_SWITCH:Ljava/lang/String; = "pref_correction_setting_switch"

.field private static final PREF_CORRECTION_SMS_CONTENT:Ljava/lang/String; = "pref_correction_sms_content"

.field private static final PREF_CORRECTION_SMS_NUMBER:Ljava/lang/String; = "pref_correction_sms_number"

.field private static final PREF_TRAFFIC_CORRECTION_CUSTOM:Ljava/lang/String; = "traffic_custom"

.field private static final TAG:Ljava/lang/String; = "TemplateSettingFragment"

.field private static final TITLE_FILED:I = 0x7f121394


# instance fields
.field private mBillCustomizeTemplateSwitch:Landroidx/preference/CheckBoxPreference;

.field private mBillCustomizedSms:Z

.field private mBillInputDialog:Lcom/miui/networkassistant/ui/dialog/TextInputDialog;

.field private mBillSmsContent:Ljava/lang/String;

.field private mBillSmsContentSetting:Lmiuix/preference/TextPreference;

.field private mBillSmsNum:Ljava/lang/String;

.field private mBillSmsNumberSetting:Lmiuix/preference/TextPreference;

.field private mChanged:Z

.field private mCustomizeTemplateSwitch:Landroidx/preference/CheckBoxPreference;

.field private mHandler:Landroid/os/Handler;

.field private mInputDialog:Lcom/miui/networkassistant/ui/dialog/TextInputDialog;

.field private mIsCustomizedSms:Z

.field private mSmsContent:Ljava/lang/String;

.field private mSmsContentSetting:Lmiuix/preference/TextPreference;

.field private mSmsNum:Ljava/lang/String;

.field private mSmsNumberSetting:Lmiuix/preference/TextPreference;

.field private mTextInputDialogListener:Lcom/miui/networkassistant/ui/dialog/TextInputDialog$TextInputDialogListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mChanged:Z

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment$1;-><init>(Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mTextInputDialogListener:Lcom/miui/networkassistant/ui/dialog/TextInputDialog$TextInputDialogListener;

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment$2;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment$2;-><init>(Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$002(Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mSmsNum:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;)Lmiuix/preference/TextPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mSmsNumberSetting:Lmiuix/preference/TextPreference;

    return-object p0
.end method

.method static synthetic access$202(Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mSmsContent:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;)Lmiuix/preference/TextPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mSmsContentSetting:Lmiuix/preference/TextPreference;

    return-object p0
.end method

.method static synthetic access$402(Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mBillSmsNum:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;)Lmiuix/preference/TextPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mBillSmsNumberSetting:Lmiuix/preference/TextPreference;

    return-object p0
.end method

.method static synthetic access$602(Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mBillSmsContent:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;)Lmiuix/preference/TextPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mBillSmsContentSetting:Lmiuix/preference/TextPreference;

    return-object p0
.end method

.method static synthetic access$802(Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mChanged:Z

    return p1
.end method

.method static synthetic access$900(Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->initData()V

    return-void
.end method

.method private getDefaultSms(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_3

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "#"

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p2, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    iget v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    invoke-static {p2, v0}, Lcom/miui/networkassistant/utils/TextPrepareUtil;->getOperatorNumber(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p3, p1, v1

    :cond_1
    if-nez p4, :cond_2

    iput-object p2, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mSmsNum:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mSmsContent:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iput-object p2, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mBillSmsNum:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mBillSmsContent:Ljava/lang/String;

    :cond_3
    :goto_0
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

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isCustomizedSms()Z

    move-result v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->isBillCustomizedSms()Z

    move-result v1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mCustomizeTemplateSwitch:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mBillCustomizeTemplateSwitch:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->setCustomizedSmsEnable(Z)V

    invoke-direct {p0, v1}, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->setBillCustomizedSmsEnable(Z)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->initInstruction()V

    return-void
.end method

.method private initInstruction()V
    .locals 11

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getCustomizedSmsNum()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mSmsNum:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getCustomizedSmsContent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mSmsContent:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getBillCustomizedSmsNum()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mBillSmsNum:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getBillCustomizedSmsContent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mBillSmsContent:Ljava/lang/String;

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mTrafficCornBinders:[Lcom/miui/networkassistant/service/ITrafficCornBinder;

    iget v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v1, v1, v2

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/miui/networkassistant/service/ITrafficCornBinder;->getInstructions(I)Ljava/util/Map;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mTrafficCornBinders:[Lcom/miui/networkassistant/service/ITrafficCornBinder;

    iget v3, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v2, v2, v3

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Lcom/miui/networkassistant/service/ITrafficCornBinder;->getInstructions(I)Ljava/util/Map;

    move-result-object v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    move-object v1, v0

    :goto_0
    const-string v3, "TemplateSettingFragment"

    const-string v4, "get instructions failed"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    move-object v6, v0

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mSmsNum:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mSmsContent:Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mSmsContentSetting:Lmiuix/preference/TextPreference;

    iget-object v5, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mSmsNumberSetting:Lmiuix/preference/TextPreference;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->initInstructionByType(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lmiuix/preference/TextPreference;Lmiuix/preference/TextPreference;)V

    iget-object v7, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mBillSmsNum:Ljava/lang/String;

    iget-object v8, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mBillSmsContent:Ljava/lang/String;

    iget-object v9, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mBillSmsContentSetting:Lmiuix/preference/TextPreference;

    iget-object v10, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mBillSmsNumberSetting:Lmiuix/preference/TextPreference;

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->initInstructionByType(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lmiuix/preference/TextPreference;Lmiuix/preference/TextPreference;)V

    return-void
.end method

.method private initInstructionByType(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lmiuix/preference/TextPreference;Lmiuix/preference/TextPreference;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lmiuix/preference/TextPreference;",
            "Lmiuix/preference/TextPreference;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "#"

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p2, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    iget v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    invoke-static {p2, v0}, Lcom/miui/networkassistant/utils/TextPrepareUtil;->getOperatorNumber(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p3, p1, v1

    :cond_1
    invoke-virtual {p4, p3}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    invoke-virtual {p5, p2}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    return-void
.end method

.method private saveCustomizedData()V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mTrafficCornBinders:[Lcom/miui/networkassistant/service/ITrafficCornBinder;

    iget v3, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v2, v2, v3

    invoke-interface {v2, v0}, Lcom/miui/networkassistant/service/ITrafficCornBinder;->getInstructions(I)Ljava/util/Map;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v3, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mTrafficCornBinders:[Lcom/miui/networkassistant/service/ITrafficCornBinder;

    iget v4, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v3, v3, v4

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Lcom/miui/networkassistant/service/ITrafficCornBinder;->getInstructions(I)Ljava/util/Map;

    move-result-object v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v3

    move-object v2, v1

    :goto_0
    const-string v4, "TemplateSettingFragment"

    const-string v5, "get instructions failed"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mSmsNum:Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mSmsContent:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->getDefaultSms(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mBillSmsNum:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mBillSmsContent:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->getDefaultSms(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mSmsNum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->saveCustomizedSmsNum(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mSmsContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->saveCustomizedSmsContent(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mBillSmsNum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->saveBillCustomizedSmsNum(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mBillSmsContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->saveBillCustomizedSmsContent(Ljava/lang/String;)Z

    return-void
.end method

.method private setBillCustomizedSmsEnable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mBillSmsContentSetting:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mBillSmsNumberSetting:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method private setCustomizedSmsEnable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mSmsContentSetting:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mSmsNumberSetting:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method private trackCustomizedSms()V
    .locals 5

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mIsCustomizedSms:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficConfig;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getProvince()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v3, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getCity()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v4, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/miui/networkassistant/config/SimUserInfo;->getBrand()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mSmsNum:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mSmsContent:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->trackCustomizedSms(Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficConfig;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
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

    const v0, 0x7f15006b

    return v0
.end method

.method protected initPreferenceView()V
    .locals 4

    const-string v0, "bill_custom"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030054

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const-string v0, "traffic_custom"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const-string v0, "pref_correction_setting_switch"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mCustomizeTemplateSwitch:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mCustomizeTemplateSwitch:Landroidx/preference/CheckBoxPreference;

    const-string v0, "pref_bill_correction_setting_switch"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mBillCustomizeTemplateSwitch:Landroidx/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mCustomizeTemplateSwitch:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mBillCustomizeTemplateSwitch:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    const-string v0, "pref_correction_sms_number"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/TextPreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mSmsNumberSetting:Lmiuix/preference/TextPreference;

    const-string v0, "pref_bill_correction_sms_number"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/TextPreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mBillSmsNumberSetting:Lmiuix/preference/TextPreference;

    const-string v0, "pref_bill_correction_sms_content"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/TextPreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mBillSmsContentSetting:Lmiuix/preference/TextPreference;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mSmsNumberSetting:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mBillSmsNumberSetting:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    const-string v0, "pref_correction_sms_content"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/TextPreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mSmsContentSetting:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mBillSmsContentSetting:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    new-instance v0, Lcom/miui/networkassistant/ui/dialog/TextInputDialog;

    iget-object v1, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mTextInputDialogListener:Lcom/miui/networkassistant/ui/dialog/TextInputDialog$TextInputDialogListener;

    invoke-direct {v0, v1, v2}, Lcom/miui/networkassistant/ui/dialog/TextInputDialog;-><init>(Landroid/app/Activity;Lcom/miui/networkassistant/ui/dialog/TextInputDialog$TextInputDialogListener;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mInputDialog:Lcom/miui/networkassistant/ui/dialog/TextInputDialog;

    new-instance v0, Lcom/miui/networkassistant/ui/dialog/TextInputDialog;

    iget-object v1, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mTextInputDialogListener:Lcom/miui/networkassistant/ui/dialog/TextInputDialog$TextInputDialogListener;

    invoke-direct {v0, v1, v2}, Lcom/miui/networkassistant/ui/dialog/TextInputDialog;-><init>(Landroid/app/Activity;Lcom/miui/networkassistant/ui/dialog/TextInputDialog$TextInputDialogListener;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mBillInputDialog:Lcom/miui/networkassistant/ui/dialog/TextInputDialog;

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

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->trackCustomizedSms()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->saveCustomizedData()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mCustomizeTemplateSwitch:Landroidx/preference/CheckBoxPreference;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    iput-boolean p2, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mIsCustomizedSms:Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v2

    invoke-virtual {v0, p2}, Lcom/miui/networkassistant/config/SimUserInfo;->toggleCustomizedSms(Z)Z

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mIsCustomizedSms:Z

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->setCustomizedSmsEnable(Z)V

    iput-boolean v1, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mChanged:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "slot_num"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v3, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "operator"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v3, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getProvince()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "province"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v3, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getCity()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "city"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "click_custom_sms_status"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "click_custom_sms"

    invoke-static {v2, v0}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mBillCustomizeTemplateSwitch:Landroidx/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_1

    iput-boolean p2, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mBillCustomizedSms:Z

    iget-object p1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object p1, p1, v0

    invoke-virtual {p1, p2}, Lcom/miui/networkassistant/config/SimUserInfo;->toggleBillCustomizedSms(Z)Z

    iget-boolean p1, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mBillCustomizedSms:Z

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->setBillCustomizedSmsEnable(Z)V

    iput-boolean v1, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mChanged:Z

    :cond_1
    return v1
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 7

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mSmsContentSetting:Lmiuix/preference/TextPreference;

    const v1, 0x7f121ad3

    const v2, 0x7f121ad2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mInputDialog:Lcom/miui/networkassistant/ui/dialog/TextInputDialog;

    invoke-virtual {p1, v3}, Lcom/miui/networkassistant/ui/dialog/TextInputDialog;->setNumberText(Z)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mInputDialog:Lcom/miui/networkassistant/ui/dialog/TextInputDialog;

    const/4 v0, 0x2

    :goto_0
    invoke-virtual {p1, v2, v1, v0}, Lcom/miui/networkassistant/ui/dialog/TextInputDialog;->buildInputDialog(III)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mSmsNumberSetting:Lmiuix/preference/TextPreference;

    const v5, 0x7f121ad1

    const v6, 0x7f121ad0

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mInputDialog:Lcom/miui/networkassistant/ui/dialog/TextInputDialog;

    invoke-virtual {p1, v4}, Lcom/miui/networkassistant/ui/dialog/TextInputDialog;->setNumberText(Z)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mInputDialog:Lcom/miui/networkassistant/ui/dialog/TextInputDialog;

    invoke-virtual {p1, v6, v5, v4}, Lcom/miui/networkassistant/ui/dialog/TextInputDialog;->buildInputDialog(III)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mBillSmsNumberSetting:Lmiuix/preference/TextPreference;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mBillInputDialog:Lcom/miui/networkassistant/ui/dialog/TextInputDialog;

    invoke-virtual {p1, v4}, Lcom/miui/networkassistant/ui/dialog/TextInputDialog;->setNumberText(Z)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mBillInputDialog:Lcom/miui/networkassistant/ui/dialog/TextInputDialog;

    const/4 v0, 0x3

    invoke-virtual {p1, v6, v5, v0}, Lcom/miui/networkassistant/ui/dialog/TextInputDialog;->buildInputDialog(III)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mBillSmsContentSetting:Lmiuix/preference/TextPreference;

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mInputDialog:Lcom/miui/networkassistant/ui/dialog/TextInputDialog;

    invoke-virtual {p1, v3}, Lcom/miui/networkassistant/ui/dialog/TextInputDialog;->setNumberText(Z)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mInputDialog:Lcom/miui/networkassistant/ui/dialog/TextInputDialog;

    const/4 v0, 0x4

    goto :goto_0

    :cond_3
    :goto_1
    return v4
.end method

.method protected onSetTitle()I
    .locals 1

    const v0, 0x7f121394

    return v0
.end method

.method protected onTrafficManageServiceConnected()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mTrafficCornBinders:[Lcom/miui/networkassistant/service/ITrafficCornBinder;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

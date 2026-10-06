.class public abstract Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;
.super Lcom/miui/common/base/ui/BasePreferenceFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment$GetVirtualOperatorTask;
    }
.end annotation


# static fields
.field protected static final ACTION_FLAG_CITY:I = 0x2

.field protected static final ACTION_FLAG_OPERATOR:I = 0x3

.field protected static final ACTION_FLAG_PROVINCE:I = 0x1

.field public static final BUNDLE_KEY_FROM_NOTIFICATION:Ljava/lang/String; = "bundle_key_from_other_task"

.field public static final BUNDLE_KEY_NEED_BACK:Ljava/lang/String; = "key_back"

.field public static final BUNDLE_KEY_TRAFFIC_GUIDE:Ljava/lang/String; = "traffic_guide"

.field public static final UPDATE_OPERATOR_FROM_NOTIFICATION:Ljava/lang/String; = "update_operator"


# instance fields
.field protected mBrand:I

.field protected mCity:I

.field protected mCityCode:I

.field protected mCityMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mConn:Landroid/content/ServiceConnection;

.field private mHandler:Landroid/os/Handler;

.field private mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field protected mOperator:Ljava/lang/String;

.field protected mOperatorMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mProvince:I

.field protected mProvinceCode:I

.field protected mProvinceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mServiceConnected:Z

.field protected mSimCardHelper:Lcom/miui/networkassistant/dual/SimCardHelper;

.field protected mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

.field protected mSlotNum:I

.field protected mTrafficCornBinders:[Lcom/miui/networkassistant/service/ITrafficCornBinder;

.field protected mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

.field protected mVirtualOperatorTask:Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment$GetVirtualOperatorTask;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/miui/common/base/ui/BasePreferenceFragment;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mBrand:I

    iput v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mProvince:I

    iput v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mCity:I

    const-string v1, ""

    iput-object v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mOperator:Ljava/lang/String;

    iput v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mCityCode:I

    iput v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mProvinceCode:I

    const/4 v0, 0x2

    new-array v1, v0, [Lcom/miui/networkassistant/service/ITrafficCornBinder;

    iput-object v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mTrafficCornBinders:[Lcom/miui/networkassistant/service/ITrafficCornBinder;

    new-array v0, v0, [Lcom/miui/networkassistant/config/SimUserInfo;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment$1;-><init>(Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mConn:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/miui/networkassistant/ui/base/a;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/base/a;-><init>(Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method public static synthetic a0(Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->lambda$new$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/miui/common/base/ui/BasePreferenceFragment;->isAttatched()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;)Ljava/lang/CharSequence;
    .locals 0

    invoke-virtual {p0}, Lcom/miui/common/base/ui/BasePreferenceFragment;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/common/base/ui/BasePreferenceFragment;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method private addTipsTitleToMap(Ljava/lang/Object;Ljava/util/Map;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/util/Map<",
            "TT;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "TT;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iget-object v1, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    const v2, 0x7f121ac5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    :cond_0
    return-object v0
.end method

.method private bindTrafficManageService()V
    .locals 2

    invoke-static {}, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;->getInstance()Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;->bindTmService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method private buildLocationAlertDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/miui/networkassistant/ui/dialog/CommonDialog;

    iget-object v1, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {v0, v1, v2}, Lcom/miui/networkassistant/ui/dialog/CommonDialog;-><init>(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v1, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    const v2, 0x7f121ac6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/common/base/ui/a;->setNagetiveText(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/miui/common/base/ui/a;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/miui/common/base/ui/a;->setMessage(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/dialog/CommonDialog;->show()V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    iget p1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mProvinceCode:I

    iput p1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mProvince:I

    iget p2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mCityCode:I

    iput p2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mCity:I

    invoke-virtual {p0, p1}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->selectProvince(I)V

    goto :goto_0

    :cond_0
    const/4 p1, -0x2

    if-ne p2, p1, :cond_1

    iget-object p1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget p2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object p1, p1, p2

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/miui/networkassistant/config/SimUserInfo;->setSimLocationAlertIgnore(Z)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private setSlotNum()V
    .locals 3

    iget-object v0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/dual/SimCardHelper;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/dual/SimCardHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimCardHelper:Lcom/miui/networkassistant/dual/SimCardHelper;

    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_DUAL_CARD:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "sim_slot_num_tag"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimCardHelper:Lcom/miui/networkassistant/dual/SimCardHelper;

    invoke-virtual {v0}, Lcom/miui/networkassistant/dual/SimCardHelper;->isDualSimInsertedOne()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/miui/networkassistant/dual/Sim;->getCurrentActiveSlotNum()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/miui/networkassistant/dual/Sim;->getCurrentOptSlotNum()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimCardHelper:Lcom/miui/networkassistant/dual/SimCardHelper;

    invoke-virtual {v0}, Lcom/miui/networkassistant/dual/SimCardHelper;->isDualSimInserted()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->resetTitle()V

    :cond_2
    return-void
.end method

.method private unbindTrafficManageService()V
    .locals 2

    invoke-static {}, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;->getInstance()Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;->unbindTmService(Landroid/content/ServiceConnection;)V

    return-void
.end method


# virtual methods
.method protected cancelVirtualOperatorTask()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mVirtualOperatorTask:Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment$GetVirtualOperatorTask;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mVirtualOperatorTask:Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment$GetVirtualOperatorTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method protected exeGetVirtualOperatorTask()V
    .locals 4

    new-instance v0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment$GetVirtualOperatorTask;

    iget-object v1, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v3, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v2, v2, v3

    invoke-direct {v0, p0, v1, v2}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment$GetVirtualOperatorTask;-><init>(Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;Landroid/content/Context;Lcom/miui/networkassistant/config/SimUserInfo;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mVirtualOperatorTask:Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment$GetVirtualOperatorTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected getCityMapByProvinceId(I)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-lez p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mTrafficCornBinders:[Lcom/miui/networkassistant/service/ITrafficCornBinder;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Lcom/miui/networkassistant/service/ITrafficCornBinder;->getCities(I)Ljava/util/Map;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "TrafficRelatedPre"

    const-string v1, "getCityMapByProvinceId"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->addTipsTitleToMap(Ljava/lang/Object;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getDefaultViewModelCreationExtras()Lp0/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Landroidx/lifecycle/j;->a(Landroidx/lifecycle/k;)Lp0/a;

    move-result-object v0

    return-object v0
.end method

.method protected getOperatorMap()V
    .locals 3

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mOperatorMap:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    const v2, 0x7f121ac5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mOperatorMap:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    const v2, 0x7f120f82

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CMCC"

    invoke-virtual {v0, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mOperatorMap:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    const v2, 0x7f120f85

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UNICOM"

    invoke-virtual {v0, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mOperatorMap:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    const v2, 0x7f120f84

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "TELECOM"

    invoke-virtual {v0, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mOperatorMap:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    const v2, 0x7f120f81

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CBN"

    invoke-virtual {v0, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mOperatorMap:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    const v2, 0x7f120f83

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "MIMOBILE"

    invoke-virtual {v0, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mOperatorMap:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    const v2, 0x7f120fb5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "400"

    invoke-virtual {v0, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected getOperatorMap(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->getOperatorMap()V

    return-void
.end method

.method protected getPosByTag(Ljava/lang/Object;Ljava/util/Map;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/util/Map<",
            "TT;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0

    :cond_3
    :goto_2
    const/4 p1, -0x1

    return p1
.end method

.method protected getProvinceMap()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mTrafficCornBinders:[Lcom/miui/networkassistant/service/ITrafficCornBinder;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-interface {v0}, Lcom/miui/networkassistant/service/ITrafficCornBinder;->getProvinces()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mProvinceMap:Ljava/util/Map;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "TrafficRelatedPre"

    const-string v2, "get province map failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mProvinceMap:Ljava/util/Map;

    invoke-direct {p0, v0, v1}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->addTipsTitleToMap(Ljava/lang/Object;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mProvinceMap:Ljava/util/Map;

    return-void
.end method

.method protected getProvinceMap(I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mTrafficCornBinders:[Lcom/miui/networkassistant/service/ITrafficCornBinder;

    aget-object p1, v0, p1

    invoke-interface {p1}, Lcom/miui/networkassistant/service/ITrafficCornBinder;->getProvinces()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mProvinceMap:Ljava/util/Map;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "TrafficRelatedPre"

    const-string v1, "get province map failed"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mProvinceMap:Ljava/util/Map;

    invoke-direct {p0, p1, v0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->addTipsTitleToMap(Ljava/lang/Object;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mProvinceMap:Ljava/util/Map;

    return-void
.end method

.method public getSimCardLocation(II)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mProvinceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "location : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TrafficRelatedPre"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->getCityMapByProvinceId(I)Ljava/util/Map;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v0, p2, v1

    const/4 v0, 0x1

    aput-object p1, p2, v0

    const-string p1, "%s%s"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method protected initCardStuff()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "sim_slot_num_tag"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/miui/networkassistant/dual/Sim;->getCurrentOptSlotNum()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    iget v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    invoke-static {v0}, Lcom/miui/networkassistant/dual/Sim;->operateOnSlotNum(I)V

    iget-object v0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/miui/networkassistant/utils/NotificationUtil;->cancelNormalTotalPackageNotSetted(Landroid/content/Context;)V

    return-void
.end method

.method protected initOperator(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/common/base/ui/BasePreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->bindTrafficManageService()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/common/base/ui/BasePreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->setSlotNum()V

    iget-object p1, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/miui/networkassistant/utils/PrivacyDeclareAndAllowNetworkUtil;->showSecurityCenterAllowNetwork(Landroid/app/Activity;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->unbindTrafficManageService()V

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/analytics/AnalyticsUtil;->recordPageEnd(Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/analytics/AnalyticsUtil;->recordPageStart(Ljava/lang/String;)V

    return-void
.end method

.method protected abstract onTrafficManageServiceConnected()V
.end method

.method protected resetTitle()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment$2;

    invoke-direct {v1, p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment$2;-><init>(Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected selectProvince(I)V
    .locals 0

    return-void
.end method

.method protected setSimLocationAlertIgnore()V
    .locals 3

    iget v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mProvince:I

    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getProvince()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mCity:I

    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getCity()I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->setSimLocationAlertIgnore(Z)Z

    :cond_1
    return-void
.end method

.method protected showSimLocationErrorDialog()V
    .locals 6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "update_operator"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f121666

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mProvince:I

    iget v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mCity:I

    invoke-virtual {p0, v1, v2}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->getSimCardLocation(II)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mProvinceCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mProvinceCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",mCityCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mCityCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TrafficRelatedPre"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mProvinceCode:I

    iget v3, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mCityCode:I

    invoke-virtual {p0, v2, v3}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->getSimCardLocation(II)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v3, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    const v4, 0x7f121664

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    const/4 v1, 0x2

    aput-object v2, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :cond_0
    invoke-direct {p0, v0, v3}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->buildLocationAlertDialog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

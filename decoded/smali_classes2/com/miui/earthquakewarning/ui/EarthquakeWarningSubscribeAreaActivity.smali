.class public Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$EarthquakeWarningSubscribeAreaAdapter;,
        Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$MyCallBack;,
        Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$MainHandler;
    }
.end annotation


# static fields
.field private static final KEY_STOP_LOCATION:I = 0x3e7

.field private static final MAX_SUPPORT_CITY_COUNT:I = 0xa

.field private static NOT_REGEX_CHINESE:Ljava/lang/String; = "[^\u4e00-\u9fa5]"


# instance fields
.field private handlerThread:Landroid/os/HandlerThread;

.field private mGetLocation:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mImgLoacation:Landroid/widget/ImageView;

.field private mLocalArea:Landroid/widget/TextView;

.field private mMainHandler:Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$MainHandler;

.field private mNormalAdapter:Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$EarthquakeWarningSubscribeAreaAdapter;

.field private mNotSupport:Landroid/widget/TextView;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mScrollview:Landroidx/core/widget/NestedScrollView;

.field protected mSearchActionMode:Lmiuix/view/l;

.field private mSearchActionModeCallback:Lmiuix/view/l$b;

.field private mSearchAdapter:Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$EarthquakeWarningSubscribeAreaAdapter;

.field private mSearchResultContainer:Landroid/widget/RelativeLayout;

.field private mSearchResultTips:Landroid/widget/TextView;

.field private mSearchResultView:Lmiuix/recyclerview/widget/RecyclerView;

.field private mSearchTextWatcher:Landroid/text/TextWatcher;

.field private mSearchView:Landroid/view/View;

.field private mSelectCodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSubscribeResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/earthquakewarning/model/SaveAreaResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;->mSelectCodes:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;->mSubscribeResults:Ljava/util/List;

    new-instance v0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$MainHandler;

    invoke-direct {v0, p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$MainHandler;-><init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;)V

    iput-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;->mMainHandler:Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$MainHandler;

    new-instance v0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$6;

    invoke-direct {v0, p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$6;-><init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;)V

    iput-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$7;

    invoke-direct {v0, p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$7;-><init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;)V

    iput-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;->mSearchTextWatcher:Landroid/text/TextWatcher;

    new-instance v0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$9;

    invoke-direct {v0, p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$9;-><init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;)V

    iput-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;->mSearchActionModeCallback:Lmiuix/view/l$b;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;->mGetLocation:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;->mImgLoacation:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;)Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$MainHandler;
    .locals 0

    iget-object p0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;->mMainHandler:Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$MainHandler;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;->mSearchView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;)Lmiuix/view/l$b;
    .locals 0

    iget-object p0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;->mSearchActionModeCallback:Lmiuix/view/l$b;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;)Landroid/widget/RelativeLayout;
    .locals 0

    iget-object p0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;->mSearchResultContainer:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;)Lmiuix/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;->mSearchResultView:Lmiuix/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$1600()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;->NOT_REGEX_CHINESE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;->doSearchArea(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;->mSearchResultTips:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;)Landroidx/core/widget/NestedScrollView;
    .locals 0

    iget-object p0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;->mScrollview:Landroidx/core/widget/NestedScrollView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;->mLocalArea:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;)Landroid/text/TextWatcher;
    .locals 0

    iget-object p0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;->mSearchTextWatcher:Landroid/text/TextWatcher;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;->mSelectCodes:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;)Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$EarthquakeWarningSubscribeAreaAdapter;
    .locals 0

    iget-object p0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;->mNormalAdapter:Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$EarthquakeWarningSubscribeAreaAdapter;

    return-object p0
.end method

.method static synthetic access$600(Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;->mSubscribeResults:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$700(Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;)Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$EarthquakeWarningSubscribeAreaAdapter;
    .locals 0

    iget-object p0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;->mSearchAdapter:Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$EarthquakeWarningSubscribeAreaAdapter;

    return-object p0
.end method

.method static synthetic access$800(Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;->isDistrictSupport(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;->mNotSupport:Landroid/widget/TextView;

    return-object p0
.end method

.method private buildFocusData()V
    .locals 2

    new-instance v0, Lcom/miui/earthquakewarning/service/ManageSubscribeDataTask;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/miui/earthquakewarning/service/ManageSubscribeDataTask;-><init>(I)V

    new-instance v1, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$5;

    invoke-direct {v1, p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$5;-><init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;)V

    invoke-virtual {v0, v1}, Lcom/miui/earthquakewarning/service/ManageSubscribeDataTask;->setCallBack(Lcom/miui/earthquakewarning/service/ManageSubscribeDataTask$CallBack;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private checkSupportCityData()V
    .locals 3

    new-instance v0, Lcom/miui/earthquakewarning/service/ManageAreaDataTask;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/earthquakewarning/service/ManageAreaDataTask;-><init>(ILjava/lang/String;)V

    new-instance v1, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$3;

    invoke-direct {v1, p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$3;-><init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;)V

    invoke-virtual {v0, v1}, Lcom/miui/earthquakewarning/service/ManageAreaDataTask;->setCallBack(Lcom/miui/earthquakewarning/service/ManageAreaDataTask$CallBack;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static synthetic d0(Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;->lambda$onCreate$0(Landroid/view/View;)V

    return-void
.end method

.method public static deleteTopicService(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/earthquakewarning/service/EarthquakeWarningService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "action_unsubscribe_area"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "extra_area_code"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private doSearchArea(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/miui/earthquakewarning/service/ManageAreaDataTask;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p1}, Lcom/miui/earthquakewarning/service/ManageAreaDataTask;-><init>(ILjava/lang/String;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    new-instance p1, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$8;

    invoke-direct {p1, p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$8;-><init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;)V

    invoke-virtual {v0, p1}, Lcom/miui/earthquakewarning/service/ManageAreaDataTask;->setCallBack(Lcom/miui/earthquakewarning/service/ManageAreaDataTask$CallBack;)V

    return-void
.end method

.method private getLocation()V
    .locals 3

    invoke-static {}, Lcom/miui/earthquakewarning/utils/LocationRecordManager;->getInstance()Lcom/miui/earthquakewarning/utils/LocationRecordManager;

    move-result-object v0

    new-instance v1, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$MyCallBack;

    invoke-direct {v1, p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$MyCallBack;-><init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/miui/earthquakewarning/utils/LocationRecordManager;->startLocation(ZLcom/miui/earthquakewarning/utils/LocationRecordManager$CallBack;)V

    return-void
.end method

.method private isDistrictSupport(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move p1, v0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge p1, v2, :cond_1

    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "geocode"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "support"

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    return v3

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    return v0
.end method

.method private synthetic lambda$onCreate$0(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;->requestMyPosition()V

    return-void
.end method

.method private localeArea()V
    .locals 2

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "WarningCenterDisasterService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$4;

    iget-object v1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$4;-><init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;->requestMyPosition()V

    return-void
.end method

.method private requestMyPosition()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;->getLocation()V

    return-void
.end method

.method public static uploadTopicService(Landroid/content/Context;Lcom/miui/earthquakewarning/model/SaveAreaResult;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/earthquakewarning/service/EarthquakeWarningService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "action_subscribe_area"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/miui/earthquakewarning/model/SaveAreaResult;->getCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "extra_area_code"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/miui/earthquakewarning/model/SaveAreaResult;->getCity()Ljava/lang/String;

    move-result-object v1

    const-string v2, "extra_area_region"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/miui/earthquakewarning/model/SaveAreaResult;->getSupport()I

    move-result v1

    const-string v2, "extra_area_support"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/miui/earthquakewarning/model/SaveAreaResult;->getCounties()Ljava/lang/String;

    move-result-object p1

    const-string v1, "extra_area_countries"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public exitSearchMode()V
    .locals 2

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;->mSearchActionMode:Lmiuix/view/l;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;->mSearchActionMode:Lmiuix/view/l;

    :cond_0
    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;->mSearchResultView:Lmiuix/recyclerview/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;->mSearchResultContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

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

.method public bridge synthetic getRatioUiBaseWidthDp()I
    .locals 1

    invoke-static {p0}, Lmiuix/autodensity/i;->a(Lmiuix/autodensity/j;)I

    move-result v0

    return v0
.end method

.method public isSearchMode()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;->mSearchActionMode:Lmiuix/view/l;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic onActivityCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/common/base/b;->a(Lcom/miui/common/base/c;Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic onActivityDestroy()V
    .locals 0

    invoke-static {p0}, Lcom/miui/common/base/b;->b(Lcom/miui/common/base/c;)V

    return-void
.end method

.method public bridge synthetic onActivityPause()V
    .locals 0

    invoke-static {p0}, Lcom/miui/common/base/b;->c(Lcom/miui/common/base/c;)V

    return-void
.end method

.method public bridge synthetic onActivityResume()V
    .locals 0

    invoke-static {p0}, Lcom/miui/common/base/b;->d(Lcom/miui/common/base/c;)V

    return-void
.end method

.method public bridge synthetic onActivityStart()V
    .locals 0

    invoke-static {p0}, Lcom/miui/common/base/b;->e(Lcom/miui/common/base/c;)V

    return-void
.end method

.method public bridge synthetic onActivityStop()V
    .locals 0

    invoke-static {p0}, Lcom/miui/common/base/b;->f(Lcom/miui/common/base/c;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setExtraHorizontalPaddingEnable(Z)V

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setExtraPaddingApplyToContentEnable(Z)V

    const p1, 0x7f0e0143

    invoke-virtual {p0, p1}, Lcom/miui/common/base/BaseActivity;->setContentView(I)V

    sget-boolean p1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void

    :cond_0
    const p1, 0x7f0b0426

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/recyclerview/widget/RecyclerView;

    const v0, 0x7f0b0a23

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;->mSearchView:Landroid/view/View;

    const v0, 0x7f0b0a1f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;->mSearchResultView:Lmiuix/recyclerview/widget/RecyclerView;

    const v0, 0x7f0b0a1e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;->mSearchResultContainer:Landroid/widget/RelativeLayout;

    const v0, 0x7f0b0a20

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;->mSearchResultTips:Landroid/widget/TextView;

    const v0, 0x7f0b0716

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;->mLocalArea:Landroid/widget/TextView;

    const v0, 0x7f0b0818

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;->mNotSupport:Landroid/widget/TextView;

    const v0, 0x7f0b055e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;->mImgLoacation:Landroid/widget/ImageView;

    const v0, 0x7f0b047d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;->mGetLocation:Landroid/widget/TextView;

    const v0, 0x7f0b0a06

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    iput-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;->mScrollview:Landroidx/core/widget/NestedScrollView;

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;->mSearchView:Landroid/view/View;

    const v1, 0x1020009

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1207ea

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;->mSearchView:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$EarthquakeWarningSubscribeAreaAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$EarthquakeWarningSubscribeAreaAdapter;-><init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$1;)V

    iput-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;->mNormalAdapter:Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$EarthquakeWarningSubscribeAreaAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    iget-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;->mNormalAdapter:Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$EarthquakeWarningSubscribeAreaAdapter;

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;->mSubscribeResults:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$EarthquakeWarningSubscribeAreaAdapter;->setList(Ljava/util/List;)V

    iget-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;->mNormalAdapter:Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$EarthquakeWarningSubscribeAreaAdapter;

    new-instance v0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$1;

    invoke-direct {v0, p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$1;-><init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;)V

    invoke-virtual {p1, v0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$EarthquakeWarningSubscribeAreaAdapter;->setListener(Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$EarthquakeWarningSubscribeAreaAdapter$ClickListener;)V

    iget-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;->mGetLocation:Landroid/widget/TextView;

    new-instance v0, Lcom/miui/earthquakewarning/ui/y0;

    invoke-direct {v0, p0}, Lcom/miui/earthquakewarning/ui/y0;-><init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;->buildFocusData()V

    invoke-direct {p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;->checkSupportCityData()V

    new-instance p1, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$EarthquakeWarningSubscribeAreaAdapter;

    invoke-direct {p1, v1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$EarthquakeWarningSubscribeAreaAdapter;-><init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$1;)V

    iput-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;->mSearchAdapter:Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$EarthquakeWarningSubscribeAreaAdapter;

    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;->mSearchResultView:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$n;)V

    iget-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;->mSearchResultView:Lmiuix/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;->mSearchAdapter:Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$EarthquakeWarningSubscribeAreaAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    iget-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;->mSearchAdapter:Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$EarthquakeWarningSubscribeAreaAdapter;

    new-instance v0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$2;

    invoke-direct {v0, p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$2;-><init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;)V

    invoke-virtual {p1, v0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$EarthquakeWarningSubscribeAreaAdapter;->setListener(Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$EarthquakeWarningSubscribeAreaAdapter$ClickListener;)V

    invoke-direct {p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;->localeArea()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/miui/common/base/BaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public startSearchMode(Lmiuix/view/l$b;)V
    .locals 1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    check-cast p1, Lmiuix/view/l;

    iput-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;->mSearchActionMode:Lmiuix/view/l;

    invoke-interface {p1}, Lmiuix/view/l;->getSearchInput()Landroid/widget/EditText;

    move-result-object p1

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setImeOptions(I)V

    return-void
.end method

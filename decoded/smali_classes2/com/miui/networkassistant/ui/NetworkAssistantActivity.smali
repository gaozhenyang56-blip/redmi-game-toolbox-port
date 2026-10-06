.class public Lcom/miui/networkassistant/ui/NetworkAssistantActivity;
.super Lcom/miui/networkassistant/ui/activity/BaseStatsActivity;
.source "SourceFile"

# interfaces
.implements Lcom/miui/networkassistant/viewholder/CardOnClickListener;
.implements Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog$PhoneNumInputDialogListener;
.implements Lcom/miui/networkassistant/ui/presenter/IproductListPresenter;
.implements Lcom/miui/networkassistant/ui/presenter/IproductListView;
.implements Lcom/miui/networkassistant/ui/presenter/IRecommendDataPresenter;
.implements Lcom/miui/networkassistant/ui/presenter/IRecommendDataView;
.implements Lcom/miui/networkassistant/ui/presenter/IpayOrderPresenter;
.implements Lcom/miui/networkassistant/ui/presenter/IFunctionItemPresenter;
.implements Lcom/miui/networkassistant/ui/presenter/IFunctionItemView;
.implements Lcom/miui/networkassistant/ui/presenter/IpayOrderView;
.implements Lcom/miui/networkassistant/ui/presenter/IOffLinePresenter;
.implements Lcom/miui/networkassistant/ui/presenter/IOffLineView;
.implements Lcom/miui/networkassistant/utils/TelephonyUtil$PhoneNumberLoadedBySlotListener;
.implements Lcom/miui/networkassistant/ui/presenter/IGetPolicyUpdatePresenter;
.implements Lcom/miui/networkassistant/ui/presenter/IPolicyUpdateView;
.implements Lcom/miui/networkassistant/viewholder/NoPhoneNumCardOnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MyTrafficInputDialogListener;,
        Lcom/miui/networkassistant/ui/NetworkAssistantActivity$UiHandler;,
        Lcom/miui/networkassistant/ui/NetworkAssistantActivity$GetPhoneNumListener;,
        Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;
    }
.end annotation


# static fields
.field private static final ACTION_FLAG_INPUT_PHONE_NUM:I = 0x1

.field private static final TAG:Ljava/lang/String; = "NAMainActivity"


# instance fields
.field private IS_L18:Ljava/lang/String;

.field private abnormalView:Landroid/widget/LinearLayout;

.field private banner:Landroid/widget/ImageView;

.field private bannerButton:Landroid/widget/Button;

.field private bannerSummary:Landroid/widget/TextView;

.field private bannerTitle:Landroid/widget/TextView;

.field private enterTime:J

.field functionData:Lcom/miui/networkassistant/ui/bean/FunctionData;

.field private grantedSendSmsDialog:Lmiuix/appcompat/app/AlertDialog;

.field private inputPhoneDialog:Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;

.field private isPreview:Z

.field private leaveTime:J

.field private mAdvertise:Landroid/view/View;

.field private mCardOnClickListener:Lcom/miui/networkassistant/viewholder/CardOnClickListener;

.field private mCardsData:Lcom/miui/networkassistant/ui/bean/CardSData;

.field private mCarrier:Ljava/lang/String;

.field private mCarrierCode:Lcom/miui/networkassistant/ui/bean/CarrierCode;

.field private mCountry:Ljava/lang/String;

.field private mCurrentOperateSlotNum:I

.field private mDataReady:Z

.field private mEveryCardData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/networkassistant/ui/bean/CardSData;",
            ">;"
        }
    .end annotation
.end field

.field private mFunctionItemPresenter:Lcom/miui/networkassistant/ui/presenter/FunctionItemPresenter;

.field private mGetCarrier:Z

.field private mGetPolicyUpdatePresenter:Lcom/miui/networkassistant/ui/presenter/GetPolicyUpdatePresenter;

.field private mHandler:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$UiHandler;

.field private mInputDialog:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

.field private mIsDualCard:Z

.field private mIsID:Z

.field private mMainViewPager:Landroidx/viewpager/widget/ViewPager;

.field private mMobileStatus:[Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

.field private mNeedDispaly:Ljava/lang/Boolean;

.field private mOffLinePresenter:Lcom/miui/networkassistant/ui/presenter/OffLinePresenter;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnDailyCardGuideDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mPageChangeListener:Landroidx/viewpager/widget/ViewPager$i;

.field private mPagerViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mPayData:Lcom/miui/networkassistant/ui/bean/PayData;

.field private mPayOrderInfoPresenter:Lcom/miui/networkassistant/ui/presenter/PayOrderInfoPresenter;

.field private mPayUrl:Ljava/lang/String;

.field private mPhoneNum:Ljava/lang/String;

.field private mPolicy:Ljava/lang/String;

.field private mPolicyData:Lcom/miui/networkassistant/ui/bean/PolicyCode;

.field private mPosition:I

.field private mProductListPresenter:Lcom/miui/networkassistant/ui/presenter/ProductListPresenter;

.field private mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

.field private mPurchaseData:Lcom/miui/networkassistant/ui/bean/Card;

.field private mRecommendBean:Lcom/miui/networkassistant/ui/bean/RecommendBean;

.field private mRecommendDataPresenter:Lcom/miui/networkassistant/ui/presenter/RecommendDataPresenter;

.field private mSetPhoneView:Landroid/widget/ImageView;

.field private mShouldShow:Z

.field private mSimCardHelper:Lcom/miui/networkassistant/dual/SimCardHelper;

.field private mSimUserInfo:[Lcom/miui/networkassistant/config/SimUserInfo;

.field private mTabLayout:Lcom/google/android/material/tabs/TabLayout;

.field private mTitle:Landroid/view/View;

.field private mToolBanner:Landroid/widget/LinearLayout;

.field private mToolbarFirewall:Lcom/miui/networkassistant/ui/view/MainToolbarItemView;

.field private mToolbarUsageSorted:Lcom/miui/networkassistant/ui/view/MainToolbarItemView;

.field private mTrafficCornBinderListenerHost:Lcom/miui/networkassistant/service/wrapper/TrafficCornBinderListenerHost;

.field private mTrafficCornBinders:[Lcom/miui/networkassistant/service/ITrafficCornBinder;

.field private mTrafficInputDialogListener:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog$TrafficInputDialogListener;

.field private mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

.field private mTrafficManageConnection:Landroid/content/ServiceConnection;

.field private mTrafficPageChangeListener:Landroidx/viewpager/widget/ViewPager$i;

.field private mTrafficProductList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/networkassistant/ui/bean/TrafficProduct;",
            ">;"
        }
    .end annotation
.end field

.field private mTrafficUsedViews:[Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;

.field private myMap:Lcom/miui/networkassistant/ui/bean/SerializableHashMap;

.field private needOffLine:Z

.field private needShow:Z

.field private noNetwork:Landroid/view/View;

.field private noPhoneNum:Landroid/view/View;

.field private noResource:Landroid/view/View;

.field private phoneNum:[Ljava/lang/String;

.field private phoneNumView:Landroid/widget/TextView;

.field private policy:Ljava/lang/String;

.field private productList:Landroid/widget/LinearLayout;

.field private productType:Ljava/lang/String;

.field secondaryCardRec:Lcom/miui/networkassistant/ui/bean/SecondaryCardRec;

.field private setPhoneView:Landroid/widget/LinearLayout;

.field shouldNotRefresh:Z

.field private tabViewAdapter0:Lcom/miui/networkassistant/ui/adapter/TabViewAdapter;

.field private tabViewAdapter1:Lcom/miui/networkassistant/ui/adapter/TabViewAdapter;

.field private tabs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private trafficPurchaseDialog:Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;

.field private tvForOther:Landroid/widget/TextView;

.field private uuid:Ljava/lang/String;

.field private viewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private viewList1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private viewList2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private viewPager:Lcom/miui/networkassistant/ui/view/MyViewPager;


# direct methods
.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/activity/BaseStatsActivity;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    sget-object v2, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;->Init:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v4, 0x1

    aput-object v2, v1, v4

    iput-object v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mMobileStatus:[Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    const-string v1, "L18"

    iput-object v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->IS_L18:Ljava/lang/String;

    sget-boolean v1, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_DUAL_CARD:Z

    iput-boolean v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mIsDualCard:Z

    iput-boolean v3, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mDataReady:Z

    new-array v1, v0, [Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;

    iput-object v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTrafficUsedViews:[Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;

    new-array v1, v0, [Lcom/miui/networkassistant/service/ITrafficCornBinder;

    iput-object v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTrafficCornBinders:[Lcom/miui/networkassistant/service/ITrafficCornBinder;

    new-array v1, v0, [Lcom/miui/networkassistant/config/SimUserInfo;

    iput-object v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mSimUserInfo:[Lcom/miui/networkassistant/config/SimUserInfo;

    iput v3, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCurrentOperateSlotNum:I

    iput-boolean v4, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->shouldNotRefresh:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->grantedSendSmsDialog:Lmiuix/appcompat/app/AlertDialog;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->tabs:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->viewList1:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->viewList2:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->viewList:Ljava/util/List;

    const-string v2, "trafficProduct"

    iput-object v2, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->productType:Ljava/lang/String;

    const-string v2, "ID"

    invoke-static {v2}, Lmiui/os/Build;->checkRegion(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mIsID:Z

    iput-boolean v4, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mGetCarrier:Z

    const-string v2, ""

    iput-object v2, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mPolicy:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->needShow:Z

    const-string v5, "Indonesia"

    iput-object v5, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCountry:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->phoneNum:[Ljava/lang/String;

    iput-boolean v4, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->needOffLine:Z

    iput-boolean v3, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mShouldShow:Z

    iput-boolean v3, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->isPreview:Z

    iput-object v2, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCarrier:Ljava/lang/String;

    iput-object v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCardsData:Lcom/miui/networkassistant/ui/bean/CardSData;

    iput-object v2, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->policy:Ljava/lang/String;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mNeedDispaly:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCardOnClickListener:Lcom/miui/networkassistant/viewholder/CardOnClickListener;

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mPosition:I

    new-instance v0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$3;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$3;-><init>(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mPageChangeListener:Landroidx/viewpager/widget/ViewPager$i;

    new-instance v0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$4;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$4;-><init>(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTrafficPageChangeListener:Landroidx/viewpager/widget/ViewPager$i;

    new-instance v0, Lcom/miui/networkassistant/ui/j;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/j;-><init>(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$7;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$7;-><init>(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTrafficCornBinderListenerHost:Lcom/miui/networkassistant/service/wrapper/TrafficCornBinderListenerHost;

    new-instance v0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$8;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$8;-><init>(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTrafficManageConnection:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$9;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$9;-><init>(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mOnDailyCardGuideDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method private StartPage()V
    .locals 2

    new-instance v0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$UiHandler;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$UiHandler;-><init>(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mHandler:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$UiHandler;

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->parseSlotNum()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->initView()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->bindTrafficManageService()V

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mShouldShow:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/miui/networkassistant/ui/presenter/GetPolicyUpdatePresenter;

    iget-object v1, p0, Lcom/miui/common/base/BaseActivity;->mAppContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/miui/networkassistant/ui/presenter/GetPolicyUpdatePresenter;-><init>(Lcom/miui/networkassistant/ui/presenter/IPolicyUpdateView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mGetPolicyUpdatePresenter:Lcom/miui/networkassistant/ui/presenter/GetPolicyUpdatePresenter;

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->fetchPolicyUpdate()V

    new-instance v0, Lcom/miui/networkassistant/ui/presenter/OffLinePresenter;

    iget-object v1, p0, Lcom/miui/common/base/BaseActivity;->mAppContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/miui/networkassistant/ui/presenter/OffLinePresenter;-><init>(Lcom/miui/networkassistant/ui/presenter/IOffLineView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mOffLinePresenter:Lcom/miui/networkassistant/ui/presenter/OffLinePresenter;

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->fetchOffLine()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->enterTime:J

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mShouldShow:Z

    return p0
.end method

.method static synthetic access$100(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)I
    .locals 0

    iget p0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCurrentOperateSlotNum:I

    return p0
.end method

.method static synthetic access$1000(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)Lcom/miui/networkassistant/ui/view/MyViewPager;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->viewPager:Lcom/miui/networkassistant/ui/view/MyViewPager;

    return-object p0
.end method

.method static synthetic access$102(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;I)I
    .locals 0

    iput p1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCurrentOperateSlotNum:I

    return p1
.end method

.method static synthetic access$1100(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->needOffLine:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->initPurchase(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->setPhoneViewText()V

    return-void
.end method

.method static synthetic access$1400(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)Lcom/miui/networkassistant/ui/NetworkAssistantActivity$UiHandler;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mHandler:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$UiHandler;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)Lcom/miui/networkassistant/service/ITrafficManageBinder;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;Lcom/miui/networkassistant/service/ITrafficManageBinder;)Lcom/miui/networkassistant/service/ITrafficManageBinder;
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/base/BaseActivity;->mAppContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/base/BaseActivity;->mAppContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/base/BaseActivity;->mAppContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)[Lcom/miui/networkassistant/service/ITrafficCornBinder;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTrafficCornBinders:[Lcom/miui/networkassistant/service/ITrafficCornBinder;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)Lcom/miui/networkassistant/ui/presenter/RecommendDataPresenter;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mRecommendDataPresenter:Lcom/miui/networkassistant/ui/presenter/RecommendDataPresenter;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)Lcom/miui/networkassistant/service/wrapper/TrafficCornBinderListenerHost;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTrafficCornBinderListenerHost:Lcom/miui/networkassistant/service/wrapper/TrafficCornBinderListenerHost;

    return-object p0
.end method

.method static synthetic access$202(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;Lcom/miui/networkassistant/ui/presenter/RecommendDataPresenter;)Lcom/miui/networkassistant/ui/presenter/RecommendDataPresenter;
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mRecommendDataPresenter:Lcom/miui/networkassistant/ui/presenter/RecommendDataPresenter;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mIsDualCard:Z

    return p0
.end method

.method static synthetic access$2200(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/base/BaseActivity;->mAppContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)[Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mMobileStatus:[Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/base/BaseActivity;->mAppContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/base/BaseActivity;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->initData()V

    return-void
.end method

.method static synthetic access$2700(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->updateDataAndBg(I)V

    return-void
.end method

.method static synthetic access$2800(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)[Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTrafficUsedViews:[Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/base/BaseActivity;->mAppContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)[Lcom/miui/networkassistant/config/SimUserInfo;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mSimUserInfo:[Lcom/miui/networkassistant/config/SimUserInfo;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mIsID:Z

    return p0
.end method

.method static synthetic access$600(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mMainViewPager:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method static synthetic access$700(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->updateFunctionItems()V

    return-void
.end method

.method static synthetic access$800(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->tryShowGranteSendSmsDialog()V

    return-void
.end method

.method static synthetic access$900(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->viewList2:Ljava/util/List;

    return-object p0
.end method

.method private addMainTrafficUsedView(I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTrafficUsedViews:[Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;

    new-instance v1, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;

    invoke-direct {v1, p0}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;-><init>(Landroid/content/Context;)V

    aput-object v1, v0, p1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTrafficUsedViews:[Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setDataUsageClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTrafficUsedViews:[Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;

    aget-object v0, v0, p1

    new-instance v1, Lcom/miui/networkassistant/ui/r;

    invoke-direct {v1, p0}, Lcom/miui/networkassistant/ui/r;-><init>(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)V

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setDataUsageLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mPagerViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTrafficUsedViews:[Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addMainTrafficUsedView(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTrafficUsedViews:[Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;

    new-instance v1, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;

    invoke-direct {v1, p0}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;-><init>(Landroid/content/Context;)V

    aput-object v1, v0, p1

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTrafficUsedViews:[Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;

    aget-object p2, p2, p1

    invoke-virtual {p2, p0, p1}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setAdStyle(Landroid/content/Context;I)V

    :cond_0
    iget-object p2, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTrafficUsedViews:[Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;

    aget-object p2, p2, p1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setDataUsageClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTrafficUsedViews:[Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;

    aget-object p2, p2, p1

    new-instance v0, Lcom/miui/networkassistant/ui/p;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/p;-><init>(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)V

    invoke-virtual {p2, v0}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setDataUsageLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object p2, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mPagerViews:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTrafficUsedViews:[Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;

    aget-object p1, v0, p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private agreeToPrivacy()V
    .locals 3

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f12020b

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e050e

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/networkassistant/ui/s;

    invoke-direct {v1, p0}, Lcom/miui/networkassistant/ui/s;-><init>(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)V

    const v2, 0x7f121915

    invoke-virtual {v0, v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/networkassistant/ui/t;

    invoke-direct {v1, p0}, Lcom/miui/networkassistant/ui/t;-><init>(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)V

    const v2, 0x7f121917

    invoke-virtual {v0, v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/networkassistant/ui/e;

    invoke-direct {v1, p0}, Lcom/miui/networkassistant/ui/e;-><init>(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)V

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method private bindTrafficManageService()V
    .locals 2

    invoke-static {}, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;->getInstance()Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTrafficManageConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;->bindTmService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method private buildCommonParameters(I)Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mSimUserInfo:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/miui/networkassistant/config/SimUserInfo;->getCarrier()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->productType:Ljava/lang/String;

    const-string v2, "productType"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "carrier"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "language"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/miui/common/base/BaseActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Ly4/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "oaid"

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/miui/networkassistant/utils/SettingsUtils;->INSTANCE:Lcom/miui/networkassistant/utils/SettingsUtils;

    invoke-virtual {v1}, Lcom/miui/networkassistant/utils/SettingsUtils;->getUUID()Ljava/lang/String;

    move-result-object v1

    const-string v2, "uuid"

    :goto_0
    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCountry:Ljava/lang/String;

    const-string v2, "country"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "pageIndex"

    const-string v2, "home"

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "commonParameters"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string v1, "timestamp"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/miui/networkassistant/utils/IDPhoneNumberUtil;->createLinkString(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/common/base/BaseActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/miui/networkassistant/utils/SignatureUtils;->getSignatureResults(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "sign"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private buildParameters()Ljava/util/HashMap;
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

    const-string v1, "location"

    const-string v2, "all"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-static {}, Lcom/miui/networkassistant/utils/VirtualSimUtil;->virtualSimInstalled()Z

    move-result v2

    invoke-static {}, Lcom/miui/networkassistant/utils/VirtualSimUtil;->businessHallExist()Z

    move-result v3

    const-string v4, "netRoamAppExist"

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, ""

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/common/base/BaseActivity;->mAppContext:Landroid/content/Context;

    const-string v5, "com.miui.virtualsim"

    invoke-static {v2, v5}, Lx4/f1;->r(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v4

    :goto_0
    const-string v5, "netRoamVersionCode"

    invoke-virtual {v1, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "contactMiHallAppExist"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    if-eqz v3, :cond_1

    iget-object v2, p0, Lcom/miui/common/base/BaseActivity;->mAppContext:Landroid/content/Context;

    const-string v3, "com.android.contacts"

    invoke-static {v2, v3}, Lx4/f1;->r(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :cond_1
    const-string v2, "contactMiHallVersionCode"

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {p0}, Lef/w;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "oaid"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {p0}, Lef/w;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "trafficRemaining"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-wide/16 v4, 0x0

    const-string v2, "billsRemaining"

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-wide/16 v4, -0x1

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const/4 v2, 0x2

    const-string v3, "trafficType"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "isMiPhoneInHome"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-boolean v2, Lmiui/os/Build;->IS_TABLET:Z

    const-string v4, "isPad"

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-static {}, Lme/w;->e0()Z

    move-result v2

    const-string v4, "isSupportSim"

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/miui/networkassistant/utils/TelephonyUtil;->getSimOperatorNameForSlot(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->getOperatorName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3}, Lcom/miui/networkassistant/utils/TelephonyUtil;->getSimOperatorNameForSlot(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->getOperatorName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "slot0MnoCode"

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "slot1MnoCode"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, La8/z;->d()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/miui/common/base/BaseActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v2}, La8/z;->c(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->IS_L18:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string v2, "notFold"

    :goto_1
    const-string v3, "deviceType"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "commonParameters"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private checkMobileStatus(I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->getSimUserInfo(I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/common/base/BaseActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/miui/networkassistant/utils/MiSimUtil;->isMiSimEnable(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mMobileStatus:[Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    sget-object v1, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;->VirtualCard:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    aput-object v1, v0, p1

    goto/16 :goto_0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->hasImsi()Z

    move-result v1

    if-nez v1, :cond_1

    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mMobileStatus:[Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    sget-object v1, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;->NoSimCardInfo:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    aput-object v1, v0, p1

    goto/16 :goto_0

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isTrafficManageControlEnable()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mMobileStatus:[Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    sget-object v1, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;->TrafficCtrlClosed:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    aput-object v1, v0, p1

    goto/16 :goto_0

    :cond_2
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isOversea()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/miui/common/base/BaseActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/miui/networkassistant/utils/TelephonyUtil;->isNetworkRoaming(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mMobileStatus:[Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    sget-object v1, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;->OverseaRoaming:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    aput-object v1, v0, p1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mMobileStatus:[Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    sget-object v1, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;->Oversea:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    aput-object v1, v0, p1

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isSmsAvailable()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mMobileStatus:[Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    sget-object v1, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;->NormalRoaming:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    aput-object v1, v0, p1

    goto :goto_0

    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isNotLimitCardEnable()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mMobileStatus:[Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    sget-object v1, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;->UnLimitedCard:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    aput-object v1, v0, p1

    goto :goto_0

    :cond_6
    if-eqz v0, :cond_7

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->isTotalDataUsageSetted(I)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mMobileStatus:[Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    sget-object v1, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;->NoTotalPackage:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    aput-object v1, v0, p1

    goto :goto_0

    :cond_7
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isBrandSetted()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->hasOperatorAndCity()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {p1}, Lcom/miui/networkassistant/utils/TelephonyUtil;->isMiMobileOperator(I)Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mMobileStatus:[Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    sget-object v1, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;->NoOperatorSet:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    aput-object v1, v0, p1

    goto :goto_0

    :cond_9
    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mMobileStatus:[Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    sget-object v1, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;->Normal:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    aput-object v1, v0, p1

    :cond_a
    :goto_0
    return-void
.end method

.method public static synthetic d0(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->lambda$tryShowGranteSendSmsDialog$14(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private doUpdateBgView(IJJF)V
    .locals 6

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->getTrafficUsedView(I)Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;

    move-result-object v0

    long-to-float v1, p4

    long-to-float v2, p2

    div-float v3, v1, v2

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v3

    const/4 v3, 0x0

    cmpg-float v5, v4, v3

    if-gez v5, :cond_0

    move v4, v3

    :cond_0
    mul-float/2addr v2, p6

    cmpg-float p6, v1, v2

    if-ltz p6, :cond_3

    const-wide/16 v1, 0x0

    cmp-long p6, p2, v1

    if-gez p6, :cond_1

    goto :goto_0

    :cond_1
    cmp-long p2, p4, p2

    if-gez p2, :cond_2

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->getTitleOperatorName(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->getTitleOperatorName(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x2

    goto :goto_1

    :cond_3
    :goto_0
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->getTitleOperatorName(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    :goto_1
    invoke-virtual {v0, p2, p3, v4, p1}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setCardStyle(Ljava/lang/String;IFI)V

    return-void
.end method

.method public static synthetic e0(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->lambda$agreeToPrivacy$3(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic f0(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->lambda$agreeToPrivacy$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic g0(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->lambda$new$7(Landroid/view/View;)V

    return-void
.end method

.method private getOperatorName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "\u4e2d\u56fd\u79fb\u52a8"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CMCC"

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "\u4e2d\u56fd\u8054\u901a"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "CU"

    :cond_1
    const-string v1, "\u4e2d\u56fd\u7535\u4fe1"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "CT"

    :cond_2
    const-string v1, "\u4e2d\u56fd\u5e7f\u7535"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "CBN"

    :cond_3
    const-string v1, "\u5c0f\u7c73\u79fb\u52a8"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string v0, "MIMOBILE"

    :cond_4
    return-object v0
.end method

.method private getPhoneNumByCard(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/base/BaseActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lmiui/telephony/CloudTelephonyManager;->getLine1Number(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->isNormalNum(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, ""

    :cond_0
    return-object p1
.end method

.method private getPolicyByNet(I)V
    .locals 1

    new-instance v0, Lcom/miui/networkassistant/ui/l;

    invoke-direct {v0, p0, p1}, Lcom/miui/networkassistant/ui/l;-><init>(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;I)V

    invoke-static {v0}, Lx4/f;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method private getSimUserInfo(I)Lcom/miui/networkassistant/config/SimUserInfo;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mSimUserInfo:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object p1, v0, p1

    return-object p1
.end method

.method private getTabView(I)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/miui/common/base/BaseActivity;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e023c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b0b4e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->tabs:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f060daa

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const p1, 0x7f081030

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f060db0

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const p1, 0x7f08102f

    :goto_0
    invoke-virtual {v1, p1}, Landroid/view/View;->setBackgroundResource(I)V

    return-object v0
.end method

.method private getTitleOperatorName(I)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    const v0, 0x7f1206d8

    goto :goto_0

    :cond_0
    const v0, 0x7f1206d9

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mSimUserInfo:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object v1, v1, p1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->hasImsi()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mSimUserInfo:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object p1, v1, p1

    invoke-virtual {p1}, Lcom/miui/networkassistant/config/SimUserInfo;->getSimName()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/miui/common/base/BaseActivity;->mAppContext:Landroid/content/Context;

    const v1, 0x7f120d0b

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    :cond_2
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p1, v1, v0

    const-string p1, "%s-%s "

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getTrafficCorrection(I)Lcom/miui/networkassistant/service/ITrafficCornBinder;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTrafficCornBinders:[Lcom/miui/networkassistant/service/ITrafficCornBinder;

    aget-object p1, v0, p1

    return-object p1
.end method

.method private getTrafficUsedView(I)Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;
    .locals 1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTrafficUsedViews:[Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public static synthetic h0(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;Lcom/miui/networkassistant/model/VirtualSimInfo;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->lambda$updateVirtualSimTraffic$10(Lcom/miui/networkassistant/model/VirtualSimInfo;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic i0(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->lambda$onCustomizeActionBar$0(Landroid/view/View;)V

    return-void
.end method

.method private initData()V
    .locals 5
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mPagerViews:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/miui/common/base/BaseActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/dual/SimCardHelper;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/dual/SimCardHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mSimCardHelper:Lcom/miui/networkassistant/dual/SimCardHelper;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mDataReady:Z

    sget-boolean v1, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_INTERNATIONAL_BUILD:Z

    if-nez v1, :cond_2

    sget-boolean v1, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/miui/common/base/BaseActivity;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lp4/d;->f(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->initPagerViewByNet()V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->initPagerView()V

    :goto_1
    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mSimUserInfo:[Lcom/miui/networkassistant/config/SimUserInfo;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    if-eqz v1, :cond_4

    iget-object v3, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->phoneNum:[Ljava/lang/String;

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v2

    iget-object v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->phoneNum:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->phoneNum:[Ljava/lang/String;

    aget-object v1, v1, v2

    if-nez v1, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/miui/common/base/BaseActivity;->mAppContext:Landroid/content/Context;

    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v4, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$GetPhoneNumListener;

    invoke-direct {v4, p0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$GetPhoneNumListener;-><init>(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)V

    invoke-static {v1, v2, v3, v4}, Lcom/miui/networkassistant/utils/TelephonyUtil;->getPhoneNumber(Landroid/content/Context;ILandroid/os/Handler;Lcom/miui/networkassistant/utils/TelephonyUtil$PhoneNumberLoadedBySlotListener;)V

    :cond_4
    iget-object v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mSimUserInfo:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object v1, v1, v0

    if-eqz v1, :cond_6

    iget-object v2, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->phoneNum:[Ljava/lang/String;

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->phoneNum:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->phoneNum:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-nez v1, :cond_6

    :cond_5
    iget-object v1, p0, Lcom/miui/common/base/BaseActivity;->mAppContext:Landroid/content/Context;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$GetPhoneNumListener;

    invoke-direct {v3, p0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$GetPhoneNumListener;-><init>(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)V

    invoke-static {v1, v0, v2, v3}, Lcom/miui/networkassistant/utils/TelephonyUtil;->getPhoneNumber(Landroid/content/Context;ILandroid/os/Handler;Lcom/miui/networkassistant/utils/TelephonyUtil$PhoneNumberLoadedBySlotListener;)V

    :cond_6
    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mMainViewPager:Landroidx/viewpager/widget/ViewPager;

    iget v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCurrentOperateSlotNum:I

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->tryShowGranteSendSmsDialog()V

    return-void
.end method

.method private initPagerView()V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mSimCardHelper:Lcom/miui/networkassistant/dual/SimCardHelper;

    invoke-virtual {v0}, Lcom/miui/networkassistant/dual/SimCardHelper;->isDualSimInserted()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0, v2}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->addMainTrafficUsedView(I)V

    invoke-direct {p0, v1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->addMainTrafficUsedView(I)V

    invoke-direct {p0, v2}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->updateDataAndBg(I)V

    :goto_0
    invoke-direct {p0, v1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->updateDataAndBg(I)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mSimCardHelper:Lcom/miui/networkassistant/dual/SimCardHelper;

    invoke-virtual {v0}, Lcom/miui/networkassistant/dual/SimCardHelper;->isSim1Inserted()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v2}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->addMainTrafficUsedView(I)V

    invoke-direct {p0, v2}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->updateDataAndBg(I)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mSimCardHelper:Lcom/miui/networkassistant/dual/SimCardHelper;

    invoke-virtual {v0}, Lcom/miui/networkassistant/dual/SimCardHelper;->isSim2Inserted()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, v1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->addMainTrafficUsedView(I)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCurrentOperateSlotNum:I

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->addMainTrafficUsedView(I)V

    iget v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCurrentOperateSlotNum:I

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->updateNoInsertSimCard(I)V

    :goto_1
    const v0, 0x7f0b0742

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mMainViewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v1, Lcom/miui/networkassistant/ui/adapter/MainTrafficViewPagerAdapter;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mPagerViews:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Lcom/miui/networkassistant/ui/adapter/MainTrafficViewPagerAdapter;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/a;)V

    invoke-static {}, Lx4/t;->r()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mMainViewPager:Landroidx/viewpager/widget/ViewPager;

    const/16 v1, 0x28

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mMainViewPager:Landroidx/viewpager/widget/ViewPager;

    const/16 v1, 0x14

    :goto_2
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setPageMargin(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mMainViewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mMainViewPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mPageChangeListener:Landroidx/viewpager/widget/ViewPager$i;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$i;)V

    return-void
.end method

.method private initPagerViewByNet()V
    .locals 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mSimCardHelper:Lcom/miui/networkassistant/dual/SimCardHelper;

    invoke-virtual {v0}, Lcom/miui/networkassistant/dual/SimCardHelper;->isDualSimInserted()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->addMainTrafficUsedView(I)V

    invoke-direct {p0, v2}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->addMainTrafficUsedView(I)V

    invoke-direct {p0, v1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->updateDataAndBg(I)V

    invoke-direct {p0, v2}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->updateDataAndBg(I)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->fetchFunctionItem(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mSimCardHelper:Lcom/miui/networkassistant/dual/SimCardHelper;

    invoke-virtual {v0}, Lcom/miui/networkassistant/dual/SimCardHelper;->isSim1Inserted()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->addMainTrafficUsedView(I)V

    invoke-direct {p0, v2, v2}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->addMainTrafficUsedView(IZ)V

    invoke-direct {p0, v1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->updateDataAndBg(I)V

    invoke-direct {p0, v2}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->updateDataAndBg(I)V

    invoke-virtual {p0, v2}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->fetchFunctionItem(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mSimCardHelper:Lcom/miui/networkassistant/dual/SimCardHelper;

    invoke-virtual {v0}, Lcom/miui/networkassistant/dual/SimCardHelper;->isSim2Inserted()Z

    move-result v0

    invoke-direct {p0, v1, v2}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->addMainTrafficUsedView(IZ)V

    if-eqz v0, :cond_2

    invoke-direct {p0, v2}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->addMainTrafficUsedView(I)V

    invoke-direct {p0, v1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->updateDataAndBg(I)V

    invoke-direct {p0, v2}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->updateDataAndBg(I)V

    :cond_2
    invoke-virtual {p0, v1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->fetchFunctionItem(I)V

    :goto_0
    const v0, 0x7f0b0742

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mMainViewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v1, Lcom/miui/networkassistant/ui/adapter/MainTrafficViewPagerAdapter;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mPagerViews:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Lcom/miui/networkassistant/ui/adapter/MainTrafficViewPagerAdapter;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/a;)V

    invoke-static {}, Lx4/t;->r()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mMainViewPager:Landroidx/viewpager/widget/ViewPager;

    const/16 v1, 0x28

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mMainViewPager:Landroidx/viewpager/widget/ViewPager;

    const/16 v1, 0x14

    :goto_1
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setPageMargin(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mMainViewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mMainViewPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mPageChangeListener:Landroidx/viewpager/widget/ViewPager$i;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$i;)V

    return-void
.end method

.method private initPurchase(I)V
    .locals 4
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    const-string v0, "NAMainActivity"

    const-string v1, "initPurchase: \u6267\u884c\u4e86"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mSimUserInfo:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->acquirePhoneNumber()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-direct {p0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->updateUiFrame()V

    iget-object v1, p0, Lcom/miui/common/base/BaseActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lp4/d;->f(Landroid/content/Context;)Z

    move-result v1

    const/16 v2, 0x8

    if-nez v1, :cond_1

    iget-object p1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->abnormalView:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->abnormalView:Landroid/widget/LinearLayout;

    const v1, 0x7f0b080e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->noNetwork:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->noResource:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->noNetwork:Landroid/view/View;

    const v0, 0x7f0b0ca5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1203f3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->noNetwork:Landroid/view/View;

    const v0, 0x7f0b061f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const v0, 0x7f080d97

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const v3, 0x7f0b080f

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->abnormalView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->noPhoneNum:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mSimUserInfo:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object p1, v0, p1

    const-string v0, "empty"

    invoke-virtual {p1, v0}, Lcom/miui/networkassistant/config/SimUserInfo;->setCarrier(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mProductListPresenter:Lcom/miui/networkassistant/ui/presenter/ProductListPresenter;

    invoke-virtual {p1, v0}, Lcom/miui/networkassistant/ui/presenter/ProductListPresenter;->setCarrier(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->fetchProductList()V

    goto :goto_3

    :cond_2
    invoke-static {v0}, Lcom/miui/networkassistant/utils/IDPhoneNumberUtil;->getIspByPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->getPolicyByNet(I)V

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mSimUserInfo:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object p1, v1, p1

    invoke-virtual {p1, v0}, Lcom/miui/networkassistant/config/SimUserInfo;->setCarrier(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mProductListPresenter:Lcom/miui/networkassistant/ui/presenter/ProductListPresenter;

    invoke-virtual {p1, v0}, Lcom/miui/networkassistant/ui/presenter/ProductListPresenter;->setCarrier(Ljava/lang/String;)V

    :goto_2
    iget-object p1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->abnormalView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->noPhoneNum:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :goto_3
    return-void
.end method

.method private initTrafficPurchase()V
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mSimCardHelper:Lcom/miui/networkassistant/dual/SimCardHelper;

    invoke-virtual {v0}, Lcom/miui/networkassistant/dual/SimCardHelper;->isSimInserted()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lmiuix/appcompat/app/ProgressDialog;

    iget-object v1, p0, Lcom/miui/common/base/BaseActivity;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mRecommendDataPresenter:Lcom/miui/networkassistant/ui/presenter/RecommendDataPresenter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/networkassistant/ui/presenter/RecommendDataPresenter;

    iget-object v1, p0, Lcom/miui/common/base/BaseActivity;->mAppContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/miui/networkassistant/ui/presenter/RecommendDataPresenter;-><init>(Lcom/miui/networkassistant/ui/presenter/IRecommendDataView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mRecommendDataPresenter:Lcom/miui/networkassistant/ui/presenter/RecommendDataPresenter;

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mSimUserInfo:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCurrentOperateSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->acquirePhoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mRecommendDataPresenter:Lcom/miui/networkassistant/ui/presenter/RecommendDataPresenter;

    const-string v1, "empty"

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/presenter/RecommendDataPresenter;->setCarrier(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mSimUserInfo:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCurrentOperateSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->acquirePhoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/networkassistant/utils/IDPhoneNumberUtil;->getIspByPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mRecommendDataPresenter:Lcom/miui/networkassistant/ui/presenter/RecommendDataPresenter;

    invoke-virtual {v1, v0}, Lcom/miui/networkassistant/ui/presenter/RecommendDataPresenter;->setCarrier(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->fetchRecommend()V

    const v0, 0x7f0b0b49

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    const v0, 0x7f0b0591

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/ui/view/MyViewPager;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->viewPager:Lcom/miui/networkassistant/ui/view/MyViewPager;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTrafficPageChangeListener:Landroidx/viewpager/widget/ViewPager$i;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$i;)V

    iget v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCurrentOperateSlotNum:I

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->initPurchase(I)V

    const v0, 0x7f0b07c5

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method private initView()V
    .locals 4

    new-instance v0, Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;

    iget-object v1, p0, Lcom/miui/common/base/BaseActivity;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p0}, Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;-><init>(Landroid/app/Activity;Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog$PhoneNumInputDialogListener;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->inputPhoneDialog:Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;

    const v0, 0x7f0b090b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->productList:Landroid/widget/LinearLayout;

    const v0, 0x7f0b0bee

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mToolBanner:Landroid/widget/LinearLayout;

    const v0, 0x7f0b073f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/ui/view/MainToolbarItemView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mToolbarFirewall:Lcom/miui/networkassistant/ui/view/MainToolbarItemView;

    const v0, 0x7f0b0740

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/ui/view/MainToolbarItemView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mToolbarUsageSorted:Lcom/miui/networkassistant/ui/view/MainToolbarItemView;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mToolbarFirewall:Lcom/miui/networkassistant/ui/view/MainToolbarItemView;

    invoke-static {v0}, Lcom/miui/networkassistant/utils/FolmeHelper;->onCardPressJustBg(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mToolbarUsageSorted:Lcom/miui/networkassistant/ui/view/MainToolbarItemView;

    invoke-static {v0}, Lcom/miui/networkassistant/utils/FolmeHelper;->onCardPressJustBg(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mToolbarFirewall:Lcom/miui/networkassistant/ui/view/MainToolbarItemView;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mToolbarUsageSorted:Lcom/miui/networkassistant/ui/view/MainToolbarItemView;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mToolbarFirewall:Lcom/miui/networkassistant/ui/view/MainToolbarItemView;

    const v1, 0x7f120d1e

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/view/MainToolbarItemView;->setName(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mToolbarUsageSorted:Lcom/miui/networkassistant/ui/view/MainToolbarItemView;

    const v1, 0x7f120d21

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/view/MainToolbarItemView;->setName(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mToolbarFirewall:Lcom/miui/networkassistant/ui/view/MainToolbarItemView;

    const v1, 0x7f080d7a

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/view/MainToolbarItemView;->setIcon(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mToolbarUsageSorted:Lcom/miui/networkassistant/ui/view/MainToolbarItemView;

    const v1, 0x7f080d88

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/view/MainToolbarItemView;->setIcon(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mToolbarFirewall:Lcom/miui/networkassistant/ui/view/MainToolbarItemView;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mToolbarUsageSorted:Lcom/miui/networkassistant/ui/view/MainToolbarItemView;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0b49

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    const v0, 0x7f0b0591

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/ui/view/MyViewPager;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->viewPager:Lcom/miui/networkassistant/ui/view/MyViewPager;

    new-instance v1, Lcom/miui/networkassistant/ui/adapter/TabViewAdapter;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->viewList1:Ljava/util/List;

    iget-object v3, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->tabs:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/miui/networkassistant/ui/adapter/TabViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Lcom/miui/networkassistant/ui/view/MyViewPager;)V

    iput-object v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->tabViewAdapter0:Lcom/miui/networkassistant/ui/adapter/TabViewAdapter;

    new-instance v0, Lcom/miui/networkassistant/ui/adapter/TabViewAdapter;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->viewList2:Ljava/util/List;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->tabs:Ljava/util/List;

    iget-object v3, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->viewPager:Lcom/miui/networkassistant/ui/view/MyViewPager;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/miui/networkassistant/ui/adapter/TabViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Lcom/miui/networkassistant/ui/view/MyViewPager;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->tabViewAdapter1:Lcom/miui/networkassistant/ui/adapter/TabViewAdapter;

    new-instance v0, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->trafficPurchaseDialog:Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->refreshProductItemBg()V

    return-void
.end method

.method private isDualCardSupport()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mIsDualCard:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mSimCardHelper:Lcom/miui/networkassistant/dual/SimCardHelper;

    invoke-virtual {v0}, Lcom/miui/networkassistant/dual/SimCardHelper;->isDualSimInserted()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/miui/networkassistant/utils/DeviceUtil;->isCNLanguage()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mSimCardHelper:Lcom/miui/networkassistant/dual/SimCardHelper;

    invoke-virtual {v0}, Lcom/miui/networkassistant/dual/SimCardHelper;->isDualSimInsertedOne()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/common/base/BaseActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/utils/MiSimUtil;->isSupportGlobalVirtualSim(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
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

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mSimUserInfo:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/miui/networkassistant/config/SimUserInfo;->isTotalDataUsageSetted()Z

    move-result p1

    return p1
.end method

.method public static synthetic j0(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->lambda$agreeToPrivacy$2(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic k0(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->lambda$updateProductList$4()V

    return-void
.end method

.method public static synthetic l0(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->lambda$updateNormalTraffic$9(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$addMainTrafficUsedView$5(Landroid/view/View;)Z
    .locals 2

    iget-object p1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mMobileStatus:[Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    iget v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCurrentOperateSlotNum:I

    aget-object p1, p1, v0

    sget-object v1, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;->Normal:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    if-ne p1, v1, :cond_1

    invoke-static {v0}, Lcom/miui/networkassistant/dual/Sim;->operateOnSlotNum(I)V

    sget-boolean p1, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/common/base/BaseActivity;->mActivity:Landroid/app/Activity;

    const-class v0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/common/base/BaseActivity;->mActivity:Landroid/app/Activity;

    const-class v0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;

    :goto_0
    invoke-static {p1, v0}, Lcom/miui/networkassistant/ui/base/UniversalPreferenceActivity;->startWithFragment(Landroid/app/Activity;Ljava/lang/Class;)V

    const-string p1, "flow_correction_hold"

    invoke-static {p1}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->trackMainButtonClickCountEvent(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$addMainTrafficUsedView$6(Landroid/view/View;)Z
    .locals 2

    iget-object p1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mMobileStatus:[Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    iget v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCurrentOperateSlotNum:I

    aget-object p1, p1, v0

    sget-object v1, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;->Normal:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    if-ne p1, v1, :cond_1

    invoke-static {v0}, Lcom/miui/networkassistant/dual/Sim;->operateOnSlotNum(I)V

    sget-boolean p1, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/common/base/BaseActivity;->mActivity:Landroid/app/Activity;

    const-class v0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/common/base/BaseActivity;->mActivity:Landroid/app/Activity;

    const-class v0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;

    :goto_0
    invoke-static {p1, v0}, Lcom/miui/networkassistant/ui/base/UniversalPreferenceActivity;->startWithFragment(Landroid/app/Activity;Ljava/lang/Class;)V

    const-string p1, "flow_correction_hold"

    invoke-static {p1}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->trackMainButtonClickCountEvent(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$agreeToPrivacy$1(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0}, Lcom/miui/networkassistant/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/config/CommonConfig;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/miui/networkassistant/config/CommonConfig;->setNetWorkAssistantEnabled(Z)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->StartPage()V

    return-void
.end method

.method private synthetic lambda$agreeToPrivacy$2(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method

.method private synthetic lambda$agreeToPrivacy$3(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/networkassistant/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/config/CommonConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/networkassistant/config/CommonConfig;->isNetWorkAssistantEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$getPolicyByNet$11(I)V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/miui/networkassistant/ui/bean/ParamsUtils;->isPreviewEnv()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "query_micard_info"

    if-eqz v0, :cond_0

    :try_start_1
    const-string v0, "https://preview-api-flow-intl.10046.xiaomimobile.com/system/isp_rule"

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->buildCommonParameters(I)Ljava/util/HashMap;

    move-result-object v2

    new-instance v3, Lp4/i;

    invoke-direct {v3, v1}, Lp4/i;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v0, v2, v3}, Leg/j;->e(Ljava/lang/String;Ljava/util/Map;Lp4/i;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    const-string v0, "https://api-flow-intl.10046.xiaomimobile.com/system/isp_rule"

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->buildCommonParameters(I)Ljava/util/HashMap;

    move-result-object v2

    new-instance v3, Lp4/i;

    invoke-direct {v3, v1}, Lp4/i;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :goto_1
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/miui/networkassistant/ui/bean/CarrierCode;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/ui/bean/CarrierCode;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCarrierCode:Lcom/miui/networkassistant/ui/bean/CarrierCode;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/bean/CarrierCode;->getRtnCode()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCarrierCode:Lcom/miui/networkassistant/ui/bean/CarrierCode;

    invoke-direct {p0, v0, p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->updateCarrier(Lcom/miui/networkassistant/ui/bean/CarrierCode;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const-string v0, "NAMainActivity"

    const-string v1, "Exception"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_2
    return-void
.end method

.method private synthetic lambda$new$7(Landroid/view/View;)V
    .locals 4

    iget v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCurrentOperateSlotNum:I

    invoke-static {v0}, Lcom/miui/networkassistant/dual/Sim;->operateOnSlotNum(I)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const-wide/16 v0, 0x1

    const/4 v2, 0x0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/common/base/BaseActivity;->mAppContext:Landroid/content/Context;

    const-class v1, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCurrentOperateSlotNum:I

    const-string v1, "slot"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mSimUserInfo:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCurrentOperateSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->acquirePhoneNumber()Ljava/lang/String;

    move-result-object v0

    const-string v1, "phoneNum"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/common/base/BaseActivity;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    :sswitch_1
    iget-object p1, p0, Lcom/miui/common/base/BaseActivity;->mActivity:Landroid/app/Activity;

    const-string v0, "na_main_text_error"

    goto :goto_0

    :sswitch_2
    iget-object p1, p0, Lcom/miui/common/base/BaseActivity;->mActivity:Landroid/app/Activity;

    const-string v0, "na_main_traffic_remained"

    :goto_0
    invoke-static {p1, v2, v0}, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->startSmsDetailActivity(Landroid/app/Activity;ILjava/lang/String;)V

    goto :goto_2

    :sswitch_3
    iget-boolean p1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mShouldShow:Z

    if-eqz p1, :cond_0

    const-string p1, "traffic_sort"

    invoke-static {p1, v0, v1}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordNumericEvent(Ljava/lang/String;J)V

    :cond_0
    iget-object p1, p0, Lcom/miui/common/base/BaseActivity;->mActivity:Landroid/app/Activity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/common/base/BaseActivity;->mAppContext:Landroid/content/Context;

    const-class v2, Lcom/miui/networkassistant/ui/activity/TrafficSortedActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const-string p1, "flow_list"

    goto :goto_1

    :sswitch_4
    iget-boolean p1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mShouldShow:Z

    if-eqz p1, :cond_1

    const-string p1, "firewall_item"

    invoke-static {p1, v0, v1}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordNumericEvent(Ljava/lang/String;J)V

    :cond_1
    iget-object p1, p0, Lcom/miui/common/base/BaseActivity;->mActivity:Landroid/app/Activity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/common/base/BaseActivity;->mAppContext:Landroid/content/Context;

    const-class v2, Lcom/miui/networkassistant/ui/activity/FirewallActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const-string p1, "net_control"

    :goto_1
    invoke-static {p1}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->trackMainButtonClickCountEvent(Ljava/lang/String;)V

    goto :goto_2

    :sswitch_5
    iget-object p1, p0, Lcom/miui/common/base/BaseActivity;->mAppContext:Landroid/content/Context;

    iget v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCurrentOperateSlotNum:I

    invoke-static {p1, v0}, Lcom/miui/networkassistant/utils/MiSimUtil;->isMiSimEnable(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/common/base/BaseActivity;->mActivity:Landroid/app/Activity;

    const-string v0, "misim://router?launchfrom=netasistant"

    invoke-static {p1, v0}, Lcom/miui/networkassistant/utils/MiSimUtil;->startMiSimMainActivity(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/miui/common/base/BaseActivity;->mActivity:Landroid/app/Activity;

    const/4 v0, 0x1

    const-string v1, "na_main_bill_remained"

    invoke-static {p1, v0, v1}, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->startSmsDetailActivity(Landroid/app/Activity;ILjava/lang/String;)V

    goto :goto_2

    :sswitch_6
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "phone_dialog_source"

    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "phone_dialog_exposure"

    invoke-static {v2, v0, v1, p1}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordCalculateEvent(Ljava/lang/String;JLjava/util/Map;)V

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->showWriteNum()V

    goto :goto_2

    :sswitch_7
    invoke-direct {p0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->onMainButtonClick()V

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b01db -> :sswitch_7
        0x7f0b0257 -> :sswitch_6
        0x7f0b0664 -> :sswitch_5
        0x7f0b073f -> :sswitch_4
        0x7f0b0740 -> :sswitch_3
        0x7f0b0825 -> :sswitch_2
        0x7f0b0b92 -> :sswitch_1
        0x7f0b0ca8 -> :sswitch_6
        0x7f0b0caf -> :sswitch_0
    .end sparse-switch
.end method

.method private synthetic lambda$onCustomizeActionBar$0(Landroid/view/View;)V
    .locals 3

    iget p1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCurrentOperateSlotNum:I

    if-nez p1, :cond_0

    invoke-static {}, Lcom/miui/networkassistant/dual/Sim;->operateOnSlot1()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/miui/networkassistant/dual/Sim;->operateOnSlot2()V

    :goto_0
    sget-boolean p1, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_INTERNATIONAL_BUILD:Z

    const-string v0, "settings"

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mShouldShow:Z

    if-eqz p1, :cond_1

    const-wide/16 v1, 0x1

    invoke-static {v0, v1, v2}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordNumericEvent(Ljava/lang/String;J)V

    :cond_1
    iget-object p1, p0, Lcom/miui/common/base/BaseActivity;->mActivity:Landroid/app/Activity;

    const-class v1, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/miui/common/base/BaseActivity;->mActivity:Landroid/app/Activity;

    const-class v1, Lcom/miui/networkassistant/ui/fragment/SettingFragment;

    :goto_1
    invoke-static {p1, v1}, Lcom/miui/networkassistant/ui/base/UniversalPreferenceActivity;->startWithFragment(Landroid/app/Activity;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->trackMainButtonClickCountEvent(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$tryShowGranteSendSmsDialog$14(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    invoke-static {p0}, Lcom/miui/networkassistant/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/config/CommonConfig;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/miui/networkassistant/config/CommonConfig;->setEnableToSendMsgToCorrect(Z)Z

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->tryShowDailyCardSettingGuideDialog()V

    const-string p1, "scence_networkassistant_first_show"

    invoke-static {p1}, Lcom/miui/networkassistant/utils/AnalyticsHelperNew;->trackClickGrantSendSms(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$tryShowGranteSendSmsDialog$15(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->tryShowDailyCardSettingGuideDialog()V

    const-string p1, "scence_networkassistant_first_show"

    invoke-static {p1}, Lcom/miui/networkassistant/utils/AnalyticsHelperNew;->trackClickCancelSendSms(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$tryShowGranteSendSmsDialog$16(Landroid/content/DialogInterface;)V
    .locals 1

    invoke-static {p0}, Lcom/miui/networkassistant/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/config/CommonConfig;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/miui/networkassistant/config/CommonConfig;->setHasShownEnableToSendMsgToCorrectDialog(Z)Z

    return-void
.end method

.method private synthetic lambda$updateFunctionItems$13(Lcom/miui/networkassistant/ui/bean/Product;Landroid/view/View;)V
    .locals 3

    iget-object p2, p0, Lcom/miui/common/base/BaseActivity;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/bean/Product;->getRedirectType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/bean/Product;->getRedirectURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/bean/Product;->getRedirectTitle()Ljava/lang/String;

    move-result-object p1

    const-string v2, "100001"

    invoke-static {p2, v0, v1, v2, p1}, Lcom/miui/networkassistant/traffic/jump/JumpUtil;->launchUrlByRedirectType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$updateNetWorkSimCard$12(Lcom/miui/networkassistant/ui/bean/SecondaryCardRec;Landroid/view/View;)V
    .locals 3

    iget-object p2, p0, Lcom/miui/common/base/BaseActivity;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/bean/SecondaryCardRec;->getRedirectType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/bean/SecondaryCardRec;->getRedirectURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/bean/SecondaryCardRec;->getProductTitle()Ljava/lang/String;

    move-result-object p1

    const-string v2, "100001"

    invoke-static {p2, v0, v1, v2, p1}, Lcom/miui/networkassistant/traffic/jump/JumpUtil;->launchUrlByRedirectType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$updateNormalTraffic$9(Landroid/view/View;)V
    .locals 2

    new-instance p1, Lcom/miui/networkassistant/ui/dialog/MessageDialog;

    iget-object v0, p0, Lcom/miui/common/base/BaseActivity;->mActivity:Landroid/app/Activity;

    invoke-direct {p1, v0}, Lcom/miui/networkassistant/ui/dialog/MessageDialog;-><init>(Landroid/app/Activity;)V

    const v0, 0x7f1213cc

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f120631

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/miui/networkassistant/ui/dialog/MessageDialog;->buildShowDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$updateProductList$4()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->viewPager:Lcom/miui/networkassistant/ui/view/MyViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/view/MyViewPager;->resetHeight(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->viewPager:Lcom/miui/networkassistant/ui/view/MyViewPager;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method private synthetic lambda$updateUnLimitedCardTraffic$8(Landroid/view/View;)V
    .locals 2

    new-instance p1, Lcom/miui/networkassistant/ui/dialog/MessageDialog;

    iget-object v0, p0, Lcom/miui/common/base/BaseActivity;->mActivity:Landroid/app/Activity;

    invoke-direct {p1, v0}, Lcom/miui/networkassistant/ui/dialog/MessageDialog;-><init>(Landroid/app/Activity;)V

    const v0, 0x7f1213cc

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f120631

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/miui/networkassistant/ui/dialog/MessageDialog;->buildShowDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$updateVirtualSimTraffic$10(Lcom/miui/networkassistant/model/VirtualSimInfo;Landroid/view/View;)V
    .locals 1

    new-instance p2, Lcom/miui/networkassistant/ui/dialog/MessageDialog;

    iget-object v0, p0, Lcom/miui/common/base/BaseActivity;->mActivity:Landroid/app/Activity;

    invoke-direct {p2, v0}, Lcom/miui/networkassistant/ui/dialog/MessageDialog;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/VirtualSimInfo;->getTipTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/VirtualSimInfo;->getTipContent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/miui/networkassistant/ui/dialog/MessageDialog;->buildShowDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic m0(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->lambda$tryShowGranteSendSmsDialog$16(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic n0(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;Lcom/miui/networkassistant/ui/bean/Product;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->lambda$updateFunctionItems$13(Lcom/miui/networkassistant/ui/bean/Product;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic o0(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->lambda$addMainTrafficUsedView$6(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private odUpdateNormalTraffic(IZ)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->showTrafficAdjusting(I)V

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->updateNormalTraffic(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private onMainButtonClick()V
    .locals 5

    sget-object v0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$10;->$SwitchMap$com$miui$networkassistant$ui$NetworkAssistantActivity$MobileStatus:[I

    iget-object v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mMobileStatus:[Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    iget v2, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCurrentOperateSlotNum:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    iget v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCurrentOperateSlotNum:I

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->getTrafficUsedView(I)Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;

    move-result-object v0

    const v1, 0x7f120cff

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setDataUsageButtonText(I)V

    iget-object v0, p0, Lcom/miui/common/base/BaseActivity;->mAppContext:Landroid/content/Context;

    const-string v1, "assistInfo"

    invoke-static {v0, v1}, Lcom/miui/networkassistant/utils/VirtualSimUtil;->startVirtualSimActivity(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mSimUserInfo:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCurrentOperateSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isSupportCorrection()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->setAdjustTrafficManually()V

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCurrentOperateSlotNum:I

    const/4 v2, 0x1

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v0, v4, v1, v2, v3}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->startCorrection(ZIZI)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCurrentOperateSlotNum:I

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->getTrafficUsedView(I)Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;

    move-result-object v0

    const v1, 0x7f120d03

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setDataUsageButtonText(I)V

    invoke-virtual {v0, v4}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setDataUsageButtonEnable(Z)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setErrorTextVisibility(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "NAMainActivity"

    const-string v2, "startCorrection "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    const-string v0, "flow_correction"

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/miui/common/base/BaseActivity;->mActivity:Landroid/app/Activity;

    const-class v1, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/miui/networkassistant/ui/base/UniversalPreferenceActivity;->startWithFragment(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;)V

    const-string v0, "flow_set"

    :goto_1
    invoke-static {v0}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->trackMainButtonClickCountEvent(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_3
    iget v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCurrentOperateSlotNum:I

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->openTrafficCtrl(I)V

    goto :goto_2

    :pswitch_4
    invoke-direct {p0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->setTrafficManually()V

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private openTrafficCtrl(I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mSimUserInfo:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object v0, v0, p1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->setTrafficManageControlEnable(Z)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mHandler:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$UiHandler;

    if-nez p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    :goto_0
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public static synthetic p0(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->lambda$addMainTrafficUsedView$5(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private parseSlotNum()V
    .locals 3

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mIsDualCard:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/networkassistant/dual/Sim;->getCurrentActiveSlotNum()I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCurrentOperateSlotNum:I

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "sim_slot_num_tag"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCurrentOperateSlotNum:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCurrentOperateSlotNum:I

    :cond_0
    return-void
.end method

.method public static synthetic q0(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->lambda$updateUnLimitedCardTraffic$8(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic r0(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->lambda$getPolicyByNet$11(I)V

    return-void
.end method

.method private refreshProductItemBg()V
    .locals 9

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->productList:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mToolBanner:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const v2, 0x7f080d80

    const v3, 0x7f080d7e

    const/4 v4, 0x3

    const/4 v5, 0x0

    const v6, 0x7f080d7f

    const/4 v7, 0x1

    if-ne v0, v4, :cond_2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->productList:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->productList:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-lez v1, :cond_1

    invoke-virtual {v0, v6}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    if-ge v5, v1, :cond_5

    add-int/lit8 v0, v1, -0x1

    if-ne v5, v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mToolBanner:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mToolBanner:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_5

    :cond_2
    if-le v0, v4, :cond_5

    iget-object v8, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->productList:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v2, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->productList:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_2
    if-ge v5, v1, :cond_3

    iget-object v2, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mToolBanner:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setBackgroundResource(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    if-ge v4, v0, :cond_5

    add-int/lit8 v1, v0, -0x1

    if-ne v4, v1, :cond_4

    iget-object v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->productList:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_4

    :cond_4
    iget-object v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->productList:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    :goto_5
    return-void
.end method

.method public static synthetic s0(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->lambda$tryShowGranteSendSmsDialog$15(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private setAdjustTrafficManually()V
    .locals 3

    iget v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCurrentOperateSlotNum:I

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->getSimUserInfo(I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTrafficInputDialogListener:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog$TrafficInputDialogListener;

    if-nez v0, :cond_1

    new-instance v0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MyTrafficInputDialogListener;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MyTrafficInputDialogListener;-><init>(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTrafficInputDialogListener:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog$TrafficInputDialogListener;

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mInputDialog:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

    if-nez v0, :cond_2

    new-instance v0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

    iget-object v1, p0, Lcom/miui/common/base/BaseActivity;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTrafficInputDialogListener:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog$TrafficInputDialogListener;

    invoke-direct {v0, v1, v2}, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;-><init>(Landroid/app/Activity;Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog$TrafficInputDialogListener;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mInputDialog:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->clearInputText()V

    :goto_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mInputDialog:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

    const v1, 0x7f120d48

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120c63

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->buildInputDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setPhoneViewText()V
    .locals 5

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mSimUserInfo:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCurrentOperateSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->acquirePhoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "\\w(?=\\w{4})"

    const-string v2, "*"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->phoneNumView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mSimUserInfo:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v2, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCurrentOperateSlotNum:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Lcom/miui/networkassistant/config/SimUserInfo;->savePhoneNumber(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->phoneNumView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060de9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCurrentOperateSlotNum:I

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->getPhoneNumByCard(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f1203e0

    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->phoneNumView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->phoneNumView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060dea

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    if-eqz v0, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mSimUserInfo:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v2, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCurrentOperateSlotNum:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Lcom/miui/networkassistant/config/SimUserInfo;->savePhoneNumber(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private setTrafficManually()V
    .locals 3

    iget v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCurrentOperateSlotNum:I

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->getSimUserInfo(I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isTotalDataUsageSetted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->setAdjustTrafficManually()V

    goto :goto_1

    :cond_0
    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->needOffLine:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mShouldShow:Z

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x1

    const-string v2, "auto_settings"

    invoke-static {v2, v0, v1}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordNumericEvent(Ljava/lang/String;J)V

    :cond_1
    iget-object v0, p0, Lcom/miui/common/base/BaseActivity;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mSimUserInfo:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v2, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCurrentOperateSlotNum:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->isOversea()Z

    move-result v1

    if-eqz v1, :cond_3

    const-class v1, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/common/base/BaseActivity;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mSimUserInfo:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v2, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCurrentOperateSlotNum:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->isOversea()Z

    move-result v1

    if-eqz v1, :cond_3

    const-class v1, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;

    goto :goto_0

    :cond_3
    const-class v1, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;

    :goto_0
    invoke-static {v0, v1}, Lcom/miui/networkassistant/ui/base/UniversalPreferenceActivity;->startWithFragment(Landroid/app/Activity;Ljava/lang/Class;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private shouldShowTrafficPurchase()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mIsID:Z

    if-eqz v0, :cond_0

    invoke-static {}, La8/z;->d()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private showDailyCardSettingGuideDialog()V
    .locals 3

    new-instance v0, Lcom/miui/networkassistant/ui/dialog/CommonDialog;

    iget-object v1, p0, Lcom/miui/common/base/BaseActivity;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mOnDailyCardGuideDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {v0, v1, v2}, Lcom/miui/networkassistant/ui/dialog/CommonDialog;-><init>(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/dialog/CommonDialog;->setWeakReferenceEnabled(Z)V

    iget-object v1, p0, Lcom/miui/common/base/BaseActivity;->mAppContext:Landroid/content/Context;

    const v2, 0x7f120d08

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/common/base/ui/a;->setTitle(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/common/base/BaseActivity;->mAppContext:Landroid/content/Context;

    const v2, 0x7f120d07

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/common/base/ui/a;->setMessage(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/common/base/BaseActivity;->mAppContext:Landroid/content/Context;

    const v2, 0x7f120d05

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/common/base/ui/a;->setPostiveText(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/common/base/BaseActivity;->mAppContext:Landroid/content/Context;

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/common/base/ui/a;->setNagetiveText(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/dialog/CommonDialog;->show()V

    return-void
.end method

.method private showNoTotalPackageView(I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mSimUserInfo:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getBillPackageRemained()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->odUpdateNormalTraffic(IZ)V

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->getTrafficUsedView(I)Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->showTrafficAdjusting(I)V

    const v1, 0x7f120d10

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->showPrimaryMessage(I)V

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->getSimUserInfo(I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getBillSmsDetail()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    :goto_0
    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setBillLayoutClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0, v0, p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->updateTrafficUsedOnly(Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;I)V

    return-void
.end method

.method private showTrafficAdjusting(I)V
    .locals 7

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->getTrafficCorrection(I)Lcom/miui/networkassistant/service/ITrafficCornBinder;

    move-result-object v0

    const-string v1, "trafficCornBinder"

    const-string v2, "NAMainActivity"

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lcom/miui/networkassistant/service/ITrafficCornBinder;->isFinished()Z

    move-result v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    invoke-static {v2, v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    move v4, v3

    :goto_0
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->getTrafficUsedView(I)Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;

    move-result-object v5

    const/4 v6, 0x0

    if-nez v4, :cond_3

    :try_start_1
    invoke-interface {v0}, Lcom/miui/networkassistant/service/ITrafficCornBinder;->getTcType()I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->getSimUserInfo(I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/networkassistant/config/SimUserInfo;->isDailyUsedCardEffective()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const p1, 0x7f120d02

    invoke-virtual {v5, p1}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setDataUsageButtonText(I)V

    goto :goto_2

    :cond_2
    :goto_1
    const p1, 0x7f120d03

    invoke-virtual {v5, p1}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setDataUsageButtonText(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    invoke-static {v2, v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    invoke-virtual {v5, v6}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setDataUsageButtonEnable(Z)V

    goto :goto_3

    :cond_3
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->isTotalDataUsageSetted(I)Z

    move-result v0

    if-nez v0, :cond_4

    const p1, 0x7f120d04

    invoke-virtual {v5, p1}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setDataUsageButtonText(I)V

    invoke-virtual {v5, v3}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setDataUsageButtonEnable(Z)V

    goto :goto_3

    :cond_4
    const v0, 0x7f120d00

    invoke-virtual {v5, v0}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setDataUsageButtonText(I)V

    invoke-virtual {v5, v3}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setDataUsageButtonEnable(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mSimUserInfo:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/miui/networkassistant/config/SimUserInfo;->getTrafficTcResultCode()I

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {v5, v6}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setErrorTextVisibility(I)V

    goto :goto_3

    :cond_5
    const/16 p1, 0x8

    invoke-virtual {v5, p1}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setErrorTextVisibility(I)V

    :goto_3
    return-void
.end method

.method public static synthetic t0(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;Lcom/miui/networkassistant/ui/bean/SecondaryCardRec;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->lambda$updateNetWorkSimCard$12(Lcom/miui/networkassistant/ui/bean/SecondaryCardRec;Landroid/view/View;)V

    return-void
.end method

.method private tryShowDailyCardSettingGuideDialog()V
    .locals 2

    invoke-static {}, Lcom/miui/networkassistant/utils/PrivacyDeclareAndAllowNetworkUtil;->isAllowNetwork()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/common/base/BaseActivity;->mAppContext:Landroid/content/Context;

    iget v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCurrentOperateSlotNum:I

    invoke-static {v0, v1}, Lcom/miui/networkassistant/utils/MiSimUtil;->isMiSimEnable(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCurrentOperateSlotNum:I

    if-gez v0, :cond_2

    return-void

    :cond_2
    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->getSimUserInfo(I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v0

    if-eqz v0, :cond_6

    iget v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCurrentOperateSlotNum:I

    invoke-static {v1}, Lcom/miui/networkassistant/utils/TelephonyUtil;->isMiMobileOperator(I)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isDailyCardSettingGuideEnable()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isBrandSetted()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isOversea()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isSimInserted()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->setDailyCardSettingGuideEnable(Z)Z

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->showDailyCardSettingGuideDialog()V

    iget v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCurrentOperateSlotNum:I

    rsub-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->getSimUserInfo(I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v0

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->setDailyCardSettingGuideEnable(Z)Z

    :cond_6
    :goto_0
    return-void
.end method

.method private tryShowGranteSendSmsDialog()V
    .locals 6

    invoke-static {}, Lcom/miui/networkassistant/utils/PrivacyDeclareAndAllowNetworkUtil;->isAllowNetwork()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->grantedSendSmsDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->grantedSendSmsDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    :cond_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_b

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mSimUserInfo:[Lcom/miui/networkassistant/config/SimUserInfo;

    array-length v4, v3

    const/4 v5, 0x1

    if-ge v0, v4, :cond_7

    :try_start_0
    aget-object v3, v3, v0

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/miui/common/base/BaseActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v4, v0}, Lcom/miui/networkassistant/utils/MiSimUtil;->isMiSimEnable(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {v0}, Lcom/miui/networkassistant/utils/TelephonyUtil;->isMiMobileOperator(I)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v3}, Lcom/miui/networkassistant/config/SimUserInfo;->isBrandSetted()Z

    move-result v3

    if-eqz v3, :cond_5

    move v1, v5

    goto :goto_1

    :cond_5
    invoke-static {v0}, Lcom/miui/networkassistant/utils/TelephonyUtil;->isChinaOperator(I)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_6

    move v2, v5

    :catch_0
    :cond_6
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    invoke-static {p0}, Lcom/miui/networkassistant/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/config/CommonConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/CommonConfig;->isEnableToSendMsgToCorrect()Z

    move-result v0

    if-nez v0, :cond_b

    if-eqz v1, :cond_8

    invoke-static {p0}, Lcom/miui/networkassistant/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/config/CommonConfig;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/miui/networkassistant/config/CommonConfig;->setEnableToSendMsgToCorrect(Z)Z

    goto :goto_2

    :cond_8
    if-eqz v2, :cond_b

    invoke-static {p0}, Lcom/miui/networkassistant/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/config/CommonConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/CommonConfig;->hasShownEnableToSendMsgToCorrectDialog()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->grantedSendSmsDialog:Lmiuix/appcompat/app/AlertDialog;

    if-nez v0, :cond_9

    invoke-static {p0}, Lcom/miui/networkassistant/ui/dialog/GrantSendMessageDialogUtil;->makeDialog(Landroid/content/Context;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120e82

    new-instance v2, Lcom/miui/networkassistant/ui/f;

    invoke-direct {v2, p0}, Lcom/miui/networkassistant/ui/f;-><init>(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f121917

    new-instance v2, Lcom/miui/networkassistant/ui/g;

    invoke-direct {v2, p0}, Lcom/miui/networkassistant/ui/g;-><init>(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->grantedSendSmsDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/dialog/GrantSendMessageDialogUtil;->setDialogParams(Lmiuix/appcompat/app/AlertDialog;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->grantedSendSmsDialog:Lmiuix/appcompat/app/AlertDialog;

    new-instance v1, Lcom/miui/networkassistant/ui/h;

    invoke-direct {v1, p0}, Lcom/miui/networkassistant/ui/h;-><init>(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_9
    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->grantedSendSmsDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->grantedSendSmsDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    const-string v0, "scence_networkassistant_first_show"

    invoke-static {v0}, Lcom/miui/networkassistant/utils/AnalyticsHelperNew;->trackShowGrantSendSmsDialog(Ljava/lang/String;)V

    :cond_a
    return-void

    :cond_b
    :goto_2
    invoke-direct {p0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->tryShowDailyCardSettingGuideDialog()V

    return-void
.end method

.method private unbindTrafficManageService()V
    .locals 2

    invoke-static {}, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;->getInstance()Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTrafficManageConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;->unbindTmService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method private updateCarrier(Lcom/miui/networkassistant/ui/bean/CarrierCode;I)V
    .locals 1

    invoke-static {p1}, Lcom/miui/networkassistant/utils/IDPhoneNumberUtil;->addListForNum(Lcom/miui/networkassistant/ui/bean/CarrierCode;)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mSimUserInfo:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object p1, p1, p2

    invoke-virtual {p1}, Lcom/miui/networkassistant/config/SimUserInfo;->acquirePhoneNumber()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/networkassistant/utils/IDPhoneNumberUtil;->getIspByPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mSimUserInfo:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object p2, v0, p2

    invoke-virtual {p2, p1}, Lcom/miui/networkassistant/config/SimUserInfo;->setCarrier(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mProductListPresenter:Lcom/miui/networkassistant/ui/presenter/ProductListPresenter;

    invoke-virtual {p2, p1}, Lcom/miui/networkassistant/ui/presenter/ProductListPresenter;->setCarrier(Ljava/lang/String;)V

    return-void
.end method

.method private updateDataAndBg(I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->getTrafficUsedView(I)Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mDataReady:Z

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->checkMobileStatus(I)V

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->resetView()V

    sget-object v0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$10;->$SwitchMap$com$miui$networkassistant$ui$NetworkAssistantActivity$MobileStatus:[I

    iget-object v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mMobileStatus:[Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->updateNoInsertSimCard(I)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->updateVirtualSimTraffic(I)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1, v1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->updateUnLimitedCardTraffic(IZ)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p1, v1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->odUpdateNormalTraffic(IZ)V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->showNoTotalPackageView(I)V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->updateTrafficCtl(I)V

    goto :goto_0

    :pswitch_6
    invoke-direct {p0, p1, v1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->updateNormalRoamingTraffic(IZ)V

    goto :goto_0

    :pswitch_7
    invoke-direct {p0, p1, v1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->updateOverSeaTraffic(IZ)V

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateFunctionItems()V
    .locals 7

    iget v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCurrentOperateSlotNum:I

    if-gez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->functionData:Lcom/miui/networkassistant/ui/bean/FunctionData;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/bean/FunctionData;->getData()Lcom/miui/networkassistant/ui/bean/FunctionBanner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/bean/FunctionBanner;->getProductList()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCurrentOperateSlotNum:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->productList:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x3

    if-ge v2, v1, :cond_1

    iget-object v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->productList:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->removeViews(II)V

    :cond_1
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/miui/common/base/BaseActivity;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0e053f

    iget-object v5, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->productList:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4, v5, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/miui/networkassistant/ui/view/MainToolbarItemView;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/networkassistant/ui/bean/Product;

    invoke-virtual {v4}, Lcom/miui/networkassistant/ui/bean/Product;->getProductTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/miui/networkassistant/ui/view/MainToolbarItemView;->setName(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/miui/networkassistant/ui/bean/Product;->getIconURL()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lx4/o0;->g:Lrh/c;

    invoke-virtual {v3, v5, v6}, Lcom/miui/networkassistant/ui/view/MainToolbarItemView;->setCacheIcon(Ljava/lang/String;Lrh/c;)V

    new-instance v5, Lcom/miui/networkassistant/ui/q;

    invoke-direct {v5, p0, v4}, Lcom/miui/networkassistant/ui/q;-><init>(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;Lcom/miui/networkassistant/ui/bean/Product;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->productList:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->refreshProductItemBg()V

    return-void
.end method

.method private updateMiSimCardAdded(I)V
    .locals 8

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->getTrafficUsedView(I)Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;

    move-result-object v7

    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setDataUsageButtonVisible(Z)V

    iget-object v1, p0, Lcom/miui/common/base/BaseActivity;->mAppContext:Landroid/content/Context;

    const v2, 0x7f120cfe

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setDataUsageButtonText(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setDataUsageButtonEnable(Z)V

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-virtual/range {v0 .. v6}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setMonthPackageInfo(JJFZ)V

    const/4 v0, 0x0

    invoke-virtual {v7, v0, v1, v2}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setLeisureTrafficRemained(ZJ)V

    invoke-virtual {v7, v0}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setMonthRemainedViewVisible(Z)V

    invoke-virtual {v7, v0}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setUnitTextViewVisible(Z)V

    invoke-virtual {v7, v0}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setPrimaryTextLayoutVisible(Z)V

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->getTitleOperatorName(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v7, v1, v2, v3, p1}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setCardStyle(Ljava/lang/String;IFI)V

    sget-boolean p1, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p1, :cond_0

    invoke-virtual {v7, v0}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setBillLayoutVisible(Z)V

    :cond_0
    return-void
.end method

.method private updateNetWorkSimCard(ILcom/miui/networkassistant/ui/bean/SecondaryCardRec;)V
    .locals 8

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->getTrafficUsedView(I)Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;

    move-result-object v7

    invoke-virtual {v7, p0, p1}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setAdStyle(Landroid/content/Context;I)V

    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setDataUsageButtonVisible(Z)V

    invoke-virtual {p2}, Lcom/miui/networkassistant/ui/bean/SecondaryCardRec;->getButtonDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setDataUsageButtonText(Ljava/lang/String;)V

    new-instance v1, Lcom/miui/networkassistant/ui/k;

    invoke-direct {v1, p0, p2}, Lcom/miui/networkassistant/ui/k;-><init>(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;Lcom/miui/networkassistant/ui/bean/SecondaryCardRec;)V

    invoke-virtual {v7, v1}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setDataUsageClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v7, v0}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setDataUsageButtonEnable(Z)V

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-virtual/range {v0 .. v6}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setMonthPackageInfo(JJFZ)V

    const/4 v0, 0x0

    invoke-virtual {v7, v0, v1, v2}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setLeisureTrafficRemained(ZJ)V

    invoke-virtual {v7, v0}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setMonthRemainedViewVisible(Z)V

    invoke-virtual {v7, v0}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setUnitTextViewVisible(Z)V

    invoke-virtual {v7, v0}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setPrimaryTextLayoutVisible(Z)V

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->getTitleOperatorName(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v7, v1, v2, v3, p1}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setCardStyle(Ljava/lang/String;IFI)V

    sget-boolean p1, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p1, :cond_0

    invoke-virtual {v7, v0}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setBillLayoutVisible(Z)V

    :cond_0
    invoke-virtual {v7, p2}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setCardRec(Lcom/miui/networkassistant/ui/bean/SecondaryCardRec;)V

    return-void
.end method

.method private updateNoInsertSimCard(I)V
    .locals 9

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->getTrafficUsedView(I)Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setDataUsageButtonVisible(Z)V

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-virtual/range {v0 .. v6}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setMonthPackageInfo(JJFZ)V

    const-wide/16 v0, 0x0

    invoke-virtual {v7, v8, v0, v1}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setLeisureTrafficRemained(ZJ)V

    invoke-virtual {v7, v8}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setMonthRemainedViewVisible(Z)V

    invoke-virtual {v7, v8}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setUnitTextViewVisible(Z)V

    invoke-virtual {v7, v8}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setPrimaryTextLayoutVisible(Z)V

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->getTitleOperatorName(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v7, v0, v1, v2, p1}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setCardStyle(Ljava/lang/String;IFI)V

    sget-boolean p1, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p1, :cond_0

    invoke-virtual {v7, v8}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setBillLayoutVisible(Z)V

    :cond_0
    return-void
.end method

.method private updateNormalRoamingTraffic(IZ)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->getTrafficUsedView(I)Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->getSimUserInfo(I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->isTotalDataUsageSetted()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f120d01

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setDataUsageButtonText(I)V

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->updateNormalTraffic(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->showNoTotalPackageView(I)V

    :goto_0
    return-void
.end method

.method private updateNormalTraffic(IZ)V
    .locals 19

    move-object/from16 v7, p0

    move/from16 v8, p1

    iget-object v0, v7, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->getTrafficUsedView(I)Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;

    move-result-object v15

    invoke-direct/range {p0 .. p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->getSimUserInfo(I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v16

    iget-object v0, v7, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    invoke-interface {v0, v8}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->getCurrentMonthTotalPackage(I)J

    move-result-wide v12

    invoke-virtual/range {v16 .. v16}, Lcom/miui/networkassistant/config/SimUserInfo;->getDataUsageWarning()F

    move-result v14

    iget-object v0, v7, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    invoke-interface {v0, v8}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->getTodayDataUsageUsed(I)J

    move-result-wide v0

    invoke-virtual/range {v16 .. v16}, Lcom/miui/networkassistant/config/SimUserInfo;->getOperator()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MIMOBILE"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual/range {v16 .. v16}, Lcom/miui/networkassistant/config/SimUserInfo;->isDailyUsedCardEnable()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual/range {v16 .. v16}, Lcom/miui/networkassistant/config/SimUserInfo;->getLastTcUsed()J

    move-result-wide v2

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :cond_1
    invoke-virtual {v15, v0, v1}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setTodayUsed(J)V

    const/4 v9, 0x0

    invoke-virtual {v15, v9}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setHasLeisure(Z)V

    invoke-virtual/range {v16 .. v16}, Lcom/miui/networkassistant/config/SimUserInfo;->isLeisureDataUsageEffective()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x7f120d0a

    const v3, 0x7f120d0e

    if-eqz v0, :cond_8

    invoke-direct/range {p0 .. p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->isTotalDataUsageSetted(I)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static/range {v16 .. v16}, Lcom/miui/networkassistant/traffic/statistic/LeisureTrafficHelper;->isLeisureTime(Lcom/miui/networkassistant/config/SimUserInfo;)Z

    move-result v0

    iget-object v4, v7, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    invoke-interface {v4, v8}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->getCorrectedNormalAndLeisureMonthTotalUsed(I)[J

    move-result-object v10

    invoke-virtual/range {v16 .. v16}, Lcom/miui/networkassistant/config/SimUserInfo;->getLeisureDataUsageTotal()J

    move-result-wide v17

    const/4 v11, 0x1

    aget-wide v4, v10, v11

    cmp-long v6, v4, v17

    if-ltz v6, :cond_2

    move v6, v11

    goto :goto_0

    :cond_2
    move v6, v9

    :goto_0
    sub-long v4, v17, v4

    invoke-virtual {v15, v11, v4, v5}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setLeisureTrafficRemained(ZJ)V

    if-eqz v0, :cond_4

    if-eqz p2, :cond_7

    if-eqz v6, :cond_3

    aget-wide v4, v10, v9

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide v2, v12

    move v6, v14

    invoke-direct/range {v0 .. v6}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->doUpdateBgView(IJJF)V

    aget-wide v0, v10, v9

    const/4 v2, 0x1

    move-object v9, v15

    move-wide v10, v0

    goto :goto_1

    :cond_3
    move-object v6, v15

    invoke-virtual {v6, v11}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setHasLeisure(Z)V

    aget-wide v4, v10, v11

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, v17

    move v6, v14

    invoke-direct/range {v0 .. v6}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->doUpdateBgView(IJJF)V

    aget-wide v0, v10, v11

    const/4 v2, 0x1

    move-object v9, v15

    move-wide v10, v0

    move-wide/from16 v12, v17

    :goto_1
    move-object v6, v15

    move v15, v2

    invoke-virtual/range {v9 .. v15}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setMonthPackageInfo(JJFZ)V

    goto :goto_3

    :cond_4
    move-object v6, v15

    iget-object v0, v7, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    invoke-interface {v0, v8}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->getCorrectedNormalMonthDataUsageUsed(I)J

    move-result-wide v4

    invoke-virtual/range {v16 .. v16}, Lcom/miui/networkassistant/config/SimUserInfo;->isDailyUsedCardEffective()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v6, v2}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setMonthUsedText(I)V

    invoke-virtual/range {v16 .. v16}, Lcom/miui/networkassistant/config/SimUserInfo;->getDailyUsedCardPackage()J

    move-result-wide v2

    move/from16 v17, v1

    goto :goto_2

    :cond_5
    invoke-virtual {v6, v3}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setMonthUsedText(I)V

    move-wide v2, v12

    move/from16 v17, v14

    :goto_2
    const/4 v15, 0x1

    move-object v9, v6

    move-wide v10, v4

    move-wide v12, v2

    move/from16 v14, v17

    invoke-virtual/range {v9 .. v15}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setMonthPackageInfo(JJFZ)V

    if-eqz p2, :cond_6

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object v15, v6

    move/from16 v6, v17

    invoke-direct/range {v0 .. v6}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->doUpdateBgView(IJJF)V

    goto :goto_4

    :cond_6
    :goto_3
    move-object v15, v6

    :cond_7
    :goto_4
    move-object v9, v15

    goto :goto_6

    :cond_8
    const-wide/16 v4, 0x0

    invoke-virtual {v15, v9, v4, v5}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setLeisureTrafficRemained(ZJ)V

    iget-object v0, v7, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    invoke-interface {v0, v8}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->getCorrectedNormalMonthDataUsageUsed(I)J

    move-result-wide v4

    invoke-virtual/range {v16 .. v16}, Lcom/miui/networkassistant/config/SimUserInfo;->isDailyUsedCardEffective()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v15, v2}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setMonthUsedText(I)V

    invoke-virtual/range {v16 .. v16}, Lcom/miui/networkassistant/config/SimUserInfo;->getDailyUsedCardPackage()J

    move-result-wide v2

    move v6, v1

    goto :goto_5

    :cond_9
    invoke-virtual {v15, v3}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setMonthUsedText(I)V

    move-wide v2, v12

    move v6, v14

    :goto_5
    const/4 v0, 0x1

    move-object v9, v15

    move-wide v10, v4

    move-wide v12, v2

    move v14, v6

    move-object v1, v15

    move v15, v0

    invoke-virtual/range {v9 .. v15}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setMonthPackageInfo(JJFZ)V

    if-eqz p2, :cond_a

    move-object/from16 v0, p0

    move-object v9, v1

    move/from16 v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->doUpdateBgView(IJJF)V

    goto :goto_6

    :cond_a
    move-object v9, v1

    :goto_6
    invoke-virtual/range {v16 .. v16}, Lcom/miui/networkassistant/config/SimUserInfo;->getBillPackageRemained()J

    move-result-wide v0

    invoke-virtual {v9, v0, v1}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setBillRemainedTextView(J)V

    invoke-virtual/range {v16 .. v16}, Lcom/miui/networkassistant/config/SimUserInfo;->isDailyUsedCardEffective()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct/range {p0 .. p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->getSimUserInfo(I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getBillCorrectionSuccessTime()J

    move-result-wide v0

    goto :goto_7

    :cond_b
    invoke-direct/range {p0 .. p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->getSimUserInfo(I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getDataUsageCorrectedTime()J

    move-result-wide v0

    :goto_7
    invoke-virtual {v9, v0, v1}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setPreAdjustTime(J)V

    new-instance v0, Lcom/miui/networkassistant/ui/i;

    invoke-direct {v0, v7}, Lcom/miui/networkassistant/ui/i;-><init>(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)V

    invoke-virtual {v9, v0}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setDeclarationListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v9}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->unRegisterMonthRemainedClickListener()V

    invoke-virtual/range {v16 .. v16}, Lcom/miui/networkassistant/config/SimUserInfo;->getBillSmsDetail()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    goto :goto_8

    :cond_c
    iget-object v0, v7, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    :goto_8
    invoke-virtual {v9, v0}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setBillLayoutClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual/range {v16 .. v16}, Lcom/miui/networkassistant/config/SimUserInfo;->isDataRoaming()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-direct/range {p0 .. p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->isTotalDataUsageSetted(I)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual/range {v16 .. v16}, Lcom/miui/networkassistant/config/SimUserInfo;->hasOperatorAndCity()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual/range {v16 .. v16}, Lcom/miui/networkassistant/config/SimUserInfo;->getTrafficSmsDetail()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, v7, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mSimUserInfo:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object v0, v0, v8

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getBrand()I

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, v7, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v9, v0}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setMonthRemainedClickListener(Landroid/view/View$OnClickListener;)V

    :cond_d
    return-void
.end method

.method private updateOverSeaTraffic(IZ)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->getTrafficUsedView(I)Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->getSimUserInfo(I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setBillLayoutVisible(Z)V

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->isTotalDataUsageSetted()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f120d01

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setDataUsageButtonText(I)V

    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->updateOverseaTraffic(IZ)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->showNoTotalPackageView(I)V

    :goto_0
    return-void
.end method

.method private updateOverseaTraffic(IZ)V
    .locals 18

    move-object/from16 v8, p0

    move/from16 v0, p1

    iget-object v1, v8, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->getTrafficUsedView(I)Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;

    move-result-object v1

    invoke-direct/range {p0 .. p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->getSimUserInfo(I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v2

    :try_start_0
    iget-object v3, v8, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    invoke-interface {v3, v0}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->getCurrentMonthTotalPackage(I)J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getDataUsageWarning()F

    move-result v7

    iget-object v2, v8, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    invoke-interface {v2, v0}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->getCorrectedNormalMonthDataUsageUsed(I)J

    move-result-wide v5

    iget-object v2, v8, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    invoke-interface {v2, v0}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->getTodayDataUsageUsed(I)J

    move-result-wide v14

    const/4 v2, 0x1

    move-object v9, v1

    move-wide v10, v5

    move-wide v12, v3

    move-wide/from16 v16, v5

    move-wide v5, v14

    move v14, v7

    move v15, v2

    invoke-virtual/range {v9 .. v15}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setMonthPackageInfo(JJFZ)V

    invoke-virtual {v1, v5, v6}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setTodayUsed(J)V

    const/4 v2, 0x0

    const-wide/16 v5, 0x0

    invoke-virtual {v1, v2, v5, v6}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setLeisureTrafficRemained(ZJ)V

    if-eqz p2, :cond_1

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-wide/from16 v5, v16

    invoke-direct/range {v1 .. v7}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->doUpdateBgView(IJJF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateProductList(Lcom/miui/networkassistant/ui/bean/Card;)V
    .locals 11

    iget-object v0, p0, Lcom/miui/common/base/BaseActivity;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lp4/d;->f(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->viewPager:Lcom/miui/networkassistant/ui/view/MyViewPager;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/bean/Card;->getData()Lcom/miui/networkassistant/ui/bean/Data;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/bean/Data;->getTrafficProduct()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTrafficProductList:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTrafficProductList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-lez v0, :cond_f

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->abnormalView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateProductList: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTrafficProductList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "NAMainActivity"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v4, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->viewList1:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    iget-object v4, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->viewList2:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    iget-object v4, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->tabs:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    iget-object v4, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v4}, Lcom/google/android/material/tabs/TabLayout;->removeAllTabs()V

    iget-object v4, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTrafficProductList:Ljava/util/List;

    if-eqz v4, :cond_10

    iget-object v4, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->viewPager:Lcom/miui/networkassistant/ui/view/MyViewPager;

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    move v4, v2

    :goto_0
    iget-object v5, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTrafficProductList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ge v4, v5, :cond_6

    iget-object v5, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTrafficProductList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/networkassistant/ui/bean/TrafficProduct;

    invoke-virtual {v5}, Lcom/miui/networkassistant/ui/bean/TrafficProduct;->getData()Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mEveryCardData:Ljava/util/List;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mEveryCardData: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mEveryCardData:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v5, 0x7f0e0553

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iget-object v7, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mEveryCardData:Ljava/util/List;

    const v8, 0x7f0b02d1

    if-eqz v7, :cond_4

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_4

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/miui/networkassistant/ui/widget/CardsView;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const v9, 0x7f060115

    invoke-virtual {v7, v9}, Lcom/miui/networkassistant/ui/widget/CardsView;->setItemColor(I)Lcom/miui/networkassistant/ui/widget/CardsView;

    const v9, 0x7f060116

    invoke-virtual {v7, v9}, Lcom/miui/networkassistant/ui/widget/CardsView;->setItemDisableColor(I)Lcom/miui/networkassistant/ui/widget/CardsView;

    const/4 v9, 0x3

    invoke-virtual {v7, v9}, Lcom/miui/networkassistant/ui/widget/CardsView;->setCommonLines(I)Lcom/miui/networkassistant/ui/widget/CardsView;

    const/4 v9, 0x2

    invoke-virtual {v7, v9}, Lcom/miui/networkassistant/ui/widget/CardsView;->setType(I)Lcom/miui/networkassistant/ui/widget/CardsView;

    invoke-virtual {v7, p0}, Lcom/miui/networkassistant/ui/widget/CardsView;->setOnCardClick(Lcom/miui/networkassistant/viewholder/CardOnClickListener;)Lcom/miui/networkassistant/ui/widget/CardsView;

    invoke-virtual {v7, p0}, Lcom/miui/networkassistant/ui/widget/CardsView;->setOnNoNumCardClick(Lcom/miui/networkassistant/viewholder/NoPhoneNumCardOnClickListener;)Lcom/miui/networkassistant/ui/widget/CardsView;

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/bean/Card;->getData()Lcom/miui/networkassistant/ui/bean/Data;

    move-result-object v9

    invoke-virtual {v9}, Lcom/miui/networkassistant/ui/bean/Data;->getDataFlag()Ljava/lang/String;

    move-result-object v9

    const-string v10, "enable"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual {v7, v2}, Lcom/miui/networkassistant/ui/widget/CardsView;->setValid(Z)Lcom/miui/networkassistant/ui/widget/CardsView;

    goto :goto_1

    :cond_2
    invoke-virtual {v7, v6}, Lcom/miui/networkassistant/ui/widget/CardsView;->setValid(Z)Lcom/miui/networkassistant/ui/widget/CardsView;

    :goto_1
    iget-object v6, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mEveryCardData:Ljava/util/List;

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v10, ""

    invoke-virtual {v7, v6, v8, v10, v9}, Lcom/miui/networkassistant/ui/widget/CardsView;->setData(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-boolean v6, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->needShow:Z

    iget-object v8, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mPolicy:Ljava/lang/String;

    invoke-virtual {v7, v6, v8}, Lcom/miui/networkassistant/ui/widget/CardsView;->setPolicy(ZLjava/lang/String;)Lcom/miui/networkassistant/ui/widget/CardsView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setPolicy: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->needShow:Z

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mPolicy:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mSimUserInfo:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v8, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCurrentOperateSlotNum:I

    aget-object v6, v6, v8

    invoke-virtual {v6}, Lcom/miui/networkassistant/config/SimUserInfo;->acquirePhoneNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/miui/networkassistant/ui/widget/CardsView;->setPhoneNumber(Ljava/lang/String;)Lcom/miui/networkassistant/ui/widget/CardsView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "runOnUiThread: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mSimUserInfo:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v8, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCurrentOperateSlotNum:I

    aget-object v7, v7, v8

    invoke-virtual {v7}, Lcom/miui/networkassistant/config/SimUserInfo;->acquirePhoneNumber()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v6, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCurrentOperateSlotNum:I

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->viewList1:Ljava/util/List;

    goto :goto_2

    :cond_3
    iget-object v6, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->viewList2:Ljava/util/List;

    goto :goto_2

    :cond_4
    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/miui/networkassistant/ui/widget/CardsView;

    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    const v6, 0x7f0b0621

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    const v7, 0x7f0b0ca9

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v7, v2}, Landroid/view/View;->setVisibility(I)V

    iget v6, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCurrentOperateSlotNum:I

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->viewList1:Ljava/util/List;

    goto :goto_2

    :cond_5
    iget-object v6, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->viewList2:Ljava/util/List;

    :goto_2
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->tabs:Ljava/util/List;

    iget-object v6, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTrafficProductList:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/networkassistant/ui/bean/TrafficProduct;

    invoke-virtual {v6}, Lcom/miui/networkassistant/ui/bean/TrafficProduct;->getTabName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_6
    move p1, v2

    :goto_3
    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTrafficProductList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_9

    iget v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCurrentOperateSlotNum:I

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->tabViewAdapter0:Lcom/miui/networkassistant/ui/adapter/TabViewAdapter;

    :goto_4
    iget-object v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTrafficProductList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/networkassistant/ui/bean/TrafficProduct;

    invoke-virtual {v1}, Lcom/miui/networkassistant/ui/bean/TrafficProduct;->getTabName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/miui/networkassistant/ui/adapter/TabViewAdapter;->setPageTitle(ILjava/lang/String;)V

    goto :goto_5

    :cond_7
    if-ne v0, v6, :cond_8

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->tabViewAdapter1:Lcom/miui/networkassistant/ui/adapter/TabViewAdapter;

    goto :goto_4

    :cond_8
    :goto_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_9
    iget p1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCurrentOperateSlotNum:I

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->viewPager:Lcom/miui/networkassistant/ui/view/MyViewPager;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->tabViewAdapter0:Lcom/miui/networkassistant/ui/adapter/TabViewAdapter;

    :goto_6
    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/a;)V

    goto :goto_7

    :cond_a
    if-ne p1, v6, :cond_b

    iget-object p1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->viewPager:Lcom/miui/networkassistant/ui/view/MyViewPager;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->tabViewAdapter1:Lcom/miui/networkassistant/ui/adapter/TabViewAdapter;

    goto :goto_6

    :cond_b
    :goto_7
    iget-object p1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->viewPager:Lcom/miui/networkassistant/ui/view/MyViewPager;

    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    iget p1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCurrentOperateSlotNum:I

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->tabViewAdapter0:Lcom/miui/networkassistant/ui/adapter/TabViewAdapter;

    :goto_8
    invoke-virtual {p1}, Landroidx/viewpager/widget/a;->notifyDataSetChanged()V

    goto :goto_9

    :cond_c
    if-ne p1, v6, :cond_d

    iget-object p1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->tabViewAdapter1:Lcom/miui/networkassistant/ui/adapter/TabViewAdapter;

    goto :goto_8

    :cond_d
    :goto_9
    iget-object p1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->viewPager:Lcom/miui/networkassistant/ui/view/MyViewPager;

    new-instance v0, Lcom/miui/networkassistant/ui/m;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/m;-><init>(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    move p1, v2

    :goto_a
    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    move-result v0

    if-ge p1, v0, :cond_e

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0, p1}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->getTabView(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout$Tab;->setCustomView(Landroid/view/View;)Lcom/google/android/material/tabs/TabLayout$Tab;

    add-int/lit8 p1, p1, 0x1

    goto :goto_a

    :cond_e
    iget-object p1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    new-instance v0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$1;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$1;-><init>(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p1, v2}, Lcom/google/android/material/tabs/TabLayout;->setTabMode(I)V

    goto :goto_b

    :cond_f
    iget-object p1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mSimUserInfo:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCurrentOperateSlotNum:I

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/miui/networkassistant/config/SimUserInfo;->acquirePhoneNumber()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_10

    iget-object p1, p0, Lcom/miui/common/base/BaseActivity;->mAppContext:Landroid/content/Context;

    invoke-static {p1}, Lp4/d;->f(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->viewPager:Lcom/miui/networkassistant/ui/view/MyViewPager;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->abnormalView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->abnormalView:Landroid/widget/LinearLayout;

    const v0, 0x7f0b080e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->noNetwork:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->noNetwork:Landroid/view/View;

    const v0, 0x7f0b0ca5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f1203e2

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->noNetwork:Landroid/view/View;

    const v0, 0x7f0b061f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const v0, 0x7f080d9b

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_10
    :goto_b
    return-void
.end method

.method private updateRecommend(Lcom/miui/networkassistant/ui/bean/RecommendBean;)V
    .locals 3

    const v0, 0x7f0b008d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mAdvertise:Landroid/view/View;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/bean/RecommendBean;->getData()Lcom/miui/networkassistant/ui/bean/RecommendData;

    move-result-object v0

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/bean/RecommendBean;->getData()Lcom/miui/networkassistant/ui/bean/RecommendData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/bean/RecommendData;->getBestPosition()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/bean/RecommendBean;->getData()Lcom/miui/networkassistant/ui/bean/RecommendData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/bean/RecommendData;->getBestPosition()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mAdvertise:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0b05e2

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->banner:Landroid/widget/ImageView;

    const v0, 0x7f0b01be

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->bannerButton:Landroid/widget/Button;

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/bean/RecommendBean;->getData()Lcom/miui/networkassistant/ui/bean/RecommendData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/bean/RecommendData;->getBestPosition()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/ui/bean/Home;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/bean/Home;->getButtonText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->bannerButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->bannerButton:Landroid/widget/Button;

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/bean/RecommendBean;->getData()Lcom/miui/networkassistant/ui/bean/RecommendData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/networkassistant/ui/bean/RecommendData;->getBestPosition()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/networkassistant/ui/bean/Home;

    invoke-virtual {v1}, Lcom/miui/networkassistant/ui/bean/Home;->getButtonText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->bannerButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mAdvertise:Landroid/view/View;

    new-instance v1, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$5;

    invoke-direct {v1, p0, p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$5;-><init>(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;Lcom/miui/networkassistant/ui/bean/RecommendBean;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b006f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->bannerTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/bean/RecommendBean;->getData()Lcom/miui/networkassistant/ui/bean/RecommendData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/networkassistant/ui/bean/RecommendData;->getBestPosition()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/networkassistant/ui/bean/Home;

    invoke-virtual {v1}, Lcom/miui/networkassistant/ui/bean/Home;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b006e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->bannerSummary:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/bean/RecommendBean;->getData()Lcom/miui/networkassistant/ui/bean/RecommendData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/networkassistant/ui/bean/RecommendData;->getBestPosition()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/networkassistant/ui/bean/Home;

    invoke-virtual {v1}, Lcom/miui/networkassistant/ui/bean/Home;->getSubTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/bean/RecommendBean;->getData()Lcom/miui/networkassistant/ui/bean/RecommendData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/bean/RecommendData;->getBestPosition()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/ui/bean/Home;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/bean/Home;->getPictureUrl()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lx4/o0;->g:Lrh/c;

    invoke-virtual {p0, v0, v1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->setCacheIcon(Ljava/lang/String;Lrh/c;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mAdvertise:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/bean/RecommendBean;->getData()Lcom/miui/networkassistant/ui/bean/RecommendData;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/bean/RecommendBean;->getData()Lcom/miui/networkassistant/ui/bean/RecommendData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/bean/RecommendData;->getToolList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->updateToolItem(Lcom/miui/networkassistant/ui/bean/RecommendBean;)V

    :cond_2
    return-void
.end method

.method private updateToolItem(Lcom/miui/networkassistant/ui/bean/RecommendBean;)V
    .locals 6

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mToolBanner:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/bean/RecommendBean;->getData()Lcom/miui/networkassistant/ui/bean/RecommendData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/bean/RecommendBean;->getData()Lcom/miui/networkassistant/ui/bean/RecommendData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/bean/RecommendData;->getToolList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/bean/RecommendBean;->getData()Lcom/miui/networkassistant/ui/bean/RecommendData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/bean/RecommendData;->getToolList()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0e053f

    iget-object v4, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mToolBanner:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/miui/networkassistant/ui/view/MainToolbarItemView;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/networkassistant/ui/bean/Tool;

    invoke-virtual {v3}, Lcom/miui/networkassistant/ui/bean/Tool;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/miui/networkassistant/ui/view/MainToolbarItemView;->setName(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/miui/networkassistant/ui/bean/Tool;->getIconUrl()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lx4/o0;->g:Lrh/c;

    invoke-virtual {v2, v4, v5}, Lcom/miui/networkassistant/ui/view/MainToolbarItemView;->setCacheIcon(Ljava/lang/String;Lrh/c;)V

    new-instance v4, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$2;

    invoke-direct {v4, p0, v3}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$2;-><init>(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;Lcom/miui/networkassistant/ui/bean/Tool;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {v2}, Lcom/miui/networkassistant/utils/FolmeHelper;->onCardPressJustBg(Landroid/view/View;)V

    iget-object v3, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mToolBanner:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->refreshProductItemBg()V

    return-void
.end method

.method private updateTrafficCtl(I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->getTrafficUsedView(I)Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->updateTrafficUsedOnly(Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;I)V

    const p1, 0x7f120cfc

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->showPrimaryMessage(I)V

    const p1, 0x7f120d11

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setDataUsageButtonText(I)V

    return-void
.end method

.method private updateTrafficUsedOnly(Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;I)V
    .locals 12

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    if-eqz v0, :cond_1

    :try_start_0
    invoke-interface {v0, p2}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->getCorrectedNormalMonthDataUsageUsed(I)J

    move-result-wide v8

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    invoke-interface {v0, p2}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->getTodayDataUsageUsed(I)J

    move-result-wide v10

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    move-wide v2, v8

    invoke-virtual/range {v1 .. v7}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setMonthPackageInfo(JJFZ)V

    invoke-virtual {p1, v10, v11}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setTodayUsed(J)V

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v1}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setLeisureTrafficRemained(ZJ)V

    iget-object v3, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mSimUserInfo:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object v3, v3, p2

    invoke-virtual {v3}, Lcom/miui/networkassistant/config/SimUserInfo;->getBillCorrectionSuccessTime()J

    move-result-wide v3

    cmp-long v0, v3, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mSimUserInfo:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getBillPackageRemained()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setBillRemainedTextView(J)V

    :cond_0
    invoke-direct {p0, p2}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->getTitleOperatorName(I)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    long-to-float v3, v8

    iget-object v4, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    invoke-interface {v4, p2}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->getCurrentMonthTotalPackage(I)J

    move-result-wide v4

    long-to-float v4, v4

    div-float/2addr v3, v4

    sub-float/2addr v1, v3

    invoke-virtual {p1, v0, v2, v1, p2}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setCardStyle(Ljava/lang/String;IFI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateUiFrame()V
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mProductListPresenter:Lcom/miui/networkassistant/ui/presenter/ProductListPresenter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/networkassistant/ui/presenter/ProductListPresenter;

    iget-object v1, p0, Lcom/miui/common/base/BaseActivity;->mAppContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/miui/networkassistant/ui/presenter/ProductListPresenter;-><init>(Lcom/miui/networkassistant/ui/presenter/IproductListView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mProductListPresenter:Lcom/miui/networkassistant/ui/presenter/ProductListPresenter;

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mSimCardHelper:Lcom/miui/networkassistant/dual/SimCardHelper;

    invoke-virtual {v0}, Lcom/miui/networkassistant/dual/SimCardHelper;->isSimInserted()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/common/base/BaseActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lp4/d;->f(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTrafficProductList:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->viewPager:Lcom/miui/networkassistant/ui/view/MyViewPager;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->viewPager:Lcom/miui/networkassistant/ui/view/MyViewPager;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_1
    const v0, 0x7f0b0c08

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTitle:Landroid/view/View;

    iget-boolean v3, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->needOffLine:Z

    if-nez v3, :cond_4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->needOffLine:Z

    if-nez v0, :cond_5

    const v0, 0x7f0b0caf

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->tvForOther:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    const v0, 0x7f0b0660

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->abnormalView:Landroid/widget/LinearLayout;

    const v1, 0x7f0b0650

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->noResource:Landroid/view/View;

    const v0, 0x7f0b01ee

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->phoneNumView:Landroid/widget/TextView;

    const v0, 0x7f0b0a4d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mSetPhoneView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const v0, 0x7f0b0257

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->setPhoneView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->abnormalView:Landroid/widget/LinearLayout;

    const v1, 0x7f0b080f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->noPhoneNum:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->abnormalView:Landroid/widget/LinearLayout;

    const v1, 0x7f0b080e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->noNetwork:Landroid/view/View;

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->setPhoneViewText()V

    return-void
.end method

.method private updateUnLimitedCardTraffic(IZ)V
    .locals 12

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->showTrafficAdjusting(I)V

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->getTrafficUsedView(I)Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->getSimUserInfo(I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    invoke-interface {v2, p1}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->getTodayDataUsageUsed(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setTodayUsed(J)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setHasLeisure(Z)V

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setLeisureTrafficRemained(ZJ)V

    iget-object v2, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    invoke-interface {v2, p1}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->getCorrectedNormalMonthDataUsageUsed(I)J

    move-result-wide v2

    iget-object v4, p0, Lcom/miui/common/base/BaseActivity;->mAppContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f120ed4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setUnlimitedMonthPackageInfo(JLjava/lang/String;)V

    if-eqz p2, :cond_1

    const-wide v7, 0x7fffffffffffffffL

    const-wide/16 v9, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    move-object v5, p0

    move v6, p1

    invoke-direct/range {v5 .. v11}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->doUpdateBgView(IJJF)V

    :cond_1
    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getBillPackageRemained()J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setBillRemainedTextView(J)V

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getBillCorrectionSuccessTime()J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setPreAdjustTime(J)V

    new-instance p1, Lcom/miui/networkassistant/ui/o;

    invoke-direct {p1, p0}, Lcom/miui/networkassistant/ui/o;-><init>(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)V

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setDeclarationListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->unRegisterMonthRemainedClickListener()V

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->unRegisterBillLayoutClickListener()V

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->isDataRoaming()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getBillSmsDetail()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setBillLayoutClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateVirtualSimTraffic(I)V
    .locals 9

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->getTrafficUsedView(I)Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setHasLeisure(Z)V

    const v2, 0x7f120cff

    invoke-virtual {v0, v2}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setDataUsageButtonText(I)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setLeisureTrafficRemained(ZJ)V

    iget-object v2, p0, Lcom/miui/common/base/BaseActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/networkassistant/utils/VirtualSimUtil;->parseVirtualSimInfo(Landroid/content/Context;)Lcom/miui/networkassistant/model/VirtualSimInfo;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->getTitleOperatorName(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5, p1}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setCardStyle(Ljava/lang/String;IFI)V

    const-string p1, "com.miui.virtualsim"

    invoke-static {p0, p1}, Lx4/f1;->r(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    const/16 v3, 0x2bc

    const v4, 0x7f120d16

    const-wide/16 v5, -0x1

    if-lt p1, v3, :cond_3

    invoke-virtual {v2}, Lcom/miui/networkassistant/model/VirtualSimInfo;->getNewAssistKey1Content()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2}, Lcom/miui/networkassistant/model/VirtualSimInfo;->getNewAssistKey1Unit()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setTodayUsedCustom(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/miui/networkassistant/model/VirtualSimInfo;->getNewAssistKey1Title()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setMainTodayUsedTextView(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/miui/networkassistant/model/VirtualSimInfo;->getAssistCenter()J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setMonthRemain(J)V

    invoke-virtual {v2}, Lcom/miui/networkassistant/model/VirtualSimInfo;->getAssistCenter()J

    move-result-wide v7

    cmp-long p1, v7, v5

    if-nez p1, :cond_1

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/miui/networkassistant/model/VirtualSimInfo;->getAssistCenterTitle()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->showPrimaryMessage(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setMonthViewGroupVisible(Z)V

    :try_start_0
    invoke-virtual {v2}, Lcom/miui/networkassistant/model/VirtualSimInfo;->getNewAssistBalanceUnit()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-virtual {v2}, Lcom/miui/networkassistant/model/VirtualSimInfo;->getNewAssistBalanceContent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setBillRemainedTextView(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lcom/miui/networkassistant/model/VirtualSimInfo;->getNewAssistBalanceContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->customBillRemainTextView(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    invoke-virtual {v2}, Lcom/miui/networkassistant/model/VirtualSimInfo;->getNewAssistBalanceContent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setBillRemainedTextView(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v2}, Lcom/miui/networkassistant/model/VirtualSimInfo;->getNewAssistBalanceTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setMainBillRemainTextView(Ljava/lang/String;)V

    new-instance p1, Lcom/miui/networkassistant/ui/d;

    invoke-direct {p1, p0, v2}, Lcom/miui/networkassistant/ui/d;-><init>(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;Lcom/miui/networkassistant/model/VirtualSimInfo;)V

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setDeclarationListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_3
    invoke-virtual {v2}, Lcom/miui/networkassistant/model/VirtualSimInfo;->getAssistKey1()J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setTodayUsed(J)V

    invoke-virtual {v2}, Lcom/miui/networkassistant/model/VirtualSimInfo;->getAssistKey1Title()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setMainTodayUsedTextView(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/miui/networkassistant/model/VirtualSimInfo;->getAssistCenter()J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setMonthRemain(J)V

    invoke-virtual {v2}, Lcom/miui/networkassistant/model/VirtualSimInfo;->getAssistCenter()J

    move-result-wide v7

    cmp-long p1, v7, v5

    if-nez p1, :cond_4

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Lcom/miui/networkassistant/model/VirtualSimInfo;->getAssistCenterTitle()Ljava/lang/String;

    move-result-object p1

    :goto_2
    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->showPrimaryMessage(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/miui/networkassistant/model/VirtualSimInfo;->getAssistKey2Title()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setMonthPackageViewVisible(Z)V

    goto :goto_3

    :cond_5
    invoke-virtual {v2}, Lcom/miui/networkassistant/model/VirtualSimInfo;->getAssistKey2()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setMonthPackage(J)V

    invoke-virtual {v2}, Lcom/miui/networkassistant/model/VirtualSimInfo;->getAssistKey2Title()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setMainMonthPackageTextView(Ljava/lang/String;)V

    :goto_3
    invoke-virtual {v2}, Lcom/miui/networkassistant/model/VirtualSimInfo;->getAssistBalance()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setBillRemainedTextView(J)V

    invoke-virtual {v2}, Lcom/miui/networkassistant/model/VirtualSimInfo;->getAssistBalanceTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setMainBillRemainTextView(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public clickSetPhoneNum(Ljava/lang/String;Lcom/miui/networkassistant/ui/bean/CardSData;ILcom/miui/networkassistant/viewholder/CardOnClickListener;Ljava/lang/String;Z)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/miui/networkassistant/ui/bean/CardSData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/miui/networkassistant/viewholder/CardOnClickListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "phone_dialog_source"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "phone_dialog_exposure"

    const-wide/16 v2, 0x1

    invoke-static {v1, v2, v3, v0}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordCalculateEvent(Ljava/lang/String;JLjava/util/Map;)V

    iput-object p1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCarrier:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCardsData:Lcom/miui/networkassistant/ui/bean/CardSData;

    iput p3, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mPosition:I

    iput-object p5, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->policy:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCardOnClickListener:Lcom/miui/networkassistant/viewholder/CardOnClickListener;

    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mNeedDispaly:Ljava/lang/Boolean;

    iget-object p1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mSimUserInfo:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget p2, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCurrentOperateSlotNum:I

    aget-object p1, p1, p2

    invoke-virtual {p1}, Lcom/miui/networkassistant/config/SimUserInfo;->acquirePhoneNumber()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->showWriteNum()V

    :cond_0
    return-void
.end method

.method public directPay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    const-string v0, "+62"

    iget-object v1, p0, Lcom/miui/common/base/BaseActivity;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lp4/d;->f(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "phoneNumber"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "productType"

    iget-object v3, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->productType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "productId"

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "dataSize"

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "validityPeriod"

    invoke-virtual {v1, v2, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "salePrice"

    invoke-virtual {v1, v2, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "language"

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "appVersion"

    iget-object v4, p0, Lcom/miui/common/base/BaseActivity;->mAppContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lx4/f1;->r(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "miuiVersion"

    invoke-static {}, Lx4/t;->h()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "device"

    iget-object v4, p0, Lcom/miui/common/base/BaseActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v4}, Lx4/a0;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/miui/common/base/BaseActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v3}, Ly4/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "oaid"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_1
    const-string v3, "uuid"

    sget-object v4, Lcom/miui/networkassistant/utils/SettingsUtils;->INSTANCE:Lcom/miui/networkassistant/utils/SettingsUtils;

    invoke-virtual {v4}, Lcom/miui/networkassistant/utils/SettingsUtils;->getUUID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_0
    iget-boolean v3, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mIsID:Z

    if-eqz v3, :cond_2

    const-string v3, "country"

    iget-object v4, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCountry:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    const-string v3, "slotId"

    iget v4, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCurrentOperateSlotNum:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "pageIndex"

    const-string v4, "home"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "commonParameters"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/bean/ParamsUtils;->setPayParams(Ljava/util/HashMap;)V

    new-instance v1, Lcom/miui/networkassistant/ui/presenter/PayOrderInfoPresenter;

    iget-object v2, p0, Lcom/miui/common/base/BaseActivity;->mAppContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/miui/networkassistant/ui/presenter/PayOrderInfoPresenter;-><init>(Lcom/miui/networkassistant/ui/presenter/IpayOrderView;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mPayOrderInfoPresenter:Lcom/miui/networkassistant/ui/presenter/PayOrderInfoPresenter;

    invoke-virtual {v1, p4}, Lcom/miui/networkassistant/ui/presenter/PayOrderInfoPresenter;->setPeriod(Ljava/lang/String;)V

    iget-object p4, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mPayOrderInfoPresenter:Lcom/miui/networkassistant/ui/presenter/PayOrderInfoPresenter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Lcom/miui/networkassistant/ui/presenter/PayOrderInfoPresenter;->setPhoneNum(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mPayOrderInfoPresenter:Lcom/miui/networkassistant/ui/presenter/PayOrderInfoPresenter;

    invoke-virtual {p1, p2}, Lcom/miui/networkassistant/ui/presenter/PayOrderInfoPresenter;->setProductID(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mPayOrderInfoPresenter:Lcom/miui/networkassistant/ui/presenter/PayOrderInfoPresenter;

    invoke-virtual {p1, p3}, Lcom/miui/networkassistant/ui/presenter/PayOrderInfoPresenter;->setDataSize(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mPayOrderInfoPresenter:Lcom/miui/networkassistant/ui/presenter/PayOrderInfoPresenter;

    invoke-virtual {p1, p5}, Lcom/miui/networkassistant/ui/presenter/PayOrderInfoPresenter;->setFee(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "NAMainActivity"

    const-string p3, "Exception"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    iget-object p1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    iget-object p2, p0, Lcom/miui/common/base/BaseActivity;->mAppContext:Landroid/content/Context;

    const p3, 0x7f1203e3

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmiuix/appcompat/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lmiuix/appcompat/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    invoke-virtual {p1, p2}, Lmiuix/appcompat/app/AlertDialog;->setCancelable(Z)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->show()V

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->postPolicyAgree()V

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->fetchPayInfo()V

    return-void
.end method

.method public fetchFunctionItem(I)V
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mFunctionItemPresenter:Lcom/miui/networkassistant/ui/presenter/FunctionItemPresenter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/networkassistant/ui/presenter/FunctionItemPresenter;

    iget-object v1, p0, Lcom/miui/common/base/BaseActivity;->mAppContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/miui/networkassistant/ui/presenter/FunctionItemPresenter;-><init>(Lcom/miui/networkassistant/ui/presenter/IFunctionItemView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mFunctionItemPresenter:Lcom/miui/networkassistant/ui/presenter/FunctionItemPresenter;

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mFunctionItemPresenter:Lcom/miui/networkassistant/ui/presenter/FunctionItemPresenter;

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/ui/presenter/FunctionItemPresenter;->fetchFunctionItem(I)V

    return-void
.end method

.method public fetchOffLine()V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mOffLinePresenter:Lcom/miui/networkassistant/ui/presenter/OffLinePresenter;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/presenter/OffLinePresenter;->fetchOffLine()V

    return-void
.end method

.method public fetchPayInfo()V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mPayOrderInfoPresenter:Lcom/miui/networkassistant/ui/presenter/PayOrderInfoPresenter;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/presenter/PayOrderInfoPresenter;->fetchPayInfo()V

    return-void
.end method

.method public fetchPolicyUpdate()V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mGetPolicyUpdatePresenter:Lcom/miui/networkassistant/ui/presenter/GetPolicyUpdatePresenter;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/presenter/GetPolicyUpdatePresenter;->fetchPolicyUpdate()V

    return-void
.end method

.method public fetchProductList()V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mProductListPresenter:Lcom/miui/networkassistant/ui/presenter/ProductListPresenter;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/presenter/ProductListPresenter;->fetchProductList()V

    return-void
.end method

.method public fetchRecommend()V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mRecommendDataPresenter:Lcom/miui/networkassistant/ui/presenter/RecommendDataPresenter;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/presenter/RecommendDataPresenter;->fetchRecommend()V

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

.method public getPolicyUpdateFail()V
    .locals 2

    const-string v0, "NAMainActivity"

    const-string v1, "getPolicyUpdateFail: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getPolicyUpdateSuccess(Lcom/miui/networkassistant/ui/bean/PolicyCode;)V
    .locals 1
    .param p1    # Lcom/miui/networkassistant/ui/bean/PolicyCode;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/bean/PolicyCode;->getRtnCode()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/bean/PolicyCode;->getData()Lcom/miui/networkassistant/ui/bean/PolicyData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/bean/PolicyData;->getPolicyTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mPolicy:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/bean/PolicyCode;->getData()Lcom/miui/networkassistant/ui/bean/PolicyData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/bean/PolicyData;->getNeedAgree()Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->needShow:Z

    :cond_0
    return-void
.end method

.method public bridge synthetic getRatioUiBaseWidthDp()I
    .locals 1

    invoke-static {p0}, Lmiuix/autodensity/i;->a(Lmiuix/autodensity/j;)I

    move-result v0

    return v0
.end method

.method public notOffLine()V
    .locals 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->needOffLine:Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lmiuix/appcompat/app/ProgressDialog;

    iget-object v1, p0, Lcom/miui/common/base/BaseActivity;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mPagerViews:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/miui/common/base/BaseActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/dual/SimCardHelper;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/dual/SimCardHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mSimCardHelper:Lcom/miui/networkassistant/dual/SimCardHelper;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mDataReady:Z

    invoke-virtual {v0}, Lcom/miui/networkassistant/dual/SimCardHelper;->isSimInserted()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->needOffLine:Z

    if-nez v0, :cond_1

    const-wide/16 v0, 0x1

    const-string v2, "home_show"

    invoke-static {v2, v0, v1}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordCalculateEvent(Ljava/lang/String;J)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->initTrafficPurchase()V

    :cond_1
    const-string v0, "NAMainActivity"

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
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    const-string p1, "NAMainActivity"

    const-string v0, "notOffLine: \u9700\u8981\u4e0b\u7ebf"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
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
    .locals 1

    invoke-static {}, Lcom/miui/networkassistant/ui/thread/ThreadPool;->startup()V

    invoke-super {p0, p1}, Lcom/miui/networkassistant/ui/activity/BaseStatsActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->shouldShowTrafficPurchase()Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mShouldShow:Z

    sget-object p1, Lcom/miui/networkassistant/utils/SettingsUtils;->INSTANCE:Lcom/miui/networkassistant/utils/SettingsUtils;

    invoke-virtual {p1}, Lcom/miui/networkassistant/utils/SettingsUtils;->isPreviewEnv()Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->isPreview:Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCreate: isPreview:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->isPreview:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NAMainActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->isPreview:Z

    invoke-static {p1}, Lcom/miui/networkassistant/ui/bean/ParamsUtils;->setPreview(Z)V

    invoke-static {p0}, Lcom/miui/networkassistant/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/config/CommonConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/networkassistant/config/CommonConfig;->isNetWorkAssistantEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->StartPage()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->agreeToPrivacy()V

    :goto_0
    return-void
.end method

.method protected onCreateContentView()I
    .locals 1

    const v0, 0x7f0e003b

    return v0
.end method

.method protected onCustomizeActionBar(Lmiuix/appcompat/app/ActionBar;)V
    .locals 3

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060b0a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v0, 0x1c

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayOptions(I)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v1, 0x7f08104d

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    const v1, 0x7f120097

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/miui/networkassistant/ui/n;

    invoke-direct {v1, p0}, Lcom/miui/networkassistant/ui/n;-><init>(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lx4/t;->E()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    invoke-static {}, Lx4/t;->r()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v2, v1}, Lmiuix/appcompat/app/ActionBar;->setExpandState(IZ)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p1, v2}, Lmiuix/appcompat/app/ActionBar;->setExpandState(I)V

    :goto_1
    invoke-virtual {p1, v2}, Lmiuix/appcompat/app/ActionBar;->setResizable(Z)V

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/ActionBar;->setEndView(Landroid/view/View;)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    invoke-super {p0}, Lcom/miui/common/base/BaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mProductListPresenter:Lcom/miui/networkassistant/ui/presenter/ProductListPresenter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/presenter/ProductListPresenter;->onDestroy()V

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mRecommendDataPresenter:Lcom/miui/networkassistant/ui/presenter/RecommendDataPresenter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/presenter/RecommendDataPresenter;->onDestroy()V

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mPayOrderInfoPresenter:Lcom/miui/networkassistant/ui/presenter/PayOrderInfoPresenter;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/presenter/PayOrderInfoPresenter;->onDestroy()V

    :cond_2
    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mOffLinePresenter:Lcom/miui/networkassistant/ui/presenter/OffLinePresenter;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/presenter/OffLinePresenter;->onDestroy()V

    :cond_3
    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mGetPolicyUpdatePresenter:Lcom/miui/networkassistant/ui/presenter/GetPolicyUpdatePresenter;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/presenter/GetPolicyUpdatePresenter;->onDestroy()V

    :cond_4
    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    :cond_5
    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->trafficPurchaseDialog:Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    :cond_6
    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mFunctionItemPresenter:Lcom/miui/networkassistant/ui/presenter/FunctionItemPresenter;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/presenter/FunctionItemPresenter;->onDestroy()V

    :cond_7
    iget v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCurrentOperateSlotNum:I

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->getTrafficUsedView(I)Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->onDestroy()V

    :cond_8
    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mHandler:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$UiHandler;

    if-eqz v0, :cond_9

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_9
    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTrafficCornBinders:[Lcom/miui/networkassistant/service/ITrafficCornBinder;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const-string v1, "NAMainActivity"

    if-eqz v0, :cond_a

    :try_start_0
    iget-object v2, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTrafficCornBinderListenerHost:Lcom/miui/networkassistant/service/wrapper/TrafficCornBinderListenerHost;

    invoke-virtual {v2}, Lcom/miui/networkassistant/service/wrapper/TrafficCornBinderListenerHost;->getStub()Lcom/miui/networkassistant/service/ITrafficCornBinderListener;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/miui/networkassistant/service/ITrafficCornBinder;->unRegisterLisener(Lcom/miui/networkassistant/service/ITrafficCornBinderListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "unRegisterListener slot 1"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_a
    :goto_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTrafficCornBinders:[Lcom/miui/networkassistant/service/ITrafficCornBinder;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    if-eqz v0, :cond_b

    :try_start_1
    iget-object v2, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTrafficCornBinderListenerHost:Lcom/miui/networkassistant/service/wrapper/TrafficCornBinderListenerHost;

    invoke-virtual {v2}, Lcom/miui/networkassistant/service/wrapper/TrafficCornBinderListenerHost;->getStub()Lcom/miui/networkassistant/service/ITrafficCornBinderListener;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/miui/networkassistant/service/ITrafficCornBinder;->unRegisterLisener(Lcom/miui/networkassistant/service/ITrafficCornBinderListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v2, "unRegisterListener slot 2"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_b
    :goto_1
    invoke-direct {p0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->unbindTrafficManageService()V

    return-void
.end method

.method public onNumUpdated(Ljava/lang/String;I)V
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->isNormalNum(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-wide/16 v0, 0x1

    const-string p2, "set_phone_finish"

    invoke-static {p2, v0, v1}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordCalculateEvent(Ljava/lang/String;J)V

    iget-object p2, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mSimUserInfo:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCurrentOperateSlotNum:I

    aget-object p2, p2, v0

    invoke-virtual {p2, p1}, Lcom/miui/networkassistant/config/SimUserInfo;->savePhoneNumber(Ljava/lang/String;)V

    const-string p2, "\\w(?=\\w{4})"

    const-string v0, "*"

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->phoneNumView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lcom/miui/networkassistant/utils/IDPhoneNumberUtil;->getIspByPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mSimUserInfo:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCurrentOperateSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p2}, Lcom/miui/networkassistant/config/SimUserInfo;->setCarrier(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->abnormalView:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->noPhoneNum:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mProductListPresenter:Lcom/miui/networkassistant/ui/presenter/ProductListPresenter;

    invoke-virtual {v0, p2}, Lcom/miui/networkassistant/ui/presenter/ProductListPresenter;->setCarrier(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mAdvertise:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCarrier:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->updateUiFrame()V

    iget-object p2, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCardsData:Lcom/miui/networkassistant/ui/bean/CardSData;

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->trafficPurchaseDialog:Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;

    invoke-virtual {p2}, Lcom/miui/networkassistant/ui/bean/CardSData;->getProductTitle1()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;->setTitle(Ljava/lang/String;)Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;

    iget-object p2, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->trafficPurchaseDialog:Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCardsData:Lcom/miui/networkassistant/ui/bean/CardSData;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/bean/CardSData;->getProductDesc2()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;->setDesc(Ljava/lang/String;)Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;

    iget-object p2, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->trafficPurchaseDialog:Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCardsData:Lcom/miui/networkassistant/ui/bean/CardSData;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/bean/CardSData;->getProductDesc1()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;->setProductTitle(Ljava/lang/String;)Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;

    iget-object p2, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->trafficPurchaseDialog:Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCardsData:Lcom/miui/networkassistant/ui/bean/CardSData;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/bean/CardSData;->getProductTitle2()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;->setProductTitle2(Ljava/lang/String;)Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;

    iget-object p2, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->trafficPurchaseDialog:Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCardsData:Lcom/miui/networkassistant/ui/bean/CardSData;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/bean/CardSData;->getSalePrice()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;->setFee(Ljava/lang/String;)Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;

    iget-object p2, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->trafficPurchaseDialog:Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCardsData:Lcom/miui/networkassistant/ui/bean/CardSData;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/bean/CardSData;->getSalePriceDesc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;->setFeeText(Ljava/lang/String;)Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;

    iget-object p2, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->trafficPurchaseDialog:Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCardsData:Lcom/miui/networkassistant/ui/bean/CardSData;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/bean/CardSData;->getProductId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;->setProductId(Ljava/lang/String;)Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;

    iget-object p2, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->trafficPurchaseDialog:Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;

    invoke-virtual {p2, p1}, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;->setPhoneNumber(Ljava/lang/String;)Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;

    iget-object p1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->trafficPurchaseDialog:Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;

    iget p2, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mPosition:I

    invoke-virtual {p1, p2}, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;->setPosition(I)Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;

    iget-object p1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->trafficPurchaseDialog:Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;

    iget-object p2, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCardOnClickListener:Lcom/miui/networkassistant/viewholder/CardOnClickListener;

    invoke-virtual {p1, p2}, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;->setCardOnClickListener(Lcom/miui/networkassistant/viewholder/CardOnClickListener;)Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;

    iget-object p1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->trafficPurchaseDialog:Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;

    iget-object p2, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCardsData:Lcom/miui/networkassistant/ui/bean/CardSData;

    invoke-virtual {p2}, Lcom/miui/networkassistant/ui/bean/CardSData;->getDataSize()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;->setDataSize(Ljava/lang/String;)Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;

    iget-object p1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->trafficPurchaseDialog:Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;

    iget-object p2, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCardsData:Lcom/miui/networkassistant/ui/bean/CardSData;

    invoke-virtual {p2}, Lcom/miui/networkassistant/ui/bean/CardSData;->getValidityPeriod()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;->setValidityPeriod(Ljava/lang/String;)Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;

    iget-object p1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->trafficPurchaseDialog:Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;

    iget-object p2, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mNeedDispaly:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;->setPolicyDisplay(Z)Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;

    iget-object p1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->trafficPurchaseDialog:Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;

    iget-object p2, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->policy:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;->setPolicyText(Ljava/lang/String;)Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;

    iget-object p1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->trafficPurchaseDialog:Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->show()V

    :cond_0
    iget p1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCurrentOperateSlotNum:I

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->initPurchase(I)V

    :cond_1
    return-void
.end method

.method protected onPause()V
    .locals 4

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    iget v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCurrentOperateSlotNum:I

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->getTrafficUsedView(I)Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->onPause()V

    :cond_0
    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mShouldShow:Z

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->leaveTime:J

    iget-wide v2, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->enterTime:J

    sub-long/2addr v0, v2

    const-string v2, "enter_time"

    invoke-static {v2, v0, v1}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordCalculateEvent(Ljava/lang/String;J)V

    :cond_1
    return-void
.end method

.method public onPhoneNumberBySlotLoaded(Ljava/lang/String;I)V
    .locals 1

    invoke-static {p1}, Lcom/miui/networkassistant/utils/PhoneNumberUtils;->localizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mSimUserInfo:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object p2, v0, p2

    invoke-virtual {p2, p1}, Lcom/miui/networkassistant/config/SimUserInfo;->savePhoneNumber(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onRestart()V
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->initData()V

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mShouldShow:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mProductListPresenter:Lcom/miui/networkassistant/ui/presenter/ProductListPresenter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/networkassistant/ui/presenter/ProductListPresenter;

    iget-object v1, p0, Lcom/miui/common/base/BaseActivity;->mAppContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/miui/networkassistant/ui/presenter/ProductListPresenter;-><init>(Lcom/miui/networkassistant/ui/presenter/IproductListView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mProductListPresenter:Lcom/miui/networkassistant/ui/presenter/ProductListPresenter;

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mGetPolicyUpdatePresenter:Lcom/miui/networkassistant/ui/presenter/GetPolicyUpdatePresenter;

    if-nez v0, :cond_1

    new-instance v0, Lcom/miui/networkassistant/ui/presenter/GetPolicyUpdatePresenter;

    iget-object v1, p0, Lcom/miui/common/base/BaseActivity;->mAppContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/miui/networkassistant/ui/presenter/GetPolicyUpdatePresenter;-><init>(Lcom/miui/networkassistant/ui/presenter/IPolicyUpdateView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mGetPolicyUpdatePresenter:Lcom/miui/networkassistant/ui/presenter/GetPolicyUpdatePresenter;

    :cond_1
    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->fetchPolicyUpdate()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mOffLinePresenter:Lcom/miui/networkassistant/ui/presenter/OffLinePresenter;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->fetchOffLine()V

    :cond_2
    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    iget v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCurrentOperateSlotNum:I

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->getTrafficUsedView(I)Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->onResume()V

    :cond_0
    return-void
.end method

.method public postPolicyAgree()V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mGetPolicyUpdatePresenter:Lcom/miui/networkassistant/ui/presenter/GetPolicyUpdatePresenter;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/presenter/GetPolicyUpdatePresenter;->postPolicyAgree()V

    return-void
.end method

.method public postPolicyFail()V
    .locals 2

    const-string v0, "NAMainActivity"

    const-string v1, "postPolicyFail: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public postPolicySuccess(Lcom/miui/networkassistant/ui/bean/PolicyCode;)V
    .locals 1
    .param p1    # Lcom/miui/networkassistant/ui/bean/PolicyCode;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string p1, "NAMainActivity"

    const-string v0, "postPolicySuccess: "

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, ""

    iput-object p1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mPolicy:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->needShow:Z

    return-void
.end method

.method public saveOrderInfo(Lcom/miui/networkassistant/ui/bean/PayData;)V
    .locals 2
    .param p1    # Lcom/miui/networkassistant/ui/bean/PayData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/bean/PayData;->getData()Lcom/miui/networkassistant/ui/bean/DataInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/bean/PayData;->getData()Lcom/miui/networkassistant/ui/bean/DataInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/bean/DataInfo;->getPayURL()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mPayUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/bean/PayData;->getData()Lcom/miui/networkassistant/ui/bean/DataInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/bean/DataInfo;->getProductOrderId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/bean/PayData;->getData()Lcom/miui/networkassistant/ui/bean/DataInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/bean/DataInfo;->getNonce()Ljava/lang/String;

    move-result-object p1

    const-string v1, "nonce"

    invoke-static {v1, p1}, Lcom/miui/networkassistant/ui/bean/ParamsUtils;->setNonce(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "productOrderId"

    invoke-static {p1, v0}, Lcom/miui/networkassistant/ui/bean/ParamsUtils;->setOrderID(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mPayUrl:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/miui/common/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public saveRecommend(Lcom/miui/networkassistant/ui/bean/RecommendBean;)V
    .locals 0
    .param p1    # Lcom/miui/networkassistant/ui/bean/RecommendBean;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->updateRecommend(Lcom/miui/networkassistant/ui/bean/RecommendBean;)V

    return-void
.end method

.method public setCacheIcon(Ljava/lang/String;Lrh/c;)V
    .locals 3

    invoke-virtual {p2}, Lrh/c;->K()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lrh/d;->o()Lrh/d;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/common/base/BaseActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lrh/e;->a(Landroid/content/Context;)Lrh/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrh/d;->p(Lrh/e;)V

    new-instance v1, Lxh/a;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->banner:Landroid/widget/ImageView;

    invoke-direct {v1, v2}, Lxh/a;-><init>(Landroid/widget/ImageView;)V

    new-instance v2, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$6;

    invoke-direct {v2, p0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$6;-><init>(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)V

    invoke-virtual {v0, p1, v1, p2, v2}, Lrh/d;->l(Ljava/lang/String;Lxh/b;Lrh/c;Lyh/a;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lrh/d;->o()Lrh/d;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/common/base/BaseActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lrh/e;->a(Landroid/content/Context;)Lrh/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrh/d;->p(Lrh/e;)V

    new-instance v1, Lxh/a;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->banner:Landroid/widget/ImageView;

    invoke-direct {v1, v2}, Lxh/a;-><init>(Landroid/widget/ImageView;)V

    invoke-virtual {v0, p1, v1, p2}, Lrh/d;->k(Ljava/lang/String;Lxh/b;Lrh/c;)V

    :goto_0
    return-void
.end method

.method public showData(Lcom/miui/networkassistant/ui/bean/Card;)V
    .locals 1
    .param p1    # Lcom/miui/networkassistant/ui/bean/Card;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->updateProductList(Lcom/miui/networkassistant/ui/bean/Card;)V

    const-string p1, "NAMainActivity"

    const-string v0, "showData:updateProductList \u6267\u884c\u4e86"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public showData(Lcom/miui/networkassistant/ui/bean/FunctionData;I)V
    .locals 5
    .param p1    # Lcom/miui/networkassistant/ui/bean/FunctionData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/miui/common/base/BaseActivity;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lp4/d;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iput-object p1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->functionData:Lcom/miui/networkassistant/ui/bean/FunctionData;

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/bean/FunctionData;->getData()Lcom/miui/networkassistant/ui/bean/FunctionBanner;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/bean/FunctionData;->getData()Lcom/miui/networkassistant/ui/bean/FunctionBanner;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/bean/FunctionBanner;->getProductList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->functionData:Lcom/miui/networkassistant/ui/bean/FunctionData;

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/bean/FunctionData;->getData()Lcom/miui/networkassistant/ui/bean/FunctionBanner;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/bean/FunctionBanner;->getProductList()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->functionData:Lcom/miui/networkassistant/ui/bean/FunctionData;

    invoke-virtual {v1}, Lcom/miui/networkassistant/ui/bean/FunctionData;->getData()Lcom/miui/networkassistant/ui/bean/FunctionBanner;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/networkassistant/ui/bean/FunctionBanner;->getProductList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iget-object v3, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->functionData:Lcom/miui/networkassistant/ui/bean/FunctionData;

    invoke-virtual {v3}, Lcom/miui/networkassistant/ui/bean/FunctionData;->getData()Lcom/miui/networkassistant/ui/bean/FunctionBanner;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/networkassistant/ui/bean/FunctionBanner;->getSecondaryCardRec()Lcom/miui/networkassistant/ui/bean/SecondaryCardRec;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->secondaryCardRec:Lcom/miui/networkassistant/ui/bean/SecondaryCardRec;

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->updateFunctionItems()V

    iput-boolean v2, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->shouldNotRefresh:Z

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_1

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-boolean v2, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->shouldNotRefresh:Z

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/networkassistant/ui/bean/Product;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/networkassistant/ui/bean/Product;->equals(Ljava/lang/Object;)Z

    move-result v3

    and-int/2addr v2, v3

    iput-boolean v2, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->shouldNotRefresh:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iput-boolean v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->shouldNotRefresh:Z

    :cond_2
    if-gez p2, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->secondaryCardRec:Lcom/miui/networkassistant/ui/bean/SecondaryCardRec;

    if-eqz p1, :cond_4

    invoke-direct {p0, p2, p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->updateNetWorkSimCard(ILcom/miui/networkassistant/ui/bean/SecondaryCardRec;)V

    goto :goto_1

    :cond_4
    invoke-direct {p0, p2}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->updateDataAndBg(I)V

    :cond_5
    :goto_1
    return-void

    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mSimCardHelper:Lcom/miui/networkassistant/dual/SimCardHelper;

    invoke-virtual {p1}, Lcom/miui/networkassistant/dual/SimCardHelper;->isDualSimInserted()Z

    move-result p1

    if-nez p1, :cond_7

    invoke-direct {p0, p2}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->updateDataAndBg(I)V

    :cond_7
    return-void
.end method

.method public showError()V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->noNetwork:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->viewPager:Lcom/miui/networkassistant/ui/view/MyViewPager;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    const-string v0, "NAMainActivity"

    const-string v1, "showError: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mSimUserInfo:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mCurrentOperateSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->acquirePhoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/miui/common/base/BaseActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lp4/d;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->abnormalView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->abnormalView:Landroid/widget/LinearLayout;

    const v2, 0x7f0b0650

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->noResource:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->noResource:Landroid/view/View;

    const v1, 0x7f0b0ca5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f1203e2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_3
    return-void
.end method

.method public showErrorDialog()V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    iget-object v0, p0, Lcom/miui/common/base/BaseActivity;->mAppContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1203d4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public showErrorMessage()V
    .locals 2

    const-string v0, "NAMainActivity"

    const-string v1, "showErrorMessage: \u529f\u80fd\u4f4d\u83b7\u53d6\u5931\u8d25"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public showWriteNum()V
    .locals 6

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->inputPhoneDialog:Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1203e0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/common/base/BaseActivity;->mActivity:Landroid/app/Activity;

    const v3, 0x7f120c60

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1203f9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;->buildInputDialog(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->inputPhoneDialog:Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;->clearInputText()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->inputPhoneDialog:Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;->setCheckTextView()V

    return-void
.end method

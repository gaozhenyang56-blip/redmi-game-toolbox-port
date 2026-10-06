.class public Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;
.super Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;
.source "SourceFile"

# interfaces
.implements Lcom/miui/networkassistant/ui/view/AppDetailTrafficView$ChartDragListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$BackgroundRestrictChangedListener;,
        Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$MobileFirewallChangedListener2;,
        Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$MobileFirewallChangedListener1;,
        Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$MainHandler;
    }
.end annotation


# static fields
.field private static final MSG_FW_CONNECTED:I = 0x2

.field private static final MSG_TM_CONNECTED:I = 0x3

.field private static final MSG_UPDATE_DATA:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ShowAppDetailFragment"

.field private static final TITLE_FILED:I = 0x7f12016c

.field private static final X_MARGIN_HOUR:I = 0xb6

.field private static final X_MARGIN_MONTH:I = 0x7e

.field private static final Y_MARGIN:I = 0x46


# instance fields
.field private mAppDetailTrafficView:Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;

.field private mAppInfo:Lcom/miui/networkassistant/model/AppInfo;

.field private mAppMonitorListener:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;

.field private mAppMonitorWrapper:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

.field private mBackgroundPolicyService:Lcom/miui/networkassistant/firewall/BackgroundPolicyService;

.field private mBackgroundRestrictChangedListener:Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView$ToolbarItemClickListener;

.field private mBackgroundRestrictLayout:Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

.field private mDataReady:Z

.field protected mDensity:F

.field private mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

.field private mFirewallServiceConnection:Landroid/content/ServiceConnection;

.field private mHandler:Landroid/os/Handler;

.field private mIcon:Landroid/widget/ImageView;

.field private mInited:Z

.field private mIsFromAM:Z

.field private mIsManagedProfileApp:Z

.field private mLabel:Landroid/widget/TextView;

.field private mLastMonthMobileTrafficPreDayList:[J

.field private mLastMonthStart:J

.field private mLastMonthWlanTrafficPreDayList:[J

.field private mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mLocations:[I

.field private mMiServiceAppDetailItem:Lcom/miui/networkassistant/ui/view/ToolbarItemView;

.field private mMobileFirewallChangedListener1:Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView$ToolbarItemClickListener;

.field private mMobileFirewallChangedListener2:Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView$ToolbarItemClickListener;

.field private mMobileFirewallLayout:[Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

.field private mMobileTraffic:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[",
            "Lcom/miui/networkassistant/model/AppDataUsage;",
            ">;"
        }
    .end annotation
.end field

.field private mMonthMobileTrafficPerDayList:[J

.field private mMonthWlanTrafficPerDayList:[J

.field private mNetworkTrafficWarningLayout:Landroid/widget/LinearLayout;

.field private mPackageName:Ljava/lang/String;

.field private mRealPackageName:Ljava/lang/String;

.field private mScreenWidth:I

.field private mStatisticAppTraffic:Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;

.field private mThisMonthEnd:J

.field private mThisMonthStart:J

.field private mTitleLayout:Landroid/view/View;

.field private mTitleStrings:[Ljava/lang/String;

.field private mTitleType:I

.field private mTitleView:Landroid/widget/TextView;

.field private mTodayMobileTrafficPerHourList:[J

.field private mTodayStart:J

.field private mTodayWlanTrafficPerHourList:[J

.field private mTrafficDragView:Lcom/miui/networkassistant/ui/view/TrafficDragView;

.field private mUpdateTrafficAsyncTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mVersion:Landroid/widget/TextView;

.field private mVersionStr:Ljava/lang/String;

.field private mWifiTraffic:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[",
            "Lcom/miui/networkassistant/model/AppDataUsage;",
            ">;"
        }
    .end annotation
.end field

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWlanFirewallChangedListener:Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView$ToolbarItemClickListener;

.field private mWlanFirewallLayout:Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

.field private mYesterdayMobileTrafficPerHourList:[J

.field private mYesterdayWlanTrafficPerHourList:[J

.field private trafficItemMenu:Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mTitleType:I

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$2;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$2;-><init>(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppMonitorListener:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mDataReady:Z

    iput-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mInited:Z

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$MainHandler;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$MainHandler;-><init>(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$4;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$4;-><init>(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mFirewallServiceConnection:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$MobileFirewallChangedListener1;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$MobileFirewallChangedListener1;-><init>(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mMobileFirewallChangedListener1:Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView$ToolbarItemClickListener;

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$MobileFirewallChangedListener2;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$MobileFirewallChangedListener2;-><init>(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mMobileFirewallChangedListener2:Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView$ToolbarItemClickListener;

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$6;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$6;-><init>(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mWlanFirewallChangedListener:Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView$ToolbarItemClickListener;

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$BackgroundRestrictChangedListener;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$BackgroundRestrictChangedListener;-><init>(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mBackgroundRestrictChangedListener:Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView$ToolbarItemClickListener;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mLocations:[I

    return-void
.end method

.method static synthetic access$000(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->showAppDetail()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mRealPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;)Lcom/miui/networkassistant/model/AppInfo;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppInfo:Lcom/miui/networkassistant/model/AppInfo;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;)Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mWlanFirewallLayout:Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->showRestrictBackgroundNetDialog(ZI)V

    return-void
.end method

.method static synthetic access$1600(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;)Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mBackgroundRestrictLayout:Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;)Lcom/miui/networkassistant/firewall/BackgroundPolicyService;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mBackgroundPolicyService:Lcom/miui/networkassistant/firewall/BackgroundPolicyService;

    return-object p0
.end method

.method static synthetic access$202(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mDataReady:Z

    return p1
.end method

.method static synthetic access$300(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->initData()V

    return-void
.end method

.method static synthetic access$402(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;I)I
    .locals 0

    iput p1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mTitleType:I

    return p1
.end method

.method static synthetic access$500(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->applyTrafficData()V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;)Lcom/miui/networkassistant/service/IFirewallBinder;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    return-object p0
.end method

.method static synthetic access$602(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;Lcom/miui/networkassistant/service/IFirewallBinder;)Lcom/miui/networkassistant/service/IFirewallBinder;
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    return-object p1
.end method

.method static synthetic access$700(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;)I
    .locals 0

    iget p0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;->mSlotNum:I

    return p0
.end method

.method static synthetic access$800(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;)[Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mMobileFirewallLayout:[Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;IZ)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->setMobileRule(IZ)Z

    move-result p0

    return p0
.end method

.method private applyTrafficData()V
    .locals 13

    invoke-virtual {p0}, Lcom/miui/common/base/ui/BaseFragment;->isAttatched()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mWifiTraffic:Landroid/util/SparseArray;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mMobileTraffic:Landroid/util/SparseArray;

    if-nez v1, :cond_1

    goto/16 :goto_3

    :cond_1
    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mTitleType:I

    const-wide/32 v3, 0xea60

    const-wide/16 v5, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    packed-switch v2, :pswitch_data_0

    move-wide v0, v5

    move-wide v2, v0

    goto/16 :goto_2

    :pswitch_0
    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/networkassistant/model/AppDataUsage;

    aget-object v0, v0, v9

    invoke-virtual {v0}, Lcom/miui/networkassistant/model/AppDataUsage;->getTotal()J

    move-result-wide v5

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mWifiTraffic:Landroid/util/SparseArray;

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/networkassistant/model/AppDataUsage;

    aget-object v0, v0, v8

    invoke-virtual {v0}, Lcom/miui/networkassistant/model/AppDataUsage;->getTotal()J

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mWifiTraffic:Landroid/util/SparseArray;

    invoke-virtual {v2, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/miui/networkassistant/model/AppDataUsage;

    aget-object v2, v2, v10

    invoke-virtual {v2}, Lcom/miui/networkassistant/model/AppDataUsage;->getTotal()J

    move-result-wide v2

    iget-object v4, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppDetailTrafficView:Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;

    iget-object v7, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mMonthWlanTrafficPerDayList:[J

    invoke-virtual {v4, v7, v10}, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->setData([JI)V

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/networkassistant/model/AppDataUsage;

    aget-object v0, v0, v9

    invoke-virtual {v0}, Lcom/miui/networkassistant/model/AppDataUsage;->getTotal()J

    move-result-wide v5

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mWifiTraffic:Landroid/util/SparseArray;

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/networkassistant/model/AppDataUsage;

    aget-object v0, v0, v8

    invoke-virtual {v0}, Lcom/miui/networkassistant/model/AppDataUsage;->getTotal()J

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mWifiTraffic:Landroid/util/SparseArray;

    invoke-virtual {v2, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/miui/networkassistant/model/AppDataUsage;

    aget-object v2, v2, v10

    invoke-virtual {v2}, Lcom/miui/networkassistant/model/AppDataUsage;->getTotal()J

    move-result-wide v7

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppDetailTrafficView:Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;

    iget-object v9, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mLastMonthWlanTrafficPreDayList:[J

    invoke-virtual {v2, v9, v10}, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->setData([JI)V

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/networkassistant/model/AppDataUsage;

    aget-object v0, v0, v9

    invoke-virtual {v0}, Lcom/miui/networkassistant/model/AppDataUsage;->getTotal()J

    move-result-wide v5

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mWifiTraffic:Landroid/util/SparseArray;

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/networkassistant/model/AppDataUsage;

    aget-object v0, v0, v8

    invoke-virtual {v0}, Lcom/miui/networkassistant/model/AppDataUsage;->getTotal()J

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mWifiTraffic:Landroid/util/SparseArray;

    invoke-virtual {v2, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/miui/networkassistant/model/AppDataUsage;

    aget-object v2, v2, v10

    invoke-virtual {v2}, Lcom/miui/networkassistant/model/AppDataUsage;->getTotal()J

    move-result-wide v2

    iget-object v4, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppDetailTrafficView:Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;

    iget-object v7, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mTodayWlanTrafficPerHourList:[J

    invoke-virtual {v4, v7, v9}, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->setData([JI)V

    goto/16 :goto_2

    :pswitch_3
    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/networkassistant/model/AppDataUsage;

    aget-object v0, v0, v9

    invoke-virtual {v0}, Lcom/miui/networkassistant/model/AppDataUsage;->getTotal()J

    move-result-wide v5

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mWifiTraffic:Landroid/util/SparseArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/networkassistant/model/AppDataUsage;

    aget-object v0, v0, v8

    invoke-virtual {v0}, Lcom/miui/networkassistant/model/AppDataUsage;->getTotal()J

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mWifiTraffic:Landroid/util/SparseArray;

    invoke-virtual {v2, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/miui/networkassistant/model/AppDataUsage;

    aget-object v2, v2, v10

    invoke-virtual {v2}, Lcom/miui/networkassistant/model/AppDataUsage;->getTotal()J

    move-result-wide v2

    iget-object v4, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppDetailTrafficView:Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;

    iget-object v7, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mYesterdayWlanTrafficPerHourList:[J

    invoke-virtual {v4, v7, v9}, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->setData([JI)V

    goto/16 :goto_2

    :pswitch_4
    invoke-virtual {v1, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/networkassistant/model/AppDataUsage;

    aget-object v0, v0, v9

    invoke-virtual {v0}, Lcom/miui/networkassistant/model/AppDataUsage;->getTotal()J

    move-result-wide v5

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mMobileTraffic:Landroid/util/SparseArray;

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/networkassistant/model/AppDataUsage;

    aget-object v0, v0, v8

    invoke-virtual {v0}, Lcom/miui/networkassistant/model/AppDataUsage;->getTotal()J

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mMobileTraffic:Landroid/util/SparseArray;

    invoke-virtual {v2, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/miui/networkassistant/model/AppDataUsage;

    aget-object v2, v2, v10

    invoke-virtual {v2}, Lcom/miui/networkassistant/model/AppDataUsage;->getTotal()J

    move-result-wide v2

    iget-object v4, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppDetailTrafficView:Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;

    iget-object v7, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mMonthMobileTrafficPerDayList:[J

    invoke-virtual {v4, v7, v10}, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->setData([JI)V

    :goto_0
    iget-object v4, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppDetailTrafficView:Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;

    iget-wide v7, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mThisMonthStart:J

    iget-wide v9, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mThisMonthEnd:J

    invoke-virtual {v4, v7, v8, v9, v10}, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->setDurations(JJ)V

    goto/16 :goto_2

    :pswitch_5
    invoke-virtual {v1, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/networkassistant/model/AppDataUsage;

    aget-object v0, v0, v9

    invoke-virtual {v0}, Lcom/miui/networkassistant/model/AppDataUsage;->getTotal()J

    move-result-wide v5

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mMobileTraffic:Landroid/util/SparseArray;

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/networkassistant/model/AppDataUsage;

    aget-object v0, v0, v8

    invoke-virtual {v0}, Lcom/miui/networkassistant/model/AppDataUsage;->getTotal()J

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mMobileTraffic:Landroid/util/SparseArray;

    invoke-virtual {v2, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/miui/networkassistant/model/AppDataUsage;

    aget-object v2, v2, v10

    invoke-virtual {v2}, Lcom/miui/networkassistant/model/AppDataUsage;->getTotal()J

    move-result-wide v7

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppDetailTrafficView:Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;

    iget-object v9, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mLastMonthMobileTrafficPreDayList:[J

    invoke-virtual {v2, v9, v10}, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->setData([JI)V

    :goto_1
    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppDetailTrafficView:Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;

    iget-wide v9, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mLastMonthStart:J

    iget-wide v11, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mThisMonthStart:J

    sub-long/2addr v11, v3

    invoke-virtual {v2, v9, v10, v11, v12}, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->setDurations(JJ)V

    move-wide v2, v7

    goto :goto_2

    :pswitch_6
    invoke-virtual {v1, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/networkassistant/model/AppDataUsage;

    aget-object v0, v0, v9

    invoke-virtual {v0}, Lcom/miui/networkassistant/model/AppDataUsage;->getTotal()J

    move-result-wide v5

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mMobileTraffic:Landroid/util/SparseArray;

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/networkassistant/model/AppDataUsage;

    aget-object v0, v0, v8

    invoke-virtual {v0}, Lcom/miui/networkassistant/model/AppDataUsage;->getTotal()J

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mMobileTraffic:Landroid/util/SparseArray;

    invoke-virtual {v2, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/miui/networkassistant/model/AppDataUsage;

    aget-object v2, v2, v10

    invoke-virtual {v2}, Lcom/miui/networkassistant/model/AppDataUsage;->getTotal()J

    move-result-wide v2

    iget-object v4, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppDetailTrafficView:Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;

    iget-object v7, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mTodayMobileTrafficPerHourList:[J

    invoke-virtual {v4, v7, v9}, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->setData([JI)V

    goto :goto_2

    :pswitch_7
    invoke-virtual {v1, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/networkassistant/model/AppDataUsage;

    aget-object v0, v0, v9

    invoke-virtual {v0}, Lcom/miui/networkassistant/model/AppDataUsage;->getTotal()J

    move-result-wide v5

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mMobileTraffic:Landroid/util/SparseArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/networkassistant/model/AppDataUsage;

    aget-object v0, v0, v8

    invoke-virtual {v0}, Lcom/miui/networkassistant/model/AppDataUsage;->getTotal()J

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mMobileTraffic:Landroid/util/SparseArray;

    invoke-virtual {v2, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/miui/networkassistant/model/AppDataUsage;

    aget-object v2, v2, v10

    invoke-virtual {v2}, Lcom/miui/networkassistant/model/AppDataUsage;->getTotal()J

    move-result-wide v2

    iget-object v4, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppDetailTrafficView:Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;

    iget-object v7, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mYesterdayMobileTrafficPerHourList:[J

    invoke-virtual {v4, v7, v9}, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->setData([JI)V

    :goto_2
    iget-object v4, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mTitleStrings:[Ljava/lang/String;

    iget v7, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mTitleType:I

    array-length v8, v4

    if-lt v7, v8, :cond_2

    array-length v8, v4

    rem-int/2addr v7, v8

    :cond_2
    aget-object v4, v4, v7

    invoke-direct {p0, v4, v5, v6}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->updateSpinnerHead(Ljava/lang/String;J)V

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->showBackgroundTraffic(JJ)V

    return-void

    :cond_3
    :goto_3
    const-string v0, "ShowAppDetailFragment"

    const-string v1, "data is null, initialization data..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private bindFirewallService()V
    .locals 5

    iget-object v0, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    const-class v3, Lcom/miui/networkassistant/service/FirewallService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mFirewallServiceConnection:Landroid/content/ServiceConnection;

    invoke-static {}, Lx4/z1;->A()Landroid/os/UserHandle;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v4, v3}, Lx4/v;->b(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    return-void
.end method

.method private buildRestrictAndroidTipDialog(Ljava/lang/String;I)V
    .locals 5

    iget-object v0, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    const v1, 0x7f12087d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    const v2, 0x7f12087c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/miui/networkassistant/ui/dialog/OptionTipDialog;

    iget-object v3, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    new-instance v4, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$5;

    invoke-direct {v4, p0, p1, p2}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$5;-><init>(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;Ljava/lang/String;I)V

    invoke-direct {v2, v3, v4}, Lcom/miui/networkassistant/ui/dialog/OptionTipDialog;-><init>(Landroid/app/Activity;Lcom/miui/networkassistant/ui/dialog/OptionTipDialog$OptionDialogListener;)V

    invoke-virtual {v2, v0, v1}, Lcom/miui/networkassistant/ui/dialog/OptionTipDialog;->buildShowDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private checkPackageAvailable()V
    .locals 2

    iget-object v0, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mRealPackageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/networkassistant/utils/PackageUtil;->isInstalledPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mIsManagedProfileApp:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method private getScreenX(F)D
    .locals 8

    float-to-double v0, p1

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->getXMargin()I

    move-result p1

    int-to-double v2, p1

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    add-double v4, v0, v2

    iget p1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mScreenWidth:I

    int-to-double v6, p1

    cmpl-double v4, v4, v6

    if-lez v4, :cond_0

    int-to-double v0, p1

    sub-double/2addr v0, v2

    goto :goto_0

    :cond_0
    sub-double v4, v0, v2

    const-wide/16 v6, 0x0

    cmpg-double p1, v4, v6

    if-gez p1, :cond_1

    move-wide v0, v2

    :cond_1
    :goto_0
    sub-double/2addr v0, v2

    return-wide v0
.end method

.method private getTimeInterval(I)Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->isMonthTrafficType()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mThisMonthStart:J

    invoke-static {v0, v1, p1}, Lcom/miui/networkassistant/utils/DateUtil;->dayInterval(JI)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->isLastMonthTrafficType()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mLastMonthStart:J

    invoke-static {v0, v1, p1}, Lcom/miui/networkassistant/utils/DateUtil;->dayInterval(JI)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_2

    iget-wide v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mTodayStart:J

    invoke-static {v0, v1, p1}, Lcom/miui/networkassistant/utils/DateUtil;->timeTwoHourInterval(JI)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    iget-wide v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mTodayStart:J

    invoke-static {v0, v1, p1}, Lcom/miui/networkassistant/utils/DateUtil;->timeInterval(JI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getTraffic(I)J
    .locals 4

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mTitleType:I

    const-wide/16 v1, 0x0

    packed-switch v0, :pswitch_data_0

    return-wide v1

    :pswitch_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mMonthWlanTrafficPerDayList:[J

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mLastMonthWlanTrafficPreDayList:[J

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mTodayWlanTrafficPerHourList:[J

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mYesterdayWlanTrafficPerHourList:[J

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mMonthMobileTrafficPerDayList:[J

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mLastMonthMobileTrafficPreDayList:[J

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mTodayMobileTrafficPerHourList:[J

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mYesterdayMobileTrafficPerHourList:[J

    :goto_0
    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    array-length v3, v0

    if-ge p1, v3, :cond_0

    aget-wide v1, v0, p1

    :cond_0
    return-wide v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getXMargin()I
    .locals 2

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->isMonthTrafficType()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->isLastMonthTrafficType()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/high16 v0, 0x43360000    # 182.0f

    :goto_0
    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mDensity:F

    mul-float/2addr v1, v0

    float-to-int v0, v1

    return v0

    :cond_1
    :goto_1
    const/high16 v0, 0x42fc0000    # 126.0f

    goto :goto_0
.end method

.method private initBundleData()V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "package_name"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mPackageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/miui/networkassistant/utils/PackageUtil;->getRealPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mRealPackageName:Ljava/lang/String;

    const-string v2, "magaged_profile_package"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mIsManagedProfileApp:Z

    const-string v1, "sort_type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {}, Lx4/k0;->b()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const/4 v1, 0x0

    const-string v3, "title_type"

    invoke-virtual {v0, v3, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v0, v2

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mTitleType:I

    :cond_1
    return-void
.end method

.method private initData()V
    .locals 4

    iget-object v0, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mInited:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mDataReady:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;->mServiceConnected:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mInited:Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/networkassistant/utils/PackageUtil;->isManagedProfileApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mIsManagedProfileApp:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/miui/networkassistant/model/AppInfo;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mRealPackageName:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/miui/networkassistant/model/AppInfo;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppMonitorWrapper:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mRealPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->getAppInfoByPackageName(Ljava/lang/String;)Lcom/miui/networkassistant/model/AppInfo;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppInfo:Lcom/miui/networkassistant/model/AppInfo;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppInfo:Lcom/miui/networkassistant/model/AppInfo;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mPackageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/miui/networkassistant/utils/PackageUtil;->parseUidByPackageName(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/miui/networkassistant/model/AppInfo;->uid:I

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppMonitorWrapper:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->getAppInfoByPackageName(Ljava/lang/String;)Lcom/miui/networkassistant/model/AppInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppInfo:Lcom/miui/networkassistant/model/AppInfo;

    :goto_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppInfo:Lcom/miui/networkassistant/model/AppInfo;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/common/base/ui/BaseFragment;->finish()V

    return-void

    :cond_2
    iget-object v0, v0, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/miui/networkassistant/utils/IconCacheHelper;->getInstance()Lcom/miui/networkassistant/utils/IconCacheHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Lcom/miui/networkassistant/utils/IconCacheHelper;->setIconToImageView(Landroid/widget/ImageView;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/miui/networkassistant/utils/LabelLoadHelper;->loadLabel(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lx4/f1;->t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mVersion:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mVersionStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;

    iget-object v1, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v3, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;->mSlotNum:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getImsi()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mStatisticAppTraffic:Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->updateTraffic()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->initFirewallData()V

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mIsFromAM:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mNetworkTrafficWarningLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppInfo:Lcom/miui/networkassistant/model/AppInfo;

    iget v1, v1, Lcom/miui/networkassistant/model/AppInfo;->uid:I

    iget-object v2, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->isGroupUid(ILandroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    const/16 v1, 0x8

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method private initDrag()V
    .locals 2

    iget-object v0, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mDensity:F

    iget-object v0, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mScreenWidth:I

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mWindowManager:Landroid/view/WindowManager;

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mLocations:[I

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppDetailTrafficView:Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    :cond_1
    return-void
.end method

.method private initDragView(FFI)V
    .locals 5

    invoke-direct {p0, p3}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->getTraffic(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->getXMargin()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr p1, v1

    float-to-int p1, p1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    const/high16 p1, 0x428c0000    # 70.0f

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mDensity:F

    mul-float/2addr v1, p1

    sub-float/2addr p2, v1

    float-to-int p1, p2

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    const/16 p1, 0x3ea

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 p1, 0x300

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 p1, -0x3

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const p1, 0x800033

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->getXMargin()I

    move-result p1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget p2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int/2addr p2, p1

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppDetailTrafficView:Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    if-le p2, p1, :cond_0

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppDetailTrafficView:Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iget p2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    sub-int/2addr p1, p2

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    :cond_0
    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    new-instance p1, Lcom/miui/networkassistant/ui/view/TrafficDragView;

    iget-object p2, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {p1, p2}, Lcom/miui/networkassistant/ui/view/TrafficDragView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mTrafficDragView:Lcom/miui/networkassistant/ui/view/TrafficDragView;

    invoke-direct {p0, p3}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->getTimeInterval(I)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mTrafficDragView:Lcom/miui/networkassistant/ui/view/TrafficDragView;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    iget-object v2, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    invoke-direct {p0, p3}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->getTraffic(I)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p3

    aput-object p3, v1, p1

    const-string p1, "%s %s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/miui/networkassistant/ui/view/TrafficDragView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mWindowManager:Landroid/view/WindowManager;

    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mTrafficDragView:Lcom/miui/networkassistant/ui/view/TrafficDragView;

    invoke-interface {p1, p2, v0}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method private initFirewallData()V
    .locals 8

    const-string v0, "ShowAppDetailFragment"

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

    iput-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mMobileFirewallLayout:[Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

    const v2, 0x7f0b0688

    invoke-virtual {p0, v2}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mMobileFirewallLayout:[Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

    const v2, 0x7f0b0689

    invoke-virtual {p0, v2}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-boolean v1, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_DUAL_CARD:Z

    const/16 v2, 0x8

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;->mSimCardHelper:Lcom/miui/networkassistant/dual/SimCardHelper;

    invoke-virtual {v1}, Lcom/miui/networkassistant/dual/SimCardHelper;->isDualSimInserted()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v3}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->setMobileFirewallTile(I)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mMobileFirewallLayout:[Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

    aget-object v1, v1, v3

    iget-object v5, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mMobileFirewallChangedListener1:Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView$ToolbarItemClickListener;

    invoke-virtual {v1, v5}, Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;->setToolbarItemClickListener(Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView$ToolbarItemClickListener;)V

    invoke-direct {p0, v4}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->setMobileFirewallTile(I)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mMobileFirewallLayout:[Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

    aget-object v1, v1, v4

    iget-object v5, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mMobileFirewallChangedListener2:Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView$ToolbarItemClickListener;

    invoke-virtual {v1, v5}, Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;->setToolbarItemClickListener(Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView$ToolbarItemClickListener;)V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;->mSimCardHelper:Lcom/miui/networkassistant/dual/SimCardHelper;

    invoke-virtual {v1}, Lcom/miui/networkassistant/dual/SimCardHelper;->getCurrentMobileSlotNum()I

    move-result v1

    const v5, 0x7f120209

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mMobileFirewallLayout:[Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

    aget-object v1, v1, v3

    invoke-virtual {v1, v5}, Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;->setName(I)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mMobileFirewallLayout:[Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

    aget-object v1, v1, v3

    iget-object v5, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mMobileFirewallChangedListener1:Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView$ToolbarItemClickListener;

    invoke-virtual {v1, v5}, Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;->setToolbarItemClickListener(Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView$ToolbarItemClickListener;)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mMobileFirewallLayout:[Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

    aget-object v1, v1, v4

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    if-ne v1, v4, :cond_2

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mMobileFirewallLayout:[Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

    aget-object v1, v1, v4

    invoke-virtual {v1, v5}, Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;->setName(I)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mMobileFirewallLayout:[Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

    aget-object v1, v1, v4

    iget-object v5, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mMobileFirewallChangedListener2:Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView$ToolbarItemClickListener;

    invoke-virtual {v1, v5}, Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;->setToolbarItemClickListener(Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView$ToolbarItemClickListener;)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mMobileFirewallLayout:[Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

    aget-object v1, v1, v3

    goto :goto_0

    :cond_2
    :goto_1
    invoke-static {}, Lx4/k0;->b()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mMobileFirewallLayout:[Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

    aget-object v1, v1, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mMobileFirewallLayout:[Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

    aget-object v1, v1, v4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    const v1, 0x7f0b06a8

    invoke-virtual {p0, v1}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

    iput-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mWlanFirewallLayout:Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

    iget-object v5, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mWlanFirewallChangedListener:Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView$ToolbarItemClickListener;

    invoke-virtual {v1, v5}, Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;->setToolbarItemClickListener(Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView$ToolbarItemClickListener;)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mWlanFirewallLayout:Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

    iget-object v5, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    const v6, 0x7f120267

    invoke-static {v5, v6}, Lx4/y1;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;->setName(Ljava/lang/String;)V

    const v1, 0x7f0b068f

    invoke-virtual {p0, v1}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

    iput-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mBackgroundRestrictLayout:Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

    iget-object v5, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mBackgroundRestrictChangedListener:Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView$ToolbarItemClickListener;

    invoke-virtual {v1, v5}, Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;->setToolbarItemClickListener(Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView$ToolbarItemClickListener;)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mBackgroundRestrictLayout:Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

    const v5, 0x7f1211d0

    invoke-virtual {v1, v5}, Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;->setName(I)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mBackgroundRestrictLayout:Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

    invoke-virtual {v1, v3}, Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;->setSummaryVisibility(I)V

    iget-boolean v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mIsManagedProfileApp:Z

    if-nez v1, :cond_13

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mPackageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->isPreFirewallWhiteListPackage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto/16 :goto_9

    :cond_4
    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppInfo:Lcom/miui/networkassistant/model/AppInfo;

    if-nez v1, :cond_5

    invoke-virtual {p0}, Lcom/miui/common/base/ui/BaseFragment;->finish()V

    return-void

    :cond_5
    const/4 v2, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    if-eqz v5, :cond_6

    iget-object v1, v1, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v1}, Lcom/miui/networkassistant/service/IFirewallBinder;->getRule(Ljava/lang/String;)Lcom/miui/networkassistant/model/FirewallRuleSet;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v1

    goto :goto_2

    :catch_0
    move-exception v1

    const-string v5, "get firewall rule set"

    invoke-static {v0, v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_2
    if-nez v2, :cond_7

    invoke-virtual {p0}, Lcom/miui/common/base/ui/BaseFragment;->finish()V

    return-void

    :cond_7
    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mMobileFirewallLayout:[Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

    aget-object v1, v1, v3

    iget-object v5, v2, Lcom/miui/networkassistant/model/FirewallRuleSet;->mobileRule:Lcom/miui/networkassistant/model/FirewallRule;

    sget-object v6, Lcom/miui/networkassistant/model/FirewallRule;->Allow:Lcom/miui/networkassistant/model/FirewallRule;

    if-ne v5, v6, :cond_8

    move v5, v4

    goto :goto_3

    :cond_8
    move v5, v3

    :goto_3
    invoke-virtual {v1, v5}, Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;->setChecked(Z)V

    sget-boolean v1, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_DUAL_CARD:Z

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mMobileFirewallLayout:[Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

    aget-object v1, v1, v4

    iget-object v5, v2, Lcom/miui/networkassistant/model/FirewallRuleSet;->mobileRule2:Lcom/miui/networkassistant/model/FirewallRule;

    if-ne v5, v6, :cond_9

    move v5, v4

    goto :goto_4

    :cond_9
    move v5, v3

    :goto_4
    invoke-virtual {v1, v5}, Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;->setChecked(Z)V

    :cond_a
    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mWlanFirewallLayout:Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

    iget-object v5, v2, Lcom/miui/networkassistant/model/FirewallRuleSet;->wifiRule:Lcom/miui/networkassistant/model/FirewallRule;

    if-ne v5, v6, :cond_b

    move v5, v4

    goto :goto_5

    :cond_b
    move v5, v3

    :goto_5
    invoke-virtual {v1, v5}, Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;->setChecked(Z)V

    iget-object v1, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/networkassistant/firewall/BackgroundPolicyService;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/firewall/BackgroundPolicyService;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mBackgroundPolicyService:Lcom/miui/networkassistant/firewall/BackgroundPolicyService;

    iget-object v5, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mRealPackageName:Ljava/lang/String;

    iget-object v7, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppInfo:Lcom/miui/networkassistant/model/AppInfo;

    iget v7, v7, Lcom/miui/networkassistant/model/AppInfo;->uid:I

    invoke-virtual {v1, v5, v7}, Lcom/miui/networkassistant/firewall/BackgroundPolicyService;->isAppRestrictBackground(Ljava/lang/String;I)Z

    move-result v1

    iget-object v5, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mBackgroundRestrictLayout:Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

    xor-int/lit8 v7, v1, 0x1

    invoke-virtual {v5, v7}, Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;->setChecked(Z)V

    iget-object v5, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mWlanFirewallLayout:Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

    invoke-virtual {v5, v4}, Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;->setToolbarItemEnable(Z)V

    iget-object v5, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mBackgroundRestrictLayout:Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

    invoke-virtual {v5, v4}, Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;->setToolbarItemEnable(Z)V

    iget-object v5, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppInfo:Lcom/miui/networkassistant/model/AppInfo;

    iget-boolean v7, v5, Lcom/miui/networkassistant/model/AppInfo;->isSystemApp:Z

    if-eqz v7, :cond_f

    iget-object v5, v5, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    const-string v7, "com.qti.qcc"

    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    iget-object v7, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mWlanFirewallLayout:Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

    invoke-virtual {v7, v5}, Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;->setToolbarItemEnable(Z)V

    iget-object v2, v2, Lcom/miui/networkassistant/model/FirewallRuleSet;->wifiRule:Lcom/miui/networkassistant/model/FirewallRule;

    if-eq v2, v6, :cond_d

    if-nez v5, :cond_d

    :try_start_1
    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    if-eqz v2, :cond_c

    iget-object v5, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppInfo:Lcom/miui/networkassistant/model/AppInfo;

    iget-object v5, v5, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5, v6}, Lcom/miui/networkassistant/service/IFirewallBinder;->setWifiRule(Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :catch_1
    move-exception v2

    const-string v5, "set firewall rule"

    invoke-static {v0, v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_c
    :goto_6
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mWlanFirewallLayout:Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

    invoke-virtual {v0, v4}, Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;->setChecked(Z)V

    :cond_d
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppInfo:Lcom/miui/networkassistant/model/AppInfo;

    iget v0, v0, Lcom/miui/networkassistant/model/AppInfo;->uid:I

    invoke-static {v0}, Lx4/z1;->b(I)I

    move-result v0

    const/16 v2, 0x2710

    if-lt v0, v2, :cond_e

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mRealPackageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->isPrePolicyPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_e
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mBackgroundRestrictLayout:Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

    invoke-virtual {v0, v3}, Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;->setToolbarItemEnable(Z)V

    if-eqz v1, :cond_f

    :try_start_2
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mBackgroundPolicyService:Lcom/miui/networkassistant/firewall/BackgroundPolicyService;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppInfo:Lcom/miui/networkassistant/model/AppInfo;

    iget v1, v1, Lcom/miui/networkassistant/model/AppInfo;->uid:I

    invoke-virtual {v0, v1, v3}, Lcom/miui/networkassistant/firewall/BackgroundPolicyService;->setAppRestrictBackground(IZ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_7

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_f
    :goto_7
    invoke-static {}, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->getPreFirewallWhiteList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mRealPackageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mMobileFirewallLayout:[Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

    aget-object v0, v0, v3

    invoke-virtual {v0, v3}, Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;->setToolbarItemEnable(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mMobileFirewallLayout:[Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

    aget-object v0, v0, v4

    invoke-virtual {v0, v3}, Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;->setToolbarItemEnable(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mWlanFirewallLayout:Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

    invoke-virtual {v0, v3}, Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;->setToolbarItemEnable(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mBackgroundRestrictLayout:Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

    invoke-virtual {v0, v3}, Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;->setToolbarItemEnable(Z)V

    :cond_10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mPackageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lug/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Net config is restricted for package"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Enterprise"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mMobileFirewallLayout:[Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

    array-length v1, v0

    move v2, v3

    :goto_8
    if-ge v2, v1, :cond_11

    aget-object v4, v0, v2

    invoke-virtual {v4, v3}, Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;->setToolbarItemEnable(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_11
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mWlanFirewallLayout:Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

    invoke-virtual {v0, v3}, Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;->setToolbarItemEnable(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mBackgroundRestrictLayout:Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

    invoke-virtual {v0, v3}, Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;->setToolbarItemEnable(Z)V

    :cond_12
    return-void

    :cond_13
    :goto_9
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mMobileFirewallLayout:[Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

    aget-object v0, v0, v3

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mMobileFirewallLayout:[Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

    aget-object v0, v0, v4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mWlanFirewallLayout:Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mBackgroundRestrictLayout:Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private isLastMonthTrafficType()Z
    .locals 2

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mTitleType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isMonthTrafficType()Z
    .locals 2

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mTitleType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isRestrictAndroidSystemApp(Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;->mSlotNum:I

    invoke-interface {v0, p1, v1}, Lcom/miui/networkassistant/service/IFirewallBinder;->getMobileRule(Ljava/lang/String;I)Lcom/miui/networkassistant/model/FirewallRule;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ShowAppDetailFragment"

    const-string v2, "isRestrictAndroidSystemApp"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    :goto_0
    const-string v1, "android"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz v0, :cond_0

    sget-object p1, Lcom/miui/networkassistant/model/FirewallRule;->Allow:Lcom/miui/networkassistant/model/FirewallRule;

    if-ne v0, p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private setMobileFirewallTile(I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    const v1, 0x7f120209

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/miui/networkassistant/utils/TextPrepareUtil;->getDualCardTitle(Landroid/content/Context;Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mMobileFirewallLayout:[Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

    aget-object p1, v1, p1

    invoke-virtual {p1, v0}, Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;->setName(Ljava/lang/String;)V

    return-void
.end method

.method private setMobileRule(IZ)Z
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppInfo:Lcom/miui/networkassistant/model/AppInfo;

    iget-object v0, v0, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->isRestrictAndroidSystemApp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p2, :cond_0

    invoke-direct {p0, v0, p1}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->buildRestrictAndroidTipDialog(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x1

    xor-int/2addr p2, v2

    invoke-static {v1, v0, p2, p1}, Lcom/miui/networkassistant/utils/FirewallUtils;->showMobileFirewallDialog(Landroid/app/Activity;Ljava/lang/String;ZI)V

    return v2

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private showAppDetail()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mRealPackageName:Ljava/lang/String;

    const-string v2, "package"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.applications.InstalledAppDetails"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private showBackgroundTraffic(JJ)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f120901

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v4, p1, p2}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v3, p2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p1, 0x7f120373

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v2, p3, p4}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p3

    aput-object p3, v1, p2

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mBackgroundRestrictLayout:Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;->setSummary(Ljava/lang/String;)V

    return-void
.end method

.method private showRestrictBackgroundNetDialog(ZI)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    const v0, 0x7f12087d

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    const v1, 0x7f120372

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/miui/networkassistant/ui/dialog/OptionTipDialog;

    iget-object v2, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    new-instance v3, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$7;

    invoke-direct {v3, p0, p2}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$7;-><init>(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;I)V

    invoke-direct {v1, v2, v3}, Lcom/miui/networkassistant/ui/dialog/OptionTipDialog;-><init>(Landroid/app/Activity;Lcom/miui/networkassistant/ui/dialog/OptionTipDialog$OptionDialogListener;)V

    invoke-virtual {v1, p1, v0}, Lcom/miui/networkassistant/ui/dialog/OptionTipDialog;->buildShowDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mBackgroundPolicyService:Lcom/miui/networkassistant/firewall/BackgroundPolicyService;

    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppInfo:Lcom/miui/networkassistant/model/AppInfo;

    iget p2, p2, Lcom/miui/networkassistant/model/AppInfo;->uid:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/miui/networkassistant/firewall/BackgroundPolicyService;->setAppRestrictBackground(IZ)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mBackgroundRestrictLayout:Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;->setChecked(Z)V

    :goto_0
    return-void
.end method

.method private showTrafficMenuItem()V
    .locals 4

    new-instance v0, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;

    iget-object v1, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->trafficItemMenu:Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mTitleStrings:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->setItems([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->trafficItemMenu:Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mTitleType:I

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mTitleStrings:[Ljava/lang/String;

    array-length v3, v2

    if-lt v1, v3, :cond_0

    array-length v2, v2

    rem-int/2addr v1, v2

    :cond_0
    invoke-virtual {v0, v1}, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->setSelectedItem(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->trafficItemMenu:Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mTitleLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->setAnchorView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->trafficItemMenu:Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;

    new-instance v1, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$3;

    invoke-direct {v1, p0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$3;-><init>(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;)V

    invoke-virtual {v0, v1}, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->setOnMenuListener(Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu$OnMenuListener;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->trafficItemMenu:Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;

    invoke-virtual {v0}, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->show()V

    return-void
.end method

.method public static startAppDetailFragment(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0, v0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->startAppDetailFragment(Landroid/app/Activity;Ljava/lang/String;II)V

    return-void
.end method

.method public static startAppDetailFragment(Landroid/app/Activity;Ljava/lang/String;II)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "package_name"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "title_type"

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "sort_type"

    invoke-virtual {v0, p1, p3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-class p1, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;

    invoke-static {p0, p1, v0}, Lcom/miui/networkassistant/ui/base/UniversalFragmentActivity;->startWithFragment(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;)V

    return-void
.end method

.method private unBindFirewallService()V
    .locals 2

    iget-object v0, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mFirewallServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method private updateAppTraffic()V
    .locals 3

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mIsManagedProfileApp:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mStatisticAppTraffic:Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppInfo:Lcom/miui/networkassistant/model/AppInfo;

    iget v1, v1, Lcom/miui/networkassistant/model/AppInfo;->uid:I

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mStatisticAppTraffic:Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppInfo:Lcom/miui/networkassistant/model/AppInfo;

    iget v1, v1, Lcom/miui/networkassistant/model/AppInfo;->uid:I

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->buildMobileDataUsage(IZ)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mMobileTraffic:Landroid/util/SparseArray;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mStatisticAppTraffic:Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppInfo:Lcom/miui/networkassistant/model/AppInfo;

    iget v1, v1, Lcom/miui/networkassistant/model/AppInfo;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->buildWifiDataUsage(IZ)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mWifiTraffic:Landroid/util/SparseArray;

    return-void
.end method

.method private updateDragView(FFI)V
    .locals 5

    invoke-direct {p0, p3}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->getTimeInterval(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mTrafficDragView:Lcom/miui/networkassistant/ui/view/TrafficDragView;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    iget-object v0, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    invoke-direct {p0, p3}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->getTraffic(I)J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const-string v0, "%s %s"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/miui/networkassistant/ui/view/TrafficDragView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->getXMargin()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->getXMargin()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr p1, v1

    float-to-int p1, p1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mDensity:F

    const/high16 v1, 0x428c0000    # 70.0f

    mul-float/2addr v0, v1

    sub-float/2addr p2, v0

    float-to-int p2, p2

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget p2, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    add-int/2addr p2, p1

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppDetailTrafficView:Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    if-le p2, p1, :cond_0

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppDetailTrafficView:Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    sub-int/2addr p2, v0

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    :cond_0
    invoke-direct {p0, p3}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->getTraffic(I)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mWindowManager:Landroid/view/WindowManager;

    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mTrafficDragView:Lcom/miui/networkassistant/ui/view/TrafficDragView;

    invoke-interface {p1, p2}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mTrafficDragView:Lcom/miui/networkassistant/ui/view/TrafficDragView;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mWindowManager:Landroid/view/WindowManager;

    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mTrafficDragView:Lcom/miui/networkassistant/ui/view/TrafficDragView;

    iget-object p3, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, p2, p3}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method

.method private updateLastMonthTraffic()V
    .locals 8

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mStatisticAppTraffic:Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppInfo:Lcom/miui/networkassistant/model/AppInfo;

    iget v1, v1, Lcom/miui/networkassistant/model/AppInfo;->uid:I

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->getAppLastMonthPerDayTraffic(I)Landroid/util/SparseArray;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mLastMonthWlanTrafficPreDayList:[J

    const/16 v2, 0x1f

    if-nez v1, :cond_0

    new-array v1, v2, [J

    iput-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mLastMonthWlanTrafficPreDayList:[J

    new-array v1, v2, [J

    iput-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mLastMonthMobileTrafficPreDayList:[J

    :cond_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_3

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/miui/networkassistant/model/AppDataUsage;

    if-eqz v4, :cond_2

    iget-object v5, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mLastMonthMobileTrafficPreDayList:[J

    aget-object v6, v4, v1

    invoke-virtual {v6}, Lcom/miui/networkassistant/model/AppDataUsage;->getTotal()J

    move-result-wide v6

    aput-wide v6, v5, v3

    iget-object v5, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mLastMonthWlanTrafficPreDayList:[J

    const/4 v6, 0x1

    aget-object v4, v4, v6

    invoke-virtual {v4}, Lcom/miui/networkassistant/model/AppDataUsage;->getTotal()J

    move-result-wide v6

    aput-wide v6, v5, v3

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mLastMonthMobileTrafficPreDayList:[J

    const-wide/16 v5, 0x0

    aput-wide v5, v4, v3

    iget-object v4, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mLastMonthWlanTrafficPreDayList:[J

    aput-wide v5, v4, v3

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private updateSpinnerHead(Ljava/lang/String;J)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "( "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    invoke-static {p1, p2, p3}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " )"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateThisMonthTraffic()V
    .locals 8

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mStatisticAppTraffic:Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppInfo:Lcom/miui/networkassistant/model/AppInfo;

    iget v1, v1, Lcom/miui/networkassistant/model/AppInfo;->uid:I

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->getAppThisMonthPerDayTraffic(I)Landroid/util/SparseArray;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mMonthWlanTrafficPerDayList:[J

    const/16 v2, 0x1f

    if-nez v1, :cond_0

    new-array v1, v2, [J

    iput-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mMonthWlanTrafficPerDayList:[J

    new-array v1, v2, [J

    iput-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mMonthMobileTrafficPerDayList:[J

    :cond_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_3

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/miui/networkassistant/model/AppDataUsage;

    if-eqz v4, :cond_2

    iget-object v5, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mMonthMobileTrafficPerDayList:[J

    aget-object v6, v4, v1

    invoke-virtual {v6}, Lcom/miui/networkassistant/model/AppDataUsage;->getTotal()J

    move-result-wide v6

    aput-wide v6, v5, v3

    iget-object v5, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mMonthWlanTrafficPerDayList:[J

    const/4 v6, 0x1

    aget-object v4, v4, v6

    invoke-virtual {v4}, Lcom/miui/networkassistant/model/AppDataUsage;->getTotal()J

    move-result-wide v6

    aput-wide v6, v5, v3

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mMonthMobileTrafficPerDayList:[J

    const-wide/16 v5, 0x0

    aput-wide v5, v4, v3

    iget-object v4, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mMonthWlanTrafficPerDayList:[J

    aput-wide v5, v4, v3

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private updateTodayTraffic()V
    .locals 7

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mStatisticAppTraffic:Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppInfo:Lcom/miui/networkassistant/model/AppInfo;

    iget v1, v1, Lcom/miui/networkassistant/model/AppInfo;->uid:I

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->getAppTodayPerHourTraffic(I)Landroid/util/SparseArray;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mTodayMobileTrafficPerHourList:[J

    if-nez v1, :cond_0

    sget v1, Lcom/miui/networkassistant/model/DataUsageConstants;->ONE_DAY_HOUR_COUNT:I

    new-array v2, v1, [J

    iput-object v2, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mTodayMobileTrafficPerHourList:[J

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mTodayWlanTrafficPerHourList:[J

    :cond_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    sget v3, Lcom/miui/networkassistant/model/DataUsageConstants;->ONE_DAY_HOUR_COUNT:I

    if-ge v2, v3, :cond_3

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/miui/networkassistant/model/AppDataUsage;

    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mTodayMobileTrafficPerHourList:[J

    aget-object v5, v3, v1

    invoke-virtual {v5}, Lcom/miui/networkassistant/model/AppDataUsage;->getTotal()J

    move-result-wide v5

    aput-wide v5, v4, v2

    iget-object v4, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mTodayWlanTrafficPerHourList:[J

    const/4 v5, 0x1

    aget-object v3, v3, v5

    invoke-virtual {v3}, Lcom/miui/networkassistant/model/AppDataUsage;->getTotal()J

    move-result-wide v5

    aput-wide v5, v4, v2

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mTodayMobileTrafficPerHourList:[J

    const-wide/16 v4, 0x0

    aput-wide v4, v3, v2

    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mTodayWlanTrafficPerHourList:[J

    aput-wide v4, v3, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private updateTraffic()V
    .locals 2

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/UpdateTrafficAsyncTask;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/UpdateTrafficAsyncTask;-><init>(Lmiuix/appcompat/app/Fragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mUpdateTrafficAsyncTask:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private updateYesterdayTraffic()V
    .locals 7

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mStatisticAppTraffic:Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppInfo:Lcom/miui/networkassistant/model/AppInfo;

    iget v1, v1, Lcom/miui/networkassistant/model/AppInfo;->uid:I

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->getAppYesterdayPerHourTraffic(I)Landroid/util/SparseArray;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mYesterdayMobileTrafficPerHourList:[J

    if-nez v1, :cond_0

    sget v1, Lcom/miui/networkassistant/model/DataUsageConstants;->ONE_DAY_HOUR_COUNT:I

    new-array v2, v1, [J

    iput-object v2, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mYesterdayMobileTrafficPerHourList:[J

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mYesterdayWlanTrafficPerHourList:[J

    :cond_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    sget v3, Lcom/miui/networkassistant/model/DataUsageConstants;->ONE_DAY_HOUR_COUNT:I

    if-ge v2, v3, :cond_3

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/miui/networkassistant/model/AppDataUsage;

    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mYesterdayMobileTrafficPerHourList:[J

    aget-object v5, v3, v1

    invoke-virtual {v5}, Lcom/miui/networkassistant/model/AppDataUsage;->getTotal()J

    move-result-wide v5

    aput-wide v5, v4, v2

    iget-object v4, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mYesterdayWlanTrafficPerHourList:[J

    const/4 v5, 0x1

    aget-object v3, v3, v5

    invoke-virtual {v3}, Lcom/miui/networkassistant/model/AppDataUsage;->getTotal()J

    move-result-wide v5

    aput-wide v5, v4, v2

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mYesterdayMobileTrafficPerHourList:[J

    const-wide/16 v4, 0x0

    aput-wide v4, v3, v2

    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mYesterdayWlanTrafficPerHourList:[J

    aput-wide v4, v3, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public doPostExecute()V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/common/base/ui/BaseFragment;->isAttatched()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->applyTrafficData()V

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mStatisticAppTraffic:Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->closeSession()V

    :cond_1
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

.method protected initView()V
    .locals 4

    const v0, 0x7f0b0548

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mIcon:Landroid/widget/ImageView;

    const v0, 0x7f0b0ba8

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mLabel:Landroid/widget/TextView;

    const v0, 0x7f0b0bb5

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mVersion:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    const v1, 0x7f120266

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mVersionStr:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mRealPackageName:Ljava/lang/String;

    const-string v1, "com.xiaomi.xmsf"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0b0781

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/ui/view/ToolbarItemView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mMiServiceAppDetailItem:Lcom/miui/networkassistant/ui/view/ToolbarItemView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mMiServiceAppDetailItem:Lcom/miui/networkassistant/ui/view/ToolbarItemView;

    const v1, 0x7f120ddc

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/view/ToolbarItemView;->setName(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mMiServiceAppDetailItem:Lcom/miui/networkassistant/ui/view/ToolbarItemView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v0, 0x7f0b0306

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppDetailTrafficView:Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;

    invoke-virtual {v0, p0}, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->setChartDragListener(Lcom/miui/networkassistant/ui/view/AppDetailTrafficView$ChartDragListener;)V

    const v0, 0x7f0b07fc

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mNetworkTrafficWarningLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0b069a

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mTitleLayout:Landroid/view/View;

    const v0, 0x7f0b06d3

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mTitleView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mTitleLayout:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    const v1, 0x7f03001c

    invoke-static {v0, v1}, Lx4/y1;->d(Landroid/content/Context;I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mTitleStrings:[Ljava/lang/String;

    invoke-static {}, Lx4/k0;->b()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mTitleStrings:[Ljava/lang/String;

    array-length v1, v0

    div-int/lit8 v1, v1, 0x2

    array-length v2, v0

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mTitleStrings:[Ljava/lang/String;

    :cond_1
    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getTodayTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mTodayStart:J

    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getThisMonthBeginTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mThisMonthStart:J

    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getThisMonthEndTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mThisMonthEnd:J

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/miui/networkassistant/utils/DateUtil;->getLastMonthBeginTimeMillis(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mLastMonthStart:J

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mTitleLayout:Landroid/view/View;

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->showTrafficMenuItem()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mMiServiceAppDetailItem:Lcom/miui/networkassistant/ui/view/ToolbarItemView;

    if-ne p1, v0, :cond_1

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppInfo:Lcom/miui/networkassistant/model/AppInfo;

    iget-object v0, v0, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "package_name"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mTitleType:I

    const-string v1, "title_type"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    const-class v1, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;

    invoke-static {v0, v1, p1}, Lcom/miui/networkassistant/ui/base/UniversalFragmentActivity;->startWithFragment(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lmiuix/appcompat/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->trafficItemMenu:Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->dismiss()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f13043e

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setHasOptionsMenu(Z)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->initBundleData()V

    iget-object p1, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "from_appmanager"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mIsFromAM:Z

    iget-object p1, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppMonitorWrapper:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppMonitorListener:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;

    invoke-virtual {p1, v0}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->registerLisener(Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->bindFirewallService()V

    return-void
.end method

.method protected onCreateViewLayout()I
    .locals 1

    const v0, 0x7f0e0175

    return v0
.end method

.method protected onCustomizeActionBar(Landroidx/appcompat/app/ActionBar;)I
    .locals 3

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mIsFromAM:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mIsManagedProfileApp:Z

    if-nez v0, :cond_0

    const/16 v0, 0x10

    invoke-virtual {p1, v0, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayOptions(II)V

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v1, 0x7f08037f

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    const v2, 0x7f1216f2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$1;

    invoke-direct {v1, p0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$1;-><init>(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    instance-of v1, p1, Lmiuix/appcompat/app/ActionBar;

    if-eqz v1, :cond_0

    check-cast p1, Lmiuix/appcompat/app/ActionBar;

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/ActionBar;->setEndView(Landroid/view/View;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;->onDestroy()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->unBindFirewallService()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppMonitorWrapper:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mAppMonitorListener:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->unRegisterLisener(Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mUpdateTrafficAsyncTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mStatisticAppTraffic:Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->closeSession()V

    :cond_1
    return-void
.end method

.method public onDragEnd()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mTrafficDragView:Lcom/miui/networkassistant/ui/view/TrafficDragView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mTrafficDragView:Lcom/miui/networkassistant/ui/view/TrafficDragView;

    :cond_0
    return-void
.end method

.method public onDragStart(FFI)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->initDrag()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mTrafficDragView:Lcom/miui/networkassistant/ui/view/TrafficDragView;

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->initDragView(FFI)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->updateDragView(FFI)V

    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;->onResume()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->checkPackageAvailable()V

    return-void
.end method

.method protected onSetTitle()I
    .locals 1

    const v0, 0x7f12016c

    return v0
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onStop()V

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->trafficItemMenu:Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->trafficItemMenu:Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method protected onTrafficManageServiceConnected()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public updateTrafficDataInBackground()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->updateAppTraffic()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->updateYesterdayTraffic()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->updateTodayTraffic()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->updateThisMonthTraffic()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->updateLastMonthTraffic()V

    return-void
.end method

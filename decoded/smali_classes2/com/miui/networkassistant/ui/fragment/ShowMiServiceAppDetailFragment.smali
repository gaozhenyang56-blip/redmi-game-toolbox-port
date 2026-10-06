.class public Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;
.super Lcom/miui/networkassistant/ui/base/ListFragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TITLE_FILED:I = 0x7f120ddd


# instance fields
.field private mAllAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter$MiAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAppInfo:Lcom/miui/networkassistant/model/AppInfo;

.field private mCurrentImsi:Ljava/lang/String;

.field private mDateTypePrefix:[Ljava/lang/String;

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

.field private mSlotNum:I

.field private mSortChoiceDialog:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;

.field private mSortedButton:Landroid/widget/ImageView;

.field private mSortedChoiceListener:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog$SingleChoiceItemsDialogListener;

.field private mSortedType:I

.field private mSpinnerTitleTxt:[Ljava/lang/String;

.field private mStatisticAppTraffic:Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;

.field private mTitleLayout:Landroid/view/View;

.field private mTitleType:I

.field private mTitleView:Landroid/widget/TextView;

.field private mTotalTraffic:J

.field private mTrafficAdapter:Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter;

.field private mTrafficType:[Ljava/lang/String;

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

.field private miHelper:Lcom/miui/networkassistant/traffic/statistic/MiServiceFrameworkHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/base/ListFragment;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mTitleType:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mSortedType:I

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mSlotNum:I

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment$3;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment$3;-><init>(Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mSortedChoiceListener:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog$SingleChoiceItemsDialogListener;

    return-void
.end method

.method static synthetic access$002(Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;I)I
    .locals 0

    iput p1, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mTitleType:I

    return p1
.end method

.method static synthetic access$100(Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->updateTrafficData()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->updateSpinnerTitle()V

    return-void
.end method

.method static synthetic access$302(Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;Landroid/util/SparseArray;)Landroid/util/SparseArray;
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mMobileTraffic:Landroid/util/SparseArray;

    return-object p1
.end method

.method static synthetic access$400(Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;)Lcom/miui/networkassistant/model/AppInfo;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mAppInfo:Lcom/miui/networkassistant/model/AppInfo;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;)Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mStatisticAppTraffic:Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;

    return-object p0
.end method

.method static synthetic access$602(Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;Landroid/util/SparseArray;)Landroid/util/SparseArray;
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mWifiTraffic:Landroid/util/SparseArray;

    return-object p1
.end method

.method static synthetic access$700(Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->initData()V

    return-void
.end method

.method static synthetic access$802(Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;I)I
    .locals 0

    iput p1, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mSortedType:I

    return p1
.end method

.method static synthetic access$900(Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->updateTrafficSorted()V

    return-void
.end method

.method private getSpinnerTitleText(I)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mDateTypePrefix:[Ljava/lang/String;

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mTrafficType:[Ljava/lang/String;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mSortedType:I

    aget-object p1, p1, v1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mTotalTraffic:J

    invoke-static {p1, v1, v2}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private initData()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->updateTrafficSorted()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->updateSpinnerTitle()V

    return-void
.end method

.method private initViewDelayed()V
    .locals 3

    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_CM_CUSTOMIZATION_TEST:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mSpinnerTitleTxt:[Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mDateTypePrefix:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mSpinnerTitleTxt:[Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mDateTypePrefix:[Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    const v1, 0x7f030036

    invoke-static {v0, v1}, Lx4/y1;->d(Landroid/content/Context;I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mTrafficType:[Ljava/lang/String;

    const v0, 0x7f0b069a

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mTitleLayout:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b06d3

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mTitleView:Landroid/widget/TextView;

    new-instance v0, Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;

    iget-object v1, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mSortedChoiceListener:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog$SingleChoiceItemsDialogListener;

    invoke-direct {v0, v1, v2}, Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;-><init>(Landroid/app/Activity;Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog$SingleChoiceItemsDialogListener;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mSortChoiceDialog:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;

    return-void
.end method

.method private onResetTitle()V
    .locals 3

    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_DUAL_CARD:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/dual/SimCardHelper;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/dual/SimCardHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/networkassistant/dual/SimCardHelper;->isDualSimInserted()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/miui/common/base/ui/BaseFragment;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mSlotNum:I

    if-nez v2, :cond_0

    const v2, 0x7f1206d8

    goto :goto_0

    :cond_0
    const v2, 0x7f1206d9

    :goto_0
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "%s-%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->setTitle(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private showTrafficMenuItem()V
    .locals 2

    new-instance v0, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;

    iget-object v1, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mSpinnerTitleTxt:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->setItems([Ljava/lang/String;)V

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mTitleType:I

    invoke-virtual {v0, v1}, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->setSelectedItem(I)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mTitleLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->setAnchorView(Landroid/view/View;)V

    new-instance v1, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment$1;

    invoke-direct {v1, p0}, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment$1;-><init>(Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;)V

    invoke-virtual {v0, v1}, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->setOnMenuListener(Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu$OnMenuListener;)V

    invoke-virtual {v0}, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->show()V

    return-void
.end method

.method private updateAppTraffic()V
    .locals 2

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment$2;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment$2;-><init>(Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private updateSpinnerTitle()V
    .locals 2

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mTitleType:I

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->getSpinnerTitleText(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mTitleView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mTrafficAdapter:Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method private updateTrafficData()V
    .locals 8

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->miHelper:Lcom/miui/networkassistant/traffic/statistic/MiServiceFrameworkHelper;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mTitleType:I

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mSortedType:I

    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mCurrentImsi:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/networkassistant/traffic/statistic/MiServiceFrameworkHelper;->query(IILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mAllAppList:Ljava/util/List;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->miHelper:Lcom/miui/networkassistant/traffic/statistic/MiServiceFrameworkHelper;

    invoke-virtual {v0}, Lcom/miui/networkassistant/traffic/statistic/MiServiceFrameworkHelper;->getTotalTraffic()J

    move-result-wide v0

    new-instance v2, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter$MiAppInfo;

    invoke-direct {v2}, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter$MiAppInfo;-><init>()V

    const-string v3, "com.xiaomi.xmsf"

    iput-object v3, v2, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter$MiAppInfo;->packageName:Ljava/lang/CharSequence;

    iget v3, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mSortedType:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    if-eq v3, v4, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mWifiTraffic:Landroid/util/SparseArray;

    if-eqz v3, :cond_2

    iget v6, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mTitleType:I

    invoke-virtual {v3, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/miui/networkassistant/model/AppDataUsage;

    aget-object v3, v3, v5

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mMobileTraffic:Landroid/util/SparseArray;

    if-eqz v3, :cond_2

    iget v6, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mTitleType:I

    invoke-virtual {v3, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/miui/networkassistant/model/AppDataUsage;

    aget-object v3, v3, v5

    :goto_0
    invoke-virtual {v3}, Lcom/miui/networkassistant/model/AppDataUsage;->getTotal()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mTotalTraffic:J

    :cond_2
    :goto_1
    iget-wide v6, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mTotalTraffic:J

    sub-long/2addr v6, v0

    iput-wide v6, v2, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter$MiAppInfo;->totalTraffic:J

    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mAllAppList:Ljava/util/List;

    invoke-interface {v0, v5, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_3
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mTrafficAdapter:Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mAllAppList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter;->setData(Ljava/util/List;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mAllAppList:Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    move v4, v5

    :cond_5
    :goto_2
    invoke-virtual {p0, v4}, Lcom/miui/networkassistant/ui/base/ListFragment;->showEmptyView(Z)V

    return-void
.end method

.method private updateTrafficSorted()V
    .locals 2

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->updateTrafficData()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mTrafficAdapter:Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mSortedType:I

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter;->trafficSorted(I)V

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

.method protected initView()V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "package_name"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mTitleType:I

    const-string v3, "title_type"

    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    div-int/lit8 v2, v0, 0x4

    iput v2, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mSortedType:I

    rem-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mTitleType:I

    iget-object v0, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->getAppInfoByPackageName(Ljava/lang/String;)Lcom/miui/networkassistant/model/AppInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mAppInfo:Lcom/miui/networkassistant/model/AppInfo;

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mAppInfo:Lcom/miui/networkassistant/model/AppInfo;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/common/base/ui/BaseFragment;->finish()V

    return-void

    :cond_1
    invoke-static {}, Lcom/miui/networkassistant/dual/Sim;->getCurrentOptSlotNum()I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mSlotNum:I

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->onResetTitle()V

    iget-object v0, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/dual/SimCardHelper;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/dual/SimCardHelper;

    move-result-object v0

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mSlotNum:I

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/dual/SimCardHelper;->getSimImsi(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mCurrentImsi:Ljava/lang/String;

    new-instance v1, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;

    iget-object v2, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mStatisticAppTraffic:Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;

    new-instance v0, Lcom/miui/networkassistant/traffic/statistic/MiServiceFrameworkHelper;

    iget-object v1, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/networkassistant/traffic/statistic/MiServiceFrameworkHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->miHelper:Lcom/miui/networkassistant/traffic/statistic/MiServiceFrameworkHelper;

    const v0, 0x7f121b0d

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/base/ListFragment;->setEmptyText(I)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->initViewDelayed()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->updateAppTraffic()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mSortedButton:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    const v0, 0x7f1216f2

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mSortChoiceDialog:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mTrafficType:[Ljava/lang/String;

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mSortedType:I

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;->buildDialog(Ljava/lang/String;[Ljava/lang/String;II)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mTitleLayout:Landroid/view/View;

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->showTrafficMenuItem()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreateFooterView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method protected onCreateHeaderView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0e02b3

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected onCreateListAdapter()Landroidx/recyclerview/widget/RecyclerView$h;
    .locals 3

    new-instance v0, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter;

    iget-object v1, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mTrafficAdapter:Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter;

    return-object v0
.end method

.method protected onCreateView2(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcom/miui/networkassistant/ui/base/ListFragment;->onCreateView2(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    const p1, 0x7f0b0d8f

    invoke-virtual {p0, p1}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f060b0a

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/base/ListFragment;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/base/ListFragment;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    iget-object p3, p0, Lcom/miui/networkassistant/ui/base/ListFragment;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {p3}, Landroid/view/View;->getPaddingTop()I

    move-result p3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/ListFragment;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    iget-object v1, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07160b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method protected onCustomizeActionBar(Landroidx/appcompat/app/ActionBar;)I
    .locals 3

    const/16 v0, 0x10

    invoke-virtual {p1, v0, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayOptions(II)V

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mSortedButton:Landroid/widget/ImageView;

    const v1, 0x7f080f32

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mSortedButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    const v2, 0x7f1216f2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mSortedButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    instance-of v0, p1, Lmiuix/appcompat/app/ActionBar;

    if-eqz v0, :cond_0

    check-cast p1, Lmiuix/appcompat/app/ActionBar;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowMiServiceAppDetailFragment;->mSortedButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/ActionBar;->setEndView(Landroid/view/View;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected onSetTitle()I
    .locals 1

    const v0, 0x7f120ddd

    return v0
.end method

.class public Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter$OnItemClickListener;,
        Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter$TrafficComparator;,
        Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$h<",
        "Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final NON_SYSTEM_APP:I = 0x0

.field public static final SYSTEM_APP:I = 0x1


# instance fields
.field private final mAdapterType:I

.field private mAppInfoListShow:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/networkassistant/model/TrafficInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

.field private final mIsMiuiHybirdEnable:Z

.field private mNetworkType:I

.field private mProgressMinProgress:I

.field private mSlotNum:I

.field private mTotalTraffic:J

.field private mTrafficType:I

.field private onItemClickListener:Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/miui/networkassistant/model/TrafficInfo;",
            ">;II)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$h;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;->mTrafficType:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;->mTotalTraffic:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;->mProgressMinProgress:I

    iput-object p1, p0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;->mAppInfoListShow:Ljava/util/List;

    iput p3, p0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;->mAdapterType:I

    iput p4, p0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;->mSlotNum:I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/miui/networkassistant/utils/HybirdServiceUtil;->isHybirdIntentExist(Landroid/content/Context;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;->mIsMiuiHybirdEnable:Z

    invoke-static {p1}, Lcom/miui/networkassistant/utils/DeviceUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f071604

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    mul-int/lit8 p3, p3, 0x2

    sub-int/2addr p2, p3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f071605

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    mul-int/lit8 p3, p3, 0x2

    sub-int/2addr p2, p3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f07160d

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    sub-int/2addr p2, p3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f07160c

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    sub-int/2addr p2, p3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f07160e

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    mul-int/lit8 p1, p1, 0x64

    div-int/2addr p1, p2

    iput p1, p0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;->mProgressMinProgress:I

    return-void
.end method

.method private buildMaxTraffic()V
    .locals 6

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;->mTotalTraffic:J

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;->mAppInfoListShow:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/networkassistant/model/TrafficInfo;

    iget-wide v2, p0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;->mTotalTraffic:J

    iget-object v1, v1, Lcom/miui/networkassistant/model/TrafficInfo;->mAppStats:Lcom/miui/networkassistant/model/TrafficInfo$AppStatistic;

    iget-object v1, v1, Lcom/miui/networkassistant/model/TrafficInfo$AppStatistic;->mTotalBytes:[J

    iget v4, p0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;->mTrafficType:I

    aget-wide v4, v1, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;->mTotalTraffic:J

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getTrafficProgress(JJ)I
    .locals 2

    cmp-long v0, p1, p3

    if-ltz v0, :cond_0

    const/16 p1, 0x64

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    long-to-double p1, p1

    mul-double/2addr p1, v0

    long-to-double p3, p3

    div-double/2addr p1, p3

    double-to-int p1, p1

    :goto_0
    iget p2, p0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;->mProgressMinProgress:I

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method public static synthetic k(Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;->lambda$onBindViewHolder$0(ILandroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(ILandroid/view/View;)V
    .locals 0

    iget-object p2, p0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;->onItemClickListener:Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter$OnItemClickListener;

    invoke-interface {p2, p1}, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter$OnItemClickListener;->onItemClick(I)V

    return-void
.end method


# virtual methods
.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/networkassistant/model/TrafficInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;->mAppInfoListShow:Ljava/util/List;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;->mAppInfoListShow:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 0

    check-cast p1, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;->onBindViewHolder(Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter$ViewHolder;I)V
    .locals 8

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;->mAppInfoListShow:Ljava/util/List;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;->onItemClickListener:Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter$OnItemClickListener;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    new-instance v1, Lcom/miui/networkassistant/ui/adapter/e;

    invoke-direct {v1, p0, p2}, Lcom/miui/networkassistant/ui/adapter/e;-><init>(Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const v2, 0x7f080d7d

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :cond_2
    if-nez p2, :cond_3

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const v2, 0x7f080d80

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v1

    if-ne p2, v0, :cond_4

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const v2, 0x7f080d7e

    goto :goto_0

    :cond_4
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const v2, 0x7f080d7f

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;->mAppInfoListShow:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/networkassistant/model/TrafficInfo;

    iget-object v0, p2, Lcom/miui/networkassistant/model/TrafficInfo;->mAppInfo:Lcom/miui/networkassistant/model/AppInfo;

    iget-object v0, v0, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/miui/networkassistant/utils/IconCacheHelper;->getInstance()Lcom/miui/networkassistant/utils/IconCacheHelper;

    move-result-object v2

    iget-object v3, p1, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v2, v3, v0}, Lcom/miui/networkassistant/utils/IconCacheHelper;->setIconToImageView(Landroid/widget/ImageView;Ljava/lang/String;)V

    iget-object v2, p1, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter$ViewHolder;->appName:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/miui/networkassistant/utils/LabelLoadHelper;->loadLabel(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p2, Lcom/miui/networkassistant/model/TrafficInfo;->mAppStats:Lcom/miui/networkassistant/model/TrafficInfo$AppStatistic;

    iget-object p2, p2, Lcom/miui/networkassistant/model/TrafficInfo$AppStatistic;->mTotalBytes:[J

    iget v2, p0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;->mTrafficType:I

    aget-wide v2, p2, v2

    const-wide/16 v4, 0x0

    cmp-long p2, v2, v4

    const/4 v4, 0x0

    const/16 v5, 0x8

    if-lez p2, :cond_6

    iget-object p2, p1, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter$ViewHolder;->progressBar:Lmiuix/androidbasewidget/widget/ProgressBar;

    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p1, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter$ViewHolder;->trafficValuesNone:Landroid/widget/TextView;

    invoke-virtual {p2, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p1, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter$ViewHolder;->progressBar:Lmiuix/androidbasewidget/widget/ProgressBar;

    iget-wide v6, p0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;->mTotalTraffic:J

    invoke-direct {p0, v2, v3, v6, v7}, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;->getTrafficProgress(JJ)I

    move-result v6

    invoke-virtual {p2, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object p2, p1, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter$ViewHolder;->trafficValues:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6, v2, v3}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p1, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter$ViewHolder;->progressBar:Lmiuix/androidbasewidget/widget/ProgressBar;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;->mNetworkType:I

    if-ne v3, v1, :cond_5

    const v3, 0x7f080d89

    goto :goto_2

    :cond_5
    const v3, 0x7f080d83

    :goto_2
    invoke-static {v2, v3}, Lf/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_6
    iget-object p2, p1, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter$ViewHolder;->progressBar:Lmiuix/androidbasewidget/widget/ProgressBar;

    invoke-virtual {p2, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p1, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter$ViewHolder;->trafficValuesNone:Landroid/widget/TextView;

    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p1, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter$ViewHolder;->trafficValues:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    iget-object p2, p0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    if-eqz p2, :cond_9

    :try_start_0
    iget v2, p0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;->mNetworkType:I

    if-ne v2, v1, :cond_7

    invoke-interface {p2, v0}, Lcom/miui/networkassistant/service/IFirewallBinder;->getWifiRule(Ljava/lang/String;)Lcom/miui/networkassistant/model/FirewallRule;

    move-result-object p2

    goto :goto_4

    :cond_7
    iget v1, p0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;->mSlotNum:I

    invoke-interface {p2, v0, v1}, Lcom/miui/networkassistant/service/IFirewallBinder;->getMobileRule(Ljava/lang/String;I)Lcom/miui/networkassistant/model/FirewallRule;

    move-result-object p2

    :goto_4
    iget-object p1, p1, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter$ViewHolder;->netOffImageView:Landroid/widget/ImageView;

    sget-object v0, Lcom/miui/networkassistant/model/FirewallRule;->Restrict:Lcom/miui/networkassistant/model/FirewallRule;

    if-ne p2, v0, :cond_8

    goto :goto_5

    :cond_8
    move v4, v5

    :goto_5
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_9
    :goto_6
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter$ViewHolder;
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0e02b2

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter$ViewHolder;-><init>(Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;Landroid/view/View;)V

    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-static {p1}, Lcom/miui/networkassistant/utils/FolmeHelper;->onCardPressJustBg(Landroid/view/View;)V

    return-object p2
.end method

.method public setData(Ljava/util/List;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/networkassistant/model/TrafficInfo;",
            ">;III)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;->mAppInfoListShow:Ljava/util/List;

    iput p3, p0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;->mNetworkType:I

    iput p4, p0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;->mSlotNum:I

    invoke-virtual {p0, p2}, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;->setMode(I)V

    return-void
.end method

.method public setFirewall(Lcom/miui/networkassistant/service/IFirewallBinder;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    return-void
.end method

.method public setMode(I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;->mAppInfoListShow:Ljava/util/List;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter$TrafficComparator;

    invoke-direct {v1, p1}, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter$TrafficComparator;-><init>(I)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_0
    iput p1, p0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;->mTrafficType:I

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;->buildMaxTraffic()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    return-void
.end method

.method public setOnItemClickListener(Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter$OnItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;->onItemClickListener:Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter$OnItemClickListener;

    return-void
.end method

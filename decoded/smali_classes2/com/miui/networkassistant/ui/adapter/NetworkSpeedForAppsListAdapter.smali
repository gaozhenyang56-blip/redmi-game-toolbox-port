.class public Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$OnItemClickListener;,
        Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$MyComparator;,
        Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$AppSpeedInfo;,
        Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$ViewHolder;,
        Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$NetworkSpeedTotalInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$h<",
        "Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final NETWORK_SPEED_REFRESH_INTERVAL:J = 0x3e8L

.field private static final TAG:Ljava/lang/String; = "ND_AppSpeedAdapter"


# instance fields
.field private mAllAppInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/miui/networkassistant/model/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAppCloseWhiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mLock:Ljava/lang/Object;

.field private mNetworkSpeedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$AppSpeedInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mShowingAppInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$AppSpeedInfo;",
            ">;"
        }
    .end annotation
.end field

.field private onItemClickListener:Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$h;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->mNetworkSpeedList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->mAllAppInfoMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->mShowingAppInfoMap:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->mAppCloseWhiteList:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->mContext:Landroid/content/Context;

    const-string p1, "com.xiaomi.xmsf"

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->mAppCloseWhiteList:Ljava/util/ArrayList;

    const-string v0, "com.lbe.security.miui"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->mAppCloseWhiteList:Ljava/util/ArrayList;

    const-string v0, "com.miui.core"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->mAppCloseWhiteList:Ljava/util/ArrayList;

    const-string v0, "com.xiaomi.vip"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->mAppCloseWhiteList:Ljava/util/ArrayList;

    const-string v0, "com.miui.sdk"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->mAppCloseWhiteList:Ljava/util/ArrayList;

    const-string v0, "com.miui.guardprovider"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->mAppCloseWhiteList:Ljava/util/ArrayList;

    const-string v0, "com.miui.home"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->mAppCloseWhiteList:Ljava/util/ArrayList;

    const-string v0, "com.mi.android.globallauncher"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->mAppCloseWhiteList:Ljava/util/ArrayList;

    const-string v0, "com.android.providers.downloads.ui"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->mAppCloseWhiteList:Ljava/util/ArrayList;

    const-string v0, "com.xiaomi.finddevice"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->mAppCloseWhiteList:Ljava/util/ArrayList;

    const-string v0, "com.google.android.inputmethod.pinyin"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic access$000(Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;)Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$OnItemClickListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->onItemClickListener:Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$OnItemClickListener;

    return-object p0
.end method

.method private getAppInfoByUidLock(I)Lcom/miui/networkassistant/model/AppInfo;
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->mAllAppInfoMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/model/AppInfo;

    if-nez v0, :cond_1

    const/4 v1, -0x5

    if-ne p1, v1, :cond_0

    new-instance v0, Lcom/miui/networkassistant/model/AppInfo;

    const-string p1, "icon_personal_hotpot"

    invoke-direct {v0, p1, v1}, Lcom/miui/networkassistant/model/AppInfo;-><init>(Ljava/lang/CharSequence;I)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Lcom/miui/networkassistant/model/AppInfo;

    const/4 p1, 0x0

    const-string v1, "icon_root"

    invoke-direct {v0, v1, p1}, Lcom/miui/networkassistant/model/AppInfo;-><init>(Ljava/lang/CharSequence;I)V

    :cond_1
    :goto_0
    return-object v0
.end method


# virtual methods
.method public getData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$AppSpeedInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->mNetworkSpeedList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getItemCount()I
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->mNetworkSpeedList:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->mNetworkSpeedList:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getItemId(I)J
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->mNetworkSpeedList:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->mNetworkSpeedList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, p1, :cond_0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->mNetworkSpeedList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$AppSpeedInfo;

    iget-object p1, p1, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$AppSpeedInfo;->appInfo:Lcom/miui/networkassistant/model/AppInfo;

    iget p1, p1, Lcom/miui/networkassistant/model/AppInfo;->uid:I

    int-to-long v1, p1

    monitor-exit v0

    return-wide v1

    :cond_0
    monitor-exit v0

    const-wide/16 v0, 0x0

    return-wide v0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public isAppCanClose(Lcom/miui/networkassistant/model/AppInfo;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget v1, p1, Lcom/miui/networkassistant/model/AppInfo;->uid:I

    invoke-static {v1}, Lx4/z1;->b(I)I

    move-result v1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->isGroupUid(ILandroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_4

    const/16 v2, 0x2710

    if-ge v1, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->mAppCloseWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p1, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/networkassistant/utils/PackageUtil;->getRealPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v0

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_0
    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$c0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->onBindViewHolder(Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$ViewHolder;I)V
    .locals 6
    .param p1    # Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    new-instance v1, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$1;

    invoke-direct {v1, p0, p2}, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$1;-><init>(Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->getData()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$AppSpeedInfo;

    iget-object v0, p1, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$ViewHolder;->packageName:Ljava/lang/String;

    iget-object v1, p2, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$AppSpeedInfo;->appInfo:Lcom/miui/networkassistant/model/AppInfo;

    iget-object v1, v1, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/networkassistant/utils/IconCacheHelper;->getInstance()Lcom/miui/networkassistant/utils/IconCacheHelper;

    move-result-object v0

    iget-object v1, p1, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v2, p2, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$AppSpeedInfo;->appInfo:Lcom/miui/networkassistant/model/AppInfo;

    iget-object v2, v2, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/utils/IconCacheHelper;->setIconToImageView(Landroid/widget/ImageView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p2, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$AppSpeedInfo;->appInfo:Lcom/miui/networkassistant/model/AppInfo;

    iget-object v1, v1, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lcom/miui/networkassistant/utils/LabelLoadHelper;->loadLabel(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p1, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$ViewHolder;->label:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$AppSpeedInfo;->appInfo:Lcom/miui/networkassistant/model/AppInfo;

    iget-object v0, v0, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$ViewHolder;->packageName:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->mContext:Landroid/content/Context;

    iget-wide v1, p2, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$AppSpeedInfo;->speedRx:J

    invoke-static {v0, v1, v2}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatSpeed(Landroid/content/Context;J)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v3, p1, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$ViewHolder;->trafficRx:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v0, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v0, v1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->mContext:Landroid/content/Context;

    iget-wide v3, p2, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$AppSpeedInfo;->speedTx:J

    invoke-static {v0, v3, v4}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatSpeed(Landroid/content/Context;J)[Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p1, p1, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$ViewHolder;->trafficTx:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, p2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p2, p2, v1

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$ViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0e02b0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$ViewHolder;

    invoke-direct {p2, p1}, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public packageStoped(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->mShowingAppInfoMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public refresh(Ljava/util/ArrayList;Ljava/lang/String;J)Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$NetworkSpeedTotalInfo;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "J)",
            "Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$NetworkSpeedTotalInfo;"
        }
    .end annotation

    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    new-instance v0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$NetworkSpeedTotalInfo;

    invoke-direct {v0}, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$NetworkSpeedTotalInfo;-><init>()V

    if-eqz p1, :cond_f

    iget-object v3, v1, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->mAllAppInfoMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v3, v1, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->mNetworkSpeedList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object v3, v1, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->mContext:Landroid/content/Context;

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    invoke-virtual {v3}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    iget-object v6, v1, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->mShowingAppInfoMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$AppSpeedInfo;

    if-nez v5, :cond_1

    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    invoke-direct {v1, v5}, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->getAppInfoByUidLock(I)Lcom/miui/networkassistant/model/AppInfo;

    move-result-object v7

    if-eqz v7, :cond_1

    new-instance v5, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$AppSpeedInfo;

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    move-object v6, v5

    invoke-direct/range {v6 .. v11}, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$AppSpeedInfo;-><init>(Lcom/miui/networkassistant/model/AppInfo;JJ)V

    iget-object v6, v1, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->mShowingAppInfoMap:Ljava/util/HashMap;

    iget v4, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object v3, v1, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->mShowingAppInfoMap:Ljava/util/HashMap;

    const/4 v4, -0x6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$AppSpeedInfo;

    if-nez v3, :cond_3

    invoke-direct {v1, v4}, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->getAppInfoByUidLock(I)Lcom/miui/networkassistant/model/AppInfo;

    move-result-object v6

    if-eqz v6, :cond_3

    new-instance v3, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$AppSpeedInfo;

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    move-object v5, v3

    invoke-direct/range {v5 .. v10}, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$AppSpeedInfo;-><init>(Lcom/miui/networkassistant/model/AppInfo;JJ)V

    iget-object v5, v1, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->mShowingAppInfoMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v3, v1, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->mNetworkSpeedList:Ljava/util/ArrayList;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v5, v1, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->mShowingAppInfoMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$AppSpeedInfo;

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$AppSpeedInfo;->reset()V

    iget-object v7, v1, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->mNetworkSpeedList:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v1, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->mNetworkSpeedList:Ljava/util/ArrayList;

    new-instance v7, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$MyComparator;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$MyComparator;-><init>(Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$1;)V

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_1

    :cond_5
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    const-string v6, "iface"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v6, "uid"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const-string v7, "tag"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const-string v8, "rxBytes"

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    const-string v10, "txBytes"

    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v5, p3, v12

    if-lez v5, :cond_7

    const-wide/16 v14, 0x3e8

    mul-long/2addr v8, v14

    div-long v8, v8, p3

    mul-long/2addr v10, v14

    div-long v10, v10, p3

    :cond_7
    add-long v14, v8, v10

    cmp-long v5, v14, v12

    if-lez v5, :cond_d

    if-nez v7, :cond_d

    const v5, 0x7fffffff

    const/4 v7, -0x5

    if-ne v6, v5, :cond_8

    move v6, v7

    :cond_8
    iget-object v5, v1, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->mShowingAppInfoMap:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$AppSpeedInfo;

    if-nez v5, :cond_b

    if-ne v6, v7, :cond_9

    iget-object v5, v1, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->mShowingAppInfoMap:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$AppSpeedInfo;

    if-nez v5, :cond_b

    invoke-direct {v1, v7}, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->getAppInfoByUidLock(I)Lcom/miui/networkassistant/model/AppInfo;

    move-result-object v17

    if-eqz v17, :cond_b

    new-instance v5, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$AppSpeedInfo;

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    move-object/from16 v16, v5

    invoke-direct/range {v16 .. v21}, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$AppSpeedInfo;-><init>(Lcom/miui/networkassistant/model/AppInfo;JJ)V

    iget-object v12, v1, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->mShowingAppInfoMap:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v12, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_9
    const-string v7, "ND_AppSpeedAdapter"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "uid="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ",rxBytes="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, ",txBytes="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v7, 0x3e8

    if-ge v6, v7, :cond_a

    iget-object v5, v1, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->mShowingAppInfoMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$AppSpeedInfo;

    goto :goto_3

    :cond_a
    const-string v7, "ND_AppSpeedAdapter"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "uid "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " not running? rxBytes="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, ",txBytes="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_3
    if-eqz v5, :cond_c

    invoke-virtual {v5, v8, v9, v10, v11}, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$AppSpeedInfo;->add(JJ)V

    const-string v5, "ND_AppSpeedAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "uid "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " rxBytes="

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ",txBytes="

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v5, v0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$NetworkSpeedTotalInfo;->total:J

    add-long/2addr v5, v14

    iput-wide v5, v0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$NetworkSpeedTotalInfo;->total:J

    iget-wide v5, v0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$NetworkSpeedTotalInfo;->rxTotal:J

    add-long/2addr v5, v8

    iput-wide v5, v0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$NetworkSpeedTotalInfo;->rxTotal:J

    iget-wide v5, v0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$NetworkSpeedTotalInfo;->txTotal:J

    add-long/2addr v5, v10

    iput-wide v5, v0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$NetworkSpeedTotalInfo;->txTotal:J

    goto/16 :goto_2

    :cond_c
    const-string v5, "ND_AppSpeedAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "appSpeedInfo is null!! uid="

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",rxBytes="

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ",txBytes="

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_4
    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_d
    if-eqz v7, :cond_6

    const-string v5, "ND_AppSpeedAdapter"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "tag="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",uid="

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",rxBytes="

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ",txBytes="

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    :cond_f
    :goto_5
    monitor-exit v2

    return-object v0

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public setAppList(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/networkassistant/model/AppInfo;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->mAllAppInfoMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/networkassistant/model/AppInfo;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->mAllAppInfoMap:Ljava/util/HashMap;

    iget v3, v1, Lcom/miui/networkassistant/model/AppInfo;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/miui/networkassistant/model/AppInfo;

    const-string v1, "icon_others"

    const/4 v2, -0x6

    invoke-direct {p1, v1, v2}, Lcom/miui/networkassistant/model/AppInfo;-><init>(Ljava/lang/CharSequence;I)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->mAllAppInfoMap:Ljava/util/HashMap;

    iget v2, p1, Lcom/miui/networkassistant/model/AppInfo;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setData(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$AppSpeedInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->mNetworkSpeedList:Ljava/util/ArrayList;

    return-void
.end method

.method public setOnItemClickListener(Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$OnItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->onItemClickListener:Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$OnItemClickListener;

    return-void
.end method

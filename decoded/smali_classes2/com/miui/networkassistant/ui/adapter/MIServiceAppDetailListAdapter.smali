.class public Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter$MiAppInfo;,
        Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$h<",
        "Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mAppInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter$MiAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mComparatorByTraffic:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter$MiAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mProgressMinProgress:I

.field mTotalTraffic:J

.field private mTrafficType:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter$MiAppInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$h;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter;->mTrafficType:I

    iput v0, p0, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter;->mProgressMinProgress:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter;->mTotalTraffic:J

    new-instance v0, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter$1;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter$1;-><init>(Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter;->mComparatorByTraffic:Ljava/util/Comparator;

    iput-object p1, p0, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter;->mAppInfoList:Ljava/util/List;

    invoke-static {p1}, Lcom/miui/networkassistant/utils/DeviceUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f071604

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p2, v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f071605

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p2, v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07160d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07160c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07160e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    mul-int/lit8 p1, p1, 0x64

    div-int/2addr p1, p2

    iput p1, p0, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter;->mProgressMinProgress:I

    return-void
.end method

.method private buildMaxTraffic()V
    .locals 6

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter;->mTotalTraffic:J

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter;->mAppInfoList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter$MiAppInfo;

    iget-wide v2, p0, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter;->mTotalTraffic:J

    iget-wide v4, v1, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter$MiAppInfo;->totalTraffic:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter;->mTotalTraffic:J

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
    iget p2, p0, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter;->mProgressMinProgress:I

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method


# virtual methods
.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter$MiAppInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter;->mAppInfoList:Ljava/util/List;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter;->mAppInfoList:Ljava/util/List;

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

    check-cast p1, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter;->onBindViewHolder(Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter$ViewHolder;I)V
    .locals 7

    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter;->mAppInfoList:Ljava/util/List;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const v2, 0x7f080d7d

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :cond_1
    if-nez p2, :cond_2

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const v2, 0x7f080d80

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v1

    if-ne p2, v0, :cond_3

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const v2, 0x7f080d7e

    goto :goto_0

    :cond_3
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const v2, 0x7f080d7f

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter;->mAppInfoList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter$MiAppInfo;

    invoke-static {}, Lcom/miui/networkassistant/utils/IconCacheHelper;->getInstance()Lcom/miui/networkassistant/utils/IconCacheHelper;

    move-result-object v0

    iget-object v2, p1, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v3, p2, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter$MiAppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/miui/networkassistant/utils/IconCacheHelper;->setIconToImageView(Landroid/widget/ImageView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p2, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter$MiAppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-static {v0, v2}, Lcom/miui/networkassistant/utils/LabelLoadHelper;->loadLabel(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v2, p1, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter$ViewHolder;->appName:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter;->mTrafficType:I

    const-string v2, ""

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x8

    if-nez v0, :cond_4

    iget-wide v0, p2, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter$MiAppInfo;->totalTraffic:J

    cmp-long p2, v0, v3

    if-lez p2, :cond_5

    iget-object p2, p1, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter$ViewHolder;->progressBar:Lmiuix/androidbasewidget/widget/ProgressBar;

    invoke-virtual {p2, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p1, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter$ViewHolder;->trafficValuesNone:Landroid/widget/TextView;

    invoke-virtual {p2, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p1, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter$ViewHolder;->progressBar:Lmiuix/androidbasewidget/widget/ProgressBar;

    iget-wide v2, p0, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter;->mTotalTraffic:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter;->getTrafficProgress(JJ)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object p2, p1, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter$ViewHolder;->trafficValues:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p1, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter$ViewHolder;->progressBar:Lmiuix/androidbasewidget/widget/ProgressBar;

    iget-object p2, p0, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter;->mContext:Landroid/content/Context;

    const v0, 0x7f080d83

    goto :goto_2

    :cond_4
    if-ne v1, v0, :cond_6

    iget-wide v0, p2, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter$MiAppInfo;->totalTraffic:J

    cmp-long p2, v0, v3

    if-lez p2, :cond_5

    iget-object p2, p1, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter$ViewHolder;->progressBar:Lmiuix/androidbasewidget/widget/ProgressBar;

    invoke-virtual {p2, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p1, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter$ViewHolder;->trafficValuesNone:Landroid/widget/TextView;

    invoke-virtual {p2, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p1, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter$ViewHolder;->progressBar:Lmiuix/androidbasewidget/widget/ProgressBar;

    iget-wide v2, p0, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter;->mTotalTraffic:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter;->getTrafficProgress(JJ)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object p2, p1, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter$ViewHolder;->trafficValues:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p1, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter$ViewHolder;->progressBar:Lmiuix/androidbasewidget/widget/ProgressBar;

    iget-object p2, p0, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter;->mContext:Landroid/content/Context;

    const v0, 0x7f080d89

    :goto_2
    invoke-static {p2, v0}, Lf/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_5
    iget-object p2, p1, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter$ViewHolder;->progressBar:Lmiuix/androidbasewidget/widget/ProgressBar;

    invoke-virtual {p2, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p1, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter$ViewHolder;->trafficValuesNone:Landroid/widget/TextView;

    invoke-virtual {p2, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p1, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter$ViewHolder;->trafficValues:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    :goto_3
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter$ViewHolder;
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0e02b2

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter$ViewHolder;

    invoke-direct {p2, p1}, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-static {p1}, Lcom/miui/networkassistant/utils/FolmeHelper;->onCardPressJustBg(Landroid/view/View;)V

    return-object p2
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter$MiAppInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter;->mAppInfoList:Ljava/util/List;

    iget p1, p0, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter;->mTrafficType:I

    invoke-virtual {p0, p1}, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter;->trafficSorted(I)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter;->buildMaxTraffic()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    return-void
.end method

.method public trafficSorted(I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter;->mAppInfoList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter;->mComparatorByTraffic:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_0
    iput p1, p0, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter;->mTrafficType:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    return-void
.end method

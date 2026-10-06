.class public Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter$OnItemClickListener;,
        Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter$MyComparator;,
        Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter$MyAppInfo;,
        Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$h<",
        "Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLockScreenAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter$MyAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mOnItemClickListener:Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter$OnItemClickListener;

.field private mUidMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$h;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter;->mLockScreenAppList:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter;)Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter$OnItemClickListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter;->mOnItemClickListener:Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter$OnItemClickListener;

    return-object p0
.end method


# virtual methods
.method public getData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter$MyAppInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter;->mLockScreenAppList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter;->mLockScreenAppList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$c0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter;->onBindViewHolder(Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter$ViewHolder;I)V
    .locals 3
    .param p1    # Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter;->mLockScreenAppList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p2, :cond_0

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    new-instance v1, Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter$1;

    invoke-direct {v1, p0, p2}, Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter$1;-><init>(Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter;->mLockScreenAppList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter$MyAppInfo;

    invoke-static {}, Lcom/miui/networkassistant/utils/IconCacheHelper;->getInstance()Lcom/miui/networkassistant/utils/IconCacheHelper;

    move-result-object v0

    iget-object v1, p1, Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v2, p2, Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter$MyAppInfo;->appInfo:Lcom/miui/networkassistant/model/AppInfo;

    iget-object v2, v2, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/utils/IconCacheHelper;->setIconToImageView(Landroid/widget/ImageView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p2, Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter$MyAppInfo;->appInfo:Lcom/miui/networkassistant/model/AppInfo;

    iget-object v1, v1, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/networkassistant/utils/LabelLoadHelper;->loadLabel(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p1, Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter$ViewHolder;->label:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p1, Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter$ViewHolder;->traffic:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter;->mContext:Landroid/content/Context;

    iget-wide v1, p2, Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter$MyAppInfo;->lockScreedBytes:J

    invoke-static {v0, v1, v2}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
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

    invoke-virtual {p0, p1, p2}, Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter$ViewHolder;
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

    const v0, 0x7f0e02ae

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter$ViewHolder;

    invoke-direct {p2, p1}, Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public setData(Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/networkassistant/model/AppInfo;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    iput-object p2, p0, Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter;->mUidMap:Ljava/util/HashMap;

    iget-object p2, p0, Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter;->mLockScreenAppList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/networkassistant/model/AppInfo;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter;->mUidMap:Ljava/util/HashMap;

    iget v1, p2, Lcom/miui/networkassistant/model/AppInfo;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter;->mLockScreenAppList:Ljava/util/ArrayList;

    new-instance v2, Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter$MyAppInfo;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {v2, p2, v3, v4}, Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter$MyAppInfo;-><init>(Lcom/miui/networkassistant/model/AppInfo;J)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter;->mLockScreenAppList:Ljava/util/ArrayList;

    new-instance p2, Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter$MyComparator;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter$MyComparator;-><init>(Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter$1;)V

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    :cond_3
    :goto_1
    return-void
.end method

.method public setOnItemClickListener(Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter$OnItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter;->mOnItemClickListener:Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter$OnItemClickListener;

    return-void
.end method

.class public Lcom/miui/networkassistant/ui/base/recyclerview/MultiRecycleViewHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mAdapter:Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter<",
            "Lcom/miui/networkassistant/ui/base/recyclerview/BaseEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mPairData:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/util/ArrayList<",
            "Lcom/miui/networkassistant/model/WhiteListItem;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/miui/networkassistant/model/WhiteListItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;


# direct methods
.method private constructor <init>(Lmiuix/recyclerview/widget/RecyclerView;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/networkassistant/ui/base/recyclerview/MultiRecycleViewHelper;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/miui/networkassistant/ui/base/recyclerview/MultiRecycleViewHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getNewInstance(Lmiuix/recyclerview/widget/RecyclerView;Landroid/content/Context;)Lcom/miui/networkassistant/ui/base/recyclerview/MultiRecycleViewHelper;
    .locals 1

    new-instance v0, Lcom/miui/networkassistant/ui/base/recyclerview/MultiRecycleViewHelper;

    invoke-direct {v0, p0, p1}, Lcom/miui/networkassistant/ui/base/recyclerview/MultiRecycleViewHelper;-><init>(Lmiuix/recyclerview/widget/RecyclerView;Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/networkassistant/ui/base/recyclerview/BaseEntity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/recyclerview/MultiRecycleViewHelper;->mAdapter:Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter;->getData()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDataItem(I)Lcom/miui/networkassistant/ui/base/recyclerview/BaseEntity;
    .locals 1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/recyclerview/MultiRecycleViewHelper;->mAdapter:Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/recyclerview/MultiRecycleViewHelper;->mAdapter:Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/networkassistant/ui/base/recyclerview/BaseEntity;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPairDate()Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/util/ArrayList<",
            "Lcom/miui/networkassistant/model/WhiteListItem;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/miui/networkassistant/model/WhiteListItem;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/recyclerview/MultiRecycleViewHelper;->mPairData:Landroid/util/Pair;

    return-object v0
.end method

.method public init(Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter$OnItemClickListener;)V
    .locals 4

    new-instance v0, Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/recyclerview/MultiRecycleViewHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/base/recyclerview/MultiRecycleViewHelper;->mAdapter:Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter;

    new-instance v1, Lcom/miui/networkassistant/ui/base/recyclerview/impl/HeaderItemViewType;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/base/recyclerview/MultiRecycleViewHelper;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/miui/networkassistant/ui/base/recyclerview/impl/HeaderItemViewType;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter;->addItemViewType(Lcom/miui/networkassistant/ui/base/recyclerview/ItemViewType;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/recyclerview/MultiRecycleViewHelper;->mAdapter:Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter;

    new-instance v1, Lcom/miui/networkassistant/ui/base/recyclerview/impl/WhiteListItemViewType;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/base/recyclerview/MultiRecycleViewHelper;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/miui/networkassistant/ui/base/recyclerview/impl/WhiteListItemViewType;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter;->addItemViewType(Lcom/miui/networkassistant/ui/base/recyclerview/ItemViewType;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/recyclerview/MultiRecycleViewHelper;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/SpringRecyclerView;->setSpringEnabled(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/recyclerview/MultiRecycleViewHelper;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v3, p0, Lcom/miui/networkassistant/ui/base/recyclerview/MultiRecycleViewHelper;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$n;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/recyclerview/MultiRecycleViewHelper;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/base/recyclerview/MultiRecycleViewHelper;->mAdapter:Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/recyclerview/MultiRecycleViewHelper;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    new-instance v2, Lzc/c;

    const/4 v3, 0x1

    new-array v3, v3, [I

    aput v1, v3, v1

    invoke-direct {v2, v3}, Lzc/c;-><init>([I)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$m;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/recyclerview/MultiRecycleViewHelper;->mAdapter:Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter;->setOnItemClickListener(Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter$OnItemClickListener;)V

    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/recyclerview/MultiRecycleViewHelper;->mAdapter:Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    return-void
.end method

.method public setData(Landroid/util/Pair;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/util/ArrayList<",
            "Lcom/miui/networkassistant/model/WhiteListItem;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/miui/networkassistant/model/WhiteListItem;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/networkassistant/ui/base/recyclerview/MultiRecycleViewHelper;->mPairData:Landroid/util/Pair;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/networkassistant/model/WhiteListItem;

    invoke-virtual {v1}, Lcom/miui/networkassistant/ui/base/recyclerview/BaseEntity;->getGroup()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v4, p0, Lcom/miui/networkassistant/ui/base/recyclerview/MultiRecycleViewHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v6, v2, [Ljava/lang/Object;

    iget-object v7, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {v4, v1, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lcom/miui/networkassistant/model/WhiteListHeaderItem;

    invoke-direct {v4, v1}, Lcom/miui/networkassistant/model/WhiteListHeaderItem;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/networkassistant/model/WhiteListItem;

    invoke-virtual {v1}, Lcom/miui/networkassistant/ui/base/recyclerview/BaseEntity;->getGroup()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v4, p0, Lcom/miui/networkassistant/ui/base/recyclerview/MultiRecycleViewHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v6, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v3

    invoke-virtual {v4, v1, v5, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/miui/networkassistant/model/WhiteListHeaderItem;

    invoke-direct {v2, v1}, Lcom/miui/networkassistant/model/WhiteListHeaderItem;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    iget-object p1, p0, Lcom/miui/networkassistant/ui/base/recyclerview/MultiRecycleViewHelper;->mAdapter:Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter;

    invoke-virtual {p1, v0}, Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter;->setData(Ljava/util/List;)V

    return-void
.end method

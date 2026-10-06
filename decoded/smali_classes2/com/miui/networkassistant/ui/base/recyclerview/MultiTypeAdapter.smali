.class public Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter$OnItemClickListener;,
        Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/miui/networkassistant/ui/base/recyclerview/BaseEntity;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$h<",
        "Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field protected final mContext:Landroid/content/Context;

.field private final mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mOnItemClickListener:Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter$OnItemClickListener;

.field private mTypeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/networkassistant/ui/base/recyclerview/ItemViewType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$h;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter;->mDataList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter;->mTypeList:Ljava/util/List;

    iput-object p1, p0, Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter;->setData(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter;)Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter$OnItemClickListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter;->mOnItemClickListener:Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter$OnItemClickListener;

    return-object p0
.end method

.method private setClickListener(Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter$ViewHolder;I)V
    .locals 2

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    new-instance v1, Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter$1;

    invoke-direct {v1, p0, p2}, Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter$1;-><init>(Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    new-instance v0, Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter$2;

    invoke-direct {v0, p0, p2}, Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter$2;-><init>(Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method


# virtual methods
.method public addItemViewType(Lcom/miui/networkassistant/ui/base/recyclerview/ItemViewType;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter;->mTypeList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method public final getItemCount()I
    .locals 1

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter;->mTypeList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter;->mTypeList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/networkassistant/ui/base/recyclerview/ItemViewType;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/networkassistant/ui/base/recyclerview/BaseEntity;

    invoke-interface {v1, v2, p1}, Lcom/miui/networkassistant/ui/base/recyclerview/ItemViewType;->checkType(Lcom/miui/networkassistant/ui/base/recyclerview/BaseEntity;I)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$h;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 0

    check-cast p1, Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter;->onBindViewHolder(Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter$ViewHolder;I)V

    return-void
.end method

.method public final onBindViewHolder(Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter$ViewHolder;I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter;->mTypeList:Ljava/util/List;

    iget v1, p1, Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter$ViewHolder;->type:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/ui/base/recyclerview/ItemViewType;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/networkassistant/ui/base/recyclerview/BaseEntity;

    invoke-interface {v0, p1, v1, p2}, Lcom/miui/networkassistant/ui/base/recyclerview/ItemViewType;->onBindViewHolder(Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter$ViewHolder;Lcom/miui/networkassistant/ui/base/recyclerview/BaseEntity;I)V

    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter;->setClickListener(Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter$ViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter$ViewHolder;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter;->mTypeList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/ui/base/recyclerview/ItemViewType;

    invoke-interface {v0, p1}, Lcom/miui/networkassistant/ui/base/recyclerview/ItemViewType;->onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter$ViewHolder;

    move-result-object p1

    iput p2, p1, Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter$ViewHolder;->type:I

    return-object p1
.end method

.method public setData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    return-void
.end method

.method public setDataItem(Lcom/miui/networkassistant/ui/base/recyclerview/BaseEntity;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemChanged(I)V

    return-void
.end method

.method public setOnItemClickListener(Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter$OnItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter;->mOnItemClickListener:Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter$OnItemClickListener;

    return-void
.end method

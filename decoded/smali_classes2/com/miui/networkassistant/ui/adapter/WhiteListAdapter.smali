.class public Lcom/miui/networkassistant/ui/adapter/WhiteListAdapter;
.super Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter;
.source "SourceFile"


# static fields
.field private static mCollator:Ljava/text/Collator;


# instance fields
.field private mComparatorByLabel:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/miui/networkassistant/model/WhiteListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mComparatorByState:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/miui/networkassistant/model/WhiteListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/miui/networkassistant/model/WhiteGroupHeader;",
            "Ljava/util/List<",
            "Lcom/miui/networkassistant/model/WhiteListItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private mHeaderComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/miui/networkassistant/model/WhiteGroupHeader;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/networkassistant/model/WhiteGroupHeader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lcom/miui/networkassistant/ui/adapter/WhiteListAdapter;->mCollator:Ljava/text/Collator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter;-><init>(Landroid/content/Context;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/miui/networkassistant/ui/adapter/WhiteListAdapter;->mData:Ljava/util/Map;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/networkassistant/ui/adapter/WhiteListAdapter;->mHeaders:Ljava/util/List;

    new-instance p1, Lcom/miui/networkassistant/ui/adapter/WhiteListAdapter$1;

    invoke-direct {p1, p0}, Lcom/miui/networkassistant/ui/adapter/WhiteListAdapter$1;-><init>(Lcom/miui/networkassistant/ui/adapter/WhiteListAdapter;)V

    iput-object p1, p0, Lcom/miui/networkassistant/ui/adapter/WhiteListAdapter;->mComparatorByLabel:Ljava/util/Comparator;

    new-instance p1, Lcom/miui/networkassistant/ui/adapter/WhiteListAdapter$2;

    invoke-direct {p1, p0}, Lcom/miui/networkassistant/ui/adapter/WhiteListAdapter$2;-><init>(Lcom/miui/networkassistant/ui/adapter/WhiteListAdapter;)V

    iput-object p1, p0, Lcom/miui/networkassistant/ui/adapter/WhiteListAdapter;->mComparatorByState:Ljava/util/Comparator;

    new-instance p1, Lcom/miui/networkassistant/ui/adapter/WhiteListAdapter$3;

    invoke-direct {p1, p0}, Lcom/miui/networkassistant/ui/adapter/WhiteListAdapter$3;-><init>(Lcom/miui/networkassistant/ui/adapter/WhiteListAdapter;)V

    iput-object p1, p0, Lcom/miui/networkassistant/ui/adapter/WhiteListAdapter;->mHeaderComparator:Ljava/util/Comparator;

    return-void
.end method

.method static synthetic access$000()Ljava/text/Collator;
    .locals 1

    sget-object v0, Lcom/miui/networkassistant/ui/adapter/WhiteListAdapter;->mCollator:Ljava/text/Collator;

    return-object v0
.end method

.method private getComparatorType(I)Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Comparator<",
            "Lcom/miui/networkassistant/model/WhiteListItem;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/networkassistant/ui/adapter/WhiteListAdapter;->mComparatorByLabel:Ljava/util/Comparator;

    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/miui/networkassistant/ui/adapter/WhiteListAdapter;->mComparatorByState:Ljava/util/Comparator;

    return-object p1

    :cond_1
    iget-object p1, p0, Lcom/miui/networkassistant/ui/adapter/WhiteListAdapter;->mComparatorByLabel:Ljava/util/Comparator;

    return-object p1
.end method


# virtual methods
.method public getCountForSection(I)I
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/WhiteListAdapter;->mData:Ljava/util/Map;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/adapter/WhiteListAdapter;->mHeaders:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method public getItem(II)Ljava/lang/Object;
    .locals 0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(II)J
    .locals 0

    int-to-long p1, p2

    return-wide p1
.end method

.method public getItemView(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const p4, 0x7f0e02b4

    const/4 v0, 0x0

    invoke-virtual {p3, p4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    :cond_0
    move-object p4, p3

    check-cast p4, Lcom/miui/networkassistant/ui/view/WhiteAppListItemView;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter;->mAdapterListener:Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter$AppSelectionAdapterListener;

    invoke-virtual {p4, v0}, Lcom/miui/networkassistant/ui/view/WhiteAppListItemView;->setOnSelectionListener(Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter$AppSelectionAdapterListener;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter;->mSearchInputStr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/WhiteListAdapter;->mData:Ljava/util/Map;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/adapter/WhiteListAdapter;->mHeaders:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/networkassistant/model/WhiteListItem;

    invoke-virtual {p4, p1}, Lcom/miui/networkassistant/ui/view/WhiteAppListItemView;->fillData(Lcom/miui/networkassistant/model/WhiteListItem;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/WhiteListAdapter;->mData:Ljava/util/Map;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/adapter/WhiteListAdapter;->mHeaders:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/networkassistant/model/WhiteListItem;

    iget-object p2, p0, Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter;->mSearchInputStr:Ljava/lang/String;

    invoke-virtual {p4, p1, p2}, Lcom/miui/networkassistant/ui/view/WhiteAppListItemView;->fillData(Lcom/miui/networkassistant/model/WhiteListItem;Ljava/lang/String;)V

    :goto_0
    return-object p3
.end method

.method public getSectionCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/WhiteListAdapter;->mHeaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSectionHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const p3, 0x7f0e02ad

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    move-object p3, p2

    check-cast p3, Lcom/miui/networkassistant/ui/view/WhiteListHeaderView;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/WhiteListAdapter;->mHeaders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/networkassistant/model/WhiteGroupHeader;

    invoke-virtual {p3, p1}, Lcom/miui/networkassistant/ui/view/WhiteListHeaderView;->fillData(Lcom/miui/networkassistant/model/WhiteGroupHeader;)V

    return-object p2
.end method

.method public setHeaderTitle(Lcom/miui/networkassistant/model/WhiteGroupHeader$WhiteGroupHeaderType;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/WhiteListAdapter;->mHeaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/networkassistant/model/WhiteGroupHeader;

    invoke-virtual {v1}, Lcom/miui/networkassistant/model/WhiteGroupHeader;->getGroupHeaderType()Lcom/miui/networkassistant/model/WhiteGroupHeader$WhiteGroupHeaderType;

    move-result-object v2

    if-ne v2, p1, :cond_0

    invoke-virtual {v1, p2}, Lcom/miui/networkassistant/model/WhiteGroupHeader;->setHeaderTitle(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updateData(Ljava/util/Map;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/miui/networkassistant/model/WhiteGroupHeader;",
            "Ljava/util/List<",
            "Lcom/miui/networkassistant/model/WhiteListItem;",
            ">;>;I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/WhiteListAdapter;->mData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/WhiteListAdapter;->mHeaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/networkassistant/model/WhiteGroupHeader;

    iget-object v3, p0, Lcom/miui/networkassistant/ui/adapter/WhiteListAdapter;->mHeaders:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lt v4, v2, :cond_0

    invoke-direct {p0, p2}, Lcom/miui/networkassistant/ui/adapter/WhiteListAdapter;->getComparatorType(I)Ljava/util/Comparator;

    move-result-object v2

    invoke-static {v3, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_0
    iget-object v2, p0, Lcom/miui/networkassistant/ui/adapter/WhiteListAdapter;->mData:Ljava/util/Map;

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/networkassistant/ui/adapter/WhiteListAdapter;->mHeaders:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lt p1, v2, :cond_2

    iget-object p1, p0, Lcom/miui/networkassistant/ui/adapter/WhiteListAdapter;->mHeaders:Ljava/util/List;

    iget-object p2, p0, Lcom/miui/networkassistant/ui/adapter/WhiteListAdapter;->mHeaderComparator:Ljava/util/Comparator;

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_2
    invoke-virtual {p0}, Lcom/miui/common/expandableview/a;->notifyDataSetChanged()V

    return-void
.end method

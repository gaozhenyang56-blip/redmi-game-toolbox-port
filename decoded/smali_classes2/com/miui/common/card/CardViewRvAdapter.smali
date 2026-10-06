.class public Lcom/miui/common/card/CardViewRvAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$h<",
        "Lcom/miui/common/card/BaseViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final FINDVIEW_START_ANIM_PAYLOAD:Ljava/lang/String; = "findViewStartAnim"

.field public static final PAGE_INDEX_HOMEPAGE:I = 0x0

.field public static final PAGE_INDEX_PHONEMANAGE:I = 0x3

.field public static final PAGE_INDEX_RESULTPAGE:I = 0x1

.field public static final PAGE_INDEX_RESULTPAGE_FIRSTAIDKIT:I = 0x2


# instance fields
.field protected canAutoScroll:Z

.field private defaultStatShow:Z

.field private handler:Landroid/os/Handler;

.field private inflater:Landroid/view/LayoutInflater;

.field private isFoldDevice:Z

.field private mContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mOnDataChangedListener:Lcom/miui/common/card/OnDataChangedListener;

.field private menuBinder:Lsf/i;

.field private modelList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/common/card/models/BaseCardModel;",
            ">;"
        }
    .end annotation
.end field

.field private pageIndex:I

.field private screenSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/miui/common/card/CardViewRvAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/os/Handler;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/os/Handler;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/miui/common/card/models/BaseCardModel;",
            ">;",
            "Landroid/os/Handler;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$h;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/common/card/CardViewRvAdapter;->defaultStatShow:Z

    invoke-direct {p0, p1, p4}, Lcom/miui/common/card/CardViewRvAdapter;->init(Landroid/content/Context;I)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/common/card/CardViewRvAdapter;->mContextRef:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/miui/common/card/CardViewRvAdapter;->modelList:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/miui/common/card/CardViewRvAdapter;->handler:Landroid/os/Handler;

    iput p4, p0, Lcom/miui/common/card/CardViewRvAdapter;->pageIndex:I

    return-void
.end method

.method private init(Landroid/content/Context;I)V
    .locals 1

    if-nez p2, :cond_0

    new-instance p2, Lsf/i;

    const/4 v0, 0x1

    invoke-direct {p2, p1, v0}, Lsf/i;-><init>(Landroid/content/Context;Z)V

    :goto_0
    iput-object p2, p0, Lcom/miui/common/card/CardViewRvAdapter;->menuBinder:Lsf/i;

    goto :goto_1

    :cond_0
    const/4 v0, 0x3

    if-ne v0, p2, :cond_1

    new-instance p2, Lsf/i;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lsf/i;-><init>(Landroid/content/Context;Z)V

    goto :goto_0

    :cond_1
    :goto_1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/common/card/CardViewRvAdapter;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method private statEvent(Lcom/miui/common/card/models/BaseCardModel;Landroid/content/Context;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/miui/common/card/CardViewRvAdapter;->pageIndex:I

    if-eqz v0, :cond_3

    const/4 p2, 0x1

    if-eq v0, p2, :cond_2

    const/4 p2, 0x2

    if-eq v0, p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lqf/c;->B(Lcom/miui/common/card/models/BaseCardModel;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lqf/c;->e0(Lcom/miui/common/card/models/BaseCardModel;)V

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/miui/common/card/CardViewRvAdapter;->defaultStatShow:Z

    if-eqz v0, :cond_4

    invoke-static {p2, p1}, Lqf/c;->B0(Landroid/content/Context;Lcom/miui/common/card/models/BaseCardModel;)V

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public addAll(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/common/card/models/BaseCardModel;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/common/card/CardViewRvAdapter;->modelList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/miui/common/card/CardViewRvAdapter;->mOnDataChangedListener:Lcom/miui/common/card/OnDataChangedListener;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/common/card/CardViewRvAdapter;->modelList:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Lcom/miui/common/card/OnDataChangedListener;->onDataChanged(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public clear()V
    .locals 2

    iget-object v0, p0, Lcom/miui/common/card/CardViewRvAdapter;->modelList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/miui/common/card/CardViewRvAdapter;->mOnDataChangedListener:Lcom/miui/common/card/OnDataChangedListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/common/card/CardViewRvAdapter;->modelList:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/miui/common/card/OnDataChangedListener;->onDataChanged(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/CardViewRvAdapter;->modelList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/CardViewRvAdapter;->modelList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/common/card/models/BaseCardModel;

    invoke-virtual {p1}, Lcom/miui/common/card/models/BaseCardModel;->getLayoutIdType()I

    move-result p1

    return p1
.end method

.method public getModelList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/miui/common/card/models/BaseCardModel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/common/card/CardViewRvAdapter;->modelList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getScreenSize()I
    .locals 1

    iget v0, p0, Lcom/miui/common/card/CardViewRvAdapter;->screenSize:I

    return v0
.end method

.method public isCanAutoScroll()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/common/card/CardViewRvAdapter;->canAutoScroll:Z

    return v0
.end method

.method public isFoldDevice()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/common/card/CardViewRvAdapter;->isFoldDevice:Z

    return v0
.end method

.method public notifyAppManagerMenuChangeListener()V
    .locals 4

    iget-object v0, p0, Lcom/miui/common/card/CardViewRvAdapter;->menuBinder:Lsf/i;

    iget-object v0, v0, Lsf/i;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsf/i$d;

    iget-object v2, p0, Lcom/miui/common/card/CardViewRvAdapter;->menuBinder:Lsf/i;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lsf/i;->k:Z

    invoke-interface {v1, v3}, Lsf/i$d;->onAppManagerChange(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyDataSetChanged(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/common/card/CardViewRvAdapter;->defaultStatShow:Z

    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    return-void
.end method

.method public notifyDataSetRemoved(ZII)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/common/card/CardViewRvAdapter;->defaultStatShow:Z

    invoke-super {p0, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemRangeRemoved(II)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$c0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/miui/common/card/BaseViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/miui/common/card/CardViewRvAdapter;->onBindViewHolder(Lcom/miui/common/card/BaseViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;ILjava/util/List;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$c0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/miui/common/card/BaseViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/common/card/CardViewRvAdapter;->onBindViewHolder(Lcom/miui/common/card/BaseViewHolder;ILjava/util/List;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/miui/common/card/BaseViewHolder;I)V
    .locals 4
    .param p1    # Lcom/miui/common/card/BaseViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/miui/common/card/CardViewRvAdapter;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/miui/common/card/CardViewRvAdapter;->modelList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/common/card/models/BaseCardModel;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/miui/common/card/models/BaseCardModel;->canRrfreshFunctStatus:Z

    iget-boolean v2, p0, Lcom/miui/common/card/CardViewRvAdapter;->defaultStatShow:Z

    invoke-virtual {v1, v2}, Lcom/miui/common/card/models/BaseCardModel;->setDefaultStatShow(Z)V

    invoke-direct {p0, v1, v0}, Lcom/miui/common/card/CardViewRvAdapter;->statEvent(Lcom/miui/common/card/models/BaseCardModel;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/common/card/CardViewRvAdapter;->menuBinder:Lsf/i;

    invoke-virtual {p1, p2, v0}, Lcom/miui/common/card/BaseViewHolder;->bindData(ILjava/lang/Object;)V

    add-int/lit8 v0, p2, 0x1

    iget-object v2, p0, Lcom/miui/common/card/CardViewRvAdapter;->modelList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/miui/common/card/CardViewRvAdapter;->modelList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/common/card/models/LineCardModel;

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/miui/common/card/CardViewRvAdapter;->modelList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v3

    if-ne p2, v0, :cond_3

    :cond_2
    instance-of v0, v1, Lcom/miui/common/card/models/FunctionCardModel;

    if-eqz v0, :cond_3

    move-object v0, v1

    check-cast v0, Lcom/miui/common/card/models/FunctionCardModel;

    invoke-virtual {v0, v3}, Lcom/miui/common/card/models/FunctionCardModel;->setNoDivider(Z)V

    :cond_3
    iget-boolean v0, p0, Lcom/miui/common/card/CardViewRvAdapter;->canAutoScroll:Z

    invoke-virtual {v1, v0}, Lcom/miui/common/card/models/BaseCardModel;->setCanAutoScroll(Z)V

    iget-boolean v0, p0, Lcom/miui/common/card/CardViewRvAdapter;->isFoldDevice:Z

    invoke-virtual {v1, v0}, Lcom/miui/common/card/models/BaseCardModel;->setFoldDevice(Z)V

    iget v0, p0, Lcom/miui/common/card/CardViewRvAdapter;->screenSize:I

    invoke-virtual {v1, v0}, Lcom/miui/common/card/models/BaseCardModel;->setScreenSize(I)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {p1, v0, v1, p2}, Lcom/miui/common/card/BaseViewHolder;->fillData(Landroid/view/View;Lcom/miui/common/card/models/BaseCardModel;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/miui/common/card/BaseViewHolder;ILjava/util/List;)V
    .locals 1
    .param p1    # Lcom/miui/common/card/BaseViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/common/card/BaseViewHolder;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "findViewStartAnim"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    check-cast p1, Lcd/b$a;

    iget-object p3, p0, Lcom/miui/common/card/CardViewRvAdapter;->modelList:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/common/card/models/BaseCardModel;

    invoke-virtual {p1, p2}, Lcd/b$a;->e(Lcom/miui/common/card/models/BaseCardModel;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/miui/common/card/CardViewRvAdapter;->onBindViewHolder(Lcom/miui/common/card/BaseViewHolder;I)V

    :goto_0
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

    invoke-virtual {p0, p1, p2}, Lcom/miui/common/card/CardViewRvAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/common/card/BaseViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/common/card/BaseViewHolder;
    .locals 5
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/miui/common/card/models/BaseCardModel;->getTemplateType()Landroid/util/SparseIntArray;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    if-ne p2, v4, :cond_0

    iget-object v0, p0, Lcom/miui/common/card/CardViewRvAdapter;->inflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, v3, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_1
    packed-switch p2, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unsupported viewType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "onCreateViewHolder"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Lcom/miui/common/card/BaseViewHolder;

    invoke-direct {p2, p1}, Lcom/miui/common/card/BaseViewHolder;-><init>(Landroid/view/View;)V

    goto/16 :goto_5

    :pswitch_1
    new-instance p2, Lcom/miui/common/card/models/CommonlyUsedFunctionCardModelNew$CommonlyUsedFunctionViewHolder;

    invoke-direct {p2, p1}, Lcom/miui/common/card/models/CommonlyUsedFunctionCardModelNew$CommonlyUsedFunctionViewHolder;-><init>(Landroid/view/View;)V

    goto/16 :goto_5

    :pswitch_2
    new-instance p2, Lcom/miui/common/card/models/CommonlyUsedFunctionCardTitleModel$CommonlyUsedTitleViewHolder;

    invoke-direct {p2, p1}, Lcom/miui/common/card/models/CommonlyUsedFunctionCardTitleModel$CommonlyUsedTitleViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_2

    :pswitch_3
    new-instance p2, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionViewHolder;

    invoke-direct {p2, p1}, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_2

    :pswitch_4
    new-instance p2, Lcom/miui/common/card/models/CommonlyUsedFunctionCardModel$CommonlyUsedFunctionViewHolder;

    invoke-direct {p2, p1}, Lcom/miui/common/card/models/CommonlyUsedFunctionCardModel$CommonlyUsedFunctionViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_2

    :pswitch_5
    new-instance p2, Lcom/miui/common/card/models/BottomAnimCardModel$BottomAnimCardModelViewHolder;

    invoke-direct {p2, p1}, Lcom/miui/common/card/models/BottomAnimCardModel$BottomAnimCardModelViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_2

    :pswitch_6
    new-instance p2, Lcom/miui/common/card/models/FunNoIconCardModel$NoIconViewHolder;

    invoke-direct {p2, p1}, Lcom/miui/common/card/models/FunNoIconCardModel$NoIconViewHolder;-><init>(Landroid/view/View;)V

    goto/16 :goto_5

    :pswitch_7
    new-instance p2, Lcom/miui/common/card/models/FuncTopBannerScrollGlobalModel$FuncTopBannerGlobalScrollHolder;

    invoke-direct {p2, p1}, Lcom/miui/common/card/models/FuncTopBannerScrollGlobalModel$FuncTopBannerGlobalScrollHolder;-><init>(Landroid/view/View;)V

    goto/16 :goto_5

    :pswitch_8
    new-instance p2, Lcom/miui/common/card/models/FuncListTopScrollCardModel$TopCardViewHolder;

    invoke-direct {p2, p1}, Lcom/miui/common/card/models/FuncListTopScrollCardModel$TopCardViewHolder;-><init>(Landroid/view/View;)V

    goto/16 :goto_5

    :pswitch_9
    new-instance p2, Lcom/miui/common/card/models/FuncListTopCardModel$TopCardViewHolder;

    invoke-direct {p2, p1}, Lcom/miui/common/card/models/FuncListTopCardModel$TopCardViewHolder;-><init>(Landroid/view/View;)V

    goto/16 :goto_5

    :pswitch_a
    new-instance p2, Lq5/e$a;

    invoke-direct {p2, p1}, Lq5/e$a;-><init>(Landroid/view/View;)V

    goto/16 :goto_5

    :pswitch_b
    new-instance p2, Lcom/miui/common/card/models/BottomPlaceCardModel$BottomViewHolder;

    invoke-direct {p2, p1}, Lcom/miui/common/card/models/BottomPlaceCardModel$BottomViewHolder;-><init>(Landroid/view/View;)V

    goto/16 :goto_5

    :pswitch_c
    new-instance p2, Lcd/f$a;

    invoke-direct {p2, p1}, Lcd/f$a;-><init>(Landroid/view/View;)V

    goto/16 :goto_5

    :pswitch_d
    new-instance p2, Lcd/a$b;

    invoke-direct {p2, p1}, Lcd/a$b;-><init>(Landroid/view/View;)V

    goto/16 :goto_5

    :pswitch_e
    new-instance p2, Lcd/b$a;

    invoke-direct {p2, p1}, Lcd/b$a;-><init>(Landroid/view/View;)V

    goto :goto_2

    :pswitch_f
    new-instance p2, Lcd/e$a;

    invoke-direct {p2, p1}, Lcd/e$a;-><init>(Landroid/view/View;)V

    goto/16 :goto_5

    :pswitch_10
    new-instance p2, Lcd/g$a;

    invoke-direct {p2, p1}, Lcd/g$a;-><init>(Landroid/view/View;)V

    :goto_2
    iget-object p1, p0, Lcom/miui/common/card/CardViewRvAdapter;->handler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Lcom/miui/common/card/BaseViewHolder;->init(Landroid/os/Handler;)V

    goto/16 :goto_5

    :pswitch_11
    new-instance p2, Lcom/miui/common/card/models/FuncTopBannerScrollCnModel$FuncTopBannerScrollHolder;

    invoke-direct {p2, p1}, Lcom/miui/common/card/models/FuncTopBannerScrollCnModel$FuncTopBannerScrollHolder;-><init>(Landroid/view/View;)V

    goto/16 :goto_5

    :pswitch_12
    new-instance p2, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;

    invoke-direct {p2, p1}, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;-><init>(Landroid/view/View;)V

    goto/16 :goto_5

    :pswitch_13
    new-instance p2, Lq5/d$a;

    invoke-direct {p2, p1}, Lq5/d$a;-><init>(Landroid/view/View;)V

    goto/16 :goto_5

    :pswitch_14
    new-instance p2, Lq5/c$a;

    invoke-direct {p2, p1}, Lq5/c$a;-><init>(Landroid/view/View;)V

    goto/16 :goto_5

    :pswitch_15
    new-instance p2, Lcom/miui/common/card/models/FuncGridBaseCardModel$FuncGridBaseViewHolder;

    invoke-direct {p2, p1}, Lcom/miui/common/card/models/FuncGridBaseCardModel$FuncGridBaseViewHolder;-><init>(Landroid/view/View;)V

    goto/16 :goto_5

    :pswitch_16
    new-instance p2, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;

    invoke-direct {p2, p1}, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;-><init>(Landroid/view/View;)V

    goto/16 :goto_5

    :pswitch_17
    new-instance p2, Lcom/miui/common/card/models/ScanResultBottomCardModelNew$ScanResultBottomViewHolder;

    invoke-direct {p2, p1}, Lcom/miui/common/card/models/ScanResultBottomCardModelNew$ScanResultBottomViewHolder;-><init>(Landroid/view/View;)V

    goto/16 :goto_5

    :pswitch_18
    new-instance p2, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;

    invoke-direct {p2, p1}, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_3

    :pswitch_19
    new-instance p2, Lcom/miui/common/card/models/ActivityCardModel$ActivityViewHolder;

    invoke-direct {p2, p1}, Lcom/miui/common/card/models/ActivityCardModel$ActivityViewHolder;-><init>(Landroid/view/View;)V

    sget-object p1, Lx4/o0;->b:Lrh/c;

    invoke-virtual {p2, p1}, Lcom/miui/common/card/models/ActivityCardModel$ActivityViewHolder;->setIconDisplayOption(Lrh/c;)V

    goto/16 :goto_5

    :pswitch_1a
    new-instance p2, Lcom/miui/common/card/models/ActivityCardModel$ActivityViewHolder;

    invoke-direct {p2, p1}, Lcom/miui/common/card/models/ActivityCardModel$ActivityViewHolder;-><init>(Landroid/view/View;)V

    goto/16 :goto_5

    :pswitch_1b
    new-instance p2, Lcom/miui/common/card/models/NewsCardModel$NewsViewHolder;

    invoke-direct {p2, p1}, Lcom/miui/common/card/models/NewsCardModel$NewsViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_5

    :pswitch_1c
    new-instance p2, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;

    invoke-direct {p2, p1}, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;-><init>(Landroid/view/View;)V

    sget-object p1, Lx4/o0;->c:Lrh/c;

    invoke-virtual {p2, p1}, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->setIconDisplayOption(Lrh/c;)V

    goto :goto_5

    :pswitch_1d
    new-instance p2, Lcom/miui/common/card/models/FuncCloudSpaceCardModel$FuncCloudSpaceCardViewHolder;

    invoke-direct {p2, p1}, Lcom/miui/common/card/models/FuncCloudSpaceCardModel$FuncCloudSpaceCardViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_5

    :pswitch_1e
    new-instance p2, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;

    invoke-direct {p2, p1}, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_5

    :pswitch_1f
    new-instance p2, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ListTitleConsumePowerRankViewHolder;

    invoke-direct {p2, p1}, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ListTitleConsumePowerRankViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_5

    :pswitch_20
    new-instance p2, Lcom/miui/common/card/models/AdvListTitleCardModel$AdvListTitleViewHolder;

    invoke-direct {p2, p1}, Lcom/miui/common/card/models/AdvListTitleCardModel$AdvListTitleViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_5

    :pswitch_21
    new-instance p2, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;

    invoke-direct {p2, p1}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_5

    :pswitch_22
    new-instance p2, Lcom/miui/common/card/models/FuncTopBannerCardModel$FuncTopBannerViewHolder;

    invoke-direct {p2, p1}, Lcom/miui/common/card/models/FuncTopBannerCardModel$FuncTopBannerViewHolder;-><init>(Landroid/view/View;)V

    :goto_3
    sget-object p1, Lx4/o0;->h:Lrh/c;

    invoke-virtual {p2, p1}, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;->setIconDisplayOption(Lrh/c;)V

    sget-object p1, Lx4/o0;->c:Lrh/c;

    invoke-virtual {p2, p1}, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;->setImgDisplayOption(Lrh/c;)V

    goto :goto_5

    :pswitch_23
    new-instance p2, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;

    invoke-direct {p2, p1}, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;-><init>(Landroid/view/View;)V

    sget-object p1, Lx4/o0;->i:Lrh/c;

    goto :goto_4

    :pswitch_24
    new-instance p2, Lcom/miui/common/card/models/ListTitleCardModel$ListTitleViewHolder;

    invoke-direct {p2, p1}, Lcom/miui/common/card/models/ListTitleCardModel$ListTitleViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_5

    :pswitch_25
    new-instance p2, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;

    invoke-direct {p2, p1}, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;-><init>(Landroid/view/View;)V

    sget-object p1, Lx4/o0;->h:Lrh/c;

    :goto_4
    invoke-virtual {p2, p1}, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;->setIconDisplayOption(Lrh/c;)V

    goto :goto_5

    :pswitch_26
    new-instance p2, Lcom/miui/common/card/models/FuncLeftBannerCardModel$LeftBannerViewHolder;

    invoke-direct {p2, p1}, Lcom/miui/common/card/models/FuncLeftBannerCardModel$LeftBannerViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_5

    :pswitch_27
    new-instance p2, Lcom/miui/common/card/BaseViewHolder;

    invoke-direct {p2, p1}, Lcom/miui/common/card/BaseViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_5

    :pswitch_28
    new-instance p2, Lcom/miui/common/card/models/TopCardModel$TopCardViewHolder;

    invoke-direct {p2, p1}, Lcom/miui/common/card/models/TopCardModel$TopCardViewHolder;-><init>(Landroid/view/View;)V

    :goto_5
    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_27
        :pswitch_0
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_27
        :pswitch_27
        :pswitch_1d
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_0
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_18
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_27
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_12
        :pswitch_1c
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_27
        :pswitch_27
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_2
        :pswitch_1
        :pswitch_12
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/CardViewRvAdapter;->menuBinder:Lsf/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lsf/i;->h()V

    :cond_0
    return-void
.end method

.method public resetViewPager()V
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/CardViewRvAdapter;->menuBinder:Lsf/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lsf/i;->k()V

    :cond_0
    return-void
.end method

.method public setCanAutoScroll(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/common/card/CardViewRvAdapter;->canAutoScroll:Z

    return-void
.end method

.method public setDefaultStatShow(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/common/card/CardViewRvAdapter;->defaultStatShow:Z

    return-void
.end method

.method public setFoldDevice(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/common/card/CardViewRvAdapter;->isFoldDevice:Z

    return-void
.end method

.method public setModelList(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/common/card/models/BaseCardModel;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/common/card/CardViewRvAdapter;->modelList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/miui/common/card/CardViewRvAdapter;->mOnDataChangedListener:Lcom/miui/common/card/OnDataChangedListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/miui/common/card/OnDataChangedListener;->onDataChanged(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public setOnDataChangedListener(Lcom/miui/common/card/OnDataChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/CardViewRvAdapter;->mOnDataChangedListener:Lcom/miui/common/card/OnDataChangedListener;

    return-void
.end method

.method public setScreenSize(I)V
    .locals 0

    iput p1, p0, Lcom/miui/common/card/CardViewRvAdapter;->screenSize:I

    return-void
.end method

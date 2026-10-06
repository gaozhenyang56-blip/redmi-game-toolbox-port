.class public Lcom/miui/common/card/CardViewAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/miui/common/card/models/BaseCardModel;",
        ">;"
    }
.end annotation


# static fields
.field public static final PAGE_INDEX_HOMEPAGE:I = 0x0

.field public static final PAGE_INDEX_PHONEMANAGE:I = 0x3

.field public static final PAGE_INDEX_RESULTPAGE:I = 0x1

.field public static final PAGE_INDEX_RESULTPAGE_FIRSTAIDKIT:I = 0x2


# instance fields
.field protected canAutoScroll:Z

.field private context:Landroid/content/Context;

.field private defaultStatShow:Z

.field private handler:Landroid/os/Handler;

.field private inflater:Landroid/view/LayoutInflater;

.field private isFoldDevice:Z

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

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/miui/common/card/CardViewAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/os/Handler;I)V

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

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/common/card/CardViewAdapter;->defaultStatShow:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/miui/common/card/CardViewAdapter;->screenSize:I

    invoke-direct {p0, p1, p4}, Lcom/miui/common/card/CardViewAdapter;->init(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/miui/common/card/CardViewAdapter;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/common/card/CardViewAdapter;->modelList:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/miui/common/card/CardViewAdapter;->handler:Landroid/os/Handler;

    iput p4, p0, Lcom/miui/common/card/CardViewAdapter;->pageIndex:I

    return-void
.end method

.method private init(Landroid/content/Context;I)V
    .locals 1

    if-nez p2, :cond_0

    new-instance p2, Lsf/i;

    const/4 v0, 0x1

    invoke-direct {p2, p1, v0}, Lsf/i;-><init>(Landroid/content/Context;Z)V

    :goto_0
    iput-object p2, p0, Lcom/miui/common/card/CardViewAdapter;->menuBinder:Lsf/i;

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

    iput-object p1, p0, Lcom/miui/common/card/CardViewAdapter;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method private statEvent(Lcom/miui/common/card/models/BaseCardModel;Landroid/content/Context;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/miui/common/card/CardViewAdapter;->pageIndex:I

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
    iget-boolean v0, p0, Lcom/miui/common/card/CardViewAdapter;->defaultStatShow:Z

    if-eqz v0, :cond_4

    invoke-static {p2, p1}, Lqf/c;->B0(Landroid/content/Context;Lcom/miui/common/card/models/BaseCardModel;)V

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/CardViewAdapter;->modelList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/CardViewAdapter;->modelList:Ljava/util/ArrayList;

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

    iget-object v0, p0, Lcom/miui/common/card/CardViewAdapter;->modelList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    iget-object v0, p0, Lcom/miui/common/card/CardViewAdapter;->modelList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/common/card/models/BaseCardModel;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/miui/common/card/models/BaseCardModel;->canRrfreshFunctStatus:Z

    iget-boolean v2, p0, Lcom/miui/common/card/CardViewAdapter;->defaultStatShow:Z

    invoke-virtual {v0, v2}, Lcom/miui/common/card/models/BaseCardModel;->setDefaultStatShow(Z)V

    iget-boolean v2, p0, Lcom/miui/common/card/CardViewAdapter;->isFoldDevice:Z

    invoke-virtual {v0, v2}, Lcom/miui/common/card/models/BaseCardModel;->setFoldDevice(Z)V

    iget v2, p0, Lcom/miui/common/card/CardViewAdapter;->screenSize:I

    invoke-virtual {v0, v2}, Lcom/miui/common/card/models/BaseCardModel;->setScreenSize(I)V

    iget-object v2, p0, Lcom/miui/common/card/CardViewAdapter;->context:Landroid/content/Context;

    invoke-direct {p0, v0, v2}, Lcom/miui/common/card/CardViewAdapter;->statEvent(Lcom/miui/common/card/models/BaseCardModel;Landroid/content/Context;)V

    iget-boolean v2, v0, Lcom/miui/common/card/models/BaseCardModel;->noConvertView:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/common/card/CardViewAdapter;->inflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0}, Lcom/miui/common/card/models/BaseCardModel;->getLayoutId()I

    move-result v3

    invoke-virtual {v2, v3, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/miui/common/card/models/BaseCardModel;->createViewHolder(Landroid/view/View;)Lcom/miui/common/card/BaseViewHolder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/common/card/CardViewAdapter;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lcom/miui/common/card/BaseViewHolder;->init(Landroid/os/Handler;)V

    invoke-virtual {v1, p3, v0, p1}, Lcom/miui/common/card/BaseViewHolder;->fillData(Landroid/view/View;Lcom/miui/common/card/models/BaseCardModel;I)V

    goto :goto_1

    :cond_0
    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/miui/common/card/CardViewAdapter;->inflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0}, Lcom/miui/common/card/models/BaseCardModel;->getLayoutId()I

    move-result v2

    invoke-virtual {p2, v2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/miui/common/card/models/BaseCardModel;->createViewHolder(Landroid/view/View;)Lcom/miui/common/card/BaseViewHolder;

    move-result-object p3

    iget-object v1, p0, Lcom/miui/common/card/CardViewAdapter;->handler:Landroid/os/Handler;

    invoke-virtual {p3, v1}, Lcom/miui/common/card/BaseViewHolder;->init(Landroid/os/Handler;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/miui/common/card/BaseViewHolder;

    :goto_0
    iget-object v1, p0, Lcom/miui/common/card/CardViewAdapter;->menuBinder:Lsf/i;

    invoke-virtual {p3, p1, v1}, Lcom/miui/common/card/BaseViewHolder;->bindData(ILjava/lang/Object;)V

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Lcom/miui/common/card/CardViewAdapter;->modelList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/miui/common/card/CardViewAdapter;->modelList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/miui/common/card/models/LineCardModel;

    if-nez v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/miui/common/card/CardViewAdapter;->modelList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v3

    if-ne p1, v1, :cond_4

    :cond_3
    instance-of v1, v0, Lcom/miui/common/card/models/FunctionCardModel;

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Lcom/miui/common/card/models/FunctionCardModel;

    invoke-virtual {v1, v3}, Lcom/miui/common/card/models/FunctionCardModel;->setNoDivider(Z)V

    :cond_4
    iget-boolean v1, p0, Lcom/miui/common/card/CardViewAdapter;->canAutoScroll:Z

    invoke-virtual {v0, v1}, Lcom/miui/common/card/models/BaseCardModel;->setCanAutoScroll(Z)V

    invoke-virtual {p3, p2, v0, p1}, Lcom/miui/common/card/BaseViewHolder;->fillData(Landroid/view/View;Lcom/miui/common/card/models/BaseCardModel;I)V

    const/4 p3, 0x0

    :goto_1
    iget-boolean p1, v0, Lcom/miui/common/card/models/BaseCardModel;->noConvertView:Z

    if-eqz p1, :cond_5

    move-object p2, p3

    :cond_5
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    invoke-static {}, Lcom/miui/common/card/models/BaseCardModel;->getLayoutTypeCount()I

    move-result v0

    return v0
.end method

.method public isCanAutoScroll()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/common/card/CardViewAdapter;->canAutoScroll:Z

    return v0
.end method

.method public notifyAppManagerMenuChangeListener()V
    .locals 4

    iget-object v0, p0, Lcom/miui/common/card/CardViewAdapter;->menuBinder:Lsf/i;

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

    iget-object v2, p0, Lcom/miui/common/card/CardViewAdapter;->menuBinder:Lsf/i;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lsf/i;->k:Z

    invoke-interface {v1, v3}, Lsf/i$d;->onAppManagerChange(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/common/card/CardViewAdapter;->defaultStatShow:Z

    invoke-super {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public notifyDataSetChanged(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/common/card/CardViewAdapter;->defaultStatShow:Z

    invoke-super {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/CardViewAdapter;->menuBinder:Lsf/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lsf/i;->h()V

    :cond_0
    return-void
.end method

.method public resetViewPager()V
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/CardViewAdapter;->menuBinder:Lsf/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lsf/i;->k()V

    :cond_0
    return-void
.end method

.method public setCanAutoScroll(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/common/card/CardViewAdapter;->canAutoScroll:Z

    return-void
.end method

.method public setDefaultStatShow(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/common/card/CardViewAdapter;->defaultStatShow:Z

    return-void
.end method

.method public setFoldDevice(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/common/card/CardViewAdapter;->isFoldDevice:Z

    return-void
.end method

.method public setModelList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/common/card/models/BaseCardModel;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/common/card/CardViewAdapter;->modelList:Ljava/util/ArrayList;

    return-void
.end method

.method public setScreenSize(I)V
    .locals 0

    iput p1, p0, Lcom/miui/common/card/CardViewAdapter;->screenSize:I

    return-void
.end method

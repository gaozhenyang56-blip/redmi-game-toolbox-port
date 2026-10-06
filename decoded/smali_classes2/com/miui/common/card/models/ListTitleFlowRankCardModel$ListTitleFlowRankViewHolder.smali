.class public Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;
.super Lcom/miui/common/card/BaseViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/common/card/models/ListTitleFlowRankCardModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListTitleFlowRankViewHolder"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mViewHolderArray:[Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/common/card/BaseViewHolder;-><init>(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;->initView(Landroid/view/View;)V

    invoke-static {p1}, Lx4/h0;->b(Landroid/view/View;)Z

    return-void
.end method

.method static synthetic access$300(Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private initView(Landroid/view/View;)V
    .locals 9

    const v0, 0x7f0b0598

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f0b0599

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const v2, 0x7f0b059a

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    const v3, 0x7f0b059b

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    const v4, 0x7f0b059c

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v4, 0x5

    new-array v4, v4, [Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;

    iput-object v4, p0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;->mViewHolderArray:[Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;

    new-instance v5, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;

    invoke-direct {v5}, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;-><init>()V

    const/4 v6, 0x0

    aput-object v5, v4, v6

    iget-object v4, p0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;->mViewHolderArray:[Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;

    aget-object v4, v4, v6

    iput-object v0, v4, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;->parent:Landroid/view/ViewGroup;

    const v5, 0x7f0b0bc9

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v4, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;->mViewHolderArray:[Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;

    aget-object v4, v4, v6

    const v7, 0x7f0b0140

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v4, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;->bar:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;->mViewHolderArray:[Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;

    aget-object v4, v4, v6

    const v6, 0x7f0b0d61

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v4, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;->value:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;->mViewHolderArray:[Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;

    new-instance v4, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;

    invoke-direct {v4}, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;-><init>()V

    const/4 v8, 0x1

    aput-object v4, v0, v8

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;->mViewHolderArray:[Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;

    aget-object v0, v0, v8

    iput-object v1, v0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;->parent:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;->mViewHolderArray:[Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;

    aget-object v0, v0, v8

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;->bar:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;->mViewHolderArray:[Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;

    aget-object v0, v0, v8

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;->value:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;->mViewHolderArray:[Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;

    new-instance v1, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;

    invoke-direct {v1}, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;-><init>()V

    const/4 v4, 0x2

    aput-object v1, v0, v4

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;->mViewHolderArray:[Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;

    aget-object v0, v0, v4

    iput-object v2, v0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;->parent:Landroid/view/ViewGroup;

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;->mViewHolderArray:[Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;

    aget-object v0, v0, v4

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;->bar:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;->mViewHolderArray:[Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;

    aget-object v0, v0, v4

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;->value:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;->mViewHolderArray:[Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;

    new-instance v1, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;

    invoke-direct {v1}, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;-><init>()V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;->mViewHolderArray:[Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;

    aget-object v0, v0, v2

    iput-object v3, v0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;->parent:Landroid/view/ViewGroup;

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;->mViewHolderArray:[Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;

    aget-object v0, v0, v2

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;->bar:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;->mViewHolderArray:[Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;

    aget-object v0, v0, v2

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;->value:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;->mViewHolderArray:[Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;

    new-instance v1, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;

    invoke-direct {v1}, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;-><init>()V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;->mViewHolderArray:[Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;

    aget-object v0, v0, v2

    iput-object p1, v0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;->parent:Landroid/view/ViewGroup;

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;->mViewHolderArray:[Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;

    aget-object v0, v0, v2

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;->bar:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;->mViewHolderArray:[Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;

    aget-object v0, v0, v2

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, v0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;->value:Landroid/widget/TextView;

    return-void
.end method

.method private updateData(Ljava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/securityscan/model/manualitem/FlowRankModel$RankDataModel;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget-object v2, v1, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, v1, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0719c7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, v1, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0719c8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iget-object v5, v1, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;->mViewHolderArray:[Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;

    array-length v6, v5

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    if-ge v8, v6, :cond_0

    aget-object v9, v5, v8

    iget-object v9, v9, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;->parent:Landroid/view/ViewGroup;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    move v8, v7

    move v11, v8

    const-wide/16 v9, 0x0

    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v12

    if-ge v8, v12, :cond_5

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/miui/securityscan/model/manualitem/FlowRankModel$RankDataModel;

    invoke-virtual {v12}, Lcom/miui/securityscan/model/manualitem/FlowRankModel$RankDataModel;->getTitle()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_4

    iget-object v12, v1, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;->mViewHolderArray:[Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;

    aget-object v12, v12, v8

    iget-object v12, v12, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;->parent:Landroid/view/ViewGroup;

    invoke-virtual {v12, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v12, v1, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;->mViewHolderArray:[Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;

    aget-object v12, v12, v8

    iget-object v12, v12, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;->title:Landroid/widget/TextView;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/miui/securityscan/model/manualitem/FlowRankModel$RankDataModel;

    invoke-virtual {v13}, Lcom/miui/securityscan/model/manualitem/FlowRankModel$RankDataModel;->getTitle()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/miui/securityscan/model/manualitem/FlowRankModel$RankDataModel;

    invoke-virtual {v12}, Lcom/miui/securityscan/model/manualitem/FlowRankModel$RankDataModel;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    iget-object v14, v1, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;->mViewHolderArray:[Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;

    aget-object v14, v14, v8

    iget-object v14, v14, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;->value:Landroid/widget/TextView;

    iget-object v15, v1, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-static {v15, v12, v13, v5}, Lx4/j0;->a(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :try_start_0
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/securityscan/model/manualitem/FlowRankModel$RankDataModel;

    invoke-virtual {v5}, Lcom/miui/securityscan/model/manualitem/FlowRankModel$RankDataModel;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v6, v1, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;->mViewHolderArray:[Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;

    aget-object v6, v6, v8

    iget-object v6, v6, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, v1, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;->mViewHolderArray:[Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;

    aget-object v5, v5, v8

    iget-object v5, v5, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;->bar:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    if-nez v8, :cond_1

    iput v3, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    move v11, v3

    move-wide v9, v12

    const-wide/16 v14, 0x0

    goto :goto_2

    :cond_1
    const-wide/16 v14, 0x0

    cmp-long v16, v12, v14

    if-eqz v16, :cond_2

    long-to-float v12, v12

    long-to-float v13, v9

    div-float/2addr v12, v13

    int-to-float v13, v11

    mul-float/2addr v13, v12

    float-to-int v12, v13

    if-ge v12, v4, :cond_3

    :cond_2
    move v12, v4

    :cond_3
    iput v12, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_2
    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    :cond_4
    const-wide/16 v14, 0x0

    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    :cond_5
    return-void
.end method


# virtual methods
.method public fillData(Landroid/view/View;Lcom/miui/common/card/models/BaseCardModel;I)V
    .locals 4

    invoke-super {p0, p1, p2, p3}, Lcom/miui/common/card/BaseViewHolder;->fillData(Landroid/view/View;Lcom/miui/common/card/models/BaseCardModel;I)V

    move-object p3, p2

    check-cast p3, Lcom/miui/common/card/models/ListTitleFlowRankCardModel;

    invoke-static {p3}, Lcom/miui/common/card/models/ListTitleFlowRankCardModel;->access$000(Lcom/miui/common/card/models/ListTitleFlowRankCardModel;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p3}, Lcom/miui/common/card/models/ListTitleFlowRankCardModel;->access$000(Lcom/miui/common/card/models/ListTitleFlowRankCardModel;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;->updateData(Ljava/util/List;)V

    iget-object v0, p0, Lcom/miui/common/card/BaseViewHolder;->tvButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder$1;

    invoke-direct {v0, p0, p3}, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder$1;-><init>(Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;Lcom/miui/common/card/models/ListTitleFlowRankCardModel;)V

    iget-object v1, p0, Lcom/miui/common/card/BaseViewHolder;->tvButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder$2;

    invoke-direct {v0, p0, p3, p2}, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder$2;-><init>(Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;Lcom/miui/common/card/models/ListTitleFlowRankCardModel;Lcom/miui/common/card/models/BaseCardModel;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {p3}, Lcom/miui/common/card/models/ListTitleFlowRankCardModel;->getScore()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/miui/common/card/BaseViewHolder;->tvButton:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f10008e

    invoke-virtual {p3}, Lcom/miui/common/card/models/ListTitleFlowRankCardModel;->getScore()I

    move-result v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p3}, Lcom/miui/common/card/models/ListTitleFlowRankCardModel;->getScore()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v2, v3

    invoke-virtual {p2, v0, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/miui/common/card/BaseViewHolder;->tvButton:Landroid/widget/Button;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

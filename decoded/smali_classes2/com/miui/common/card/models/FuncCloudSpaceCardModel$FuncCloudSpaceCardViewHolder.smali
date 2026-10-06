.class public Lcom/miui/common/card/models/FuncCloudSpaceCardModel$FuncCloudSpaceCardViewHolder;
.super Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/common/card/models/FuncCloudSpaceCardModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FuncCloudSpaceCardViewHolder"
.end annotation


# static fields
.field public static final APPDATA:Ljava/lang/String; = "AppData"

.field public static final APPLIST:Ljava/lang/String; = "AppList"

.field public static final DUOKAN:Ljava/lang/String; = "Duokan"

.field public static final GALLERY_IMAGE:Ljava/lang/String; = "GalleryImage"

.field public static final MUSIC:Ljava/lang/String; = "Music"

.field public static final RECORDER:Ljava/lang/String; = "Recorder"


# instance fields
.field private mColorIndex:I

.field private mColorList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mColorfulRingList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/securityscan/ui/main/ColorfulRingView$a;",
            ">;"
        }
    .end annotation
.end field

.field private mColorfulRingView:Lcom/miui/securityscan/ui/main/ColorfulRingView;

.field private mContainer:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mRingDefaultColor:I

.field private mStorageFullView:Landroid/widget/TextView;

.field private mStoragePercentageView:Landroid/widget/TextView;

.field private mStorageSpaceView:Landroid/widget/TextView;

.field private mSupportedCategory:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;-><init>(Landroid/view/View;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/common/card/models/FuncCloudSpaceCardModel$FuncCloudSpaceCardViewHolder;->mColorIndex:I

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/FuncCloudSpaceCardModel$FuncCloudSpaceCardViewHolder;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/common/card/models/FuncCloudSpaceCardModel$FuncCloudSpaceCardViewHolder;->mColorList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/common/card/models/FuncCloudSpaceCardModel$FuncCloudSpaceCardViewHolder;->mColorfulRingList:Ljava/util/List;

    iget-object v0, p0, Lcom/miui/common/card/models/FuncCloudSpaceCardModel$FuncCloudSpaceCardViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0605d7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/miui/common/card/models/FuncCloudSpaceCardModel$FuncCloudSpaceCardViewHolder;->mRingDefaultColor:I

    invoke-direct {p0, p1}, Lcom/miui/common/card/models/FuncCloudSpaceCardModel$FuncCloudSpaceCardViewHolder;->initView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/miui/common/card/models/FuncCloudSpaceCardModel$FuncCloudSpaceCardViewHolder;->initSupportCategory()V

    return-void
.end method

.method private initSupportCategory()V
    .locals 4

    iget-object v0, p0, Lcom/miui/common/card/models/FuncCloudSpaceCardModel$FuncCloudSpaceCardViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/miui/common/card/models/FuncCloudSpaceCardModel$FuncCloudSpaceCardViewHolder;->mSupportedCategory:Ljava/util/Map;

    const v2, 0x7f0605da

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "GalleryImage"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/common/card/models/FuncCloudSpaceCardModel$FuncCloudSpaceCardViewHolder;->mSupportedCategory:Ljava/util/Map;

    const v2, 0x7f0605de

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Recorder"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/common/card/models/FuncCloudSpaceCardModel$FuncCloudSpaceCardViewHolder;->mSupportedCategory:Ljava/util/Map;

    const v2, 0x7f0605d4

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "AppList"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/common/card/models/FuncCloudSpaceCardModel$FuncCloudSpaceCardViewHolder;->mSupportedCategory:Ljava/util/Map;

    const v2, 0x7f0605d9

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Duokan"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/common/card/models/FuncCloudSpaceCardModel$FuncCloudSpaceCardViewHolder;->mSupportedCategory:Ljava/util/Map;

    const v2, 0x7f0605dc

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Music"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/common/card/models/FuncCloudSpaceCardModel$FuncCloudSpaceCardViewHolder;->mSupportedCategory:Ljava/util/Map;

    const v2, 0x7f0605d3

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "AppData"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f0b0cdc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/common/card/models/FuncCloudSpaceCardModel$FuncCloudSpaceCardViewHolder;->mStoragePercentageView:Landroid/widget/TextView;

    const v0, 0x7f0b0cdb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/common/card/models/FuncCloudSpaceCardModel$FuncCloudSpaceCardViewHolder;->mStorageFullView:Landroid/widget/TextView;

    const v0, 0x7f0b0cdd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/common/card/models/FuncCloudSpaceCardModel$FuncCloudSpaceCardViewHolder;->mStorageSpaceView:Landroid/widget/TextView;

    const v0, 0x7f0b0999

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/ui/main/ColorfulRingView;

    iput-object v0, p0, Lcom/miui/common/card/models/FuncCloudSpaceCardModel$FuncCloudSpaceCardViewHolder;->mColorfulRingView:Lcom/miui/securityscan/ui/main/ColorfulRingView;

    iget-object v1, p0, Lcom/miui/common/card/models/FuncCloudSpaceCardModel$FuncCloudSpaceCardViewHolder;->mColorfulRingList:Ljava/util/List;

    iget v2, p0, Lcom/miui/common/card/models/FuncCloudSpaceCardModel$FuncCloudSpaceCardViewHolder;->mRingDefaultColor:I

    invoke-virtual {v0, v1, v2}, Lcom/miui/securityscan/ui/main/ColorfulRingView;->b(Ljava/util/List;I)V

    const v0, 0x7f0b06e2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/miui/common/card/models/FuncCloudSpaceCardModel$FuncCloudSpaceCardViewHolder;->mContainer:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public fillData(Landroid/view/View;Lcom/miui/common/card/models/BaseCardModel;I)V
    .locals 17

    move-object/from16 v0, p0

    invoke-super/range {p0 .. p3}, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;->fillData(Landroid/view/View;Lcom/miui/common/card/models/BaseCardModel;I)V

    move-object/from16 v1, p2

    check-cast v1, Lcom/miui/common/card/models/FuncCloudSpaceCardModel;

    iget-object v2, v0, Lcom/miui/common/card/models/FuncCloudSpaceCardModel$FuncCloudSpaceCardViewHolder;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lmiui/cloud/sync/MiCloudStatusInfo;->fromUserData(Landroid/content/Context;)Lmiui/cloud/sync/MiCloudStatusInfo;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Lmiui/cloud/sync/MiCloudStatusInfo;->getQuotaInfo()Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->getItemInfoList()Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_b

    iget-object v5, v0, Lcom/miui/common/card/models/FuncCloudSpaceCardModel$FuncCloudSpaceCardViewHolder;->mColorfulRingList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    iget-object v5, v0, Lcom/miui/common/card/models/FuncCloudSpaceCardModel$FuncCloudSpaceCardViewHolder;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v5, v0, Lcom/miui/common/card/models/FuncCloudSpaceCardModel$FuncCloudSpaceCardViewHolder;->mColorList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v6}, Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;->getName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v0, Lcom/miui/common/card/models/FuncCloudSpaceCardModel$FuncCloudSpaceCardViewHolder;->mSupportedCategory:Ljava/util/Map;

    invoke-interface {v9, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, v0, Lcom/miui/common/card/models/FuncCloudSpaceCardModel$FuncCloudSpaceCardViewHolder;->mSupportedCategory:Ljava/util/Map;

    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    goto :goto_1

    :cond_1
    invoke-static {v1}, Lcom/miui/common/card/models/FuncCloudSpaceCardModel;->access$000(Lcom/miui/common/card/models/FuncCloudSpaceCardModel;)[I

    move-result-object v8

    iget v9, v0, Lcom/miui/common/card/models/FuncCloudSpaceCardModel$FuncCloudSpaceCardViewHolder;->mColorIndex:I

    aget v8, v8, v9

    add-int/lit8 v9, v9, 0x1

    invoke-static {v1}, Lcom/miui/common/card/models/FuncCloudSpaceCardModel;->access$000(Lcom/miui/common/card/models/FuncCloudSpaceCardModel;)[I

    move-result-object v10

    array-length v10, v10

    rem-int/2addr v9, v10

    iput v9, v0, Lcom/miui/common/card/models/FuncCloudSpaceCardModel$FuncCloudSpaceCardViewHolder;->mColorIndex:I

    :goto_1
    new-instance v9, Lcom/miui/securityscan/ui/main/ColorfulRingView$a;

    invoke-direct {v9}, Lcom/miui/securityscan/ui/main/ColorfulRingView$a;-><init>()V

    invoke-virtual {v6}, Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;->getUsed()J

    move-result-wide v10

    long-to-float v6, v10

    mul-float/2addr v6, v7

    invoke-virtual {v2}, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->getTotal()J

    move-result-wide v10

    long-to-float v7, v10

    div-float/2addr v6, v7

    iput v6, v9, Lcom/miui/securityscan/ui/main/ColorfulRingView$a;->b:F

    iput v8, v9, Lcom/miui/securityscan/ui/main/ColorfulRingView$a;->a:I

    iget-object v6, v0, Lcom/miui/common/card/models/FuncCloudSpaceCardModel$FuncCloudSpaceCardViewHolder;->mColorfulRingList:Ljava/util/List;

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, v0, Lcom/miui/common/card/models/FuncCloudSpaceCardModel$FuncCloudSpaceCardViewHolder;->mColorList:Ljava/util/List;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-static {}, Lx4/t;->E()Z

    move-result v5

    const/4 v6, 0x4

    const/4 v8, 0x2

    const/4 v9, 0x3

    if-eqz v5, :cond_4

    :cond_3
    :goto_2
    move v8, v9

    goto :goto_3

    :cond_4
    invoke-static {}, Lx4/t;->r()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v1}, Lcom/miui/common/card/models/BaseCardModel;->getScreenSize()I

    move-result v1

    if-eq v1, v9, :cond_3

    if-ne v1, v6, :cond_5

    goto :goto_2

    :cond_5
    :goto_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    rem-int/2addr v1, v8

    if-nez v1, :cond_6

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    div-int/2addr v1, v8

    move v5, v4

    goto :goto_4

    :cond_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    div-int/2addr v5, v8

    add-int/lit8 v5, v5, 0x1

    sub-int v1, v8, v1

    move/from16 v16, v5

    move v5, v1

    move/from16 v1, v16

    :goto_4
    new-array v9, v1, [Landroid/widget/LinearLayout;

    move v10, v4

    :goto_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, -0x2

    const/4 v13, 0x0

    const v14, 0x7f0e00d6

    if-ge v10, v11, :cond_8

    div-int v11, v10, v8

    aget-object v15, v9, v11

    if-nez v15, :cond_7

    new-instance v15, Landroid/widget/LinearLayout;

    iget-object v6, v0, Lcom/miui/common/card/models/FuncCloudSpaceCardModel$FuncCloudSpaceCardViewHolder;->mContext:Landroid/content/Context;

    invoke-direct {v15, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    aput-object v15, v9, v11

    invoke-virtual {v15, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    :cond_7
    iget-object v6, v0, Lcom/miui/common/card/models/FuncCloudSpaceCardModel$FuncCloudSpaceCardViewHolder;->mContext:Landroid/content/Context;

    invoke-static {v6, v14, v13}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    const v13, 0x7f0b033a

    invoke-virtual {v6, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/miui/securityscan/ui/main/ColorfulDotView;

    const v14, 0x7f0b0cf3

    invoke-virtual {v6, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    const v15, 0x7f0b0ce1

    invoke-virtual {v6, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    iget-object v7, v0, Lcom/miui/common/card/models/FuncCloudSpaceCardModel$FuncCloudSpaceCardViewHolder;->mColorList:Ljava/util/List;

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v13, v7}, Lcom/miui/securityscan/ui/main/ColorfulDotView;->setColor(I)V

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;

    invoke-virtual {v7}, Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;->getLocalizedName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;

    invoke-virtual {v7}, Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;->getUsed()J

    move-result-wide v13

    invoke-static {v13, v14}, Lmiui/cloud/util/SysHelper;->getQuantityStringWithUnit(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v4, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v12, 0x3f800000    # 1.0f

    iput v12, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v6, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    aget-object v7, v9, v11

    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v10, v10, 0x1

    const/4 v6, 0x4

    const/high16 v7, 0x3f800000    # 1.0f

    goto/16 :goto_5

    :cond_8
    move v3, v4

    :goto_6
    if-ge v3, v5, :cond_9

    iget-object v6, v0, Lcom/miui/common/card/models/FuncCloudSpaceCardModel$FuncCloudSpaceCardViewHolder;->mContext:Landroid/content/Context;

    invoke-static {v6, v14, v13}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v4, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v10, 0x3f800000    # 1.0f

    iput v10, v8, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const v11, 0x800003

    iput v11, v8, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v6, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v8, v1, -0x1

    aget-object v8, v9, v8

    invoke-virtual {v8, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_9
    move v3, v4

    :goto_7
    if-ge v3, v1, :cond_a

    iget-object v5, v0, Lcom/miui/common/card/models/FuncCloudSpaceCardModel$FuncCloudSpaceCardViewHolder;->mContainer:Landroid/widget/LinearLayout;

    aget-object v6, v9, v3

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_a
    iget-object v1, v0, Lcom/miui/common/card/models/FuncCloudSpaceCardModel$FuncCloudSpaceCardViewHolder;->mColorfulRingView:Lcom/miui/securityscan/ui/main/ColorfulRingView;

    iget-object v3, v0, Lcom/miui/common/card/models/FuncCloudSpaceCardModel$FuncCloudSpaceCardViewHolder;->mColorfulRingList:Ljava/util/List;

    iget v5, v0, Lcom/miui/common/card/models/FuncCloudSpaceCardModel$FuncCloudSpaceCardViewHolder;->mRingDefaultColor:I

    invoke-virtual {v1, v3, v5}, Lcom/miui/securityscan/ui/main/ColorfulRingView;->b(Ljava/util/List;I)V

    :cond_b
    invoke-virtual {v2}, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->isSpaceFull()Z

    move-result v1

    const/16 v3, 0x8

    if-eqz v1, :cond_c

    iget-object v1, v0, Lcom/miui/common/card/models/FuncCloudSpaceCardModel$FuncCloudSpaceCardViewHolder;->mStoragePercentageView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lcom/miui/common/card/models/FuncCloudSpaceCardModel$FuncCloudSpaceCardViewHolder;->mStorageFullView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_8

    :cond_c
    iget-object v1, v0, Lcom/miui/common/card/models/FuncCloudSpaceCardModel$FuncCloudSpaceCardViewHolder;->mStoragePercentageView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lcom/miui/common/card/models/FuncCloudSpaceCardModel$FuncCloudSpaceCardViewHolder;->mStorageFullView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lcom/miui/common/card/models/FuncCloudSpaceCardModel$FuncCloudSpaceCardViewHolder;->mStoragePercentageView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/high16 v4, 0x42c80000    # 100.0f

    invoke-virtual {v2}, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->getUsed()J

    move-result-wide v5

    long-to-float v5, v5

    mul-float/2addr v5, v4

    invoke-virtual {v2}, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->getTotal()J

    move-result-wide v6

    long-to-float v4, v6

    div-float/2addr v5, v4

    float-to-int v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_8
    invoke-virtual {v2}, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->getUsed()J

    move-result-wide v3

    invoke-static {v3, v4}, Lmiui/cloud/util/SysHelper;->getQuantityStringWithUnit(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->getTotal()J

    move-result-wide v2

    invoke-static {v2, v3}, Lmiui/cloud/util/SysHelper;->getQuantityStringWithUnit(J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/miui/common/card/models/FuncCloudSpaceCardModel$FuncCloudSpaceCardViewHolder;->mStorageSpaceView:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_d
    return-void
.end method

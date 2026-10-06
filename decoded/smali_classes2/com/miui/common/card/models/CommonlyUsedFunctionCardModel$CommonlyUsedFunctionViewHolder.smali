.class public Lcom/miui/common/card/models/CommonlyUsedFunctionCardModel$CommonlyUsedFunctionViewHolder;
.super Lcom/miui/common/card/BaseViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/common/card/models/CommonlyUsedFunctionCardModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CommonlyUsedFunctionViewHolder"
.end annotation


# instance fields
.field private gridLayout:Landroid/widget/GridLayout;

.field private mEditBtn:Landroid/widget/ImageView;

.field private final mFuncItemViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/common/card/CommonlyUsedFuncItemViewData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/miui/common/card/BaseViewHolder;-><init>(Landroid/view/View;)V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/miui/common/card/models/CommonlyUsedFunctionCardModel$CommonlyUsedFunctionViewHolder;->mFuncItemViewList:Ljava/util/List;

    const v0, 0x7f0b05f5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/common/card/models/CommonlyUsedFunctionCardModel$CommonlyUsedFunctionViewHolder;->mEditBtn:Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lcom/miui/common/card/models/CommonlyUsedFunctionCardModel$CommonlyUsedFunctionViewHolder;->initFuncItemViewList(Landroid/view/View;)V

    iget-object p1, p0, Lcom/miui/common/card/models/CommonlyUsedFunctionCardModel$CommonlyUsedFunctionViewHolder;->mEditBtn:Landroid/widget/ImageView;

    new-instance v0, Lcom/miui/common/card/models/a;

    invoke-direct {v0, p0}, Lcom/miui/common/card/models/a;-><init>(Lcom/miui/common/card/models/CommonlyUsedFunctionCardModel$CommonlyUsedFunctionViewHolder;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic c(Lcom/miui/common/card/models/CommonlyUsedFunctionCardModel$CommonlyUsedFunctionViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/common/card/models/CommonlyUsedFunctionCardModel$CommonlyUsedFunctionViewHolder;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method private initFuncItemViewList(Landroid/view/View;)V
    .locals 9

    const v0, 0x7f0b09cc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridLayout;

    iput-object v0, p0, Lcom/miui/common/card/models/CommonlyUsedFunctionCardModel$CommonlyUsedFunctionViewHolder;->gridLayout:Landroid/widget/GridLayout;

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "cetus"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    if-eq v0, v2, :cond_1

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x2

    move v2, v0

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/miui/common/card/models/CommonlyUsedFunctionCardModel$CommonlyUsedFunctionViewHolder;->gridLayout:Landroid/widget/GridLayout;

    invoke-virtual {v0, v2}, Landroid/widget/GridLayout;->setColumnCount(I)V

    move v0, v1

    :goto_3
    const/4 v2, 0x6

    if-ge v0, v2, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0e0249

    iget-object v4, p0, Lcom/miui/common/card/models/CommonlyUsedFunctionCardModel$CommonlyUsedFunctionViewHolder;->gridLayout:Landroid/widget/GridLayout;

    invoke-virtual {v2, v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/common/card/models/CommonlyUsedFunctionCardModel$CommonlyUsedFunctionViewHolder;->gridLayout:Landroid/widget/GridLayout;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/miui/common/card/models/CommonlyUsedFunctionCardModel$CommonlyUsedFunctionViewHolder;->mFuncItemViewList:Ljava/util/List;

    new-instance v4, Lcom/miui/common/card/CommonlyUsedFuncItemViewData;

    const v5, 0x7f0b05af

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f0b0506

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    const v7, 0x7f0b0bc9

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f0b0d51

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-direct {v4, v5, v6, v7, v2}, Lcom/miui/common/card/CommonlyUsedFuncItemViewData;-><init>(Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 1

    invoke-static {}, Lqf/c;->H0()V

    iget-object p1, p0, Lcom/miui/common/card/BaseViewHolder;->handler:Landroid/os/Handler;

    const/16 v0, 0x191

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method


# virtual methods
.method public fillData(Landroid/view/View;Lcom/miui/common/card/models/BaseCardModel;I)V
    .locals 2

    check-cast p2, Lcom/miui/common/card/models/CommonlyUsedFunctionCardModel;

    invoke-static {p2}, Lcom/miui/common/card/models/CommonlyUsedFunctionCardModel;->access$000(Lcom/miui/common/card/models/CommonlyUsedFunctionCardModel;)I

    move-result p1

    iget-object p3, p0, Lcom/miui/common/card/models/CommonlyUsedFunctionCardModel$CommonlyUsedFunctionViewHolder;->mEditBtn:Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result p3

    if-eq p1, p3, :cond_0

    iget-object p1, p0, Lcom/miui/common/card/models/CommonlyUsedFunctionCardModel$CommonlyUsedFunctionViewHolder;->mEditBtn:Landroid/widget/ImageView;

    invoke-static {p2}, Lcom/miui/common/card/models/CommonlyUsedFunctionCardModel;->access$000(Lcom/miui/common/card/models/CommonlyUsedFunctionCardModel;)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    invoke-virtual {p2}, Lcom/miui/common/card/models/CommonlyUsedFunctionCardModel;->getCommonlyUsedFuncDataList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 p3, 0x6

    if-le p2, p3, :cond_1

    move p2, p3

    :cond_1
    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_2

    iget-object v0, p0, Lcom/miui/common/card/models/CommonlyUsedFunctionCardModel$CommonlyUsedFunctionViewHolder;->mFuncItemViewList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/common/card/CommonlyUsedFuncItemViewData;

    add-int/lit8 v1, p3, 0x1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/miui/common/card/GridFunctionData;

    invoke-virtual {v0, v1, p3}, Lcom/miui/common/card/CommonlyUsedFuncItemViewData;->fillData(ILcom/miui/common/card/GridFunctionData;)V

    move p3, v1

    goto :goto_0

    :cond_2
    return-void
.end method

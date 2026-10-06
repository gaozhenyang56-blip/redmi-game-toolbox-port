.class public Lcom/miui/common/card/models/CommonlyUsedFunctionCardModelNew$CommonlyUsedFunctionViewHolder;
.super Lcom/miui/common/card/BaseViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/common/card/models/CommonlyUsedFunctionCardModelNew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CommonlyUsedFunctionViewHolder"
.end annotation


# instance fields
.field private commonlyUsedFuncItemViewData:Lcom/miui/common/card/CommonlyUsedFuncItemViewData;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/miui/common/card/BaseViewHolder;-><init>(Landroid/view/View;)V

    new-instance v0, Lcom/miui/common/card/CommonlyUsedFuncItemViewData;

    const v1, 0x7f0b05af

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0b0506

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f0b0bc9

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0b0d51

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/miui/common/card/CommonlyUsedFuncItemViewData;-><init>(Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    iput-object v0, p0, Lcom/miui/common/card/models/CommonlyUsedFunctionCardModelNew$CommonlyUsedFunctionViewHolder;->commonlyUsedFuncItemViewData:Lcom/miui/common/card/CommonlyUsedFuncItemViewData;

    return-void
.end method


# virtual methods
.method public fillData(Landroid/view/View;Lcom/miui/common/card/models/BaseCardModel;I)V
    .locals 9

    check-cast p2, Lcom/miui/common/card/models/CommonlyUsedFunctionCardModelNew;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-boolean v3, p2, Lcom/miui/common/card/models/CommonlyUsedFunctionCardModelNew;->isBottomLeft:Z

    const v4, 0x7f0807bb

    const v5, 0x7f0807b9

    const v6, 0x7f07083e

    if-eqz v3, :cond_3

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    move v4, v5

    :cond_2
    :goto_2
    invoke-virtual {p1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    :cond_3
    iget-boolean v3, p2, Lcom/miui/common/card/models/CommonlyUsedFunctionCardModelNew;->isBottomRight:Z

    if-eqz v3, :cond_4

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_4
    iget-boolean v3, p2, Lcom/miui/common/card/models/CommonlyUsedFunctionCardModelNew;->isBottomMiddle:Z

    if-eqz v3, :cond_5

    const v0, 0x7f0807ba

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_3
    invoke-virtual {p3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_4
    invoke-virtual {p1, v2, v2, v2, v0}, Landroid/view/View;->setPaddingRelative(IIII)V

    goto :goto_b

    :cond_5
    iget-boolean v3, p2, Lcom/miui/common/card/models/CommonlyUsedFunctionCardModelNew;->isTopLeft:Z

    const v4, 0x7f070a70

    const v5, 0x7f0807be

    const v6, 0x7f0807bd

    const v7, 0x7f070b63

    if-eqz v3, :cond_8

    if-eqz v0, :cond_6

    goto :goto_6

    :cond_6
    :goto_5
    move v5, v6

    :cond_7
    :goto_6
    invoke-virtual {p1, v5}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_7

    :cond_8
    iget-boolean v3, p2, Lcom/miui/common/card/models/CommonlyUsedFunctionCardModelNew;->isTopRight:Z

    if-eqz v3, :cond_9

    if-eqz v0, :cond_7

    goto :goto_5

    :cond_9
    iget-boolean v3, p2, Lcom/miui/common/card/models/CommonlyUsedFunctionCardModelNew;->isTopMiddle:Z

    const v8, 0x7f0807bc

    if-eqz v3, :cond_a

    invoke-virtual {p1, v8}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_7
    invoke-virtual {p3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p1, v2, v3, v2, v0}, Landroid/view/View;->setPaddingRelative(IIII)V

    goto :goto_b

    :cond_a
    iget-boolean v3, p2, Lcom/miui/common/card/models/CommonlyUsedFunctionCardModelNew;->isMiddleLeft:Z

    if-eqz v3, :cond_d

    if-eqz v0, :cond_b

    goto :goto_9

    :cond_b
    :goto_8
    move v5, v6

    :cond_c
    :goto_9
    invoke-virtual {p1, v5}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_a

    :cond_d
    iget-boolean v3, p2, Lcom/miui/common/card/models/CommonlyUsedFunctionCardModelNew;->isMiddleRight:Z

    if-eqz v3, :cond_e

    if-eqz v0, :cond_c

    goto :goto_8

    :cond_e
    invoke-virtual {p1, v8}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_a
    invoke-virtual {p3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_4

    :goto_b
    invoke-virtual {p2}, Lcom/miui/common/card/models/FunctionCardModel;->getGridFunctionData()Lcom/miui/common/card/GridFunctionData;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/common/card/models/CommonlyUsedFunctionCardModelNew$CommonlyUsedFunctionViewHolder;->commonlyUsedFuncItemViewData:Lcom/miui/common/card/CommonlyUsedFuncItemViewData;

    iget v2, p2, Lcom/miui/common/card/models/CommonlyUsedFunctionCardModelNew;->position:I

    invoke-virtual {v0, v2, p1}, Lcom/miui/common/card/CommonlyUsedFuncItemViewData;->fillData(ILcom/miui/common/card/GridFunctionData;)V

    const/4 v0, 0x0

    sget-object v2, Lcom/miui/common/card/models/CommonlyUsedFunctionCardModelNew$1;->$SwitchMap$com$miui$common$card$GridFunctionData$DataSource:[I

    invoke-virtual {p1}, Lcom/miui/common/card/GridFunctionData;->getDataSource()Lcom/miui/common/card/GridFunctionData$DataSource;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    if-eq v2, v1, :cond_12

    const/4 v1, 0x2

    if-eq v2, v1, :cond_11

    const/4 v1, 0x3

    if-eq v2, v1, :cond_10

    const/4 v1, 0x4

    if-eq v2, v1, :cond_f

    goto :goto_d

    :cond_f
    const v0, 0x7f12155f

    goto :goto_c

    :cond_10
    const v0, 0x7f121560

    goto :goto_c

    :cond_11
    const v0, 0x7f121561

    goto :goto_c

    :cond_12
    const v0, 0x7f121562

    :goto_c
    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_d
    invoke-static {}, Lgb/b;->d()Lgb/b;

    move-result-object p3

    invoke-virtual {p1}, Lcom/miui/common/card/GridFunctionData;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/common/card/GridFunctionData;->getExposureMonitoringLink()Ljava/lang/String;

    move-result-object p1

    iget p2, p2, Lcom/miui/common/card/models/CommonlyUsedFunctionCardModelNew;->position:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, v0, v1, p1, p2}, Lgb/b;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

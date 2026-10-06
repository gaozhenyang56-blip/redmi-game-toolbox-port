.class public Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;
.super Lcom/miui/common/card/BaseViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/common/card/models/ListTitleCheckboxCardModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListTitleCheckboxViewHolder"
.end annotation


# instance fields
.field private cbArray:[Landroid/widget/CheckBox;

.field private ivRightOfTitle:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mTitleCheckboxGroup:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private titleArray:[Landroid/widget/TextView;

.field private tvButtonLocal:Landroid/widget/Button;

.field private viewArray:[Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/common/card/BaseViewHolder;-><init>(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->initView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;[Landroid/widget/CheckBox;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->isAllChecked([Landroid/widget/CheckBox;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/card/BaseViewHolder;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/card/BaseViewHolder;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/card/BaseViewHolder;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/card/BaseViewHolder;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/card/BaseViewHolder;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/card/BaseViewHolder;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/card/BaseViewHolder;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$600(Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/card/BaseViewHolder;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$700(Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$800(Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;)[Landroid/widget/CheckBox;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->cbArray:[Landroid/widget/CheckBox;

    return-object p0
.end method

.method static synthetic access$900(Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;[Landroid/widget/CheckBox;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->isChecked([Landroid/widget/CheckBox;)Z

    move-result p0

    return p0
.end method

.method private initView(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0b062e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->ivRightOfTitle:Landroid/widget/ImageView;

    const v0, 0x7f0b06f2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->mTitleCheckboxGroup:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-void
.end method

.method private isAllChecked([Landroid/widget/CheckBox;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    move v1, v0

    move v2, v1

    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_2

    aget-object v3, p1, v1

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    array-length p1, p1

    if-ne v2, p1, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    return v0
.end method

.method private isChecked([Landroid/widget/CheckBox;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    move v1, v0

    move v2, v1

    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_2

    aget-object v3, p1, v1

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-lez v2, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    return v0
.end method

.method private updateTvButtonText(Lcom/miui/common/card/models/ListTitleCheckboxCardModel;)V
    .locals 6

    invoke-static {p1}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->access$000(Lcom/miui/common/card/models/ListTitleCheckboxCardModel;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/securityscan/model/AbsModel;

    invoke-virtual {v3}, Lcom/miui/securityscan/model/AbsModel;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/miui/securityscan/model/AbsModel;->getScore()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    :cond_1
    if-lez v2, :cond_2

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->tvButtonLocal:Landroid/widget/Button;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f10008e

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v0, v3, v2, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->tvButtonLocal:Landroid/widget/Button;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->access$100(Lcom/miui/common/card/models/ListTitleCheckboxCardModel;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public fillData(Landroid/view/View;Lcom/miui/common/card/models/BaseCardModel;I)V
    .locals 9

    invoke-super {p0, p1, p2, p3}, Lcom/miui/common/card/BaseViewHolder;->fillData(Landroid/view/View;Lcom/miui/common/card/models/BaseCardModel;I)V

    move-object p3, p2

    check-cast p3, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->mTitleCheckboxGroup:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v3, 0x3

    sub-int/2addr v0, v3

    invoke-static {p3}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->access$000(Lcom/miui/common/card/models/ListTitleCheckboxCardModel;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eq v0, v4, :cond_4

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->mTitleCheckboxGroup:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-le v0, v3, :cond_0

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->mTitleCheckboxGroup:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->removeViews(II)V

    :cond_0
    invoke-static {p3}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->access$000(Lcom/miui/common/card/models/ListTitleCheckboxCardModel;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [Landroid/widget/TextView;

    iput-object v3, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->titleArray:[Landroid/widget/TextView;

    new-array v3, v0, [Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->cbArray:[Landroid/widget/CheckBox;

    new-array v3, v0, [Landroid/view/View;

    iput-object v3, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->viewArray:[Landroid/view/View;

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    iget-object v4, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->mContext:Landroid/content/Context;

    const v5, 0x7f0e00e8

    invoke-static {v4, v5, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v5}, Landroid/view/View;->setId(I)V

    const v6, 0x7f0b05cd

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f0b0209

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    iget-object v8, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->titleArray:[Landroid/widget/TextView;

    aput-object v6, v8, v3

    iget-object v6, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->cbArray:[Landroid/widget/CheckBox;

    aput-object v7, v6, v3

    iget-object v6, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->viewArray:[Landroid/view/View;

    aput-object v4, v6, v3

    move v3, v5

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_1
    const/4 v4, -0x2

    const v5, 0x7f0719d9

    if-ge v3, v0, :cond_3

    const/4 v6, -0x1

    new-instance v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    if-nez v3, :cond_2

    invoke-direct {v7, v6, v4}, Landroidx/constraintlayout/widget/ConstraintLayout$b;-><init>(II)V

    const v4, 0x7f0b0b21

    iput v4, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->j:I

    iput v4, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->t:I

    iput v2, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->v:I

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0719de

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v7, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v7, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget-object v4, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->mTitleCheckboxGroup:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v5, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->viewArray:[Landroid/view/View;

    aget-object v5, v5, v3

    goto :goto_2

    :cond_2
    invoke-direct {v7, v6, v4}, Landroidx/constraintlayout/widget/ConstraintLayout$b;-><init>(II)V

    iget-object v4, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->viewArray:[Landroid/view/View;

    add-int/lit8 v6, v3, -0x1

    aget-object v4, v4, v6

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    iput v4, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->j:I

    iget-object v4, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->viewArray:[Landroid/view/View;

    aget-object v4, v4, v6

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    iput v4, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->t:I

    iput v2, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->v:I

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v7, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v7, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget-object v4, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->mTitleCheckboxGroup:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v5, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->viewArray:[Landroid/view/View;

    aget-object v5, v5, v3

    :goto_2
    invoke-virtual {v4, v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->mContext:Landroid/content/Context;

    const v6, 0x7f0e00ce

    invoke-static {v3, v6, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v6, 0x7f0b0c4e

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->tvButtonLocal:Landroid/widget/Button;

    new-instance v6, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    invoke-direct {v6, v4, v4}, Landroidx/constraintlayout/widget/ConstraintLayout$b;-><init>(II)V

    iget-object v4, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->viewArray:[Landroid/view/View;

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v4, v0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    iput v0, v6, Landroidx/constraintlayout/widget/ConstraintLayout$b;->j:I

    iput v2, v6, Landroidx/constraintlayout/widget/ConstraintLayout$b;->v:I

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {v6, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object p1, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->mTitleCheckboxGroup:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    iget-object p1, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->tvButtonLocal:Landroid/widget/Button;

    if-eqz p1, :cond_5

    invoke-static {p3}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->access$100(Lcom/miui/common/card/models/ListTitleCheckboxCardModel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    invoke-static {p3}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->access$200(Lcom/miui/common/card/models/ListTitleCheckboxCardModel;)I

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->ivRightOfTitle:Landroid/widget/ImageView;

    invoke-static {p3}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->access$200(Lcom/miui/common/card/models/ListTitleCheckboxCardModel;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_6
    move p1, v2

    :goto_3
    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->cbArray:[Landroid/widget/CheckBox;

    array-length v3, v0

    if-ge p1, v3, :cond_7

    aget-object v0, v0, p1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_7
    move p1, v2

    :goto_4
    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->cbArray:[Landroid/widget/CheckBox;

    array-length v0, v0

    if-ge p1, v0, :cond_8

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->titleArray:[Landroid/widget/TextView;

    aget-object v0, v0, p1

    invoke-static {p3}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->access$000(Lcom/miui/common/card/models/ListTitleCheckboxCardModel;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/securityscan/model/AbsModel;

    invoke-virtual {v1}, Lcom/miui/securityscan/model/AbsModel;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->cbArray:[Landroid/widget/CheckBox;

    aget-object v0, v0, p1

    invoke-static {p3}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->access$000(Lcom/miui/common/card/models/ListTitleCheckboxCardModel;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/securityscan/model/AbsModel;

    invoke-virtual {v1}, Lcom/miui/securityscan/model/AbsModel;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_8
    invoke-direct {p0, p3}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->updateTvButtonText(Lcom/miui/common/card/models/ListTitleCheckboxCardModel;)V

    move p1, v2

    :goto_5
    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->cbArray:[Landroid/widget/CheckBox;

    array-length v0, v0

    if-ge p1, v0, :cond_9

    invoke-static {p3}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->access$000(Lcom/miui/common/card/models/ListTitleCheckboxCardModel;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/model/AbsModel;

    iget-object v1, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->cbArray:[Landroid/widget/CheckBox;

    aget-object v1, v1, p1

    new-instance v3, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder$1;

    invoke-direct {v3, p0, v0}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder$1;-><init>(Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;Lcom/miui/securityscan/model/AbsModel;)V

    invoke-virtual {v1, v3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    :cond_9
    :goto_6
    iget-object p1, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->viewArray:[Landroid/view/View;

    array-length p1, p1

    if-ge v2, p1, :cond_a

    iget-object p1, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->cbArray:[Landroid/widget/CheckBox;

    aget-object p1, p1, v2

    invoke-static {p3}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->access$000(Lcom/miui/common/card/models/ListTitleCheckboxCardModel;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/model/AbsModel;

    iget-object v1, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->viewArray:[Landroid/view/View;

    aget-object v1, v1, v2

    new-instance v3, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder$2;

    invoke-direct {v3, p0, p1, v0}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder$2;-><init>(Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;Landroid/widget/CheckBox;Lcom/miui/securityscan/model/AbsModel;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->viewArray:[Landroid/view/View;

    aget-object p1, p1, v2

    new-instance v1, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder$3;

    invoke-direct {v1, p0, v0, p2}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder$3;-><init>(Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;Lcom/miui/securityscan/model/AbsModel;Lcom/miui/common/card/models/BaseCardModel;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_a
    iget-object p1, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->tvButtonLocal:Landroid/widget/Button;

    new-instance p2, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder$4;

    invoke-direct {p2, p0, p3}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder$4;-><init>(Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;Lcom/miui/common/card/models/ListTitleCheckboxCardModel;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

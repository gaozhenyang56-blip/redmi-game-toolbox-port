.class public Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ListTitleConsumePowerRankViewHolder;
.super Lcom/miui/common/card/BaseViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListTitleConsumePowerRankViewHolder"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mViewHolderArray:[Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/common/card/BaseViewHolder;-><init>(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ListTitleConsumePowerRankViewHolder;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ListTitleConsumePowerRankViewHolder;->initView(Landroid/view/View;)V

    invoke-static {p1}, Lx4/h0;->b(Landroid/view/View;)Z

    return-void
.end method

.method static synthetic access$400(Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ListTitleConsumePowerRankViewHolder;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ListTitleConsumePowerRankViewHolder;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private initView(Landroid/view/View;)V
    .locals 7

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

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v2, 0x3

    new-array v2, v2, [Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;

    iput-object v2, p0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ListTitleConsumePowerRankViewHolder;->mViewHolderArray:[Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;

    new-instance v3, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;

    invoke-direct {v3}, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;-><init>()V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v2, p0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ListTitleConsumePowerRankViewHolder;->mViewHolderArray:[Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;

    aget-object v2, v2, v4

    iput-object v0, v2, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;->parent:Landroid/view/ViewGroup;

    const v3, 0x7f0b0506

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v2, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ListTitleConsumePowerRankViewHolder;->mViewHolderArray:[Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;

    aget-object v2, v2, v4

    const v5, 0x7f0b0bc9

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v2, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ListTitleConsumePowerRankViewHolder;->mViewHolderArray:[Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;

    aget-object v2, v2, v4

    const v4, 0x7f0b0891

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;->percent:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ListTitleConsumePowerRankViewHolder;->mViewHolderArray:[Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;

    new-instance v2, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;

    invoke-direct {v2}, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;-><init>()V

    const/4 v6, 0x1

    aput-object v2, v0, v6

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ListTitleConsumePowerRankViewHolder;->mViewHolderArray:[Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;

    aget-object v0, v0, v6

    iput-object v1, v0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;->parent:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ListTitleConsumePowerRankViewHolder;->mViewHolderArray:[Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;

    aget-object v0, v0, v6

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ListTitleConsumePowerRankViewHolder;->mViewHolderArray:[Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;

    aget-object v0, v0, v6

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;->percent:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ListTitleConsumePowerRankViewHolder;->mViewHolderArray:[Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;

    new-instance v1, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;

    invoke-direct {v1}, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;-><init>()V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ListTitleConsumePowerRankViewHolder;->mViewHolderArray:[Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;

    aget-object v0, v0, v2

    iput-object p1, v0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;->parent:Landroid/view/ViewGroup;

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ListTitleConsumePowerRankViewHolder;->mViewHolderArray:[Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;

    aget-object v0, v0, v2

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ListTitleConsumePowerRankViewHolder;->mViewHolderArray:[Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;

    aget-object v0, v0, v2

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, v0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;->percent:Landroid/widget/TextView;

    return-void
.end method

.method private updateData(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lhe/a;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ListTitleConsumePowerRankViewHolder;->mViewHolderArray:[Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    iget-object v4, v4, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;->parent:Landroid/view/ViewGroup;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ListTitleConsumePowerRankViewHolder;->mViewHolderArray:[Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;->parent:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ListTitleConsumePowerRankViewHolder;->mViewHolderArray:[Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;->name:Landroid/widget/TextView;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lhe/a;

    iget-object v3, v3, Lhe/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ListTitleConsumePowerRankViewHolder;->mViewHolderArray:[Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;->percent:Landroid/widget/TextView;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lhe/a;

    iget-wide v4, v4, Lhe/a;->c:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v2

    const-string v4, "%.1f%%"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhe/a;

    iget v1, v1, Lhe/a;->d:I

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ListTitleConsumePowerRankViewHolder;->mViewHolderArray:[Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lhe/a;

    iget v3, v3, Lhe/a;->d:I

    invoke-static {v1, v3}, Lme/a;->g(Landroid/widget/ImageView;I)V

    goto/16 :goto_3

    :cond_2
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhe/a;

    iget-object v1, v1, Lhe/a;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhe/a;

    iget v1, v1, Lhe/a;->e:I

    invoke-static {v1}, Lme/m;->b(I)I

    move-result v1

    invoke-static {v1}, Lx4/b2;->d(I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ListTitleConsumePowerRankViewHolder;->mViewHolderArray:[Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lhe/a;

    iget-object v5, v5, Lhe/a;->a:Ljava/lang/String;

    invoke-static {v5}, Lme/a;->c(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lhe/a;

    iget v4, v4, Lhe/a;->e:I

    invoke-static {v1, v3, v4}, Lx4/b2;->a(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v3, p0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ListTitleConsumePowerRankViewHolder;->mViewHolderArray:[Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;->icon:Landroid/widget/ImageView;

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ListTitleConsumePowerRankViewHolder;->mViewHolderArray:[Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lhe/a;

    iget-object v3, v3, Lhe/a;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lme/a;->h(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ListTitleConsumePowerRankViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v3, p0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ListTitleConsumePowerRankViewHolder;->mViewHolderArray:[Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_2
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_5
    return-void
.end method


# virtual methods
.method public fillData(Landroid/view/View;Lcom/miui/common/card/models/BaseCardModel;I)V
    .locals 4

    invoke-super {p0, p1, p2, p3}, Lcom/miui/common/card/BaseViewHolder;->fillData(Landroid/view/View;Lcom/miui/common/card/models/BaseCardModel;I)V

    move-object p3, p2

    check-cast p3, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel;

    invoke-static {p3}, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel;->access$000(Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ListTitleConsumePowerRankViewHolder;->updateData(Ljava/util/List;)V

    iget-object v0, p0, Lcom/miui/common/card/BaseViewHolder;->tvButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ListTitleConsumePowerRankViewHolder$1;

    invoke-direct {v0, p0, p3}, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ListTitleConsumePowerRankViewHolder$1;-><init>(Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ListTitleConsumePowerRankViewHolder;Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel;)V

    iget-object v1, p0, Lcom/miui/common/card/BaseViewHolder;->tvButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ListTitleConsumePowerRankViewHolder$2;

    invoke-direct {v0, p0, p3, p2}, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ListTitleConsumePowerRankViewHolder$2;-><init>(Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ListTitleConsumePowerRankViewHolder;Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel;Lcom/miui/common/card/models/BaseCardModel;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {p3}, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel;->getScore()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/miui/common/card/BaseViewHolder;->tvButton:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ListTitleConsumePowerRankViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f10008e

    invoke-virtual {p3}, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel;->getScore()I

    move-result v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p3}, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel;->getScore()I

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

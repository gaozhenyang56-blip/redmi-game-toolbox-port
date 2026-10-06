.class public Lcom/miui/common/card/models/ScanResultBottomCardModelNew$ScanResultBottomViewHolder;
.super Lcom/miui/common/card/BaseViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/common/card/models/ScanResultBottomCardModelNew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScanResultBottomViewHolder"
.end annotation


# instance fields
.field cleanupChildViewCacheList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field cleanupContainer:Landroid/widget/LinearLayout;

.field cleanupIconImageView:Landroid/widget/ImageView;

.field cleanupTitleTextView:Landroid/widget/TextView;

.field cleanupTitleView:Landroid/view/View;

.field context:Landroid/content/Context;

.field inflater:Landroid/view/LayoutInflater;

.field securityChildViewCacheList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field securityContainer:Landroid/widget/LinearLayout;

.field securityIconImageView:Landroid/widget/ImageView;

.field securityTitleTextView:Landroid/widget/TextView;

.field securityTitleView:Landroid/view/View;

.field systemChildViewCacheList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field systemContainer:Landroid/widget/LinearLayout;

.field systemIconImageView:Landroid/widget/ImageView;

.field systemTitleTextView:Landroid/widget/TextView;

.field systemTitleView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/common/card/BaseViewHolder;-><init>(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/ScanResultBottomCardModelNew$ScanResultBottomViewHolder;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/ScanResultBottomCardModelNew$ScanResultBottomViewHolder;->inflater:Landroid/view/LayoutInflater;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/common/card/models/ScanResultBottomCardModelNew$ScanResultBottomViewHolder;->systemChildViewCacheList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/common/card/models/ScanResultBottomCardModelNew$ScanResultBottomViewHolder;->cleanupChildViewCacheList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/common/card/models/ScanResultBottomCardModelNew$ScanResultBottomViewHolder;->securityChildViewCacheList:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/miui/common/card/models/ScanResultBottomCardModelNew$ScanResultBottomViewHolder;->initView(Landroid/view/View;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method private addChildView(Lcom/miui/common/card/models/ScanResultBottomCardModelNew;Ljava/util/ArrayList;Landroid/widget/LinearLayout;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/common/card/models/ScanResultBottomCardModelNew;",
            "Ljava/util/ArrayList<",
            "Lzf/e;",
            ">;",
            "Landroid/widget/LinearLayout;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p3}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 p1, 0x0

    move v0, p1

    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzf/e;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/common/card/models/ScanResultBottomCardModelNew$ChildViewHolder;

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/miui/common/card/models/ScanResultBottomCardModelNew$ScanResultBottomViewHolder;->inflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0e00ea

    invoke-virtual {v2, v3, p3, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/miui/common/card/models/ScanResultBottomCardModelNew$ChildViewHolder;

    invoke-direct {v3}, Lcom/miui/common/card/models/ScanResultBottomCardModelNew$ChildViewHolder;-><init>()V

    const v4, 0x7f0b0c55

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/miui/common/card/models/ScanResultBottomCardModelNew$ChildViewHolder;->contentTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-interface {p4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    iget-object v4, v3, Lcom/miui/common/card/models/ScanResultBottomCardModelNew$ChildViewHolder;->contentTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Lzf/e;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Lzf/e;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v3, Lcom/miui/common/card/models/ScanResultBottomCardModelNew$ChildViewHolder;->contentTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/miui/common/card/models/ScanResultBottomCardModelNew$ScanResultBottomViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060b71

    goto :goto_2

    :cond_1
    iget-object v1, v3, Lcom/miui/common/card/models/ScanResultBottomCardModelNew$ChildViewHolder;->contentTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/miui/common/card/models/ScanResultBottomCardModelNew$ScanResultBottomViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060132

    :goto_2
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    const v0, 0x7f0b0b3c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/ScanResultBottomCardModelNew$ScanResultBottomViewHolder;->systemTitleView:Landroid/view/View;

    const v1, 0x7f0b060c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/common/card/models/ScanResultBottomCardModelNew$ScanResultBottomViewHolder;->systemIconImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/common/card/models/ScanResultBottomCardModelNew$ScanResultBottomViewHolder;->systemTitleView:Landroid/view/View;

    const v2, 0x7f0b0cf3

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/common/card/models/ScanResultBottomCardModelNew$ScanResultBottomViewHolder;->systemTitleTextView:Landroid/widget/TextView;

    const v0, 0x7f0b06e5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/common/card/models/ScanResultBottomCardModelNew$ScanResultBottomViewHolder;->systemContainer:Landroid/widget/LinearLayout;

    const v0, 0x7f0b0251

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/ScanResultBottomCardModelNew$ScanResultBottomViewHolder;->cleanupTitleView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/common/card/models/ScanResultBottomCardModelNew$ScanResultBottomViewHolder;->cleanupIconImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/common/card/models/ScanResultBottomCardModelNew$ScanResultBottomViewHolder;->cleanupTitleView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/common/card/models/ScanResultBottomCardModelNew$ScanResultBottomViewHolder;->cleanupTitleTextView:Landroid/widget/TextView;

    const v0, 0x7f0b06e3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/common/card/models/ScanResultBottomCardModelNew$ScanResultBottomViewHolder;->cleanupContainer:Landroid/widget/LinearLayout;

    const v0, 0x7f0b0a30

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/ScanResultBottomCardModelNew$ScanResultBottomViewHolder;->securityTitleView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/common/card/models/ScanResultBottomCardModelNew$ScanResultBottomViewHolder;->securityIconImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/common/card/models/ScanResultBottomCardModelNew$ScanResultBottomViewHolder;->securityTitleView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/common/card/models/ScanResultBottomCardModelNew$ScanResultBottomViewHolder;->securityTitleTextView:Landroid/widget/TextView;

    const v0, 0x7f0b06e4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/miui/common/card/models/ScanResultBottomCardModelNew$ScanResultBottomViewHolder;->securityContainer:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public fillData(Landroid/view/View;Lcom/miui/common/card/models/BaseCardModel;I)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/miui/common/card/BaseViewHolder;->fillData(Landroid/view/View;Lcom/miui/common/card/models/BaseCardModel;I)V

    check-cast p2, Lcom/miui/common/card/models/ScanResultBottomCardModelNew;

    iget-object p1, p0, Lcom/miui/common/card/models/ScanResultBottomCardModelNew$ScanResultBottomViewHolder;->systemIconImageView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/miui/common/card/models/ScanResultBottomCardModelNew;->getSystemResId()I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/miui/common/card/models/ScanResultBottomCardModelNew$ScanResultBottomViewHolder;->systemTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/miui/common/card/models/ScanResultBottomCardModelNew;->getSystemTitle()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {p2}, Lcom/miui/common/card/models/ScanResultBottomCardModelNew;->getSystemMap()Ljava/util/Map;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object p3, p0, Lcom/miui/common/card/models/ScanResultBottomCardModelNew$ScanResultBottomViewHolder;->systemContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/miui/common/card/models/ScanResultBottomCardModelNew$ScanResultBottomViewHolder;->systemChildViewCacheList:Ljava/util/List;

    invoke-direct {p0, p2, p1, p3, v0}, Lcom/miui/common/card/models/ScanResultBottomCardModelNew$ScanResultBottomViewHolder;->addChildView(Lcom/miui/common/card/models/ScanResultBottomCardModelNew;Ljava/util/ArrayList;Landroid/widget/LinearLayout;Ljava/util/List;)V

    iget-object p1, p0, Lcom/miui/common/card/models/ScanResultBottomCardModelNew$ScanResultBottomViewHolder;->cleanupIconImageView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/miui/common/card/models/ScanResultBottomCardModelNew;->getCleanupResId()I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/miui/common/card/models/ScanResultBottomCardModelNew$ScanResultBottomViewHolder;->cleanupTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/miui/common/card/models/ScanResultBottomCardModelNew;->getCleanupTitle()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {p2}, Lcom/miui/common/card/models/ScanResultBottomCardModelNew;->getCleanupMap()Ljava/util/Map;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object p3, p0, Lcom/miui/common/card/models/ScanResultBottomCardModelNew$ScanResultBottomViewHolder;->cleanupContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/miui/common/card/models/ScanResultBottomCardModelNew$ScanResultBottomViewHolder;->cleanupChildViewCacheList:Ljava/util/List;

    invoke-direct {p0, p2, p1, p3, v0}, Lcom/miui/common/card/models/ScanResultBottomCardModelNew$ScanResultBottomViewHolder;->addChildView(Lcom/miui/common/card/models/ScanResultBottomCardModelNew;Ljava/util/ArrayList;Landroid/widget/LinearLayout;Ljava/util/List;)V

    iget-object p1, p0, Lcom/miui/common/card/models/ScanResultBottomCardModelNew$ScanResultBottomViewHolder;->securityIconImageView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/miui/common/card/models/ScanResultBottomCardModelNew;->getSecurityResId()I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/miui/common/card/models/ScanResultBottomCardModelNew$ScanResultBottomViewHolder;->securityTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/miui/common/card/models/ScanResultBottomCardModelNew;->getSecurityTitle()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {p2}, Lcom/miui/common/card/models/ScanResultBottomCardModelNew;->getSecurityMap()Ljava/util/Map;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object p3, p0, Lcom/miui/common/card/models/ScanResultBottomCardModelNew$ScanResultBottomViewHolder;->securityContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/miui/common/card/models/ScanResultBottomCardModelNew$ScanResultBottomViewHolder;->securityChildViewCacheList:Ljava/util/List;

    invoke-direct {p0, p2, p1, p3, v0}, Lcom/miui/common/card/models/ScanResultBottomCardModelNew$ScanResultBottomViewHolder;->addChildView(Lcom/miui/common/card/models/ScanResultBottomCardModelNew;Ljava/util/ArrayList;Landroid/widget/LinearLayout;Ljava/util/List;)V

    return-void
.end method

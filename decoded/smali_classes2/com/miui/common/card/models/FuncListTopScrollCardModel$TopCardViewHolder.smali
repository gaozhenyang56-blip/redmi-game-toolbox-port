.class public Lcom/miui/common/card/models/FuncListTopScrollCardModel$TopCardViewHolder;
.super Lcom/miui/common/card/BaseViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/common/card/models/FuncListTopScrollCardModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TopCardViewHolder"
.end annotation


# instance fields
.field private mLastIsFlipping:Z

.field private mLastScrollData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/common/card/functions/FuncTopBannerScrollData;",
            ">;"
        }
    .end annotation
.end field

.field private mOption:Lrh/c;

.field private mViewFlipper:Lcom/miui/securityscan/ui/main/HpViewFlipper;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/miui/common/card/BaseViewHolder;-><init>(Landroid/view/View;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/common/card/models/FuncListTopScrollCardModel$TopCardViewHolder;->mLastIsFlipping:Z

    const v0, 0x7f0b0d88

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/ui/main/HpViewFlipper;

    iput-object v0, p0, Lcom/miui/common/card/models/FuncListTopScrollCardModel$TopCardViewHolder;->mViewFlipper:Lcom/miui/securityscan/ui/main/HpViewFlipper;

    new-instance v1, Lcom/miui/common/card/models/FuncListTopScrollCardModel$TopCardViewHolder$1;

    invoke-direct {v1, p0, p1}, Lcom/miui/common/card/models/FuncListTopScrollCardModel$TopCardViewHolder$1;-><init>(Lcom/miui/common/card/models/FuncListTopScrollCardModel$TopCardViewHolder;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/miui/securityscan/ui/main/HpViewFlipper;->setmViewChangeListener(Lcom/miui/securityscan/ui/main/HpViewFlipper$a;)V

    invoke-virtual {p0}, Lcom/miui/common/card/models/FuncListTopScrollCardModel$TopCardViewHolder;->setIconDisplayOption()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/common/card/models/FuncListTopScrollCardModel$TopCardViewHolder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/card/models/FuncListTopScrollCardModel$TopCardViewHolder;->mLastScrollData:Ljava/util/List;

    return-object p0
.end method

.method private isScrollDataChanged(Ljava/util/List;Ljava/util/List;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/common/card/functions/FuncTopBannerScrollData;",
            ">;",
            "Ljava/util/List<",
            "Lcom/miui/common/card/functions/FuncTopBannerScrollData;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_8

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/common/card/functions/FuncTopBannerScrollData;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/common/card/functions/FuncTopBannerScrollData;

    invoke-virtual {v3}, Lcom/miui/common/card/functions/FuncTopBannerScrollData;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/miui/common/card/functions/FuncTopBannerScrollData;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v0

    goto :goto_1

    :cond_2
    move v5, v1

    :goto_1
    iget-object v6, v3, Lcom/miui/common/card/functions/FuncTopBannerScrollData;->id:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, v3, Lcom/miui/common/card/functions/FuncTopBannerScrollData;->id:Ljava/lang/String;

    iget-object v7, v4, Lcom/miui/common/card/functions/FuncTopBannerScrollData;->id:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    :cond_3
    iget-object v3, v3, Lcom/miui/common/card/functions/FuncTopBannerScrollData;->id:Ljava/lang/String;

    if-nez v3, :cond_5

    iget-object v3, v4, Lcom/miui/common/card/functions/FuncTopBannerScrollData;->id:Ljava/lang/String;

    if-nez v3, :cond_5

    :cond_4
    move v3, v0

    goto :goto_2

    :cond_5
    move v3, v1

    :goto_2
    if-eqz v5, :cond_7

    if-nez v3, :cond_6

    goto :goto_3

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    :goto_3
    return v0

    :cond_8
    return v1
.end method


# virtual methods
.method public fillData(Landroid/view/View;Lcom/miui/common/card/models/BaseCardModel;I)V
    .locals 10

    move-object p3, p2

    check-cast p3, Lcom/miui/common/card/models/FuncListTopScrollCardModel;

    invoke-virtual {p2}, Lcom/miui/common/card/models/BaseCardModel;->isCanAutoScroll()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-static {p3}, Lcom/miui/common/card/models/FuncListTopScrollCardModel;->access$100(Lcom/miui/common/card/models/FuncListTopScrollCardModel;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p1, p0, Lcom/miui/common/card/models/FuncListTopScrollCardModel$TopCardViewHolder;->mViewFlipper:Lcom/miui/securityscan/ui/main/HpViewFlipper;

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->stopFlipping()V

    iget-object p1, p0, Lcom/miui/common/card/models/FuncListTopScrollCardModel$TopCardViewHolder;->mViewFlipper:Lcom/miui/securityscan/ui/main/HpViewFlipper;

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->isFlipping()Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/common/card/models/FuncListTopScrollCardModel$TopCardViewHolder;->mLastIsFlipping:Z

    return-void

    :cond_0
    invoke-virtual {p3}, Lcom/miui/common/card/models/FunctionCardModel;->getFuncTopBannerScrollDataList()Ljava/util/List;

    move-result-object p2

    iget-object v0, p0, Lcom/miui/common/card/models/FuncListTopScrollCardModel$TopCardViewHolder;->mViewFlipper:Lcom/miui/securityscan/ui/main/HpViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewAnimator;->getDisplayedChild()I

    move-result v0

    const/4 v1, 0x0

    if-eqz p2, :cond_9

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/miui/common/card/models/FuncListTopScrollCardModel$TopCardViewHolder;->mLastScrollData:Ljava/util/List;

    invoke-direct {p0, v2, p2}, Lcom/miui/common/card/models/FuncListTopScrollCardModel$TopCardViewHolder;->isScrollDataChanged(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    invoke-virtual {p3}, Lcom/miui/common/card/models/BaseCardModel;->isCanAutoScroll()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/miui/common/card/models/FuncListTopScrollCardModel$TopCardViewHolder;->mLastIsFlipping:Z

    if-nez p1, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v3, :cond_1

    iget-object p1, p0, Lcom/miui/common/card/models/FuncListTopScrollCardModel$TopCardViewHolder;->mViewFlipper:Lcom/miui/securityscan/ui/main/HpViewFlipper;

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->startFlipping()V

    iget-object p1, p0, Lcom/miui/common/card/models/FuncListTopScrollCardModel$TopCardViewHolder;->mViewFlipper:Lcom/miui/securityscan/ui/main/HpViewFlipper;

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->isFlipping()Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/common/card/models/FuncListTopScrollCardModel$TopCardViewHolder;->mLastIsFlipping:Z

    :cond_1
    return-void

    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/miui/common/card/models/FuncListTopScrollCardModel$TopCardViewHolder;->mLastScrollData:Ljava/util/List;

    iget-object v2, p0, Lcom/miui/common/card/models/FuncListTopScrollCardModel$TopCardViewHolder;->mViewFlipper:Lcom/miui/securityscan/ui/main/HpViewFlipper;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    move v2, v1

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_5

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/common/card/functions/FuncTopBannerScrollData;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f0e00e4

    move-object v7, p1

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v5, v6, v7, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f0b0506

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    const v7, 0x7f0b0b21

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/miui/common/card/functions/FuncTopBannerScrollData;->getIcon()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    iget-object v9, p0, Lcom/miui/common/card/models/FuncListTopScrollCardModel$TopCardViewHolder;->mOption:Lrh/c;

    invoke-static {v8, v6, v9}, Lx4/o0;->d(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;)V

    goto :goto_1

    :cond_3
    iget v8, v4, Lcom/miui/common/card/functions/FuncTopBannerScrollData;->iconRes:I

    if-eqz v8, :cond_4

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    invoke-virtual {v4}, Lcom/miui/common/card/functions/FuncTopBannerScrollData;->getSummary()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/miui/common/card/models/FuncListTopScrollCardModel$TopCardViewHolder;->mViewFlipper:Lcom/miui/securityscan/ui/main/HpViewFlipper;

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v4}, Lcom/miui/common/card/functions/FuncTopBannerScrollData;->getCommonFunction()Lcom/miui/common/card/functions/BaseFunction;

    move-result-object v6

    new-instance v7, Lcom/miui/common/card/models/FuncListTopScrollCardModel$TopCardViewHolder$2;

    invoke-direct {v7, p0, v6, v4}, Lcom/miui/common/card/models/FuncListTopScrollCardModel$TopCardViewHolder$2;-><init>(Lcom/miui/common/card/models/FuncListTopScrollCardModel$TopCardViewHolder;Lcom/miui/common/card/functions/BaseFunction;Lcom/miui/common/card/functions/FuncTopBannerScrollData;)V

    invoke-virtual {v5, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    if-eqz v0, :cond_7

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_6

    move v0, v1

    :cond_6
    iget-object v2, p0, Lcom/miui/common/card/models/FuncListTopScrollCardModel$TopCardViewHolder;->mViewFlipper:Lcom/miui/securityscan/ui/main/HpViewFlipper;

    invoke-virtual {v2, v0}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v2, p0, Lcom/miui/common/card/models/FuncListTopScrollCardModel$TopCardViewHolder;->mLastScrollData:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/common/card/functions/FuncTopBannerScrollData;

    invoke-static {p1, v0}, Lqf/c;->x0(Landroid/content/Context;Lcom/miui/common/card/functions/FuncTopBannerScrollData;)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v3, :cond_8

    invoke-virtual {p3}, Lcom/miui/common/card/models/BaseCardModel;->isCanAutoScroll()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/miui/common/card/models/FuncListTopScrollCardModel$TopCardViewHolder;->mViewFlipper:Lcom/miui/securityscan/ui/main/HpViewFlipper;

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->stopFlipping()V

    iget-object p1, p0, Lcom/miui/common/card/models/FuncListTopScrollCardModel$TopCardViewHolder;->mViewFlipper:Lcom/miui/securityscan/ui/main/HpViewFlipper;

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->startFlipping()V

    goto :goto_2

    :cond_8
    iget-object p1, p0, Lcom/miui/common/card/models/FuncListTopScrollCardModel$TopCardViewHolder;->mViewFlipper:Lcom/miui/securityscan/ui/main/HpViewFlipper;

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->stopFlipping()V

    :goto_2
    iget-object p1, p0, Lcom/miui/common/card/models/FuncListTopScrollCardModel$TopCardViewHolder;->mViewFlipper:Lcom/miui/securityscan/ui/main/HpViewFlipper;

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->isFlipping()Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/common/card/models/FuncListTopScrollCardModel$TopCardViewHolder;->mLastIsFlipping:Z

    :cond_9
    invoke-static {p3, v1}, Lcom/miui/common/card/models/FuncListTopScrollCardModel;->access$102(Lcom/miui/common/card/models/FuncListTopScrollCardModel;Z)Z

    return-void
.end method

.method public setIconDisplayOption()V
    .locals 3

    new-instance v0, Lrh/c$b;

    invoke-direct {v0}, Lrh/c$b;-><init>()V

    const v1, 0x7f080823

    invoke-virtual {v0, v1}, Lrh/c$b;->I(I)Lrh/c$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lrh/c$b;->H(I)Lrh/c$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lrh/c$b;->G(I)Lrh/c$b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lrh/c$b;->F(Z)Lrh/c$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lrh/c$b;->x(Z)Lrh/c$b;

    move-result-object v0

    sget-object v2, Lsh/d;->d:Lsh/d;

    invoke-virtual {v0, v2}, Lrh/c$b;->C(Lsh/d;)Lrh/c$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lrh/c$b;->y(Z)Lrh/c$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lrh/c$b;->A(Z)Lrh/c$b;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1}, Lrh/c$b;->v(Landroid/graphics/Bitmap$Config;)Lrh/c$b;

    move-result-object v0

    invoke-virtual {v0}, Lrh/c$b;->w()Lrh/c;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/FuncListTopScrollCardModel$TopCardViewHolder;->mOption:Lrh/c;

    return-void
.end method

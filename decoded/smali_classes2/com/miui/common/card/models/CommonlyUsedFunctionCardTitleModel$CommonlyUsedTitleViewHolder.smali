.class public Lcom/miui/common/card/models/CommonlyUsedFunctionCardTitleModel$CommonlyUsedTitleViewHolder;
.super Lcom/miui/common/card/BaseViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/common/card/models/CommonlyUsedFunctionCardTitleModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CommonlyUsedTitleViewHolder"
.end annotation


# instance fields
.field private mEditBtn:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/common/card/BaseViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0b05f5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/miui/common/card/models/CommonlyUsedFunctionCardTitleModel$CommonlyUsedTitleViewHolder;->mEditBtn:Landroid/widget/ImageView;

    new-instance v0, Lcom/miui/common/card/models/b;

    invoke-direct {v0, p0}, Lcom/miui/common/card/models/b;-><init>(Lcom/miui/common/card/models/CommonlyUsedFunctionCardTitleModel$CommonlyUsedTitleViewHolder;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic c(Lcom/miui/common/card/models/CommonlyUsedFunctionCardTitleModel$CommonlyUsedTitleViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/common/card/models/CommonlyUsedFunctionCardTitleModel$CommonlyUsedTitleViewHolder;->lambda$new$0(Landroid/view/View;)V

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
    .locals 0

    check-cast p2, Lcom/miui/common/card/models/CommonlyUsedFunctionCardTitleModel;

    invoke-static {p2}, Lcom/miui/common/card/models/CommonlyUsedFunctionCardTitleModel;->access$000(Lcom/miui/common/card/models/CommonlyUsedFunctionCardTitleModel;)I

    move-result p1

    iget-object p3, p0, Lcom/miui/common/card/models/CommonlyUsedFunctionCardTitleModel$CommonlyUsedTitleViewHolder;->mEditBtn:Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result p3

    if-eq p1, p3, :cond_0

    iget-object p1, p0, Lcom/miui/common/card/models/CommonlyUsedFunctionCardTitleModel$CommonlyUsedTitleViewHolder;->mEditBtn:Landroid/widget/ImageView;

    invoke-static {p2}, Lcom/miui/common/card/models/CommonlyUsedFunctionCardTitleModel;->access$000(Lcom/miui/common/card/models/CommonlyUsedFunctionCardTitleModel;)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    invoke-virtual {p2}, Lcom/miui/common/card/models/BaseCardModel;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/common/card/BaseViewHolder;->titleView:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/miui/common/card/models/BaseCardModel;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

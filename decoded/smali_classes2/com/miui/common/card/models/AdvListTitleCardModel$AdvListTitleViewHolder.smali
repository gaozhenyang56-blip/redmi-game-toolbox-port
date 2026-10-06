.class public Lcom/miui/common/card/models/AdvListTitleCardModel$AdvListTitleViewHolder;
.super Lcom/miui/common/card/BaseViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/common/card/models/AdvListTitleCardModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdvListTitleViewHolder"
.end annotation


# instance fields
.field private closeView:Landroid/view/View;

.field option:Lrh/c;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/common/card/BaseViewHolder;-><init>(Landroid/view/View;)V

    sget-object v0, Lx4/o0;->h:Lrh/c;

    iput-object v0, p0, Lcom/miui/common/card/models/AdvListTitleCardModel$AdvListTitleViewHolder;->option:Lrh/c;

    invoke-direct {p0, p1}, Lcom/miui/common/card/models/AdvListTitleCardModel$AdvListTitleViewHolder;->initView(Landroid/view/View;)V

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0b0d83

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/common/card/models/AdvListTitleCardModel$AdvListTitleViewHolder;->closeView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public fillData(Landroid/view/View;Lcom/miui/common/card/models/BaseCardModel;I)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/miui/common/card/BaseViewHolder;->fillData(Landroid/view/View;Lcom/miui/common/card/models/BaseCardModel;I)V

    check-cast p2, Lcom/miui/common/card/models/AdvListTitleCardModel;

    new-instance p1, Lcom/miui/common/card/models/AdvListTitleCardModel$AdvListTitleViewHolder$1;

    invoke-direct {p1, p0, p2}, Lcom/miui/common/card/models/AdvListTitleCardModel$AdvListTitleViewHolder$1;-><init>(Lcom/miui/common/card/models/AdvListTitleCardModel$AdvListTitleViewHolder;Lcom/miui/common/card/models/AdvListTitleCardModel;)V

    iget-object p2, p0, Lcom/miui/common/card/models/AdvListTitleCardModel$AdvListTitleViewHolder;->closeView:Landroid/view/View;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method protected setIconDisplayOption(Lrh/c;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/AdvListTitleCardModel$AdvListTitleViewHolder;->option:Lrh/c;

    return-void
.end method

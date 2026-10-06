.class public Lcom/miui/common/card/models/FuncLeftBannerCardModel$LeftBannerViewHolder;
.super Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/common/card/models/FuncLeftBannerCardModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LeftBannerViewHolder"
.end annotation


# instance fields
.field private buttonViewStub:Landroid/view/ViewStub;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0b01eb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    iput-object p1, p0, Lcom/miui/common/card/models/FuncLeftBannerCardModel$LeftBannerViewHolder;->buttonViewStub:Landroid/view/ViewStub;

    return-void
.end method

.method static synthetic access$002(Lcom/miui/common/card/models/FuncLeftBannerCardModel$LeftBannerViewHolder;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/BaseViewHolder;->actionButton:Landroid/widget/Button;

    return-object p1
.end method


# virtual methods
.method public fillData(Landroid/view/View;Lcom/miui/common/card/models/BaseCardModel;I)V
    .locals 2

    invoke-virtual {p2}, Lcom/miui/common/card/models/BaseCardModel;->isFoldDevice()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/common/card/BaseViewHolder;->actionButton:Landroid/widget/Button;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/common/card/models/FuncLeftBannerCardModel$LeftBannerViewHolder;->buttonViewStub:Landroid/view/ViewStub;

    new-instance v1, Lcom/miui/common/card/models/FuncLeftBannerCardModel$LeftBannerViewHolder$1;

    invoke-direct {v1, p0}, Lcom/miui/common/card/models/FuncLeftBannerCardModel$LeftBannerViewHolder$1;-><init>(Lcom/miui/common/card/models/FuncLeftBannerCardModel$LeftBannerViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setOnInflateListener(Landroid/view/ViewStub$OnInflateListener;)V

    iget-object v0, p0, Lcom/miui/common/card/models/FuncLeftBannerCardModel$LeftBannerViewHolder;->buttonViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;->fillData(Landroid/view/View;Lcom/miui/common/card/models/BaseCardModel;I)V

    return-void
.end method

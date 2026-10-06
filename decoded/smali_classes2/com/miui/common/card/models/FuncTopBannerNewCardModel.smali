.class public Lcom/miui/common/card/models/FuncTopBannerNewCardModel;
.super Lcom/miui/common/card/models/FunctionCardModel;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/common/card/models/FuncTopBannerNewCardModel;-><init>(Lcom/miui/securityscan/model/AbsModel;)V

    return-void
.end method

.method public constructor <init>(Lcom/miui/securityscan/model/AbsModel;)V
    .locals 1

    const v0, 0x7f0e00ee

    invoke-direct {p0, v0, p1}, Lcom/miui/common/card/models/FunctionCardModel;-><init>(ILcom/miui/securityscan/model/AbsModel;)V

    return-void
.end method


# virtual methods
.method public createViewHolder(Landroid/view/View;)Lcom/miui/common/card/BaseViewHolder;
    .locals 1

    new-instance v0, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;

    invoke-direct {v0, p1}, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;-><init>(Landroid/view/View;)V

    sget-object p1, Lx4/o0;->h:Lrh/c;

    invoke-virtual {v0, p1}, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;->setIconDisplayOption(Lrh/c;)V

    sget-object p1, Lx4/o0;->c:Lrh/c;

    invoke-virtual {v0, p1}, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;->setImgDisplayOption(Lrh/c;)V

    return-object v0
.end method

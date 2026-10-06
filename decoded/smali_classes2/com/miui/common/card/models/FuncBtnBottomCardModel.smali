.class public Lcom/miui/common/card/models/FuncBtnBottomCardModel;
.super Lcom/miui/common/card/models/FunctionCardModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/common/card/models/FuncBtnBottomCardModel$BtnBottomViewHolder;
    }
.end annotation


# instance fields
.field private absModelIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/common/card/models/FuncBtnBottomCardModel;-><init>(Lcom/miui/securityscan/model/AbsModel;)V

    return-void
.end method

.method public constructor <init>(Lcom/miui/securityscan/model/AbsModel;)V
    .locals 1

    const v0, 0x7f0e00d4

    invoke-direct {p0, v0, p1}, Lcom/miui/common/card/models/FunctionCardModel;-><init>(ILcom/miui/securityscan/model/AbsModel;)V

    return-void
.end method


# virtual methods
.method public createViewHolder(Landroid/view/View;)Lcom/miui/common/card/BaseViewHolder;
    .locals 1

    new-instance v0, Lcom/miui/common/card/models/FuncBtnBottomCardModel$BtnBottomViewHolder;

    invoke-direct {v0, p1}, Lcom/miui/common/card/models/FuncBtnBottomCardModel$BtnBottomViewHolder;-><init>(Landroid/view/View;)V

    sget-object p1, Lx4/o0;->i:Lrh/c;

    invoke-virtual {v0, p1}, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;->setIconDisplayOption(Lrh/c;)V

    return-object v0
.end method

.method public getAbsModelIndex()I
    .locals 1

    iget v0, p0, Lcom/miui/common/card/models/FuncBtnBottomCardModel;->absModelIndex:I

    return v0
.end method

.method public setAbsModelIndex(I)V
    .locals 0

    iput p1, p0, Lcom/miui/common/card/models/FuncBtnBottomCardModel;->absModelIndex:I

    return-void
.end method

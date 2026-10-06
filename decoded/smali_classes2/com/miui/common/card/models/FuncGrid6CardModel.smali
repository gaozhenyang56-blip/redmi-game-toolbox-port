.class public Lcom/miui/common/card/models/FuncGrid6CardModel;
.super Lcom/miui/common/card/models/FunctionCardModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;,
        Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;
    }
.end annotation


# instance fields
.field private indexInGridSix:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/common/card/models/FuncGrid6CardModel;-><init>(Lcom/miui/securityscan/model/AbsModel;)V

    return-void
.end method

.method public constructor <init>(Lcom/miui/securityscan/model/AbsModel;)V
    .locals 1

    const v0, 0x7f0e00dc

    invoke-direct {p0, v0, p1}, Lcom/miui/common/card/models/FunctionCardModel;-><init>(ILcom/miui/securityscan/model/AbsModel;)V

    return-void
.end method


# virtual methods
.method public createViewHolder(Landroid/view/View;)Lcom/miui/common/card/BaseViewHolder;
    .locals 1

    new-instance v0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;

    invoke-direct {v0, p1}, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public getIndexInGridSix()I
    .locals 1

    iget v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel;->indexInGridSix:I

    return v0
.end method

.method public setIndexInGridSix(I)V
    .locals 0

    iput p1, p0, Lcom/miui/common/card/models/FuncGrid6CardModel;->indexInGridSix:I

    return-void
.end method

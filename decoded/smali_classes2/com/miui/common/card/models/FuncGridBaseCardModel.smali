.class public Lcom/miui/common/card/models/FuncGridBaseCardModel;
.super Lcom/miui/common/card/models/FunctionCardModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/common/card/models/FuncGridBaseCardModel$FuncGridBaseViewHolder;
    }
.end annotation


# instance fields
.field public isBottomLeft:Z

.field public isBottomMiddle:Z

.field public isBottomRight:Z

.field public isMiddle:Z

.field public isMiddleLeft:Z

.field public isMiddleRight:Z

.field private isPlaceHolder:Z

.field public isTopLeft:Z

.field public isTopMiddle:Z

.field public isTopRight:Z

.field private previousCardModelIsBlankLine:Z


# direct methods
.method public constructor <init>(ILcom/miui/securityscan/model/AbsModel;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/common/card/models/FunctionCardModel;-><init>(ILcom/miui/securityscan/model/AbsModel;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/common/card/models/FuncGridBaseCardModel;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/common/card/models/FuncGridBaseCardModel;->previousCardModelIsBlankLine:Z

    return p0
.end method


# virtual methods
.method public createViewHolder(Landroid/view/View;)Lcom/miui/common/card/BaseViewHolder;
    .locals 1

    new-instance v0, Lcom/miui/common/card/models/FuncGridBaseCardModel$FuncGridBaseViewHolder;

    invoke-direct {v0, p1}, Lcom/miui/common/card/models/FuncGridBaseCardModel$FuncGridBaseViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public resetPoistions()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/common/card/models/FuncGridBaseCardModel;->isTopLeft:Z

    iput-boolean v0, p0, Lcom/miui/common/card/models/FuncGridBaseCardModel;->isTopMiddle:Z

    iput-boolean v0, p0, Lcom/miui/common/card/models/FuncGridBaseCardModel;->isTopRight:Z

    iput-boolean v0, p0, Lcom/miui/common/card/models/FuncGridBaseCardModel;->isBottomLeft:Z

    iput-boolean v0, p0, Lcom/miui/common/card/models/FuncGridBaseCardModel;->isBottomMiddle:Z

    iput-boolean v0, p0, Lcom/miui/common/card/models/FuncGridBaseCardModel;->isBottomRight:Z

    iput-boolean v0, p0, Lcom/miui/common/card/models/FuncGridBaseCardModel;->isMiddleLeft:Z

    iput-boolean v0, p0, Lcom/miui/common/card/models/FuncGridBaseCardModel;->isMiddleRight:Z

    iput-boolean v0, p0, Lcom/miui/common/card/models/FuncGridBaseCardModel;->isMiddle:Z

    return-void
.end method

.method public setPlaceHolder(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/common/card/models/FuncGridBaseCardModel;->isPlaceHolder:Z

    return-void
.end method

.method public setPreviousLine(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/common/card/models/FuncGridBaseCardModel;->previousCardModelIsBlankLine:Z

    return-void
.end method

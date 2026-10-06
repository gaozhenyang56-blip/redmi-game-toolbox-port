.class public Lcom/miui/common/card/models/FuncListTopCardModel;
.super Lcom/miui/common/card/models/FunctionCardModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/common/card/models/FuncListTopCardModel$TopCardViewHolder;
    }
.end annotation


# instance fields
.field private mClickable:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/common/card/models/FuncListTopCardModel;-><init>(Lcom/miui/securityscan/model/AbsModel;)V

    return-void
.end method

.method public constructor <init>(Lcom/miui/securityscan/model/AbsModel;)V
    .locals 1

    const v0, 0x7f0e00e3

    invoke-direct {p0, v0, p1}, Lcom/miui/common/card/models/FunctionCardModel;-><init>(ILcom/miui/securityscan/model/AbsModel;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/common/card/models/FuncListTopCardModel;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/common/card/models/FuncListTopCardModel;->mClickable:Z

    return p0
.end method


# virtual methods
.method public createViewHolder(Landroid/view/View;)Lcom/miui/common/card/BaseViewHolder;
    .locals 1

    new-instance v0, Lcom/miui/common/card/models/FuncListTopCardModel$TopCardViewHolder;

    invoke-direct {v0, p1}, Lcom/miui/common/card/models/FuncListTopCardModel$TopCardViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public setClickable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/common/card/models/FuncListTopCardModel;->mClickable:Z

    return-void
.end method

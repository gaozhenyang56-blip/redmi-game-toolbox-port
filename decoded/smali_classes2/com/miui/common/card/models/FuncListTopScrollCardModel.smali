.class public Lcom/miui/common/card/models/FuncListTopScrollCardModel;
.super Lcom/miui/common/card/models/FunctionCardModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/common/card/models/FuncListTopScrollCardModel$TopCardViewHolder;
    }
.end annotation


# instance fields
.field private forceUpdate:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/common/card/models/FuncListTopScrollCardModel;-><init>(Lcom/miui/securityscan/model/AbsModel;)V

    return-void
.end method

.method public constructor <init>(Lcom/miui/securityscan/model/AbsModel;)V
    .locals 1

    const v0, 0x7f0e00e5

    invoke-direct {p0, v0, p1}, Lcom/miui/common/card/models/FunctionCardModel;-><init>(ILcom/miui/securityscan/model/AbsModel;)V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/common/card/models/FuncListTopScrollCardModel;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/common/card/models/FuncListTopScrollCardModel;->forceUpdate:Z

    return p0
.end method

.method static synthetic access$102(Lcom/miui/common/card/models/FuncListTopScrollCardModel;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/common/card/models/FuncListTopScrollCardModel;->forceUpdate:Z

    return p1
.end method


# virtual methods
.method public createViewHolder(Landroid/view/View;)Lcom/miui/common/card/BaseViewHolder;
    .locals 1

    new-instance v0, Lcom/miui/common/card/models/FuncListTopScrollCardModel$TopCardViewHolder;

    invoke-direct {v0, p1}, Lcom/miui/common/card/models/FuncListTopScrollCardModel$TopCardViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public setForceUpdate(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/common/card/models/FuncListTopScrollCardModel;->forceUpdate:Z

    return-void
.end method

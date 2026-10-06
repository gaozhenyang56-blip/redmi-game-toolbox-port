.class public Lcom/miui/common/card/functions/OptimizeFunction;
.super Lcom/miui/common/card/functions/BaseFunction;
.source "SourceFile"


# instance fields
.field private amoListener:Lcom/miui/securityscan/scanner/k$i;

.field private curModel:Lcom/miui/securityscan/model/AbsModel;


# direct methods
.method public constructor <init>(Lcom/miui/securityscan/scanner/k$i;Lcom/miui/securityscan/model/AbsModel;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/common/card/functions/BaseFunction;-><init>()V

    iput-object p1, p0, Lcom/miui/common/card/functions/OptimizeFunction;->amoListener:Lcom/miui/securityscan/scanner/k$i;

    iput-object p2, p0, Lcom/miui/common/card/functions/OptimizeFunction;->curModel:Lcom/miui/securityscan/model/AbsModel;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/miui/common/card/functions/OptimizeFunction;->curModel:Lcom/miui/securityscan/model/AbsModel;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/common/card/functions/OptimizeFunction;->amoListener:Lcom/miui/securityscan/scanner/k$i;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/miui/securityscan/scanner/k$i;->c(Lcom/miui/securityscan/model/AbsModel;)V

    iget-object p1, p0, Lcom/miui/common/card/functions/OptimizeFunction;->amoListener:Lcom/miui/securityscan/scanner/k$i;

    iget-object v0, p0, Lcom/miui/common/card/functions/OptimizeFunction;->curModel:Lcom/miui/securityscan/model/AbsModel;

    invoke-virtual {v0}, Lcom/miui/securityscan/model/AbsModel;->getScore()I

    move-result v0

    iget-object v1, p0, Lcom/miui/common/card/functions/OptimizeFunction;->curModel:Lcom/miui/securityscan/model/AbsModel;

    invoke-virtual {v1}, Lcom/miui/securityscan/model/AbsModel;->isDelayOptimized()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/miui/securityscan/scanner/k$i;->e(IZ)V

    :cond_0
    return-void
.end method

.method public onNegativeButtonClick()V
    .locals 2

    iget-object v0, p0, Lcom/miui/common/card/functions/OptimizeFunction;->curModel:Lcom/miui/securityscan/model/AbsModel;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/common/card/functions/OptimizeFunction;->amoListener:Lcom/miui/securityscan/scanner/k$i;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lcom/miui/securityscan/scanner/k$i;->d(Lcom/miui/securityscan/model/AbsModel;)V

    :cond_0
    return-void
.end method

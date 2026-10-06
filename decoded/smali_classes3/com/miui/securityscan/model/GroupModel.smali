.class public Lcom/miui/securityscan/model/GroupModel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private curModel:Lcom/miui/securityscan/model/AbsModel;

.field private dangerModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/securityscan/model/AbsModel;",
            ">;"
        }
    .end annotation
.end field

.field private modelGroup:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/securityscan/model/AbsModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/securityscan/model/GroupModel;->modelGroup:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/securityscan/model/GroupModel;->dangerModelList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addModel(ILcom/miui/securityscan/model/AbsModel;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/model/GroupModel;->modelGroup:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public addModel(Lcom/miui/securityscan/model/AbsModel;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/model/GroupModel;->modelGroup:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getCurModel()Lcom/miui/securityscan/model/AbsModel;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/model/GroupModel;->curModel:Lcom/miui/securityscan/model/AbsModel;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getModelList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/securityscan/model/AbsModel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/securityscan/model/GroupModel;->modelGroup:Ljava/util/List;

    return-object v0
.end method

.method public isGroupEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/model/GroupModel;->modelGroup:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public optimize(Landroid/content/Context;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/securityscan/model/GroupModel;->dangerModelList:Ljava/util/List;

    if-eqz v0, :cond_0

    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/securityscan/model/AbsModel;

    invoke-virtual {v1, p1}, Lcom/miui/securityscan/model/AbsModel;->optimize(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/miui/securityscan/model/AbsModel;->setFixed(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public scan()V
    .locals 4

    iget-object v0, p0, Lcom/miui/securityscan/model/GroupModel;->modelGroup:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/securityscan/model/GroupModel;->dangerModelList:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/miui/securityscan/model/GroupModel;->modelGroup:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/securityscan/model/AbsModel;

    invoke-virtual {v1}, Lcom/miui/securityscan/model/AbsModel;->scan()V

    invoke-virtual {v1}, Lcom/miui/securityscan/model/AbsModel;->isSafe()Lcom/miui/securityscan/model/AbsModel$State;

    move-result-object v2

    sget-object v3, Lcom/miui/securityscan/model/AbsModel$State;->SAFE:Lcom/miui/securityscan/model/AbsModel$State;

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/miui/securityscan/model/GroupModel;->dangerModelList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/securityscan/model/GroupModel;->dangerModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/miui/securityscan/model/GroupModel;->dangerModelList:Ljava/util/List;

    :goto_1
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/model/AbsModel;

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/miui/securityscan/model/GroupModel;->modelGroup:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/miui/securityscan/model/GroupModel;->modelGroup:Ljava/util/List;

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_2
    iput-object v0, p0, Lcom/miui/securityscan/model/GroupModel;->curModel:Lcom/miui/securityscan/model/AbsModel;

    :cond_5
    :goto_3
    return-void
.end method

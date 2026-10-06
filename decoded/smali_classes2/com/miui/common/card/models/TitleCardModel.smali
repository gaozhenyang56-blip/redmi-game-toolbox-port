.class public Lcom/miui/common/card/models/TitleCardModel;
.super Lcom/miui/common/card/models/BaseCardModel;
.source "SourceFile"


# instance fields
.field public gridFunctionDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/common/card/GridFunctionData;",
            ">;"
        }
    .end annotation
.end field

.field private id:J

.field private isHomePageFunc:Z

.field private position:I

.field private subCardModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/common/card/models/BaseCardModel;",
            ">;"
        }
    .end annotation
.end field

.field private subCardModelTemplate:I

.field private visible:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/common/card/models/BaseCardModel;-><init>(I)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/common/card/models/TitleCardModel;->subCardModelList:Ljava/util/List;

    const/4 p1, -0x1

    iput p1, p0, Lcom/miui/common/card/models/TitleCardModel;->subCardModelTemplate:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/common/card/models/TitleCardModel;->visible:Z

    iput p1, p0, Lcom/miui/common/card/models/TitleCardModel;->position:I

    return-void
.end method


# virtual methods
.method public addSubCardModelList(Lcom/miui/common/card/models/BaseCardModel;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/TitleCardModel;->subCardModelList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addSubCardModelList(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/common/card/models/BaseCardModel;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/common/card/models/TitleCardModel;->subCardModelList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/TitleCardModel;->subCardModelList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public getId()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/common/card/models/TitleCardModel;->id:J

    return-wide v0
.end method

.method public getPosition()I
    .locals 1

    iget v0, p0, Lcom/miui/common/card/models/TitleCardModel;->position:I

    return v0
.end method

.method public getSubCardModelList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/common/card/models/BaseCardModel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/common/card/models/TitleCardModel;->subCardModelList:Ljava/util/List;

    return-object v0
.end method

.method public getSubCardModelTemplate()I
    .locals 1

    iget v0, p0, Lcom/miui/common/card/models/TitleCardModel;->subCardModelTemplate:I

    return v0
.end method

.method public isHomePageFunc()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/common/card/models/TitleCardModel;->isHomePageFunc:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/common/card/models/TitleCardModel;->visible:Z

    return v0
.end method

.method public removeSubCardModelList(Lcom/miui/common/card/models/BaseCardModel;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/TitleCardModel;->subCardModelList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeSubCardModelList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/common/card/models/BaseCardModel;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/common/card/models/TitleCardModel;->subCardModelList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public setHomePageFunc(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/common/card/models/TitleCardModel;->isHomePageFunc:Z

    return-void
.end method

.method public setId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/common/card/models/TitleCardModel;->id:J

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    iput p1, p0, Lcom/miui/common/card/models/TitleCardModel;->position:I

    return-void
.end method

.method public setSubCardModelTemplate(I)V
    .locals 0

    iput p1, p0, Lcom/miui/common/card/models/TitleCardModel;->subCardModelTemplate:I

    return-void
.end method

.method public setVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/common/card/models/TitleCardModel;->visible:Z

    return-void
.end method

.method public validate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

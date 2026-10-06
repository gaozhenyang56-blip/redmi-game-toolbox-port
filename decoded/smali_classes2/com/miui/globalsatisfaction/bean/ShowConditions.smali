.class public Lcom/miui/globalsatisfaction/bean/ShowConditions;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private delay_time:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private miui_version:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private rom_conditions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/globalsatisfaction/bean/RomConditions;",
            ">;"
        }
    .end annotation
.end field

.field private show_time:I

.field private showed_delay_time:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/globalsatisfaction/bean/ShowedDelayTime;",
            ">;"
        }
    .end annotation
.end field

.field private validDelayTime:I


# direct methods
.method public constructor <init>(ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Lcom/miui/globalsatisfaction/bean/RomConditions;",
            ">;",
            "Ljava/util/List<",
            "Lcom/miui/globalsatisfaction/bean/ShowedDelayTime;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/globalsatisfaction/bean/ShowConditions;->validDelayTime:I

    iput p1, p0, Lcom/miui/globalsatisfaction/bean/ShowConditions;->show_time:I

    iput-object p2, p0, Lcom/miui/globalsatisfaction/bean/ShowConditions;->delay_time:Ljava/util/List;

    iput-object p3, p0, Lcom/miui/globalsatisfaction/bean/ShowConditions;->miui_version:Ljava/util/List;

    iput-object p4, p0, Lcom/miui/globalsatisfaction/bean/ShowConditions;->rom_conditions:Ljava/util/List;

    iput-object p5, p0, Lcom/miui/globalsatisfaction/bean/ShowConditions;->showed_delay_time:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getDelayTime()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/globalsatisfaction/bean/ShowConditions;->delay_time:Ljava/util/List;

    return-object v0
.end method

.method public getLastDelayTime()I
    .locals 1

    iget-object v0, p0, Lcom/miui/globalsatisfaction/bean/ShowConditions;->delay_time:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getMiuiVersion()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/globalsatisfaction/bean/ShowConditions;->miui_version:Ljava/util/List;

    return-object v0
.end method

.method public getRomConditions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/globalsatisfaction/bean/RomConditions;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/globalsatisfaction/bean/ShowConditions;->rom_conditions:Ljava/util/List;

    return-object v0
.end method

.method public getShowDelayTimeMap()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/miui/globalsatisfaction/bean/ShowedDelayTime;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/miui/globalsatisfaction/bean/ShowConditions;->showed_delay_time:Ljava/util/List;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/globalsatisfaction/bean/ShowedDelayTime;

    invoke-virtual {v2}, Lcom/miui/globalsatisfaction/bean/ShowedDelayTime;->getDelayTime()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getShowTime()I
    .locals 1

    iget v0, p0, Lcom/miui/globalsatisfaction/bean/ShowConditions;->show_time:I

    return v0
.end method

.method public getShowed_delay_time()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/globalsatisfaction/bean/ShowedDelayTime;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/globalsatisfaction/bean/ShowConditions;->showed_delay_time:Ljava/util/List;

    return-object v0
.end method

.method public getValidDelayTime()I
    .locals 1

    iget v0, p0, Lcom/miui/globalsatisfaction/bean/ShowConditions;->validDelayTime:I

    return v0
.end method

.method public setDelayTime(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/globalsatisfaction/bean/ShowConditions;->delay_time:Ljava/util/List;

    return-void
.end method

.method public setMiuiVersion(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/globalsatisfaction/bean/ShowConditions;->miui_version:Ljava/util/List;

    return-void
.end method

.method public setRomConditions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/globalsatisfaction/bean/RomConditions;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/globalsatisfaction/bean/ShowConditions;->rom_conditions:Ljava/util/List;

    return-void
.end method

.method public setShowTime(I)V
    .locals 0

    iput p1, p0, Lcom/miui/globalsatisfaction/bean/ShowConditions;->show_time:I

    return-void
.end method

.method public setShowed_delay_time(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/globalsatisfaction/bean/ShowedDelayTime;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/globalsatisfaction/bean/ShowConditions;->showed_delay_time:Ljava/util/List;

    return-void
.end method

.method public setValidDelayTime(I)V
    .locals 0

    iput p1, p0, Lcom/miui/globalsatisfaction/bean/ShowConditions;->validDelayTime:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShowConditions{show_time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/globalsatisfaction/bean/ShowConditions;->show_time:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", delay_time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/globalsatisfaction/bean/ShowConditions;->delay_time:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", miui_version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/globalsatisfaction/bean/ShowConditions;->miui_version:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", showed_delay_time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/globalsatisfaction/bean/ShowConditions;->showed_delay_time:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rom_conditions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/globalsatisfaction/bean/ShowConditions;->rom_conditions:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", validDelayTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/globalsatisfaction/bean/ShowConditions;->validDelayTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/miui/globalsatisfaction/bean/Questionnaire;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final SYMBOL:Ljava/lang/String; = "_"


# instance fields
.field private device_type:Ljava/util/List;
    .annotation runtime Lcom/miui/globalsatisfaction/utils/GSOnlyFormat;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private devices:Ljava/util/List;
    .annotation runtime Lcom/miui/globalsatisfaction/utils/GSOnlyFormat;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private display_mode:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private isWhiteDevice:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private is_valid:I

.field private language:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private memory_size:Ljava/util/List;
    .annotation runtime Lcom/miui/globalsatisfaction/utils/GSOnlyFormat;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private region:Ljava/util/List;
    .annotation runtime Lcom/miui/globalsatisfaction/utils/GSOnlyFormat;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private show_conditions:Lcom/miui/globalsatisfaction/bean/ShowConditions;

.field private storage_size:Ljava/util/List;
    .annotation runtime Lcom/miui/globalsatisfaction/utils/GSOnlyFormat;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private url:Ljava/lang/String;

.field private valid_period:I

.field private whiteDeviceInfo:Lcom/miui/globalsatisfaction/bean/WhiteDeviceInfo;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/miui/globalsatisfaction/bean/ShowConditions;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/miui/globalsatisfaction/bean/ShowConditions;",
            "I",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/globalsatisfaction/bean/Questionnaire;->isWhiteDevice:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/globalsatisfaction/bean/Questionnaire;->id:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/globalsatisfaction/bean/Questionnaire;->url:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/globalsatisfaction/bean/Questionnaire;->language:Ljava/util/List;

    iput-object p5, p0, Lcom/miui/globalsatisfaction/bean/Questionnaire;->display_mode:Ljava/lang/String;

    iput-object p6, p0, Lcom/miui/globalsatisfaction/bean/Questionnaire;->show_conditions:Lcom/miui/globalsatisfaction/bean/ShowConditions;

    iput p7, p0, Lcom/miui/globalsatisfaction/bean/Questionnaire;->valid_period:I

    iput p9, p0, Lcom/miui/globalsatisfaction/bean/Questionnaire;->is_valid:I

    return-void
.end method

.method public static parseSettingsId(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    const-string v0, "_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static productSettingsId(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public compatibleHandle()V
    .locals 6

    iget-object v0, p0, Lcom/miui/globalsatisfaction/bean/Questionnaire;->show_conditions:Lcom/miui/globalsatisfaction/bean/ShowConditions;

    invoke-virtual {v0}, Lcom/miui/globalsatisfaction/bean/ShowConditions;->getShowed_delay_time()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/miui/globalsatisfaction/bean/Questionnaire;->show_conditions:Lcom/miui/globalsatisfaction/bean/ShowConditions;

    invoke-virtual {v1}, Lcom/miui/globalsatisfaction/bean/ShowConditions;->getDelayTime()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/globalsatisfaction/bean/ShowedDelayTime;

    iget-object v2, p0, Lcom/miui/globalsatisfaction/bean/Questionnaire;->show_conditions:Lcom/miui/globalsatisfaction/bean/ShowConditions;

    invoke-virtual {v2}, Lcom/miui/globalsatisfaction/bean/ShowConditions;->getDelayTime()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v4, v3}, Lcom/miui/globalsatisfaction/bean/ShowedDelayTime;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcom/miui/globalsatisfaction/bean/Questionnaire;->show_conditions:Lcom/miui/globalsatisfaction/bean/ShowConditions;

    invoke-virtual {v1, v0}, Lcom/miui/globalsatisfaction/bean/ShowConditions;->setShowed_delay_time(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lcom/miui/globalsatisfaction/bean/Questionnaire;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lcom/miui/globalsatisfaction/bean/Questionnaire;

    invoke-virtual {p0}, Lcom/miui/globalsatisfaction/bean/Questionnaire;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/globalsatisfaction/bean/Questionnaire;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getDeviceType()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/globalsatisfaction/bean/Questionnaire;->device_type:Ljava/util/List;

    return-object v0
.end method

.method public getDevices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/globalsatisfaction/bean/Questionnaire;->devices:Ljava/util/List;

    return-object v0
.end method

.method public getDisplayMode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/globalsatisfaction/bean/Questionnaire;->display_mode:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/globalsatisfaction/bean/Questionnaire;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIsValid()I
    .locals 1

    iget v0, p0, Lcom/miui/globalsatisfaction/bean/Questionnaire;->is_valid:I

    return v0
.end method

.method public getIsWhiteDevice()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/globalsatisfaction/bean/Questionnaire;->isWhiteDevice:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/globalsatisfaction/bean/Questionnaire;->language:Ljava/util/List;

    return-object v0
.end method

.method public getMemorySize()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/globalsatisfaction/bean/Questionnaire;->memory_size:Ljava/util/List;

    return-object v0
.end method

.method public getRegion()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/globalsatisfaction/bean/Questionnaire;->region:Ljava/util/List;

    return-object v0
.end method

.method public getSettingsId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/miui/globalsatisfaction/bean/Questionnaire;->id:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/globalsatisfaction/bean/Questionnaire;->getShowConditions()Lcom/miui/globalsatisfaction/bean/ShowConditions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/globalsatisfaction/bean/ShowConditions;->getValidDelayTime()I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/globalsatisfaction/bean/Questionnaire;->productSettingsId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShowConditions()Lcom/miui/globalsatisfaction/bean/ShowConditions;
    .locals 1

    iget-object v0, p0, Lcom/miui/globalsatisfaction/bean/Questionnaire;->show_conditions:Lcom/miui/globalsatisfaction/bean/ShowConditions;

    return-object v0
.end method

.method public getStorageSize()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/globalsatisfaction/bean/Questionnaire;->storage_size:Ljava/util/List;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/globalsatisfaction/bean/Questionnaire;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getValidPeriod()I
    .locals 1

    iget v0, p0, Lcom/miui/globalsatisfaction/bean/Questionnaire;->valid_period:I

    return v0
.end method

.method public getWhiteDeviceInfo()Lcom/miui/globalsatisfaction/bean/WhiteDeviceInfo;
    .locals 1

    iget-object v0, p0, Lcom/miui/globalsatisfaction/bean/Questionnaire;->whiteDeviceInfo:Lcom/miui/globalsatisfaction/bean/WhiteDeviceInfo;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/miui/globalsatisfaction/bean/Questionnaire;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isWhiteDevice()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/globalsatisfaction/bean/Questionnaire;->isWhiteDevice:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/globalsatisfaction/bean/Questionnaire;->isWhiteDevice:Ljava/lang/String;

    invoke-static {}, Ll9/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setDeviceType(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/globalsatisfaction/bean/Questionnaire;->device_type:Ljava/util/List;

    return-void
.end method

.method public setDevices(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/globalsatisfaction/bean/Questionnaire;->devices:Ljava/util/List;

    return-void
.end method

.method public setDisplayMode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/globalsatisfaction/bean/Questionnaire;->display_mode:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/globalsatisfaction/bean/Questionnaire;->id:Ljava/lang/String;

    return-void
.end method

.method public setIsValid(I)V
    .locals 0

    iput p1, p0, Lcom/miui/globalsatisfaction/bean/Questionnaire;->is_valid:I

    return-void
.end method

.method public setIsWhiteDevice(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/globalsatisfaction/bean/Questionnaire;->isWhiteDevice:Ljava/lang/String;

    return-void
.end method

.method public setLanguage(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/globalsatisfaction/bean/Questionnaire;->language:Ljava/util/List;

    return-void
.end method

.method public setMemorySize(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/globalsatisfaction/bean/Questionnaire;->memory_size:Ljava/util/List;

    return-void
.end method

.method public setRegion(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/globalsatisfaction/bean/Questionnaire;->region:Ljava/util/List;

    return-void
.end method

.method public setShowConditions(Lcom/miui/globalsatisfaction/bean/ShowConditions;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/globalsatisfaction/bean/Questionnaire;->show_conditions:Lcom/miui/globalsatisfaction/bean/ShowConditions;

    return-void
.end method

.method public setStorageSize(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/globalsatisfaction/bean/Questionnaire;->storage_size:Ljava/util/List;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/globalsatisfaction/bean/Questionnaire;->url:Ljava/lang/String;

    return-void
.end method

.method public setValidPeriod(I)V
    .locals 0

    iput p1, p0, Lcom/miui/globalsatisfaction/bean/Questionnaire;->valid_period:I

    return-void
.end method

.method public setWhiteDeviceInfo(Lcom/miui/globalsatisfaction/bean/WhiteDeviceInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/globalsatisfaction/bean/Questionnaire;->whiteDeviceInfo:Lcom/miui/globalsatisfaction/bean/WhiteDeviceInfo;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Questionnaire{isWhiteDevice=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/globalsatisfaction/bean/Questionnaire;->isWhiteDevice:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", whiteDeviceInfo="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/globalsatisfaction/bean/Questionnaire;->whiteDeviceInfo:Lcom/miui/globalsatisfaction/bean/WhiteDeviceInfo;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", id=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/globalsatisfaction/bean/Questionnaire;->id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", url=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/globalsatisfaction/bean/Questionnaire;->url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", language="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/globalsatisfaction/bean/Questionnaire;->language:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", devices="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/globalsatisfaction/bean/Questionnaire;->devices:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", region="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/globalsatisfaction/bean/Questionnaire;->region:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", display_mode=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/globalsatisfaction/bean/Questionnaire;->display_mode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", show_conditions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/globalsatisfaction/bean/Questionnaire;->show_conditions:Lcom/miui/globalsatisfaction/bean/ShowConditions;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", valid_period="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/globalsatisfaction/bean/Questionnaire;->valid_period:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", is_valid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/globalsatisfaction/bean/Questionnaire;->is_valid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", device_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/globalsatisfaction/bean/Questionnaire;->device_type:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", storage_size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/globalsatisfaction/bean/Questionnaire;->storage_size:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", memory_size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/globalsatisfaction/bean/Questionnaire;->memory_size:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateShowState(ZZ)V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/globalsatisfaction/bean/Questionnaire;->isWhiteDevice()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/miui/globalsatisfaction/bean/Questionnaire;->whiteDeviceInfo:Lcom/miui/globalsatisfaction/bean/WhiteDeviceInfo;

    invoke-virtual {p1}, Lcom/miui/globalsatisfaction/bean/WhiteDeviceInfo;->getDisplayTimeStampNotification()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/globalsatisfaction/bean/Questionnaire;->whiteDeviceInfo:Lcom/miui/globalsatisfaction/bean/WhiteDeviceInfo;

    invoke-virtual {p1, v0}, Lcom/miui/globalsatisfaction/bean/WhiteDeviceInfo;->setDisplayTimeStampNotification(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    iget-object p1, p0, Lcom/miui/globalsatisfaction/bean/Questionnaire;->whiteDeviceInfo:Lcom/miui/globalsatisfaction/bean/WhiteDeviceInfo;

    invoke-virtual {p1}, Lcom/miui/globalsatisfaction/bean/WhiteDeviceInfo;->getDisplayTimeStampSettings()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/globalsatisfaction/bean/Questionnaire;->whiteDeviceInfo:Lcom/miui/globalsatisfaction/bean/WhiteDeviceInfo;

    invoke-virtual {p1, v0}, Lcom/miui/globalsatisfaction/bean/WhiteDeviceInfo;->setDisplayTimeStampSettings(Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/miui/globalsatisfaction/bean/Questionnaire;->whiteDeviceInfo:Lcom/miui/globalsatisfaction/bean/WhiteDeviceInfo;

    invoke-virtual {p1}, Lcom/miui/globalsatisfaction/bean/WhiteDeviceInfo;->getDisplayTimeStampNotification()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/miui/globalsatisfaction/bean/Questionnaire;->whiteDeviceInfo:Lcom/miui/globalsatisfaction/bean/WhiteDeviceInfo;

    invoke-virtual {p1}, Lcom/miui/globalsatisfaction/bean/WhiteDeviceInfo;->getDisplayTimeStampSettings()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    iput v2, p0, Lcom/miui/globalsatisfaction/bean/Questionnaire;->is_valid:I

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/miui/globalsatisfaction/bean/Questionnaire;->show_conditions:Lcom/miui/globalsatisfaction/bean/ShowConditions;

    invoke-virtual {v1}, Lcom/miui/globalsatisfaction/bean/ShowConditions;->getShowDelayTimeMap()Ljava/util/Map;

    move-result-object v1

    iget-object v3, p0, Lcom/miui/globalsatisfaction/bean/Questionnaire;->show_conditions:Lcom/miui/globalsatisfaction/bean/ShowConditions;

    invoke-virtual {v3}, Lcom/miui/globalsatisfaction/bean/ShowConditions;->getValidDelayTime()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {}, Ll9/d;->d()Ll9/d;

    move-result-object p1

    invoke-virtual {p0}, Lcom/miui/globalsatisfaction/bean/Questionnaire;->getSettingsId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ll9/d;->h(Ljava/lang/String;)V

    invoke-static {}, Ll9/d;->d()Ll9/d;

    move-result-object p1

    invoke-virtual {p1, v0}, Ll9/d;->i(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/globalsatisfaction/bean/Questionnaire;->show_conditions:Lcom/miui/globalsatisfaction/bean/ShowConditions;

    invoke-virtual {p1}, Lcom/miui/globalsatisfaction/bean/ShowConditions;->getShowed_delay_time()Ljava/util/List;

    move-result-object p1

    new-instance v1, Lcom/miui/globalsatisfaction/bean/ShowedDelayTime;

    xor-int/lit8 p2, p2, 0x1

    invoke-direct {v1, v3, v0, p2}, Lcom/miui/globalsatisfaction/bean/ShowedDelayTime;-><init>(ILjava/lang/String;Z)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/globalsatisfaction/bean/ShowedDelayTime;

    invoke-virtual {p1, v2}, Lcom/miui/globalsatisfaction/bean/ShowedDelayTime;->setValid(Z)V

    :cond_4
    :goto_1
    return-void
.end method

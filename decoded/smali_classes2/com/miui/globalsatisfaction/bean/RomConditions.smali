.class public Lcom/miui/globalsatisfaction/bean/RomConditions;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private rom_condition:Lcom/miui/globalsatisfaction/bean/RomCondition;


# direct methods
.method public constructor <init>(Lcom/miui/globalsatisfaction/bean/RomCondition;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/globalsatisfaction/bean/RomConditions;->rom_condition:Lcom/miui/globalsatisfaction/bean/RomCondition;

    return-void
.end method


# virtual methods
.method public getRomCondition()Lcom/miui/globalsatisfaction/bean/RomCondition;
    .locals 1

    iget-object v0, p0, Lcom/miui/globalsatisfaction/bean/RomConditions;->rom_condition:Lcom/miui/globalsatisfaction/bean/RomCondition;

    return-object v0
.end method

.method public setRomCondition(Lcom/miui/globalsatisfaction/bean/RomCondition;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/globalsatisfaction/bean/RomConditions;->rom_condition:Lcom/miui/globalsatisfaction/bean/RomCondition;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RomConditions{rom_condition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/globalsatisfaction/bean/RomConditions;->rom_condition:Lcom/miui/globalsatisfaction/bean/RomCondition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

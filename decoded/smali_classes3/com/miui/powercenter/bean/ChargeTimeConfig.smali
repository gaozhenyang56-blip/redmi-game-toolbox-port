.class public Lcom/miui/powercenter/bean/ChargeTimeConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private device_standard_power:I

.field private is_double_battery:I

.field private is_fast_charge_mode:I

.field private wattage_120:I

.field private wattage_210:I

.field private wattage_33:I

.field private wattage_55:I

.field private wattage_65:I

.field private wattage_67:I

.field private wattage_90:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDevice_standard_power()I
    .locals 1

    iget v0, p0, Lcom/miui/powercenter/bean/ChargeTimeConfig;->device_standard_power:I

    return v0
.end method

.method public getIs_double_battery()I
    .locals 1

    iget v0, p0, Lcom/miui/powercenter/bean/ChargeTimeConfig;->is_double_battery:I

    return v0
.end method

.method public getIs_fast_charge_mode()I
    .locals 1

    iget v0, p0, Lcom/miui/powercenter/bean/ChargeTimeConfig;->is_fast_charge_mode:I

    return v0
.end method

.method public getWattage_120()I
    .locals 1

    iget v0, p0, Lcom/miui/powercenter/bean/ChargeTimeConfig;->wattage_120:I

    return v0
.end method

.method public getWattage_210()I
    .locals 1

    iget v0, p0, Lcom/miui/powercenter/bean/ChargeTimeConfig;->wattage_210:I

    return v0
.end method

.method public getWattage_33()I
    .locals 1

    iget v0, p0, Lcom/miui/powercenter/bean/ChargeTimeConfig;->wattage_33:I

    return v0
.end method

.method public getWattage_55()I
    .locals 1

    iget v0, p0, Lcom/miui/powercenter/bean/ChargeTimeConfig;->wattage_55:I

    return v0
.end method

.method public getWattage_65()I
    .locals 1

    iget v0, p0, Lcom/miui/powercenter/bean/ChargeTimeConfig;->wattage_65:I

    return v0
.end method

.method public getWattage_67()I
    .locals 1

    iget v0, p0, Lcom/miui/powercenter/bean/ChargeTimeConfig;->wattage_67:I

    return v0
.end method

.method public getWattage_90()I
    .locals 1

    iget v0, p0, Lcom/miui/powercenter/bean/ChargeTimeConfig;->wattage_90:I

    return v0
.end method

.method public setDevice_standard_power(I)V
    .locals 0

    iput p1, p0, Lcom/miui/powercenter/bean/ChargeTimeConfig;->device_standard_power:I

    return-void
.end method

.method public setIs_double_battery(I)V
    .locals 0

    iput p1, p0, Lcom/miui/powercenter/bean/ChargeTimeConfig;->is_double_battery:I

    return-void
.end method

.method public setIs_fast_charge_mode(I)V
    .locals 0

    iput p1, p0, Lcom/miui/powercenter/bean/ChargeTimeConfig;->is_fast_charge_mode:I

    return-void
.end method

.method public setWattage_120(I)V
    .locals 0

    iput p1, p0, Lcom/miui/powercenter/bean/ChargeTimeConfig;->wattage_120:I

    return-void
.end method

.method public setWattage_210(I)V
    .locals 0

    iput p1, p0, Lcom/miui/powercenter/bean/ChargeTimeConfig;->wattage_210:I

    return-void
.end method

.method public setWattage_33(I)V
    .locals 0

    iput p1, p0, Lcom/miui/powercenter/bean/ChargeTimeConfig;->wattage_33:I

    return-void
.end method

.method public setWattage_55(I)V
    .locals 0

    iput p1, p0, Lcom/miui/powercenter/bean/ChargeTimeConfig;->wattage_55:I

    return-void
.end method

.method public setWattage_65(I)V
    .locals 0

    iput p1, p0, Lcom/miui/powercenter/bean/ChargeTimeConfig;->wattage_65:I

    return-void
.end method

.method public setWattage_67(I)V
    .locals 0

    iput p1, p0, Lcom/miui/powercenter/bean/ChargeTimeConfig;->wattage_67:I

    return-void
.end method

.method public setWattage_90(I)V
    .locals 0

    iput p1, p0, Lcom/miui/powercenter/bean/ChargeTimeConfig;->wattage_90:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChargeTimeConfig{device_standard_power="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/powercenter/bean/ChargeTimeConfig;->device_standard_power:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", is_fast_charge_mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/powercenter/bean/ChargeTimeConfig;->is_fast_charge_mode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", is_double_battery="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/powercenter/bean/ChargeTimeConfig;->is_double_battery:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", wattage_33="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/powercenter/bean/ChargeTimeConfig;->wattage_33:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", wattage_55="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/powercenter/bean/ChargeTimeConfig;->wattage_55:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", wattage_65="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/powercenter/bean/ChargeTimeConfig;->wattage_65:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", wattage_67="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/powercenter/bean/ChargeTimeConfig;->wattage_67:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", wattage_90="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/powercenter/bean/ChargeTimeConfig;->wattage_90:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", wattage_120="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/powercenter/bean/ChargeTimeConfig;->wattage_120:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", wattage_210="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/powercenter/bean/ChargeTimeConfig;->wattage_210:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

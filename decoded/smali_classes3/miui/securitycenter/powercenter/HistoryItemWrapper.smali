.class public Lmiui/securitycenter/powercenter/HistoryItemWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/securitycenter/powercenter/HistoryItemWrapper$EventTag;
    }
.end annotation


# static fields
.field static final CMD_CURRENT_TIME:B = 0x5t

.field static final CMD_NULL:B = -0x1t

.field static final CMD_OVERFLOW:B = 0x6t

.field static final CMD_RESET:B = 0x7t

.field static final CMD_SHUTDOWN:B = 0x8t

.field static final CMD_START:B = 0x4t

.field static final CMD_UPDATE:B


# instance fields
.field batteryHealth:B

.field batteryLevel:B

.field batteryPlugType:B

.field batteryStatus:B

.field batteryTemperature:S

.field batteryVoltage:C

.field charging:Z

.field cmd:B

.field cpuRunning:Z

.field eventCode:I

.field eventTag:Lmiui/securitycenter/powercenter/HistoryItemWrapper$EventTag;

.field gpsOn:Z

.field phoneSignalStrength:I

.field screenOn:Z

.field states:I

.field states2:I

.field time:J

.field wakelockOn:Z

.field wifiOn:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->cmd:B

    return-void
.end method


# virtual methods
.method public getObjectValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    const-string v0, "time"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->time:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "cmd"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-byte p1, p0, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->cmd:B

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_1
    const-string v0, "batteryLevel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-byte p1, p0, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->batteryLevel:B

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_2
    const-string v0, "batteryStatus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-byte p1, p0, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->batteryStatus:B

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_3
    const-string v0, "batteryHealth"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-byte p1, p0, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->batteryHealth:B

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_4
    const-string v0, "batteryPlugType"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-byte p1, p0, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->batteryPlugType:B

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_5
    const-string v0, "batteryTemperature"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-short p1, p0, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->batteryTemperature:S

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_6
    const-string v0, "batteryVoltage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-char p1, p0, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->batteryVoltage:C

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_7
    const-string v0, "wifiOn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-boolean p1, p0, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->wifiOn:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_8
    const-string v0, "gpsOn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean p1, p0, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->gpsOn:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_9
    const-string v0, "charging"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-boolean p1, p0, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->charging:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_a
    const-string v0, "screenOn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-boolean p1, p0, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->screenOn:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_b
    const-string v0, "wakelockOn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean p1, p0, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->wakelockOn:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_c
    const-string v0, "phoneSignalStrength"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget p1, p0, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->phoneSignalStrength:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_d
    const-string v0, "states"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget p1, p0, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->states:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_e
    const-string v0, "states2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget p1, p0, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->states2:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_f
    const-string v0, "eventCode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget p1, p0, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->eventCode:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_10
    const-string v0, "eventTag"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object p1, p0, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->eventTag:Lmiui/securitycenter/powercenter/HistoryItemWrapper$EventTag;

    return-object p1

    :cond_11
    const-string v0, "cpuRunning"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    iget-boolean p1, p0, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->cpuRunning:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_12
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTime()J
    .locals 2

    iget-wide v0, p0, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->time:J

    return-wide v0
.end method

.method public isDeltaData()Z
    .locals 1

    iget-byte v0, p0, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->cmd:B

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOverflow()Z
    .locals 2

    iget-byte v0, p0, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->cmd:B

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

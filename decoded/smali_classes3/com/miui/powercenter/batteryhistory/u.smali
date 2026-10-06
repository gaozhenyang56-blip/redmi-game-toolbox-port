.class public Lcom/miui/powercenter/batteryhistory/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/miui/powercenter/batteryhistory/u;",
        ">;"
    }
.end annotation


# instance fields
.field public a:J

.field public b:B

.field public c:B

.field public d:B

.field public e:B

.field public f:B

.field public g:S

.field public h:C

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:I

.field public o:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/miui/powercenter/batteryhistory/u;->b:B

    return-void
.end method

.method public constructor <init>(Lmiui/securitycenter/powercenter/HistoryItemWrapper;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/miui/powercenter/batteryhistory/u;->b:B

    const-string v0, "time"

    invoke-virtual {p1, v0}, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/powercenter/batteryhistory/u;->a:J

    const-string v0, "cmd"

    invoke-virtual {p1, v0}, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->byteValue()B

    move-result v0

    iput-byte v0, p0, Lcom/miui/powercenter/batteryhistory/u;->b:B

    const-string v0, "batteryLevel"

    invoke-virtual {p1, v0}, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->byteValue()B

    move-result v0

    iput-byte v0, p0, Lcom/miui/powercenter/batteryhistory/u;->c:B

    const-string v0, "batteryStatus"

    invoke-virtual {p1, v0}, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->byteValue()B

    move-result v0

    iput-byte v0, p0, Lcom/miui/powercenter/batteryhistory/u;->d:B

    const-string v0, "batteryHealth"

    invoke-virtual {p1, v0}, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->byteValue()B

    move-result v0

    iput-byte v0, p0, Lcom/miui/powercenter/batteryhistory/u;->e:B

    const-string v0, "batteryPlugType"

    invoke-virtual {p1, v0}, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->byteValue()B

    move-result v0

    iput-byte v0, p0, Lcom/miui/powercenter/batteryhistory/u;->f:B

    const-string v0, "batteryTemperature"

    invoke-virtual {p1, v0}, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->shortValue()S

    move-result v0

    iput-short v0, p0, Lcom/miui/powercenter/batteryhistory/u;->g:S

    const-string v0, "batteryVoltage"

    invoke-virtual {p1, v0}, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/miui/powercenter/batteryhistory/u;->h:C

    const-string v0, "wifiOn"

    invoke-virtual {p1, v0}, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/powercenter/batteryhistory/u;->i:Z

    const-string v0, "gpsOn"

    invoke-virtual {p1, v0}, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/powercenter/batteryhistory/u;->j:Z

    const-string v0, "charging"

    invoke-virtual {p1, v0}, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/powercenter/batteryhistory/u;->k:Z

    const-string v0, "screenOn"

    invoke-virtual {p1, v0}, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/powercenter/batteryhistory/u;->l:Z

    const-string v0, "wakelockOn"

    invoke-virtual {p1, v0}, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/powercenter/batteryhistory/u;->m:Z

    const-string v0, "phoneSignalStrength"

    invoke-virtual {p1, v0}, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/miui/powercenter/batteryhistory/u;->n:I

    const-string v0, "cpuRunning"

    invoke-virtual {p1, v0}, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/miui/powercenter/batteryhistory/u;->m:Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    :goto_0
    iput-boolean p1, p0, Lcom/miui/powercenter/batteryhistory/u;->o:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/miui/powercenter/batteryhistory/u;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/powercenter/batteryhistory/u;->a:J

    return-wide v0
.end method

.method public c()Z
    .locals 1

    iget-byte v0, p0, Lcom/miui/powercenter/batteryhistory/u;->b:B

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/miui/powercenter/batteryhistory/u;

    invoke-virtual {p0, p1}, Lcom/miui/powercenter/batteryhistory/u;->a(Lcom/miui/powercenter/batteryhistory/u;)I

    move-result p1

    return p1
.end method

.method public d()Z
    .locals 2

    iget-byte v0, p0, Lcom/miui/powercenter/batteryhistory/u;->b:B

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.class public Lcom/miui/networkassistant/provider/DataCursor$DataEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/networkassistant/provider/DataCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataEntry"
.end annotation


# instance fields
.field private doubleValue:Ljava/lang/Double;

.field private longValue:Ljava/lang/Long;

.field private strValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(D)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;->doubleValue:Ljava/lang/Double;

    return-void
.end method

.method public constructor <init>(F)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;->doubleValue:Ljava/lang/Double;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;->longValue:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;->longValue:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;->strValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;->strValue:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;->doubleValue:Ljava/lang/Double;

    iput-object v0, p0, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;->longValue:Ljava/lang/Long;

    return-void
.end method

.method public getDouble()D
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;->doubleValue:Ljava/lang/Double;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;->longValue:Ljava/lang/Long;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Long;->doubleValue()D

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;->strValue:Ljava/lang/String;

    if-eqz v0, :cond_2

    :try_start_0
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    :cond_2
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFloat()F
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;->doubleValue:Ljava/lang/Double;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;->longValue:Ljava/lang/Long;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Long;->floatValue()F

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;->strValue:Ljava/lang/String;

    if-eqz v0, :cond_2

    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getInt()I
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;->longValue:Ljava/lang/Long;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;->doubleValue:Ljava/lang/Double;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;->strValue:Ljava/lang/String;

    if-eqz v0, :cond_2

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public getLong()J
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;->longValue:Ljava/lang/Long;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;->doubleValue:Ljava/lang/Double;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Double;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;->strValue:Ljava/lang/String;

    if-eqz v0, :cond_2

    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    :cond_2
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getShort()S
    .locals 1

    invoke-virtual {p0}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;->getInt()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;->strValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;->doubleValue:Ljava/lang/Double;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;->longValue:Ljava/lang/Long;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;->strValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;->doubleValue:Ljava/lang/Double;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    return v0

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;->longValue:Ljava/lang/Long;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public isNull()Z
    .locals 1

    invoke-virtual {p0}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;->getType()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public set(D)V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;->clear()V

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;->doubleValue:Ljava/lang/Double;

    return-void
.end method

.method public set(F)V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;->clear()V

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;->doubleValue:Ljava/lang/Double;

    return-void
.end method

.method public set(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;->clear()V

    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;->longValue:Ljava/lang/Long;

    return-void
.end method

.method public set(J)V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;->clear()V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;->longValue:Ljava/lang/Long;

    return-void
.end method

.method public set(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;->clear()V

    iput-object p1, p0, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;->strValue:Ljava/lang/String;

    return-void
.end method

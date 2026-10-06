.class public Lcom/miui/luckymoney/webapi/MasterSwitchResult;
.super Lcom/miui/luckymoney/webapi/RequestResult;
.source "SourceFile"


# static fields
.field private static TAG:Ljava/lang/String; = "MasterSwitchResult"


# instance fields
.field private defaultFrequency:J

.field private endTime:J

.field private hotFrequency:J

.field private masterSwitch:Z

.field private startTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/luckymoney/webapi/RequestResult;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected doParseJson(Lorg/json/JSONObject;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/miui/luckymoney/webapi/RequestResult;->doParseJson(Lorg/json/JSONObject;)V

    invoke-virtual {p0}, Lcom/miui/luckymoney/webapi/RequestResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/miui/luckymoney/webapi/RequestResult;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/miui/luckymoney/webapi/MasterSwitchResult;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x1

    const-string v1, "masterSwitch"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/luckymoney/webapi/MasterSwitchResult;->masterSwitch:Z

    const-wide/32 v0, 0xa4cb800

    const-string v2, "defaultFrequency"

    invoke-virtual {p1, v2, v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/luckymoney/webapi/MasterSwitchResult;->defaultFrequency:J

    const-wide/16 v0, 0x0

    const-string v2, "startTime"

    invoke-virtual {p1, v2, v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/luckymoney/webapi/MasterSwitchResult;->startTime:J

    const-wide/16 v0, 0x1

    const-string v2, "endTime"

    invoke-virtual {p1, v2, v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/luckymoney/webapi/MasterSwitchResult;->endTime:J

    const-wide/32 v0, 0x1499700

    const-string v2, "hotFrequency"

    invoke-virtual {p1, v2, v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/luckymoney/webapi/MasterSwitchResult;->hotFrequency:J

    invoke-virtual {p0}, Lcom/miui/luckymoney/webapi/MasterSwitchResult;->saveToLocal()V

    return-void
.end method

.method public saveToLocal()V
    .locals 5

    invoke-virtual {p0}, Lcom/miui/luckymoney/webapi/RequestResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/miui/common/e;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/luckymoney/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/luckymoney/config/CommonConfig;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/luckymoney/webapi/RequestResult;->getJson()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/luckymoney/config/CommonConfig;->setMasterSwitchConfig(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/miui/luckymoney/webapi/MasterSwitchResult;->masterSwitch:Z

    if-nez v1, :cond_1

    invoke-virtual {v0, v1}, Lcom/miui/luckymoney/config/CommonConfig;->setXiaomiLuckyMoneyEnable(Z)V

    :cond_1
    iget-wide v1, p0, Lcom/miui/luckymoney/webapi/MasterSwitchResult;->defaultFrequency:J

    const-wide/32 v3, 0x4d3f6400

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/luckymoney/config/CommonConfig;->setDefaultUpdateFrequency(J)V

    iget-wide v1, p0, Lcom/miui/luckymoney/webapi/MasterSwitchResult;->startTime:J

    invoke-virtual {v0, v1, v2}, Lcom/miui/luckymoney/config/CommonConfig;->setHotStartTime(J)V

    iget-wide v1, p0, Lcom/miui/luckymoney/webapi/MasterSwitchResult;->endTime:J

    invoke-virtual {v0, v1, v2}, Lcom/miui/luckymoney/config/CommonConfig;->setHotEndTime(J)V

    iget-wide v1, p0, Lcom/miui/luckymoney/webapi/MasterSwitchResult;->hotFrequency:J

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/luckymoney/config/CommonConfig;->setHotFrequency(J)V

    return-void
.end method

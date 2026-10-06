.class public Lcom/miui/powercenter/utils/ChargeInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final JSON_KEY_CHARGED:Ljava/lang/String; = "charged"

.field private static final JSON_KEY_CHARGING:Ljava/lang/String; = "charging"

.field private static final JSON_KEY_DURATION:Ljava/lang/String; = "duration"


# instance fields
.field public charged:J

.field public charging:J

.field public duration:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/miui/powercenter/utils/ChargeInfo;->charging:J

    iput-wide p3, p0, Lcom/miui/powercenter/utils/ChargeInfo;->charged:J

    iput-wide p5, p0, Lcom/miui/powercenter/utils/ChargeInfo;->duration:J

    return-void
.end method

.method public static from(Lorg/json/JSONObject;)Lcom/miui/powercenter/utils/ChargeInfo;
    .locals 8

    const-string v0, "charging"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string v0, "charged"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string v0, "duration"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    new-instance p0, Lcom/miui/powercenter/utils/ChargeInfo;

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/miui/powercenter/utils/ChargeInfo;-><init>(JJJ)V

    return-object p0
.end method


# virtual methods
.method public toJson()Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "charging"

    iget-wide v2, p0, Lcom/miui/powercenter/utils/ChargeInfo;->charging:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "charged"

    iget-wide v2, p0, Lcom/miui/powercenter/utils/ChargeInfo;->charged:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "duration"

    iget-wide v2, p0, Lcom/miui/powercenter/utils/ChargeInfo;->duration:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

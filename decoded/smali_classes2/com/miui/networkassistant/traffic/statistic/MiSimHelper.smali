.class public Lcom/miui/networkassistant/traffic/statistic/MiSimHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final UNIT_RATE:I = 0x400


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentMonthPackage:J

.field private mCurrentMonthRemainedFlow:J

.field private mLastMonthRemainedFlow:J

.field private mMonthUsedFlow:J

.field private mSimName:Ljava/lang/String;

.field private mTotalMonthFlow:J

.field private mTotalRemainedFlow:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/networkassistant/traffic/statistic/MiSimHelper;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getCurrentMonthPackage()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/networkassistant/traffic/statistic/MiSimHelper;->mCurrentMonthPackage:J

    return-wide v0
.end method

.method public getCurrentMonthRemainedFlow()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/networkassistant/traffic/statistic/MiSimHelper;->mCurrentMonthRemainedFlow:J

    return-wide v0
.end method

.method public getLastMonthRemainedFlow()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/networkassistant/traffic/statistic/MiSimHelper;->mLastMonthRemainedFlow:J

    return-wide v0
.end method

.method public getMonthUsedFlow()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/networkassistant/traffic/statistic/MiSimHelper;->mMonthUsedFlow:J

    return-wide v0
.end method

.method public getSimName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/statistic/MiSimHelper;->mSimName:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalMonthFlow()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/networkassistant/traffic/statistic/MiSimHelper;->mTotalMonthFlow:J

    return-wide v0
.end method

.method public getTotalRemainedFlow()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/networkassistant/traffic/statistic/MiSimHelper;->mTotalRemainedFlow:J

    return-wide v0
.end method

.method public refreshMiSimFlowData(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    const-string v0, "com.miui.virtualsim"

    invoke-static {p1, v0}, Lx4/f1;->r(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    const/16 v0, 0x320

    if-lt p1, v0, :cond_0

    sget-object p1, Lcom/miui/networkassistant/utils/SettingsUtils;->INSTANCE:Lcom/miui/networkassistant/utils/SettingsUtils;

    invoke-virtual {p1}, Lcom/miui/networkassistant/utils/SettingsUtils;->getVsimTrafficResult()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "imsi"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "totalFlowSize"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/miui/networkassistant/traffic/statistic/MiSimHelper;->mTotalMonthFlow:J

    const-string p1, "totalFlowRemain"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/miui/networkassistant/traffic/statistic/MiSimHelper;->mTotalRemainedFlow:J

    const-string p1, "alreadyUsedFlow"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/miui/networkassistant/traffic/statistic/MiSimHelper;->mMonthUsedFlow:J

    const-string p1, "appName"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/networkassistant/traffic/statistic/MiSimHelper;->mSimName:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u603b\u5269\u4f59\u6d41\u91cf : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/miui/networkassistant/traffic/statistic/MiSimHelper;->mTotalRemainedFlow:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\n\u672c\u6708\u603b\u6d41\u91cf : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/miui/networkassistant/traffic/statistic/MiSimHelper;->mTotalMonthFlow:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\n\u672c\u6708\u5df2\u7528\u6d41\u91cf : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/miui/networkassistant/traffic/statistic/MiSimHelper;->mMonthUsedFlow:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\n\u4e0a\u6708\u5269\u4f59\u6d41\u91cf : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/miui/networkassistant/traffic/statistic/MiSimHelper;->mLastMonthRemainedFlow:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\n\u672c\u6708\u5269\u4f59\u6d41\u91cf : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/miui/networkassistant/traffic/statistic/MiSimHelper;->mCurrentMonthRemainedFlow:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\n\u672c\u6708\u5957\u9910\u6d41\u91cf : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/miui/networkassistant/traffic/statistic/MiSimHelper;->mCurrentMonthPackage:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\nSim\u5361\u540d\u79f0 : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/networkassistant/traffic/statistic/MiSimHelper;->mSimName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/miui/networkassistant/traffic/correction/TrafficCorrectionManager;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTrafficCorrectionInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->getInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;->getInstance(Landroid/content/Context;Ljava/lang/String;ILcom/miui/networkassistant/traffic/correction/ITrafficCorrection;)Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;

    move-result-object p0

    return-object p0
.end method

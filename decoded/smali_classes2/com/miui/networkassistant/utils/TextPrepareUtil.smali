.class public Lcom/miui/networkassistant/utils/TextPrepareUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDualCardSuffix(Landroid/content/Context;I)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const p1, 0x7f1206d8

    goto :goto_0

    :cond_0
    const p1, 0x7f1206d9

    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDualCardTitle(Landroid/content/Context;Ljava/lang/CharSequence;I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p0, p2}, Lcom/miui/networkassistant/utils/TextPrepareUtil;->getDualCardSuffix(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v0, p1

    const-string p0, "%s-%s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getOperatorName(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    invoke-static {p2}, Lcom/miui/networkassistant/utils/TelephonyUtil;->getOperator(I)I

    move-result p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz p1, :cond_4

    const/4 p2, 0x1

    if-eq p1, p2, :cond_3

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    const/4 p2, 0x4

    if-eq p1, p2, :cond_1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    const-string p0, ""

    goto :goto_1

    :cond_0
    const p1, 0x7f120f81

    goto :goto_0

    :cond_1
    const p1, 0x7f120f83

    goto :goto_0

    :cond_2
    const p1, 0x7f120f84

    goto :goto_0

    :cond_3
    const p1, 0x7f120f85

    goto :goto_0

    :cond_4
    const p1, 0x7f120f82

    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static getOperatorNumber(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/miui/networkassistant/utils/TelephonyUtil;->getOperator(I)I

    move-result p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 p0, 0x4

    if-eq p1, p0, :cond_0

    const-string p0, ""

    goto :goto_1

    :cond_0
    const-string p0, "400-922-3838"

    goto :goto_1

    :cond_1
    const p1, 0x7f120f88

    goto :goto_0

    :cond_2
    const p1, 0x7f120f89

    goto :goto_0

    :cond_3
    const p1, 0x7f120f87

    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static getOperatorTips(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    invoke-static {p0, p1, p2}, Lcom/miui/networkassistant/utils/TextPrepareUtil;->getOperatorName(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p2}, Lcom/miui/networkassistant/utils/TextPrepareUtil;->getOperatorNumber(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    const v0, 0x7f1219f3

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPreAdjustTimeTips(Landroid/content/Context;JJ)Ljava/lang/String;
    .locals 7

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sub-long/2addr p3, p1

    const-wide/32 v0, 0x5265c00

    div-long/2addr p3, v0

    long-to-int p3, p3

    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getTodayTimeMillis()J

    move-result-wide v2

    cmp-long p4, p1, v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x3

    if-ltz p4, :cond_0

    const p3, 0x7f1200c6

    new-array p4, v5, [Ljava/lang/Object;

    invoke-static {v6}, Lcom/miui/networkassistant/utils/DateUtil;->getDateFormat(I)Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/miui/networkassistant/utils/DateUtil;->formatDataTime(JLjava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p4, v4

    invoke-virtual {p0, p3, p4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    if-gez p4, :cond_1

    sub-long/2addr v2, v0

    cmp-long p4, p1, v2

    if-ltz p4, :cond_1

    const p3, 0x7f1200c8

    new-array p4, v5, [Ljava/lang/Object;

    invoke-static {v6}, Lcom/miui/networkassistant/utils/DateUtil;->getDateFormat(I)Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/miui/networkassistant/utils/DateUtil;->formatDataTime(JLjava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p4, v4

    invoke-virtual {p0, p3, p4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    if-gt p3, v6, :cond_2

    const p1, 0x7f1200c7

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p1, 0x7

    if-gt p3, p1, :cond_3

    const p1, 0x7f1200c5

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const/16 p1, 0x1e

    if-ge p3, p1, :cond_4

    const p1, 0x7f1200c4

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    const p1, 0x7f1200c3

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

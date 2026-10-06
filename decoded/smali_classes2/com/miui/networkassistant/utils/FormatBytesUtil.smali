.class public Lcom/miui/networkassistant/utils/FormatBytesUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final GB:J = 0x40000000L

.field public static final KB:J = 0x400L

.field public static final MB:J = 0x100000L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatBytes(Landroid/content/Context;J)Ljava/lang/String;
    .locals 6

    const-wide/32 v0, 0x40000000

    cmp-long v0, p1, v0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const/4 v3, 0x1

    if-ltz v0, :cond_0

    long-to-double p1, p1

    mul-double/2addr p1, v1

    const-wide/high16 v0, 0x41d0000000000000L    # 1.073741824E9

    div-double/2addr p1, v0

    invoke-static {p0}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->getGBString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    goto :goto_0

    :cond_0
    const-wide/32 v4, 0x100000

    cmp-long v0, p1, v4

    if-ltz v0, :cond_1

    long-to-double p1, p1

    mul-double/2addr p1, v1

    const-wide/high16 v0, 0x4130000000000000L    # 1048576.0

    div-double/2addr p1, v0

    invoke-static {p0}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->getMBString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-wide/16 v4, 0x400

    cmp-long v0, p1, v4

    long-to-double p1, p1

    mul-double/2addr p1, v1

    if-ltz v0, :cond_2

    const-wide/high16 v0, 0x4090000000000000L    # 1024.0

    div-double/2addr p1, v0

    invoke-static {p0}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->getKBString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->getBString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {p0, p1, p2, v0, v3}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->textFormatWithBlank(Landroid/content/Context;DLjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatBytes(Landroid/content/Context;JI)Ljava/lang/String;
    .locals 5

    const-wide/32 v0, 0x40000000

    cmp-long v0, p1, v0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    if-ltz v0, :cond_0

    long-to-double p1, p1

    mul-double/2addr p1, v1

    const-wide/high16 v0, 0x41d0000000000000L    # 1.073741824E9

    div-double/2addr p1, v0

    invoke-static {p0}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->getGBString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-wide/32 v3, 0x100000

    cmp-long v0, p1, v3

    if-ltz v0, :cond_1

    long-to-double p1, p1

    mul-double/2addr p1, v1

    const-wide/high16 v0, 0x4130000000000000L    # 1048576.0

    div-double/2addr p1, v0

    invoke-static {p0}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->getMBString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-wide/16 v3, 0x400

    cmp-long v0, p1, v3

    long-to-double p1, p1

    mul-double/2addr p1, v1

    if-ltz v0, :cond_2

    const-wide/high16 v0, 0x4090000000000000L    # 1024.0

    div-double/2addr p1, v0

    invoke-static {p0}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->getKBString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->getBString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {p0, p1, p2, v0, p3}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->textFormat(Landroid/content/Context;DLjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatBytesByMB(Landroid/content/Context;J)Ljava/lang/String;
    .locals 5

    invoke-static {p0}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->getMBString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    long-to-double v1, p1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x4130000000000000L    # 1048576.0

    div-double/2addr v1, v3

    const-wide/32 v3, 0x100000

    cmp-long p1, p1, v3

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p0, v1, v2, v0, p1}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->textFormat(Landroid/content/Context;DLjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatBytesNoUint(Landroid/content/Context;J)Ljava/lang/String;
    .locals 5

    const-wide/32 v0, 0x40000000

    cmp-long v0, p1, v0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    if-ltz v0, :cond_0

    long-to-double p1, p1

    mul-double/2addr p1, v1

    const-wide/high16 v0, 0x41d0000000000000L    # 1.073741824E9

    :goto_0
    div-double/2addr p1, v0

    goto :goto_1

    :cond_0
    const-wide/32 v3, 0x100000

    cmp-long v0, p1, v3

    if-lez v0, :cond_1

    long-to-double p1, p1

    mul-double/2addr p1, v1

    const-wide/high16 v0, 0x4130000000000000L    # 1048576.0

    goto :goto_0

    :cond_1
    const-wide/16 v3, 0x400

    cmp-long v0, p1, v3

    long-to-double p1, p1

    mul-double/2addr p1, v1

    if-lez v0, :cond_2

    const-wide/high16 v0, 0x4090000000000000L    # 1024.0

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, p2, v0, v1}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->textFormat(Landroid/content/Context;DLjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatBytesSplited(Landroid/content/Context;J)[Ljava/lang/String;
    .locals 9

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    const-wide/32 v2, 0x40000000

    cmp-long v2, p1, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    if-ltz v2, :cond_0

    long-to-double p1, p1

    mul-double/2addr p1, v5

    const-wide/high16 v5, 0x41d0000000000000L    # 1.073741824E9

    div-double/2addr p1, v5

    invoke-static {p0}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->getGBString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    goto :goto_0

    :cond_0
    const-wide/32 v7, 0x100000

    cmp-long v2, p1, v7

    if-ltz v2, :cond_1

    long-to-double p1, p1

    mul-double/2addr p1, v5

    const-wide/high16 v5, 0x4130000000000000L    # 1048576.0

    div-double/2addr p1, v5

    invoke-static {p0}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->getMBString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    goto :goto_0

    :cond_1
    const-wide/16 v7, 0x400

    cmp-long v2, p1, v7

    long-to-double p1, p1

    mul-double/2addr p1, v5

    if-ltz v2, :cond_2

    const-wide/high16 v5, 0x4090000000000000L    # 1024.0

    div-double/2addr p1, v5

    invoke-static {p0}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->getKBString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->getBString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v4

    move v0, v3

    :goto_0
    const/4 v2, 0x0

    invoke-static {p0, p1, p2, v2, v0}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->textFormat(Landroid/content/Context;DLjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v3

    return-object v1
.end method

.method public static formatBytesWithUintLong(Landroid/content/Context;J)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/32 v1, 0x100000

    div-long/2addr p1, v1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->getMBString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatMaxBytes(J)J
    .locals 3

    const-wide/32 v0, 0x40000000

    cmp-long v2, p0, v0

    if-ltz v2, :cond_0

    return-wide v0

    :cond_0
    const-wide/32 v0, 0x100000

    cmp-long v2, p0, v0

    if-lez v2, :cond_1

    return-wide v0

    :cond_1
    const-wide/16 v0, 0x400

    cmp-long p0, p0, v0

    if-lez p0, :cond_2

    return-wide v0

    :cond_2
    const-wide/16 p0, 0x1

    return-wide p0
.end method

.method public static formatSpeed(Landroid/content/Context;J)[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    long-to-float p1, p1

    const p2, 0x7f120c9b

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/high16 v1, 0x44800000    # 1024.0f

    div-float/2addr p1, v1

    const v2, 0x4479c000    # 999.0f

    cmpl-float v2, p1, v2

    if-lez v2, :cond_0

    const p2, 0x7f120d80

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    div-float/2addr p1, v1

    :cond_0
    const/4 p0, 0x1

    aput-object p2, v0, p0

    const/high16 p2, 0x41200000    # 10.0f

    cmpg-float p2, p1, p2

    const/4 v1, 0x0

    if-gez p2, :cond_1

    new-array p0, p0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, p0, v1

    const-string p1, "%.2f"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    goto :goto_0

    :cond_1
    const/high16 p2, 0x42c80000    # 100.0f

    cmpg-float p2, p1, p2

    new-array p0, p0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    if-gez p2, :cond_2

    aput-object p1, p0, v1

    const-string p1, "%.1f"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    goto :goto_0

    :cond_2
    aput-object p1, p0, v1

    const-string p1, "%.0f"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    :goto_0
    return-object v0
.end method

.method public static formatUniteUnit(Landroid/content/Context;JJ)Ljava/lang/String;
    .locals 2

    long-to-double p1, p1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    mul-double/2addr p1, v0

    long-to-double p3, p3

    div-double/2addr p1, p3

    const/4 p3, 0x0

    const/4 p4, 0x1

    invoke-static {p0, p1, p2, p3, p4}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->textFormat(Landroid/content/Context;DLjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getBString(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const v0, 0x7f120480

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getBytesByUnit(FLjava/lang/String;)J
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "k"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 p1, 0x44800000    # 1024.0f

    :goto_0
    mul-float/2addr p0, p1

    float-to-long p0, p0

    return-wide p0

    :cond_0
    const-string v0, "m"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 p1, 0x49800000    # 1048576.0f

    goto :goto_0

    :cond_1
    const-string v0, "g"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/high16 p1, 0x4e800000

    goto :goto_0

    :cond_2
    float-to-long p0, p0

    return-wide p0
.end method

.method public static getGBString(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const v0, 0x7f120b55

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getKBString(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const v0, 0x7f120c9a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMBString(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const v0, 0x7f120d7f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static textFormat(Landroid/content/Context;DLjava/lang/String;I)Ljava/lang/String;
    .locals 5

    const-wide v0, 0x408f3c0000000000L    # 999.5

    cmpl-double v0, p1, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gtz v0, :cond_2

    invoke-static {p0}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->getBString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-wide v3, 0x4058e00000000000L    # 99.5

    cmpl-double p0, p1, v3

    if-lez p0, :cond_1

    new-array p0, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aput-object p1, p0, v1

    const-string p1, "%.01f"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "%.0"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p4, 0x66

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p4, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aput-object p1, p4, v1

    invoke-static {p0, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    :goto_0
    new-array p0, v2, [Ljava/lang/Object;

    double-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v1

    const-string p1, "%d"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_1
    if-eqz p3, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_3
    return-object p0
.end method

.method private static textFormatWithBlank(Landroid/content/Context;DLjava/lang/String;I)Ljava/lang/String;
    .locals 5

    const-wide v0, 0x408f3c0000000000L    # 999.5

    cmpl-double v0, p1, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gtz v0, :cond_2

    invoke-static {p0}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->getBString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-wide v3, 0x4058e00000000000L    # 99.5

    cmpl-double p0, p1, v3

    if-lez p0, :cond_1

    new-array p0, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aput-object p1, p0, v1

    const-string p1, "%.01f"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "%.0"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p4, 0x66

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p4, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aput-object p1, p4, v1

    invoke-static {p0, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    :goto_0
    new-array p0, v2, [Ljava/lang/Object;

    double-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v1

    const-string p1, "%d"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_1
    if-eqz p3, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_3
    return-object p0
.end method

.method private static textFormats(Landroid/content/Context;DLjava/lang/String;I)[Ljava/lang/String;
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-wide v1, 0x408f3c0000000000L    # 999.5

    cmpl-double v1, p1, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gtz v1, :cond_2

    invoke-static {p0}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->getBString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-wide v4, 0x4058e00000000000L    # 99.5

    cmpl-double p0, p1, v4

    if-lez p0, :cond_1

    new-array p0, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aput-object p1, p0, v3

    const-string p1, "%.01f"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v3

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const/16 v1, 0x10

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "%.0"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p4, 0x66

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p4, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aput-object p1, p4, v3

    invoke-static {p0, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v3

    goto :goto_1

    :cond_2
    :goto_0
    new-array p0, v2, [Ljava/lang/Object;

    double-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v3

    const-string p1, "%d"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v3

    :goto_1
    aput-object p3, v0, v2

    return-object v0
.end method

.method public static trafficFormat(Landroid/content/Context;J)[Ljava/lang/String;
    .locals 6

    const-wide/32 v0, 0x40000000

    cmp-long v0, p1, v0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const/4 v3, 0x1

    if-ltz v0, :cond_0

    long-to-double p1, p1

    mul-double/2addr p1, v1

    const-wide/high16 v0, 0x41d0000000000000L    # 1.073741824E9

    div-double/2addr p1, v0

    invoke-static {p0}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->getGBString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    goto :goto_0

    :cond_0
    const-wide/32 v4, 0x100000

    cmp-long v0, p1, v4

    if-ltz v0, :cond_1

    long-to-double p1, p1

    mul-double/2addr p1, v1

    const-wide/high16 v0, 0x4130000000000000L    # 1048576.0

    div-double/2addr p1, v0

    invoke-static {p0}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->getMBString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-wide/16 v4, 0x400

    cmp-long v0, p1, v4

    long-to-double p1, p1

    mul-double/2addr p1, v1

    if-ltz v0, :cond_2

    const-wide/high16 v0, 0x4090000000000000L    # 1024.0

    div-double/2addr p1, v0

    invoke-static {p0}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->getKBString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->getBString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {p0, p1, p2, v0, v3}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->textFormats(Landroid/content/Context;DLjava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static trafficFormatByControl(J)I
    .locals 2

    const-wide/32 v0, 0x40000000

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const/4 p0, 0x3

    goto :goto_0

    :cond_0
    const-wide/32 v0, 0x100000

    cmp-long v0, p0, v0

    if-ltz v0, :cond_1

    const/4 p0, 0x2

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x400

    cmp-long p0, p0, v0

    if-ltz p0, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static trafficUnitArray(Landroid/content/Context;)[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const v1, 0x7f120b55

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f120d7f

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    return-object v0
.end method

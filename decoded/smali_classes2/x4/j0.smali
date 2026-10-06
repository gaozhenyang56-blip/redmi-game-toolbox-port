.class public Lx4/j0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;JI)Ljava/lang/String;
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

    move-result-object p0

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

    move-result-object p0

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

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->getBString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-static {p1, p2, p0, p3}, Lx4/j0;->f(DLjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;JZ)Ljava/lang/String;
    .locals 6

    const-wide/32 v0, 0x40000000

    cmp-long v0, p1, v0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const/4 v3, 0x0

    if-ltz v0, :cond_0

    long-to-double p1, p1

    mul-double/2addr p1, v1

    const-wide/high16 v0, 0x41d0000000000000L    # 1.073741824E9

    div-double/2addr p1, v0

    invoke-static {p0}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->getGBString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

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
    if-eqz p3, :cond_3

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    :cond_3
    invoke-static {p0, p1, p2, v0, v3}, Lx4/j0;->g(Landroid/content/Context;DLjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/content/Context;JI)Ljava/lang/String;
    .locals 6

    const-wide/32 v0, 0x40000000

    cmp-long v0, p1, v0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    if-ltz v0, :cond_1

    long-to-double p1, p1

    mul-double/2addr p1, v1

    const-wide/high16 v0, 0x41d0000000000000L    # 1.073741824E9

    div-double/2addr p1, v0

    if-nez p3, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    mul-double v4, p1, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-double v4, v4

    div-double/2addr v4, v2

    const-wide v2, 0x3fb99999a0000000L    # 0.10000000149011612

    add-double/2addr v0, v2

    cmpl-double v0, v4, v0

    if-ltz v0, :cond_0

    const/4 p3, 0x1

    :cond_0
    invoke-static {p0}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->getGBString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-wide/32 v3, 0x100000

    cmp-long v0, p1, v3

    if-ltz v0, :cond_2

    long-to-double p1, p1

    mul-double/2addr p1, v1

    const-wide/high16 v0, 0x4130000000000000L    # 1048576.0

    div-double/2addr p1, v0

    invoke-static {p0}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->getMBString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-wide/16 v3, 0x400

    cmp-long v0, p1, v3

    long-to-double p1, p1

    mul-double/2addr p1, v1

    if-ltz v0, :cond_3

    const-wide/high16 v0, 0x4090000000000000L    # 1024.0

    div-double/2addr p1, v0

    invoke-static {p0}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->getKBString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-static {p0}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->getBString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {p0, p1, p2, v0, p3}, Lx4/j0;->g(Landroid/content/Context;DLjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/content/Context;JI)Ljava/lang/String;
    .locals 6

    const-wide/32 v0, 0x3b9aca00

    cmp-long v0, p1, v0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    if-ltz v0, :cond_0

    long-to-double p1, p1

    mul-double/2addr p1, v1

    const-wide v0, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr p1, v0

    invoke-static {p0}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->getGBString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const-wide/32 v3, 0xf4240

    cmp-long v0, p1, v3

    if-ltz v0, :cond_1

    long-to-double p1, p1

    mul-double/2addr p1, v1

    const-wide v0, 0x412e848000000000L    # 1000000.0

    div-double/2addr p1, v0

    invoke-static {p0}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->getMBString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v5, v0

    move v0, p3

    move-object p3, v5

    goto :goto_1

    :cond_1
    const-wide/16 v3, 0x3e8

    cmp-long v0, p1, v3

    long-to-double p1, p1

    mul-double/2addr p1, v1

    if-ltz v0, :cond_2

    const-wide v0, 0x408f400000000000L    # 1000.0

    div-double/2addr p1, v0

    invoke-static {p0}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->getKBString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->getBString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :goto_1
    invoke-static {p0, p1, p2, p3, v0}, Lx4/j0;->g(Landroid/content/Context;DLjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/content/Context;JI)[Ljava/lang/String;
    .locals 9

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-wide/32 v1, 0x3b9aca00

    cmp-long v1, p1, v1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const/4 v4, 0x1

    if-ltz v1, :cond_1

    long-to-double p1, p1

    mul-double/2addr p1, v2

    const-wide v1, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr p1, v1

    if-nez p3, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    mul-double v7, p1, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    move-result-wide v7

    long-to-double v7, v7

    div-double/2addr v7, v5

    const-wide v5, 0x3fb99999a0000000L    # 0.10000000149011612

    add-double/2addr v1, v5

    cmpl-double v1, v7, v1

    if-ltz v1, :cond_0

    move p3, v4

    :cond_0
    invoke-static {p0}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->getGBString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    goto :goto_0

    :cond_1
    const-wide/32 v5, 0xf4240

    cmp-long v1, p1, v5

    if-ltz v1, :cond_2

    long-to-double p1, p1

    mul-double/2addr p1, v2

    const-wide v1, 0x412e848000000000L    # 1000000.0

    div-double/2addr p1, v1

    invoke-static {p0}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->getMBString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    goto :goto_0

    :cond_2
    const-wide/16 v5, 0x3e8

    cmp-long v1, p1, v5

    long-to-double p1, p1

    mul-double/2addr p1, v2

    if-ltz v1, :cond_3

    const-wide v1, 0x408f400000000000L    # 1000.0

    div-double/2addr p1, v1

    invoke-static {p0}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->getKBString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    goto :goto_0

    :cond_3
    invoke-static {p0}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->getBString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, p2, v2, p3}, Lx4/j0;->g(Landroid/content/Context;DLjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    return-object v0
.end method

.method public static f(DLjava/lang/String;I)Ljava/lang/String;
    .locals 5

    const-wide v0, 0x408f3c0000000000L    # 999.5

    cmpl-double v0, p0, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    new-array p3, v2, [Ljava/lang/Object;

    double-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p3, v1

    const-string p0, "%d"

    invoke-static {p0, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-wide v3, 0x4058e00000000000L    # 99.5

    cmpl-double v0, p0, v3

    if-lez v0, :cond_1

    new-array p3, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    aput-object p0, p3, v1

    const-string p0, "%.01f"

    invoke-static {p0, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0x10

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "%.0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p3, 0x66

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    aput-object p0, v0, v1

    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    if-eqz p2, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method private static g(Landroid/content/Context;DLjava/lang/String;I)Ljava/lang/String;
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "%.0"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p4, 0x66

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p4

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    invoke-static {p4, p0, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    if-eqz p3, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.class public Ldb/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldb/h$b;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-static {p1, p2}, Ldb/h;->c(J)Ldb/h$b;

    move-result-object p1

    const p2, 0x7f1216c3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget v3, p1, Ldb/h$b;->a:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    aput-object p3, v0, v4

    iget p1, p1, Ldb/h$b;->b:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-virtual {p0, p2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;JILjava/lang/String;)Ljava/lang/String;
    .locals 6

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    int-to-long v0, p3

    const-wide/32 v2, 0x3b9aca00

    mul-long/2addr v0, v2

    sub-long/2addr p1, v0

    invoke-static {p1, p2}, Ldb/h;->c(J)Ldb/h$b;

    move-result-object p1

    const/4 p2, 0x1

    new-array v0, p2, [Ljava/lang/Object;

    iget v1, p1, Ldb/h$b;->a:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    const v0, 0x7f1216c3

    const/4 v1, 0x2

    if-nez p3, :cond_1

    new-array p3, v1, [Ljava/lang/Object;

    aput-object p4, p3, v2

    iget p1, p1, Ldb/h$b;->b:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, p2

    invoke-virtual {p0, v0, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    iget v3, p1, Ldb/h$b;->b:I

    const v4, 0x7f121aed

    const v5, 0x7f1216bf

    if-ne v5, v3, :cond_2

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p4, v3, v2

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    aput-object p3, v3, p2

    invoke-virtual {p0, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    new-array p4, v1, [Ljava/lang/Object;

    aput-object p3, p4, v2

    iget p1, p1, Ldb/h$b;->b:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p4, p2

    invoke-virtual {p0, v0, p4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    new-array p1, v1, [Ljava/lang/Object;

    aput-object p4, p1, v2

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    aput-object p4, p1, p2

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p4, v1, [Ljava/lang/Object;

    aput-object p1, p4, v2

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p1, v2

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p1, p2

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p4, p2

    invoke-virtual {p0, v4, p4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static c(J)Ldb/h$b;
    .locals 7

    long-to-float p0, p0

    float-to-double v0, p0

    const-wide v2, 0x408c200000000000L    # 900.0

    cmpl-double p1, v0, v2

    const/high16 v0, 0x447a0000    # 1000.0f

    if-lez p1, :cond_0

    const p1, 0x7f1216c0

    div-float/2addr p0, v0

    goto :goto_0

    :cond_0
    const p1, 0x7f1216ba

    :goto_0
    float-to-double v4, p0

    cmpl-double v1, v4, v2

    if-lez v1, :cond_1

    const p1, 0x7f1216c1

    div-float/2addr p0, v0

    :cond_1
    float-to-double v4, p0

    cmpl-double v1, v4, v2

    if-lez v1, :cond_2

    const p1, 0x7f1216bf

    div-float/2addr p0, v0

    :cond_2
    float-to-double v1, p0

    const-wide v3, 0x408ccccccccccccdL    # 921.6

    cmpl-double v1, v1, v3

    if-lez v1, :cond_3

    const p1, 0x7f1216c4

    const/high16 v1, 0x44800000    # 1024.0f

    div-float/2addr p0, v1

    const/high16 v1, 0x41200000    # 10.0f

    mul-float/2addr p0, v1

    float-to-double v5, p0

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-float p0, v5

    div-float/2addr p0, v1

    :cond_3
    float-to-double v1, p0

    cmpl-double v1, v1, v3

    if-lez v1, :cond_4

    const p1, 0x7f1216c2

    div-float/2addr p0, v0

    :cond_4
    new-instance v0, Ldb/h$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ldb/h$b;-><init>(Ldb/h$a;)V

    iput p0, v0, Ldb/h$b;->a:F

    iput p1, v0, Ldb/h$b;->b:I

    return-object v0
.end method

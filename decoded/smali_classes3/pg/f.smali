.class public Lpg/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;II)I
    .locals 3

    invoke-static {}, Lme/w;->c0()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-static {v0}, Lme/w;->p(I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEnduranceFromPowerKeeper superSave: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " capacity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " percent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PowerUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v0, :cond_0

    return v0

    :cond_0
    if-nez p2, :cond_1

    invoke-static {p0}, Lme/w;->j(Landroid/content/Context;)I

    move-result p2

    :cond_1
    if-nez p1, :cond_2

    invoke-static {p0}, Lme/w;->g(Landroid/content/Context;)I

    move-result p1

    :cond_2
    invoke-static {}, Lpg/b;->a()Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    mul-int/2addr p1, p2

    mul-int/lit8 p1, p1, 0x3c

    int-to-float p1, p1

    const/high16 p2, 0x42c80000    # 100.0f

    mul-float/2addr p0, p2

    div-float/2addr p1, p0

    const p0, 0x404eb852    # 3.23f

    mul-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static b(Landroid/content/Context;)I
    .locals 2

    invoke-static {p0}, Lme/w;->g(Landroid/content/Context;)I

    move-result v0

    invoke-static {}, Lde/i;->M()Lde/i;

    move-result-object v1

    invoke-virtual {v1}, Lde/i;->I()I

    move-result v1

    invoke-static {p0, v0, v1}, Lpg/f;->a(Landroid/content/Context;II)I

    move-result p0

    return p0
.end method

.method public static c(Landroid/content/Context;II)Ljava/lang/String;
    .locals 3

    invoke-static {p0, p1, p2}, Lpg/f;->a(Landroid/content/Context;II)I

    move-result p1

    div-int/lit8 p2, p1, 0x3c

    rem-int/lit8 p1, p1, 0x3c

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f1218f0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

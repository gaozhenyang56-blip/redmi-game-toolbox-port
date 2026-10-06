.class public Lcom/miui/powercenter/batteryhistory/o;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)J
    .locals 5

    invoke-static {p0}, Lme/w;->S(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x3e8

    if-eqz v0, :cond_0

    invoke-static {p0, v1, v1}, Lpg/f;->a(Landroid/content/Context;II)I

    move-result p0

    :goto_0
    mul-int/lit8 p0, p0, 0x3c

    int-to-long v0, p0

    mul-long/2addr v0, v2

    return-wide v0

    :cond_0
    invoke-static {p0}, Lme/w;->Q(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lme/w;->g(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0}, Lme/w;->j(Landroid/content/Context;)I

    move-result v1

    const/4 v4, 0x1

    :goto_1
    invoke-static {p0, v0, v1, v4}, Lme/b0;->o(Landroid/content/Context;III)I

    move-result p0

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lme/w;->P(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lme/w;->g(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0}, Lme/w;->j(Landroid/content/Context;)I

    move-result v1

    const/4 v4, 0x3

    goto :goto_1

    :cond_2
    invoke-static {p0}, Lme/w;->g(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0}, Lme/w;->j(Landroid/content/Context;)I

    move-result v4

    invoke-static {p0, v0, v4, v1}, Lme/b0;->o(Landroid/content/Context;III)I

    move-result p0

    goto :goto_0
.end method

.class public Lx4/z;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()I
    .locals 2

    invoke-static {}, Lx4/a2;->a()I

    move-result v0

    invoke-static {}, Lx4/z;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public static b()J
    .locals 2
    const-wide/16 v0, 0x0
    return-wide v0
.end method

.method public static c()Z
    .locals 4

    invoke-static {}, Lx4/z;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    div-long/2addr v0, v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

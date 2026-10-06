.class public Ldf/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:J = 0x51d3440L


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 6

    invoke-static {p0}, Ldf/f;->b(Landroid/content/Context;)Ldf/f;

    move-result-object p0

    invoke-virtual {p0}, Ldf/f;->c()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ldf/f;->i(J)V

    return v3

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    sget-wide v0, Ldf/e;->a:J

    cmp-long p0, v4, v0

    if-lez p0, :cond_1

    const/4 v3, 0x1

    :cond_1
    return v3
.end method

.method public static b()Z
    .locals 2

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_0

    invoke-static {}, Ldb/c;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static c(Landroid/content/Context;)V
    .locals 5

    invoke-static {}, Ldf/e;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Ldf/e;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "ImeStatistics"

    const-string v0, "Do not track because current time is not right"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-static {p0}, Ldf/f;->b(Landroid/content/Context;)Ldf/f;

    move-result-object v0

    invoke-virtual {v0}, Ldf/f;->e()I

    move-result v1

    invoke-virtual {v0}, Ldf/f;->f()J

    move-result-wide v2

    invoke-static {p0}, Ldf/h;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v1, v2, v3, v4}, Ldf/g;->f(Landroid/content/Context;IJLjava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ldf/f;->i(J)V

    invoke-virtual {v0}, Ldf/f;->h()V

    return-void
.end method

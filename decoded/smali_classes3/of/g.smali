.class public Lof/g;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lof/g;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lof/g;->c(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 7

    const-string v0, "GmsModelUtils"

    const-string v1, "start scan "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Ln9/a;->a:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-static {}, Lef/x;->q()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v3, 0x7de

    if-gt v1, v3, :cond_1

    return v2

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Lef/x;->n0(J)V

    :cond_2
    invoke-static {}, Lef/x;->q()J

    move-result-wide v3

    invoke-static {v3, v4}, Lx4/x1;->c(J)I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "time realInterval : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x7

    const/16 v4, 0xb4

    if-lt v1, v3, :cond_3

    if-gt v1, v4, :cond_3

    invoke-static {p0}, Ln9/a;->c(Landroid/content/Context;)I

    move-result v3

    if-ne v3, v2, :cond_3

    invoke-static {p0}, Ln9/a;->e(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_3

    const/4 v2, 0x0

    const-string p0, "status danger "

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    if-gt v1, v4, :cond_4

    if-gez v1, :cond_5

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lef/x;->n0(J)V

    :cond_5
    :goto_0
    return v2
.end method

.method public static c(Landroid/content/Context;)V
    .locals 2

    sget-boolean v0, Ln9/a;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "GmsModelUtils"

    const-string v1, "start optimize "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    invoke-static {p0, v0}, Ln9/a;->g(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

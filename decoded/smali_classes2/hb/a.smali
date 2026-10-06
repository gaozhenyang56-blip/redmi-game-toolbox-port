.class public Lhb/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Landroid/content/Context;)V
    .locals 5

    const-string v0, "OMCloudControlHelper"

    const-string v1, "OptimizeSettings"

    const/4 v2, 0x1

    :try_start_0
    const-string v3, "ThirdItemDefaultChecked"

    invoke-static {p0, v1, v3, v2}, Lx4/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Lkb/a;->A(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "load optimizemanage third item default failed"

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    :try_start_1
    const-string v3, "SystemItemDefaultChecked"

    invoke-static {p0, v1, v3, v2}, Lx4/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p0}, Lkb/a;->z(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    const-string v1, "load optimizemanage system item default failed"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method private static b(Landroid/content/Context;)V
    .locals 3

    invoke-static {}, Lkb/a;->d()Ljava/lang/String;

    move-result-object v0

    const-wide/32 v1, 0xf731400

    invoke-static {v1, v2}, Lcom/miui/appmanager/AppManageUtils;->N(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    :try_start_0
    const-string v0, "OptimizeSettings"

    const-string v1, "DialogShowPeriod"

    const/16 v2, 0xf

    invoke-static {p0, v0, v1, v2}, Lx4/o;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Lkb/a;->x(I)V

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lcom/miui/appmanager/AppManageUtils;->N(J)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkb/a;->t(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string v0, "OMCloudControlHelper"

    const-string v1, "load optimize resultpage show dialog period failed"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .locals 4

    :try_start_0
    invoke-static {}, Lx4/t0;->c()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "OptimizeSettings"

    if-eqz v0, :cond_0

    :try_start_1
    const-string v0, "HighMemoryValue"

    const/16 v2, 0x400

    invoke-static {p0, v1, v0, v2}, Lx4/o;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    :goto_0
    int-to-long v0, v0

    goto :goto_1

    :cond_0
    const-string v0, "LowMemoryValue"

    const/16 v2, 0x1f4

    invoke-static {p0, v1, v0, v2}, Lx4/o;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :goto_1
    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Lpf/g;->z(J)V

    invoke-static {p0}, Lhb/a;->a(Landroid/content/Context;)V

    invoke-static {p0}, Lhb/a;->b(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    const-string v0, "OMCloudControlHelper"

    const-string v1, "load optimizemanage point value failed"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method

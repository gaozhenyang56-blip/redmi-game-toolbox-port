.class public Lw3/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lorg/json/JSONObject;)Lcom/miui/autotask/taskitem/AdjustVolumeResultItem;
    .locals 11

    :try_start_0
    const-string v0, "alarmVolume"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "mediaVolume"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "ringVolume"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v4

    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v6

    const/4 v7, 0x3

    invoke-virtual {v2, v7}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v8

    const/high16 v9, 0x42c80000    # 100.0f

    const/4 v10, -0x1

    if-ne p0, v10, :cond_0

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p0

    goto :goto_0

    :cond_0
    int-to-float p0, p0

    div-float/2addr p0, v9

    int-to-float v4, v4

    mul-float/2addr p0, v4

    float-to-int p0, p0

    :goto_0
    if-ne v0, v10, :cond_1

    invoke-virtual {v2, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    goto :goto_1

    :cond_1
    int-to-float v0, v0

    div-float/2addr v0, v9

    int-to-float v4, v6

    mul-float/2addr v0, v4

    float-to-int v0, v0

    :goto_1
    if-ne v1, v10, :cond_2

    invoke-virtual {v2, v7}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    goto :goto_2

    :cond_2
    int-to-float v1, v1

    div-float/2addr v1, v9

    int-to-float v2, v8

    mul-float/2addr v1, v2

    float-to-int v1, v1

    :goto_2
    new-instance v2, Lcom/miui/autotask/taskitem/AdjustVolumeResultItem;

    invoke-direct {v2}, Lcom/miui/autotask/taskitem/AdjustVolumeResultItem;-><init>()V

    new-array v4, v7, [I

    const/4 v5, 0x0

    aput p0, v4, v5

    const/4 p0, 0x1

    aput v0, v4, p0

    aput v1, v4, v3

    invoke-virtual {v2, v4}, Lcom/miui/autotask/taskitem/AdjustVolumeResultItem;->x([I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p0

    const-string v0, "AutoTaskProviderHelper"

    const-string v1, "JSONException = "

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(ILjava/util/List;)Lcom/miui/powercenter/bootshutdown/DaysOfWeek;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/miui/powercenter/bootshutdown/DaysOfWeek;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, v0, :cond_3

    const/4 v2, 0x2

    if-eq p0, v2, :cond_2

    const/4 v2, 0x3

    if-eq p0, v2, :cond_1

    const/4 v2, 0x4

    if-eq p0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x1f

    goto :goto_0

    :cond_1
    const/16 v1, 0x80

    goto :goto_0

    :cond_2
    const/16 v1, 0x7f

    :cond_3
    :goto_0
    new-instance v2, Lcom/miui/powercenter/bootshutdown/DaysOfWeek;

    invoke-direct {v2, v1}, Lcom/miui/powercenter/bootshutdown/DaysOfWeek;-><init>(I)V

    const/4 v1, 0x5

    if-ne p0, v1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v2, p1, v0}, Lcom/miui/powercenter/bootshutdown/DaysOfWeek;->h(IZ)V

    goto :goto_1

    :cond_4
    return-object v2
.end method

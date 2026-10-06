.class public Lhd/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(II)V
    .locals 3

    const/16 v0, 0xa

    if-gt p0, v0, :cond_0

    const-string p0, "start_10_add20_to_full"

    goto :goto_0

    :cond_0
    const/16 v0, 0x14

    if-gt p0, v0, :cond_1

    const-string p0, "start_20_add20_to_full"

    goto :goto_0

    :cond_1
    const/16 v0, 0x1e

    if-gt p0, v0, :cond_2

    const-string p0, "start_30_add20_to_full"

    goto :goto_0

    :cond_2
    const/16 v0, 0x28

    if-gt p0, v0, :cond_3

    const-string p0, "start_40_add20_to_full"

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "powercenter"

    invoke-static {v0, p0}, Lcom/miui/analytics/AnalyticsUtil;->createEventName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    int-to-long v1, p1

    invoke-static {v0, p0, v1, v2}, Lcom/miui/analytics/AnalyticsUtil;->trackEvent(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_4
    return-void
.end method

.method public static b(II)V
    .locals 3

    const/16 v0, 0xa

    if-gt p0, v0, :cond_0

    const-string p0, "start_10_add40_to_full"

    goto :goto_0

    :cond_0
    const/16 v0, 0x14

    if-gt p0, v0, :cond_1

    const-string p0, "start_20_add40_to_full"

    goto :goto_0

    :cond_1
    const/16 v0, 0x1e

    if-gt p0, v0, :cond_2

    const-string p0, "start_30_add40_to_full"

    goto :goto_0

    :cond_2
    const/16 v0, 0x28

    if-gt p0, v0, :cond_3

    const-string p0, "start_40_add40_to_full"

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "powercenter"

    invoke-static {v0, p0}, Lcom/miui/analytics/AnalyticsUtil;->createEventName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    int-to-long v1, p1

    invoke-static {v0, p0, v1, v2}, Lcom/miui/analytics/AnalyticsUtil;->trackEvent(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_4
    return-void
.end method

.method public static c(II)V
    .locals 3

    const/16 v0, 0xa

    if-gt p0, v0, :cond_0

    const-string p0, "start_10_to_full"

    goto :goto_0

    :cond_0
    const/16 v0, 0x14

    if-gt p0, v0, :cond_1

    const-string p0, "start_20_to_full"

    goto :goto_0

    :cond_1
    const/16 v0, 0x1e

    if-gt p0, v0, :cond_2

    const-string p0, "start_30_to_full"

    goto :goto_0

    :cond_2
    const/16 v0, 0x28

    if-gt p0, v0, :cond_3

    const-string p0, "start_40_to_full"

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "powercenter"

    invoke-static {v0, p0}, Lcom/miui/analytics/AnalyticsUtil;->createEventName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    int-to-long v1, p1

    invoke-static {v0, p0, v1, v2}, Lcom/miui/analytics/AnalyticsUtil;->trackEvent(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_4
    return-void
.end method

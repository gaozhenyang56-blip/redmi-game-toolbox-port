.class public Lw8/g;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(IJ)J
    .locals 2

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string p0, "gt_xunyou_new_user_dialog_last_show_time"

    invoke-static {p0, p1, p2}, Lr4/a;->j(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDialogPreviousTime - error type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "XunYouGuideDialogUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide p1
.end method

.method private static b(II)I
    .locals 2

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string p0, "gt_xunyou_new_user_dialog_show_count"

    invoke-static {p0, p1}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDialogShowCount - error type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "XunYouGuideDialogUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method public static c()Z
    .locals 8

    invoke-static {}, La8/o0;->m()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    const-wide/16 v2, -0x1

    invoke-static {v0, v2, v3}, Lw8/g;->a(IJ)J

    move-result-wide v4

    invoke-static {v0, v1}, Lw8/g;->b(II)I

    move-result v6

    const/4 v7, 0x2

    if-ge v6, v7, :cond_2

    cmp-long v2, v4, v2

    if-eqz v2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v4

    const-wide v4, 0x9a7ec800L

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2

    :cond_1
    move v1, v0

    :cond_2
    return v1
.end method

.method public static d(I)V
    .locals 3

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lw8/g;->b(II)I

    move-result v1

    add-int/2addr v1, v0

    const-string v0, "gt_xunyou_new_user_dialog_show_count"

    invoke-static {v0, v1}, Lr4/a;->p(Ljava/lang/String;I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "gt_xunyou_new_user_dialog_last_show_time"

    invoke-static {v2, v0, v1}, Lr4/a;->q(Ljava/lang/String;J)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "recordDialogDisplayed : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "XunYouGuideDialogUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

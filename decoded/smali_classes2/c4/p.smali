.class public Lc4/p;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Z)V
    .locals 7

    invoke-static {p0}, Lef/x;->y(Landroid/content/Context;)Z

    move-result v0

    invoke-static {p0}, Lef/x;->c(Landroid/content/Context;)J

    move-result-wide v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive: \t generalNeed = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "\t generalSize = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "NotificationHelper"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    const-wide/16 v5, 0x0

    cmp-long v0, v1, v5

    if-lez v0, :cond_1

    const/4 v0, 0x5

    const-string v3, "general_last_time"

    const-string v5, "general_show_cnt"

    const-string v6, "cm_general_clean_notification_cnt"

    invoke-static {p0, v3, v5, v6, v0}, Lc4/p;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    const/16 v3, 0x7d0

    invoke-static {p0, v3}, Lc4/p;->f(Landroid/content/Context;I)Z

    move-result v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkAndSendGeneralNotification: alreadyHas "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {p0, p1, v1, v2}, Lc4/p;->g(Landroid/content/Context;ZJ)V

    :cond_1
    return-void
.end method

.method public static b(Landroid/content/Context;Z)V
    .locals 5

    invoke-static {p0}, Lef/x;->J(Landroid/content/Context;)Z

    move-result v0

    invoke-static {p0}, Lef/x;->s(Landroid/content/Context;)J

    move-result-wide v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive: \t wechatNeed = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "\t wechatSize = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "NotificationHelper"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_1

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-lez v0, :cond_1

    const/4 v0, 0x5

    const-string v1, "wechat_last_time"

    const-string v2, "wechat_show_cnt"

    const-string v3, "cm_wechat_notification_cnt"

    invoke-static {p0, v1, v2, v3, v0}, Lc4/p;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    const/16 v1, 0xbb8

    invoke-static {p0, v1}, Lc4/p;->f(Landroid/content/Context;I)Z

    move-result v1

    if-eqz p1, :cond_0

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {p0}, Lc4/p;->i(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public static c(Landroid/content/Context;Z)V
    .locals 5

    invoke-static {p0}, Lef/x;->K(Landroid/content/Context;)Z

    move-result v0

    invoke-static {p0}, Lef/x;->t(Landroid/content/Context;)J

    move-result-wide v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive: \t whatsappNeed = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "\t whatsAppSize = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "NotificationHelper"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_1

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-lez v0, :cond_1

    const/4 v0, 0x5

    const-string v1, "whatsapp_last_time"

    const-string v2, "whatsapp_show_cnt"

    const-string v3, "cm_whatsapp_clean_notification_cnt"

    invoke-static {p0, v1, v2, v3, v0}, Lc4/p;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    const/16 v1, 0x1388

    invoke-static {p0, v1}, Lc4/p;->f(Landroid/content/Context;I)Z

    move-result v1

    if-nez p1, :cond_0

    :goto_0
    invoke-static {p0}, Lc4/p;->j(Landroid/content/Context;)V

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private static d(Landroid/content/Context;)Z
    .locals 6

    invoke-static {p0}, Lc4/c;->f(Landroid/content/Context;)Lc4/c;

    move-result-object p0

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lc4/c;->e()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lc4/c;->d()I

    move-result p0

    :goto_0
    int-to-long v0, p0

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Leg/s;->b(Ljava/lang/String;)Leg/s$a;

    move-result-object p0

    iget-wide v2, p0, Leg/s$a;->a:J

    const-wide/32 v4, 0x3b9aca00

    mul-long/2addr v0, v4

    cmp-long p0, v2, v0

    if-lez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method private static e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 6

    invoke-static {p0}, Lc4/c;->f(Landroid/content/Context;)Lc4/c;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1}, Lc4/c;->b(Ljava/lang/String;)J

    move-result-wide v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isFrequencyValid: \t lastTimeKey = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\t lastTime = "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "\t current = "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v4, "NotificationHelper"

    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    cmp-long p1, v0, v2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_0

    invoke-virtual {p0, p2, v1}, Lc4/c;->k(Ljava/lang/String;I)V

    return v0

    :cond_0
    invoke-virtual {p0, p2}, Lc4/c;->c(Ljava/lang/String;)I

    move-result p0

    invoke-static {p3, p4}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "isFrequencyValid: \t showCntKey = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\t cloudCnt = "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\t showdCnt = "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-le p0, p1, :cond_1

    return v1

    :cond_1
    return v0
.end method

.method public static f(Landroid/content/Context;I)Z
    .locals 4

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    invoke-virtual {p0}, Landroid/app/NotificationManager;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    if-ne v3, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static g(Landroid/content/Context;ZJ)V
    .locals 12

    invoke-static {p0}, Lc4/c;->f(Landroid/content/Context;)Lc4/c;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    invoke-virtual {v0}, Lc4/c;->g()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lc4/c;->n(I)V

    :cond_0
    invoke-virtual {v0}, Lc4/c;->g()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-le v2, v3, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "showGeneralNotificaiton: invalid cnt = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lc4/c;->g()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "NotificationHelper"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v5, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v5, :cond_5

    const-string p2, "cleaner_normal"

    const-string p3, "showGeneralNotificaiton: Normal"

    const-string v5, "show_clean_floating_alert"

    if-nez v2, :cond_2

    invoke-static {v6, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "show_clean_alert"

    :goto_1
    move p1, v4

    move p3, p1

    goto :goto_2

    :cond_2
    invoke-static {p0}, Lc4/p;->d(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string p1, "showGeneralNotificaiton: OnGoing"

    invoke-static {v6, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "show_clean_ongoing_alert"

    const-string p2, "cleaner_ongoing"

    move p3, v1

    move p1, v4

    goto :goto_2

    :cond_3
    const-string v2, "showGeneralNotificaiton: Floating"

    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_4

    const-string p2, "cleaner_floating"

    move p1, v1

    move p3, v4

    goto :goto_2

    :cond_4
    invoke-static {v6, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "channel: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lef/x;->c(Landroid/content/Context;)J

    move-result-wide v6

    invoke-static {p0, v6, v7}, Lsm/a;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f120ef5

    new-array v8, v1, [Ljava/lang/Object;

    aput-object v2, v8, v4

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f120ef3

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f120ef1

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f060b44

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    new-instance v10, Landroid/text/SpannableString;

    invoke-direct {v10, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v6, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    new-instance v11, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v11, v9}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v6

    const/16 v9, 0x21

    invoke-virtual {v10, v11, v6, v2, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v2, Landroid/content/Intent;

    const-string v6, "miui.intent.action.GARBAGE_CLEANUP"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "extra_auto_start_scan"

    invoke-virtual {v2, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v6, "enter_homepage_way"

    invoke-virtual {v2, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p2, 0x7d0

    const v6, 0x7f080669

    invoke-static {p0}, Lc4/q;->c(Landroid/content/Context;)Lw4/b$b;

    move-result-object v9

    invoke-virtual {v9, p1}, Lw4/b$b;->i(Z)Lw4/b$b;

    move-result-object p1

    invoke-virtual {p1, v4}, Lw4/b$b;->j(Z)Lw4/b$b;

    move-result-object p1

    invoke-virtual {p1, v1, v3}, Lw4/b$b;->w(ZI)Lw4/b$b;

    move-result-object p1

    const/4 v3, 0x5

    const-string v9, "cm_general_clean_notification_cnt"

    invoke-static {v9, v3}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {p1, v3}, Lw4/b$b;->n(I)Lw4/b$b;

    move-result-object p1

    invoke-virtual {p1, p2}, Lw4/b$b;->r(I)Lw4/b$b;

    move-result-object p1

    invoke-virtual {p1, v6}, Lw4/b$b;->q(I)Lw4/b$b;

    move-result-object p1

    const p2, 0x7f0804da

    invoke-virtual {p1, p2}, Lw4/b$b;->v(I)Lw4/b$b;

    move-result-object p1

    invoke-virtual {p1, v10}, Lw4/b$b;->h(Ljava/lang/CharSequence;)Lw4/b$b;

    move-result-object p1

    invoke-virtual {p1, v7}, Lw4/b$b;->g(Ljava/lang/CharSequence;)Lw4/b$b;

    move-result-object p1

    invoke-virtual {p1, v8}, Lw4/b$b;->c(Ljava/lang/String;)Lw4/b$b;

    move-result-object p1

    invoke-virtual {p1, v2, v4}, Lw4/b$b;->u(Landroid/content/Intent;I)Lw4/b$b;

    move-result-object p1

    invoke-virtual {p1, p3}, Lw4/b$b;->t(Z)Lw4/b$b;

    move-result-object p1

    const p2, 0x7f12008b

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string p2, "com.miui.cleanmaster"

    invoke-virtual {p1, p2, p0}, Lw4/b$b;->e(Ljava/lang/String;Ljava/lang/String;)Lw4/b$b;

    move-result-object p0

    invoke-virtual {p0}, Lw4/b$b;->a()Lw4/b;

    move-result-object p0

    invoke-virtual {p0}, Lw4/b;->I()V

    invoke-static {v5}, Lqf/c;->I(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    invoke-static {p0, p2, p3}, Lc4/p;->h(Landroid/content/Context;J)V

    :goto_3
    const-string p0, "general_show_cnt"

    invoke-virtual {v0, p0}, Lc4/c;->c(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p1, v1

    invoke-virtual {v0, p0, p1}, Lc4/c;->k(Ljava/lang/String;I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    const-string p2, "general_last_time"

    invoke-virtual {v0, p2, p0, p1}, Lc4/c;->j(Ljava/lang/String;J)V

    return-void
.end method

.method private static h(Landroid/content/Context;J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lc4/q;->f(Landroid/content/Context;J)V

    const-string p0, "show_clean_alert_new"

    invoke-static {p0}, Lqf/c;->I(Ljava/lang/String;)V

    return-void
.end method

.method public static i(Landroid/content/Context;)V
    .locals 3

    invoke-static {p0}, Lc4/q;->k(Landroid/content/Context;)V

    invoke-static {p0}, Lc4/c;->f(Landroid/content/Context;)Lc4/c;

    move-result-object p0

    const-string v0, "wechat_show_cnt"

    invoke-virtual {p0, v0}, Lc4/c;->c(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Lc4/c;->k(Ljava/lang/String;I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "wechat_last_time"

    invoke-virtual {p0, v2, v0, v1}, Lc4/c;->j(Ljava/lang/String;J)V

    invoke-static {}, Lqf/c;->C0()V

    return-void
.end method

.method public static j(Landroid/content/Context;)V
    .locals 9

    invoke-static {p0}, Lef/x;->t(Landroid/content/Context;)J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {p0, v0, v1}, Lsm/a;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const v5, 0x7f120f24

    invoke-virtual {v2, v5, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Landroid/content/Intent;

    const-string v6, "miui.intent.action.GARBAGE_DEEPCLEAN_WHATSAPP"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "enter_homepage_way"

    const-string v7, "WhatsappCleanNotification"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v6, 0x7f120f23

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f060b44

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    new-instance v7, Landroid/text/SpannableString;

    invoke-direct {v7, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    new-instance v8, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v8, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v3

    const/16 v2, 0x21

    invoke-virtual {v7, v8, v3, v0, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-static {p0}, Lc4/q;->c(Landroid/content/Context;)Lw4/b$b;

    move-result-object v0

    invoke-virtual {v0, v4}, Lw4/b$b;->i(Z)Lw4/b$b;

    move-result-object v0

    invoke-virtual {v0, v4}, Lw4/b$b;->j(Z)Lw4/b$b;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lw4/b$b;->w(ZI)Lw4/b$b;

    move-result-object v0

    const-string v2, "cm_whatsapp_clean_notification_cnt"

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lw4/b$b;->n(I)Lw4/b$b;

    move-result-object v0

    const/16 v2, 0x1388

    invoke-virtual {v0, v2}, Lw4/b$b;->r(I)Lw4/b$b;

    move-result-object v0

    const v2, 0x7f081113

    invoke-virtual {v0, v2}, Lw4/b$b;->q(I)Lw4/b$b;

    move-result-object v0

    const v2, 0x7f0804da

    invoke-virtual {v0, v2}, Lw4/b$b;->v(I)Lw4/b$b;

    move-result-object v0

    invoke-virtual {v0, v7}, Lw4/b$b;->h(Ljava/lang/CharSequence;)Lw4/b$b;

    move-result-object v0

    invoke-virtual {v0, v6}, Lw4/b$b;->c(Ljava/lang/String;)Lw4/b$b;

    move-result-object v0

    invoke-virtual {v0, v5, v4}, Lw4/b$b;->u(Landroid/content/Intent;I)Lw4/b$b;

    move-result-object v0

    invoke-virtual {v0, v4}, Lw4/b$b;->t(Z)Lw4/b$b;

    move-result-object v0

    const v2, 0x7f12008b

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.miui.cleanmaster"

    invoke-virtual {v0, v3, v2}, Lw4/b$b;->e(Ljava/lang/String;Ljava/lang/String;)Lw4/b$b;

    move-result-object v0

    invoke-virtual {v0}, Lw4/b$b;->a()Lw4/b;

    move-result-object v0

    invoke-virtual {v0}, Lw4/b;->I()V

    invoke-static {p0}, Lc4/c;->f(Landroid/content/Context;)Lc4/c;

    move-result-object p0

    const-string v0, "whatsapp_show_cnt"

    invoke-virtual {p0, v0}, Lc4/c;->c(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p0, v0, v2}, Lc4/c;->k(Ljava/lang/String;I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "whatsapp_last_time"

    invoke-virtual {p0, v2, v0, v1}, Lc4/c;->j(Ljava/lang/String;J)V

    invoke-static {}, Lqf/c;->D0()V

    return-void
.end method

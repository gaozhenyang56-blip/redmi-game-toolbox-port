.class public Lcom/miui/powercenter/continuity/PowerContinuityNoticeUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/powercenter/continuity/PowerContinuityNoticeUtils$SaveModeState;
    }
.end annotation


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 2

    :try_start_0
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    const/4 v0, 0x0

    const v1, 0x7f121028

    add-int/2addr p1, v1

    invoke-virtual {p0, v0, p1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "power_channel_PUBLISH"

    const-string v0, "cancelBatterSaveNotification error:"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static b(Landroid/content/Context;I)V
    .locals 3

    const-string v0, "power_channel_PUBLISH"

    :try_start_0
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    const/4 v1, 0x0

    const v2, 0x7f121026

    add-int/2addr v2, p1

    invoke-virtual {p0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelInBatterSaveNotification deviceNum ="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "cancelBatterSaveNotification error:"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static c()Z
    .locals 1

    sget-boolean v0, Lcom/miui/powercenter/continuity/PowerContinuityNoticeUtils;->a:Z

    return v0
.end method

.method public static d(Landroid/content/Context;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pref_key_connectivity_service_state"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "pref_key_connectivity_share_notification_state"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "pref_key_cross_notify_power_state"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_0

    move v2, v1

    :cond_0
    return v2
.end method

.method public static e(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "power_channel_PUBLISH"

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lx4/k0;->h()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p0, "not support lite"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-static {}, Ldb/c;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v2, "com.xiaomi.mi_connect_service"

    const/16 v3, 0x80

    invoke-virtual {p0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-nez p0, :cond_2

    return v1

    :cond_2
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.xiaomi.continuity.VERSION_CODE"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    sput-boolean p0, Lcom/miui/powercenter/continuity/PowerContinuityNoticeUtils;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v2, "getContinuityFeature error"

    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    return v1
.end method

.method public static f(Landroid/content/Context;IILcom/xiaomi/continuity/messagecenter/PublisherManager$IPublishResult;)V
    .locals 3

    sget-boolean v0, Lcom/miui/powercenter/continuity/PowerContinuityNoticeUtils;->a:Z

    const-string v1, "power_channel_PUBLISH"

    if-nez v0, :cond_0

    const-string p0, "not support feature"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lx4/y;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "pad can\'t publish"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    invoke-static {p0}, La8/t1;->c(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string p0, "screenlock can\'t publish"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-static {p0}, Lcom/miui/powercenter/continuity/PowerContinuityNoticeUtils;->d(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string p0, "can\'t publish not open"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    invoke-static {p0}, Lme/w;->Q(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string p0, "has in save mode"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    invoke-static {}, Lx4/z1;->r()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {}, Lx4/z1;->e()I

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_0

    :cond_5
    new-instance v1, Lcom/miui/common/continuity/bean/ContinuityMessageData;

    const-string v2, "topic.name:power"

    invoke-direct {v1, v2}, Lcom/miui/common/continuity/bean/ContinuityMessageData;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/miui/powercenter/bean/PowerContinuityNotifiBean;

    invoke-direct {v2}, Lcom/miui/powercenter/bean/PowerContinuityNotifiBean;-><init>()V

    invoke-virtual {v2, p1}, Lcom/miui/powercenter/bean/PowerContinuityNotifiBean;->setState(I)V

    if-ne p1, v0, :cond_6

    invoke-static {p0}, Lx4/a0;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/miui/powercenter/bean/PowerContinuityNotifiBean;->setDevice(Ljava/lang/String;)V

    invoke-static {p2}, Lde/j;->J(I)I

    move-result p1

    invoke-virtual {v2, p1}, Lcom/miui/powercenter/bean/PowerContinuityNotifiBean;->setLevel(I)V

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p1

    invoke-static {p1}, Lme/w;->g(Landroid/content/Context;)I

    move-result p1

    invoke-static {p0, p1, p2, v0}, Lme/b0;->o(Landroid/content/Context;III)I

    move-result p1

    invoke-virtual {v2, p1}, Lcom/miui/powercenter/bean/PowerContinuityNotifiBean;->setTime(I)V

    :cond_6
    invoke-static {v2}, Lx4/l0;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/miui/common/continuity/bean/ContinuityMessageData;->setExtraData(Ljava/lang/String;)V

    const-string p1, "power"

    invoke-virtual {v1, p1}, Lcom/miui/common/continuity/bean/ContinuityMessageData;->setBaseData(Ljava/lang/String;)V

    invoke-static {p0}, Lj4/a;->d(Landroid/content/Context;)Lj4/a;

    move-result-object p0

    invoke-virtual {p0, v1, p3}, Lj4/a;->a(Lcom/miui/common/continuity/bean/ContinuityMessageData;Lcom/xiaomi/continuity/messagecenter/PublisherManager$IPublishResult;)V

    const-string p0, "onPublish"

    invoke-static {p0}, Lhd/a;->a1(Ljava/lang/String;)V

    return-void

    :cond_7
    :goto_0
    const-string p0, "not in USER_OWNER"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static g(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lx4/y;->s()Z

    move-result v0

    const-string v1, "power_channel_PUBLISH"

    if-nez v0, :cond_2

    invoke-static {p0}, La8/t1;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/miui/powercenter/continuity/PowerContinuityNoticeUtils;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "can\'t publishInSaveMode not open"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v0, "publishInSaveMode"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lpd/c;->t(Landroid/content/Context;)Lpd/c;

    move-result-object p0

    invoke-virtual {p0, p1}, Lpd/c;->E(Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_0
    const-string p0, "can\'t publishInSaveMode"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static h(Landroid/content/Context;ILjava/lang/String;IILjava/lang/String;)V
    .locals 10

    const v0, 0x7f120452

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0xa

    if-lt v1, v3, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "..."

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f121028

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    aput-object p2, v5, v2

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-boolean v5, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const v6, 0x7f08089f

    if-eqz v5, :cond_1

    const v5, 0x7f0808a0

    goto :goto_0

    :cond_1
    move v5, v6

    :goto_0
    new-instance v7, Lw4/b$b;

    invoke-direct {v7, p0}, Lw4/b$b;-><init>(Landroid/content/Context;)V

    add-int/2addr v3, p4

    invoke-virtual {v7, v3}, Lw4/b$b;->r(I)Lw4/b$b;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f120379

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.miui.powercenter.high"

    invoke-virtual {v3, v9, v8}, Lw4/b$b;->e(Ljava/lang/String;Ljava/lang/String;)Lw4/b$b;

    move-result-object v3

    invoke-virtual {v3, v0}, Lw4/b$b;->c(Ljava/lang/String;)Lw4/b$b;

    move-result-object v0

    invoke-virtual {v0, v6}, Lw4/b$b;->q(I)Lw4/b$b;

    move-result-object v0

    invoke-virtual {v0, v5}, Lw4/b$b;->v(I)Lw4/b$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lw4/b$b;->h(Ljava/lang/CharSequence;)Lw4/b$b;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lw4/b$b;->l(I)Lw4/b$b;

    move-result-object v0

    invoke-virtual {v0, v4}, Lw4/b$b;->j(Z)Lw4/b$b;

    move-result-object v0

    invoke-virtual {v0, v4}, Lw4/b$b;->i(Z)Lw4/b$b;

    div-int/lit8 v0, p3, 0x3c

    rem-int/lit8 p3, p3, 0x3c

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f1000ef

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v2

    invoke-virtual {v3, v5, v0, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f1000f0

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v2

    invoke-virtual {v3, v5, p3, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const v3, 0x7f121027

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object p2

    int-to-float p1, p1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr p1, v2

    float-to-double v5, p1

    invoke-virtual {p2, v5, v6}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v4

    const/4 p1, 0x2

    aput-object v0, v1, p1

    const/4 p1, 0x3

    aput-object p3, v1, p1

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7, p1}, Lw4/b$b;->g(Ljava/lang/CharSequence;)Lw4/b$b;

    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/miui/powercenter/continuity/ContinuityReceiver;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "com.miui.powercenter.CONTINUITY_OPEN_SAVE_MODE"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "deviceId"

    invoke-virtual {p1, p2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "deviceNum"

    invoke-virtual {p1, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p2, 0xc000000

    invoke-static {p0, p4, p1, p2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {v7, p0}, Lw4/b$b;->b(Landroid/app/PendingIntent;)Lw4/b$b;

    invoke-virtual {v7}, Lw4/b$b;->a()Lw4/b;

    move-result-object p0

    invoke-virtual {p0}, Lw4/b;->I()V

    invoke-static {}, Lhd/a;->G0()V

    return-void
.end method

.method public static i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 10

    const v0, 0x7f120eef

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0x14

    if-lt v1, v3, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "..."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f121026

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    aput-object p1, v5, v2

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-boolean v5, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const v6, 0x7f08089f

    if-eqz v5, :cond_1

    const v5, 0x7f0808a0

    goto :goto_0

    :cond_1
    move v5, v6

    :goto_0
    new-instance v7, Lw4/b$b;

    invoke-direct {v7, p0}, Lw4/b$b;-><init>(Landroid/content/Context;)V

    add-int/2addr v3, p3

    invoke-virtual {v7, v3}, Lw4/b$b;->r(I)Lw4/b$b;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f120379

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.miui.powercenter.high"

    invoke-virtual {v3, v9, v8}, Lw4/b$b;->e(Ljava/lang/String;Ljava/lang/String;)Lw4/b$b;

    move-result-object v3

    invoke-virtual {v3, v0}, Lw4/b$b;->c(Ljava/lang/String;)Lw4/b$b;

    move-result-object v0

    invoke-virtual {v0, v6}, Lw4/b$b;->q(I)Lw4/b$b;

    move-result-object v0

    invoke-virtual {v0, v5}, Lw4/b$b;->v(I)Lw4/b$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lw4/b$b;->h(Ljava/lang/CharSequence;)Lw4/b$b;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lw4/b$b;->l(I)Lw4/b$b;

    move-result-object v0

    invoke-virtual {v0, v4}, Lw4/b$b;->j(Z)Lw4/b$b;

    move-result-object v0

    invoke-virtual {v0, v4}, Lw4/b$b;->i(Z)Lw4/b$b;

    const v0, 0x7f121025

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    invoke-virtual {p1, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7, p1}, Lw4/b$b;->g(Ljava/lang/CharSequence;)Lw4/b$b;

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/miui/powercenter/continuity/ContinuityReceiver;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "deviceId"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "deviceNum"

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "com.miui.powercenter.CONTINUITY_CLOSE_SAVE_MODE"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p2, 0xc000000

    invoke-static {p0, p3, p1, p2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {v7, p0}, Lw4/b$b;->b(Landroid/app/PendingIntent;)Lw4/b$b;

    invoke-virtual {v7}, Lw4/b$b;->a()Lw4/b;

    move-result-object p0

    invoke-virtual {p0}, Lw4/b;->I()V

    invoke-static {}, Lhd/a;->G0()V

    return-void
.end method

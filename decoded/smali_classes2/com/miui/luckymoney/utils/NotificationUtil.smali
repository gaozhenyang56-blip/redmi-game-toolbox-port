.class public Lcom/miui/luckymoney/utils/NotificationUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static NOTIFY_CHANNEL_ID:Ljava/lang/String; = "luckymoney_notify_channel_high"

.field private static currentUniqueNotificationId:I

.field private static final prefDefinedNotificationIds:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f11000a

    aput v2, v0, v1

    sput-object v0, Lcom/miui/luckymoney/utils/NotificationUtil;->prefDefinedNotificationIds:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelNotification(Landroid/content/Context;I)V
    .locals 1

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    invoke-static {p0, p1}, Lx4/v;->d(Landroid/app/NotificationManager;I)V

    return-void
.end method

.method public static cancelNotificationDelay(Landroid/content/Context;IJ)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/miui/luckymoney/utils/NotificationUtil$2;

    invoke-direct {v1, p0, p1}, Lcom/miui/luckymoney/utils/NotificationUtil$2;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static getResourceUri(Landroid/content/Context;I)Landroid/net/Uri;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized getUniqueNotificationId()I
    .locals 8

    const-class v0, Lcom/miui/luckymoney/utils/NotificationUtil;

    monitor-enter v0

    :cond_0
    :try_start_0
    sget v1, Lcom/miui/luckymoney/utils/NotificationUtil;->currentUniqueNotificationId:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    sput v1, Lcom/miui/luckymoney/utils/NotificationUtil;->currentUniqueNotificationId:I

    if-gtz v1, :cond_1

    sput v2, Lcom/miui/luckymoney/utils/NotificationUtil;->currentUniqueNotificationId:I

    :cond_1
    sget-object v1, Lcom/miui/luckymoney/utils/NotificationUtil;->prefDefinedNotificationIds:[I

    array-length v3, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_3

    aget v6, v1, v5

    sget v7, Lcom/miui/luckymoney/utils/NotificationUtil;->currentUniqueNotificationId:I

    if-ne v7, v6, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    move v2, v4

    :goto_1
    if-nez v2, :cond_0

    sget v1, Lcom/miui/luckymoney/utils/NotificationUtil;->currentUniqueNotificationId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static playNotificationSound(Landroid/content/Context;I)V
    .locals 3

    invoke-static {p0, p1}, Lcom/miui/luckymoney/utils/NotificationUtil;->getResourceUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/Ringtone;->play()V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/miui/luckymoney/utils/NotificationUtil$1;

    invoke-direct {v0, p0}, Lcom/miui/luckymoney/utils/NotificationUtil$1;-><init>(Landroid/media/Ringtone;)V

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static showFloatNotification(Landroid/content/Context;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;IZZ)V
    .locals 7

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    sget-object v1, Lcom/miui/luckymoney/utils/NotificationUtil;->NOTIFY_CHANNEL_ID:Ljava/lang/String;

    const v2, 0x7f120c31

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Lx4/e1;->c(Landroid/app/NotificationManager;Ljava/lang/String;Ljava/lang/String;IZ)V

    sget-object v1, Lcom/miui/luckymoney/utils/NotificationUtil;->NOTIFY_CHANNEL_ID:Ljava/lang/String;

    invoke-static {p0, v1}, Lx4/e1;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    const v5, 0x7f0807a9

    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0807a8

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, p4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p4

    invoke-virtual {p4, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    const-string p2, "single"

    invoke-virtual {v1, p2}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p2

    if-eqz p6, :cond_0

    invoke-static {p0, p5}, Lcom/miui/luckymoney/utils/NotificationUtil;->playNotificationSound(Landroid/content/Context;I)V

    :cond_0
    invoke-static {p2, v4}, Lrg/a;->e(Landroid/app/Notification;Z)V

    invoke-static {p2, v4}, Lrg/a;->c(Landroid/app/Notification;Z)V

    invoke-static {p2, v3}, Lrg/a;->f(Landroid/app/Notification;I)V

    if-eqz p7, :cond_1

    const-wide/16 p3, 0x1770

    invoke-static {p0, p1, p3, p4}, Lcom/miui/luckymoney/utils/NotificationUtil;->cancelNotificationDelay(Landroid/content/Context;IJ)V

    :cond_1
    invoke-static {v0, p1, p2}, Lx4/v;->k(Landroid/app/NotificationManager;ILandroid/app/Notification;)V

    return-void
.end method

.method public static showPushNotification(Landroid/content/Context;ILandroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    sget-object v1, Lcom/miui/luckymoney/utils/NotificationUtil;->NOTIFY_CHANNEL_ID:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120c31

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Lx4/e1;->c(Landroid/app/NotificationManager;Ljava/lang/String;Ljava/lang/String;IZ)V

    sget-object v1, Lcom/miui/luckymoney/utils/NotificationUtil;->NOTIFY_CHANNEL_ID:Ljava/lang/String;

    invoke-static {p0, v1}, Lx4/e1;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    const v5, 0x7f0807a9

    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v5, 0x7f0807a8

    invoke-static {p0, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    invoke-virtual {p0, p4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    const-string p0, "single"

    invoke-virtual {v1, p0}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    invoke-static {p0, v4}, Lrg/a;->e(Landroid/app/Notification;Z)V

    invoke-static {p0, v4}, Lrg/a;->c(Landroid/app/Notification;Z)V

    invoke-static {p0, v3}, Lrg/a;->f(Landroid/app/Notification;I)V

    invoke-static {v0, p1, p0}, Lx4/v;->k(Landroid/app/NotificationManager;ILandroid/app/Notification;)V

    return-void
.end method

.method public static declared-synchronized stopNotification(Landroid/content/Context;I)V
    .locals 2

    const-class v0, Lcom/miui/luckymoney/utils/NotificationUtil;

    monitor-enter v0

    :try_start_0
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.class public Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterManager$AccurateLocatonListener;,
        Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterManager$DelayCheckRunnable;,
        Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterManager$AccurateRunnable;
    }
.end annotation


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.miui.warningcenter.DisasterAreaProvider"

.field private static final DISASTER_URI:Landroid/net/Uri;

.field private static final EARTH_RADIUS:D = 6371.0

.field private static final LOCATION_TIME_OUT:J = 0x2710L

.field private static final PUSH_TIME_OUT:J = 0x1499700L

.field private static volatile instance:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.miui.warningcenter.DisasterAreaProvider/area"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterManager;->DISASTER_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f081102

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method public static getInstance()Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterManager;
    .locals 2

    sget-object v0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterManager;->instance:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterManager;->instance:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterManager;

    invoke-direct {v1}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterManager;-><init>()V

    sput-object v1, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterManager;->instance:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterManager;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterManager;->instance:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterManager;

    return-object v0
.end method

.method private queryArea(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/warningcenter/disasterwarning/model/AreaModel;
    .locals 6

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterManager;->DISASTER_URI:Landroid/net/Uri;

    const/4 p1, 0x5

    new-array v2, p1, [Ljava/lang/String;

    sget-object p1, Lcom/miui/warningcenter/disasterwarning/model/AreaModel$Columns;->ID:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    sget-object p1, Lcom/miui/warningcenter/disasterwarning/model/AreaModel$Columns;->code:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object p1, v2, v3

    sget-object p1, Lcom/miui/warningcenter/disasterwarning/model/AreaModel$Columns;->province:Ljava/lang/String;

    const/4 v3, 0x2

    aput-object p1, v2, v3

    sget-object p1, Lcom/miui/warningcenter/disasterwarning/model/AreaModel$Columns;->city:Ljava/lang/String;

    const/4 v3, 0x3

    aput-object p1, v2, v3

    sget-object p1, Lcom/miui/warningcenter/disasterwarning/model/AreaModel$Columns;->region:Ljava/lang/String;

    const/4 v3, 0x4

    aput-object p1, v2, v3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "code = \'"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;

    invoke-direct {v0}, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object p2, Lcom/miui/warningcenter/disasterwarning/model/AreaModel$Columns;->code:Ljava/lang/String;

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;->setCode(I)V

    sget-object p2, Lcom/miui/warningcenter/disasterwarning/model/AreaModel$Columns;->province:Ljava/lang/String;

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;->setProvince(Ljava/lang/String;)V

    sget-object p2, Lcom/miui/warningcenter/disasterwarning/model/AreaModel$Columns;->city:Ljava/lang/String;

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;->setCity(Ljava/lang/String;)V

    sget-object p2, Lcom/miui/warningcenter/disasterwarning/model/AreaModel$Columns;->region:Ljava/lang/String;

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;->setRegion(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object p2, v0

    goto :goto_0

    :catch_0
    move-object p2, v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception p2

    goto :goto_2

    :catch_1
    :goto_1
    :try_start_2
    const-string v0, "WcDisasterTask"

    const-string v1, "WarningCenterDisasterManager: queryArea error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw p2

    :cond_1
    :goto_3
    return-object p2
.end method

.method private shouldAlert(Ljava/lang/String;)Z
    .locals 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sub-long/2addr v4, v2

    const-wide/32 v2, 0x1499700

    cmp-long p1, v4, v2

    if-gez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    return v1
.end method

.method private shouldAlertAccurate(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    :try_start_0
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    move-wide v4, v2

    :goto_0
    :try_start_1
    invoke-virtual {v0, p2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    move-wide p1, v2

    :goto_1
    cmp-long v0, v4, v2

    const/4 v6, 0x1

    if-eqz v0, :cond_4

    cmp-long v7, p1, v2

    if-eqz v7, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-ltz v0, :cond_3

    cmp-long p1, v2, p1

    if-gez p1, :cond_3

    move v1, v6

    :cond_3
    return v1

    :cond_4
    if-eqz v0, :cond_6

    cmp-long v7, p1, v2

    if-nez v7, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v4

    const-wide/32 v2, 0x1499700

    cmp-long p1, p1, v2

    if-gez p1, :cond_5

    move v1, v6

    :cond_5
    return v1

    :cond_6
    if-nez v0, :cond_7

    cmp-long v0, p1, v2

    if-eqz v0, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long p1, v2, p1

    if-gez p1, :cond_7

    move v1, v6

    :cond_7
    return v1

    :cond_8
    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sholdAlertAccurate return because effective or expires empty "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WcDisasterTask"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private static showNotification(Landroid/content/Context;ILcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroidx/core/app/NotificationCompat$c;

    const-string v1, "com.miui.securitycenter"

    invoke-direct {v0, p0, v1}, Landroidx/core/app/NotificationCompat$c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v2, 0x7f080f25

    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$c;->y(I)Landroidx/core/app/NotificationCompat$c;

    invoke-virtual {v0, p3}, Landroidx/core/app/NotificationCompat$c;->m(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$c;

    invoke-virtual {p2}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getWarningType()Ljava/lang/String;

    move-result-object p3

    const-string v2, "accurate"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p2}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getDescription()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getHeadline()Ljava/lang/String;

    move-result-object p3

    :goto_0
    invoke-virtual {v0, p3}, Landroidx/core/app/NotificationCompat$c;->l(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$c;

    const/4 p3, 0x0

    invoke-virtual {v0, p3}, Landroidx/core/app/NotificationCompat$c;->x(Z)Landroidx/core/app/NotificationCompat$c;

    const/4 p3, 0x1

    invoke-virtual {v0, p3}, Landroidx/core/app/NotificationCompat$c;->g(Z)Landroidx/core/app/NotificationCompat$c;

    invoke-static {p0}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterManager;->getBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroidx/core/app/NotificationCompat$c;->s(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$c;

    const-string p3, "single"

    invoke-virtual {v0, p3}, Landroidx/core/app/NotificationCompat$c;->r(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$c;

    const/4 p3, 0x2

    invoke-virtual {v0, p3}, Landroidx/core/app/NotificationCompat$c;->v(I)Landroidx/core/app/NotificationCompat$c;

    const/4 p3, -0x1

    invoke-virtual {v0, p3}, Landroidx/core/app/NotificationCompat$c;->n(I)Landroidx/core/app/NotificationCompat$c;

    invoke-static {p0, p2}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity;->getLaunchIntent(Landroid/content/Context;Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;)Landroid/content/Intent;

    move-result-object p2

    const/high16 p3, 0x18000000

    invoke-virtual {p2, p3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p2

    const/high16 p3, 0x44000000    # 512.0f

    invoke-static {p0, p1, p2, p3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroidx/core/app/NotificationCompat$c;->k(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$c;

    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$c;->d()Landroid/app/Notification;

    move-result-object p2

    invoke-static {p0}, Landroidx/core/app/NotificationManagerCompat;->f(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object p3

    new-instance v0, Landroidx/core/app/k$c;

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroidx/core/app/k$c;-><init>(Ljava/lang/String;I)V

    const v1, 0x7f120f27

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/core/app/k$c;->b(Ljava/lang/CharSequence;)Landroidx/core/app/k$c;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/core/app/k$c;->a()Landroidx/core/app/k;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroidx/core/app/NotificationManagerCompat;->e(Landroidx/core/app/k;)V

    invoke-virtual {p3, p1, p2}, Landroidx/core/app/NotificationManagerCompat;->h(ILandroid/app/Notification;)V

    const-string p0, "disaster_push_receive"

    invoke-static {p0}, Lcom/miui/warningcenter/analytics/AnalyticHelper;->trackMijiaModuleClick(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public alert(Landroid/content/Context;ILcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;)V
    .locals 6

    invoke-static {}, Lcom/miui/warningcenter/disasterwarning/Utils;->getStrongPushLevel()I

    move-result v0

    invoke-static {}, Lcom/miui/warningcenter/disasterwarning/Utils;->getSystemPushLevel()I

    move-result v1

    invoke-virtual {p3}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getSeverity()Ljava/lang/String;

    move-result-object v2

    const-string v3, "red"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x8

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f121c1d

    :goto_0
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_0
    invoke-virtual {p3}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getSeverity()Ljava/lang/String;

    move-result-object v2

    const-string v3, "orange"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f121c06

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getSeverity()Ljava/lang/String;

    move-result-object v2

    const-string v3, "yellow"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f121c2b

    goto :goto_0

    :cond_2
    invoke-virtual {p3}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getSeverity()Ljava/lang/String;

    move-result-object v2

    const-string v3, "blue"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f121be5

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    const-string v3, ""

    :goto_1
    invoke-static {}, Lcom/miui/warningcenter/disasterwarning/Utils;->getSystemPushToggle()Z

    move-result v4

    if-eqz v4, :cond_6

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_6

    invoke-virtual {p3}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getWarningType()Ljava/lang/String;

    move-result-object v1

    const-string v4, "accurate"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p3}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getHeadline()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_4
    const v1, 0x7f121c09

    sget-object v4, Lcom/miui/warningcenter/disasterwarning/Utils;->TITLE_LIST:Ljava/util/Map;

    invoke-virtual {p3}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getEventType()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p3}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getEventType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-static {p1, p2, p3, v1}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterManager;->showNotification(Landroid/content/Context;ILcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;Ljava/lang/String;)V

    :cond_6
    invoke-static {}, Lcom/miui/warningcenter/disasterwarning/Utils;->getStrongPushToggle()Z

    move-result p2

    if-eqz p2, :cond_7

    and-int p2, v0, v2

    if-ne p2, v2, :cond_7

    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAlertActivity;

    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "DisasterAlertModel"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {p2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 p3, 0x10000000

    invoke-virtual {p2, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_7
    return-void
.end method

.method public closeWarning(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/miui/warningcenter/disasterwarning/Utils;->setStrongPushToggle(Z)V

    invoke-static {v0}, Lcom/miui/warningcenter/disasterwarning/Utils;->setSystemPushToggle(Z)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/warningcenter/disasterwarning/service/WarningCenterDisasterService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    return-void
.end method

.method public parseAccurateWarningData(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 9

    const-string v0, ""

    invoke-static {}, Lcom/miui/warningcenter/disasterwarning/Utils;->getStrongPushToggle()Z

    move-result v1

    const-string v2, "WcDisasterTask"

    if-nez v1, :cond_0

    invoke-static {}, Lcom/miui/warningcenter/disasterwarning/Utils;->getSystemPushToggle()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p1, "WarningCenterDisasterManager: accurate warning not open!"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    new-instance v1, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;

    invoke-direct {v1}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;-><init>()V

    sget-object v3, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->identifier:Ljava/lang/String;

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->setIdentifier(Ljava/lang/String;)V

    sget-object v3, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->msgType:Ljava/lang/String;

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->setMsgType(Ljava/lang/String;)V

    sget-object v3, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->note:Ljava/lang/String;

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->setNote(Ljava/lang/String;)V

    sget-object v3, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->sender:Ljava/lang/String;

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->setSender(Ljava/lang/String;)V

    const-string v3, "accurate"

    invoke-virtual {v1, v3}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->setWarningType(Ljava/lang/String;)V

    sget-object v3, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->info:Ljava/lang/String;

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    sget-object v4, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->description:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->setDescription(Ljava/lang/String;)V

    sget-object v4, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->instruction:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->setInstruction(Ljava/lang/String;)V

    sget-object v4, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->sendtime:Ljava/lang/String;

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->setEffective(Ljava/lang/String;)V

    sget-object v4, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->effective:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->eventType:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->setEventType(Ljava/lang/String;)V

    sget-object v5, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->eventTypeCN:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->setEventTypeCN(Ljava/lang/String;)V

    sget-object v5, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->expires:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->setExpires(Ljava/lang/String;)V

    sget-object v5, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->headline:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->setHeadline(Ljava/lang/String;)V

    sget-object v5, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->serverity:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->setSeverity(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->setReferencesInfo(Ljava/lang/String;)V

    sget-object v5, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->location:Ljava/lang/String;

    invoke-virtual {v3, v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->province:Ljava/lang/String;

    invoke-virtual {v3, v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->city:Ljava/lang/String;

    invoke-virtual {v3, v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->county:Ljava/lang/String;

    invoke-virtual {v3, v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v6}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->setProvince(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->setCity(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->setCounty(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->setLocation(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->setReceivePosition(Ljava/lang/String;)V

    sget-object v0, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->area:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    if-nez p2, :cond_1

    const-string p1, "WarningCenterDisasterManager: accurate area info null"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v0, "Alert"

    invoke-virtual {v1}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getMsgType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Update"

    invoke-virtual {v1}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getMsgType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    invoke-virtual {v1}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getExpires()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v4, v0}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterManager;->shouldAlertAccurate(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterManager$AccurateRunnable;

    invoke-direct {v3, p0, p1, v1, p2}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterManager$AccurateRunnable;-><init>(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterManager;Landroid/content/Context;Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_3
    const-string p1, "WarningCenterDisasterManager: accurate should not alert"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "WarningCenterDisasterManager: receive error warning message"

    invoke-static {v2, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_0
    return-void
.end method

.method public parseQuake(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 7

    const-string v0, "disaster"

    invoke-static {}, Lcom/miui/warningcenter/disasterwarning/Utils;->getStrongPushToggle()Z

    move-result v1

    const-string v2, "WcDisasterTask"

    if-nez v1, :cond_0

    invoke-static {}, Lcom/miui/warningcenter/disasterwarning/Utils;->getSystemPushToggle()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p1, "WarningCenterDisasterManager: disaster warning not open!"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    new-instance v1, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;

    invoke-direct {v1}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;-><init>()V

    sget-object v3, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->description:Ljava/lang/String;

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->setDescription(Ljava/lang/String;)V

    sget-object v3, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->effective:Ljava/lang/String;

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->setEffective(Ljava/lang/String;)V

    sget-object v3, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->eventType:Ljava/lang/String;

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->setEventType(Ljava/lang/String;)V

    sget-object v3, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->eventTypeCN:Ljava/lang/String;

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->setEventTypeCN(Ljava/lang/String;)V

    sget-object v3, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->expires:Ljava/lang/String;

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->setExpires(Ljava/lang/String;)V

    sget-object v3, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->headline:Ljava/lang/String;

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->setHeadline(Ljava/lang/String;)V

    sget-object v3, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->identifier:Ljava/lang/String;

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->setIdentifier(Ljava/lang/String;)V

    sget-object v3, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->msgType:Ljava/lang/String;

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->setMsgType(Ljava/lang/String;)V

    sget-object v3, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->note:Ljava/lang/String;

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->setNote(Ljava/lang/String;)V

    sget-object v3, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->referencesInfo:Ljava/lang/String;

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->setReferencesInfo(Ljava/lang/String;)V

    sget-object v3, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->sender:Ljava/lang/String;

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->setSender(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->setWarningType(Ljava/lang/String;)V

    sget-object v3, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->severity:Ljava/lang/String;

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->setSeverity(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getIdentifier()Ljava/lang/String;

    move-result-object p2

    const-string v3, ""

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_3

    const/4 v4, 0x6

    invoke-virtual {p2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterManager;->queryArea(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/warningcenter/disasterwarning/model/AreaModel;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;->getRegion()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v6, 0x1

    if-nez v4, :cond_2

    invoke-virtual {p2}, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;->getRegion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v6, :cond_2

    invoke-virtual {p2}, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;->getCity()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p2}, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;->getCity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v6, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;->getCity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;->getRegion()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;->getCity()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p2}, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;->getCity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v6, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;->getCity()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    :goto_1
    invoke-virtual {v1, v3}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->setReceivePosition(Ljava/lang/String;)V

    const-string p2, "Alert"

    invoke-virtual {v1}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getMsgType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_4

    const-string p2, "Update"

    invoke-virtual {v1}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getMsgType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    :cond_4
    invoke-virtual {v1}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getEffective()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterManager;->shouldAlert(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    const p2, 0x7f1207d2

    invoke-virtual {p0, p1, p2, v1}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterManager;->alert(Landroid/content/Context;ILcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;)V

    invoke-static {v0}, Lcom/miui/warningcenter/analytics/AnalyticHelper;->trackPushActionModuleShow(Ljava/lang/String;)V

    :cond_5
    new-instance p2, Lcom/miui/warningcenter/disasterwarning/db/ManageDataTask;

    invoke-direct {p2, p1, v1}, Lcom/miui/warningcenter/disasterwarning/db/ManageDataTask;-><init>(Landroid/content/Context;Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;)V

    new-array p1, v5, [Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const-string p2, "WarningCenterDisasterManager: receive error warning message"

    invoke-static {v2, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method

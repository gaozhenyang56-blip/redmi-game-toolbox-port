.class public Lme/i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Landroid/content/Context;)Landroid/net/Uri;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.xiaomi.calendar"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    const-string p0, "content://com.xiaomi.calendar/daysoff"

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p0, "content://com.miui.calendar/daysoff"

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;Ljava/util/Calendar;)Z
    .locals 8

    const-string v0, "HolidayHelper"

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {p0}, Lme/i;->a(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-static {p0, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x2

    invoke-interface {v1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "use holiday info "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    if-eq v3, v2, :cond_1

    if-eq p0, v2, :cond_0

    invoke-static {p1}, Lme/i;->d(Ljava/util/Calendar;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :cond_1
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return v3

    :cond_2
    :try_start_1
    const-string p0, "use weekend"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_3

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    :try_start_2
    const-string p0, "is Holiday error"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_3

    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    invoke-static {p1}, Lme/i;->d(Ljava/util/Calendar;)Z

    move-result p0

    return p0

    :goto_2
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw p0
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object p0, Lmiui/provider/ExtraCalendarContracts$HolidayContracts;->HOLIDAY_CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    invoke-interface {v0, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    const/4 p0, 0x1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return p0

    :cond_0
    if-eqz v0, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    :try_start_1
    const-string p0, "HolidayHelper"

    const-string v1, "is Holiday Data Invalid error"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    const/4 p0, 0x0

    return p0

    :goto_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    throw p0
.end method

.method public static d(Ljava/util/Calendar;)Z
    .locals 3

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v0, :cond_1

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    if-ne p0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return v2
.end method

.method public static e(Landroid/content/Context;ILjava/util/Calendar;)V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x7

    if-eqz p1, :cond_a

    const/16 v2, 0x1f

    const/4 v3, 0x0

    if-eq p1, v2, :cond_7

    const/16 v2, 0x7f

    if-eq p1, v2, :cond_6

    const/16 v2, 0x80

    if-eq p1, v2, :cond_3

    new-array p0, v1, [I

    new-instance v2, Lcom/miui/powercenter/bootshutdown/DaysOfWeek;

    invoke-direct {v2, p1}, Lcom/miui/powercenter/bootshutdown/DaysOfWeek;-><init>(I)V

    :goto_0
    if-ge v3, v1, :cond_0

    aput v0, p0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2, p0}, Lcom/miui/powercenter/bootshutdown/DaysOfWeek;->a([I)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v3, v0, :cond_1

    const/4 p1, 0x6

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    add-int/lit8 p1, p1, -0x2

    :goto_1
    aget p0, p0, p1

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-lez p1, :cond_2

    invoke-virtual {v2}, Lcom/miui/powercenter/bootshutdown/DaysOfWeek;->e()Z

    move-result p1

    if-nez p1, :cond_b

    :cond_2
    invoke-virtual {p2, v1, p0}, Ljava/util/Calendar;->add(II)V

    goto :goto_5

    :cond_3
    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long p1, v4, v6

    if-lez p1, :cond_4

    invoke-static {p0, p2}, Lme/i;->b(Landroid/content/Context;Ljava/util/Calendar;)Z

    move-result p1

    if-eqz p1, :cond_b

    :cond_4
    :goto_2
    const/16 p1, 0xa

    if-ge v3, p1, :cond_b

    invoke-virtual {p2, v1, v0}, Ljava/util/Calendar;->add(II)V

    invoke-static {p0, p2}, Lme/i;->b(Landroid/content/Context;Ljava/util/Calendar;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_5

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long p0, p0, v2

    if-gtz p0, :cond_b

    goto :goto_4

    :cond_7
    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long p0, p0, v4

    if-lez p0, :cond_8

    invoke-static {p2}, Lme/i;->d(Ljava/util/Calendar;)Z

    move-result p0

    if-eqz p0, :cond_b

    :cond_8
    :goto_3
    if-ge v3, v1, :cond_b

    invoke-virtual {p2, v1, v0}, Ljava/util/Calendar;->add(II)V

    invoke-static {p2}, Lme/i;->d(Ljava/util/Calendar;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_5

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_a
    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long p0, p0, v2

    if-gtz p0, :cond_b

    :goto_4
    invoke-virtual {p2, v1, v0}, Ljava/util/Calendar;->add(II)V

    :cond_b
    :goto_5
    return-void
.end method

.class public Lof/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lof/i$d;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/Object;

.field private static final b:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lof/i$d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lof/i;->a:Ljava/lang/Object;

    new-instance v0, Lof/i$a;

    invoke-direct {v0}, Lof/i$a;-><init>()V

    sput-object v0, Lof/i;->b:Ljava/util/Comparator;

    return-void
.end method

.method static synthetic a()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lof/i;->a:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b(Landroid/content/Context;)Lorg/json/JSONArray;
    .locals 0

    invoke-static {p0}, Lof/i;->h(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lorg/json/JSONArray;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Lof/i;->e(Lorg/json/JSONArray;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static d(Landroid/content/Context;Lof/i$d;)V
    .locals 1

    new-instance v0, Lof/i$b;

    invoke-direct {v0, p0, p1}, Lof/i$b;-><init>(Landroid/content/Context;Lof/i$d;)V

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private static e(Lorg/json/JSONArray;Ljava/lang/String;)I
    .locals 4

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    const-string v2, "id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    return v0

    :catch_0
    move-exception v1

    const-string v2, "NotificationLinkUilts"

    const-string v3, "find data in  file failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private static f(Ljava/lang/String;)I
    .locals 3

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "com.miui.securitycenter_com.miui.antivirus_1012"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v2, 0x13

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "com.miui.securitycenter_com.miui.securitycenter_1001"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v2, 0x12

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "com.miui.securitycenter_com.miui.gamebooster_20003"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v2, 0x11

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "com.miui.securitycenter_com.miui.gamebooster_10003"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v2, 0x10

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "com.miui.securitycenter_com.miui.gamebooster_10002"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v2, 0xf

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "com.miui.powercenter_com.miui.securitycenter_6000"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v2, 0xe

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "com.miui.securitycenter_com.miui.optimizemanage_1011"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v2, 0xd

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "com.miui.cleaner_com.miui.cleaner_4000"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v2, 0xc

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "com.miui.cleaner_com.miui.cleaner_3002"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v2, 0xb

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "com.miui.cleaner_com.miui.cleaner_3001"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v2, 0xa

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "com.miui.cleaner_com.miui.cleaner_2008"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v2, 0x9

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "com.miui.cleaner_com.miui.cleaner_2006"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v2, 0x8

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "com.miui.cleaner_com.miui.cleaner_2005"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto :goto_0

    :cond_c
    const/4 v2, 0x7

    goto :goto_0

    :sswitch_d
    const-string v0, "com.miui.cleaner_com.miui.cleaner_2004"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    goto :goto_0

    :cond_d
    const/4 v2, 0x6

    goto :goto_0

    :sswitch_e
    const-string v0, "com.miui.cleaner_com.miui.cleaner_2003"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    goto :goto_0

    :cond_e
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_f
    const-string v0, "com.miui.cleaner_com.miui.cleaner_2002"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    goto :goto_0

    :cond_f
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_10
    const-string v0, "com.miui.cleaner_com.miui.cleaner_2001"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    goto :goto_0

    :cond_10
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_11
    const-string v0, "com.miui.securitycenter_com.miui.applicationlock_104"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_11

    goto :goto_0

    :cond_11
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_12
    const-string v0, "com.miui.securitycenter_com.miui.applicationlock_102"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12

    goto :goto_0

    :cond_12
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_13
    const-string v0, "com.miui.securitycenter_com.miui.greenguard_50001"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_13

    goto :goto_0

    :cond_13
    move v2, v1

    :goto_0
    packed-switch v2, :pswitch_data_0

    return v1

    :pswitch_0
    const p0, 0x7f080dac

    return p0

    :pswitch_1
    const p0, 0x7f080db5

    return p0

    :pswitch_2
    const p0, 0x7f080db0

    return p0

    :pswitch_3
    const p0, 0x7f080db3

    return p0

    :pswitch_4
    const p0, 0x7f080db2

    return p0

    :pswitch_5
    const p0, 0x7f080db4

    return p0

    :pswitch_6
    const p0, 0x7f080db6

    return p0

    :pswitch_7
    const p0, 0x7f080daf

    return p0

    :pswitch_8
    const p0, 0x7f080dae

    return p0

    :pswitch_9
    const p0, 0x7f080dad

    return p0

    :pswitch_a
    const p0, 0x7f080db1

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5bd309cf -> :sswitch_13
        -0x21e2d249 -> :sswitch_12
        -0x21e2d247 -> :sswitch_11
        0xb317fff -> :sswitch_10
        0xb318000 -> :sswitch_f
        0xb318001 -> :sswitch_e
        0xb318002 -> :sswitch_d
        0xb318003 -> :sswitch_c
        0xb318004 -> :sswitch_b
        0xb318006 -> :sswitch_a
        0xb31f45e -> :sswitch_9
        0xb31f45f -> :sswitch_8
        0xb3268bc -> :sswitch_7
        0x21bf37a4 -> :sswitch_6
        0x2ce7bc89 -> :sswitch_5
        0x3a0e191a -> :sswitch_4
        0x3a0e191b -> :sswitch_3
        0x3a1c309c -> :sswitch_2
        0x441a2e52 -> :sswitch_1
        0x724eccdc -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static g(Landroid/content/Context;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lof/i$d;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lof/i;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lof/i;->h(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_2

    new-instance v4, Lof/i$d;

    invoke-direct {v4}, Lof/i$d;-><init>()V

    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/JSONObject;

    const-string v6, "id"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lof/i$d;->a:Ljava/lang/String;

    const-string v6, "action"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lof/i$d;->b:Ljava/lang/String;

    iget-object v6, v4, Lof/i$d;->a:Ljava/lang/String;

    invoke-static {v6}, Lof/i;->f(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    iput v6, v4, Lof/i$d;->c:I

    const-string v6, "text"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lof/i$d;->d:Ljava/lang/String;

    const-string v6, "language"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lof/i$d;->e:Ljava/lang/String;

    const-string v6, "show_time"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v4, Lof/i$d;->f:J

    const-string v6, "duration"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lof/i$d;->g:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, v4, Lof/i$d;->f:J

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    const-wide/16 v7, 0x3c

    div-long/2addr v5, v7

    div-long/2addr v5, v7

    iget v7, v4, Lof/i$d;->g:I

    int-to-long v7, v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, v4, Lof/i$d;->e:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, v4, Lof/i$d;->a:Ljava/lang/String;

    invoke-static {v5}, Lpf/i;->i(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v2, 0x1

    if-le p0, v2, :cond_3

    sget-object p0, Lof/i;->b:Ljava/util/Comparator;

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    :try_start_1
    const-string v2, "NotificationLinkUilts"

    const-string v3, "getNotificationLinkageDatas failed"

    invoke-static {v2, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_2
    monitor-exit v1

    return-object v0

    :goto_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static h(Landroid/content/Context;)Lorg/json/JSONArray;
    .locals 4

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "/notification_linkage/"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "notification_linkage_data"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {v2}, Lbl/e;->i(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    :cond_1
    :try_start_2
    invoke-static {v2}, Lbl/e;->b(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_2

    :catch_0
    move-exception p0

    move-object v1, v2

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    :goto_0
    :try_start_3
    const-string v2, "NotificationLinkUilts"

    const-string v3, "read file data failed"

    invoke-static {v2, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {v1}, Lbl/e;->b(Ljava/io/InputStream;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :goto_1
    return-object v0

    :goto_2
    :try_start_5
    invoke-static {v1}, Lbl/e;->b(Ljava/io/InputStream;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :catch_3
    throw p0
.end method

.method private static i(Landroid/content/Context;Lof/i$d;)V
    .locals 1

    new-instance v0, Lof/i$c;

    invoke-direct {v0, p0, p1}, Lof/i$c;-><init>(Landroid/content/Context;Lof/i$d;)V

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private static j(Landroid/content/Context;Lof/i$d;)V
    .locals 1

    iget-boolean v0, p1, Lof/i$d;->h:Z

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lof/i;->d(Landroid/content/Context;Lof/i$d;)V

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lof/i;->i(Landroid/content/Context;Lof/i$d;)V

    :goto_0
    return-void
.end method

.method public static k(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lof/i$d;

    invoke-direct {v0}, Lof/i$d;-><init>()V

    const-string v1, "key_notification_id"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lof/i$d;->a:Ljava/lang/String;

    const-string v1, "key_notification_action"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lof/i$d;->b:Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "key_notification_visible"

    invoke-virtual {p1, v3, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lof/i$d;->h:Z

    const-string v1, "key_notificaton_text"

    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lof/i$d;->d:Ljava/lang/String;

    const-string v1, "key_notificaton_language"

    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lof/i$d;->e:Ljava/lang/String;

    const-wide/16 v1, 0x0

    const-string v3, "key_notification_showtime"

    invoke-virtual {p1, v3, v1, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Lof/i$d;->f:J

    const/4 v1, 0x6

    const-string v2, "key_notification_duration"

    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, v0, Lof/i$d;->g:I

    invoke-static {p0, v0}, Lof/i;->j(Landroid/content/Context;Lof/i$d;)V

    return-void
.end method

.method public static l(Landroid/content/Context;Lof/i$d;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p0, p1}, Lof/i;->j(Landroid/content/Context;Lof/i$d;)V

    return-void
.end method

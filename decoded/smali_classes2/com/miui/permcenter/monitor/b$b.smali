.class public Lcom/miui/permcenter/monitor/b$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/permcenter/monitor/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method private static a(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz p1, :cond_0

    const p1, 0x7f120d30

    goto :goto_0

    :cond_0
    const p1, 0x7f120d2e

    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static b(I)I
    .locals 1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_6

    const/16 v0, 0xa

    if-eq p0, v0, :cond_5

    const/16 v0, 0x13

    if-eq p0, v0, :cond_4

    const/4 v0, 0x6

    if-eq p0, v0, :cond_3

    const/4 v0, 0x7

    if-eq p0, v0, :cond_2

    const/16 v0, 0x16

    if-eq p0, v0, :cond_1

    const/16 v0, 0x17

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    packed-switch p0, :pswitch_data_3

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const p0, 0x7f120d2a

    return p0

    :pswitch_1
    const p0, 0x7f120d32

    return p0

    :pswitch_2
    const p0, 0x7f120d39

    return p0

    :pswitch_3
    const p0, 0x7f120d33

    return p0

    :pswitch_4
    const p0, 0x7f120d41

    return p0

    :pswitch_5
    const p0, 0x7f120d42

    return p0

    :pswitch_6
    const p0, 0x7f120d31

    return p0

    :pswitch_7
    const p0, 0x7f120d29

    return p0

    :pswitch_8
    const p0, 0x7f120d40

    return p0

    :pswitch_9
    const p0, 0x7f120d3a

    return p0

    :pswitch_a
    const p0, 0x7f120d3b

    return p0

    :pswitch_b
    const p0, 0x7f120d3c

    return p0

    :pswitch_c
    const p0, 0x7f120d24

    return p0

    :pswitch_d
    const p0, 0x7f120d3d

    return p0

    :pswitch_e
    const p0, 0x7f120d2c

    return p0

    :pswitch_f
    const p0, 0x7f120d28

    return p0

    :pswitch_10
    const p0, 0x7f120d25

    return p0

    :pswitch_11
    const p0, 0x7f120d37

    return p0

    :pswitch_12
    const p0, 0x7f120d35

    return p0

    :pswitch_13
    const p0, 0x7f120d38

    return p0

    :pswitch_14
    const p0, 0x7f120d26

    return p0

    :cond_0
    const p0, 0x7f120d3e

    return p0

    :cond_1
    const p0, 0x7f120d3f

    return p0

    :cond_2
    const p0, 0x7f120d27

    return p0

    :cond_3
    const p0, 0x7f120d2b

    return p0

    :cond_4
    const p0, 0x7f120d34

    return p0

    :cond_5
    const p0, 0x7f120d36

    return p0

    :cond_6
    const p0, 0x7f120d2d

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1a
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x22
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2711
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static c(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_4

    const/4 v0, 0x4

    if-eq p0, v0, :cond_4

    const/4 v0, 0x6

    if-eq p0, v0, :cond_4

    const/4 v0, 0x7

    if-eq p0, v0, :cond_3

    const/16 v0, 0xa

    if-eq p0, v0, :cond_2

    const/16 v0, 0x13

    if-eq p0, v0, :cond_1

    const/16 v0, 0x16

    if-eq p0, v0, :cond_0

    const/16 v0, 0x17

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    packed-switch p0, :pswitch_data_3

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    const-string p0, "dangerous"

    return-object p0

    :cond_0
    :pswitch_1
    const-string p0, "duration"

    return-object p0

    :cond_1
    const-string p0, "notice"

    return-object p0

    :cond_2
    :pswitch_2
    const-string p0, "read"

    return-object p0

    :cond_3
    const-string p0, "pay"

    return-object p0

    :cond_4
    :pswitch_3
    const-string p0, "open"

    return-object p0

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1a
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x22
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2711
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static d(Landroid/content/Context;IILzb/b;Lzb/m;)V
    .locals 8

    invoke-static {p1}, Lcom/miui/permcenter/monitor/b$b;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/miui/permcenter/monitor/b$b;->b(I)I

    move-result v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e

    if-nez v1, :cond_0

    goto/16 :goto_5

    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "action"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p3}, Lzb/b;->e()Ljava/lang/String;

    move-result-object v1

    const-string v3, "app_package_name"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "app_sign"

    const-string v3, "app_version_name"

    const-string v4, "app_version_code"

    const-string v5, "app_display_name"

    if-nez p4, :cond_1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p4

    invoke-virtual {p3}, Lzb/b;->e()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x40

    invoke-virtual {p4, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v7, p4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v5, p4, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4}, Lcom/miui/permission/RequiredPermissionsUtil;->getPackageSHA256(Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object p4

    invoke-interface {v2, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p4

    invoke-virtual {p4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_1
    invoke-virtual {p4}, Lzb/m;->a()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p4}, Lzb/m;->c()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p4}, Lzb/m;->d()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p4}, Lzb/m;->b()Ljava/lang/String;

    move-result-object p4

    invoke-interface {v2, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p4, "threshold_value"

    invoke-interface {v2, p4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "open"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string p4, "app_downstream_component_name"

    const-string v1, "app_downstream_package_name"

    const-string v3, "app_start_way"

    const-string v4, "app_component"

    const-string v5, "app_read_times"

    if-eqz p2, :cond_5

    const/4 p2, 0x4

    if-ne p2, p1, :cond_3

    instance-of p2, p3, Lzb/c;

    if-eqz p2, :cond_3

    check-cast p3, Lzb/c;

    invoke-virtual {p3}, Lzb/c;->h()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p3}, Lzb/c;->j()Z

    move-result p2

    invoke-static {p0, p2}, Lcom/miui/permcenter/monitor/b$b;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v2, v3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v2, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v2, p4, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    const/4 p0, 0x6

    if-eq p0, p1, :cond_4

    const/16 p0, 0x1b

    if-eq p0, p1, :cond_4

    const/16 p0, 0x24

    if-ne p0, p1, :cond_d

    :cond_4
    instance-of p0, p3, Lzb/a;

    if-eqz p0, :cond_d

    :goto_1
    check-cast p3, Lzb/a;

    invoke-virtual {p3}, Lzb/a;->h()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v2, v4, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p3}, Lzb/a;->c()I

    move-result p0

    goto :goto_3

    :cond_5
    const-string p1, "pay"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    instance-of p1, p3, Lzb/c;

    if-eqz p1, :cond_7

    check-cast p3, Lzb/c;

    invoke-virtual {p3}, Lzb/c;->h()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    if-nez p0, :cond_6

    return-void

    :cond_6
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "pay_way_package_name"

    invoke-interface {v2, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v2, v4, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    invoke-virtual {p3}, Lzb/c;->c()I

    move-result p0

    goto :goto_3

    :cond_7
    const-string p1, "read"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string p2, "dangerous"

    if-nez p1, :cond_8

    const-string p1, "notice"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    :cond_8
    instance-of p1, p3, Lzb/d;

    if-eqz p1, :cond_9

    invoke-virtual {p3}, Lzb/b;->c()I

    move-result p0

    :goto_3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v2, v5, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_9
    const-string p1, "duration"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    :cond_a
    instance-of v6, p3, Lzb/f;

    if-eqz v6, :cond_b

    invoke-virtual {p3}, Lzb/b;->d()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v2, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_b
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    instance-of p1, p3, Lzb/c;

    if-eqz p1, :cond_c

    check-cast p3, Lzb/c;

    invoke-virtual {p3}, Lzb/c;->h()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_c
    instance-of p0, p3, Lzb/a;

    if-eqz p0, :cond_d

    goto/16 :goto_1

    :cond_d
    :goto_4
    invoke-static {}, Lcom/miui/analytics/StatManager;->getInstance()Lcom/miui/analytics/StatManager;

    move-result-object p0

    const-string p1, "malicious_app_track"

    invoke-virtual {p0, v0, v2, p1}, Lcom/miui/analytics/StatManager;->track(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    :cond_e
    :goto_5
    return-void
.end method

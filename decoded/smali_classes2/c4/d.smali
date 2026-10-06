.class public Lc4/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 8

    const-class v0, Ljava/lang/String;

    const-string v1, "android.provider.MiuiSettings$SettingsCloudData"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x4

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/ContentResolver;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const/4 v7, 0x2

    aput-object v0, v4, v7

    const/4 v0, 0x3

    aput-object v2, v4, v0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    aput-object p0, v3, v6

    aput-object p1, v3, v5

    aput-object p2, v3, v7

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v0

    const-string p0, "getCloudDataInt"

    invoke-static {v1, v2, p0, v4, v3}, Lbh/f;->g(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private static b()Z
    .locals 1

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    return v0
.end method

.method public static c(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lc4/d;->e(Landroid/content/Context;)V

    invoke-static {}, Lc4/d;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lc4/d;->g(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lc4/d;->f(Landroid/content/Context;)V

    invoke-static {p0}, Lc4/d;->d(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method private static d(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    const-string v0, "cmGeneralNotificationModule"

    const-string v1, "cmGeneralNotificationCnt"

    const/4 v2, 0x5

    invoke-static {p0, v0, v1, v2}, Lc4/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    const-string v0, "cm_general_clean_notification_cnt"

    invoke-static {v0, p0}, Lr4/a;->p(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private static e(Landroid/content/Context;)V
    .locals 4

    const-string v0, "CmNotificationPriorityConfig"

    const-string v1, "CMCloudControlHelper"

    const-string v2, "loadNotificationPriorityConfig"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v1, "CnSizeThreshold"

    const/16 v2, 0x20

    invoke-static {p0, v0, v1, v2}, Lc4/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    const-string v2, "GlobalSizeThreshold"

    const/4 v3, 0x0

    invoke-static {p0, v0, v2, v3}, Lc4/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    invoke-static {p0}, Lc4/c;->f(Landroid/content/Context;)Lc4/c;

    move-result-object p0

    invoke-virtual {p0, v1}, Lc4/c;->l(I)V

    invoke-virtual {p0, v0}, Lc4/c;->m(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private static f(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    const-string v0, "cmWechatNotificationModule"

    const-string v1, "cmWechatNotificationCnt"

    const/4 v2, 0x5

    invoke-static {p0, v0, v1, v2}, Lc4/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    const-string v0, "cm_wechat_notification_cnt"

    invoke-static {v0, p0}, Lr4/a;->p(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private static g(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    const-string v0, "cmWhatsAppNotificationModule"

    const-string v1, "cmWhatsAppNotificationCnt"

    const/4 v2, 0x5

    invoke-static {p0, v0, v1, v2}, Lc4/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    const-string v0, "cm_whatsapp_clean_notification_cnt"

    invoke-static {v0, p0}, Lr4/a;->p(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

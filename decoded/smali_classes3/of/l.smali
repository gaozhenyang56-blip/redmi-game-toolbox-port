.class public Lof/l;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lof/l;->g(Landroid/content/Context;)V

    invoke-static {p0}, Lof/l;->b(Landroid/content/Context;)V

    invoke-static {p0}, Lof/l;->f(Landroid/content/Context;)V

    invoke-static {p0}, Lof/l;->c(Landroid/content/Context;)V

    invoke-static {p0}, Lof/l;->e(Landroid/content/Context;)V

    invoke-static {p0}, Lof/l;->d(Landroid/content/Context;)V

    invoke-static {p0}, Lof/l;->h(Landroid/content/Context;)V

    return-void
.end method

.method private static b(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Ls2/j;

    invoke-direct {v0}, Ls2/j;-><init>()V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const/4 v2, 0x4

    invoke-static {p0, v0, v1, v2}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method private static c(Landroid/content/Context;)V
    .locals 6

    new-instance v1, Li3/a;

    invoke-direct {v1}, Li3/a;-><init>()V

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.miui.packageinstaller.ACTION_INSTALL_SUCCESS"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.permission.INSTALL_PACKAGES"

    const/4 v4, 0x0

    const/4 v5, 0x2

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lx4/v;->n(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    return-void
.end method

.method private static d(Landroid/content/Context;)V
    .locals 7

    invoke-static {p0}, La8/x;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    invoke-static {p0}, Lc4/j;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ls2/l;

    invoke-direct {v2}, Ls2/l;-><init>()V

    const-string v1, "com.miui.cleaner"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.miui.cleaner.action.UPDATE_SHORTCUT"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x2

    const-string v4, "com.miui.cleaner.permission.UPDATE_CLEANER_SHORTCUT"

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lx4/v;->n(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string v0, "com.miui.cleanmaster.action.UPDATE_SHORTCUT"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-static {p0, v2, v3, v0}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    :cond_1
    :goto_0
    invoke-static {}, Ldb/g;->g()Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_2

    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "miui.intent.action.MIUI_CLD_PROCESSED_DONE"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v2, Lc4/r;

    invoke-direct {v2}, Lc4/r;-><init>()V

    invoke-static {p0, v2, v0, v1}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    :cond_2
    invoke-static {}, Lta/d;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "miui.intent.action.FBO_PROCESSED_DONE"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v2, Lc4/m;

    invoke-direct {v2}, Lc4/m;-><init>()V

    invoke-static {p0, v2, v0, v1}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    :cond_3
    return-void
.end method

.method private static e(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lcom/miui/networkassistant/monitor/GolbalReceiver;

    invoke-direct {v0}, Lcom/miui/networkassistant/monitor/GolbalReceiver;-><init>()V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method private static f(Landroid/content/Context;)V
    .locals 7

    new-instance v1, Lce/b;

    invoke-direct {v1}, Lce/b;-><init>()V

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "miui.intent.action.CHANGE_POWER_SAVE_MODE"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.miui.powercenter.permission.POWER_COMMAND"

    const/4 v4, 0x0

    const/4 v5, 0x2

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lx4/v;->n(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    new-instance v0, Ljd/b;

    invoke-direct {v0}, Ljd/b;-><init>()V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {}, Lme/w;->T()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "android.intent.action.REBOOT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_0
    const/4 v2, 0x4

    invoke-static {p0, v0, v1, v2}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    invoke-static {}, Lme/w;->J0()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v2, Lge/c;

    invoke-direct {v2}, Lge/c;-><init>()V

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "miui.intent.action.HANG_UP_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x2

    const-string v4, "com.miui.permission.HANG_UP_CHANGED"

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lx4/v;->n(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    :cond_1
    return-void
.end method

.method private static g(Landroid/content/Context;)V
    .locals 12

    new-instance v1, Lyf/a;

    invoke-direct {v1}, Lyf/a;-><init>()V

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.xiaomi.market.action.APP_UPDATE_CHECKED"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.xiaomi.market.action.APP_UPDATE_CHECKED_GLOBAL"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "miui.permission.USE_INTERNAL_GENERAL_API"

    const/4 v4, 0x0

    const/4 v5, 0x2

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lx4/v;->n(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    new-instance v7, Lyf/b;

    invoke-direct {v7}, Lyf/b;-><init>()V

    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.android.settings.action.DEV_OPEN"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v9, "com.miui.securitycenter.permission.SWITCH_DEV_MODE"

    const/4 v10, 0x0

    const/4 v11, 0x2

    move-object v6, p0

    invoke-static/range {v6 .. v11}, Lx4/v;->n(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    new-instance v1, Lmf/b;

    invoke-direct {v1}, Lmf/b;-><init>()V

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.miui.securitycenter.action.TRACK_CLOUD_COUNT"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.miui.securitrycenter.permission.EXTERNAL_ANLYTICS"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lx4/v;->n(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    new-instance v0, Lmf/a;

    invoke-direct {v0}, Lmf/a;-><init>()V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/4 v2, 0x4

    invoke-static {p0, v0, v1, v2}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    new-instance v0, Lfh/a;

    invoke-direct {v0}, Lfh/a;-><init>()V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-boolean v3, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v3, :cond_0

    const-string v3, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_0
    invoke-static {p0, v0, v1, v2}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    invoke-static {}, Lcom/miui/securitycenter/provider/SecSettingsSearchProvider$a;->b()Lcom/miui/securitycenter/provider/SecSettingsSearchProvider$a;

    move-result-object v0

    new-instance v1, Lof/k;

    invoke-direct {v1}, Lof/k;-><init>()V

    invoke-static {v1}, Lcom/miui/securitycenter/provider/SecSettingsSearchProvider$b;->a(Lb0/i;)Lcom/miui/securitycenter/provider/SecSettingsSearchProvider$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/securitycenter/provider/SecSettingsSearchProvider$a;->a(Lcom/miui/securitycenter/provider/SecSettingsSearchProvider$b;)V

    invoke-virtual {v0, p0}, Lcom/miui/securitycenter/provider/SecSettingsSearchProvider$a;->c(Landroid/content/Context;)V

    return-void
.end method

.method private static h(Landroid/content/Context;)V
    .locals 3

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ls2/k;

    invoke-direct {v0}, Ls2/k;-><init>()V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "miui.intent.action.TRACK_ANTIVURS_DATA"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

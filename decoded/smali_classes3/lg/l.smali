.class public Llg/l;
.super Llg/k;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Llg/k;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    return-void
.end method

.method private f()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Llg/k;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "fw_fsgesture_support_superpower"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    move v1, v0

    :goto_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    return v2

    :cond_0
    return v0
.end method

.method private g()Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Llg/k;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.miui.securityadd"

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "is_support_superpower_fw"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private h()Z
    .locals 6

    iget-object v0, p0, Llg/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lpg/i;->u(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Llg/l;->i()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-direct {p0}, Llg/l;->f()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-direct {p0}, Llg/l;->g()Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    const/4 v0, 0x0

    :try_start_0
    const-string v2, "android.view.WindowManagerGlobal"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getWindowManagerService"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v0, v4}, Lbh/f;->h(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getGestureStubListener"

    new-array v5, v1, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    if-eqz v3, :cond_4

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_0
    if-nez v0, :cond_5

    const/4 v1, 0x1

    :cond_5
    return v1
.end method

.method private i()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Llg/k;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "systemui_fsgesture_support_superpower"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    move v1, v0

    :goto_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    return v2

    :cond_0
    return v0
.end method

.method private j()V
    .locals 1

    invoke-direct {p0}, Llg/l;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Llg/l;->z(Z)V

    :cond_0
    return-void
.end method

.method private k()V
    .locals 1

    invoke-direct {p0}, Llg/l;->o()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Llg/l;->x(I)V

    :cond_0
    return-void
.end method

.method private l()V
    .locals 3

    invoke-direct {p0}, Llg/l;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Llg/k;->a:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {}, Lx4/z1;->y()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/app/MiuiStatusBarManager;->setExpandableUnderKeyguardForUser(Landroid/content/Context;ZI)V

    :cond_0
    return-void
.end method

.method private m()V
    .locals 9

    const-string v0, "SystemUIPolicy"

    const-class v1, Landroid/app/StatusBarManager;

    :try_start_0
    iget-object v2, p0, Llg/k;->a:Landroid/content/Context;

    const-string v3, "statusbar"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "android.view.View"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "STATUS_BAR_DISABLE_RECENT"

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v4, v5}, Lbh/f;->n(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v4, "DISABLE_EXPAND"

    invoke-static {v1, v4, v5}, Lbh/f;->n(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v6, "DISABLE_NOTIFICATION_ICONS"

    invoke-static {v1, v6, v5}, Lbh/f;->n(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string v7, "DISABLE_NOTIFICATION_ALERTS"

    invoke-static {v1, v7, v5}, Lbh/f;->n(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const-string v8, "DISABLE_NOTIFICATION_TICKER"

    invoke-static {v1, v8, v5}, Lbh/f;->n(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    or-int/2addr v3, v6

    or-int/2addr v3, v7

    or-int/2addr v1, v3

    iget-object v3, p0, Llg/k;->a:Landroid/content/Context;

    invoke-static {v3}, Lpg/i;->e(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    or-int/2addr v1, v4

    :cond_0
    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, "disable"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v6

    invoke-static {v2, v5, v4, v3}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "disableRecentAndStatusBar complete"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "disableRecentAndStatusBar error:"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private n()V
    .locals 4

    iget-object v0, p0, Llg/k;->a:Landroid/content/Context;

    invoke-static {v0}, Ljg/e;->y(Landroid/content/Context;)Ljg/e;

    move-result-object v0

    invoke-virtual {v0}, Ljg/e;->x()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Llg/k;->a:Landroid/content/Context;

    invoke-static {v0}, Ljg/e;->y(Landroid/content/Context;)Ljg/e;

    move-result-object v0

    invoke-virtual {v0}, Ljg/e;->x()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Llg/l$a;

    invoke-direct {v1, p0}, Llg/l$a;-><init>(Llg/l;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private o()I
    .locals 4

    iget-object v0, p0, Llg/k;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lx4/z1;->y()I

    move-result v1

    const-string v2, "lock_screen_show_notifications"

    const/4 v3, -0x1

    invoke-static {v0, v2, v3, v1}, Lah/e;->b(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private p()Z
    .locals 3

    iget-object v0, p0, Llg/k;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "show_gesture_appswitch_feature"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private q()Z
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    const-class v1, Landroid/app/MiuiStatusBarManager;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v3, "isExpandableUnderKeyguardForUser"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v6, p0, Llg/k;->a:Landroid/content/Context;

    aput-object v6, v4, v0

    invoke-static {}, Lx4/z1;->y()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v7

    invoke-static {v1, v2, v3, v5, v4}, Lbh/f;->g(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method private r()I
    .locals 3

    iget-object v0, p0, Llg/k;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "disallow_key_menu"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private s()Z
    .locals 6

    const-string v0, "android.provider.MiuiSettings$Global"

    invoke-static {v0}, Lbh/d$a;->d(Ljava/lang/String;)Lbh/d$a;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/ContentResolver;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Llg/k;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    aput-object v3, v1, v4

    const-string v3, "force_fsg_nav_bar"

    aput-object v3, v1, v5

    const-string v3, "getBoolean"

    invoke-virtual {v0, v3, v2, v1}, Lbh/d$a;->c(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lbh/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lbh/d$a;->a()Z

    move-result v0

    return v0
.end method

.method private t()V
    .locals 3

    iget-object v0, p0, Llg/k;->b:Landroid/content/SharedPreferences;

    const-string v1, "pref_key_superpower_gesturenavbar_originstate"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-direct {p0}, Llg/l;->s()Z

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Llg/l;->z(Z)V

    :cond_0
    return-void
.end method

.method private u()V
    .locals 4

    invoke-direct {p0}, Llg/l;->o()I

    move-result v0

    iget-object v1, p0, Llg/k;->b:Landroid/content/SharedPreferences;

    const-string v2, "pref_key_superpower_keyguard_originnotifications"

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eq v0, v1, :cond_0

    if-ltz v1, :cond_0

    invoke-direct {p0, v1}, Llg/l;->x(I)V

    :cond_0
    return-void
.end method

.method private v()V
    .locals 4

    invoke-direct {p0}, Llg/l;->q()Z

    move-result v0

    iget-object v1, p0, Llg/k;->b:Landroid/content/SharedPreferences;

    const-string v2, "pref_key_superpower_keyguard_originexpand"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Llg/k;->a:Landroid/content/Context;

    invoke-static {}, Lx4/z1;->y()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/app/MiuiStatusBarManager;->setExpandableUnderKeyguardForUser(Landroid/content/Context;ZI)V

    :cond_0
    return-void
.end method

.method private w(Z)V
    .locals 2

    iget-object v0, p0, Llg/k;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "show_gesture_appswitch_feature"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private x(I)V
    .locals 3

    iget-object v0, p0, Llg/k;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lx4/z1;->y()I

    move-result v1

    const-string v2, "lock_screen_show_notifications"

    invoke-static {v0, v2, p1, v1}, Lah/e;->f(Landroid/content/ContentResolver;Ljava/lang/String;II)V

    return-void
.end method

.method private y(I)V
    .locals 2

    iget-object v0, p0, Llg/k;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "disallow_key_menu"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private z(Z)V
    .locals 7

    const-string v0, "android.provider.MiuiSettings$Global"

    invoke-static {v0}, Lbh/d$a;->d(Ljava/lang/String;)Lbh/d$a;

    move-result-object v0

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/ContentResolver;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Llg/k;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    aput-object v3, v1, v4

    const-string v3, "force_fsg_nav_bar"

    aput-object v3, v1, v5

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v1, v6

    const-string p1, "putBoolean"

    invoke-virtual {v0, p1, v2, v1}, Lbh/d$a;->c(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lbh/d$a;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 3

    iget-object v0, p0, Llg/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lme/w;->S(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Llg/k;->b:Landroid/content/SharedPreferences;

    const-string v2, "pref_key_superpower_systemui_state"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Llg/k;->a:Landroid/content/Context;

    invoke-static {v0}, Ljg/e;->y(Landroid/content/Context;)Ljg/e;

    move-result-object v0

    invoke-virtual {v0}, Ljg/e;->w()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public b(Z)V
    .locals 5

    iget-object p1, p0, Llg/k;->b:Landroid/content/SharedPreferences;

    const-string v0, "pref_key_superpower_systemui_state"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-direct {p0}, Llg/l;->h()Z

    move-result p1

    iget-object v2, p0, Llg/k;->b:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-direct {p0}, Llg/l;->s()Z

    move-result v3

    const-string v4, "pref_key_superpower_gesturenavbar_originstate"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0}, Llg/l;->q()Z

    move-result v3

    const-string v4, "pref_key_superpower_keyguard_originexpand"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0}, Llg/l;->o()I

    move-result v3

    const-string v4, "pref_key_superpower_keyguard_originnotifications"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0}, Llg/l;->p()Z

    move-result v3

    const-string v4, "pref_key_superpower_appswitchfeature_state"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v3, "pref_key_superpower_fsgesture_origin_state"

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const/4 v3, 0x1

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Llg/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lpg/i;->D(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Llg/l;->r()I

    move-result v0

    const-string v4, "pref_key_superpower_physical_button"

    invoke-interface {v2, v4, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_0
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    if-nez p1, :cond_1

    invoke-direct {p0}, Llg/l;->j()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Llg/l;->s()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Llg/l;->p()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0, v1}, Llg/l;->w(Z)V

    :cond_2
    :goto_0
    invoke-direct {p0}, Llg/l;->l()V

    invoke-direct {p0}, Llg/l;->k()V

    invoke-direct {p0}, Llg/l;->m()V

    iget-object p1, p0, Llg/k;->a:Landroid/content/Context;

    invoke-static {p1}, Lpg/i;->D(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-direct {p0, v3}, Llg/l;->y(I)V

    :cond_3
    return-void
.end method

.method public c()V
    .locals 0

    invoke-direct {p0}, Llg/l;->m()V

    return-void
.end method

.method public d()V
    .locals 2

    invoke-virtual {p0}, Llg/l;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SuperPowerSaveManager"

    const-string v1, "systemui policy restore state"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Llg/l;->e()V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 4

    iget-object v0, p0, Llg/k;->b:Landroid/content/SharedPreferences;

    const-string v1, "pref_key_superpower_systemui_state"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Llg/k;->a:Landroid/content/Context;

    invoke-static {v0}, Ljg/e;->y(Landroid/content/Context;)Ljg/e;

    move-result-object v0

    invoke-virtual {v0}, Ljg/e;->w()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    iget-object v0, p0, Llg/k;->b:Landroid/content/SharedPreferences;

    const-string v3, "pref_key_superpower_fsgesture_origin_state"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Llg/l;->t()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Llg/k;->b:Landroid/content/SharedPreferences;

    const-string v3, "pref_key_superpower_appswitchfeature_state"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-direct {p0}, Llg/l;->p()Z

    move-result v3

    if-eq v0, v3, :cond_2

    invoke-direct {p0, v0}, Llg/l;->w(Z)V

    :cond_2
    :goto_0
    invoke-direct {p0}, Llg/l;->v()V

    invoke-direct {p0}, Llg/l;->u()V

    invoke-direct {p0}, Llg/l;->n()V

    iget-object v0, p0, Llg/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lpg/i;->D(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Llg/k;->b:Landroid/content/SharedPreferences;

    const-string v3, "pref_key_superpower_physical_button"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Llg/l;->y(I)V

    :cond_3
    iget-object v0, p0, Llg/k;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_4
    return-void
.end method

.method public name()Ljava/lang/String;
    .locals 1

    const-string v0, "systemui policy"

    return-object v0
.end method

.class public Lbe/g;
.super Lce/a;
.source "SourceFile"


# static fields
.field private static final b:Z

.field private static final c:I

.field private static final d:Z


# instance fields
.field private a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lx4/z1;->y()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sput-boolean v1, Lbe/g;->b:Z

    goto :goto_1

    :cond_0
    const-string v0, "fpsList"

    invoke-static {v0}, Lmiui/util/FeatureParser;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v0, v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    sput-boolean v0, Lbe/g;->b:Z

    :goto_1
    invoke-static {}, Lme/w;->f0()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "smart_fps_value"

    goto :goto_2

    :cond_2
    const-string v0, "defaultFps"

    :goto_2
    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lbe/g;->c:I

    const-string v0, "ro.vendor.fps.switch.default"

    invoke-static {v0, v1}, Lmiuix/core/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lbe/g;->d:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lce/a;-><init>()V

    return-void
.end method

.method private d()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lbe/g;->a:Ljava/lang/Object;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "miui.hardware.display.DisplayFeatureManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getInstance"

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lbh/f;->h(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lbe/g;->a:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lbe/g;->a:Ljava/lang/Object;

    return-object v0
.end method

.method private e(Landroid/content/Context;)I
    .locals 3

    sget-boolean v0, Lbe/g;->d:Z

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const-string v2, "user_refresh_rate"

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    if-lt v0, v1, :cond_0

    sget v0, Lbe/g;->c:I

    invoke-static {p1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    return p1

    :cond_0
    sget v0, Lbe/g;->c:I

    invoke-static {p1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    return p1

    :cond_1
    sget p1, Lbe/g;->c:I

    const-string v0, "persist.vendor.dfps.level"

    invoke-static {v0, p1}, Lmiuix/core/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method private f(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "dc_back_light"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    move v0, v1

    :cond_1
    return v0
.end method

.method private g()Z
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "miui.util.FeatureParser"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v3, "getBoolean"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v0

    const/4 v6, 0x1

    aput-object v2, v5, v6

    new-array v4, v4, [Ljava/lang/Object;

    const-string v7, "dc_backlight_fps_incompatible"

    aput-object v7, v4, v0

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v7, v4, v6

    invoke-static {v1, v2, v3, v5, v4}, Lbh/f;->g(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method private h()Z
    .locals 3

    const-string v0, "persist.vendor.power.dfps.level"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiuix/core/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0x3c

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private i(I)V
    .locals 7

    :try_start_0
    invoke-direct {p0}, Lbe/g;->d()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "setScreenEffect"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v6, 0x1

    aput-object v4, v3, v6

    new-array v2, v2, [Ljava/lang/Object;

    const/16 v4, 0x18

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v6

    invoke-static {v0, v1, v3, v2}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private j(I)V
    .locals 8

    :try_start_0
    invoke-direct {p0}, Lbe/g;->d()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "setScreenEffect"

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const/4 v7, 0x2

    aput-object v4, v3, v7

    new-array v2, v2, [Ljava/lang/Object;

    const/16 v4, 0x18

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v6

    const/16 p1, 0xfa

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v7

    invoke-static {v0, v1, v3, v2}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private k(Landroid/content/Context;I)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const-string v2, "user_refresh_rate"

    if-lt v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v2, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v2, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    sget-boolean v1, Lbe/g;->d:Z

    if-nez v1, :cond_2

    invoke-direct {p0, p2}, Lbe/g;->i(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "peak_refresh_rate"

    invoke-static {v1, v2, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "miui_refresh_rate"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 6

    const-class v0, Lbe/g;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lbe/g;->b:Z

    const/16 v2, 0x3c

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lbe/g;->h()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string p1, "LowFpsPowerMode"

    const-string v1, "setScreenEffectOld deal with ota"

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2}, Lbe/g;->j(I)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lbe/g;->j(I)V

    monitor-exit v0

    return-void

    :cond_0
    if-eqz v1, :cond_5

    invoke-direct {p0, p1}, Lbe/g;->e(Landroid/content/Context;)I

    move-result v1

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lbe/g;->f(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lbe/g;->g()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p1, "LowFpsPowerMode"

    const-string v1, "PowerMode leavePowerMode DCFpsIncompatible return"

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Lgd/c;->d2(I)V

    monitor-exit v0

    return-void

    :cond_2
    invoke-static {}, Lgd/c;->x()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    invoke-static {p1, v3}, Lme/w;->E0(Landroid/content/Context;I)V

    sget v1, Lbe/g;->c:I

    invoke-direct {p0, p1, v1}, Lbe/g;->k(Landroid/content/Context;I)V

    invoke-static {v2}, Lgd/c;->d2(I)V

    const-string p1, "LowFpsPowerMode"

    const-string v1, "PowerMode leavePowerMode SMART_FPS_OPEN return"

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_3
    invoke-static {}, Lgd/c;->i0()I

    move-result v1

    if-nez v1, :cond_4

    move v1, v2

    :cond_4
    const-string v3, "LowFpsPowerMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PowerMode leavePowerMode lastRefreshRate "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, v1}, Lbe/g;->k(Landroid/content/Context;I)V

    invoke-static {v2}, Lgd/c;->d2(I)V

    monitor-exit v0

    return-void

    :cond_5
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b(Landroid/content/Context;)V
    .locals 1

    invoke-super {p0, p1}, Lce/a;->b(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lbe/g;->c(Landroid/content/Context;Lce/f;)V

    return-void
.end method

.method public c(Landroid/content/Context;Lce/f;)V
    .locals 5

    const-class v0, Lbe/g;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lbe/g;->e(Landroid/content/Context;)I

    move-result v1

    sget-boolean v2, Lbe/g;->b:Z

    if-nez v2, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const-string v2, "LowFpsPowerMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PowerMode enterPowerMode currentRefreshRate "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lgd/c;->d2(I)V

    invoke-static {p1}, Lme/w;->A(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Lgd/c;->o1(I)V

    if-eqz p2, :cond_1

    invoke-virtual {p2, v1}, Lce/f;->f(I)V

    invoke-static {p1}, Lme/w;->A(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p2, v1}, Lce/f;->e(I)V

    :cond_1
    const/16 p2, 0x3c

    invoke-direct {p0, p1, p2}, Lbe/g;->k(Landroid/content/Context;I)V

    invoke-static {p1}, Lme/w;->A(Landroid/content/Context;)I

    move-result p2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_2

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lme/w;->E0(Landroid/content/Context;I)V

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

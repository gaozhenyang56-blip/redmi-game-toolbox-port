.class public Llg/j;
.super Llg/k;
.source "SourceFile"


# instance fields
.field private c:Ljava/lang/Object;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lbe/f;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Llg/k;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Llg/j;->d:Ljava/util/List;

    iput-object p3, p0, Llg/j;->e:Landroid/os/Handler;

    invoke-direct {p0}, Llg/j;->y()V

    return-void
.end method

.method private A()Z
    .locals 3

    iget-object v0, p0, Llg/k;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "satellite_state"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    return v2
.end method

.method private B()V
    .locals 6

    invoke-direct {p0}, Llg/j;->g()Z

    move-result v0

    iget-object v1, p0, Llg/k;->b:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, p0, Llg/k;->a:Landroid/content/Context;

    invoke-static {v2}, Lp4/d;->g(Landroid/content/Context;)Z

    move-result v2

    const-string v3, "SP_WIFI_AP_ENABLED"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0}, Llg/j;->o()I

    move-result v2

    const-string v3, "SP_BLUETOOTH_ENABLED"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v2, p0, Llg/k;->a:Landroid/content/Context;

    invoke-static {v2}, Lme/w;->r(Landroid/content/Context;)I

    move-result v2

    const-string v3, "SP_GPS_MODE"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0}, Llg/j;->z()I

    move-result v2

    const-string v3, "SP_SYNC_ENABLED"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v2, p0, Llg/k;->a:Landroid/content/Context;

    invoke-static {v2}, Lme/t;->j(Landroid/content/Context;)Lme/t;

    move-result-object v2

    invoke-virtual {v2}, Lme/t;->t()Z

    move-result v2

    const-string v3, "SP_VIBRATE_ENABLED"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v2, p0, Llg/k;->a:Landroid/content/Context;

    invoke-static {v2}, Lme/t;->j(Landroid/content/Context;)Lme/t;

    move-result-object v2

    invoke-virtual {v2}, Lme/t;->s()Z

    move-result v2

    const-string v3, "SP_TOUCH_VIBRATION_ENABLED"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0}, Llg/j;->p()Z

    move-result v2

    const-string v3, "SP_DIALOG_RING_ENABLED"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v2, p0, Llg/k;->a:Landroid/content/Context;

    invoke-static {v2}, Lme/t;->j(Landroid/content/Context;)Lme/t;

    move-result-object v2

    invoke-virtual {v2}, Lme/t;->r()Z

    move-result v2

    const-string v3, "SP_TOUCH_RING_ENABLED"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v2, p0, Llg/k;->a:Landroid/content/Context;

    invoke-static {v2}, Lme/t;->j(Landroid/content/Context;)Lme/t;

    move-result-object v2

    invoke-virtual {v2}, Lme/t;->p()I

    move-result v2

    const-string v3, "SP_SLEEP_SECONDS"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v2, p0, Llg/k;->a:Landroid/content/Context;

    invoke-static {v2}, Lme/t;->j(Landroid/content/Context;)Lme/t;

    move-result-object v2

    invoke-virtual {v2}, Lme/t;->f()I

    move-result v2

    const-string v3, "SP_BRIGHTNESS_MODE"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v2, p0, Llg/k;->a:Landroid/content/Context;

    invoke-static {v2}, Lx4/m;->n(Landroid/content/Context;)I

    move-result v2

    const-string v3, "SP_BRIGHTNESS"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const/4 v2, 0x1

    if-nez v0, :cond_0

    invoke-direct {p0}, Llg/j;->q()I

    move-result v3

    invoke-direct {p0, v2}, Llg/j;->v(Z)I

    move-result v4

    or-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saveUserSettings:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SettingPolicy"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "SP_FACE_UNLOCK_ENABLED"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_0
    iget-object v3, p0, Llg/k;->a:Landroid/content/Context;

    invoke-static {v3}, Llg/j;->t(Landroid/content/Context;)I

    move-result v3

    const-string v4, "SP_NIGHT_MODE_ENABLED"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0}, Llg/j;->n()Z

    move-result v3

    const-string v4, "SP_AUTO_MODE_ENABLED"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0}, Llg/j;->m()Z

    move-result v3

    const-string v4, "SP_AUTO_DOWNLOAD_ENABLED"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Llg/j;->l(I)F

    move-result v3

    const-string v4, "SP_WINDOW_ANIMATION_SCALE"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0, v2}, Llg/j;->l(I)F

    move-result v2

    const-string v3, "SP_TRANSITION_ANIMATION_SCALE"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0}, Llg/j;->u()I

    move-result v2

    const-string v3, "sp_notification_light_pulse"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0}, Llg/j;->w()Z

    move-result v2

    const-string v3, "sp_touchassistant_enabled"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0}, Llg/j;->r()Z

    move-result v2

    const-string v3, "sp_handy_mode_enabled"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v2, "sp_faceunlock_supported"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private C(IF)V
    .locals 8

    :try_start_0
    invoke-direct {p0}, Llg/j;->x()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-string v2, "setAnimationScale"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v6

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v3, v7

    invoke-static {v0, v1, v2, v4, v3}, Lbh/f;->b(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
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

.method private D(Z)V
    .locals 2

    invoke-direct {p0}, Llg/j;->m()Z

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Llg/k;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_download"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method private E(Z)V
    .locals 2

    invoke-direct {p0}, Llg/j;->n()Z

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Llg/k;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_update"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method private F(I)V
    .locals 3

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Llg/j;->o()I

    move-result v1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Llg/j$a;

    invoke-direct {v0, p0}, Llg/j$a;-><init>(Llg/j;)V

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_0
    return-void
.end method

.method private G()V
    .locals 2

    iget-object v0, p0, Llg/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lx4/m;->i(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f333333    # 0.7f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    const/16 v1, 0x1e

    if-le v0, v1, :cond_0

    iget-object v1, p0, Llg/k;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lx4/m;->r(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method private H(Landroid/content/Context;I)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "screen_brightness"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private I(I)V
    .locals 1

    iget-object v0, p0, Llg/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lme/t;->j(Landroid/content/Context;)Lme/t;

    move-result-object v0

    invoke-virtual {v0}, Lme/t;->f()I

    move-result v0

    if-eq p1, v0, :cond_0

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Llg/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lme/t;->j(Landroid/content/Context;)Lme/t;

    move-result-object v0

    invoke-virtual {v0, p1}, Lme/t;->H(I)V

    :cond_0
    return-void
.end method

.method private J(Z)V
    .locals 2

    invoke-direct {p0}, Llg/j;->p()Z

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Llg/k;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dtmf_tone"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method private K(I)V
    .locals 9

    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Llg/j;->q()I

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    :try_start_0
    invoke-direct {p0}, Llg/j;->A()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Llg/j;->L(I)V

    goto :goto_0

    :cond_1
    const-class v1, Landroid/provider/Settings$Secure;

    const-string v2, "putIntForUser"

    const/4 v3, 0x4

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/ContentResolver;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x2

    aput-object v5, v4, v7

    const/4 v8, 0x3

    aput-object v5, v4, v8

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Llg/k;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    aput-object v5, v3, v6

    const-string v5, "face_unlcok_apply_for_lock"

    aput-object v5, v3, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v7

    invoke-static {}, Lx4/z1;->e()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v8

    invoke-static {v1, v2, v4, v3}, Lbh/f;->h(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private L(I)V
    .locals 2

    iget-object v0, p0, Llg/k;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "face_unlcok_apply_for_lock_backup"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private M(I)V
    .locals 1

    iget-object v0, p0, Llg/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lme/w;->r(Landroid/content/Context;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Llg/k;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lme/w;->y0(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method private N(Z)V
    .locals 2

    invoke-direct {p0}, Llg/j;->r()Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Llg/k;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "handy_mode_state"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private O(Z)V
    .locals 4

    invoke-direct {p0}, Llg/j;->s()Z

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const-string p1, "enable"

    goto :goto_0

    :cond_1
    const-string p1, "disable"

    :goto_0
    :try_start_0
    iget-object v0, p0, Llg/k;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v1, p1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public static P(ILandroid/content/Context;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-le v0, v1, :cond_0

    invoke-static {p1}, Llg/j;->t(Landroid/content/Context;)I

    move-result v0

    if-eq p0, v0, :cond_0

    const-string v0, "uimode"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/UiModeManager;

    :try_start_0
    invoke-virtual {p1, p0}, Landroid/app/UiModeManager;->setNightMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private Q(I)V
    .locals 2

    iget-object v0, p0, Llg/k;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notification_light_pulse"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private R(I)V
    .locals 1

    iget-object v0, p0, Llg/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lme/t;->j(Landroid/content/Context;)Lme/t;

    move-result-object v0

    invoke-virtual {v0}, Lme/t;->p()I

    move-result v0

    if-eq p1, v0, :cond_0

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Llg/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lme/t;->j(Landroid/content/Context;)Lme/t;

    move-result-object v0

    invoke-virtual {v0, p1}, Lme/t;->O(I)V

    :cond_0
    return-void
.end method

.method private S(I)V
    .locals 8

    const-string v0, "miui.app.ToggleManager"

    invoke-direct {p0}, Llg/j;->z()I

    move-result v1

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1

    if-eq p1, v2, :cond_1

    invoke-direct {p0}, Llg/j;->z()I

    move-result v1

    if-ne v1, p1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string v1, "TOGGLE_SYNC"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p1, v1, v2}, Lbh/f;->n(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "createInstance"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    new-array v5, v3, [Ljava/lang/Object;

    iget-object v7, p0, Llg/k;->a:Landroid/content/Context;

    aput-object v7, v5, v6

    invoke-static {v0, v1, v4, v5}, Lbh/f;->h(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "performToggle"

    new-array v4, v3, [Ljava/lang/Class;

    aput-object v2, v4, v6

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v6

    invoke-static {v0, v1, v4, v2}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private T(Z)V
    .locals 3

    invoke-direct {p0}, Llg/j;->w()Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Llg/k;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "touch_assistant_enabled"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz p1, :cond_1

    :try_start_0
    iget-object p1, p0, Llg/k;->a:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.touchassistant.SHOW_FLOATING_WINDOW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.miui.touchassistant"

    const-string v2, "com.miui.touchassistant.CoreService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error while enable touchassistant"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SuperPowerSaveManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private U(Z)V
    .locals 1

    iget-object v0, p0, Llg/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lme/t;->j(Landroid/content/Context;)Lme/t;

    move-result-object v0

    invoke-virtual {v0}, Lme/t;->r()Z

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Llg/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lme/t;->j(Landroid/content/Context;)Lme/t;

    move-result-object v0

    invoke-virtual {v0, p1}, Lme/t;->Q(Z)V

    :cond_0
    return-void
.end method

.method private V(Z)V
    .locals 1

    iget-object v0, p0, Llg/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lme/t;->j(Landroid/content/Context;)Lme/t;

    move-result-object v0

    invoke-virtual {v0}, Lme/t;->s()Z

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Llg/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lme/t;->j(Landroid/content/Context;)Lme/t;

    move-result-object v0

    invoke-virtual {v0, p1}, Lme/t;->R(Z)V

    :cond_0
    return-void
.end method

.method private W(Z)V
    .locals 1

    iget-object v0, p0, Llg/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lme/t;->j(Landroid/content/Context;)Lme/t;

    move-result-object v0

    invoke-virtual {v0}, Lme/t;->t()Z

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Llg/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lme/t;->j(Landroid/content/Context;)Lme/t;

    move-result-object v0

    invoke-virtual {v0, p1}, Lme/t;->S(Z)V

    :cond_0
    return-void
.end method

.method private X(Z)V
    .locals 8

    const-string v0, "miui.app.ToggleManager"

    iget-object v1, p0, Llg/k;->a:Landroid/content/Context;

    invoke-static {v1}, Lp4/d;->g(Landroid/content/Context;)Z

    move-result v1

    if-ne p1, v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string v1, "TOGGLE_WIFI_AP"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p1, v1, v2}, Lbh/f;->n(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "createInstance"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    new-array v5, v3, [Ljava/lang/Object;

    iget-object v7, p0, Llg/k;->a:Landroid/content/Context;

    aput-object v7, v5, v6

    invoke-static {v0, v1, v4, v5}, Lbh/f;->h(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "performToggle"

    new-array v4, v3, [Ljava/lang/Class;

    aput-object v2, v4, v6

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v6

    invoke-static {v0, v1, v4, v2}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static synthetic f(Llg/j;)V
    .locals 0

    invoke-direct {p0}, Llg/j;->G()V

    return-void
.end method

.method private g()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Llg/k;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "faceunlock_support_superpower"

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

.method private h()V
    .locals 11

    const-string v0, "miui.app.ToggleManager"

    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "TOGGLE_TORCH"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v2, v3}, Lbh/f;->n(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v4, "createInstance"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    new-array v7, v5, [Ljava/lang/Object;

    iget-object v9, p0, Llg/k;->a:Landroid/content/Context;

    aput-object v9, v7, v8

    invoke-static {v2, v4, v6, v7}, Lbh/f;->h(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-string v6, "updateTorchToggle"

    new-array v7, v8, [Ljava/lang/Class;

    new-array v9, v8, [Ljava/lang/Object;

    invoke-static {v2, v4, v6, v7, v9}, Lbh/f;->b(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v6, "getStatus"

    new-array v7, v5, [Ljava/lang/Class;

    aput-object v3, v7, v8

    new-array v9, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v8

    invoke-static {v0, v4, v6, v7, v9}, Lbh/f;->g(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "performToggle"

    new-array v4, v5, [Ljava/lang/Class;

    aput-object v3, v4, v8

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v8

    invoke-static {v2, v0, v4, v3}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private i()V
    .locals 5

    iget-object v0, p0, Llg/k;->a:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lp4/j;->b(Landroid/content/Context;Z)V

    invoke-direct {p0, v1}, Llg/j;->F(I)V

    invoke-direct {p0, v1}, Llg/j;->M(I)V

    invoke-direct {p0, v1}, Llg/j;->S(I)V

    invoke-direct {p0, v1}, Llg/j;->W(Z)V

    invoke-direct {p0, v1}, Llg/j;->V(Z)V

    const/16 v0, 0xf

    invoke-direct {p0, v0}, Llg/j;->R(I)V

    invoke-direct {p0, v1}, Llg/j;->I(I)V

    iget-object v0, p0, Llg/j;->e:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v2, Llg/i;

    invoke-direct {v2, p0}, Llg/i;-><init>(Llg/j;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    invoke-direct {p0}, Llg/j;->h()V

    iget-object v0, p0, Llg/k;->b:Landroid/content/SharedPreferences;

    const-string v2, "sp_faceunlock_supported"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, v1}, Llg/j;->K(I)V

    :cond_1
    invoke-direct {p0, v1}, Llg/j;->D(Z)V

    invoke-direct {p0, v1}, Llg/j;->E(Z)V

    invoke-direct {p0, v1}, Llg/j;->T(Z)V

    invoke-direct {p0, v1}, Llg/j;->N(Z)V

    invoke-direct {p0, v1}, Llg/j;->l(I)F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_2

    invoke-direct {p0, v1, v2}, Llg/j;->C(IF)V

    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Llg/j;->l(I)F

    move-result v3

    cmpl-float v3, v3, v2

    if-eqz v3, :cond_3

    invoke-direct {p0, v0, v2}, Llg/j;->C(IF)V

    :cond_3
    invoke-direct {p0}, Llg/j;->u()I

    move-result v2

    if-ne v2, v0, :cond_4

    invoke-direct {p0, v1}, Llg/j;->Q(I)V

    :cond_4
    iget-object v0, p0, Llg/j;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbe/f;

    iget-object v2, p0, Llg/k;->a:Landroid/content/Context;

    invoke-interface {v1, v2}, Lbe/f;->b(Landroid/content/Context;)V

    goto :goto_0

    :cond_5
    return-void
.end method

.method private j()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Llg/k;->b:Landroid/content/SharedPreferences;

    const-string v1, "SP_BLUETOOTH_ENABLED"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Llg/j;->F(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SettingPolicy"

    const-string v2, "enableBluetoothSetting: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private k()V
    .locals 5

    invoke-direct {p0}, Llg/j;->j()V

    iget-object v0, p0, Llg/k;->b:Landroid/content/SharedPreferences;

    const-string v1, "SP_GPS_MODE"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Llg/j;->M(I)V

    iget-object v0, p0, Llg/k;->b:Landroid/content/SharedPreferences;

    const-string v1, "SP_SYNC_ENABLED"

    const/high16 v3, -0x80000000

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Llg/j;->S(I)V

    iget-object v0, p0, Llg/k;->b:Landroid/content/SharedPreferences;

    const-string v1, "SP_VIBRATE_ENABLED"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-direct {p0, v0}, Llg/j;->W(Z)V

    iget-object v0, p0, Llg/k;->b:Landroid/content/SharedPreferences;

    const-string v1, "SP_TOUCH_VIBRATION_ENABLED"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-direct {p0, v0}, Llg/j;->V(Z)V

    iget-object v0, p0, Llg/k;->b:Landroid/content/SharedPreferences;

    const-string v1, "SP_DIALOG_RING_ENABLED"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Llg/k;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-direct {p0, v0}, Llg/j;->J(Z)V

    :cond_0
    iget-object v0, p0, Llg/k;->b:Landroid/content/SharedPreferences;

    const-string v1, "SP_TOUCH_RING_ENABLED"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Llg/k;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-direct {p0, v0}, Llg/j;->U(Z)V

    :cond_1
    iget-object v0, p0, Llg/k;->b:Landroid/content/SharedPreferences;

    const-string v1, "SP_SLEEP_SECONDS"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Llg/j;->R(I)V

    iget-object v0, p0, Llg/k;->b:Landroid/content/SharedPreferences;

    const-string v1, "SP_BRIGHTNESS_MODE"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Llg/j;->I(I)V

    if-nez v0, :cond_2

    iget-object v0, p0, Llg/k;->a:Landroid/content/Context;

    iget-object v1, p0, Llg/k;->b:Landroid/content/SharedPreferences;

    const-string v4, "SP_BRIGHTNESS"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Llg/j;->H(Landroid/content/Context;I)V

    :cond_2
    iget-object v0, p0, Llg/k;->b:Landroid/content/SharedPreferences;

    const-string v1, "sp_faceunlock_supported"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Llg/k;->b:Landroid/content/SharedPreferences;

    const-string v1, "SP_FACE_UNLOCK_ENABLED"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Llg/j;->K(I)V

    :cond_3
    iget-object v0, p0, Llg/k;->b:Landroid/content/SharedPreferences;

    const-string v1, "SP_NFC_ENABLED"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    invoke-direct {p0, v3}, Llg/j;->O(Z)V

    iget-object v0, p0, Llg/k;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_4
    iget-object v0, p0, Llg/k;->b:Landroid/content/SharedPreferences;

    const-string v1, "SP_AUTO_MODE_ENABLED"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-direct {p0, v0}, Llg/j;->E(Z)V

    iget-object v0, p0, Llg/k;->b:Landroid/content/SharedPreferences;

    const-string v1, "SP_AUTO_DOWNLOAD_ENABLED"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-direct {p0, v0}, Llg/j;->D(Z)V

    iget-object v0, p0, Llg/k;->b:Landroid/content/SharedPreferences;

    const-string v1, "sp_touchassistant_enabled"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-direct {p0, v0}, Llg/j;->T(Z)V

    iget-object v0, p0, Llg/k;->b:Landroid/content/SharedPreferences;

    const-string v1, "sp_handy_mode_enabled"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-direct {p0, v0}, Llg/j;->N(Z)V

    iget-object v0, p0, Llg/k;->b:Landroid/content/SharedPreferences;

    const-string v1, "SP_WINDOW_ANIMATION_SCALE"

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    invoke-direct {p0, v2}, Llg/j;->l(I)F

    move-result v1

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_5

    invoke-direct {p0, v2, v0}, Llg/j;->C(IF)V

    :cond_5
    iget-object v0, p0, Llg/k;->b:Landroid/content/SharedPreferences;

    const-string v1, "SP_TRANSITION_ANIMATION_SCALE"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    invoke-direct {p0, v3}, Llg/j;->l(I)F

    move-result v1

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_6

    invoke-direct {p0, v3, v0}, Llg/j;->C(IF)V

    :cond_6
    iget-object v0, p0, Llg/k;->b:Landroid/content/SharedPreferences;

    const-string v1, "sp_notification_light_pulse"

    const/4 v3, -0x1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v3, :cond_7

    invoke-direct {p0}, Llg/j;->u()I

    move-result v1

    if-eq v0, v1, :cond_7

    invoke-direct {p0, v0}, Llg/j;->Q(I)V

    :cond_7
    iget-object v0, p0, Llg/k;->b:Landroid/content/SharedPreferences;

    const-string v1, "SP_WIFI_AP_ENABLED"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-direct {p0, v0}, Llg/j;->X(Z)V

    iget-object v0, p0, Llg/j;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbe/f;

    iget-object v2, p0, Llg/k;->a:Landroid/content/Context;

    invoke-interface {v1, v2}, Lbe/f;->a(Landroid/content/Context;)V

    goto :goto_0

    :cond_8
    return-void
.end method

.method private l(I)F
    .locals 7

    :try_start_0
    invoke-direct {p0}, Llg/j;->x()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-string v2, "getAnimationScale"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v6

    invoke-static {v0, v1, v2, v4, v3}, Lbh/f;->b(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private m()Z
    .locals 3

    iget-object v0, p0, Llg/k;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_download"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private n()Z
    .locals 3

    iget-object v0, p0, Llg/k;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_update"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private o()I
    .locals 4

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Llg/k;->a:Landroid/content/Context;

    invoke-static {v2}, Lx4/j;->d(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_3

    iget-object v2, p0, Llg/k;->a:Landroid/content/Context;

    invoke-static {v2}, Lx4/j;->c(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, v3

    :cond_2
    return v1

    :cond_3
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    move v1, v3

    :cond_4
    return v1
.end method

.method private p()Z
    .locals 3

    iget-object v0, p0, Llg/k;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dtmf_tone"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private q()I
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    const-class v1, Landroid/provider/Settings$Secure;

    const-string v2, "getIntForUser"

    const/4 v3, 0x4

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/ContentResolver;

    aput-object v5, v4, v0

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x2

    aput-object v5, v4, v7

    const/4 v8, 0x3

    aput-object v5, v4, v8

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Llg/k;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    aput-object v5, v3, v0

    const-string v5, "face_unlcok_apply_for_lock"

    aput-object v5, v3, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v7

    invoke-static {}, Lx4/z1;->e()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v8

    invoke-static {v1, v2, v4, v3}, Lbh/f;->h(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "SettingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return v0
.end method

.method private r()Z
    .locals 3

    iget-object v0, p0, Llg/k;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "handy_mode_state"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    return v2
.end method

.method private s()Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Llg/k;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public static t(Landroid/content/Context;)I
    .locals 0

    invoke-static {p0}, Lx4/r0;->d(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method private u()I
    .locals 3

    iget-object v0, p0, Llg/k;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notification_light_pulse"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private v(Z)I
    .locals 3

    iget-object v0, p0, Llg/k;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "face_unlcok_apply_for_lock_backup"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    if-ne v0, p1, :cond_0

    invoke-direct {p0, v2}, Llg/j;->L(I)V

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resultBackUp:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "SettingPolicy"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private w()Z
    .locals 3

    iget-object v0, p0, Llg/k;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "touch_assistant_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    return v2
.end method

.method private x()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Llg/j;->c:Ljava/lang/Object;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "window"

    invoke-static {v0}, Lrg/b;->a(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    const-string v1, "android.view.IWindowManager$Stub"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "asInterface"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/os/IBinder;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-static {v1, v2, v4, v3}, Lbh/f;->h(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Llg/j;->c:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    iget-object v0, p0, Llg/j;->c:Ljava/lang/Object;

    return-object v0
.end method

.method private y()V
    .locals 2

    iget-object v0, p0, Llg/j;->d:Ljava/util/List;

    new-instance v1, Lbe/g;

    invoke-direct {v1}, Lbe/g;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Llg/j;->d:Ljava/util/List;

    new-instance v1, Lbe/c;

    invoke-direct {v1}, Lbe/c;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Llg/j;->d:Ljava/util/List;

    new-instance v1, Lbe/h;

    invoke-direct {v1}, Lbe/h;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Llg/j;->d:Ljava/util/List;

    new-instance v1, Lbe/i;

    invoke-direct {v1}, Lbe/i;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private z()I
    .locals 6

    :try_start_0
    const-string v0, "miui.app.ToggleManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "createInstance"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Llg/k;->a:Landroid/content/Context;

    aput-object v4, v2, v5

    invoke-static {v0, v1, v3, v2}, Lbh/f;->h(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-class v1, Ljava/lang/Boolean;

    const-string v2, "isSyncOn"

    new-array v3, v5, [Ljava/lang/Class;

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3, v4}, Lbh/f;->b(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/high16 v0, -0x80000000

    :goto_0
    return v0
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

    const-string v2, "PREF_KEY_SUPERPOWER_SETTING_DISABLE_STATE"

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
    .locals 2

    iget-object p1, p0, Llg/k;->b:Landroid/content/SharedPreferences;

    const-string v0, "PREF_KEY_SUPERPOWER_SETTING_DISABLE_STATE"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Llg/j;->B()V

    iget-object p1, p0, Llg/k;->b:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-direct {p0}, Llg/j;->i()V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    const-string v0, "SuperPowerSaveManager"

    const-string v1, "resotre settings state"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Llg/j;->e()V

    return-void
.end method

.method public e()V
    .locals 3

    iget-object v0, p0, Llg/k;->b:Landroid/content/SharedPreferences;

    const-string v1, "PREF_KEY_SUPERPOWER_SETTING_DISABLE_STATE"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Llg/j;->k()V

    iget-object v0, p0, Llg/k;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Llg/k;->a:Landroid/content/Context;

    invoke-static {v0}, Ljg/e;->y(Landroid/content/Context;)Ljg/e;

    move-result-object v0

    invoke-virtual {v0}, Ljg/e;->w()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Llg/j;->j()V

    :cond_1
    :goto_0
    return-void
.end method

.method public name()Ljava/lang/String;
    .locals 1

    const-string v0, "settiing policy"

    return-object v0
.end method

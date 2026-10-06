.class public Llg/f;
.super Llg/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llg/f$b;,
        Llg/f$d;,
        Llg/f$c;
    }
.end annotation


# instance fields
.field private c:Lcom/miui/superpower/statusbar/a;

.field private d:Landroid/telephony/TelephonyManager;

.field private e:Landroid/content/ContentResolver;

.field private f:Lkg/a;

.field private g:Llg/f$b;

.field private h:Z

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Llg/k;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Llg/f;->h:Z

    iput-boolean p2, p0, Llg/f;->i:Z

    invoke-static {p1}, Lcom/miui/superpower/statusbar/a;->x(Landroid/content/Context;)Lcom/miui/superpower/statusbar/a;

    move-result-object p2

    iput-object p2, p0, Llg/f;->c:Lcom/miui/superpower/statusbar/a;

    const-string p2, "phone"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/TelephonyManager;

    iput-object p2, p0, Llg/f;->d:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iput-object p2, p0, Llg/f;->e:Landroid/content/ContentResolver;

    new-instance p2, Lkg/a;

    invoke-direct {p2, p1}, Lkg/a;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Llg/f;->f:Lkg/a;

    return-void
.end method

.method static synthetic f(Llg/f;Z)Z
    .locals 0

    iput-boolean p1, p0, Llg/f;->i:Z

    return p1
.end method

.method static synthetic g(Llg/f;)V
    .locals 0

    invoke-direct {p0}, Llg/f;->n()V

    return-void
.end method

.method static synthetic h(Llg/f;Z)Z
    .locals 0

    iput-boolean p1, p0, Llg/f;->h:Z

    return p1
.end method

.method static synthetic i(Llg/f;)Landroid/content/ContentResolver;
    .locals 0

    iget-object p0, p0, Llg/f;->e:Landroid/content/ContentResolver;

    return-object p0
.end method

.method static synthetic j(Llg/f;)Landroid/telephony/TelephonyManager;
    .locals 0

    iget-object p0, p0, Llg/f;->d:Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method private k()Z
    .locals 4

    iget-object v0, p0, Llg/f;->e:Landroid/content/ContentResolver;

    const-string v1, "key_is_in_miui_sos_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Llg/f;->h:Z

    iget-object v0, p0, Llg/f;->d:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Llg/f;->i:Z

    iget-boolean v3, p0, Llg/f;->h:Z

    if-nez v3, :cond_2

    if-nez v0, :cond_2

    move v2, v1

    :cond_2
    return v2
.end method

.method private l()V
    .locals 2

    iget-object v0, p0, Llg/f;->g:Llg/f$b;

    if-nez v0, :cond_0

    new-instance v0, Llg/f$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Llg/f$b;-><init>(Llg/f;Llg/f$a;)V

    iput-object v0, p0, Llg/f;->g:Llg/f$b;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Llg/f;->g:Llg/f$b;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    :cond_0
    return-void
.end method

.method private m()V
    .locals 1

    iget-object v0, p0, Llg/f;->g:Llg/f$b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Llg/f$b;->quitSafely()Z

    const/4 v0, 0x0

    iput-object v0, p0, Llg/f;->g:Llg/f$b;

    :cond_0
    return-void
.end method

.method private n()V
    .locals 2

    iget-object v0, p0, Llg/f;->c:Lcom/miui/superpower/statusbar/a;

    iget-boolean v1, p0, Llg/f;->h:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Llg/f;->i:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/miui/superpower/statusbar/a;->D(Z)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 3

    iget-object v0, p0, Llg/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lme/w;->S(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Llg/k;->b:Landroid/content/SharedPreferences;

    const-string v2, "pref_key_superpower_notification_state"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public b(Z)V
    .locals 2

    iget-object p1, p0, Llg/f;->c:Lcom/miui/superpower/statusbar/a;

    invoke-direct {p0}, Llg/f;->k()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/superpower/statusbar/a;->t(Z)V

    iget-object p1, p0, Llg/k;->a:Landroid/content/Context;

    const-class v0, Lcom/miui/gamebooster/service/NotificationListener;

    invoke-static {p1, v0}, Lcom/miui/luckymoney/utils/SettingsUtil;->enableNotificationListener(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object p1, p0, Llg/k;->b:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "pref_key_superpower_notification_state"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object p1, p0, Llg/f;->f:Lkg/a;

    invoke-virtual {p1}, Lkg/a;->t()V

    invoke-direct {p0}, Llg/f;->l()V

    return-void
.end method

.method public c()V
    .locals 3

    invoke-super {p0}, Llg/k;->c()V

    iget-object v0, p0, Llg/f;->c:Lcom/miui/superpower/statusbar/a;

    invoke-direct {p0}, Llg/f;->k()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/superpower/statusbar/a;->t(Z)V

    iget-object v0, p0, Llg/k;->b:Landroid/content/SharedPreferences;

    const-string v1, "pref_key_superpower_notification_state"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Llg/k;->a:Landroid/content/Context;

    const-class v2, Lcom/miui/gamebooster/service/NotificationListener;

    invoke-static {v0, v2}, Lcom/miui/luckymoney/utils/SettingsUtil;->enableNotificationListener(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Llg/k;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    iget-object v0, p0, Llg/f;->f:Lkg/a;

    invoke-virtual {v0}, Lkg/a;->t()V

    invoke-direct {p0}, Llg/f;->l()V

    return-void
.end method

.method public d()V
    .locals 3

    invoke-virtual {p0}, Llg/f;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SuperPowerSaveManager"

    const-string v1, "notification policy restore state"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Llg/k;->a:Landroid/content/Context;

    const-class v1, Lcom/miui/gamebooster/service/NotificationListener;

    invoke-static {v0, v1}, Lcom/miui/luckymoney/utils/SettingsUtil;->closeNotificationListener(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Llg/k;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "pref_key_superpower_notification_state"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method public e()V
    .locals 3

    iget-object v0, p0, Llg/f;->c:Lcom/miui/superpower/statusbar/a;

    invoke-virtual {v0}, Lcom/miui/superpower/statusbar/a;->v()V

    iget-object v0, p0, Llg/k;->a:Landroid/content/Context;

    const-class v1, Lcom/miui/gamebooster/service/NotificationListener;

    invoke-static {v0, v1}, Lcom/miui/luckymoney/utils/SettingsUtil;->closeNotificationListener(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Llg/k;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_key_superpower_notification_state"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-direct {p0}, Llg/f;->m()V

    return-void
.end method

.method public name()Ljava/lang/String;
    .locals 1

    const-string v0, "new notification policy"

    return-object v0
.end method

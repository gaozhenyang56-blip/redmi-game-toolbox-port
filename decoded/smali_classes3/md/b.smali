.class public Lmd/b;
.super Lnd/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmd/b$b;
    }
.end annotation


# instance fields
.field private g:Landroid/database/ContentObserver;

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Ljava/lang/String;

.field private l:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnd/b;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmd/b;->h:Z

    iput-boolean v0, p0, Lmd/b;->i:Z

    const-string v0, "Discharging"

    iput-object v0, p0, Lmd/b;->k:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lmd/b$a;)V
    .locals 0

    invoke-direct {p0}, Lmd/b;-><init>()V

    return-void
.end method

.method static synthetic m(Lmd/b;)Z
    .locals 0

    iget-boolean p0, p0, Lmd/b;->h:Z

    return p0
.end method

.method static synthetic n(Lmd/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lmd/b;->h:Z

    return p1
.end method

.method static synthetic o(Lmd/b;)Landroid/content/Context;
    .locals 0

    invoke-virtual {p0}, Lnd/a;->h()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic p(Lmd/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lmd/b;->i:Z

    return p1
.end method

.method static synthetic q(Lmd/b;)Z
    .locals 0

    iget-boolean p0, p0, Lmd/b;->j:Z

    return p0
.end method

.method public static s()Lmd/b;
    .locals 1

    invoke-static {}, Lmd/b$b;->a()Lmd/b;

    move-result-object v0

    return-object v0
.end method

.method private t()V
    .locals 5

    invoke-static {}, Lme/q;->x()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lmd/c;->k()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lnd/a;->h()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sec_setting_handle_charge_protect"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lmd/b;->h:Z

    new-instance v0, Lmd/b$a;

    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v3}, Lmd/b$a;-><init>(Lmd/b;Landroid/os/Handler;)V

    iput-object v0, p0, Lmd/b;->g:Landroid/database/ContentObserver;

    invoke-virtual {p0}, Lnd/a;->h()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v3, p0, Lmd/b;->g:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "MODE_HANDLE"

    return-object v0
.end method

.method public e()V
    .locals 2

    invoke-super {p0}, Lnd/a;->e()V

    const/16 v0, 0x50

    invoke-static {v0}, Lmd/c;->n(I)V

    const-string v0, "BaseChargeProtect_CameraHandle"

    const-string v1, "openProtect CameraHandleProtectManager"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public f()V
    .locals 2

    invoke-super {p0}, Lnd/a;->f()V

    invoke-static {}, Lmd/c;->a()V

    const-string v0, "BaseChargeProtect_CameraHandle"

    const-string v1, "closeProtect CameraHandleProtectManager"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public g(Landroid/content/Context;Lmd/o$b;Lmd/p;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lnd/a;->g(Landroid/content/Context;Lmd/o$b;Lmd/p;)V

    invoke-direct {p0}, Lmd/b;->t()V

    return-void
.end method

.method public r()V
    .locals 4

    iget-object v0, p0, Lmd/b;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lnd/a;->j(Z)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lmd/b;->j:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-boolean v3, p0, Lmd/b;->h:Z

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    iput-boolean v3, p0, Lmd/b;->i:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmd/b;->k:Ljava/lang/String;

    const-string v3, "Discharging"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lmd/b;->i:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lmd/b;->l:Z

    if-nez v0, :cond_3

    invoke-virtual {p0, v2}, Lnd/a;->j(Z)V

    iput-boolean v2, p0, Lmd/b;->l:Z

    goto :goto_1

    :cond_2
    iget-boolean v0, p0, Lmd/b;->l:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0, v1}, Lnd/a;->j(Z)V

    iput-boolean v1, p0, Lmd/b;->l:Z

    :cond_3
    :goto_1
    return-void
.end method

.method public u(ZZLjava/lang/String;)V
    .locals 2

    iput-boolean p2, p0, Lmd/b;->j:Z

    iput-object p3, p0, Lmd/b;->k:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateHandleState isFirstBatteryChange:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ",status\uff1a"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BaseChargeProtect_CameraHandle"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lmd/b;->r()V

    return-void
.end method

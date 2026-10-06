.class public Li6/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static d:Li6/a;


# instance fields
.field private a:Lcom/xiaomi/joyose/securitycenter/IGunSightInterface;

.field private b:Landroid/os/IBinder;

.field private c:Landroid/content/ServiceConnection;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Li6/a;->b:Landroid/os/IBinder;

    new-instance v0, Li6/a$a;

    invoke-direct {v0, p0}, Li6/a$a;-><init>(Li6/a;)V

    iput-object v0, p0, Li6/a;->c:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic a(Li6/a;)Lcom/xiaomi/joyose/securitycenter/IGunSightInterface;
    .locals 0

    iget-object p0, p0, Li6/a;->a:Lcom/xiaomi/joyose/securitycenter/IGunSightInterface;

    return-object p0
.end method

.method static synthetic b(Li6/a;Lcom/xiaomi/joyose/securitycenter/IGunSightInterface;)Lcom/xiaomi/joyose/securitycenter/IGunSightInterface;
    .locals 0

    iput-object p1, p0, Li6/a;->a:Lcom/xiaomi/joyose/securitycenter/IGunSightInterface;

    return-object p1
.end method

.method static synthetic c(Li6/a;)V
    .locals 0

    invoke-direct {p0}, Li6/a;->t()V

    return-void
.end method

.method private f()Lh6/a;
    .locals 2

    new-instance v0, Lh6/a;

    invoke-direct {v0}, Lh6/a;-><init>()V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lh6/a;->j(I)V

    const-string v1, "#ffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lh6/a;->f(I)V

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Lh6/a;->i(I)V

    return-object v0
.end method

.method public static h()Li6/a;
    .locals 1

    sget-object v0, Li6/a;->d:Li6/a;

    if-nez v0, :cond_0

    new-instance v0, Li6/a;

    invoke-direct {v0}, Li6/a;-><init>()V

    sput-object v0, Li6/a;->d:Li6/a;

    :cond_0
    sget-object v0, Li6/a;->d:Li6/a;

    return-object v0
.end method

.method private k()Z
    .locals 1

    iget-object v0, p0, Li6/a;->a:Lcom/xiaomi/joyose/securitycenter/IGunSightInterface;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private l(ZLjava/lang/String;IZ)V
    .locals 0

    if-eqz p1, :cond_1

    invoke-direct {p0}, Li6/a;->k()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Li6/a;->p()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2, p3, p4}, Li6/a;->d(Ljava/lang/String;IZ)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Li6/a;->k()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Li6/a;->q()V

    :cond_2
    :goto_0
    return-void
.end method

.method private r()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "key_currentbooster_pkg_uid"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lr4/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const-string v2, "entertainment_pkg"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v1, "gamebox_sungiht"

    invoke-static {v1, v0}, Lcom/miui/gamebooster/utils/a$o;->c(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private t()V
    .locals 5

    :try_start_0
    invoke-virtual {p0}, Li6/a;->g()Lh6/a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Li6/a;->a:Lcom/xiaomi/joyose/securitycenter/IGunSightInterface;

    if-eqz v1, :cond_1

    sget-boolean v1, Luf/a;->a:Z

    if-eqz v1, :cond_0

    const-string v1, "CollimatorUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update gunconfig:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lh6/a;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Li6/a;->a:Lcom/xiaomi/joyose/securitycenter/IGunSightInterface;

    invoke-virtual {v0}, Lh6/a;->d()I

    move-result v2

    invoke-virtual {v0}, Lh6/a;->a()I

    move-result v3

    invoke-virtual {v0}, Lh6/a;->c()I

    move-result v0

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/xiaomi/joyose/securitycenter/IGunSightInterface;->updateGunSightConfig(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;IZ)V
    .locals 2

    const-string v0, "CollimatorUtils"

    :try_start_0
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    invoke-static {v1}, Ls5/a;->e(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0, p1}, Li6/a;->j(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    const-string p1, "startCollimatorService: folded device"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-static {p1, p2}, Lw6/i;->b(Ljava/lang/String;I)Lx6/b;

    move-result-object p1

    invoke-virtual {p1}, Lx6/b;->c()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "startCollimatorService: invalid"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Li6/a;->i()Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    sget-boolean p2, Luf/a;->a:Z

    if-eqz p2, :cond_4

    const-string p2, "bind gunservice"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string p3, "com.xiaomi.joyose"

    invoke-virtual {p2, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "gun_sight"

    invoke-virtual {p2, p3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p3, p0, Li6/a;->c:Landroid/content/ServiceConnection;

    const/4 v1, 0x1

    invoke-virtual {p1, p2, p3, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_5
    :goto_0
    return-void

    :catch_0
    move-exception p1

    const-string p2, "bind gun service error"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public e(Ljava/lang/String;IZ)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, La8/z;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Li6/a;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Li6/a;->p()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Li6/a;->d(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "CollimatorUtils"

    const-string p3, "bind or start GunSight Service fail : "

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public g()Lh6/a;
    .locals 3

    const-string v0, "gb_game_collimator_config"

    const-string v1, ""

    invoke-static {v0, v1}, La8/m0;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Li6/a;->f()Lh6/a;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    invoke-direct {p0}, Li6/a;->f()Lh6/a;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v1, Lh6/a;

    invoke-direct {v1}, Lh6/a;-><init>()V

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lh6/a;->j(I)V

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lh6/a;->f(I)V

    const/4 v2, 0x2

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lh6/a;->i(I)V

    return-object v1
.end method

.method public i()Z
    .locals 2

    const-string v0, "gb_game_collimator_status"

    const/4 v1, 0x0

    invoke-static {v0, v1}, La8/m0;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public j(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, La8/g0;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, La8/y0;->d(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p1

    invoke-static {p1}, La8/z;->c(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public m(Lh6/a;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lh6/a;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lh6/a;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lh6/a;->c()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "gb_game_collimator_config"

    invoke-static {v0, p1}, La8/m0;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Li6/a;->t()V

    return-void
.end method

.method public n()V
    .locals 3

    const-string v0, "CollimatorUtils"

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBinder "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Li6/a;->a:Lcom/xiaomi/joyose/securitycenter/IGunSightInterface;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Li6/a;->a:Lcom/xiaomi/joyose/securitycenter/IGunSightInterface;

    if-eqz v1, :cond_1

    iget-object v2, p0, Li6/a;->b:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Lcom/xiaomi/joyose/securitycenter/IGunSightInterface;->setBinder(Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    const-string v2, "setBinder error"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-void
.end method

.method public o(ZLjava/lang/String;IZ)V
    .locals 1

    const-string v0, "gb_game_collimator_status"

    invoke-static {v0, p1}, La8/m0;->f(Ljava/lang/String;Z)V

    invoke-direct {p0, p1, p2, p3, p4}, Li6/a;->l(ZLjava/lang/String;IZ)V

    return-void
.end method

.method public p()V
    .locals 3

    const-string v0, "CollimatorUtils"

    :try_start_0
    const-string v1, "startGunService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Li6/a;->a:Lcom/xiaomi/joyose/securitycenter/IGunSightInterface;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/xiaomi/joyose/securitycenter/IGunSightInterface;->startGunSight()V

    invoke-direct {p0}, Li6/a;->r()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    const-string v2, "startGunSight error"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public q()V
    .locals 3

    const-string v0, "CollimatorUtils"

    :try_start_0
    const-string v1, "stopGunService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Li6/a;->a:Lcom/xiaomi/joyose/securitycenter/IGunSightInterface;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/xiaomi/joyose/securitycenter/IGunSightInterface;->stopGunSight()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    const-string v2, "stopGunSight error"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public s()V
    .locals 3

    const-string v0, "CollimatorUtils"

    :try_start_0
    const-string v1, "unbind gunservice"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Li6/a;->q()V

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Li6/a;->c:Landroid/content/ServiceConnection;

    if-eqz v2, :cond_1

    invoke-direct {p0}, Li6/a;->k()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Li6/a;->a:Lcom/xiaomi/joyose/securitycenter/IGunSightInterface;

    iget-object v2, p0, Li6/a;->c:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string v2, "unbind gun service error"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.class public La7/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll6/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La7/o$d;,
        La7/o$b;,
        La7/o$c;,
        La7/o$e;
    }
.end annotation


# static fields
.field private static n:La7/o;


# instance fields
.field private a:Z

.field private b:Z

.field public c:Lcom/miui/gamebooster/service/IGameBoosterWindow;

.field private final d:Ljava/lang/Object;

.field private e:Landroid/content/Context;

.field private f:La7/o$b;

.field private g:Z

.field private h:Landroid/os/Handler;

.field private i:J

.field private j:Lcom/miui/gamebooster/service/IFreeformWindow;

.field private final k:La7/o$e;

.field private l:Z

.field private m:Landroid/database/ContentObserver;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, La7/o;->d:Ljava/lang/Object;

    new-instance v0, La7/o$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, La7/o$b;-><init>(La7/o$a;)V

    iput-object v0, p0, La7/o;->f:La7/o$b;

    const/4 v0, 0x0

    iput-boolean v0, p0, La7/o;->g:Z

    new-instance v2, La7/o$e;

    invoke-direct {v2, p0, v1}, La7/o$e;-><init>(La7/o;La7/o$a;)V

    iput-object v2, p0, La7/o;->k:La7/o$e;

    iput-boolean v0, p0, La7/o;->l:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, La7/o;->e:Landroid/content/Context;

    iput-object p2, p0, La7/o;->h:Landroid/os/Handler;

    new-instance p1, La7/o$c;

    iget-object p2, p0, La7/o;->h:Landroid/os/Handler;

    invoke-direct {p1, p0, p2}, La7/o$c;-><init>(La7/o;Landroid/os/Handler;)V

    iput-object p1, p0, La7/o;->m:Landroid/database/ContentObserver;

    iget-object p1, p0, La7/o;->e:Landroid/content/Context;

    invoke-static {p1}, Lf7/a;->b(Landroid/content/Context;)Lf7/a;

    move-result-object p1

    new-instance p2, La7/o$a;

    invoke-direct {p2, p0}, La7/o$a;-><init>(La7/o;)V

    invoke-virtual {p1, p2}, Lf7/a;->a(Lo4/a$a;)V

    return-void
.end method

.method static synthetic a(La7/o;Lcom/miui/gamebooster/service/IFreeformWindow;)Lcom/miui/gamebooster/service/IFreeformWindow;
    .locals 0

    iput-object p1, p0, La7/o;->j:Lcom/miui/gamebooster/service/IFreeformWindow;

    return-object p1
.end method

.method static synthetic b(La7/o;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, La7/o;->e:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic c(La7/o;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, La7/o;->h:Landroid/os/Handler;

    return-object p0
.end method

.method public static declared-synchronized e(Landroid/content/Context;Landroid/os/Handler;)La7/o;
    .locals 2

    const-class v0, La7/o;

    monitor-enter v0

    :try_start_0
    sget-object v1, La7/o;->n:La7/o;

    if-nez v1, :cond_0

    new-instance v1, La7/o;

    invoke-direct {v1, p0, p1}, La7/o;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    sput-object v1, La7/o;->n:La7/o;

    :cond_0
    sget-object p0, La7/o;->n:La7/o;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private l(Z)V
    .locals 1

    :try_start_0
    iget-object v0, p0, La7/o;->j:Lcom/miui/gamebooster/service/IFreeformWindow;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/miui/gamebooster/service/IFreeformWindow;->L3(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method


# virtual methods
.method public d()V
    .locals 7

    const-string v0, "VideoBoxServiceManager"

    const-string v1, "VideoBoxServiceManager: Open"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, La7/o;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "VideoBoxServiceManager"

    const-string v2, "open"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, La7/o;->e:Landroid/content/Context;

    const-class v3, Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.miui.gamebooster.service.GameBoxService"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, La7/o;->k:La7/o$e;

    const/4 v3, 0x3

    iget-boolean v4, p0, La7/o;->b:Z

    iget-object v5, p0, La7/o;->f:La7/o$b;

    iget-object v6, v5, La7/o$b;->a:Ljava/lang/String;

    iget v5, v5, La7/o$b;->b:I

    invoke-virtual {v2, v3, v4, v6, v5}, La7/o$e;->a(IZLjava/lang/String;I)V

    iget-object v2, p0, La7/o;->e:Landroid/content/Context;

    iget-object v3, p0, La7/o;->k:La7/o$e;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    iput-boolean v1, p0, La7/o;->a:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public f(Z)V
    .locals 1

    iget-boolean v0, p0, La7/o;->g:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lj8/s;->d(Z)V

    return-void
.end method

.method public g()V
    .locals 3

    :try_start_0
    iget-object v0, p0, La7/o;->c:Lcom/miui/gamebooster/service/IGameBoosterWindow;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/miui/gamebooster/service/IGameBoosterWindow;->b5()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "VideoBoxServiceManager"

    const-string v2, "removeView error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public h()V
    .locals 4

    const-string v0, "VideoBoxServiceManager"

    const-string v1, "resetVideoBox"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lj8/s;->m()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-direct {p0, v1}, La7/o;->l(Z)V

    :cond_0
    invoke-static {v1}, Li8/c;->G0(Z)V

    const-string v0, ""

    invoke-static {v0}, Li8/c;->Z(Ljava/lang/String;)V

    invoke-static {}, La8/g0;->U()Z

    move-result v0

    const/4 v2, -0x2

    if-eqz v0, :cond_1

    iget-object v0, p0, La7/o;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "gb_boosting"

    goto :goto_0

    :cond_1
    iget-object v0, p0, La7/o;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "vtb_boosting"

    :goto_0
    invoke-static {v0, v3, v1, v2}, La8/c0;->i(Landroid/content/ContentResolver;Ljava/lang/String;II)V

    invoke-static {}, Lj8/s;->l()V

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, La7/o;->f:La7/o$b;

    iget-object v0, v0, La7/o$b;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, La7/o;->l:Z

    return-void
.end method

.method public j(Z)V
    .locals 0

    iput-boolean p1, p0, La7/o;->b:Z

    return-void
.end method

.method public k(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, La7/o;->f:La7/o$b;

    invoke-virtual {v0, p1, p2}, La7/o$b;->b(Ljava/lang/String;I)V

    return-void
.end method

.method public m()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startVideoBox: isDuringVideoBoxMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, La7/o;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoBoxServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, La7/o;->l:Z

    if-eqz v0, :cond_0

    invoke-static {}, Li8/c;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li8/c;->w0(Ljava/lang/String;)V

    invoke-virtual {p0}, La7/o;->n()V

    const/4 v0, 0x0

    iput-boolean v0, p0, La7/o;->g:Z

    :cond_0
    iget-boolean v0, p0, La7/o;->g:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, La7/o;->i:J

    const/4 v0, 0x1

    invoke-static {v0}, Li8/c;->G0(Z)V

    iget-object v1, p0, La7/o;->f:La7/o$b;

    invoke-virtual {v1}, La7/o$b;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_currentbooster_pkg_uid"

    invoke-static {v2, v1}, Lr4/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, La7/o;->f:La7/o$b;

    iget-object v1, v1, La7/o$b;->a:Ljava/lang/String;

    invoke-static {v1}, Li8/c;->Z(Ljava/lang/String;)V

    invoke-static {}, Lj8/s;->m()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0, v0}, La7/o;->l(Z)V

    :cond_2
    iget-object v1, p0, La7/o;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "quick_reply"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, La7/o;->m:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iput-boolean v0, p0, La7/o;->g:Z

    iget-object v1, p0, La7/o;->f:La7/o$b;

    iget-object v1, v1, La7/o$b;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lj8/u;->N(Ljava/lang/String;Z)V

    invoke-static {}, La8/g0;->U()Z

    move-result v1

    const/4 v2, -0x2

    if-eqz v1, :cond_3

    iget-object v1, p0, La7/o;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "gb_boosting"

    goto :goto_0

    :cond_3
    iget-object v1, p0, La7/o;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "vtb_boosting"

    :goto_0
    invoke-static {v1, v3, v0, v2}, La8/c0;->i(Landroid/content/ContentResolver;Ljava/lang/String;II)V

    invoke-virtual {p0}, La7/o;->d()V

    sget-object v0, Ln6/b;->c:Ln6/b;

    invoke-static {p0, v0}, Ll6/a;->d(Ll6/a$a;Ln6/b;)V

    invoke-static {}, Lu6/e;->n()Lu6/e;

    move-result-object v0

    iget-object v1, p0, La7/o;->e:Landroid/content/Context;

    const/4 v2, 0x0

    iget-boolean v3, p0, La7/o;->g:Z

    invoke-virtual {v0, v1, v2, v3}, Lu6/e;->y(Landroid/content/Context;Lcom/miui/gamebooster/service/w;Z)V

    iget-object v0, p0, La7/o;->e:Landroid/content/Context;

    iget-object v1, p0, La7/o;->f:La7/o$b;

    iget-object v1, v1, La7/o$b;->a:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lo6/a;->e(Landroid/content/Context;Ljava/lang/String;I)V

    const-string v0, "key_booster_type"

    const-string v1, "Video Turbo"

    invoke-static {v0, v1}, Lr4/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, La7/o;->f:La7/o$b;

    iget-object v0, v0, La7/o$b;->a:Ljava/lang/String;

    invoke-static {v0}, Lj8/v;->a(Ljava/lang/String;)V

    return-void
.end method

.method public n()V
    .locals 4

    iget-boolean v0, p0, La7/o;->g:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, La7/o;->g:Z

    const-string v1, "VideoBoxServiceManager"

    const-string v2, "video box exit app..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v1, p0, La7/o;->i:J

    invoke-static {v1, v2}, Lcom/miui/gamebooster/utils/a$n;->c(J)V

    iget-object v1, p0, La7/o;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, La7/o;->m:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-static {}, Lj8/s;->m()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, v0}, La7/o;->l(Z)V

    :cond_1
    const/4 v1, 0x0

    invoke-static {v1, v0}, Lj8/u;->N(Ljava/lang/String;Z)V

    invoke-static {v0}, Li8/c;->G0(Z)V

    iget-object v1, p0, La7/o;->f:La7/o$b;

    iget-object v1, v1, La7/o$b;->a:Ljava/lang/String;

    invoke-static {v1}, Li8/c;->Z(Ljava/lang/String;)V

    invoke-static {}, La8/g0;->U()Z

    move-result v1

    const/4 v2, -0x2

    if-eqz v1, :cond_2

    iget-object v1, p0, La7/o;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "gb_boosting"

    goto :goto_0

    :cond_2
    iget-object v1, p0, La7/o;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "vtb_boosting"

    :goto_0
    invoke-static {v1, v3, v0, v2}, La8/c0;->i(Landroid/content/ContentResolver;Ljava/lang/String;II)V

    invoke-static {}, Lj8/s;->l()V

    invoke-virtual {p0}, La7/o;->o()V

    invoke-static {}, Ll6/a;->e()V

    invoke-static {}, Lu6/e;->n()Lu6/e;

    move-result-object v0

    iget-boolean v1, p0, La7/o;->g:Z

    invoke-virtual {v0, v1}, Lu6/e;->w(Z)V

    iget-object v0, p0, La7/o;->e:Landroid/content/Context;

    iget-object v1, p0, La7/o;->f:La7/o$b;

    iget-object v1, v1, La7/o$b;->a:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lo6/a;->e(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v0, p0, La7/o;->f:La7/o$b;

    iget-object v0, v0, La7/o$b;->a:Ljava/lang/String;

    invoke-static {v0}, Lj8/v;->b(Ljava/lang/String;)V

    return-void
.end method

.method public o()V
    .locals 5

    iget-object v0, p0, La7/o;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "VideoBoxServiceManager"

    const-string v2, "close"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x3

    :try_start_1
    iget-object v2, p0, La7/o;->c:Lcom/miui/gamebooster/service/IGameBoosterWindow;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, La7/o;->c:Lcom/miui/gamebooster/service/IGameBoosterWindow;

    invoke-interface {v2, v1}, Lcom/miui/gamebooster/service/IGameBoosterWindow;->G4(I)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, La7/o;->e:Landroid/content/Context;

    invoke-static {v2, v1}, Lm5/b;->b(Landroid/content/Context;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    iget-object v2, p0, La7/o;->e:Landroid/content/Context;

    invoke-static {v2, v1}, Lm5/b;->b(Landroid/content/Context;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    :try_start_3
    iget-boolean v1, p0, La7/o;->a:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, La7/o;->e:Landroid/content/Context;

    iget-object v2, p0, La7/o;->k:La7/o$e;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, La7/o;->a:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v1

    :try_start_4
    const-string v2, "VideoBoxServiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unbind error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method public onSlideChanged(I)V
    .locals 2

    iget-object v0, p0, La7/o;->h:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, La7/o$d;

    invoke-direct {v1, p0, p1}, La7/o$d;-><init>(La7/o;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

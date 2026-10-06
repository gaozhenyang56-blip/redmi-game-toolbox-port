.class public Lcom/miui/dock/DockMonitorService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/dock/DockMonitorService$l;,
        Lcom/miui/dock/DockMonitorService$m;
    }
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private volatile j:Z

.field private final k:Lcom/miui/dock/DockMonitorService$m;

.field public l:Lcom/miui/gamebooster/service/IGameBoosterWindow;

.field private m:Landroid/os/HandlerThread;

.field private n:Landroid/os/Handler;

.field private final o:Landroid/database/ContentObserver;

.field private final p:Landroid/database/ContentObserver;

.field private final q:Landroid/database/ContentObserver;

.field private final r:Landroid/database/ContentObserver;

.field private final s:Landroid/database/ContentObserver;

.field private final t:Landroid/database/ContentObserver;

.field private final u:Lcom/miui/gamebooster/mutiwindow/b$b;

.field private final v:Landroid/content/BroadcastReceiver;

.field private final w:Landroid/content/BroadcastReceiver;

.field private final x:Landroid/content/BroadcastReceiver;

.field private final y:Landroid/os/IBinder$DeathRecipient;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/dock/DockMonitorService;->a:Landroid/os/Handler;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/dock/DockMonitorService;->h:Z

    new-instance v1, Lcom/miui/dock/DockMonitorService$m;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/dock/DockMonitorService$m;-><init>(Lcom/miui/dock/DockMonitorService;Lcom/miui/dock/DockMonitorService$c;)V

    iput-object v1, p0, Lcom/miui/dock/DockMonitorService;->k:Lcom/miui/dock/DockMonitorService$m;

    new-instance v1, Lcom/miui/dock/DockMonitorService$c;

    invoke-direct {v1, p0, v0}, Lcom/miui/dock/DockMonitorService$c;-><init>(Lcom/miui/dock/DockMonitorService;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/miui/dock/DockMonitorService;->o:Landroid/database/ContentObserver;

    new-instance v1, Lcom/miui/dock/DockMonitorService$d;

    invoke-direct {v1, p0, v0}, Lcom/miui/dock/DockMonitorService$d;-><init>(Lcom/miui/dock/DockMonitorService;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/miui/dock/DockMonitorService;->p:Landroid/database/ContentObserver;

    new-instance v1, Lcom/miui/dock/DockMonitorService$e;

    invoke-direct {v1, p0, v0}, Lcom/miui/dock/DockMonitorService$e;-><init>(Lcom/miui/dock/DockMonitorService;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/miui/dock/DockMonitorService;->q:Landroid/database/ContentObserver;

    new-instance v1, Lcom/miui/dock/DockMonitorService$f;

    invoke-direct {v1, p0, v0}, Lcom/miui/dock/DockMonitorService$f;-><init>(Lcom/miui/dock/DockMonitorService;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/miui/dock/DockMonitorService;->r:Landroid/database/ContentObserver;

    new-instance v1, Lcom/miui/dock/DockMonitorService$g;

    invoke-direct {v1, p0, v0}, Lcom/miui/dock/DockMonitorService$g;-><init>(Lcom/miui/dock/DockMonitorService;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/miui/dock/DockMonitorService;->s:Landroid/database/ContentObserver;

    new-instance v1, Lcom/miui/dock/DockMonitorService$h;

    invoke-direct {v1, p0, v0}, Lcom/miui/dock/DockMonitorService$h;-><init>(Lcom/miui/dock/DockMonitorService;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/miui/dock/DockMonitorService;->t:Landroid/database/ContentObserver;

    new-instance v0, Lcom/miui/dock/DockMonitorService$i;

    invoke-direct {v0, p0}, Lcom/miui/dock/DockMonitorService$i;-><init>(Lcom/miui/dock/DockMonitorService;)V

    iput-object v0, p0, Lcom/miui/dock/DockMonitorService;->u:Lcom/miui/gamebooster/mutiwindow/b$b;

    new-instance v0, Lcom/miui/dock/DockMonitorService$j;

    invoke-direct {v0, p0}, Lcom/miui/dock/DockMonitorService$j;-><init>(Lcom/miui/dock/DockMonitorService;)V

    iput-object v0, p0, Lcom/miui/dock/DockMonitorService;->v:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/miui/dock/DockMonitorService$k;

    invoke-direct {v0, p0}, Lcom/miui/dock/DockMonitorService$k;-><init>(Lcom/miui/dock/DockMonitorService;)V

    iput-object v0, p0, Lcom/miui/dock/DockMonitorService;->w:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/miui/dock/DockMonitorService$a;

    invoke-direct {v0, p0}, Lcom/miui/dock/DockMonitorService$a;-><init>(Lcom/miui/dock/DockMonitorService;)V

    iput-object v0, p0, Lcom/miui/dock/DockMonitorService;->x:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/miui/dock/DockMonitorService$b;

    invoke-direct {v0, p0}, Lcom/miui/dock/DockMonitorService$b;-><init>(Lcom/miui/dock/DockMonitorService;)V

    iput-object v0, p0, Lcom/miui/dock/DockMonitorService;->y:Landroid/os/IBinder$DeathRecipient;

    return-void
.end method

.method private A()Z
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "power_supersave_mode_open"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    return v2
.end method

.method private B()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/dock/DockMonitorService;->b:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lm6/a;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic C()V
    .locals 0

    invoke-static {p0}, Lm5/f;->e(Landroid/content/Context;)V

    return-void
.end method

.method private D()V
    .locals 3

    iget-object v0, p0, Lcom/miui/dock/DockMonitorService;->n:Landroid/os/Handler;

    new-instance v1, Lcom/miui/dock/DockMonitorService$l;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/dock/DockMonitorService$l;-><init>(Lcom/miui/dock/DockMonitorService;Lcom/miui/dock/DockMonitorService$c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private E()V
    .locals 6

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.miui.gamebooster.UNINSTALLAPP"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/dock/DockMonitorService;->w:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/miui/dock/DockMonitorService;->a:Landroid/os/Handler;

    const-string v3, "com.miui.dock.permission.DOCK_EVENT"

    const/4 v5, 0x4

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lx4/v;->n(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    return-void
.end method

.method private F()V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gb_boosting"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/dock/DockMonitorService;->p:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "vtb_boosting"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/dock/DockMonitorService;->q:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dock_switch_status"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/dock/DockMonitorService;->o:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "settings_focus_mode_status"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/dock/DockMonitorService;->r:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "power_supersave_mode_open"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/dock/DockMonitorService;->s:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/dock/DockMonitorService;->t:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private G()V
    .locals 6

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.miui.dock.STATUS_CHANGE"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/dock/DockMonitorService;->v:Landroid/content/BroadcastReceiver;

    const-string v3, "com.miui.dock.permission.STATUS_CHANGE"

    const/4 v4, 0x0

    const/4 v5, 0x2

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lx4/v;->n(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    return-void
.end method

.method private H()V
    .locals 2

    invoke-static {}, Lcom/miui/gamebooster/mutiwindow/b;->d()Lcom/miui/gamebooster/mutiwindow/b;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/dock/DockMonitorService;->u:Lcom/miui/gamebooster/mutiwindow/b$b;

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/mutiwindow/b;->b(Lcom/miui/gamebooster/mutiwindow/b$b;)V

    return-void
.end method

.method private I()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/dock/DockMonitorService;->x:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x4

    invoke-static {p0, v1, v0, v2}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method private J()V
    .locals 3

    iget-object v0, p0, Lcom/miui/dock/DockMonitorService;->l:Lcom/miui/gamebooster/service/IGameBoosterWindow;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/dock/DockMonitorService;->y:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object v0, p0, Lcom/miui/dock/DockMonitorService;->k:Lcom/miui/dock/DockMonitorService$m;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private L()V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/dock/DockMonitorService;->f:Z

    if-nez v0, :cond_0

    invoke-static {}, La8/z;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/dock/DockMonitorService;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Lk5/a;->w(Z)V

    invoke-static {v0}, Lk5/a;->x(Z)V

    :cond_0
    return-void
.end method

.method private M()V
    .locals 5

    const-string v0, "GlobalDock-MonitorService"

    iget-boolean v1, p0, Lcom/miui/dock/DockMonitorService;->j:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/miui/dock/DockMonitorService;->h:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/miui/dock/DockMonitorService;->g:Z

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.miui.dock.SHOW_DOCK_TIPS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "event_dock_tips_type"

    const/16 v4, 0xc8

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "com.miui.dock.permission.DOCK_EVENT"

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const-string v2, "showDockSlidOutTipsIfNeed : send Broadcast"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iput-boolean v1, p0, Lcom/miui/dock/DockMonitorService;->j:Z

    invoke-static {v1}, Lk5/a;->x(Z)V

    goto :goto_1

    :catchall_0
    move-exception v2

    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showDockSlidOutTipsIfNeed fail:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :goto_1
    return-void

    :catchall_1
    move-exception v0

    iput-boolean v1, p0, Lcom/miui/dock/DockMonitorService;->j:Z

    invoke-static {v1}, Lk5/a;->x(Z)V

    throw v0

    :cond_1
    :goto_2
    return-void
.end method

.method private N()V
    .locals 2

    invoke-static {}, Lcom/miui/gamebooster/mutiwindow/b;->d()Lcom/miui/gamebooster/mutiwindow/b;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/dock/DockMonitorService;->u:Lcom/miui/gamebooster/mutiwindow/b$b;

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/mutiwindow/b;->g(Lcom/miui/gamebooster/mutiwindow/b$b;)V

    return-void
.end method

.method private O()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/miui/dock/DockMonitorService;->x:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/miui/dock/DockMonitorService;->w:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/miui/dock/DockMonitorService;->v:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static synthetic a(Lcom/miui/dock/DockMonitorService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/dock/DockMonitorService;->C()V

    return-void
.end method

.method static synthetic b(Lcom/miui/dock/DockMonitorService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/dock/DockMonitorService;->g:Z

    return p0
.end method

.method static synthetic c(Lcom/miui/dock/DockMonitorService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/dock/DockMonitorService;->j:Z

    return p0
.end method

.method static synthetic d(Lcom/miui/dock/DockMonitorService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/dock/DockMonitorService;->g:Z

    return p1
.end method

.method static synthetic e(Lcom/miui/dock/DockMonitorService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/dock/DockMonitorService;->h:Z

    return p0
.end method

.method static synthetic f(Lcom/miui/dock/DockMonitorService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/dock/DockMonitorService;->h:Z

    return p1
.end method

.method static synthetic g(Lcom/miui/dock/DockMonitorService;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/miui/dock/DockMonitorService;->a:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic h(Lcom/miui/dock/DockMonitorService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/dock/DockMonitorService;->M()V

    return-void
.end method

.method static synthetic i(Lcom/miui/dock/DockMonitorService;)Z
    .locals 0

    invoke-direct {p0}, Lcom/miui/dock/DockMonitorService;->B()Z

    move-result p0

    return p0
.end method

.method static synthetic j(Lcom/miui/dock/DockMonitorService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/dock/DockMonitorService;->z()V

    return-void
.end method

.method static synthetic k(Lcom/miui/dock/DockMonitorService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/dock/DockMonitorService;->J()V

    return-void
.end method

.method static synthetic l(Lcom/miui/dock/DockMonitorService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/dock/DockMonitorService;->i:Z

    return p1
.end method

.method static synthetic m(Lcom/miui/dock/DockMonitorService;)Landroid/os/IBinder$DeathRecipient;
    .locals 0

    iget-object p0, p0, Lcom/miui/dock/DockMonitorService;->y:Landroid/os/IBinder$DeathRecipient;

    return-object p0
.end method

.method static synthetic n(Lcom/miui/dock/DockMonitorService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/dock/DockMonitorService;->w()V

    return-void
.end method

.method static synthetic o(Lcom/miui/dock/DockMonitorService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/dock/DockMonitorService;->D()V

    return-void
.end method

.method static synthetic p(Lcom/miui/dock/DockMonitorService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/dock/DockMonitorService;->b:Z

    return p1
.end method

.method static synthetic q(Lcom/miui/dock/DockMonitorService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/dock/DockMonitorService;->c:Z

    return p0
.end method

.method static synthetic r(Lcom/miui/dock/DockMonitorService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/dock/DockMonitorService;->c:Z

    return p1
.end method

.method static synthetic s(Lcom/miui/dock/DockMonitorService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/dock/DockMonitorService;->d:Z

    return p1
.end method

.method static synthetic t(Lcom/miui/dock/DockMonitorService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/dock/DockMonitorService;->e:Z

    return p1
.end method

.method static synthetic u(Lcom/miui/dock/DockMonitorService;)Z
    .locals 0

    invoke-direct {p0}, Lcom/miui/dock/DockMonitorService;->A()Z

    move-result p0

    return p0
.end method

.method static synthetic v(Lcom/miui/dock/DockMonitorService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/dock/DockMonitorService;->f:Z

    return p1
.end method

.method private w()V
    .locals 11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDockSwitchChange : isDeviceProvisioned = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/dock/DockMonitorService;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " dockSwitch = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/dock/DockMonitorService;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\t forceMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/dock/DockMonitorService;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\t batteryMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/dock/DockMonitorService;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\t dockShow = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/dock/DockMonitorService;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\tcurrentUser = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lx4/z1;->q()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\t isBound = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/dock/DockMonitorService;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GlobalDock-MonitorService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/miui/dock/DockMonitorService;->f:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/dock/DockMonitorService;->g:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/dock/DockMonitorService;->d:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/dock/DockMonitorService;->e:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/dock/DockMonitorService;->h:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lx4/z1;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, La8/x;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDockSwitchChange: mGameWindowBinder = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/miui/dock/DockMonitorService;->l:Lcom/miui/gamebooster/service/IGameBoosterWindow;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/miui/dock/DockMonitorService;->i:Z

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/dock/DockMonitorService;->l:Lcom/miui/gamebooster/service/IGameBoosterWindow;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v5, p0, Lcom/miui/dock/DockMonitorService;->l:Lcom/miui/gamebooster/service/IGameBoosterWindow;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v5 .. v10}, Lcom/miui/gamebooster/service/IGameBoosterWindow;->D4(IZLjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iput-boolean v3, p0, Lcom/miui/dock/DockMonitorService;->i:Z

    iput-object v2, p0, Lcom/miui/dock/DockMonitorService;->l:Lcom/miui/gamebooster/service/IGameBoosterWindow;

    :cond_0
    :goto_0
    if-nez v3, :cond_2

    const-string v0, "onDockSwitchChange: bind to ui"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.miui.gamebooster.service.GameBoxService"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/dock/DockMonitorService;->k:Lcom/miui/dock/DockMonitorService$m;

    invoke-virtual {p0, v0, v1, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/dock/DockMonitorService;->i:Z

    goto :goto_1

    :cond_1
    iget-boolean v0, p0, Lcom/miui/dock/DockMonitorService;->i:Z

    if-eqz v0, :cond_2

    const-string v0, "onDockSwitchChange: unbind to ui"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/miui/dock/DockMonitorService;->z()V

    :try_start_1
    iget-object v0, p0, Lcom/miui/dock/DockMonitorService;->k:Lcom/miui/dock/DockMonitorService$m;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    iput-boolean v3, p0, Lcom/miui/dock/DockMonitorService;->i:Z

    iput-object v2, p0, Lcom/miui/dock/DockMonitorService;->l:Lcom/miui/gamebooster/service/IGameBoosterWindow;

    :cond_2
    :goto_1
    return-void
.end method

.method private x()V
    .locals 2

    invoke-static {}, Lcom/miui/gamebooster/service/y;->b()Lcom/miui/gamebooster/service/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gamebooster/service/y;->a()Landroid/os/HandlerThread;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/dock/DockMonitorService;->m:Landroid/os/HandlerThread;

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/dock/DockMonitorService;->m:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/dock/DockMonitorService;->n:Landroid/os/Handler;

    return-void
.end method

.method private y(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    const-string p1, "dock service start"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Dock isGtbMode: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/miui/dock/DockMonitorService;->b:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Dock isVtbMode: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/miui/dock/DockMonitorService;->c:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Dock isForceMode: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/miui/dock/DockMonitorService;->d:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Dock isBatteryMode: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/miui/dock/DockMonitorService;->e:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Dock isDockModeOpened: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/miui/dock/DockMonitorService;->g:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Dock isDockShow: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/miui/dock/DockMonitorService;->h:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Dock isBounded: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/miui/dock/DockMonitorService;->i:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Dock mGameWindowBinder: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/miui/dock/DockMonitorService;->l:Lcom/miui/gamebooster/service/IGameBoosterWindow;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "dock service end"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private z()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/miui/dock/DockMonitorService;->l:Lcom/miui/gamebooster/service/IGameBoosterWindow;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/dock/DockMonitorService;->l:Lcom/miui/gamebooster/service/IGameBoosterWindow;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/miui/gamebooster/service/IGameBoosterWindow;->G4(I)V
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


# virtual methods
.method public K()V
    .locals 1

    :try_start_0
    iget-boolean v0, p0, Lcom/miui/dock/DockMonitorService;->i:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/dock/DockMonitorService;->i:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/dock/DockMonitorService;->l:Lcom/miui/gamebooster/service/IGameBoosterWindow;

    iget-object v0, p0, Lcom/miui/dock/DockMonitorService;->k:Lcom/miui/dock/DockMonitorService$m;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "=== "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " info ==="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/dock/DockMonitorService;->y(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, La8/x;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GlobalDock-MonitorService"

    const-string v1, "do not launch DockMonitorService service in kid space"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/miui/dock/DockMonitorService;->x()V

    invoke-direct {p0}, Lcom/miui/dock/DockMonitorService;->I()V

    invoke-direct {p0}, Lcom/miui/dock/DockMonitorService;->E()V

    invoke-direct {p0}, Lcom/miui/dock/DockMonitorService;->G()V

    invoke-static {p0}, Lk5/a;->d(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/dock/DockMonitorService;->g:Z

    invoke-static {p0}, Lx4/g0;->c(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/miui/dock/DockMonitorService;->d:Z

    invoke-direct {p0}, Lcom/miui/dock/DockMonitorService;->A()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/dock/DockMonitorService;->e:Z

    invoke-static {p0}, Lk5/a;->j(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/dock/DockMonitorService;->f:Z

    invoke-direct {p0}, Lcom/miui/dock/DockMonitorService;->F()V

    invoke-direct {p0}, Lcom/miui/dock/DockMonitorService;->H()V

    invoke-direct {p0}, Lcom/miui/dock/DockMonitorService;->D()V

    invoke-direct {p0}, Lcom/miui/dock/DockMonitorService;->L()V

    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object v0

    new-instance v1, Lc5/b;

    invoke-direct {v1, p0}, Lc5/b;-><init>(Lcom/miui/dock/DockMonitorService;)V

    invoke-virtual {v0, v1}, Lef/z;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    invoke-virtual {p0}, Lcom/miui/dock/DockMonitorService;->K()V

    invoke-direct {p0}, Lcom/miui/dock/DockMonitorService;->O()V

    invoke-direct {p0}, Lcom/miui/dock/DockMonitorService;->N()V

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/dock/DockMonitorService;->p:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/dock/DockMonitorService;->q:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/dock/DockMonitorService;->o:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/dock/DockMonitorService;->r:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/dock/DockMonitorService;->s:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/dock/DockMonitorService;->t:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    invoke-static {}, Lk5/a;->r()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/dock/DockMonitorService;->j:Z

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method

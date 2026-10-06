.class public Lcom/miui/securitycenter/service/NotificationService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/securitycenter/service/NotificationService$NotificationView;,
        Lcom/miui/securitycenter/service/NotificationService$e;
    }
.end annotation


# static fields
.field private static final o:J


# instance fields
.field private a:Landroid/os/Handler;

.field private b:I

.field private c:Z

.field private d:Z

.field private e:Landroid/app/NotificationManager;

.field private f:J

.field private g:Z

.field private h:Landroid/os/HandlerThread;

.field private i:Lcom/miui/securitycenter/service/NotificationService$e;

.field private j:Landroid/content/res/Configuration;

.field private k:J

.field private l:Landroid/content/BroadcastReceiver;

.field private final m:Landroid/content/BroadcastReceiver;

.field private final n:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    invoke-static {}, Lx4/t;->m()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    sput-wide v0, Lcom/miui/securitycenter/service/NotificationService;->o:J

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/miui/securitycenter/service/NotificationService;->a:Landroid/os/Handler;

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/securitycenter/service/NotificationService;->b:I

    iput-boolean v0, p0, Lcom/miui/securitycenter/service/NotificationService;->c:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/securitycenter/service/NotificationService;->d:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/miui/securitycenter/service/NotificationService;->f:J

    iput-boolean v0, p0, Lcom/miui/securitycenter/service/NotificationService;->g:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/miui/securitycenter/service/NotificationService;->k:J

    new-instance v0, Lcom/miui/securitycenter/service/NotificationService$a;

    invoke-direct {v0, p0}, Lcom/miui/securitycenter/service/NotificationService$a;-><init>(Lcom/miui/securitycenter/service/NotificationService;)V

    iput-object v0, p0, Lcom/miui/securitycenter/service/NotificationService;->l:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/miui/securitycenter/service/NotificationService$b;

    invoke-direct {v0, p0}, Lcom/miui/securitycenter/service/NotificationService$b;-><init>(Lcom/miui/securitycenter/service/NotificationService;)V

    iput-object v0, p0, Lcom/miui/securitycenter/service/NotificationService;->m:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/miui/securitycenter/service/NotificationService$c;

    invoke-direct {v0, p0}, Lcom/miui/securitycenter/service/NotificationService$c;-><init>(Lcom/miui/securitycenter/service/NotificationService;)V

    iput-object v0, p0, Lcom/miui/securitycenter/service/NotificationService;->n:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/miui/securitycenter/service/NotificationService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/securitycenter/service/NotificationService;->c:Z

    return p1
.end method

.method static synthetic b(Lcom/miui/securitycenter/service/NotificationService;)I
    .locals 0

    iget p0, p0, Lcom/miui/securitycenter/service/NotificationService;->b:I

    return p0
.end method

.method static synthetic c(Lcom/miui/securitycenter/service/NotificationService;I)I
    .locals 0

    iput p1, p0, Lcom/miui/securitycenter/service/NotificationService;->b:I

    return p1
.end method

.method static synthetic d()J
    .locals 2

    sget-wide v0, Lcom/miui/securitycenter/service/NotificationService;->o:J

    return-wide v0
.end method

.method static synthetic e(Lcom/miui/securitycenter/service/NotificationService;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/securitycenter/service/NotificationService;->s(J)V

    return-void
.end method

.method static synthetic f(Lcom/miui/securitycenter/service/NotificationService;)J
    .locals 2

    iget-wide v0, p0, Lcom/miui/securitycenter/service/NotificationService;->k:J

    return-wide v0
.end method

.method static synthetic g(Lcom/miui/securitycenter/service/NotificationService;J)J
    .locals 0

    iput-wide p1, p0, Lcom/miui/securitycenter/service/NotificationService;->k:J

    return-wide p1
.end method

.method static synthetic h(Lcom/miui/securitycenter/service/NotificationService;)J
    .locals 2

    iget-wide v0, p0, Lcom/miui/securitycenter/service/NotificationService;->f:J

    return-wide v0
.end method

.method static synthetic i(Lcom/miui/securitycenter/service/NotificationService;J)J
    .locals 0

    iput-wide p1, p0, Lcom/miui/securitycenter/service/NotificationService;->f:J

    return-wide p1
.end method

.method static synthetic j(Lcom/miui/securitycenter/service/NotificationService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/securitycenter/service/NotificationService;->d:Z

    return p1
.end method

.method static synthetic k(Lcom/miui/securitycenter/service/NotificationService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/securitycenter/service/NotificationService;->t()V

    return-void
.end method

.method static synthetic l(Lcom/miui/securitycenter/service/NotificationService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/securitycenter/service/NotificationService;->g:Z

    return p0
.end method

.method static synthetic m(Lcom/miui/securitycenter/service/NotificationService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/securitycenter/service/NotificationService;->g:Z

    return p1
.end method

.method static synthetic n(Lcom/miui/securitycenter/service/NotificationService;)Landroid/os/HandlerThread;
    .locals 0

    iget-object p0, p0, Lcom/miui/securitycenter/service/NotificationService;->h:Landroid/os/HandlerThread;

    return-object p0
.end method

.method static synthetic o(Lcom/miui/securitycenter/service/NotificationService;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;
    .locals 0

    iput-object p1, p0, Lcom/miui/securitycenter/service/NotificationService;->h:Landroid/os/HandlerThread;

    return-object p1
.end method

.method static synthetic p(Lcom/miui/securitycenter/service/NotificationService;)Lcom/miui/securitycenter/service/NotificationService$e;
    .locals 0

    iget-object p0, p0, Lcom/miui/securitycenter/service/NotificationService;->i:Lcom/miui/securitycenter/service/NotificationService$e;

    return-object p0
.end method

.method static synthetic q(Lcom/miui/securitycenter/service/NotificationService;Lcom/miui/securitycenter/service/NotificationService$e;)Lcom/miui/securitycenter/service/NotificationService$e;
    .locals 0

    iput-object p1, p0, Lcom/miui/securitycenter/service/NotificationService;->i:Lcom/miui/securitycenter/service/NotificationService$e;

    return-object p1
.end method

.method private r()V
    .locals 2

    const-string v0, "cancelNotification"

    invoke-static {v0}, Lx4/q0;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/securitycenter/service/NotificationService;->e:Landroid/app/NotificationManager;

    const/16 v1, 0x4e24

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method private s(J)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "screen on : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/securitycenter/service/NotificationService;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", enable : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/securitycenter/service/NotificationService;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lx4/q0;->a(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/miui/securitycenter/service/NotificationService;->d:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/securitycenter/service/NotificationService;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/securitycenter/service/NotificationService;->a:Landroid/os/Handler;

    new-instance v1, Lcom/miui/securitycenter/service/NotificationService$d;

    invoke-direct {v1, p0}, Lcom/miui/securitycenter/service/NotificationService$d;-><init>(Lcom/miui/securitycenter/service/NotificationService;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/miui/securitycenter/service/NotificationService;->g:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/securitycenter/service/NotificationService;->i:Lcom/miui/securitycenter/service/NotificationService$e;

    invoke-static {p1}, Lcom/miui/securitycenter/service/NotificationService$e;->b(Lcom/miui/securitycenter/service/NotificationService$e;)V

    invoke-direct {p0}, Lcom/miui/securitycenter/service/NotificationService;->r()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/securitycenter/service/NotificationService;->g:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private t()V
    .locals 6

    const-string v0, "notifyNotification"

    invoke-static {v0}, Lx4/q0;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/miui/securitycenter/service/NotificationService$NotificationView;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0e02c6

    invoke-direct {v0, p0, v1, v2}, Lcom/miui/securitycenter/service/NotificationService$NotificationView;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/miui/securitycenter/service/NotificationService$NotificationView;->init()V

    invoke-static {v0}, Lcom/miui/securitycenter/service/NotificationService$NotificationView;->access$1200(Lcom/miui/securitycenter/service/NotificationService$NotificationView;)V

    iget v1, p0, Lcom/miui/securitycenter/service/NotificationService;->b:I

    invoke-static {v0, v1}, Lcom/miui/securitycenter/service/NotificationService$NotificationView;->access$1300(Lcom/miui/securitycenter/service/NotificationService$NotificationView;I)V

    invoke-static {v0}, Lcom/miui/securitycenter/service/NotificationService$NotificationView;->access$1400(Lcom/miui/securitycenter/service/NotificationService$NotificationView;)V

    const-string v1, "securitycenter_resident_notification"

    invoke-static {p0, v1}, Lx4/e1;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v3

    const v4, 0x7f080f25

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    const-string v4, "ResidentGroup"

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    invoke-static {}, Lx4/t;->n()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x18

    if-lt v3, v5, :cond_0

    invoke-static {v2, v0}, Landroidx/core/app/t;->a(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.miui.securitycenter.action.TRACK_NOTIFICATION_CLICK"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string v0, "track_module"

    const-string v5, "securitycenter"

    invoke-virtual {v3, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v3, 0x44000000    # 512.0f

    invoke-static {p0, v4, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    :cond_1
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-static {v0, v4}, Lx4/e1;->k(Landroid/app/Notification;Z)V

    invoke-static {v0, v4}, Lx4/e1;->j(Landroid/app/Notification;Z)V

    iget-object v2, p0, Lcom/miui/securitycenter/service/NotificationService;->e:Landroid/app/NotificationManager;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f120f28

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    invoke-static {v2, v1, v3, v4}, Lx4/e1;->b(Landroid/app/NotificationManager;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/miui/securitycenter/service/NotificationService;->e:Landroid/app/NotificationManager;

    const/16 v2, 0x4e24

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    invoke-static {}, Lx4/t;->g()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/securitycenter/service/NotificationService;->k:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/securitycenter/service/NotificationService;->f:J

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string v0, "onConfig"

    invoke-static {v0}, Lx4/q0;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/securitycenter/service/NotificationService;->j:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result p1

    and-int/lit16 p1, p1, 0x400

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/miui/securitycenter/service/NotificationService;->t()V

    :cond_1
    return-void
.end method

.method public onCreate()V
    .locals 5

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "NotificationService onCreate"

    invoke-static {v0}, Lx4/q0;->a(Ljava/lang/String;)V

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/miui/securitycenter/service/NotificationService;->e:Landroid/app/NotificationManager;

    new-instance v0, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Lcom/miui/securitycenter/service/NotificationService;->j:Landroid/content/res/Configuration;

    const-string v0, "securitycenter_resident_notification"

    invoke-static {p0, v0}, Lx4/e1;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v1

    const-string v2, "SecurityCenter_Service"

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/securitycenter/service/NotificationService;->e:Landroid/app/NotificationManager;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f120f28

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    invoke-static {v2, v0, v3, v4}, Lx4/e1;->b(Landroid/app/NotificationManager;Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v0, 0x4e25

    invoke-virtual {p0, v0, v1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/securitycenter/service/NotificationService;->m:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x4

    invoke-static {p0, v1, v0, v2}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.miui.securitycenter.action.UPDATE_NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.miui.securitycenter.action.CLEAR_MEMORY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/securitycenter/service/NotificationService;->l:Landroid/content/BroadcastReceiver;

    invoke-static {p0, v1, v0, v2}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.miui.securitycenter.action.TRACK_NOTIFICATION_CLICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/securitycenter/service/NotificationService;->n:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x2

    invoke-static {p0, v1, v0, v2}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/securitycenter/service/NotificationService;->c:Z

    iget-object v0, p0, Lcom/miui/securitycenter/service/NotificationService;->l:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/miui/securitycenter/service/NotificationService;->m:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/miui/securitycenter/service/NotificationService;->n:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/miui/securitycenter/service/NotificationService;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/securitycenter/service/NotificationService;->i:Lcom/miui/securitycenter/service/NotificationService$e;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/miui/securitycenter/service/NotificationService$e;->b(Lcom/miui/securitycenter/service/NotificationService$e;)V

    :cond_0
    invoke-direct {p0}, Lcom/miui/securitycenter/service/NotificationService;->r()V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    const-string p3, "notify"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/securitycenter/service/NotificationService;->c:Z

    :cond_0
    return p2
.end method

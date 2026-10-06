.class public La7/i;
.super La7/c;
.source "SourceFile"

# interfaces
.implements Ll6/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La7/i$d;,
        La7/i$c;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/content/Context;

.field private c:I

.field private d:Z

.field private e:Z

.field private f:Lcom/miui/gamebooster/service/w;

.field public g:Lcom/miui/gamebooster/service/IGameBoosterWindow;

.field private h:Lcom/miui/gamebooster/service/ISecurityCenterNotificationListener;

.field public i:Landroid/service/notification/StatusBarNotification;

.field private j:Landroid/content/Intent;

.field private final k:Ljava/lang/Object;

.field private l:Lcom/miui/gamebooster/service/NotificationListenerCallback;

.field private final m:La7/i$c;

.field private final n:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/gamebooster/service/w;)V
    .locals 3

    invoke-direct {p0}, La7/c;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, La7/i;->k:Ljava/lang/Object;

    new-instance v0, La7/i$a;

    invoke-direct {v0, p0}, La7/i$a;-><init>(La7/i;)V

    iput-object v0, p0, La7/i;->l:Lcom/miui/gamebooster/service/NotificationListenerCallback;

    new-instance v0, La7/i$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, La7/i$c;-><init>(La7/i;La7/i$a;)V

    iput-object v0, p0, La7/i;->m:La7/i$c;

    new-instance v0, La7/i$b;

    invoke-direct {v0, p0}, La7/i$b;-><init>(La7/i;)V

    iput-object v0, p0, La7/i;->n:Landroid/content/ServiceConnection;

    iput-object p1, p0, La7/i;->a:Landroid/content/Context;

    iput-object p2, p0, La7/i;->f:Lcom/miui/gamebooster/service/w;

    :try_start_0
    const-string p1, "android.app.ActivityManager"

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    sget-object p2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v0, "getCurrentUser"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2, v0, v1, v2}, Lbh/f;->g(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, La7/i;->c:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GameBoosterReflectUtils"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget p1, p0, La7/i;->c:I

    invoke-direct {p0, p1}, La7/i;->p(I)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, La7/i;->b:Landroid/content/Context;

    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, La7/i;->a:Landroid/content/Context;

    const-class v0, Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object p1, p0, La7/i;->j:Landroid/content/Intent;

    const-string p2, "com.miui.gamebooster.service.GameBoxService"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic f(La7/i;Landroid/service/notification/StatusBarNotification;)Z
    .locals 0

    invoke-direct {p0, p1}, La7/i;->m(Landroid/service/notification/StatusBarNotification;)Z

    move-result p0

    return p0
.end method

.method static synthetic g(La7/i;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, La7/i;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic h(La7/i;)Lcom/miui/gamebooster/service/w;
    .locals 0

    iget-object p0, p0, La7/i;->f:Lcom/miui/gamebooster/service/w;

    return-object p0
.end method

.method static synthetic i(La7/i;)Lcom/miui/gamebooster/service/ISecurityCenterNotificationListener;
    .locals 0

    iget-object p0, p0, La7/i;->h:Lcom/miui/gamebooster/service/ISecurityCenterNotificationListener;

    return-object p0
.end method

.method static synthetic j(La7/i;Lcom/miui/gamebooster/service/ISecurityCenterNotificationListener;)Lcom/miui/gamebooster/service/ISecurityCenterNotificationListener;
    .locals 0

    iput-object p1, p0, La7/i;->h:Lcom/miui/gamebooster/service/ISecurityCenterNotificationListener;

    return-object p1
.end method

.method static synthetic k(La7/i;)Lcom/miui/gamebooster/service/NotificationListenerCallback;
    .locals 0

    iget-object p0, p0, La7/i;->l:Lcom/miui/gamebooster/service/NotificationListenerCallback;

    return-object p0
.end method

.method private l()V
    .locals 0
    return-void
.end method

.method private m(Landroid/service/notification/StatusBarNotification;)Z
    .locals 9

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    const-class v2, Lmiui/util/NotificationFilterHelper;

    const-string v3, "ENABLE"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v3, v4}, Lbh/f;->n(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v3, "android.provider.MiuiSettings$SilenceMode"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v5, "showNotification"

    new-array v6, v1, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    aput-object v7, v6, v0

    new-array v7, v1, [Ljava/lang/Object;

    iget-object v8, p0, La7/i;->a:Landroid/content/Context;

    aput-object v8, v7, v0

    invoke-static {v3, v4, v5, v6, v7}, Lbh/f;->g(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v3

    move v2, v0

    :goto_0
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GameBoosterReflectUtils"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v0

    :goto_1
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-static {v4}, La8/c0;->e(Landroid/app/Notification;)Landroid/app/MiuiNotification;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/app/MiuiNotification;->isEnableFloat()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0, p1}, La7/i;->o(Landroid/service/notification/StatusBarNotification;)I

    move-result v4

    if-ne v4, v2, :cond_1

    invoke-static {p1}, La7/i;->r(Landroid/service/notification/StatusBarNotification;)Z

    move-result p1

    if-nez p1, :cond_1

    if-nez v3, :cond_1

    return v1

    :cond_1
    return v0
.end method

.method private n()V
    .locals 0
    return-void
.end method

.method private o(Landroid/service/notification/StatusBarNotification;)I
    .locals 16

    move-object/from16 v1, p0

    const-class v0, Lmiui/util/NotificationFilterHelper;

    const-class v2, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    invoke-static {v3}, Lx4/e1;->g(Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-static {v4}, La8/c0;->e(Landroid/app/Notification;)Landroid/app/MiuiNotification;

    move-result-object v4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v6, "GameBoosterReflectUtils"

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x4

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-nez v5, :cond_1

    :try_start_0
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v12, "getChannelFlag"

    const/4 v13, 0x5

    new-array v14, v13, [Ljava/lang/Class;

    const-class v15, Landroid/content/Context;

    aput-object v15, v14, v11

    aput-object v2, v14, v10

    aput-object v2, v14, v8

    aput-object v5, v14, v7

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v2, v14, v9

    new-array v2, v13, [Ljava/lang/Object;

    iget-object v13, v1, La7/i;->b:Landroid/content/Context;

    aput-object v13, v2, v11

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v2, v10

    aput-object v3, v2, v8

    invoke-static/range {p1 .. p1}, La7/i;->q(Landroid/service/notification/StatusBarNotification;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v4}, Landroid/app/MiuiNotification;->getTargetPkg()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move v10, v11

    :goto_0
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static {v0, v5, v12, v14, v2}, Lbh/f;->g(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v11

    :cond_1
    :try_start_1
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v5, "getAppFlag"

    new-array v12, v9, [Ljava/lang/Class;

    const-class v13, Landroid/content/Context;

    aput-object v13, v12, v11

    aput-object v2, v12, v10

    aput-object v3, v12, v8

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v2, v12, v7

    new-array v2, v9, [Ljava/lang/Object;

    iget-object v9, v1, La7/i;->b:Landroid/content/Context;

    aput-object v9, v2, v11

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v10

    invoke-static/range {p1 .. p1}, La7/i;->q(Landroid/service/notification/StatusBarNotification;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v2, v8

    invoke-virtual {v4}, Landroid/app/MiuiNotification;->getTargetPkg()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    move v10, v11

    :goto_2
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v7

    invoke-static {v0, v3, v5, v12, v2}, Lbh/f;->g(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return v11
.end method

.method private p(I)Landroid/content/Context;
    .locals 1
    iget-object v0, p0, La7/i;->a:Landroid/content/Context;
    return-object v0
.end method

.method public static q(Landroid/service/notification/StatusBarNotification;)I
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v2, "getUid"

    const/4 v3, 0x0

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {p0, v1, v2, v3, v4}, Lbh/f;->b(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "GameBoosterReflectUtils"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method

.method public static r(Landroid/service/notification/StatusBarNotification;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.progressMax"

    invoke-virtual {p0, v1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "android.progressIndeterminate"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-nez v1, :cond_1

    if-eqz p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method


# virtual methods
.method public a()V
    .locals 5

    iget-object v0, p0, La7/i;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, La7/i;->d:Z

    if-eqz v1, :cond_1

    const-string v1, "GameBoxService"

    const-string v2, "close"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    :try_start_1
    iget-object v2, p0, La7/i;->g:Lcom/miui/gamebooster/service/IGameBoosterWindow;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, La7/i;->g:Lcom/miui/gamebooster/service/IGameBoosterWindow;

    invoke-interface {v2, v1}, Lcom/miui/gamebooster/service/IGameBoosterWindow;->G4(I)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, La7/i;->a:Landroid/content/Context;

    invoke-static {v2, v1}, Lm5/b;->b(Landroid/content/Context;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    iget-object v3, p0, La7/i;->a:Landroid/content/Context;

    invoke-static {v3, v1}, Lm5/b;->b(Landroid/content/Context;I)V

    const-string v1, "GameBoxService"

    const-string v3, "close: "

    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    :try_start_3
    iget-boolean v1, p0, La7/i;->e:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, La7/i;->a:Landroid/content/Context;

    iget-object v2, p0, La7/i;->m:La7/i$c;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    invoke-direct {p0}, La7/i;->l()V

    const/4 v1, 0x0

    iput-boolean v1, p0, La7/i;->e:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v1

    :try_start_4
    const-string v2, "GameBoxService"

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

.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public c()V
    .locals 8

    iget-object v0, p0, La7/i;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, La7/i;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    :try_start_1
    iget-boolean v1, p0, La7/i;->e:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, La7/i;->g:Lcom/miui/gamebooster/service/IGameBoosterWindow;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v2, p0, La7/i;->g:Lcom/miui/gamebooster/service/IGameBoosterWindow;

    const/4 v3, 0x1

    iget-object v1, p0, La7/i;->f:Lcom/miui/gamebooster/service/w;

    invoke-virtual {v1}, Lcom/miui/gamebooster/service/w;->K()Z

    move-result v4

    iget-object v1, p0, La7/i;->f:Lcom/miui/gamebooster/service/w;

    invoke-virtual {v1}, Lcom/miui/gamebooster/service/w;->y()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v1, p0, La7/i;->f:Lcom/miui/gamebooster/service/w;

    invoke-virtual {v1}, Lcom/miui/gamebooster/service/w;->E()I

    move-result v7

    invoke-interface/range {v2 .. v7}, Lcom/miui/gamebooster/service/IGameBoosterWindow;->D4(IZLjava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const-string v1, "GameBoxService"

    const-string v2, "open"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, La7/i;->m:La7/i$c;

    iget-object v2, p0, La7/i;->f:Lcom/miui/gamebooster/service/w;

    invoke-virtual {v2}, Lcom/miui/gamebooster/service/w;->K()Z

    move-result v2

    iget-object v3, p0, La7/i;->f:Lcom/miui/gamebooster/service/w;

    invoke-virtual {v3}, Lcom/miui/gamebooster/service/w;->y()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, La7/i;->f:Lcom/miui/gamebooster/service/w;

    invoke-virtual {v4}, Lcom/miui/gamebooster/service/w;->E()I

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v1, v5, v2, v3, v4}, La7/i$c;->a(IZLjava/lang/String;I)V

    iget-object v1, p0, La7/i;->a:Landroid/content/Context;

    iget-object v2, p0, La7/i;->j:Landroid/content/Intent;

    iget-object v3, p0, La7/i;->m:La7/i$c;

    invoke-virtual {v1, v2, v3, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    iput-boolean v1, p0, La7/i;->e:Z

    invoke-direct {p0}, La7/i;->n()V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public d()V
    .locals 1

    invoke-static {}, La8/g0;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Lm6/a;->K(Z)Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lm6/a;->w()Z

    move-result v0

    :goto_0
    iput-boolean v0, p0, La7/i;->d:Z

    return-void
.end method

.method public e()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public onSlideChanged(I)V
    .locals 2

    iget-object v0, p0, La7/i;->f:Lcom/miui/gamebooster/service/w;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/miui/gamebooster/service/w;->A()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v1, La7/i$d;

    invoke-direct {v1, p0, p1}, La7/i$d;-><init>(La7/i;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public s(Landroid/content/Context;)Z
    .locals 11

    iget-object v0, p0, La7/i;->i:Landroid/service/notification/StatusBarNotification;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lf7/b;->j(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    const-string v0, "android.util.MiuiMultiWindowUtils"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v3, Landroid/app/ActivityOptions;

    const-string v4, "getActivityOptions"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    aput-object v7, v6, v2

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v2

    iget-object p1, p0, La7/i;->i:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    iget-object p1, p1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v1

    invoke-static {v0, v3, v4, v6, v5}, Lbh/f;->g(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityOptions;

    iget-object v0, p0, La7/i;->i:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v3, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    move-object v10, p1

    invoke-virtual/range {v3 .. v10}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GameBoosterReflectUtils"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "gamebox_stick"

    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La8/k0;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lx4/f1;->d(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-eqz v0, :cond_2

    const-string v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    if-eqz v4, :cond_2

    invoke-static {p1, v3}, Lx4/g1;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const v2, 0x7f12098d

    invoke-static {p1, v3, v0, v2}, La8/a0;->T(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return v1

    :cond_2
    return v2
.end method

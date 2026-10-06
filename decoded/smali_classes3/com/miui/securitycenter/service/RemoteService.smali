.class public Lcom/miui/securitycenter/service/RemoteService;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field private a:Lc3/e;

.field private b:Landroid/os/Binder;

.field private c:Landroid/app/Notification;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private a()V
    .locals 10

    const-string v0, "setProcessForeground"

    :try_start_0
    const-string v1, "android.app.ActivityManagerNative"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getDefault"

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v5}, Lbh/f;->h(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x3

    if-lt v2, v3, :cond_0

    const-string v2, "setProcessImportant"

    const/4 v3, 0x4

    new-array v8, v3, [Ljava/lang/Class;

    const-class v9, Landroid/os/IBinder;

    aput-object v9, v8, v4

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v6

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v5

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v7

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/miui/securitycenter/service/RemoteService;->b:Landroid/os/Binder;

    aput-object v9, v3, v4

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v4, v3, v5

    const-string v4, "securitycenter"

    aput-object v4, v3, v7

    invoke-static {v1, v2, v8, v3}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-array v2, v7, [Ljava/lang/Class;

    const-class v3, Landroid/os/IBinder;

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v6

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v5

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/miui/securitycenter/service/RemoteService;->b:Landroid/os/Binder;

    aput-object v7, v3, v4

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v4, v3, v5

    invoke-static {v1, v0, v2, v3}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "RemoteService"

    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private b(Ljava/io/PrintWriter;)V
    .locals 1

    const-string v0, "===\t SecurityCenter APK Build Configuration \t==="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "FLAVOR : cnPhone"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "IS_FLAVOR_REGION_CN : true"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private c()V
    .locals 4

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const-string v1, "securitycenter_resident_notification_hide"

    invoke-static {p0, v1}, Lx4/e1;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v2

    const-string v3, "SecurityCenter_Service"

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/securitycenter/service/RemoteService;->c:Landroid/app/Notification;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120f29

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    invoke-static {v0, v1, v2, v3}, Lx4/e1;->b(Landroid/app/NotificationManager;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    const-string p1, "RemoteService dump"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/miui/permcenter/install/PackageVerificationReceiver;->f(Ljava/io/PrintWriter;)V

    invoke-direct {p0, p2}, Lcom/miui/securitycenter/service/RemoteService;->b(Ljava/io/PrintWriter;)V

    invoke-static {p0, p2}, Lc3/f;->o(Landroid/content/Context;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-direct {p0}, Lcom/miui/securitycenter/service/RemoteService;->c()V

    invoke-direct {p0}, Lcom/miui/securitycenter/service/RemoteService;->a()V

    new-instance v0, Lc3/e;

    invoke-direct {v0, p0}, Lc3/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/securitycenter/service/RemoteService;->a:Lc3/e;

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x22
    .end annotation

    iget-object v0, p0, Lcom/miui/securitycenter/service/RemoteService;->c:Landroid/app/Notification;

    const-string v1, "RemoteService"

    if-nez v0, :cond_0

    const-string v0, "RemoteService notification is null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/miui/securitycenter/service/RemoteService;->c()V

    :cond_0
    const/16 v0, 0x4e26

    iget-object v2, p0, Lcom/miui/securitycenter/service/RemoteService;->c:Landroid/app/Notification;

    const/4 v3, 0x1

    invoke-static {p0, v0, v2, v3}, Landroidx/core/app/ServiceCompat;->a(Landroid/app/Service;ILandroid/app/Notification;I)V

    const-string v0, "RemoteService startForeground"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_6

    const-string v0, "cmd"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "recommend_app_installed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lc3/e;->p(Landroid/content/Context;)V

    :cond_1
    const-string v1, "app_lock"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/securitycenter/service/RemoteService;->a:Lc3/e;

    invoke-virtual {v1, p1, p0}, Lc3/e;->j(Landroid/content/Intent;Landroid/content/Context;)V

    :cond_2
    const-string v1, "competitive_app_installed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "000015"

    invoke-static {p0, v1}, Lc3/e;->n(Landroid/content/Context;Ljava/lang/String;)V

    :cond_3
    const-string v1, "app_installed_scan"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {p0}, Lc3/e;->m(Landroid/content/Context;)V

    :cond_4
    const-string v1, "show_virus_notification"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "key_virus_pkg_list"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    sget-object v2, Lcom/miui/securityscan/scanner/n;->f:Lcom/miui/securityscan/scanner/n$b;

    invoke-virtual {v2}, Lcom/miui/securityscan/scanner/n$b;->a()Lcom/miui/securityscan/scanner/n;

    move-result-object v2

    invoke-virtual {v2, p0, v1}, Lcom/miui/securityscan/scanner/n;->t(Landroid/content/Context;Ljava/util/ArrayList;)V

    :cond_5
    const-string v1, "hide_virus_notification"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/miui/securityscan/scanner/n;->f:Lcom/miui/securityscan/scanner/n$b;

    invoke-virtual {v0}, Lcom/miui/securityscan/scanner/n$b;->a()Lcom/miui/securityscan/scanner/n;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/securityscan/scanner/n;->f(Landroid/content/Context;)V

    :cond_6
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method

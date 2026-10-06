.class public Lcom/miui/gamebooster/service/VideoToolBoxService;
.super Lcom/miui/gamebooster/service/u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gamebooster/service/VideoToolBoxService$VideoToolBoxBinder;,
        Lcom/miui/gamebooster/service/VideoToolBoxService$e;,
        Lcom/miui/gamebooster/service/VideoToolBoxService$f;
    }
.end annotation


# static fields
.field private static w:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private j:Landroid/os/Handler;

.field private k:Landroid/os/HandlerThread;

.field private l:Landroid/content/Context;

.field private m:Z

.field private final n:Ljava/lang/Object;

.field private o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lcom/miui/gamebooster/service/VideoToolBoxService$VideoToolBoxBinder;

.field private q:Ljava/lang/String;

.field private r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private s:Landroid/database/ContentObserver;

.field private t:Landroid/content/BroadcastReceiver;

.field private u:Lcom/miui/gamebooster/mutiwindow/b$b;

.field private v:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/gamebooster/service/VideoToolBoxService;->w:Ljava/util/ArrayList;

    const-string v1, "com.miui.screenrecorder"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/gamebooster/service/VideoToolBoxService;->w:Ljava/util/ArrayList;

    const-string v1, "com.lbe.security.miui"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/gamebooster/service/VideoToolBoxService;->w:Ljava/util/ArrayList;

    const-string v1, "com.milink.service"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/gamebooster/service/VideoToolBoxService;->w:Ljava/util/ArrayList;

    const-string v1, "com.xiaomi.miplay_client"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/gamebooster/service/VideoToolBoxService;->w:Ljava/util/ArrayList;

    const-string v1, "com.xiaomi.misubscreenui"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/gamebooster/service/VideoToolBoxService;->w:Ljava/util/ArrayList;

    const-string v1, "com.xiaomi.aiasst.vision"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/gamebooster/service/VideoToolBoxService;->w:Ljava/util/ArrayList;

    const-string v1, "com.android.intentresolver"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/miui/gamebooster/service/u;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/service/VideoToolBoxService;->n:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/service/VideoToolBoxService;->o:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/service/VideoToolBoxService;->r:Ljava/util/ArrayList;

    new-instance v0, Lcom/miui/gamebooster/service/VideoToolBoxService$a;

    iget-object v1, p0, Lcom/miui/gamebooster/service/VideoToolBoxService;->j:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/miui/gamebooster/service/VideoToolBoxService$a;-><init>(Lcom/miui/gamebooster/service/VideoToolBoxService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/gamebooster/service/VideoToolBoxService;->s:Landroid/database/ContentObserver;

    new-instance v0, Lcom/miui/gamebooster/service/VideoToolBoxService$b;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/service/VideoToolBoxService$b;-><init>(Lcom/miui/gamebooster/service/VideoToolBoxService;)V

    iput-object v0, p0, Lcom/miui/gamebooster/service/VideoToolBoxService;->t:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/miui/gamebooster/service/VideoToolBoxService$c;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/service/VideoToolBoxService$c;-><init>(Lcom/miui/gamebooster/service/VideoToolBoxService;)V

    iput-object v0, p0, Lcom/miui/gamebooster/service/VideoToolBoxService;->u:Lcom/miui/gamebooster/mutiwindow/b$b;

    new-instance v0, Lcom/miui/gamebooster/service/VideoToolBoxService$d;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/service/VideoToolBoxService$d;-><init>(Lcom/miui/gamebooster/service/VideoToolBoxService;)V

    iput-object v0, p0, Lcom/miui/gamebooster/service/VideoToolBoxService;->v:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic A(Lcom/miui/gamebooster/service/VideoToolBoxService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/service/VideoToolBoxService;->H()V

    return-void
.end method

.method private B(Ljava/lang/String;)Z
    .locals 3

    invoke-static {}, La8/s1;->a()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "splitMode: on"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VideoToolBoxService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/miui/gamebooster/service/VideoToolBoxService;->l:Landroid/content/Context;

    invoke-static {v1}, La8/z;->h(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/gamebooster/service/u;->i()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/gamebooster/service/VideoToolBoxService;->o:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gamebooster/service/u;->f()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p1

    invoke-static {p1}, Lme/w;->S(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lx4/y;->h()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private C(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    const-string p1, "VideoToolBoxService start"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Vtb videotoolbox on: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/miui/gamebooster/service/VideoToolBoxService;->m:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Vtb videolist: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/miui/gamebooster/service/VideoToolBoxService;->o:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Vtb video activity list: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/miui/gamebooster/service/VideoToolBoxService;->r:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Vtb currentPkg: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/miui/gamebooster/service/VideoToolBoxService;->q:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Vtb PCMode on: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/miui/gamebooster/service/VideoToolBoxService;->l:Landroid/content/Context;

    invoke-static {p3}, La8/z;->h(Landroid/content/Context;)Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Vtb splite screen on: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, La8/s1;->a()Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Vtb folded on: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/gamebooster/service/u;->i()Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Vtb Theatre Mode Enable: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lj8/p;->e()Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string p1, "VideoToolBoxService service end"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private D()V
    .locals 2

    invoke-static {}, Lcom/miui/gamebooster/service/y;->b()Lcom/miui/gamebooster/service/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gamebooster/service/y;->a()Landroid/os/HandlerThread;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/service/VideoToolBoxService;->k:Landroid/os/HandlerThread;

    new-instance v0, Lcom/miui/gamebooster/service/VideoToolBoxService$f;

    iget-object v1, p0, Lcom/miui/gamebooster/service/VideoToolBoxService;->k:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/gamebooster/service/VideoToolBoxService$f;-><init>(Lcom/miui/gamebooster/service/VideoToolBoxService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/gamebooster/service/VideoToolBoxService;->j:Landroid/os/Handler;

    return-void
.end method

.method private E()V
    .locals 2

    invoke-static {}, Lcom/miui/gamebooster/mutiwindow/b;->d()Lcom/miui/gamebooster/mutiwindow/b;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/service/VideoToolBoxService;->u:Lcom/miui/gamebooster/mutiwindow/b$b;

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/mutiwindow/b;->b(Lcom/miui/gamebooster/mutiwindow/b$b;)V

    return-void
.end method

.method private F()V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "gb.action.update_video_list"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "vtb_action_monitor_activity"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/gamebooster/service/VideoToolBoxService;->l:Landroid/content/Context;

    invoke-static {v1}, Lr0/a;->b(Landroid/content/Context;)Lr0/a;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gamebooster/service/VideoToolBoxService;->t:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lr0/a;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private G()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/gamebooster/service/VideoToolBoxService;->v:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x2

    invoke-static {p0, v1, v0, v2}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method private H()V
    .locals 4

    invoke-static {}, Li8/c;->U()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "key_hang_up_pkg"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-static {p0, v2, v3}, La8/k0;->v(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-static {v0, v1}, Lr4/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {v3}, Li8/c;->E0(Z)V

    :cond_1
    return-void
.end method

.method private I()V
    .locals 6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/miui/gamebooster/service/VideoToolBoxService;->l:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "pref_videobox_switch_status"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/miui/gamebooster/service/VideoToolBoxService;->s:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_1
    const-string v3, "VideoToolBoxService"

    const-string v4, "register content observer error"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private J(I)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/gamebooster/service/VideoToolBoxService;->K(IJ)V

    return-void
.end method

.method private K(IJ)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/service/VideoToolBoxService;->j:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private L(Ljava/lang/String;)Z
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1f

    if-le v0, v2, :cond_1

    invoke-static {}, La8/a0;->M()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, La8/a0;->s(Ljava/lang/Object;)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-direct {p0, v1}, Lcom/miui/gamebooster/service/VideoToolBoxService;->M(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_1
    const-string v0, "com.miui.securitycenter"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const-string p1, "activity"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-direct {p0, v1}, Lcom/miui/gamebooster/service/VideoToolBoxService;->M(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_3
    return v0
.end method

.method private M(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "com.miui.gamebooster.ui.GameBoxAlertActivity"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private N()V
    .locals 2

    invoke-static {}, Lcom/miui/gamebooster/mutiwindow/b;->d()Lcom/miui/gamebooster/mutiwindow/b;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/service/VideoToolBoxService;->u:Lcom/miui/gamebooster/mutiwindow/b$b;

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/mutiwindow/b;->g(Lcom/miui/gamebooster/mutiwindow/b$b;)V

    return-void
.end method

.method private O()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/miui/gamebooster/service/VideoToolBoxService;->l:Landroid/content/Context;

    invoke-static {v0}, Lr0/a;->b(Landroid/content/Context;)Lr0/a;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/service/VideoToolBoxService;->t:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lr0/a;->e(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private P()V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/service/VideoToolBoxService;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/miui/gamebooster/service/VideoToolBoxService;->o:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Li8/c;->B(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method static synthetic o(Lcom/miui/gamebooster/service/VideoToolBoxService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/gamebooster/service/VideoToolBoxService;->m:Z

    return p0
.end method

.method static synthetic p(Lcom/miui/gamebooster/service/VideoToolBoxService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/service/VideoToolBoxService;->m:Z

    return p1
.end method

.method static synthetic q(Lcom/miui/gamebooster/service/VideoToolBoxService;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/service/VideoToolBoxService;->l:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic r(Lcom/miui/gamebooster/service/VideoToolBoxService;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/service/VideoToolBoxService;->o:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic s(Lcom/miui/gamebooster/service/VideoToolBoxService;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/service/VideoToolBoxService;->j:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic t()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lcom/miui/gamebooster/service/VideoToolBoxService;->w:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic u(Lcom/miui/gamebooster/service/VideoToolBoxService;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/service/VideoToolBoxService;->B(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic v(Lcom/miui/gamebooster/service/VideoToolBoxService;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/service/VideoToolBoxService;->q:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic w(Lcom/miui/gamebooster/service/VideoToolBoxService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/service/VideoToolBoxService;->q:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic x(Lcom/miui/gamebooster/service/VideoToolBoxService;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/service/VideoToolBoxService;->n:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic y(Lcom/miui/gamebooster/service/VideoToolBoxService;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/service/VideoToolBoxService;->L(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic z(Lcom/miui/gamebooster/service/VideoToolBoxService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/service/VideoToolBoxService;->P()V

    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    invoke-static {p2, p0}, Lcom/miui/gamebooster/service/x;->b(Ljava/io/PrintWriter;Landroid/content/Context;)V

    const-string v0, "=== VideoToolBoxService running info ==="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gamebooster/service/VideoToolBoxService;->C(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method protected e()Lcom/miui/gamebooster/mutiwindow/b$b;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/service/VideoToolBoxService;->u:Lcom/miui/gamebooster/mutiwindow/b$b;

    return-object v0
.end method

.method protected k()V
    .locals 3

    invoke-static {}, Lcom/miui/gamebooster/service/u;->d()Lcom/gzy/redmiport/compat/process/ForegroundInfo;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScreenFoldChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VideoToolBoxService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/miui/gamebooster/service/VideoToolBoxService;->u:Lcom/miui/gamebooster/mutiwindow/b$b;

    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcom/miui/gamebooster/service/VideoToolBoxService;->m:Z

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    invoke-interface {v1, v0}, Lcom/miui/gamebooster/mutiwindow/b$b;->onForegroundInfoChanged(Lcom/gzy/redmiport/compat/process/ForegroundInfo;)Z

    :cond_0
    return-void
.end method

.method protected m()Z
    .locals 1

    invoke-static {}, Lj8/s;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Li8/c;->D(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p1, p0, Lcom/miui/gamebooster/service/VideoToolBoxService;->p:Lcom/miui/gamebooster/service/VideoToolBoxService$VideoToolBoxBinder;

    return-object p1
.end method

.method public onCreate()V
    .locals 3

    invoke-super {p0}, Lcom/miui/gamebooster/service/u;->onCreate()V

    const-string v0, "VideoToolBoxService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, La8/x;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "do not launch video toolbox service in kid space"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput-object p0, p0, Lcom/miui/gamebooster/service/VideoToolBoxService;->l:Landroid/content/Context;

    new-instance v1, Lcom/miui/gamebooster/service/VideoToolBoxService$VideoToolBoxBinder;

    invoke-direct {v1, p0}, Lcom/miui/gamebooster/service/VideoToolBoxService$VideoToolBoxBinder;-><init>(Lcom/miui/gamebooster/service/VideoToolBoxService;)V

    iput-object v1, p0, Lcom/miui/gamebooster/service/VideoToolBoxService;->p:Lcom/miui/gamebooster/service/VideoToolBoxService$VideoToolBoxBinder;

    invoke-direct {p0}, Lcom/miui/gamebooster/service/VideoToolBoxService;->D()V

    const/16 v1, 0x9

    invoke-direct {p0, v1}, Lcom/miui/gamebooster/service/VideoToolBoxService;->J(I)V

    invoke-direct {p0}, Lcom/miui/gamebooster/service/VideoToolBoxService;->I()V

    iget-object v1, p0, Lcom/miui/gamebooster/service/VideoToolBoxService;->l:Landroid/content/Context;

    invoke-static {v1}, Li8/c;->D(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/gamebooster/service/VideoToolBoxService;->m:Z

    iget-object v1, p0, Lcom/miui/gamebooster/service/VideoToolBoxService;->o:Ljava/util/ArrayList;

    invoke-static {v1}, Li8/c;->B(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gamebooster/service/VideoToolBoxService;->o:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/gamebooster/service/VideoToolBoxService;->j:Landroid/os/Handler;

    new-instance v2, Lcom/miui/gamebooster/service/VideoToolBoxService$e;

    invoke-direct {v2, p0}, Lcom/miui/gamebooster/service/VideoToolBoxService$e;-><init>(Lcom/miui/gamebooster/service/VideoToolBoxService;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Lcom/miui/gamebooster/service/VideoToolBoxService;->E()V

    invoke-direct {p0}, Lcom/miui/gamebooster/service/VideoToolBoxService;->G()V

    invoke-direct {p0}, Lcom/miui/gamebooster/service/VideoToolBoxService;->F()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "videobox switch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/miui/gamebooster/service/VideoToolBoxService;->m:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/miui/gamebooster/service/u;->onDestroy()V

    invoke-direct {p0}, Lcom/miui/gamebooster/service/VideoToolBoxService;->N()V

    :try_start_0
    iget-object v0, p0, Lcom/miui/gamebooster/service/VideoToolBoxService;->l:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/service/VideoToolBoxService;->s:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/miui/gamebooster/service/VideoToolBoxService;->v:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-direct {p0}, Lcom/miui/gamebooster/service/VideoToolBoxService;->O()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v0, p0, Lcom/miui/gamebooster/service/VideoToolBoxService;->j:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

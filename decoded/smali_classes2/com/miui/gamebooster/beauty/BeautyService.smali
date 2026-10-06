.class public Lcom/miui/gamebooster/beauty/BeautyService;
.super Lcom/miui/gamebooster/service/u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gamebooster/beauty/BeautyService$h;,
        Lcom/miui/gamebooster/beauty/BeautyService$i;
    }
.end annotation


# static fields
.field private static final K:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final L:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile A:Z

.field private volatile B:Z

.field private C:I

.field private D:Landroid/content/BroadcastReceiver;

.field private E:Landroid/content/BroadcastReceiver;

.field private F:Lcom/miui/gamebooster/mutiwindow/b$b;

.field private G:Lcom/gzy/redmiport/compat/process/IActivityChangeListener$Stub;

.field private final H:Ljava/lang/Runnable;

.field private I:Landroid/app/TaskStackListener;

.field private final J:Landroid/os/IBinder$DeathRecipient;

.field private j:Ljava/lang/Boolean;

.field private k:Z

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Landroid/os/Handler;

.field private o:Landroid/os/Handler;

.field private p:Z

.field private q:Landroid/os/HandlerThread;

.field private final r:Ljava/lang/Object;

.field private s:Z

.field private final t:Lcom/miui/gamebooster/beauty/BeautyService$h;

.field public u:Lcom/miui/gamebooster/service/IGameBoosterWindow;

.field private v:Z

.field private w:Landroid/app/ActivityManager;

.field private volatile x:Lcom/miui/gamebooster/beauty/BeautyService$i;

.field private volatile y:Ljava/lang/String;

.field private volatile z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/gamebooster/beauty/BeautyService;->K:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/miui/gamebooster/beauty/BeautyService;->L:Ljava/util/HashMap;

    const-string v2, "com.miui.screenrecorder"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.lbe.security.miui"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.milink.service"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "com.xiaomi.miplay_client"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "com.xiaomi.misubscreenui"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "com.xiaomi.aiasst.vision"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "com.miui.vpnsdkmanager"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "com.xiaomi.migameservice"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "com.xiaomi.gamecenter.sdk.service"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "com.google.android.permissioncontroller"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "com.xiaomi.dist.camera.view.CameraPickerActivity"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/miui/gamebooster/service/u;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/miui/gamebooster/beauty/BeautyService;->j:Ljava/lang/Boolean;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gamebooster/beauty/BeautyService;->k:Z

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/miui/gamebooster/beauty/BeautyService;->r:Ljava/lang/Object;

    new-instance v1, Lcom/miui/gamebooster/beauty/BeautyService$h;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/gamebooster/beauty/BeautyService$h;-><init>(Lcom/miui/gamebooster/beauty/BeautyService;Lcom/miui/gamebooster/beauty/BeautyService$a;)V

    iput-object v1, p0, Lcom/miui/gamebooster/beauty/BeautyService;->t:Lcom/miui/gamebooster/beauty/BeautyService$h;

    iput-boolean v0, p0, Lcom/miui/gamebooster/beauty/BeautyService;->v:Z

    sget-object v0, Lcom/miui/gamebooster/beauty/BeautyService$i;->b:Lcom/miui/gamebooster/beauty/BeautyService$i;

    iput-object v0, p0, Lcom/miui/gamebooster/beauty/BeautyService;->x:Lcom/miui/gamebooster/beauty/BeautyService$i;

    new-instance v0, Lcom/miui/gamebooster/beauty/BeautyService$a;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/beauty/BeautyService$a;-><init>(Lcom/miui/gamebooster/beauty/BeautyService;)V

    iput-object v0, p0, Lcom/miui/gamebooster/beauty/BeautyService;->D:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/miui/gamebooster/beauty/BeautyService$b;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/beauty/BeautyService$b;-><init>(Lcom/miui/gamebooster/beauty/BeautyService;)V

    iput-object v0, p0, Lcom/miui/gamebooster/beauty/BeautyService;->E:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/miui/gamebooster/beauty/BeautyService$c;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/beauty/BeautyService$c;-><init>(Lcom/miui/gamebooster/beauty/BeautyService;)V

    iput-object v0, p0, Lcom/miui/gamebooster/beauty/BeautyService;->F:Lcom/miui/gamebooster/mutiwindow/b$b;

    new-instance v0, Lcom/miui/gamebooster/beauty/BeautyService$d;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/beauty/BeautyService$d;-><init>(Lcom/miui/gamebooster/beauty/BeautyService;)V

    iput-object v0, p0, Lcom/miui/gamebooster/beauty/BeautyService;->G:Lcom/gzy/redmiport/compat/process/IActivityChangeListener$Stub;

    new-instance v0, Lcom/miui/gamebooster/beauty/BeautyService$e;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/beauty/BeautyService$e;-><init>(Lcom/miui/gamebooster/beauty/BeautyService;)V

    iput-object v0, p0, Lcom/miui/gamebooster/beauty/BeautyService;->H:Ljava/lang/Runnable;

    new-instance v0, Lcom/miui/gamebooster/beauty/BeautyService$f;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/beauty/BeautyService$f;-><init>(Lcom/miui/gamebooster/beauty/BeautyService;)V

    iput-object v0, p0, Lcom/miui/gamebooster/beauty/BeautyService;->I:Landroid/app/TaskStackListener;

    new-instance v0, Lcom/miui/gamebooster/beauty/BeautyService$g;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/beauty/BeautyService$g;-><init>(Lcom/miui/gamebooster/beauty/BeautyService;)V

    iput-object v0, p0, Lcom/miui/gamebooster/beauty/BeautyService;->J:Landroid/os/IBinder$DeathRecipient;

    return-void
.end method

.method static synthetic A(Lcom/miui/gamebooster/beauty/BeautyService;)Landroid/os/IBinder$DeathRecipient;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/beauty/BeautyService;->J:Landroid/os/IBinder$DeathRecipient;

    return-object p0
.end method

.method static synthetic B(Lcom/miui/gamebooster/beauty/BeautyService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/beauty/BeautyService;->K()V

    return-void
.end method

.method static synthetic C(Lcom/miui/gamebooster/beauty/BeautyService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/beauty/BeautyService;->N()V

    return-void
.end method

.method static synthetic D()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lcom/miui/gamebooster/beauty/BeautyService;->K:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic E(Lcom/miui/gamebooster/beauty/BeautyService;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/beauty/BeautyService;->r:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic F(Lcom/miui/gamebooster/beauty/BeautyService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/beauty/BeautyService;->l:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic G(Lcom/miui/gamebooster/beauty/BeautyService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/beauty/BeautyService;->m:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic H(Lcom/miui/gamebooster/beauty/BeautyService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/beauty/BeautyService;->X()V

    return-void
.end method

.method static synthetic I(Lcom/miui/gamebooster/beauty/BeautyService;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/gamebooster/beauty/BeautyService;->J(J)V

    return-void
.end method

.method private J(J)V
    .locals 3

    iget-object v0, p0, Lcom/miui/gamebooster/beauty/BeautyService;->r:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/miui/gamebooster/beauty/BeautyService;->p:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/gamebooster/beauty/BeautyService;->o:Landroid/os/Handler;

    iget-object v2, p0, Lcom/miui/gamebooster/beauty/BeautyService;->H:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v1, p0, Lcom/miui/gamebooster/beauty/BeautyService;->o:Landroid/os/Handler;

    iget-object v2, p0, Lcom/miui/gamebooster/beauty/BeautyService;->H:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/gamebooster/beauty/BeautyService;->p:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private K()V
    .locals 2

    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object v0

    new-instance v1, Lw5/h;

    invoke-direct {v1, p0}, Lw5/h;-><init>(Lcom/miui/gamebooster/beauty/BeautyService;)V

    invoke-virtual {v0, v1}, Lef/z;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method private L(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    const-string p1, "BeautyService start"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "isFrontCameraOpen: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/miui/gamebooster/beauty/BeautyService;->k:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "currentPkg: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/miui/gamebooster/beauty/BeautyService;->l:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " currentCls: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/miui/gamebooster/beauty/BeautyService;->m:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string p1, "BeautyService service end"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private M()V
    .locals 8

    iget-object v0, p0, Lcom/miui/gamebooster/beauty/BeautyService;->u:Lcom/miui/gamebooster/service/IGameBoosterWindow;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, La8/t1;->c(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "BeautyService"

    if-eqz v0, :cond_0

    const-string v0, "screen Locked! won\'t enter Conversation Mode! "

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lx5/p;->s1(I)V

    iget-object v2, p0, Lcom/miui/gamebooster/beauty/BeautyService;->u:Lcom/miui/gamebooster/service/IGameBoosterWindow;

    const/4 v3, 0x5

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/miui/gamebooster/beauty/BeautyService;->l:Ljava/lang/String;

    iget-object v6, p0, Lcom/miui/gamebooster/beauty/BeautyService;->m:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Lcom/miui/gamebooster/service/IGameBoosterWindow;->D4(IZLjava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/miui/gamebooster/beauty/BeautyService$i;->a:Lcom/miui/gamebooster/beauty/BeautyService$i;

    iput-object v0, p0, Lcom/miui/gamebooster/beauty/BeautyService;->x:Lcom/miui/gamebooster/beauty/BeautyService$i;

    iget-object v0, p0, Lcom/miui/gamebooster/beauty/BeautyService;->m:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/gamebooster/beauty/BeautyService;->z:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/gamebooster/beauty/BeautyService;->l:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/gamebooster/beauty/BeautyService;->y:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enterDockMode pkgName = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/gamebooster/beauty/BeautyService;->l:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", clsName = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/gamebooster/beauty/BeautyService;->m:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private N()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0}, Lx5/p;->s1(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/beauty/BeautyService;->u:Lcom/miui/gamebooster/service/IGameBoosterWindow;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/beauty/BeautyService;->u:Lcom/miui/gamebooster/service/IGameBoosterWindow;

    const/4 v2, 0x5

    invoke-interface {v0, v2}, Lcom/miui/gamebooster/service/IGameBoosterWindow;->G4(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    sget-object v0, Lcom/miui/gamebooster/beauty/BeautyService$i;->b:Lcom/miui/gamebooster/beauty/BeautyService$i;

    iput-object v0, p0, Lcom/miui/gamebooster/beauty/BeautyService;->x:Lcom/miui/gamebooster/beauty/BeautyService$i;

    iput-object v1, p0, Lcom/miui/gamebooster/beauty/BeautyService;->z:Ljava/lang/String;

    iput-object v1, p0, Lcom/miui/gamebooster/beauty/BeautyService;->y:Ljava/lang/String;

    return-void

    :goto_1
    sget-object v2, Lcom/miui/gamebooster/beauty/BeautyService$i;->b:Lcom/miui/gamebooster/beauty/BeautyService$i;

    iput-object v2, p0, Lcom/miui/gamebooster/beauty/BeautyService;->x:Lcom/miui/gamebooster/beauty/BeautyService$i;

    iput-object v1, p0, Lcom/miui/gamebooster/beauty/BeautyService;->z:Ljava/lang/String;

    iput-object v1, p0, Lcom/miui/gamebooster/beauty/BeautyService;->y:Ljava/lang/String;

    throw v0
.end method

.method private O(IZ)Ljava/util/List;
    .locals 1
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    return-object v0
.end method

.method private P()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-le v0, v1, :cond_0

    invoke-static {}, La8/a0;->M()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, La8/a0;->s(Ljava/lang/Object;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_0
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    :goto_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gamebooster/beauty/BeautyService;->l:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/beauty/BeautyService;->m:Ljava/lang/String;

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initCurrentPage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/gamebooster/beauty/BeautyService;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/gamebooster/beauty/BeautyService;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BeautyService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private Q(ZLcom/miui/gamebooster/beauty/BeautyService$i;)Z
    .locals 4

    iget-object v0, p0, Lcom/miui/gamebooster/beauty/BeautyService;->l:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/gamebooster/beauty/BeautyService;->m:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/gamebooster/beauty/BeautyService;->y:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/gamebooster/beauty/BeautyService;->z:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/miui/gamebooster/beauty/BeautyService;->R(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz p1, :cond_0

    sget-object v1, Lcom/miui/gamebooster/beauty/BeautyService$i;->a:Lcom/miui/gamebooster/beauty/BeautyService$i;

    if-ne p2, v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/miui/gamebooster/beauty/BeautyService;->x:Lcom/miui/gamebooster/beauty/BeautyService$i;

    sget-object p2, Lcom/miui/gamebooster/beauty/BeautyService$i;->b:Lcom/miui/gamebooster/beauty/BeautyService$i;

    if-ne p1, p2, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private R(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p2, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private S(ZZ)Z
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, La8/t1;->c(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, La8/s1;->a()Z

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inSplitScreenMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isFrontCameraOpen = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mCurPkgName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/gamebooster/beauty/BeautyService;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mCurClsName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/gamebooster/beauty/BeautyService;->m:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BeautyService"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/miui/gamebooster/beauty/BeautyService;->v:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    invoke-direct {p0, p2}, Lcom/miui/gamebooster/beauty/BeautyService;->T(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/miui/gamebooster/beauty/BeautyService;->j0()Z

    move-result p1

    if-eqz p1, :cond_1

    move v1, v3

    :cond_1
    return v1

    :cond_2
    invoke-static {}, Lw5/f;->p()Lw5/f;

    move-result-object p2

    iget-object v0, p0, Lcom/miui/gamebooster/beauty/BeautyService;->l:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/gamebooster/beauty/BeautyService;->m:Ljava/lang/String;

    invoke-virtual {p2, p1, v0, v2}, Lw5/f;->c(ZLjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/miui/gamebooster/beauty/BeautyService;->j0()Z

    move-result p1

    if-eqz p1, :cond_3

    move v1, v3

    :cond_3
    return v1
.end method

.method private T(Z)Z
    .locals 12

    const-string v0, "BeautyService"

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    invoke-direct {p0, v1, v3}, Lcom/miui/gamebooster/beauty/BeautyService;->O(IZ)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lc7/c;->n(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v2

    :cond_0
    const/4 v4, 0x0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v5, v2

    move v6, v5

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v7, v7, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-static {}, Lw5/f;->p()Lw5/f;

    move-result-object v8

    iget-boolean v9, p0, Lcom/miui/gamebooster/beauty/BeautyService;->k:Z

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v10, v11, v3}, Lw5/f;->d(ZLjava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "topActivity = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ", canUseBeauty = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v8, :cond_2

    move v5, v3

    move-object v4, v7

    goto :goto_0

    :cond_2
    invoke-static {}, Lw5/f;->p()Lw5/f;

    move-result-object v8

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v9, v7}, Lw5/f;->J0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v6, v3

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sceneOneSupport = "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", sceneSecondSupport = "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_5

    if-eqz v6, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clsNameAtConversationMode = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/miui/gamebooster/beauty/BeautyService;->z:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", pkgNameAtConversationMode = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/miui/gamebooster/beauty/BeautyService;->y:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", mCurPkgName = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/miui/gamebooster/beauty/BeautyService;->l:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", mCurClsName = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/miui/gamebooster/beauty/BeautyService;->m:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbh/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/gamebooster/beauty/BeautyService;->l:Ljava/lang/String;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/gamebooster/beauty/BeautyService;->m:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return v3

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSplitSceneSupport fail "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v2
.end method

.method private U()Z
    .locals 2

    sget-object v0, Lcom/miui/gamebooster/beauty/BeautyService;->L:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/miui/gamebooster/beauty/BeautyService;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/gamebooster/beauty/BeautyService;->m:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private synthetic V()V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/beauty/BeautyService;->r:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/miui/gamebooster/beauty/BeautyService;->p0()V

    invoke-direct {p0}, Lcom/miui/gamebooster/beauty/BeautyService;->X()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private synthetic W()V
    .locals 0

    invoke-static {}, Lw5/f;->y()V

    invoke-direct {p0}, Lcom/miui/gamebooster/beauty/BeautyService;->k0()V

    invoke-direct {p0}, Lcom/miui/gamebooster/beauty/BeautyService;->Y()V

    return-void
.end method

.method private X()V
    .locals 6
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-static {}, Lx5/p;->l0()Z

    move-result v0

    const-string v1, "BeautyService"

    if-nez v0, :cond_0

    const-string v0, "onDockSwitchChange: conversation mode is close!"

    :goto_0
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/miui/gamebooster/beauty/BeautyService;->k:Z

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/miui/gamebooster/beauty/BeautyService;->S(ZZ)Z

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDockSwitchChange : \tcurrentUser = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lx4/z1;->q()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "\t isBound = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/miui/gamebooster/beauty/BeautyService;->s:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", curState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/miui/gamebooster/beauty/BeautyService;->x:Lcom/miui/gamebooster/beauty/BeautyService$i;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", isSceneSupport = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isAllowSplit = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/miui/gamebooster/beauty/BeautyService;->v:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/miui/gamebooster/beauty/BeautyService;->x:Lcom/miui/gamebooster/beauty/BeautyService$i;

    invoke-direct {p0, v0, v3}, Lcom/miui/gamebooster/beauty/BeautyService;->Q(ZLcom/miui/gamebooster/beauty/BeautyService$i;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v0, "already at target mode!"

    goto :goto_0

    :cond_1
    invoke-static {}, Lx4/z1;->q()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDockSwitchChange: mGameWindowBinder = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/gamebooster/beauty/BeautyService;->u:Lcom/miui/gamebooster/service/IGameBoosterWindow;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/miui/gamebooster/beauty/BeautyService;->s:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/gamebooster/beauty/BeautyService;->u:Lcom/miui/gamebooster/service/IGameBoosterWindow;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    invoke-direct {p0}, Lcom/miui/gamebooster/beauty/BeautyService;->M()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v5, v2

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iput-boolean v5, p0, Lcom/miui/gamebooster/beauty/BeautyService;->s:Z

    iput-object v4, p0, Lcom/miui/gamebooster/beauty/BeautyService;->u:Lcom/miui/gamebooster/service/IGameBoosterWindow;

    :cond_2
    :goto_1
    if-nez v5, :cond_5

    const-string v0, "onDockSwitchChange: bind to ui"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.miui.gamebooster.service.GameBoxService"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/gamebooster/beauty/BeautyService;->t:Lcom/miui/gamebooster/beauty/BeautyService$h;

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gamebooster/beauty/BeautyService;->s:Z

    goto :goto_2

    :cond_3
    invoke-direct {p0}, Lcom/miui/gamebooster/beauty/BeautyService;->U()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "white list. skip check, clz : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/gamebooster/beauty/BeautyService;->m:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", pkg : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/gamebooster/beauty/BeautyService;->l:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_4
    iget-boolean v0, p0, Lcom/miui/gamebooster/beauty/BeautyService;->s:Z

    if-eqz v0, :cond_5

    const-string v0, "onDockSwitchChange: unbind to ui"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/miui/gamebooster/beauty/BeautyService;->N()V

    :try_start_1
    iget-object v0, p0, Lcom/miui/gamebooster/beauty/BeautyService;->t:Lcom/miui/gamebooster/beauty/BeautyService$h;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    iput-boolean v5, p0, Lcom/miui/gamebooster/beauty/BeautyService;->s:Z

    iput-object v4, p0, Lcom/miui/gamebooster/beauty/BeautyService;->u:Lcom/miui/gamebooster/service/IGameBoosterWindow;

    :cond_5
    :goto_2
    return-void
.end method

.method private Y()V
    .locals 0
    return-void
.end method

.method private Z()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/gamebooster/beauty/BeautyService;->E:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x4

    invoke-static {p0, v1, v0, v2}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method private a0()V
    .locals 3

    const-string v0, "BeautyService"

    :try_start_0
    invoke-static {}, Lcom/miui/gamebooster/mutiwindow/b;->d()Lcom/miui/gamebooster/mutiwindow/b;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gamebooster/beauty/BeautyService;->F:Lcom/miui/gamebooster/mutiwindow/b$b;

    invoke-virtual {v1, v2}, Lcom/miui/gamebooster/mutiwindow/b;->b(Lcom/miui/gamebooster/mutiwindow/b$b;)V

    const-string v1, "registerForegroundInfoListener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private b0()V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "beauty_action_monitor_activity"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {p0}, Lr0/a;->b(Landroid/content/Context;)Lr0/a;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gamebooster/beauty/BeautyService;->D:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lr0/a;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private c0()V
    .locals 9

    const-string v0, "BeautyService"

    iget-boolean v1, p0, Lcom/miui/gamebooster/beauty/BeautyService;->A:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v1, "android.app.ActivityTaskManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getService"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1, v2, v5, v4}, Lbh/f;->h(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "registerTaskStackListener"

    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/Class;

    const-string v7, "android.app.ITaskStackListener"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v6, v3

    new-array v7, v4, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/miui/gamebooster/beauty/BeautyService;->I:Landroid/app/TaskStackListener;

    aput-object v8, v7, v3

    invoke-static {v1, v5, v2, v6, v7}, Lbh/f;->e(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    iput-boolean v4, p0, Lcom/miui/gamebooster/beauty/BeautyService;->A:Z

    const-string v1, "registerTaskChangeListener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerTaskListener fail "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private d0()V
    .locals 3

    iget-object v0, p0, Lcom/miui/gamebooster/beauty/BeautyService;->u:Lcom/miui/gamebooster/service/IGameBoosterWindow;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/beauty/BeautyService;->J:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object v0, p0, Lcom/miui/gamebooster/beauty/BeautyService;->t:Lcom/miui/gamebooster/beauty/BeautyService$h;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private e0()V
    .locals 4

    const-string v0, ""

    const-string v1, "BeautyService"

    :try_start_0
    iget-object v2, p0, Lcom/miui/gamebooster/beauty/BeautyService;->o:Landroid/os/Handler;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/miui/gamebooster/beauty/BeautyService;->H:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v2, p0, Lcom/miui/gamebooster/beauty/BeautyService;->x:Lcom/miui/gamebooster/beauty/BeautyService$i;

    sget-object v3, Lcom/miui/gamebooster/beauty/BeautyService$i;->a:Lcom/miui/gamebooster/beauty/BeautyService$i;

    if-ne v2, v3, :cond_1

    invoke-direct {p0}, Lcom/miui/gamebooster/beauty/BeautyService;->N()V

    const-string v2, "releaseDockMode - exitDockMode"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct {p0}, Lcom/miui/gamebooster/beauty/BeautyService;->d0()V

    iput-object v0, p0, Lcom/miui/gamebooster/beauty/BeautyService;->m:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/gamebooster/beauty/BeautyService;->l:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "releaseDockMode fail "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static g0()V
    .locals 4

    const-string v0, "BeautyService"

    :try_start_0
    invoke-static {}, Lw5/f;->h0()Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setFrontLight: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lw5/f;->p()Lw5/f;

    move-result-object v2

    invoke-virtual {v2, v1}, Lw5/f;->H0(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setFrontLight error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static h0(Landroid/content/Context;)V
    .locals 5

    const-string v0, "BeautyService"

    :try_start_0
    invoke-static {}, Lx5/p;->l0()Z

    move-result v1

    invoke-static {}, Lx5/p;->H0()Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startPageMonitorService, toolBoxOpen = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", featureSupport = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/miui/gamebooster/beauty/BeautyService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startProcessMonitorService: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static i0(Landroid/content/Context;)V
    .locals 3

    const-string v0, "BeautyService"

    :try_start_0
    const-string v1, "stopPageMonitorService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/miui/gamebooster/beauty/BeautyService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopPageMonitorService: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private j0()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, La8/b0;->d()La8/b0;

    move-result-object v1

    invoke-virtual {v1}, La8/b0;->b()V

    invoke-static {}, Lw5/f;->p()Lw5/f;

    move-result-object v1

    invoke-virtual {v1}, Lw5/f;->n()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lw5/f;->p()Lw5/f;

    move-result-object v2

    invoke-virtual {v2}, Lw5/f;->k()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gamebooster/beauty/BeautyService;->l:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/gamebooster/beauty/BeautyService;->m:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lz5/a;->f()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {}, Lw5/f;->p()Lw5/f;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gamebooster/beauty/BeautyService;->l:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/gamebooster/beauty/BeautyService;->m:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lw5/f;->o0(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lz5/a;->m()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lz5/a;->b(Landroid/content/Context;)Lh8/i;

    move-result-object v1

    invoke-virtual {v1}, Lh8/i;->l()Ljava/util/List;

    move-result-object v1

    :goto_0
    invoke-static {v1}, Lc7/c;->n(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v0

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    return v3

    :cond_2
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh8/h;

    invoke-virtual {v1}, Lh8/h;->j()Lg8/a;

    move-result-object v1

    sget-object v2, Lg8/a;->o:Lg8/a;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lx4/y;->s()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {}, Lw5/f;->p()Lw5/f;

    move-result-object v1

    invoke-virtual {v1}, Lw5/f;->M()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lw5/f;->G()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_4

    :cond_3
    move v0, v3

    :cond_4
    return v0

    :cond_5
    return v3

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "toolBoxFeatureSupport check fail : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BeautyService"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private k0()V
    .locals 0
    return-void
.end method

.method private l0()V
    .locals 2

    invoke-static {}, Lcom/miui/gamebooster/mutiwindow/b;->d()Lcom/miui/gamebooster/mutiwindow/b;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/beauty/BeautyService;->F:Lcom/miui/gamebooster/mutiwindow/b$b;

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/mutiwindow/b;->g(Lcom/miui/gamebooster/mutiwindow/b$b;)V

    return-void
.end method

.method private m0()V
    .locals 8

    const-string v0, "BeautyService"

    iget-boolean v1, p0, Lcom/miui/gamebooster/beauty/BeautyService;->A:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v1, "android.app.ActivityTaskManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getService"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1, v2, v5, v4}, Lbh/f;->h(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "unregisterTaskStackListener"

    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/Class;

    const-string v7, "android.app.ITaskStackListener"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v6, v3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/miui/gamebooster/beauty/BeautyService;->I:Landroid/app/TaskStackListener;

    aput-object v7, v4, v3

    invoke-static {v1, v5, v2, v6, v4}, Lbh/f;->e(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    iput-boolean v3, p0, Lcom/miui/gamebooster/beauty/BeautyService;->A:Z

    const-string v1, "unRegisterTaskChangeList"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterTaskChangeListener exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private n0()V
    .locals 2

    :try_start_0
    invoke-static {p0}, Lr0/a;->b(Landroid/content/Context;)Lr0/a;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/beauty/BeautyService;->D:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lr0/a;->e(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static synthetic o(Lcom/miui/gamebooster/beauty/BeautyService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/beauty/BeautyService;->V()V

    return-void
.end method

.method private o0()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/miui/gamebooster/beauty/BeautyService;->E:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static synthetic p(Lcom/miui/gamebooster/beauty/BeautyService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/beauty/BeautyService;->W()V

    return-void
.end method

.method private p0()V
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, Lcom/miui/gamebooster/beauty/BeautyService;->O(IZ)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lc7/c;->n(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateForegroundInfo new = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", old Pkg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/gamebooster/beauty/BeautyService;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", old ClsName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/gamebooster/beauty/BeautyService;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BeautyService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gamebooster/beauty/BeautyService;->l:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/beauty/BeautyService;->m:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method static synthetic q(Lcom/miui/gamebooster/beauty/BeautyService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/beauty/BeautyService;->q0()V

    return-void
.end method

.method private q0()V
    .locals 2

    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object v0

    new-instance v1, Lw5/g;

    invoke-direct {v1, p0}, Lw5/g;-><init>(Lcom/miui/gamebooster/beauty/BeautyService;)V

    invoke-virtual {v0, v1}, Lef/z;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic r(Lcom/miui/gamebooster/beauty/BeautyService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/beauty/BeautyService;->p:Z

    return p1
.end method

.method static synthetic s(Lcom/miui/gamebooster/beauty/BeautyService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/gamebooster/beauty/BeautyService;->B:Z

    return p0
.end method

.method static synthetic t(Lcom/miui/gamebooster/beauty/BeautyService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/beauty/BeautyService;->B:Z

    return p1
.end method

.method static synthetic u(Lcom/miui/gamebooster/beauty/BeautyService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/beauty/BeautyService;->c0()V

    return-void
.end method

.method static synthetic v(Lcom/miui/gamebooster/beauty/BeautyService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/beauty/BeautyService;->m0()V

    return-void
.end method

.method static synthetic w(Lcom/miui/gamebooster/beauty/BeautyService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/beauty/BeautyService;->p0()V

    return-void
.end method

.method static synthetic x(Lcom/miui/gamebooster/beauty/BeautyService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/beauty/BeautyService;->d0()V

    return-void
.end method

.method static synthetic y(Lcom/miui/gamebooster/beauty/BeautyService;Lcom/miui/gamebooster/beauty/BeautyService$i;)Lcom/miui/gamebooster/beauty/BeautyService$i;
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/beauty/BeautyService;->x:Lcom/miui/gamebooster/beauty/BeautyService$i;

    return-object p1
.end method

.method static synthetic z(Lcom/miui/gamebooster/beauty/BeautyService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/beauty/BeautyService;->s:Z

    return p1
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    const-string v0, "=== BeautyService info ==="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gamebooster/beauty/BeautyService;->L(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method protected e()Lcom/miui/gamebooster/mutiwindow/b$b;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public f0()V
    .locals 1

    :try_start_0
    iget-boolean v0, p0, Lcom/miui/gamebooster/beauty/BeautyService;->s:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gamebooster/beauty/BeautyService;->s:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gamebooster/beauty/BeautyService;->u:Lcom/miui/gamebooster/service/IGameBoosterWindow;

    iget-object v0, p0, Lcom/miui/gamebooster/beauty/BeautyService;->t:Lcom/miui/gamebooster/beauty/BeautyService$h;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method protected k()V
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, Lcom/miui/gamebooster/beauty/BeautyService;->O(IZ)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/beauty/BeautyService;->G:Lcom/gzy/redmiport/compat/process/IActivityChangeListener$Stub;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lc7/c;->n(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, p0, Lcom/miui/gamebooster/beauty/BeautyService;->G:Lcom/gzy/redmiport/compat/process/IActivityChangeListener$Stub;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-interface {v1, v0, v0}, Lcom/gzy/redmiport/compat/process/IActivityChangeListener;->onActivityChanged(Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatch running info fail : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BeautyService"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method protected m()Z
    .locals 1

    invoke-static {}, Lx4/y;->g()Z

    move-result v0

    return v0
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

    invoke-super {p0}, Lcom/miui/gamebooster/service/u;->onCreate()V

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/gamebooster/beauty/BeautyService;->n:Landroid/os/Handler;

    invoke-static {}, Lcom/miui/gamebooster/service/y;->b()Lcom/miui/gamebooster/service/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gamebooster/service/y;->a()Landroid/os/HandlerThread;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/beauty/BeautyService;->q:Landroid/os/HandlerThread;

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/gamebooster/beauty/BeautyService;->q:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/gamebooster/beauty/BeautyService;->o:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/miui/gamebooster/beauty/BeautyService;->P()V

    invoke-static {}, Lw5/f;->p()Lw5/f;

    move-result-object v0

    invoke-virtual {v0}, Lw5/f;->e()V

    invoke-static {}, Lw5/f;->p()Lw5/f;

    move-result-object v0

    invoke-virtual {v0}, Lw5/f;->K0()V

    invoke-static {}, Lw5/f;->F0()V

    invoke-direct {p0}, Lcom/miui/gamebooster/beauty/BeautyService;->a0()V

    invoke-direct {p0}, Lcom/miui/gamebooster/beauty/BeautyService;->Y()V

    invoke-direct {p0}, Lcom/miui/gamebooster/beauty/BeautyService;->b0()V

    invoke-direct {p0}, Lcom/miui/gamebooster/beauty/BeautyService;->Z()V

    invoke-static {}, Lx5/p;->r0()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gamebooster/beauty/BeautyService;->v:Z

    invoke-static {}, La8/s1;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gamebooster/beauty/BeautyService;->B:Z

    invoke-static {p0}, Lx4/n1;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lcom/miui/gamebooster/beauty/BeautyService;->C:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate: Service{ BeautyService , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BeautyService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/miui/gamebooster/service/u;->onDestroy()V

    invoke-direct {p0}, Lcom/miui/gamebooster/beauty/BeautyService;->e0()V

    invoke-virtual {p0}, Lcom/miui/gamebooster/beauty/BeautyService;->f0()V

    invoke-direct {p0}, Lcom/miui/gamebooster/beauty/BeautyService;->l0()V

    invoke-direct {p0}, Lcom/miui/gamebooster/beauty/BeautyService;->k0()V

    invoke-direct {p0}, Lcom/miui/gamebooster/beauty/BeautyService;->n0()V

    invoke-direct {p0}, Lcom/miui/gamebooster/beauty/BeautyService;->o0()V

    invoke-static {}, Lw5/f;->k0()V

    invoke-direct {p0}, Lcom/miui/gamebooster/beauty/BeautyService;->m0()V

    const-string v0, "BeautyService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

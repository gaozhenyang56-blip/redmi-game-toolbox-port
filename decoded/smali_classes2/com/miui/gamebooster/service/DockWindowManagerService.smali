.class public Lcom/miui/gamebooster/service/DockWindowManagerService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gamebooster/service/DockWindowManagerService$a0;,
        Lcom/miui/gamebooster/service/DockWindowManagerService$GameBoosterWindowBinder;
    }
.end annotation


# static fields
.field private static Z:Landroid/os/Handler;


# instance fields
.field private A:Lcom/miui/gamebooster/service/DockWindowManagerService$a0;

.field private final B:Ljava/lang/Runnable;

.field private final C:Ljava/lang/Runnable;

.field private final D:Ljava/lang/Runnable;

.field private final E:Ljava/lang/Runnable;

.field private final F:Ljava/lang/Runnable;

.field private final G:Ljava/lang/Runnable;

.field private final H:Ljava/lang/Runnable;

.field private final I:Ljava/lang/Runnable;

.field private final J:Ljava/lang/Runnable;

.field private final K:Ljava/lang/Runnable;

.field private final L:Landroid/content/BroadcastReceiver;

.field private final M:Landroid/content/BroadcastReceiver;

.field private N:Lcom/xiaomi/migameservice/IGameServiceCallback$Stub;

.field private final O:Landroid/content/ServiceConnection;

.field private P:Lcom/xiaomi/migameservice/IGameCenterInterface;

.field private final Q:Landroid/content/BroadcastReceiver;

.field private final R:Landroid/content/BroadcastReceiver;

.field private S:Landroid/content/BroadcastReceiver;

.field private final T:Landroid/content/BroadcastReceiver;

.field U:Lo4/a$a;

.field private V:Z

.field private final W:Lcom/gzy/redmiport/compat/process/IActivityChangeListener$Stub;

.field X:Landroid/database/ContentObserver;

.field private Y:Ljava/lang/Runnable;

.field private a:Lcom/miui/gamebooster/service/DockWindowManagerService$GameBoosterWindowBinder;

.field private b:Ls8/h;

.field public c:Z

.field public d:Z

.field private e:Landroid/os/Handler;

.field private f:Lo7/a;

.field private g:Lcom/miui/gamebooster/service/IGameBooster;

.field protected h:Ljava/lang/String;

.field protected i:I

.field private j:Z

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:Z

.field private p:Z

.field private q:Z

.field public r:Z

.field public s:Z

.field private t:Z

.field public final u:Z

.field private final w:Z

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/miui/gamebooster/service/DockWindowManagerService$v;

    invoke-direct {v2}, Lcom/miui/gamebooster/service/DockWindowManagerService$v;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v0, Lcom/miui/gamebooster/service/DockWindowManagerService;->Z:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->j:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->k:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->q:Z

    iput-boolean v1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->r:Z

    iput-boolean v1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->s:Z

    invoke-static {}, Lc5/a;->a()Z

    move-result v2

    iput-boolean v2, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->u:Z

    invoke-static {}, La8/z;->d()Z

    move-result v2

    iput-boolean v2, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->w:Z

    iput-boolean v1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->x:Z

    iput-boolean v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->y:Z

    new-instance v0, Lcom/miui/gamebooster/service/DockWindowManagerService$k;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/service/DockWindowManagerService$k;-><init>(Lcom/miui/gamebooster/service/DockWindowManagerService;)V

    iput-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->B:Ljava/lang/Runnable;

    new-instance v0, Lcom/miui/gamebooster/service/DockWindowManagerService$s;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/service/DockWindowManagerService$s;-><init>(Lcom/miui/gamebooster/service/DockWindowManagerService;)V

    iput-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->C:Ljava/lang/Runnable;

    new-instance v0, Lcom/miui/gamebooster/service/DockWindowManagerService$t;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/service/DockWindowManagerService$t;-><init>(Lcom/miui/gamebooster/service/DockWindowManagerService;)V

    iput-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->D:Ljava/lang/Runnable;

    new-instance v0, Lcom/miui/gamebooster/service/DockWindowManagerService$u;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/service/DockWindowManagerService$u;-><init>(Lcom/miui/gamebooster/service/DockWindowManagerService;)V

    iput-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->E:Ljava/lang/Runnable;

    new-instance v0, Lcom/miui/gamebooster/service/DockWindowManagerService$w;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/service/DockWindowManagerService$w;-><init>(Lcom/miui/gamebooster/service/DockWindowManagerService;)V

    iput-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->F:Ljava/lang/Runnable;

    new-instance v0, Lcom/miui/gamebooster/service/DockWindowManagerService$x;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/service/DockWindowManagerService$x;-><init>(Lcom/miui/gamebooster/service/DockWindowManagerService;)V

    iput-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->G:Ljava/lang/Runnable;

    new-instance v0, Lcom/miui/gamebooster/service/DockWindowManagerService$y;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/service/DockWindowManagerService$y;-><init>(Lcom/miui/gamebooster/service/DockWindowManagerService;)V

    iput-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->H:Ljava/lang/Runnable;

    new-instance v0, Lcom/miui/gamebooster/service/DockWindowManagerService$z;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/service/DockWindowManagerService$z;-><init>(Lcom/miui/gamebooster/service/DockWindowManagerService;)V

    iput-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->I:Ljava/lang/Runnable;

    new-instance v0, Lcom/miui/gamebooster/service/DockWindowManagerService$a;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/service/DockWindowManagerService$a;-><init>(Lcom/miui/gamebooster/service/DockWindowManagerService;)V

    iput-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->J:Ljava/lang/Runnable;

    new-instance v0, Lcom/miui/gamebooster/service/DockWindowManagerService$b;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/service/DockWindowManagerService$b;-><init>(Lcom/miui/gamebooster/service/DockWindowManagerService;)V

    iput-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->K:Ljava/lang/Runnable;

    new-instance v0, Lcom/miui/gamebooster/service/DockWindowManagerService$c;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/service/DockWindowManagerService$c;-><init>(Lcom/miui/gamebooster/service/DockWindowManagerService;)V

    iput-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->L:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/miui/gamebooster/service/DockWindowManagerService$d;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/service/DockWindowManagerService$d;-><init>(Lcom/miui/gamebooster/service/DockWindowManagerService;)V

    iput-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->M:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/miui/gamebooster/service/DockWindowManagerService$e;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/service/DockWindowManagerService$e;-><init>(Lcom/miui/gamebooster/service/DockWindowManagerService;)V

    iput-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->N:Lcom/xiaomi/migameservice/IGameServiceCallback$Stub;

    new-instance v0, Lcom/miui/gamebooster/service/DockWindowManagerService$f;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/service/DockWindowManagerService$f;-><init>(Lcom/miui/gamebooster/service/DockWindowManagerService;)V

    iput-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->O:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/miui/gamebooster/service/DockWindowManagerService$h;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/service/DockWindowManagerService$h;-><init>(Lcom/miui/gamebooster/service/DockWindowManagerService;)V

    iput-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->Q:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/miui/gamebooster/service/DockWindowManagerService$i;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/service/DockWindowManagerService$i;-><init>(Lcom/miui/gamebooster/service/DockWindowManagerService;)V

    iput-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->R:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/miui/gamebooster/service/DockWindowManagerService$j;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/service/DockWindowManagerService$j;-><init>(Lcom/miui/gamebooster/service/DockWindowManagerService;)V

    iput-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->S:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/miui/gamebooster/service/DockWindowManagerService$l;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/service/DockWindowManagerService$l;-><init>(Lcom/miui/gamebooster/service/DockWindowManagerService;)V

    iput-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->T:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/miui/gamebooster/service/DockWindowManagerService$m;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/service/DockWindowManagerService$m;-><init>(Lcom/miui/gamebooster/service/DockWindowManagerService;)V

    iput-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->U:Lo4/a$a;

    iput-boolean v1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->V:Z

    new-instance v0, Lcom/miui/gamebooster/service/DockWindowManagerService$n;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/service/DockWindowManagerService$n;-><init>(Lcom/miui/gamebooster/service/DockWindowManagerService;)V

    iput-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->W:Lcom/gzy/redmiport/compat/process/IActivityChangeListener$Stub;

    new-instance v0, Lcom/miui/gamebooster/service/DockWindowManagerService$p;

    iget-object v1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->e:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/miui/gamebooster/service/DockWindowManagerService$p;-><init>(Lcom/miui/gamebooster/service/DockWindowManagerService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->X:Landroid/database/ContentObserver;

    new-instance v0, Lcom/miui/gamebooster/service/DockWindowManagerService$q;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/service/DockWindowManagerService$q;-><init>(Lcom/miui/gamebooster/service/DockWindowManagerService;)V

    iput-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->Y:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic A(Lcom/miui/gamebooster/service/DockWindowManagerService;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/service/DockWindowManagerService;->s0(Landroid/content/Intent;)V

    return-void
.end method

.method private A0()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->b:Ls8/h;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private A1()V
    .locals 0
    return-void
.end method

.method static synthetic B(Lcom/miui/gamebooster/service/DockWindowManagerService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/service/DockWindowManagerService;->G1(I)V

    return-void
.end method

.method private B1()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->S:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method static synthetic C(Lcom/miui/gamebooster/service/DockWindowManagerService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/service/DockWindowManagerService;->u0(I)V

    return-void
.end method

.method private C1()V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->w:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->X:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method static synthetic D(Lcom/miui/gamebooster/service/DockWindowManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->t:Z

    return p1
.end method

.method private D1()V
    .locals 4

    const-string v0, "DockWindowManagerService"

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterBroadcast:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->c:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->c:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->p:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->T:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->p:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregister error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic E(Lcom/miui/gamebooster/service/DockWindowManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->r1()V

    return-void
.end method

.method private E0()Z
    .locals 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private E1()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->Q:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->R:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method static synthetic F(Lcom/miui/gamebooster/service/DockWindowManagerService;Landroid/content/Context;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gamebooster/service/DockWindowManagerService;->l1(Landroid/content/Context;IZ)V

    return-void
.end method

.method private synthetic F0(Z)V
    .locals 1

    invoke-static {}, La8/u0;->l()V

    if-eqz p1, :cond_0

    invoke-static {}, Lx4/y;->s()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lc7/c;->q()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->W0()V

    :cond_0
    invoke-static {}, Lh7/g;->l()Lh7/g;

    move-result-object p1

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-virtual {p1, v0}, Lh7/g;->k(Landroid/content/Context;)V

    return-void
.end method

.method private F1()V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->e:Landroid/os/Handler;

    new-instance v1, Lcom/miui/gamebooster/service/m;

    invoke-direct {v1, p0}, Lcom/miui/gamebooster/service/m;-><init>(Lcom/miui/gamebooster/service/DockWindowManagerService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic G(Lcom/miui/gamebooster/service/DockWindowManagerService;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->I:Ljava/lang/Runnable;

    return-object p0
.end method

.method private static synthetic G0()V
    .locals 3

    invoke-static {}, Lcom/miui/bubbles/utils/TipsManager;->getInstance()Lcom/miui/bubbles/utils/TipsManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/miui/bubbles/utils/TipsManager;->showBarrageTipsIfNeed(Ljava/lang/String;I)V

    return-void
.end method

.method private G1(I)V
    .locals 4

    invoke-direct {p0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->A0()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSidebarPositionIfNeed keyboardHeight = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DockWindowManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-static {p0}, La8/k2;->L(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->b:Ls8/h;

    invoke-virtual {v0}, Ls8/h;->Z()Landroid/view/WindowManager;

    move-result-object v0

    invoke-static {v0}, La8/k2;->k(Landroid/view/WindowManager;)I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f071a83

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070ff1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    sub-int/2addr v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSidebarPositionIfNeed: keyboardHeight = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " availableY = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->b:Ls8/h;

    invoke-virtual {p1}, Ls8/h;->Y()I

    move-result p1

    if-ge v0, p1, :cond_3

    iget-object p1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->b:Ls8/h;

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->b:Ls8/h;

    invoke-virtual {p1}, Ls8/h;->Y()I

    move-result v0

    :goto_1
    invoke-virtual {p1, v0}, Ls8/h;->s0(I)V

    :cond_3
    return-void
.end method

.method static synthetic H(Lcom/miui/gamebooster/service/DockWindowManagerService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->j:Z

    return p0
.end method

.method private synthetic H0()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->A0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->b:Ls8/h;

    invoke-virtual {v0}, Ls8/h;->w0()V

    :cond_0
    return-void
.end method

.method static synthetic I(Lcom/miui/gamebooster/service/DockWindowManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->j:Z

    return p1
.end method

.method private synthetic I0(J)V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->h:Ljava/lang/String;

    invoke-static {p0, v0}, La8/x0;->g(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->V:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->A0()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    const-wide/16 p1, 0x320

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    iget-object p1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->b:Ls8/h;

    invoke-virtual {p1}, Ls8/h;->w0()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->e:Landroid/os/Handler;

    new-instance v1, Lcom/miui/gamebooster/service/d;

    invoke-direct {v1, p0}, Lcom/miui/gamebooster/service/d;-><init>(Lcom/miui/gamebooster/service/DockWindowManagerService;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    invoke-static {}, Lk5/a;->k()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {p0}, La8/k2;->B(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->b:Ls8/h;

    invoke-virtual {p1}, Ls8/h;->k0()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    invoke-static {p1}, Lk5/a;->A(I)V

    :cond_1
    const-string p1, "key_booster_type"

    const-string p2, "Casual Turbo"

    invoke-static {p1, p2}, Lr4/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method static synthetic J(Lcom/miui/gamebooster/service/DockWindowManagerService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->q:Z

    return p0
.end method

.method private synthetic J0()V
    .locals 1

    invoke-static {}, Lf5/v;->d()Lf5/v;

    move-result-object v0

    invoke-virtual {v0}, Lf5/v;->m()V

    invoke-static {p0}, Lm5/f;->e(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic K(Lcom/miui/gamebooster/service/DockWindowManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->q:Z

    return p1
.end method

.method private static synthetic K0()V
    .locals 1

    invoke-static {}, Lj8/k;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Li8/c;->w()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    invoke-static {v0}, La8/t;->A(I)V

    return-void
.end method

.method static synthetic L(Lcom/miui/gamebooster/service/DockWindowManagerService;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/gamebooster/service/DockWindowManagerService;->V0(Ljava/lang/String;I)V

    return-void
.end method

.method private synthetic L0(Landroid/content/Context;ZZ)V
    .locals 0

    if-eqz p2, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    invoke-direct {p0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->E0()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->e:Landroid/os/Handler;

    invoke-static {p1, p2}, Ls8/u;->D(Landroid/content/Context;Landroid/os/Handler;)Ls8/u;

    move-result-object p1

    invoke-virtual {p1}, Ls8/u;->Z()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->r:Z

    :cond_1
    return-void
.end method

.method static synthetic M(Lcom/miui/gamebooster/service/DockWindowManagerService;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->e:Landroid/os/Handler;

    return-object p0
.end method

.method private synthetic M0()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->A0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->b:Ls8/h;

    invoke-virtual {v0}, Ls8/h;->i1()V

    :cond_0
    return-void
.end method

.method static synthetic N(Lcom/miui/gamebooster/service/DockWindowManagerService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->V:Z

    return p0
.end method

.method private synthetic N0(Landroid/content/Context;)V
    .locals 5

    const-string v0, "DockWindowManagerService"

    sget-boolean v1, Lsl/a;->a:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->f:Lo7/a;

    invoke-virtual {v1}, Lo7/a;->f()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->h:Ljava/lang/String;

    iget v2, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->i:I

    invoke-static {v1, v2}, Lw6/i;->b(Ljava/lang/String;I)Lx6/b;

    move-result-object v1

    invoke-virtual {v1}, Lx6/b;->c()Z

    move-result v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->h:Ljava/lang/String;

    invoke-static {p1, v3, v1}, Le7/b;->h(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-static {}, La8/y0;->f()Z

    move-result v3

    if-nez v3, :cond_1

    move v2, v4

    :cond_1
    iget-object v3, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->h:Ljava/lang/String;

    invoke-static {v3, v1}, Lv8/c;->h(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p1}, La8/i2;->c(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v4, v2

    :goto_0
    if-eqz v4, :cond_3

    new-instance p1, Lcom/miui/gamebooster/service/DockWindowManagerService$a0;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lcom/miui/gamebooster/service/DockWindowManagerService$a0;-><init>(Lcom/miui/gamebooster/service/DockWindowManagerService;Lcom/miui/gamebooster/service/DockWindowManagerService$k;)V

    iput-object p1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->A:Lcom/miui/gamebooster/service/DockWindowManagerService$a0;

    invoke-static {p1}, Lj6/a;->b(Lj6/b;)Ljava/lang/ref/WeakReference;

    const-string p1, "register BR for gameService"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerGameServiceStateChange fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-void
.end method

.method static synthetic O(Lcom/miui/gamebooster/service/DockWindowManagerService;)Lcom/miui/gamebooster/service/IGameBooster;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->g:Lcom/miui/gamebooster/service/IGameBooster;

    return-object p0
.end method

.method private synthetic O0()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->A0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->b:Ls8/h;

    invoke-virtual {v0}, Ls8/h;->u1()V

    :cond_0
    return-void
.end method

.method static synthetic P(Lcom/miui/gamebooster/service/DockWindowManagerService;Lcom/miui/gamebooster/service/IGameBooster;)Lcom/miui/gamebooster/service/IGameBooster;
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->g:Lcom/miui/gamebooster/service/IGameBooster;

    return-object p1
.end method

.method private P0(Ljava/lang/String;)V
    .locals 6

    :try_start_0
    const-class v0, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;

    sget-object v1, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;->INSTANCE:Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;

    const-string v1, "enterGame"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "DockWindowManagerService"

    const-string v1, "noticeCnBuryPointEnterGame failed"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method static synthetic Q(Lcom/miui/gamebooster/service/DockWindowManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->X0()V

    return-void
.end method

.method private Q0(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lz5/a;->n()V

    :goto_0
    return-void
.end method

.method static synthetic R(Lcom/miui/gamebooster/service/DockWindowManagerService;IZLjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/miui/gamebooster/service/DockWindowManagerService;->i0(IZLjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic S(Lcom/miui/gamebooster/service/DockWindowManagerService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->y:Z

    return p0
.end method

.method static synthetic T(Lcom/miui/gamebooster/service/DockWindowManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->y:Z

    return p1
.end method

.method private T0()V
    .locals 3

    const-string v0, "DockWindowManagerService"

    const-string v1, "openMiGameService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->m0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_gb_record_ai"

    invoke-static {v1, v0}, La8/i2;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->m0()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_gb_record_manual"

    invoke-static {v2, v1}, La8/i2;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->R0()V

    :goto_0
    invoke-virtual {p0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->S0()V

    goto :goto_2

    :cond_0
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->f0()V

    invoke-virtual {p0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->e0()V

    invoke-direct {p0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->g0()V

    goto :goto_2

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->R0()V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->e0()V

    :goto_1
    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->f0()V

    :goto_2
    return-void
.end method

.method static synthetic U(Lcom/miui/gamebooster/service/DockWindowManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->k1()V

    return-void
.end method

.method static synthetic V(Lcom/miui/gamebooster/service/DockWindowManagerService;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/service/DockWindowManagerService;->c1(Landroid/content/Context;)V

    return-void
.end method

.method private V0(Ljava/lang/String;I)V
    .locals 4

    const-string v0, "android.media.action.HDMI_AUDIO_PLUG"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne p2, v3, :cond_0

    move p2, v3

    goto :goto_0

    :cond_0
    move p2, v2

    :goto_0
    iput-boolean p2, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->z:Z

    :cond_1
    const-string p2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    :cond_2
    invoke-direct {p0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->A0()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->b:Ls8/h;

    invoke-static {}, Lj8/h;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->z:Z

    if-eqz p1, :cond_3

    move v2, v3

    :cond_3
    invoke-virtual {p2, v2}, Ls8/h;->y0(Z)V

    :cond_4
    iget-object p1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->f:Lo7/a;

    invoke-virtual {p1}, Lo7/a;->j()Z

    move-result p1

    if-eqz p1, :cond_5

    new-instance p1, Lcom/miui/gamebooster/service/i;

    invoke-direct {p1}, Lcom/miui/gamebooster/service/i;-><init>()V

    invoke-static {p1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    :cond_5
    return-void
.end method

.method static synthetic W(Lcom/miui/gamebooster/service/DockWindowManagerService;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->J:Ljava/lang/Runnable;

    return-object p0
.end method

.method private W0()V
    .locals 2

    const-string v0, "DockWindowManagerService"

    const-string v1, "processShowWildModeToast: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lme/w;->P(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lh7/g;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lsl/a;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->e:Landroid/os/Handler;

    invoke-static {p0, v0}, Ls8/u;->D(Landroid/content/Context;Landroid/os/Handler;)Ls8/u;

    move-result-object v0

    invoke-virtual {v0}, Ls8/u;->Z()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->r:Z

    goto :goto_0

    :cond_0
    invoke-static {}, Lh7/g;->l()Lh7/g;

    move-result-object v0

    new-instance v1, Lcom/miui/gamebooster/service/b;

    invoke-direct {v1, p0, p0}, Lcom/miui/gamebooster/service/b;-><init>(Lcom/miui/gamebooster/service/DockWindowManagerService;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lh7/g;->m(Lh7/g$b;)V

    :goto_0
    return-void
.end method

.method static synthetic X(Lcom/miui/gamebooster/service/DockWindowManagerService;)Ls8/h;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->b:Ls8/h;

    return-object p0
.end method

.method private X0()V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->c:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->A0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->b:Ls8/h;

    invoke-virtual {v0}, Ls8/h;->H0()V

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->b:Ls8/h;

    invoke-virtual {v0}, Ls8/h;->J0()V

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->b:Ls8/h;

    invoke-virtual {v0}, Ls8/h;->i1()V

    invoke-static {}, Lve/g;->m()Lve/g;

    move-result-object v0

    invoke-virtual {v0}, Lve/g;->i()V

    :cond_0
    return-void
.end method

.method static synthetic Y(Lcom/miui/gamebooster/service/DockWindowManagerService;)Lo7/a;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->f:Lo7/a;

    return-object p0
.end method

.method private Y0(I)V
    .locals 7

    invoke-static {p0}, La8/k2;->f(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {}, La8/k2;->A()Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDisplayChanged:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->f:Lo7/a;

    invoke-virtual {v4}, Lo7/a;->c()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\tlast_ori="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->k:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\tcur_ori="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\tdpi="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\tuimode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DockWindowManagerService"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->k:I

    if-ne v3, v0, :cond_0

    iget v3, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->m:I

    if-ne v3, v1, :cond_0

    iget v3, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->n:I

    if-ne v3, p1, :cond_0

    iget-boolean v3, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->o:Z

    if-eq v3, v2, :cond_7

    :cond_0
    invoke-direct {p0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->A0()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->b:Ls8/h;

    invoke-virtual {v3}, Ls8/h;->H0()V

    iget-object v3, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->b:Ls8/h;

    invoke-virtual {v3}, Ls8/h;->J0()V

    :cond_1
    iget-object v3, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->e:Landroid/os/Handler;

    new-instance v4, Lcom/miui/gamebooster/service/h;

    invoke-direct {v4, p0}, Lcom/miui/gamebooster/service/h;-><init>(Lcom/miui/gamebooster/service/DockWindowManagerService;)V

    const-wide/16 v5, 0x320

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v3, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->b:Ls8/h;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ls8/h;->F()V

    :cond_2
    iget-object v3, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->f:Lo7/a;

    invoke-virtual {v3}, Lo7/a;->f()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {}, Lve/g;->m()Lve/g;

    move-result-object v3

    invoke-virtual {v3}, Lve/g;->i()V

    invoke-static {}, Lp7/a;->b()Lp7/a;

    move-result-object v3

    invoke-virtual {v3}, Lp7/a;->e()Z

    move-result v3

    if-eqz v3, :cond_6

    const/16 v3, 0x5a

    if-eq v0, v3, :cond_4

    const/16 v3, 0x10e

    if-ne v0, v3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->e:Landroid/os/Handler;

    iget-object v4, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->H:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v3, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->e:Landroid/os/Handler;

    iget-object v4, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->H:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_5
    iget-object v3, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->e:Landroid/os/Handler;

    iget-object v4, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->H:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Lp7/a;->b()Lp7/a;

    move-result-object v3

    invoke-virtual {v3}, Lp7/a;->g()V

    :cond_6
    :goto_2
    iput v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->k:I

    iput v1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->m:I

    iput-boolean v2, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->o:Z

    iput p1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->n:I

    :cond_7
    return-void
.end method

.method static synthetic Z(Lcom/miui/gamebooster/service/DockWindowManagerService;)Z
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->y0()Z

    move-result p0

    return p0
.end method

.method private Z0()V
    .locals 0
    return-void
.end method

.method public static synthetic a(Lcom/miui/gamebooster/service/DockWindowManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->O0()V

    return-void
.end method

.method static synthetic a0(Lcom/miui/gamebooster/service/DockWindowManagerService;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->E:Ljava/lang/Runnable;

    return-object p0
.end method

.method private a1()V
    .locals 4

    iget-boolean v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->w:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "swipe_up_is_showing"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->X:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public static synthetic b()V
    .locals 0

    invoke-static {}, Lcom/miui/gamebooster/service/DockWindowManagerService;->K0()V

    return-void
.end method

.method static synthetic b0(Lcom/miui/gamebooster/service/DockWindowManagerService;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->F:Ljava/lang/Runnable;

    return-object p0
.end method

.method private b1()V
    .locals 12

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.miui.dock.DOCK_MODE_CHANGED"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.miui.gamebooster.PPRIVACYAPP"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.miui.gamebooster.UNINSTALLAPP"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.android.systemui.fsgesture"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V



    const-string v0, "com.miui.dock.SHOW_DOCK_TIPS"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->R:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->e:Landroid/os/Handler;

    const-string v3, "com.miui.dock.permission.DOCK_EVENT"

    const/4 v5, 0x2

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lx4/v;->n(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    return-void
.end method

.method public static synthetic c(Lcom/miui/gamebooster/service/DockWindowManagerService;Landroid/content/Context;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gamebooster/service/DockWindowManagerService;->L0(Landroid/content/Context;ZZ)V

    return-void
.end method

.method static synthetic c0(Lcom/miui/gamebooster/service/DockWindowManagerService;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->D:Ljava/lang/Runnable;

    return-object p0
.end method

.method private c1(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object v0

    new-instance v1, Lcom/miui/gamebooster/service/g;

    invoke-direct {v1, p0, p1}, Lcom/miui/gamebooster/service/g;-><init>(Lcom/miui/gamebooster/service/DockWindowManagerService;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lef/z;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic d(Lcom/miui/gamebooster/service/DockWindowManagerService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/service/DockWindowManagerService;->F0(Z)V

    return-void
.end method

.method private d0()V
    .locals 4

    const-string v0, "DockWindowManagerService"

    iget-object v1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->h:Ljava/lang/String;

    const-string v2, "key_gb_record_ai"

    invoke-static {v2, v1}, La8/i2;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    iget-object v2, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->h:Ljava/lang/String;

    const-string v3, "key_gb_record_manual"

    invoke-static {v3, v2}, La8/i2;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->T0()V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.xiaomi.migameservice"

    invoke-static {v1, v2}, Lcom/miui/networkassistant/utils/PackageUtil;->getUidByPackageName(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_1

    invoke-direct {p0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->T0()V

    return-void

    :cond_1
    :try_start_0
    const-string v1, "check MiGame"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->P:Lcom/xiaomi/migameservice/IGameCenterInterface;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/xiaomi/migameservice/IGameCenterInterface;->T4()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "checkMiGamePermission error"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    return-void
.end method

.method private d1()V
    .locals 8

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iget-object v1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->f:Lo7/a;

    invoke-virtual {v1}, Lo7/a;->j()Z

    move-result v1

    const-string v2, "android.media.action.HDMI_AUDIO_PLUG"

    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    const-string v4, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    const-string v5, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    const-string v6, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    const-string v7, "android.intent.action.HEADSET_PLUG"

    if-eqz v1, :cond_0

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "miui.intent.action.ACTION_SYSTEM_UI_DOLBY_EFFECT_SWITCH"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "miui.intent.action.ACTION_AUDIO_EFFECT_REFRESH"

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->f:Lo7/a;

    invoke-virtual {v1}, Lo7/a;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->f:Lo7/a;

    invoke-virtual {v1}, Lo7/a;->h()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->f:Lo7/a;

    invoke-virtual {v1}, Lo7/a;->d()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.miui.FREEFORM_WINDOW_CLOSED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.miui.securitycenter.intent.action.NOTIFY_DIVING_MODE_EXCEPTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "action_toast_booster_success"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "action_toast_booster_fail"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "action_toast_common_message"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "action_toast_wonderful_moment"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "action_toast_wlan_speed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {}, La8/g0;->s()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lf6/a;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, La8/o0;->g()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "miui.intent.action.RESTORE_BRIGHTNESS"

    goto :goto_0

    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->D1()V

    iget-object v1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->T:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x2

    invoke-static {p0, v1, v0, v2}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->p:Z

    return-void
.end method

.method public static synthetic e()V
    .locals 0

    invoke-static {}, Lcom/miui/gamebooster/service/DockWindowManagerService;->G0()V

    return-void
.end method

.method private e1()V
    .locals 6

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.miui.gamebooster.PANNEL_OPEN"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->S:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->e:Landroid/os/Handler;

    const-string v3, "com.miui.gamebooster.permission.PANNEL_OPEN"

    const/4 v5, 0x2

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lx4/v;->n(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    return-void
.end method

.method public static synthetic f(Lcom/miui/gamebooster/service/DockWindowManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->r0()V

    return-void
.end method

.method private f1(Lve/d;)V
    .locals 1

    sget-object v0, Lcom/miui/gamebooster/service/DockWindowManagerService$r;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Li8/c;->f()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lve/l;->F()Lve/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lve/b;->z(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lve/k;->R()Lve/k;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lve/k;->z(Ljava/lang/String;)V

    invoke-static {}, Lve/k;->R()Lve/k;

    move-result-object p1

    invoke-virtual {p1}, Lve/k;->b0()V

    invoke-static {}, Lc9/d;->n()Lc9/d;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lc9/d;->y(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static synthetic g(Lcom/miui/gamebooster/service/DockWindowManagerService;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/service/DockWindowManagerService;->N0(Landroid/content/Context;)V

    return-void
.end method

.method private g0()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->P:Lcom/xiaomi/migameservice/IGameCenterInterface;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->O:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->P:Lcom/xiaomi/migameservice/IGameCenterInterface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "DockWindowManagerService"

    const-string v2, "release migameservice error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private g1()V
    .locals 2

    invoke-static {}, Lve/g;->m()Lve/g;

    move-result-object v0

    invoke-virtual {v0}, Lve/g;->i()V

    invoke-virtual {v0}, Lve/g;->j()V

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lve/g;->t(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic h(Lcom/miui/gamebooster/service/DockWindowManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->J0()V

    return-void
.end method

.method private h0(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    const-string p1, "DockWindowManagerService start"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "UIService info"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "isGlobalDockSupport: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->u:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "isServiceStarted: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->c:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "isColdStart: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->d:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mDockWindowType: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->f:Lo7/a;

    invoke-virtual {p3}, Lo7/a;->c()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mBoosterPkgName: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->h:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " uid: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->i:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "rotation: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->k:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " densityDpi: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->m:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " width: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->l:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string p1, "DockWindowManagerService service end"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private h1()V
    .locals 7

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, La8/g1;->n(Landroid/content/Context;)La8/g1;

    move-result-object v0

    invoke-virtual {v0}, La8/g1;->m()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, La8/g1;->t()V

    return-void

    :cond_0
    invoke-virtual {v0}, La8/g1;->m()Z

    move-result v1

    const/4 v2, 0x0

    const v3, 0x7f121bc0

    const v4, 0x7f12181d

    const/4 v5, 0x3

    if-eqz v1, :cond_2

    invoke-virtual {v0}, La8/g1;->s()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lc8/a;->b()I

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "DockWindowManagerService"

    const-string v6, "Small Window Screening do not disconnect!!!"

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->f:Lo7/a;

    invoke-virtual {v1}, Lo7/a;->c()I

    move-result v1

    if-ne v1, v5, :cond_1

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    invoke-virtual {v0, v3}, La8/g1;->k(I)V

    :goto_1
    invoke-static {v2}, Lc8/a;->c(I)V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->f:Lo7/a;

    invoke-virtual {v1}, Lo7/a;->c()I

    move-result v1

    if-ne v1, v5, :cond_3

    goto :goto_2

    :cond_3
    move v3, v4

    :goto_2
    invoke-virtual {v0, v3}, La8/g1;->l(I)V

    invoke-virtual {v0}, La8/g1;->t()V

    goto :goto_1
.end method

.method public static synthetic i(Lcom/miui/gamebooster/service/DockWindowManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->F1()V

    return-void
.end method

.method private i0(IZLjava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enterDockMode: m="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\tcurM="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->f:Lo7/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\tcs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\tp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tisStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DockWindowManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lo7/a;->g(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "enterDockMode: invalid dock mode : "

    :goto_0
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->f:Lo7/a;

    invoke-virtual {v0, p1}, Lo7/a;->i(I)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "enterDockMode: invalid mode change from "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->f:Lo7/a;

    invoke-virtual {p3}, Lo7/a;->c()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " to "

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->f:Lo7/a;

    invoke-virtual {v0}, Lo7/a;->c()I

    move-result v0

    if-ne p1, v0, :cond_2

    const-string v0, "onEnterSameDockMode"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p3, p4, p5}, Lcom/miui/gamebooster/service/DockWindowManagerService;->Q0(ILjava/lang/String;Ljava/lang/String;I)V

    :cond_2
    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->f:Lo7/a;

    invoke-virtual {v0, p1}, Lo7/a;->a(I)V

    invoke-direct {p0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->A0()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->b:Ls8/h;

    invoke-virtual {p1}, Ls8/h;->x1()V

    :cond_3
    iput-boolean p2, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->d:Z

    iput-object p3, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->h:Ljava/lang/String;

    iput p5, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->i:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->c:Z

    const/4 p5, 0x0

    iput-boolean p5, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->s:Z

    iget-object p5, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->f:Lo7/a;

    invoke-virtual {p5}, Lo7/a;->c()I

    move-result p5

    if-eq p5, p1, :cond_7

    const/4 p1, 0x3

    if-eq p5, p1, :cond_6

    const/4 p1, 0x4

    if-eq p5, p1, :cond_5

    const/4 p1, 0x5

    if-eq p5, p1, :cond_4

    goto/16 :goto_1

    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Ls8/x;->h(Landroid/content/Context;)Ls8/x;

    move-result-object p1

    const p2, 0x7f0e00b0

    invoke-virtual {p1, p2}, Ls8/x;->i(I)V

    invoke-static {}, Lx5/p;->O()Lx5/p;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->M:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p0, p2}, Lx5/p;->a1(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    invoke-static {}, Lw5/f;->p()Lw5/f;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Lw5/f;->o0(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lx5/p;->O()Lx5/p;

    move-result-object p1

    invoke-static {}, Lx5/p;->O()Lx5/p;

    move-result-object p2

    invoke-virtual {p2}, Lx5/p;->s0()Z

    move-result p2

    invoke-virtual {p1, p0, p2}, Lx5/p;->B1(Landroid/content/Context;Z)V

    invoke-static {}, La8/b0;->d()La8/b0;

    move-result-object p1

    invoke-virtual {p1}, La8/b0;->a()V

    goto/16 :goto_1

    :cond_5
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1f

    if-lt p1, p2, :cond_c

    invoke-direct {p0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->Z0()V

    goto/16 :goto_1

    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Ls8/x;->h(Landroid/content/Context;)Ls8/x;

    move-result-object p1

    const p2, 0x7f0e0535

    invoke-virtual {p1, p2}, Ls8/x;->i(I)V

    invoke-static {p0}, Lj8/s;->n(Landroid/content/Context;)V

    sget-object p1, Lve/d;->d:Lve/d;

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/service/DockWindowManagerService;->l0(Lve/d;)V

    invoke-direct {p0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->z1()V

    goto/16 :goto_1

    :cond_7
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Ls8/x;->h(Landroid/content/Context;)Ls8/x;

    move-result-object p1

    const p4, 0x7f0e020d

    invoke-virtual {p1, p4}, Ls8/x;->i(I)V

    sget-object p1, Lve/d;->c:Lve/d;

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/service/DockWindowManagerService;->l0(Lve/d;)V

    invoke-virtual {p0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->u1()V

    iget-object p1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->e:Landroid/os/Handler;

    iget-object p4, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->K:Ljava/lang/Runnable;

    const-wide/16 v0, 0x7d0

    invoke-virtual {p1, p4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-direct {p0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->x0()V

    iget-object p1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->e:Landroid/os/Handler;

    iget-object p4, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->J:Ljava/lang/Runnable;

    invoke-virtual {p1, p4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->e:Landroid/os/Handler;

    iget-object p4, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->G:Ljava/lang/Runnable;

    invoke-virtual {p1, p4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {}, Lp7/a;->b()Lp7/a;

    move-result-object p1

    invoke-virtual {p1}, Lp7/a;->e()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->e:Landroid/os/Handler;

    iget-object p4, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->H:Ljava/lang/Runnable;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_8
    invoke-direct {p0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->y1()V

    invoke-static {}, Lv8/c;->g()Lv8/c;

    move-result-object p1

    iget-object p4, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->L:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p0, p4}, Lv8/c;->i(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    invoke-static {}, Ll7/b;->b()Ll7/b;

    move-result-object p1

    invoke-virtual {p1, p0}, Ll7/b;->i(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->e:Landroid/os/Handler;

    new-instance p4, Lcom/miui/gamebooster/service/j;

    invoke-direct {p4, p0}, Lcom/miui/gamebooster/service/j;-><init>(Lcom/miui/gamebooster/service/DockWindowManagerService;)V

    invoke-virtual {p1, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {p0}, La8/i0;->c(Landroid/content/Context;)La8/i0;

    move-result-object p1

    iget-object p4, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->U:Lo4/a$a;

    invoke-virtual {p1, p4}, La8/i0;->a(Lo4/a$a;)V

    invoke-direct {p0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->A0()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->b:Ls8/h;

    invoke-virtual {p1}, Ls8/h;->F()V

    :cond_9
    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object p1

    new-instance p4, Lcom/miui/gamebooster/service/k;

    invoke-direct {p4, p0, p2}, Lcom/miui/gamebooster/service/k;-><init>(Lcom/miui/gamebooster/service/DockWindowManagerService;Z)V

    invoke-virtual {p1, p4}, Lef/z;->b(Ljava/lang/Runnable;)V

    invoke-static {}, Lh7/g;->l()Lh7/g;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->h:Ljava/lang/String;

    iget p4, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->i:I

    invoke-virtual {p1, p2, p4}, Lh7/g;->t(Ljava/lang/String;I)V

    sget-boolean p1, Ln6/a;->a:Z

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->h:Ljava/lang/String;

    invoke-static {p1}, La8/w0;->e(Ljava/lang/String;)V

    :cond_a
    iget-object p1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->e:Landroid/os/Handler;

    new-instance p2, Lcom/miui/gamebooster/service/l;

    invoke-direct {p2}, Lcom/miui/gamebooster/service/l;-><init>()V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->X()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-static {}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->w()Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->o(Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->w()Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;

    move-result-object p1

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->Y(Landroid/content/Context;)V

    :cond_b
    iget-object p1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->e:Landroid/os/Handler;

    iget-object p2, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->Y:Ljava/lang/Runnable;

    const-wide/16 p4, 0x5dc

    invoke-virtual {p1, p2, p4, p5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {}, La8/s0;->i()La8/s0;

    move-result-object p1

    invoke-virtual {p1}, La8/s0;->n()V

    invoke-direct {p0, p3}, Lcom/miui/gamebooster/service/DockWindowManagerService;->P0(Ljava/lang/String;)V

    :cond_c
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-static {p1, p2}, La8/k;->d(J)V

    iget-object p1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->e:Landroid/os/Handler;

    iget-object p2, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->B:Ljava/lang/Runnable;

    const-wide/16 p3, 0x320

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-direct {p0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->A0()Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->b:Ls8/h;

    invoke-virtual {p1}, Ls8/h;->w1()V

    :cond_d
    iget-object p1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->f:Lo7/a;

    invoke-virtual {p1}, Lo7/a;->h()Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->f:Lo7/a;

    invoke-virtual {p1}, Lo7/a;->d()Z

    move-result p1

    if-nez p1, :cond_e

    invoke-direct {p0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->w0()V

    invoke-direct {p0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->e1()V

    invoke-static {}, Lve/g;->m()Lve/g;

    move-result-object p1

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p2

    invoke-virtual {p1, p2}, Lve/g;->n(Landroid/content/Context;)V

    :cond_e
    invoke-direct {p0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->d1()V

    goto :goto_2

    :cond_f
    invoke-direct {p0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->D1()V

    :goto_2
    sget-boolean p1, Ln6/a;->a:Z

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->f:Lo7/a;

    invoke-virtual {p1}, Lo7/a;->f()Z

    move-result p1

    if-eqz p1, :cond_10

    invoke-direct {p0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->v0()V

    :cond_10
    return-void
.end method

.method public static i1(I)V
    .locals 1

    sget-object v0, Lcom/miui/gamebooster/service/DockWindowManagerService;->Z:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/gamebooster/service/DockWindowManagerService;->Z:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method public static synthetic j(Lcom/miui/gamebooster/service/DockWindowManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->M0()V

    return-void
.end method

.method private j0()V
    .locals 3

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->f:Lo7/a;

    invoke-virtual {v0}, Lo7/a;->c()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->y0()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lg8/a;->y:Lg8/a;

    invoke-direct {p0, v0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->s1(Lg8/a;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "ai_gesture_effect_detail"

    :cond_0
    return-void
.end method

.method public static synthetic k(Lcom/miui/gamebooster/service/DockWindowManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->H0()V

    return-void
.end method

.method private k1()V
    .locals 4

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->f:Lo7/a;

    invoke-virtual {v0}, Lo7/a;->c()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_3

    iget-boolean v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->x:Z

    if-eqz v0, :cond_1

    invoke-static {}, Li6/a;->h()Li6/a;

    move-result-object v0

    invoke-virtual {v0}, Li6/a;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Li6/a;->h()Li6/a;

    move-result-object v0

    invoke-virtual {v0}, Li6/a;->s()V

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Le7/b;->l(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->w1()V

    goto :goto_0

    :cond_1
    invoke-static {}, Li6/a;->h()Li6/a;

    move-result-object v0

    invoke-virtual {v0}, Li6/a;->i()Z

    move-result v0

    const-wide/16 v1, 0x7d0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->e:Landroid/os/Handler;

    iget-object v3, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->K:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->e:Landroid/os/Handler;

    iget-object v3, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->J:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->u1()V

    :cond_3
    :goto_0
    return-void
.end method

.method public static synthetic l(Lcom/miui/gamebooster/service/DockWindowManagerService;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/gamebooster/service/DockWindowManagerService;->I0(J)V

    return-void
.end method

.method private l0(Lve/d;)V
    .locals 1

    sget-object v0, Lcom/miui/gamebooster/service/DockWindowManagerService$r;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Li8/c;->f()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lve/l;->F()Lve/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lve/b;->i(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-boolean p1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p1, :cond_2

    invoke-static {}, Lm6/d;->e()Lm6/d;

    move-result-object p1

    invoke-virtual {p1}, Lm6/d;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Lve/k;->R()Lve/k;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lve/b;->i(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lve/k;->R()Lve/k;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lve/b;->i(Ljava/lang/String;)V

    invoke-static {}, Lve/k;->R()Lve/k;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lve/k;->Q(Ljava/lang/String;)V

    invoke-static {}, Lc9/d;->n()Lc9/d;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lc9/d;->j(Ljava/lang/String;)V

    :cond_3
    :goto_0
    invoke-static {}, Lcom/miui/gamebooster/utils/c;->j()Lcom/miui/gamebooster/utils/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/gamebooster/utils/c;->t()V

    return-void
.end method

.method private l1(Landroid/content/Context;IZ)V
    .locals 0

    invoke-static {p3}, Lm6/a;->W(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method static synthetic m(Lcom/miui/gamebooster/service/DockWindowManagerService;)Z
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->A0()Z

    move-result p0

    return p0
.end method

.method private m1()V
    .locals 4

    invoke-static {p0}, La8/k2;->r(Landroid/content/Context;)I

    move-result v0

    iget v1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->l:I

    if-eq v1, v0, :cond_3

    const-string v1, "DockWindowManagerService"

    const-string v2, "screen height change"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->f:Lo7/a;

    invoke-virtual {v1}, Lo7/a;->c()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->h:Ljava/lang/String;

    const-string v3, "key_gb_record_manual"

    invoke-static {v3, v1}, La8/i2;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v2}, Ll8/b;->s(Z)V

    invoke-direct {p0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->A0()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->b:Ls8/h;

    invoke-virtual {v1}, Ls8/h;->E()V

    :cond_1
    :goto_0
    invoke-static {}, Lx4/t;->r()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->X0()V

    :cond_2
    iput v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->l:I

    :cond_3
    return-void
.end method

.method static synthetic n(Lcom/miui/gamebooster/service/DockWindowManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->j0()V

    return-void
.end method

.method static synthetic o(Lcom/miui/gamebooster/service/DockWindowManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->t1()V

    return-void
.end method

.method public static o1()V
    .locals 4

    sget-object v0, Lcom/miui/gamebooster/service/DockWindowManagerService;->Z:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v1, 0x3e9

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method static synthetic p(Lcom/miui/gamebooster/service/DockWindowManagerService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->x:Z

    return p0
.end method

.method private p0()Ljava/lang/String;
    .locals 2

    const-string v0, "key_currentbooster_pkg_uid"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.tencent.tmgp.sgame"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "kpl"

    return-object v0

    :cond_0
    const-string v1, "com.tencent.tmgp.pubgmhd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "pubg"

    return-object v0

    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method public static p1(I)V
    .locals 4

    sget-object v0, Lcom/miui/gamebooster/service/DockWindowManagerService;->Z:Landroid/os/Handler;

    if-eqz v0, :cond_1

    const-wide/16 v1, 0x1f4

    const/16 v3, 0x3ea

    if-eq p0, v3, :cond_0

    const/16 v3, 0x3eb

    if-eq p0, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic q(Lcom/miui/gamebooster/service/DockWindowManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->x:Z

    return p1
.end method

.method static synthetic r(Lcom/miui/gamebooster/service/DockWindowManagerService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->z:Z

    return p0
.end method

.method private r0()V
    .locals 3

    const-string v0, "DockWindowManagerService"

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lm6/a;->e(Landroid/content/Context;)Lm6/a;

    move-result-object v1

    invoke-static {}, Lm6/a;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lm6/a;->s()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lm6/a;->a0()V

    return-void

    :cond_1
    invoke-static {}, Ld7/v;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    :try_start_0
    const-string v1, "Create game turbo shortcut when first launch."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, La8/w1;->d(Landroid/content/Context;Ljava/lang/Boolean;)V

    const/4 v1, 0x1

    invoke-static {v1}, Lm6/a;->c0(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v2, 0x0

    invoke-static {v2}, Lm6/a;->c0(Z)V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private r1()V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->c:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->A0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->b:Ls8/h;

    invoke-virtual {v0}, Ls8/h;->m1()V

    :cond_0
    return-void
.end method

.method static synthetic s(Lcom/miui/gamebooster/service/DockWindowManagerService;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->p0()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private s0(Landroid/content/Intent;)V
    .locals 2

    invoke-direct {p0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->A0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "isEnter"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->b:Ls8/h;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1, v1}, Ls8/h;->c0(ZZ)V

    :cond_0
    return-void
.end method

.method private s1(Lg8/a;)V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->c:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->A0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->b:Ls8/h;

    invoke-virtual {v0, p1}, Ls8/h;->l1(Lg8/a;)V

    :cond_0
    return-void
.end method

.method static synthetic t(Lcom/miui/gamebooster/service/DockWindowManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->T0()V

    return-void
.end method

.method private t0(Landroid/content/Intent;)V
    .locals 2

    :try_start_0
    const-string v0, "IsFinished"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    invoke-direct {p0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->A0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->b:Ls8/h;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ls8/h;->c0(ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private t1()V
    .locals 5

    invoke-static {}, Li8/c;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li8/c;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->A0()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->b:Ls8/h;

    const v2, 0x7f121b58

    const v3, 0x7f0e052a

    const-string v4, "dolby"

    invoke-virtual {v1, v2, v3, v4, v0}, Ls8/h;->V0(IILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic u(Lcom/miui/gamebooster/service/DockWindowManagerService;)Lcom/xiaomi/migameservice/IGameCenterInterface;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->P:Lcom/xiaomi/migameservice/IGameCenterInterface;

    return-object p0
.end method

.method private u0(I)V
    .locals 1

    const/16 v0, 0x64

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->b:Ls8/h;

    invoke-virtual {p1}, Ls8/h;->k1()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->b:Ls8/h;

    invoke-virtual {p1}, Ls8/h;->j1()V

    :goto_0
    return-void
.end method

.method static synthetic v(Lcom/miui/gamebooster/service/DockWindowManagerService;Lcom/xiaomi/migameservice/IGameCenterInterface;)Lcom/xiaomi/migameservice/IGameCenterInterface;
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->P:Lcom/xiaomi/migameservice/IGameCenterInterface;

    return-object p1
.end method

.method private v0()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->V:Z

    invoke-static {}, Lm6/d;->e()Lm6/d;

    move-result-object v0

    invoke-virtual {v0}, Lm6/d;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lef/x;->z()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lp4/d;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, La8/k0;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object v2

    new-instance v3, Lcom/miui/gamebooster/service/c;

    invoke-direct {v3, p0, v0, v1}, Lcom/miui/gamebooster/service/c;-><init>(Lcom/miui/gamebooster/service/DockWindowManagerService;J)V

    invoke-virtual {v2, v3}, Lef/z;->a(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private v1()V
    .locals 4

    const-string v0, "DockWindowManagerService"

    :try_start_0
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    invoke-static {v1}, Lj6/a;->d(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->A:Lcom/miui/gamebooster/service/DockWindowManagerService$a0;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->A:Lcom/miui/gamebooster/service/DockWindowManagerService$a0;

    const-string v1, "unRegisterGameServiceStateChange"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unRegisterGameServiceStateChange fail "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic w(Lcom/miui/gamebooster/service/DockWindowManagerService;)Lcom/xiaomi/migameservice/IGameServiceCallback$Stub;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->N:Lcom/xiaomi/migameservice/IGameServiceCallback$Stub;

    return-object p0
.end method

.method private w0()V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->f:Lo7/a;

    invoke-virtual {v0}, Lo7/a;->c()I

    move-result v0

    invoke-static {v0}, Lc8/a;->c(I)V

    invoke-static {}, Lc8/a;->b()I

    move-result v0

    iget-object v1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->f:Lo7/a;

    invoke-virtual {v1}, Lo7/a;->c()I

    move-result v1

    invoke-static {v1}, Lc8/b;->a(I)I

    move-result v1

    if-eqz v0, :cond_0

    if-ne v1, v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, La8/g1;->n(Landroid/content/Context;)La8/g1;

    move-result-object v0

    invoke-virtual {v0}, La8/g1;->u()Z

    :cond_0
    return-void
.end method

.method private w1()V
    .locals 3

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->P:Lcom/xiaomi/migameservice/IGameCenterInterface;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lcom/xiaomi/migameservice/IGameCenterInterface;->u1()V

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->P:Lcom/xiaomi/migameservice/IGameCenterInterface;

    invoke-interface {v0}, Lcom/xiaomi/migameservice/IGameCenterInterface;->a3()V

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->P:Lcom/xiaomi/migameservice/IGameCenterInterface;

    iget-object v1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->N:Lcom/xiaomi/migameservice/IGameServiceCallback$Stub;

    invoke-interface {v0, v1}, Lcom/xiaomi/migameservice/IGameCenterInterface;->h2(Lcom/xiaomi/migameservice/IGameServiceCallback;)Z
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
    const-string v1, "DockWindowManagerService"

    const-string v2, "stop service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-direct {p0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->g0()V

    goto :goto_2

    :goto_1
    invoke-direct {p0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->g0()V

    throw v0

    :cond_0
    :goto_2
    invoke-static {}, Ll8/b;->p()V

    return-void
.end method

.method static synthetic x(Lcom/miui/gamebooster/service/DockWindowManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->d0()V

    return-void
.end method

.method private x0()V
    .locals 4

    invoke-static {}, La8/g0;->a0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lo8/k$g;->e()V

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->e:Landroid/os/Handler;

    new-instance v1, Lcom/miui/gamebooster/service/DockWindowManagerService$o;

    invoke-direct {v1, p0}, Lcom/miui/gamebooster/service/DockWindowManagerService$o;-><init>(Lcom/miui/gamebooster/service/DockWindowManagerService;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private x1()V
    .locals 4

    const-string v0, "DockWindowManagerService"

    invoke-static {}, La8/g0;->a0()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {}, Lo8/k;->C()Lo8/k;

    move-result-object v1

    invoke-virtual {v1}, Lo8/k;->Z()V

    const-string v1, "voice service...stop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mMiuiVpnService Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic y(Lcom/miui/gamebooster/service/DockWindowManagerService;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/service/DockWindowManagerService;->t0(Landroid/content/Intent;)V

    return-void
.end method

.method private y0()Z
    .locals 4

    invoke-static {}, Lw5/f;->p()Lw5/f;

    move-result-object v0

    invoke-virtual {v0}, Lw5/f;->n()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.xiaomi.mihomemanager"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lw5/f;->p()Lw5/f;

    move-result-object v0

    invoke-virtual {v0}, Lw5/f;->k()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.xiaomi.mihomemanager.ui.SimulateVideoCallActivity"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "ai_gesture_effect_detail"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method private y1()V
    .locals 3

    invoke-static {}, Li6/a;->h()Li6/a;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Li6/a;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Li6/a;->h()Li6/a;

    move-result-object v0

    invoke-virtual {v0}, Li6/a;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->h:Ljava/lang/String;

    const-string v2, "entertainment_pkg"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "gamebox_sungiht"

    invoke-static {v1, v0}, Lcom/miui/gamebooster/utils/a$o;->c(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method static synthetic z(Lcom/miui/gamebooster/service/DockWindowManagerService;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->C:Ljava/lang/Runnable;

    return-object p0
.end method

.method private z1()V
    .locals 3

    invoke-static {}, Lj8/g;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Li8/c;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lj8/g;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Li8/c;->i()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Li8/c;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "entertainment_pkg"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "video_aipq_use"

    invoke-static {v1, v0}, Lcom/miui/gamebooster/utils/a$o;->c(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public B0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->z:Z

    return v0
.end method

.method public C0()Z
    .locals 8

    iget-boolean v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->w:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    const-string v0, "android.provider.MiuiSettings$Secure"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "getBoolean"

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/ContentResolver;

    aput-object v5, v4, v1

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x2

    aput-object v5, v4, v7

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    aput-object v5, v3, v1

    const-string v5, "swipe_up_is_showing"

    aput-object v5, v3, v6

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v5, v3, v7

    invoke-static {v0, v2, v4, v3}, Lbh/f;->h(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v2, "DockWindowManagerService"

    const-string v3, "reflect error while get miui settings secure boolean"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public D0()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->P:Lcom/xiaomi/migameservice/IGameCenterInterface;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public R0()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->P:Lcom/xiaomi/migameservice/IGameCenterInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->p0()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gamebooster/utils/a;->P(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->P:Lcom/xiaomi/migameservice/IGameCenterInterface;

    iget-object v1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->h:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/xiaomi/migameservice/IGameCenterInterface;->t1(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "DockWindowManagerService"

    const-string v2, "open ai"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public S0()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->e:Landroid/os/Handler;

    new-instance v1, Lcom/miui/gamebooster/service/DockWindowManagerService$g;

    invoke-direct {v1, p0}, Lcom/miui/gamebooster/service/DockWindowManagerService$g;-><init>(Lcom/miui/gamebooster/service/DockWindowManagerService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->P:Lcom/xiaomi/migameservice/IGameCenterInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->p0()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gamebooster/utils/a;->f0(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->P:Lcom/xiaomi/migameservice/IGameCenterInterface;

    iget-object v1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->h:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/xiaomi/migameservice/IGameCenterInterface;->e2(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "DockWindowManagerService"

    const-string v2, "open manual"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public U0()V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->D0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->d0()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->u1()V

    :goto_0
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    const-string v0, "=== DockWindowManagerService info ==="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gamebooster/service/DockWindowManagerService;->h0(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-static {}, La8/s0;->i()La8/s0;

    move-result-object p1

    invoke-virtual {p1, p2}, La8/s0;->d(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public e0()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->P:Lcom/xiaomi/migameservice/IGameCenterInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->p0()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gamebooster/utils/a;->O(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->P:Lcom/xiaomi/migameservice/IGameCenterInterface;

    invoke-interface {v0}, Lcom/xiaomi/migameservice/IGameCenterInterface;->a3()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "DockWindowManagerService"

    const-string v2, "close ai"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public f0()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->P:Lcom/xiaomi/migameservice/IGameCenterInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->p0()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gamebooster/utils/a;->e0(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->P:Lcom/xiaomi/migameservice/IGameCenterInterface;

    invoke-interface {v0}, Lcom/xiaomi/migameservice/IGameCenterInterface;->u1()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "DockWindowManagerService"

    const-string v2, "close manual"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public j1()V
    .locals 3

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->f:Lo7/a;

    invoke-virtual {v0}, Lo7/a;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->h:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-static {}, Li8/c;->f()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {p0}, La8/k2;->B(Landroid/content/Context;)Z

    move-result v1

    iget-object v2, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->f:Lo7/a;

    invoke-virtual {v2}, Lo7/a;->c()I

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/miui/gamebooster/utils/a;->d0(ZLjava/lang/String;I)V

    return-void
.end method

.method public k0(I)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exitDockMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DockWindowManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lx4/z1;->q()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-direct {p0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->A0()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->b:Ls8/h;

    invoke-virtual {v0}, Ls8/h;->H0()V

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->b:Ls8/h;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ls8/h;->c0(ZZ)V

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->f:Lo7/a;

    invoke-virtual {v0}, Lo7/a;->c()I

    move-result v0

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    if-eq v0, v2, :cond_5

    if-eq v0, v5, :cond_4

    if-eq v0, v4, :cond_3

    if-eq v0, v3, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-static {}, Lx5/p;->O()Lx5/p;

    move-result-object v0

    invoke-static {}, Lx5/p;->O()Lx5/p;

    move-result-object v6

    invoke-virtual {v6}, Lx5/p;->m0()Z

    move-result v6

    invoke-virtual {v0, p0, v6}, Lx5/p;->F(Landroid/content/Context;Z)V

    invoke-static {}, Lx5/p;->O()Lx5/p;

    move-result-object v0

    iget-object v6, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->M:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0, v6}, Lx5/p;->J1(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    invoke-direct {p0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->A0()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->b:Ls8/h;

    invoke-virtual {v0}, Ls8/h;->I()V

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ls8/x;->h(Landroid/content/Context;)Ls8/x;

    move-result-object v0

    const v6, 0x7f0e00b0

    goto :goto_0

    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1f

    if-lt v0, v6, :cond_a

    invoke-direct {p0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->A1()V

    goto/16 :goto_1

    :cond_4
    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->e:Landroid/os/Handler;

    iget-object v6, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->F:Ljava/lang/Runnable;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {p0}, Lj8/s;->c(Landroid/content/Context;)V

    sget-object v0, Lve/d;->d:Lve/d;

    invoke-direct {p0, v0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->f1(Lve/d;)V

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->e:Landroid/os/Handler;

    iget-object v6, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->I:Ljava/lang/Runnable;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    sget-object v0, Lcom/miui/gamebooster/service/DockWindowManagerService;->Z:Landroid/os/Handler;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ls8/x;->h(Landroid/content/Context;)Ls8/x;

    move-result-object v0

    const v6, 0x7f0e0535

    :goto_0
    invoke-virtual {v0, v6}, Ls8/x;->f(I)V

    goto/16 :goto_1

    :cond_5
    iget-boolean v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->r:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->e:Landroid/os/Handler;

    invoke-static {p0, v0}, Ls8/u;->D(Landroid/content/Context;Landroid/os/Handler;)Ls8/u;

    move-result-object v0

    const-string v6, "exit game mode"

    invoke-virtual {v0, v6}, Ls8/u;->W(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->r:Z

    :cond_6
    sget-object v0, Lve/d;->c:Lve/d;

    invoke-direct {p0, v0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->f1(Lve/d;)V

    invoke-direct {p0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->w1()V

    invoke-direct {p0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->x1()V

    invoke-static {}, Li6/a;->h()Li6/a;

    move-result-object v0

    invoke-virtual {v0}, Li6/a;->s()V

    invoke-static {}, Lp7/a;->b()Lp7/a;

    move-result-object v0

    invoke-virtual {v0}, Lp7/a;->f()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->e:Landroid/os/Handler;

    iget-object v6, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->H:Ljava/lang/Runnable;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Lp7/a;->b()Lp7/a;

    move-result-object v0

    invoke-virtual {v0}, Lp7/a;->g()V

    :cond_7
    invoke-static {}, Lv8/c;->g()Lv8/c;

    move-result-object v0

    iget-object v6, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->L:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0, v6}, Lv8/c;->k(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Le7/b;->l(Landroid/content/Context;)V

    invoke-static {}, Lt7/b;->d()Lt7/b;

    move-result-object v0

    invoke-virtual {v0}, Lt7/b;->q()V

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->e:Landroid/os/Handler;

    iget-object v6, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->J:Ljava/lang/Runnable;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->e:Landroid/os/Handler;

    iget-object v6, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->G:Ljava/lang/Runnable;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->e:Landroid/os/Handler;

    iget-object v6, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->K:Ljava/lang/Runnable;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-static {p0}, La8/i0;->c(Landroid/content/Context;)La8/i0;

    move-result-object v0

    invoke-virtual {v0}, La8/i0;->d()V

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->b:Ls8/h;

    invoke-virtual {v0}, Ls8/h;->D0()V

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->b:Ls8/h;

    invoke-virtual {v0}, Ls8/h;->E0()V

    invoke-static {}, Lh7/g;->l()Lh7/g;

    move-result-object v0

    invoke-virtual {v0}, Lh7/g;->s()V

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->e:Landroid/os/Handler;

    iget-object v6, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->Y:Ljava/lang/Runnable;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->v1()V

    invoke-direct {p0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->A0()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->b:Ls8/h;

    invoke-virtual {v0, v1}, Ls8/h;->A(Z)V

    :cond_8
    sget-boolean v0, Ln6/a;->a:Z

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/miui/gamebooster/guide/CasualModeGuide;->v()V

    :cond_9
    invoke-static {}, La8/s0;->i()La8/s0;

    move-result-object v0

    invoke-virtual {v0}, La8/s0;->u()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ls8/x;->h(Landroid/content/Context;)Ls8/x;

    move-result-object v0

    const v6, 0x7f0e020d

    goto/16 :goto_0

    :cond_a
    :goto_1
    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->f:Lo7/a;

    invoke-virtual {v0}, Lo7/a;->h()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->f:Lo7/a;

    invoke-virtual {v0}, Lo7/a;->d()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->e:Landroid/os/Handler;

    iget-object v6, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->D:Ljava/lang/Runnable;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->h1()V

    invoke-direct {p0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->g1()V

    invoke-direct {p0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->B1()V

    :cond_b
    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->f:Lo7/a;

    invoke-virtual {v0}, Lo7/a;->c()I

    move-result v0

    if-ne p1, v0, :cond_c

    invoke-direct {p0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->D1()V

    :cond_c
    invoke-static {p0}, Ls5/a;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_d

    if-eq p1, v2, :cond_d

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->f:Lo7/a;

    invoke-virtual {v0, v2}, Lo7/a;->a(I)V

    :goto_2
    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->b:Ls8/h;

    invoke-virtual {v0}, Ls8/h;->i1()V

    goto :goto_3

    :cond_d
    invoke-static {p0}, Ls5/a;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e

    if-eq p1, v5, :cond_e

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->f:Lo7/a;

    invoke-virtual {v0, v5}, Lo7/a;->a(I)V

    goto :goto_2

    :cond_e
    invoke-static {}, Lx5/p;->u0()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->f:Lo7/a;

    invoke-virtual {v0, v3}, Lo7/a;->a(I)V

    goto :goto_2

    :cond_f
    iget-boolean v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->u:Z

    if-eqz v0, :cond_10

    invoke-static {p0}, Lk5/a;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_10

    if-eq p1, v4, :cond_10

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->f:Lo7/a;

    invoke-virtual {v0, v4}, Lo7/a;->a(I)V

    goto :goto_2

    :cond_10
    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->f:Lo7/a;

    invoke-virtual {v0, v1}, Lo7/a;->a(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->e:Landroid/os/Handler;

    iget-object v3, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->B:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->b:Ls8/h;

    invoke-virtual {v0}, Ls8/h;->J0()V

    iput-boolean v1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->c:Z

    :goto_3
    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->b:Ls8/h;

    invoke-virtual {v0}, Ls8/h;->w1()V

    if-ne p1, v2, :cond_11

    invoke-static {}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->X()Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-static {}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->w()Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->n()V

    invoke-static {}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->w()Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;

    move-result-object p1

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->j0(Landroid/content/Context;)V

    :cond_11
    return-void

    :cond_12
    :goto_4
    const-string p1, "exitDockMode invalid"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public m0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->h:Ljava/lang/String;

    return-object v0
.end method

.method public n0()I
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->i:I

    return v0
.end method

.method public n1()V
    .locals 3

    const-string v0, "DockWindowManagerService"

    :try_start_0
    iget-object v1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->P:Lcom/xiaomi/migameservice/IGameCenterInterface;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->P:Lcom/xiaomi/migameservice/IGameCenterInterface;

    iget-object v2, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->h:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/xiaomi/migameservice/IGameCenterInterface;->H4(Ljava/lang/String;)V

    const-string v1, "manualStartSave"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "save manual"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public o0()Lo7/a;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->f:Lo7/a;

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->a:Lcom/miui/gamebooster/service/DockWindowManagerService$GameBoosterWindowBinder;

    return-object p1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/service/DockWindowManagerService;->Y0(I)V

    invoke-direct {p0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->m1()V

    return-void
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Lo7/a;

    invoke-direct {v0}, Lo7/a;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->f:Lo7/a;

    new-instance v0, Lcom/miui/gamebooster/service/DockWindowManagerService$GameBoosterWindowBinder;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/service/DockWindowManagerService$GameBoosterWindowBinder;-><init>(Lcom/miui/gamebooster/service/DockWindowManagerService;)V

    iput-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->a:Lcom/miui/gamebooster/service/DockWindowManagerService$GameBoosterWindowBinder;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->e:Landroid/os/Handler;

    new-instance v1, Ls8/h;

    invoke-direct {v1, p0, v0}, Ls8/h;-><init>(Lcom/miui/gamebooster/service/DockWindowManagerService;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->b:Ls8/h;

    invoke-direct {p0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->b1()V

    invoke-direct {p0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->a1()V

    invoke-static {}, Lf5/v;->d()Lf5/v;

    move-result-object v0

    invoke-virtual {v0}, Lf5/v;->f()V

    invoke-static {}, Lf5/v;->d()Lf5/v;

    move-result-object v0

    new-instance v1, Lcom/miui/gamebooster/service/a;

    invoke-direct {v1, p0}, Lcom/miui/gamebooster/service/a;-><init>(Lcom/miui/gamebooster/service/DockWindowManagerService;)V

    invoke-virtual {v0, v1}, Lf5/v;->n(Lf5/v$c;)V

    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object v0

    new-instance v1, Lcom/miui/gamebooster/service/e;

    invoke-direct {v1, p0}, Lcom/miui/gamebooster/service/e;-><init>(Lcom/miui/gamebooster/service/DockWindowManagerService;)V

    invoke-virtual {v0, v1}, Lef/z;->b(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->m:I

    invoke-static {}, Lx5/p;->H0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lw5/f;->p()Lw5/f;

    :cond_0
    invoke-static {}, La8/z;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, La8/z;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->x:Z

    invoke-static {}, La8/k2;->A()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->o:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate: Service{ DockWindowManagerService , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DockWindowManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object v0

    new-instance v1, Lcom/miui/gamebooster/service/f;

    invoke-direct {v1}, Lcom/miui/gamebooster/service/f;-><init>()V

    invoke-virtual {v0, v1}, Lef/z;->b(Ljava/lang/Runnable;)V

    invoke-static {}, Lx4/p0;->d()Lx4/p0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lx4/p0;->f(Landroid/content/Context;)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    invoke-direct {p0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->A0()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->b:Ls8/h;

    invoke-virtual {v0}, Ls8/h;->O0()V

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->b:Ls8/h;

    invoke-virtual {v0}, Ls8/h;->H0()V

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->b:Ls8/h;

    invoke-virtual {v0}, Ls8/h;->J0()V

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->b:Ls8/h;

    invoke-virtual {v0}, Ls8/h;->u0()V

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->b:Ls8/h;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ls8/h;->U0(I)V

    iput-object v1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->b:Ls8/h;

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->e:Landroid/os/Handler;

    invoke-static {p0, v0}, Ls8/u;->D(Landroid/content/Context;Landroid/os/Handler;)Ls8/u;

    move-result-object v0

    invoke-virtual {v0}, Ls8/u;->V()V

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->e:Landroid/os/Handler;

    iget-object v2, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->E:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->e:Landroid/os/Handler;

    iget-object v2, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->B:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->E1()V

    invoke-static {}, Lf5/v;->d()Lf5/v;

    move-result-object v0

    invoke-virtual {v0, v1}, Lf5/v;->n(Lf5/v$c;)V

    invoke-static {}, Lf5/v;->d()Lf5/v;

    move-result-object v0

    invoke-virtual {v0}, Lf5/v;->l()V

    invoke-direct {p0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->C1()V

    invoke-static {p0}, Lm5/f;->i(Landroid/content/Context;)V

    invoke-static {}, Lx4/p0;->d()Lx4/p0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lx4/p0;->i(Landroid/content/Context;)V

    const-string v0, "DockWindowManagerService"

    const-string v1, "onDestroy: D-WMS"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    const/4 p1, 0x1

    return p1
.end method

.method public q0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->t:Z

    return v0
.end method

.method public q1()Z
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x1f

    if-lt v0, v2, :cond_0

    invoke-static {}, La8/a0;->M()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, La8/a0;->s(Ljava/lang/Object;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.miui.circulate.world.AppCirculateActivity"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    return v0

    :cond_0
    return v1
.end method

.method public u1()V
    .locals 5

    invoke-static {}, La8/z;->d()Z

    move-result v0

    const-string v1, "DockWindowManagerService"

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->x:Z

    if-eqz v0, :cond_0

    const-string v0, "startMiGameService: folded device"

    :goto_0
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->h:Ljava/lang/String;

    iget v2, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->i:I

    invoke-static {v0, v2}, Lw6/i;->b(Ljava/lang/String;I)Lx6/b;

    move-result-object v0

    invoke-virtual {v0}, Lx6/b;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "startMiGameService: invalid"

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, La8/i2;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "can\'t find migameservice"

    goto :goto_0

    :cond_2
    :try_start_0
    const-string v0, "key_gb_record_ai"

    iget-object v2, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->h:Ljava/lang/String;

    invoke-static {v0, v2}, La8/i2;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const-string v2, "key_gb_record_manual"

    iget-object v3, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->h:Ljava/lang/String;

    invoke-static {v2, v3}, La8/i2;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    iget-object v3, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->h:Ljava/lang/String;

    invoke-static {v3}, La8/y0;->g(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v4, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->h:Ljava/lang/String;

    invoke-static {v0, v2, v4}, Lcom/miui/gamebooster/utils/a$f;->a(ZZLjava/lang/String;)V

    :cond_3
    if-eqz v3, :cond_5

    invoke-static {}, La8/k2;->A()Z

    move-result v3

    if-nez v3, :cond_5

    if-nez v0, :cond_4

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.xiaomi.migameservice.MiTimeControl"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.xiaomi.migameservice"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->O:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_5
    :goto_1
    return-void

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start migameservice fail : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public z0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->V:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService;->f:Lo7/a;

    invoke-virtual {v0}, Lo7/a;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

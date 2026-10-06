.class public Lbi/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbi/k$i;,
        Lbi/k$l;,
        Lbi/k$p;,
        Lbi/k$o;,
        Lbi/k$n;,
        Lbi/k$m;,
        Lbi/k$j;,
        Lbi/k$h;,
        Lbi/k$k;,
        Lbi/k$q;,
        Lbi/k$s;,
        Lbi/k$d;,
        Lbi/k$e;,
        Lbi/k$r;,
        Lbi/k$f;,
        Lbi/k$c;,
        Lbi/k$w;,
        Lbi/k$v;,
        Lbi/k$u;,
        Lbi/k$g;,
        Lbi/k$t;
    }
.end annotation


# static fields
.field private static H:Ljava/lang/String; = "IZatManager"

.field private static final I:Z

.field private static final J:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile K:I

.field private static final L:Ljava/lang/Object;

.field private static final M:Ljava/lang/Object;

.field private static final N:Ljava/lang/Object;

.field private static final O:Ljava/lang/Object;

.field private static final P:Ljava/lang/Object;

.field private static final Q:Ljava/lang/Object;

.field private static final R:Ljava/lang/Object;

.field private static final S:Ljava/lang/Object;

.field private static final T:Ljava/lang/Object;

.field private static final U:Ljava/lang/Object;

.field private static final V:Ljava/lang/Object;

.field private static final W:Ljava/lang/Object;

.field private static final X:Ljava/lang/Object;

.field private static final Y:Ljava/lang/Object;

.field private static final Z:Ljava/lang/Object;

.field private static a0:Lbi/k;

.field private static volatile b0:Lcom/qti/izat/IIzatService;


# instance fields
.field private A:Lbi/k$w;

.field private B:Lbi/k$v;

.field private C:Lbi/k$u;

.field private D:Lbi/k$g;

.field private E:Lbi/k$t;

.field private volatile F:Z

.field private G:Landroid/content/ServiceConnection;

.field private a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:I

.field private j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lbi/k$d;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lbi/b$a;",
            "Lbi/k$q;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lbi/n$a;",
            "Lbi/k$r;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lbi/k$j;",
            "Lbi/c$a;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lbi/k$j$a;",
            "Lbi/k$e;",
            ">;"
        }
    .end annotation
.end field

.field private o:Landroid/app/PendingIntent;

.field private p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lbi/k$h;",
            "Lbi/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private q:Lbi/f;

.field private r:Lbi/d;

.field private volatile s:Lbi/k$i;

.field private volatile t:Lbi/k$j;

.field private volatile u:Lbi/k$l;

.field private volatile v:Lbi/k$h;

.field private volatile w:Lbi/k$k;

.field private x:Landroid/content/Context;

.field private y:Lbi/k$f;

.field private z:Lbi/k$c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "IZatManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lbi/k;->I:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lbi/k;->J:Ljava/util/HashSet;

    const-string v1, "umi"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "lmi"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "cmi"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    sput v0, Lbi/k;->K:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lbi/k;->L:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lbi/k;->M:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lbi/k;->N:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lbi/k;->O:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lbi/k;->P:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lbi/k;->Q:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lbi/k;->R:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lbi/k;->S:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lbi/k;->T:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lbi/k;->U:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lbi/k;->V:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lbi/k;->W:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lbi/k;->X:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lbi/k;->Y:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lbi/k;->Z:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lbi/k;->a0:Lbi/k;

    sput-object v0, Lbi/k;->b0:Lcom/qti/izat/IIzatService;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lbi/k;->a:I

    const/4 v0, 0x1

    iput v0, p0, Lbi/k;->b:I

    const/4 v0, 0x2

    iput v0, p0, Lbi/k;->c:I

    const/4 v0, 0x4

    iput v0, p0, Lbi/k;->d:I

    const/16 v0, 0x8

    iput v0, p0, Lbi/k;->e:I

    const/16 v1, 0x10

    iput v1, p0, Lbi/k;->f:I

    const/16 v1, 0x20

    iput v1, p0, Lbi/k;->g:I

    const/16 v1, 0x40

    iput v1, p0, Lbi/k;->h:I

    const/16 v1, 0x80

    iput v1, p0, Lbi/k;->i:I

    invoke-direct {p0}, Lbi/k;->Q()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lbi/k;->j:Ljava/util/Map;

    invoke-direct {p0}, Lbi/k;->S()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lbi/k;->k:Ljava/util/Map;

    invoke-direct {p0}, Lbi/k;->R()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lbi/k;->l:Ljava/util/Map;

    invoke-direct {p0}, Lbi/k;->O()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lbi/k;->m:Ljava/util/Map;

    invoke-direct {p0}, Lbi/k;->P()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lbi/k;->n:Ljava/util/Map;

    invoke-direct {p0}, Lbi/k;->N()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lbi/k;->p:Ljava/util/Map;

    new-instance v1, Lbi/k$f;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lbi/k$f;-><init>(Lbi/k;Lbi/k$a;)V

    iput-object v1, p0, Lbi/k;->y:Lbi/k$f;

    new-instance v1, Lbi/k$c;

    invoke-direct {v1, p0, v2}, Lbi/k$c;-><init>(Lbi/k;Lbi/k$a;)V

    iput-object v1, p0, Lbi/k;->z:Lbi/k$c;

    new-instance v1, Lbi/k$w;

    invoke-direct {v1, p0, v2}, Lbi/k$w;-><init>(Lbi/k;Lbi/k$a;)V

    iput-object v1, p0, Lbi/k;->A:Lbi/k$w;

    new-instance v1, Lbi/k$v;

    invoke-direct {v1, p0, v2}, Lbi/k$v;-><init>(Lbi/k;Lbi/k$a;)V

    iput-object v1, p0, Lbi/k;->B:Lbi/k$v;

    new-instance v1, Lbi/k$u;

    invoke-direct {v1, p0, v2}, Lbi/k$u;-><init>(Lbi/k;Lbi/k$a;)V

    iput-object v1, p0, Lbi/k;->C:Lbi/k$u;

    new-instance v1, Lbi/k$g;

    invoke-direct {v1, p0, v2}, Lbi/k$g;-><init>(Lbi/k;Lbi/k$a;)V

    iput-object v1, p0, Lbi/k;->D:Lbi/k$g;

    new-instance v1, Lbi/k$t;

    invoke-direct {v1, p0, v2}, Lbi/k$t;-><init>(Lbi/k;Lbi/k$a;)V

    iput-object v1, p0, Lbi/k;->E:Lbi/k$t;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lbi/k;->F:Z

    new-instance v1, Lbi/k$a;

    invoke-direct {v1, p0}, Lbi/k$a;-><init>(Lbi/k;)V

    iput-object v1, p0, Lbi/k;->G:Landroid/content/ServiceConnection;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    shl-int/lit8 v0, v1, 0x8

    sput v0, Lbi/k;->K:I

    sget-boolean v0, Lbi/k;->I:Z

    if-eqz v0, :cond_0

    sget-object v0, Lbi/k;->H:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IZatManager ctor sFlpRequestsCnt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lbi/k;->K:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lbi/k;->x:Landroid/content/Context;

    return-void
.end method

.method static synthetic A()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lbi/k;->N:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic B()Ljava/lang/String;
    .locals 1

    sget-object v0, Lbi/k;->H:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic C(Lbi/k;Z)Z
    .locals 0

    iput-boolean p1, p0, Lbi/k;->F:Z

    return p1
.end method

.method static synthetic D()Lcom/qti/izat/IIzatService;
    .locals 1

    sget-object v0, Lbi/k;->b0:Lcom/qti/izat/IIzatService;

    return-object v0
.end method

.method static synthetic E(Lcom/qti/izat/IIzatService;)Lcom/qti/izat/IIzatService;
    .locals 0

    sput-object p0, Lbi/k;->b0:Lcom/qti/izat/IIzatService;

    return-object p0
.end method

.method private static varargs F(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-virtual {p1, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static varargs G(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized L()V
    .locals 8

    monitor-enter p0

    :try_start_0
    sget-object v0, Lbi/k;->b0:Lcom/qti/izat/IIzatService;

    if-nez v0, :cond_9

    sget-boolean v0, Lbi/k;->I:Z

    if-eqz v0, :cond_0

    sget-object v0, Lbi/k;->H:Ljava/lang/String;

    const-string v1, "Connecting to Izat service by name [com.qualcomm.location.izat.IzatService]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-le v0, v1, :cond_5

    iget-boolean v0, p0, Lbi/k;->F:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lbi/k;->x:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.qualcomm.location.izat.IzatService"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.qualcomm.location.izat.IzatService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.qualcomm.location"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lbi/k;->x:Landroid/content/Context;

    new-instance v4, Lbi/k$b;

    invoke-direct {v4, p0}, Lbi/k$b;-><init>(Lbi/k;)V

    iget-object v5, p0, Lbi/k;->G:Landroid/content/ServiceConnection;

    invoke-static {v1, v0, v2, v4, v5}, Lbi/j;->a(Landroid/content/Context;Landroid/content/Intent;ILjava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Z

    goto :goto_0

    :cond_1
    sget-object v0, Lbi/k;->H:Ljava/lang/String;

    const-string v1, "Izat service (com.qualcomm.location.izat.IzatService) not installed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lbi/m;

    const-string v1, "Izat service unavailable."

    invoke-direct {v0, v1}, Lbi/m;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    const/16 v0, 0xa

    if-ge v3, v0, :cond_4

    sget-object v0, Lbi/k;->b0:Lcom/qti/izat/IIzatService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    monitor-exit p0

    return-void

    :cond_3
    const-wide/16 v0, 0xc8

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :try_start_2
    new-instance v0, Lbi/m;

    const-string v1, "connectIzatService time out."

    invoke-direct {v0, v1}, Lbi/m;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iget-object v0, p0, Lbi/k;->x:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.qualcomm.location.izat.IzatService"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v1, 0x0

    :try_start_3
    const-string v4, "android.os.ServiceManager"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getService"

    new-array v6, v2, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v3

    new-array v2, v2, [Ljava/lang/Object;

    const-string v7, "com.qualcomm.location.izat.IzatService"

    aput-object v7, v2, v3

    invoke-static {v4, v5, v6, v2}, Lbi/k;->G(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v1, v2

    goto :goto_1

    :catch_1
    move-exception v2

    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    if-eqz v0, :cond_8

    if-eqz v1, :cond_7

    invoke-static {v1}, Lcom/qti/izat/IIzatService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/qti/izat/IIzatService;

    move-result-object v0

    sput-object v0, Lbi/k;->b0:Lcom/qti/izat/IIzatService;

    sget-object v0, Lbi/k;->b0:Lcom/qti/izat/IIzatService;

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    sget-object v0, Lbi/k;->H:Ljava/lang/String;

    const-string v1, "Izat service (com.qualcomm.location.izat.IzatService) not started"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lbi/m;

    const-string v1, "Izat service unavailable."

    invoke-direct {v0, v1}, Lbi/m;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    sget-object v0, Lbi/k;->H:Ljava/lang/String;

    const-string v1, "Izat service (com.qualcomm.location.izat.IzatService) is not started"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lbi/m;

    const-string v1, "Izat service not started."

    invoke-direct {v0, v1}, Lbi/m;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    sget-object v0, Lbi/k;->H:Ljava/lang/String;

    const-string v1, "Izat service (com.qualcomm.location.izat.IzatService) not installed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lbi/m;

    const-string v1, "Izat service unavailable."

    invoke-direct {v0, v1}, Lbi/m;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    :goto_2
    sget-object v0, Lbi/k;->H:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Version is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lbi/k;->V()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private N()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lbi/k$h;",
            "Lbi/a$a;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private O()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lbi/k$j;",
            "Lbi/c$a;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private P()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lbi/k$j$a;",
            "Lbi/k$e;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private Q()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lbi/k$d;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private R()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lbi/n$a;",
            "Lbi/k$r;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private S()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lbi/b$a;",
            "Lbi/k$q;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized U(Landroid/content/Context;)Lbi/k;
    .locals 2

    const-class v0, Lbi/k;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lbi/k;->W()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p0, :cond_1

    sget-object v1, Lbi/k;->a0:Lbi/k;

    if-nez v1, :cond_0

    new-instance v1, Lbi/k;

    invoke-direct {v1, p0}, Lbi/k;-><init>(Landroid/content/Context;)V

    sput-object v1, Lbi/k;->a0:Lbi/k;

    :cond_0
    sget-object p0, Lbi/k;->a0:Lbi/k;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :cond_1
    :try_start_1
    new-instance p0, Lbi/i;

    const-string v1, "null argument"

    invoke-direct {p0, v1}, Lbi/i;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v1, "Not support IZat for this device"

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static final W()Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "android.os.SystemProperties"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getBoolean"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v1

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v0

    new-array v4, v4, [Ljava/lang/Object;

    const-string v6, "persist.sys.gps.fence"

    aput-object v6, v4, v1

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v6, v4, v0

    invoke-static {v2, v3, v5, v4}, Lbi/k;->G(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    move v2, v1

    :goto_0
    sget-object v3, Lbi/k;->J:Ljava/util/HashSet;

    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-ge v3, v4, :cond_2

    :cond_0
    if-nez v2, :cond_2

    sget-boolean v0, Lbi/k;->I:Z

    if-eqz v0, :cond_1

    sget-object v0, Lbi/k;->H:Ljava/lang/String;

    const-string v2, "Not support!!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1

    :cond_2
    return v0
.end method

.method private X(Landroid/content/pm/ApplicationInfo;)Z
    .locals 2

    :try_start_0
    const-string v0, "isSystemApp"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, v1}, Lbi/k;->F(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private Y()V
    .locals 2

    iget-object v0, p0, Lbi/k;->p:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lbi/k;->v:Lbi/k$h;

    iget-object v0, v0, Lbi/k$h;->a:Lcom/qti/debugreport/IDebugReportService;

    invoke-interface {v0}, Lcom/qti/debugreport/IDebugReportService;->c7()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to register for debug reports"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method private Z()V
    .locals 15

    :try_start_0
    sget-object v0, Lbi/k;->L:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lbi/k;->j:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbi/k$d;

    iget v3, p0, Lbi/k;->a:I

    and-int/lit8 v3, v3, 0x8

    if-lez v3, :cond_1

    invoke-virtual {v2}, Lbi/k$d;->b()Lbi/k$s;

    move-result-object v3

    sget-object v4, Lbi/k$s;->d:Lbi/k$s;

    if-eq v3, v4, :cond_0

    invoke-virtual {v2}, Lbi/k$d;->b()Lbi/k$s;

    move-result-object v3

    sget-object v4, Lbi/k$s;->b:Lbi/k$s;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lbi/k;->s:Lbi/k$i;

    iget-object v4, v3, Lbi/k$i;->a:Lcom/qti/flp/IFlpService;

    const/4 v5, 0x2

    iget v6, v2, Lbi/k$d;->f:I

    iget-object v7, v2, Lbi/k$d;->b:Lbi/k$q;

    invoke-virtual {v2}, Lbi/k$d;->d()J

    move-result-wide v8

    :goto_1
    invoke-interface/range {v4 .. v9}, Lcom/qti/flp/IFlpService;->M(IILcom/qti/flp/ILocationCallback;J)V

    goto :goto_2

    :cond_0
    iget-object v3, p0, Lbi/k;->s:Lbi/k$i;

    iget-object v4, v3, Lbi/k$i;->a:Lcom/qti/flp/IFlpService;

    const/4 v5, 0x1

    iget v6, v2, Lbi/k$d;->f:I

    iget-object v7, v2, Lbi/k$d;->b:Lbi/k$q;

    invoke-virtual {v2}, Lbi/k$d;->d()J

    move-result-wide v8

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lbi/k;->s:Lbi/k$i;

    iget-object v4, v3, Lbi/k$i;->a:Lcom/qti/flp/IFlpService;

    const/4 v5, 0x4

    iget v6, v2, Lbi/k$d;->f:I

    iget-object v7, v2, Lbi/k$d;->b:Lbi/k$q;

    invoke-virtual {v2}, Lbi/k$d;->d()J

    move-result-wide v8

    goto :goto_1

    :goto_2
    iget-object v3, p0, Lbi/k;->s:Lbi/k$i;

    iget-object v4, v3, Lbi/k$i;->a:Lcom/qti/flp/IFlpService;

    iget v5, v2, Lbi/k$d;->f:I

    invoke-virtual {v2}, Lbi/k$d;->b()Lbi/k$s;

    move-result-object v3

    invoke-virtual {v3}, Lbi/k$s;->a()I

    move-result v6

    invoke-virtual {v2}, Lbi/k$d;->f()J

    move-result-wide v7

    invoke-virtual {v2}, Lbi/k$d;->a()I

    move-result v9

    invoke-virtual {v2}, Lbi/k$d;->g()J

    move-result-wide v10

    invoke-virtual {v2}, Lbi/k$d;->c()I

    move-result v12

    invoke-virtual {v2}, Lbi/k$d;->e()J

    move-result-wide v13

    invoke-interface/range {v4 .. v14}, Lcom/qti/flp/IFlpService;->z6(IIJIJIJ)I

    goto :goto_0

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed startFlpSession"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic a(Lbi/k;)V
    .locals 0

    invoke-direct {p0}, Lbi/k;->L()V

    return-void
.end method

.method private a0()V
    .locals 22

    move-object/from16 v1, p0

    :try_start_0
    iget-object v0, v1, Lbi/k;->n:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbi/k$e;

    invoke-virtual {v2}, Lbi/k$e;->c()Lbi/c$d;

    move-result-object v3

    invoke-virtual {v2}, Lbi/k$e;->b()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3}, Lbi/c$d;->c()D

    move-result-wide v7

    invoke-virtual {v3}, Lbi/c$d;->d()D

    move-result-wide v9

    invoke-virtual {v3}, Lbi/c$d;->f()D

    move-result-wide v11

    invoke-virtual {v3}, Lbi/c$d;->g()Lbi/c$f;

    move-result-object v5

    invoke-virtual {v5}, Lbi/c$f;->a()I

    move-result v13

    invoke-virtual {v3}, Lbi/c$d;->e()I

    move-result v14

    invoke-virtual {v3}, Lbi/c$d;->a()Lbi/c$e;

    move-result-object v5

    invoke-virtual {v5}, Lbi/c$e;->a()I

    move-result v15

    invoke-virtual {v3}, Lbi/c$d;->b()Lbi/c$c;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Lbi/c$d;->b()Lbi/c$c;

    move-result-object v5

    invoke-virtual {v5}, Lbi/c$c;->a()I

    move-result v5

    invoke-virtual {v3}, Lbi/c$d;->b()Lbi/c$c;

    move-result-object v3

    invoke-virtual {v3}, Lbi/c$c;->b()I

    move-result v3

    move/from16 v16, v3

    move v3, v5

    goto :goto_1

    :cond_0
    move v3, v6

    move/from16 v16, v3

    :goto_1
    sget-object v20, Lbi/k;->N:Ljava/lang/Object;

    monitor-enter v20
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v4, :cond_4

    :try_start_1
    instance-of v5, v4, Ljava/lang/String;

    if-nez v5, :cond_1

    instance-of v5, v4, Landroid/os/Bundle;

    if-eqz v5, :cond_4

    :cond_1
    instance-of v5, v4, Ljava/lang/String;

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v17, v5

    goto :goto_2

    :cond_2
    move-object/from16 v17, v6

    :goto_2
    instance-of v5, v4, Landroid/os/Bundle;

    if-eqz v5, :cond_3

    check-cast v4, Landroid/os/Bundle;

    move-object/from16 v18, v4

    goto :goto_3

    :cond_3
    move-object/from16 v18, v6

    :goto_3
    iget-object v4, v1, Lbi/k;->t:Lbi/k$j;

    iget-object v4, v4, Lbi/k$j;->a:Lcom/qti/geofence/IGeofenceService;

    new-instance v6, Lcom/qti/geofence/GeofenceData;

    const/16 v19, -0x1

    move-object v5, v6

    move-object/from16 v21, v0

    move-object v0, v6

    move v6, v14

    move v14, v15

    move/from16 v15, v16

    move/from16 v16, v3

    invoke-direct/range {v5 .. v19}, Lcom/qti/geofence/GeofenceData;-><init>(IDDDIIIILjava/lang/String;Landroid/os/Bundle;I)V

    invoke-interface {v4, v0}, Lcom/qti/geofence/IGeofenceService;->o1(Lcom/qti/geofence/GeofenceData;)I

    move-result v0

    goto :goto_4

    :cond_4
    move-object/from16 v21, v0

    iget-object v0, v1, Lbi/k;->t:Lbi/k$j;

    iget-object v5, v0, Lbi/k$j;->a:Lcom/qti/geofence/IGeofenceService;

    move-wide v6, v7

    move-wide v8, v9

    move-wide v10, v11

    move v12, v13

    move v13, v14

    move v14, v15

    move v15, v3

    invoke-interface/range {v5 .. v16}, Lcom/qti/geofence/IGeofenceService;->T5(DDDIIIII)I

    move-result v0

    :goto_4
    iget-boolean v3, v2, Lbi/k$e;->e:Z

    if-eqz v3, :cond_5

    iget-object v3, v1, Lbi/k;->t:Lbi/k$j;

    iget-object v3, v3, Lbi/k$j;->a:Lcom/qti/geofence/IGeofenceService;

    invoke-interface {v3, v0}, Lcom/qti/geofence/IGeofenceService;->N5(I)V

    :cond_5
    monitor-exit v20
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    sget-object v3, Lbi/k;->O:Ljava/lang/Object;

    monitor-enter v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    invoke-virtual {v2, v0}, Lbi/k$e;->e(I)V

    monitor-exit v3

    move-object/from16 v0, v21

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v20
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_6
    iget-object v0, v1, Lbi/k;->o:Landroid/app/PendingIntent;

    if-eqz v0, :cond_7

    :try_start_7
    sget-object v2, Lbi/k;->N:Ljava/lang/Object;

    monitor-enter v2
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0

    :try_start_8
    iget-object v0, v1, Lbi/k;->t:Lbi/k$j;

    iget-object v0, v0, Lbi/k$j;->a:Lcom/qti/geofence/IGeofenceService;

    iget-object v3, v1, Lbi/k;->o:Landroid/app/PendingIntent;

    invoke-interface {v0, v3}, Lcom/qti/geofence/IGeofenceService;->w1(Landroid/app/PendingIntent;)V

    monitor-exit v2

    goto :goto_5

    :catchall_2
    move-exception v0

    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failed add geofence"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_7
    :goto_5
    return-void

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failed add geofence"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method static synthetic b(Lbi/k;)Lbi/k$i;
    .locals 0

    iget-object p0, p0, Lbi/k;->s:Lbi/k$i;

    return-object p0
.end method

.method private b0()V
    .locals 4

    :try_start_0
    sget-object v0, Lbi/k;->M:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lbi/k;->l:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbi/k$r;

    iget-object v3, p0, Lbi/k;->u:Lbi/k$l;

    iget-object v3, v3, Lbi/k$l;->a:Lcom/qti/flp/ITestService;

    invoke-interface {v3, v2}, Lcom/qti/flp/ITestService;->E(Lcom/qti/flp/IMaxPowerAllocatedCallback;)V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed registerForMaxPowerAllocatedChange"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic c(Lbi/k;)V
    .locals 0

    invoke-direct {p0}, Lbi/k;->Z()V

    return-void
.end method

.method private c0()V
    .locals 9

    :try_start_0
    sget-object v0, Lbi/k;->L:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lbi/k;->k:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lbi/k$q;

    iget-object v2, p0, Lbi/k;->s:Lbi/k$i;

    iget-object v3, v2, Lbi/k$i;->a:Lcom/qti/flp/IFlpService;

    const/4 v4, 0x4

    const/4 v5, -0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-interface/range {v3 .. v8}, Lcom/qti/flp/IFlpService;->M(IILcom/qti/flp/ILocationCallback;J)V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed registerForPassiveLocations"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic d(Lbi/k;)V
    .locals 0

    invoke-direct {p0}, Lbi/k;->c0()V

    return-void
.end method

.method private d0(Lcom/qti/flp/IFlpService;)V
    .locals 5

    if-eqz p1, :cond_2

    sget-object v0, Lbi/k;->L:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lbi/k;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, -0x1

    if-ne v2, v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    const/16 v3, 0xa

    if-ge v1, v3, :cond_1

    :try_start_1
    invoke-interface {p1}, Lcom/qti/flp/IFlpService;->T7()I

    move-result v3

    iput v3, p0, Lbi/k;->a:I

    if-eq v2, v3, :cond_0

    goto :goto_1

    :cond_0
    const-wide/16 v3, 0xc8

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    :cond_1
    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sget-object p1, Lbi/k;->H:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "got mFlpFeaturMasks"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lbi/k;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    :cond_2
    new-instance p1, Lbi/m;

    const-string v0, "FLP Service is not available."

    invoke-direct {p1, v0}, Lbi/m;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic e(Lbi/k;)Lbi/k$j;
    .locals 0

    iget-object p0, p0, Lbi/k;->t:Lbi/k$j;

    return-object p0
.end method

.method static synthetic f(Lbi/k;)V
    .locals 0

    invoke-direct {p0}, Lbi/k;->a0()V

    return-void
.end method

.method static synthetic g(Lbi/k;)Lbi/k$h;
    .locals 0

    iget-object p0, p0, Lbi/k;->v:Lbi/k$h;

    return-object p0
.end method

.method static synthetic h(Lbi/k;)V
    .locals 0

    invoke-direct {p0}, Lbi/k;->Y()V

    return-void
.end method

.method static synthetic i(Lbi/k;)Lbi/k$l;
    .locals 0

    iget-object p0, p0, Lbi/k;->u:Lbi/k$l;

    return-object p0
.end method

.method static synthetic j(Lbi/k;)V
    .locals 0

    invoke-direct {p0}, Lbi/k;->b0()V

    return-void
.end method

.method static synthetic k(Lbi/k;)Lbi/k$k;
    .locals 0

    iget-object p0, p0, Lbi/k;->w:Lbi/k$k;

    return-object p0
.end method

.method static synthetic l(Lbi/k;)Lbi/k$p;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic m(Lbi/k;)Lbi/k$o;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic n(Lbi/k;)Lbi/k$n;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic o(Lbi/k;)Lbi/k$m;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic p()Z
    .locals 1

    sget-boolean v0, Lbi/k;->I:Z

    return v0
.end method

.method static synthetic q()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lbi/k;->X:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic r(Lbi/k;)Lbi/f;
    .locals 0

    iget-object p0, p0, Lbi/k;->q:Lbi/f;

    return-object p0
.end method

.method static synthetic s()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lbi/k;->Y:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic t(Lbi/k;)Lbi/d;
    .locals 0

    iget-object p0, p0, Lbi/k;->r:Lbi/d;

    return-object p0
.end method

.method static synthetic u()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lbi/k;->R:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic v(Lbi/k;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lbi/k;->p:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic w()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lbi/k;->O:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic x(Lbi/k;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lbi/k;->n:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic y()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lbi/k;->P:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic z(Lbi/k;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lbi/k;->m:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public H()Lbi/a;
    .locals 3

    sget-object v0, Lbi/k;->b0:Lcom/qti/izat/IIzatService;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lbi/k;->L()V

    :cond_0
    :try_start_0
    sget-object v0, Lbi/k;->b0:Lcom/qti/izat/IIzatService;

    invoke-interface {v0}, Lcom/qti/izat/IIzatService;->f5()Lcom/qti/debugreport/IDebugReportService;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v1, Lbi/k;->Q:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lbi/k;->z:Lbi/k$c;

    invoke-interface {v0, v2}, Lcom/qti/debugreport/IDebugReportService;->S1(Lcom/qti/debugreport/IDebugReportCallback;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Lbi/k;->v:Lbi/k$h;

    if-nez v1, :cond_1

    new-instance v1, Lbi/k$h;

    invoke-direct {v1, p0, v0}, Lbi/k$h;-><init>(Lbi/k;Lcom/qti/debugreport/IDebugReportService;)V

    iput-object v1, p0, Lbi/k;->v:Lbi/k$h;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lbi/k;->v:Lbi/k$h;

    iput-object v0, v1, Lbi/k$h;->a:Lcom/qti/debugreport/IDebugReportService;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    iget-object v0, p0, Lbi/k;->v:Lbi/k$h;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    :cond_2
    new-instance v0, Lbi/m;

    const-string v1, "Debug Reporting Service is not available."

    invoke-direct {v0, v1}, Lbi/m;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to get IDebugReportService"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public I()Lbi/b;
    .locals 3

    sget-object v0, Lbi/k;->b0:Lcom/qti/izat/IIzatService;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lbi/k;->L()V

    :cond_0
    :try_start_0
    sget-object v0, Lbi/k;->b0:Lcom/qti/izat/IIzatService;

    invoke-interface {v0}, Lcom/qti/izat/IIzatService;->S7()Lcom/qti/flp/IFlpService;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-direct {p0, v0}, Lbi/k;->d0(Lcom/qti/flp/IFlpService;)V

    iget v1, p0, Lbi/k;->a:I

    and-int/lit8 v1, v1, 0x2

    if-gtz v1, :cond_1

    sget-object v0, Lbi/k;->H:Ljava/lang/String;

    const-string v1, "Izat FLP positioning is not supported on this device."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_1
    iget-object v1, p0, Lbi/k;->s:Lbi/k$i;

    if-nez v1, :cond_2

    new-instance v1, Lbi/k$i;

    invoke-direct {v1, p0, v0}, Lbi/k$i;-><init>(Lbi/k;Lcom/qti/flp/IFlpService;)V

    iput-object v1, p0, Lbi/k;->s:Lbi/k$i;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lbi/k;->s:Lbi/k$i;

    iput-object v0, v1, Lbi/k$i;->a:Lcom/qti/flp/IFlpService;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lbi/k;->s:Lbi/k$i;

    return-object v0

    :cond_3
    :try_start_1
    new-instance v0, Lbi/m;

    const-string v1, "FLP Service is not available."

    invoke-direct {v0, v1}, Lbi/m;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to get IFlpService"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public J()Lbi/c;
    .locals 3

    sget-object v0, Lbi/k;->b0:Lcom/qti/izat/IIzatService;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lbi/k;->L()V

    :cond_0
    :try_start_0
    sget-object v0, Lbi/k;->b0:Lcom/qti/izat/IIzatService;

    invoke-interface {v0}, Lcom/qti/izat/IIzatService;->V5()Lcom/qti/geofence/IGeofenceService;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v1, Lbi/k;->N:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lbi/k;->y:Lbi/k$f;

    invoke-interface {v0, v2}, Lcom/qti/geofence/IGeofenceService;->I2(Lcom/qti/geofence/IGeofenceCallback;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Lbi/k;->t:Lbi/k$j;

    if-nez v1, :cond_1

    new-instance v1, Lbi/k$j;

    invoke-direct {v1, p0, v0}, Lbi/k$j;-><init>(Lbi/k;Lcom/qti/geofence/IGeofenceService;)V

    iput-object v1, p0, Lbi/k;->t:Lbi/k$j;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lbi/k;->t:Lbi/k$j;

    iput-object v0, v1, Lbi/k$j;->a:Lcom/qti/geofence/IGeofenceService;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    iget-object v0, p0, Lbi/k;->t:Lbi/k$j;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    :cond_2
    new-instance v0, Lbi/m;

    const-string v1, "Geofence Service is not available."

    invoke-direct {v0, v1}, Lbi/m;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to get IGeofenceService"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public K()Lbi/h;
    .locals 3

    iget-object v0, p0, Lbi/k;->x:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lbi/k;->X(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lbi/k;->b0:Lcom/qti/izat/IIzatService;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lbi/k;->L()V

    :cond_0
    :try_start_0
    sget-object v0, Lbi/k;->b0:Lcom/qti/izat/IIzatService;

    invoke-interface {v0}, Lcom/qti/izat/IIzatService;->S7()Lcom/qti/flp/IFlpService;

    move-result-object v0

    invoke-direct {p0, v0}, Lbi/k;->d0(Lcom/qti/flp/IFlpService;)V

    sget-object v0, Lbi/k;->b0:Lcom/qti/izat/IIzatService;

    invoke-interface {v0}, Lcom/qti/izat/IIzatService;->C0()Lcom/qti/gnssconfig/IGnssConfigService;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lbi/k;->w:Lbi/k$k;

    if-nez v1, :cond_1

    new-instance v1, Lbi/k$k;

    invoke-direct {v1, p0, v0}, Lbi/k$k;-><init>(Lbi/k;Lcom/qti/gnssconfig/IGnssConfigService;)V

    iput-object v1, p0, Lbi/k;->w:Lbi/k$k;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lbi/k;->w:Lbi/k$k;

    iput-object v0, v1, Lbi/k$k;->a:Lcom/qti/gnssconfig/IGnssConfigService;

    :goto_0
    iget-object v0, p0, Lbi/k;->w:Lbi/k$k;

    return-object v0

    :cond_2
    new-instance v0, Lbi/m;

    const-string v1, "Gnss Config Service is not available."

    invoke-direct {v0, v1}, Lbi/m;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to get IGnssConfigService"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    new-instance v0, Lbi/l;

    const-string v1, "GnssConfigServices is only available to system apps."

    invoke-direct {v0, v1}, Lbi/l;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public M()Lbi/n;
    .locals 3

    iget-object v0, p0, Lbi/k;->x:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lbi/k;->X(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lbi/k;->b0:Lcom/qti/izat/IIzatService;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lbi/k;->L()V

    :cond_0
    :try_start_0
    sget-object v0, Lbi/k;->b0:Lcom/qti/izat/IIzatService;

    invoke-interface {v0}, Lcom/qti/izat/IIzatService;->d3()Lcom/qti/flp/ITestService;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lbi/k;->u:Lbi/k$l;

    if-nez v1, :cond_1

    new-instance v1, Lbi/k$l;

    invoke-direct {v1, p0, v0}, Lbi/k$l;-><init>(Lbi/k;Lcom/qti/flp/ITestService;)V

    iput-object v1, p0, Lbi/k;->u:Lbi/k$l;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lbi/k;->u:Lbi/k$l;

    iput-object v0, v1, Lbi/k$l;->a:Lcom/qti/flp/ITestService;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lbi/k;->u:Lbi/k$l;

    return-object v0

    :cond_2
    :try_start_1
    new-instance v0, Lbi/m;

    const-string v1, "Test Service is not available."

    invoke-direct {v0, v1}, Lbi/m;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to get ITestService"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    new-instance v0, Lbi/l;

    const-string v1, "Test Service is only available to system app."

    invoke-direct {v0, v1}, Lbi/l;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public T(Lbi/c;)V
    .locals 5

    if-eqz p1, :cond_4

    instance-of v0, p1, Lbi/k$j;

    if-eqz v0, :cond_4

    :try_start_0
    sget-object v0, Lbi/k;->N:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v1, Lbi/k;->b0:Lcom/qti/izat/IIzatService;

    invoke-interface {v1}, Lcom/qti/izat/IIzatService;->V5()Lcom/qti/geofence/IGeofenceService;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v2, p0, Lbi/k;->n:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v2, p0, Lbi/k;->y:Lbi/k$f;

    invoke-interface {v1, v2}, Lcom/qti/geofence/IGeofenceService;->w3(Lcom/qti/geofence/IGeofenceCallback;)V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    sget-object v0, Lbi/k;->O:Ljava/lang/Object;

    monitor-enter v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v1, p0, Lbi/k;->n:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    sget-object v0, Lbi/k;->P:Ljava/lang/Object;

    monitor-enter v0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    iget-object v1, p0, Lbi/k;->m:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbi/k$j;

    if-ne p1, v2, :cond_0

    iget-object p1, p0, Lbi/k;->m:Ljava/util/Map;

    invoke-interface {p1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 p1, 0x0

    :try_start_6
    iput-object p1, p0, Lbi/k;->t:Lbi/k$j;
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    return-void

    :catchall_0
    move-exception p1

    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_0

    :catchall_1
    move-exception p1

    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw p1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_0

    :cond_2
    :try_start_b
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbi/k$j$a;

    iget-object v4, p0, Lbi/k;->n:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbi/k$e;

    invoke-virtual {v3}, Lbi/k$e;->d()I

    move-result v3

    invoke-interface {v1, v3}, Lcom/qti/geofence/IGeofenceService;->r0(I)V

    goto :goto_0

    :cond_3
    new-instance p1, Lbi/m;

    const-string v1, "Geofence Service is not available."

    invoke-direct {p1, v1}, Lbi/m;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_2
    move-exception p1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    throw p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to remove all geofence added"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_4
    new-instance p1, Lbi/i;

    invoke-direct {p1}, Lbi/i;-><init>()V

    throw p1
.end method

.method public V()Ljava/lang/String;
    .locals 3

    sget-object v0, Lbi/k;->b0:Lcom/qti/izat/IIzatService;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lbi/k;->L()V

    :cond_0
    :try_start_0
    sget-object v0, Lbi/k;->b0:Lcom/qti/izat/IIzatService;

    invoke-interface {v0}, Lcom/qti/izat/IIzatService;->getVersion()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_1

    const-string v0, "1.0.0"

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "8.2.0.2:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to get IzatService version"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

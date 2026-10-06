.class public Lcom/miui/gamebooster/service/w;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gamebooster/service/w$h;,
        Lcom/miui/gamebooster/service/w$g;
    }
.end annotation


# static fields
.field private static E:Lcom/miui/gamebooster/service/w;


# instance fields
.field private A:Landroid/content/ServiceConnection;

.field private B:Landroid/content/ServiceConnection;

.field private C:Landroid/database/ContentObserver;

.field private D:Landroid/database/ContentObserver;

.field private a:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "La7/c;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:Landroid/os/Handler;

.field private d:Landroid/os/Handler;

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:I

.field private i:Z

.field private j:Landroid/content/pm/PackageManager;

.field private k:Landroid/media/AudioManager;

.field private l:Lcom/miui/gamebooster/service/w$g;

.field private m:Ljava/lang/String;

.field private n:I

.field private o:J

.field private p:I

.field private q:I

.field private r:J

.field private s:Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

.field private t:La7/l;

.field private u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private v:[Ljava/lang/String;

.field private w:J

.field private final x:I

.field private y:Lcom/miui/gamebooster/service/IFreeformWindow;

.field private z:Lcom/miui/gamebooster/service/w$h;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gamebooster/service/w;->e:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gamebooster/service/w;->f:Z

    iput-boolean v0, p0, Lcom/miui/gamebooster/service/w;->g:Z

    const/high16 v0, 0x20000

    iput v0, p0, Lcom/miui/gamebooster/service/w;->p:I

    const/16 v0, 0x7530

    iput v0, p0, Lcom/miui/gamebooster/service/w;->q:I

    const-wide/32 v0, 0x927c0

    iput-wide v0, p0, Lcom/miui/gamebooster/service/w;->r:J

    const v0, 0x8000

    iput v0, p0, Lcom/miui/gamebooster/service/w;->x:I

    new-instance v0, Lcom/miui/gamebooster/service/w$a;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/service/w$a;-><init>(Lcom/miui/gamebooster/service/w;)V

    iput-object v0, p0, Lcom/miui/gamebooster/service/w;->A:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/miui/gamebooster/service/w$b;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/service/w$b;-><init>(Lcom/miui/gamebooster/service/w;)V

    iput-object v0, p0, Lcom/miui/gamebooster/service/w;->B:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/miui/gamebooster/service/w$c;

    iget-object v1, p0, Lcom/miui/gamebooster/service/w;->c:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/miui/gamebooster/service/w$c;-><init>(Lcom/miui/gamebooster/service/w;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/gamebooster/service/w;->C:Landroid/database/ContentObserver;

    new-instance v0, Lcom/miui/gamebooster/service/w$d;

    iget-object v1, p0, Lcom/miui/gamebooster/service/w;->c:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/miui/gamebooster/service/w$d;-><init>(Lcom/miui/gamebooster/service/w;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/gamebooster/service/w;->D:Landroid/database/ContentObserver;

    iput-object p1, p0, Lcom/miui/gamebooster/service/w;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/gamebooster/service/w;->c:Landroid/os/Handler;

    move-object p2, p1

    check-cast p2, Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-virtual {p2}, Lcom/miui/gamebooster/service/GameBoosterService;->b0()Landroid/os/Handler;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/gamebooster/service/w;->d:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/miui/gamebooster/service/w;->J()V

    invoke-virtual {p0}, Lcom/miui/gamebooster/service/w;->d0()V

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/service/w;->w(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/service/w;->x(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/miui/gamebooster/service/w;->b:Landroid/content/Context;

    invoke-static {p1}, Lf7/a;->b(Landroid/content/Context;)Lf7/a;

    move-result-object p1

    new-instance p2, Lcom/miui/gamebooster/service/w$e;

    invoke-direct {p2, p0}, Lcom/miui/gamebooster/service/w$e;-><init>(Lcom/miui/gamebooster/service/w;)V

    invoke-virtual {p1, p2}, Lf7/a;->a(Lo4/a$a;)V

    iget-object p1, p0, Lcom/miui/gamebooster/service/w;->b:Landroid/content/Context;

    const-string p2, "audio"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/miui/gamebooster/service/w;->k:Landroid/media/AudioManager;

    return-void
.end method

.method public static declared-synchronized B(Landroid/content/Context;Landroid/os/Handler;)Lcom/miui/gamebooster/service/w;
    .locals 2

    const-class v0, Lcom/miui/gamebooster/service/w;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/gamebooster/service/w;->E:Lcom/miui/gamebooster/service/w;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/gamebooster/service/w;

    invoke-direct {v1, p0, p1}, Lcom/miui/gamebooster/service/w;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    sput-object v1, Lcom/miui/gamebooster/service/w;->E:Lcom/miui/gamebooster/service/w;

    :cond_0
    sget-object p0, Lcom/miui/gamebooster/service/w;->E:Lcom/miui/gamebooster/service/w;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private J()V
    .locals 2
    iget-object v0, p0, Lcom/miui/gamebooster/service/w;->b:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    move-result-object v0
    iput-object v0, p0, Lcom/miui/gamebooster/service/w;->j:Landroid/content/pm/PackageManager;
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V
    iput-object v0, p0, Lcom/miui/gamebooster/service/w;->a:Ljava/util/concurrent/CopyOnWriteArrayList;
    new-instance v0, La7/i;
    iget-object v1, p0, Lcom/miui/gamebooster/service/w;->b:Landroid/content/Context;
    invoke-direct {v0, v1, p0}, La7/i;-><init>(Landroid/content/Context;Lcom/miui/gamebooster/service/w;)V
    invoke-direct {p0, v0}, Lcom/miui/gamebooster/service/w;->v(La7/c;)V
    return-void
.end method

.method private M()V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/service/w;->b:Landroid/content/Context;

    invoke-static {v0}, La8/e1;->a(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "game_booster_limit_speed"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/miui/gamebooster/service/w;->p:I

    const-string v1, "game_booster_limit_time"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/miui/gamebooster/service/w;->q:I

    const-string v1, "game_booster_close_service_time"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/miui/gamebooster/service/w;->r:J

    return-void
.end method

.method private N(I)V
    .locals 3

    iget-object v0, p0, Lcom/miui/gamebooster/service/w;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gb_boosting"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, La8/c0;->i(Landroid/content/ContentResolver;Ljava/lang/String;II)V

    sget-boolean p1, Lsl/a;->a:Z

    if-eqz p1, :cond_0

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-lt p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/gamebooster/service/w;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x8000

    invoke-static {p1, v0, v1, v2}, Lm2/b;->a(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;I)V

    :cond_0
    return-void
.end method

.method private X(Z)V
    .locals 0
    return-void
.end method

.method static synthetic a(Lcom/miui/gamebooster/service/w;)Landroid/content/ServiceConnection;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/service/w;->A:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method static synthetic b(Lcom/miui/gamebooster/service/w;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/service/w;->b:Landroid/content/Context;

    return-object p0
.end method

.method private b0()V
    .locals 4

    invoke-virtual {p0}, Lcom/miui/gamebooster/service/w;->K()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "GameBoosterService"

    const-string v1, "setSpeedLaunch: don\'t excute on hotstart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/service/w;->z:Lcom/miui/gamebooster/service/w$h;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/miui/gamebooster/service/w;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/gamebooster/service/w;->c0(Z)V

    iget-object v0, p0, Lcom/miui/gamebooster/service/w;->c:Landroid/os/Handler;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/gamebooster/service/w;->z:Lcom/miui/gamebooster/service/w$h;

    if-nez v0, :cond_2

    new-instance v0, Lcom/miui/gamebooster/service/w$h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/gamebooster/service/w$h;-><init>(Lcom/miui/gamebooster/service/w;Lcom/miui/gamebooster/service/w$a;)V

    iput-object v0, p0, Lcom/miui/gamebooster/service/w;->z:Lcom/miui/gamebooster/service/w$h;

    :cond_2
    iget-object v0, p0, Lcom/miui/gamebooster/service/w;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/gamebooster/service/w;->z:Lcom/miui/gamebooster/service/w$h;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void
.end method

.method static synthetic c(Lcom/miui/gamebooster/service/w;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/service/w;->c:Landroid/os/Handler;

    return-object p0
.end method

.method private c0(Z)V
    .locals 0
    return-void
.end method

.method static synthetic d(Lcom/miui/gamebooster/service/w;Lcom/miui/gamebooster/service/IFreeformWindow;)Lcom/miui/gamebooster/service/IFreeformWindow;
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/service/w;->y:Lcom/miui/gamebooster/service/IFreeformWindow;

    return-object p1
.end method

.method static synthetic e(Lcom/miui/gamebooster/service/w;J)J
    .locals 0

    iput-wide p1, p0, Lcom/miui/gamebooster/service/w;->w:J

    return-wide p1
.end method

.method static synthetic f(Lcom/miui/gamebooster/service/w;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/service/w;->M()V

    return-void
.end method

.method static synthetic g(Lcom/miui/gamebooster/service/w;)I
    .locals 0

    iget p0, p0, Lcom/miui/gamebooster/service/w;->p:I

    return p0
.end method

.method static synthetic h(Lcom/miui/gamebooster/service/w;)I
    .locals 0

    iget p0, p0, Lcom/miui/gamebooster/service/w;->q:I

    return p0
.end method

.method static synthetic i(Lcom/miui/gamebooster/service/w;)J
    .locals 2

    iget-wide v0, p0, Lcom/miui/gamebooster/service/w;->r:J

    return-wide v0
.end method

.method static synthetic j(Lcom/miui/gamebooster/service/w;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/service/w;->c0(Z)V

    return-void
.end method

.method private j0(Ljava/lang/String;I)V
    .locals 1

    new-instance v0, Lcom/miui/gamebooster/service/w$f;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/gamebooster/service/w$f;-><init>(Lcom/miui/gamebooster/service/w;Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic k(Lcom/miui/gamebooster/service/w;)Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/service/w;->s:Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    return-object p0
.end method

.method static synthetic l(Lcom/miui/gamebooster/service/w;Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;)Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/service/w;->s:Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    return-object p1
.end method

.method static synthetic m(Lcom/miui/gamebooster/service/w;)I
    .locals 0

    iget p0, p0, Lcom/miui/gamebooster/service/w;->h:I

    return p0
.end method

.method static synthetic n(Lcom/miui/gamebooster/service/w;I)I
    .locals 0

    iput p1, p0, Lcom/miui/gamebooster/service/w;->h:I

    return p1
.end method

.method static synthetic o(Lcom/miui/gamebooster/service/w;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/service/w;->v:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic p(Lcom/miui/gamebooster/service/w;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/gamebooster/service/w;->i:Z

    return p0
.end method

.method static synthetic q(Lcom/miui/gamebooster/service/w;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/service/w;->i:Z

    return p1
.end method

.method static synthetic r(Lcom/miui/gamebooster/service/w;)La7/l;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/service/w;->t:La7/l;

    return-object p0
.end method

.method static synthetic s(Lcom/miui/gamebooster/service/w;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/service/w;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method static synthetic t(Lcom/miui/gamebooster/service/w;La7/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/service/w;->v(La7/c;)V

    return-void
.end method

.method static synthetic u(Lcom/miui/gamebooster/service/w;)Landroid/content/ServiceConnection;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/service/w;->B:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method private v(La7/c;)V
    .locals 1

    invoke-virtual {p1}, La7/c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/service/w;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private w(Landroid/content/Context;)V
    .locals 0
    return-void
.end method

.method private x(Landroid/content/Context;)V
    .locals 0
    return-void
.end method

.method public static z(Landroid/content/Context;)I
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "gb_boosting"

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-static {p0, v0, v1, v2}, La8/c0;->h(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method


# virtual methods
.method public A()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/service/w;->c:Landroid/os/Handler;

    return-object v0
.end method

.method public C()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/gamebooster/service/w;->e:Z

    return v0
.end method

.method public D()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/gamebooster/service/w;->i:Z

    return v0
.end method

.method public E()I
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/service/w;->n:I

    return v0
.end method

.method public F(I)La7/c;
    .locals 3

    iget-object v0, p0, Lcom/miui/gamebooster/service/w;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La7/c;

    invoke-virtual {v1}, La7/c;->e()I

    move-result v2

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public G()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/gamebooster/service/w;->u:Ljava/util/ArrayList;

    return-object v0
.end method

.method public H()I
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/service/w;->h:I

    return v0
.end method

.method public I()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/service/w;->d:Landroid/os/Handler;

    return-object v0
.end method

.method public K()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/gamebooster/service/w;->f:Z

    return v0
.end method

.method public L()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/gamebooster/service/w;->g:Z

    return v0
.end method

.method public O()V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/service/w;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/miui/gamebooster/service/w$g;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/service/w$g;-><init>(Lcom/miui/gamebooster/service/w;)V

    iput-object v0, p0, Lcom/miui/gamebooster/service/w;->l:Lcom/miui/gamebooster/service/w$g;

    iget-object v1, p0, Lcom/miui/gamebooster/service/w;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public P(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/service/w;->F(I)La7/c;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/miui/gamebooster/service/w;->e:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, La7/c;->a()V

    invoke-virtual {p1}, La7/c;->d()V

    invoke-virtual {p1}, La7/c;->c()V

    :cond_0
    return-void
.end method

.method public Q()V
    .locals 4

    const-string v0, "GameBoosterService"

    const-string v1, "resetGameMode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/gamebooster/service/w;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gb_notification"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, La8/c0;->i(Landroid/content/ContentResolver;Ljava/lang/String;II)V

    const-string v0, "game_IsAntiMsg"

    invoke-static {v0, v2}, Lr4/a;->n(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/miui/gamebooster/service/w;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gb_handsfree"

    invoke-static {v0, v1, v2, v3}, La8/c0;->i(Landroid/content/ContentResolver;Ljava/lang/String;II)V

    invoke-static {}, Lx4/z1;->e()I

    move-result v0

    invoke-static {}, Lx4/z1;->c()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/service/w;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gb_boosting"

    invoke-static {v0, v1, v2, v3}, La8/c0;->i(Landroid/content/ContentResolver;Ljava/lang/String;II)V

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/service/w;->b:Landroid/content/Context;

    invoke-static {v0, v2}, La8/l0;->k(Landroid/content/Context;Z)V

    const-string v0, "android.provider.MiuiSettings$ScreenEffect"

    const-string v1, "GAME_MODE"

    invoke-static {v0, v1}, La8/c0;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/miui/gamebooster/service/w;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/service/w;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "disable_voicetrigger"

    invoke-static {v0, v1, v2, v3}, La8/c0;->i(Landroid/content/ContentResolver;Ljava/lang/String;II)V

    invoke-static {v2}, Lm6/a;->m0(Z)V

    invoke-static {}, La8/g0;->n0()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, La8/g0;->j0()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/miui/gamebooster/service/w;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gb_gwsd"

    invoke-static {v0, v1, v2, v3}, La8/c0;->i(Landroid/content/ContentResolver;Ljava/lang/String;II)V

    :cond_3
    iget-object v0, p0, Lcom/miui/gamebooster/service/w;->b:Landroid/content/Context;

    invoke-static {v0}, Lf7/b;->d(Landroid/content/Context;)V

    invoke-static {}, Lf7/b;->c()V

    return-void
.end method

.method public R(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/miui/gamebooster/service/w;->m:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public S(Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/gamebooster/service/w;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/gamebooster/service/w;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_currentbooster_pkg_uid"

    invoke-static {v1, v0}, Lr4/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/gamebooster/service/w;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La7/c;

    if-nez p1, :cond_0

    instance-of v2, v1, La7/i;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, La7/c;->e()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/gamebooster/service/w;->P(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public T(Landroid/os/Message;)V
    .locals 3

    iget-boolean v0, p0, Lcom/miui/gamebooster/service/w;->f:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/service/w;->c:Landroid/os/Handler;

    if-eqz v0, :cond_1

    const-wide/16 v1, 0x28a

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_0
    const/16 p1, 0x7a

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/gamebooster/service/w;->f:Z

    :cond_1
    return-void
.end method

.method public U(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/gamebooster/service/w;->o:J

    return-void
.end method

.method public V(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/service/w;->f:Z

    return-void
.end method

.method public W(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/service/w;->g:Z

    return-void
.end method

.method public Y(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/service/w;->b:Landroid/content/Context;

    check-cast v0, Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-virtual {v0, p1}, Lcom/miui/gamebooster/service/GameBoosterService;->z0(Z)V

    return-void
.end method

.method public Z([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/service/w;->v:[Ljava/lang/String;

    iget-object p1, p0, Lcom/miui/gamebooster/service/w;->b:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/service/w;->w(Landroid/content/Context;)V

    return-void
.end method

.method public a0(I)V
    .locals 0

    iput p1, p0, Lcom/miui/gamebooster/service/w;->n:I

    return-void
.end method

.method public d0()V
    .locals 3

    iget-object v0, p0, Lcom/miui/gamebooster/service/w;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "xunyou_support"

    invoke-static {v1, v0}, La8/y;->d(Ljava/lang/String;Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/service/w;->u:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/miui/gamebooster/service/w;->b:Landroid/content/Context;

    const-string v1, "gamebooster"

    const-string v2, "xunyousupportlist"

    invoke-static {v1, v2, v0}, La8/y;->e(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x5

    if-le v1, v2, :cond_0

    iput-object v0, p0, Lcom/miui/gamebooster/service/w;->u:Ljava/util/ArrayList;

    :cond_0
    return-void
.end method

.method public e0()V
    .locals 4

    iget v0, p0, Lcom/miui/gamebooster/service/w;->n:I

    invoke-static {v0}, Lx4/z1;->m(I)I

    move-result v0

    iget-object v1, p0, Lcom/miui/gamebooster/service/w;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/gamebooster/service/w;->m:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lm7/a;->c(Landroid/content/Context;Ljava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/miui/gamebooster/service/w;->b0()V

    invoke-virtual {p0}, Lcom/miui/gamebooster/service/w;->f0()V

    return-void
.end method

.method public f0()V
    .locals 5

    iget-object v0, p0, Lcom/miui/gamebooster/service/w;->b:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/miui/gamebooster/service/w;->w(Landroid/content/Context;)V

    iget-boolean v0, p0, Lcom/miui/gamebooster/service/w;->e:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/service/w;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La7/c;

    invoke-virtual {v1}, La7/c;->d()V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/gamebooster/service/w;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/gamebooster/service/w;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_currentbooster_pkg_uid"

    invoke-static {v1, v0}, Lr4/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "key_booster_type"

    const-string v1, "Game Turbo"

    invoke-static {v0, v1}, Lr4/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iget-object v2, p0, Lcom/miui/gamebooster/service/w;->m:Ljava/lang/String;

    const-string v3, "turbo_pkg"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "game_service_open"

    invoke-static {v2, v0}, Lcom/miui/gamebooster/utils/a$n;->k(Ljava/lang/String;Ljava/util/Map;)V

    invoke-direct {p0, v1}, Lcom/miui/gamebooster/service/w;->X(Z)V

    invoke-direct {p0, v1}, Lcom/miui/gamebooster/service/w;->N(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/service/w;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "gb_boosting"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gamebooster/service/w;->C:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/miui/gamebooster/service/w;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "quick_reply"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gamebooster/service/w;->D:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gamebooster/service/w;->e:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start app... value"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/miui/gamebooster/service/w;->p:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/miui/gamebooster/service/w;->q:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GameBoosterService"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/miui/gamebooster/service/w;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, La7/c;

    invoke-virtual {v3}, La7/c;->c()V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/miui/gamebooster/service/w;->K()Z

    move-result v2

    invoke-static {v2}, La8/f2;->d(Z)V

    invoke-static {}, Lu6/e;->n()Lu6/e;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gamebooster/service/w;->b:Landroid/content/Context;

    iget-boolean v4, p0, Lcom/miui/gamebooster/service/w;->e:Z

    xor-int/2addr v4, v1

    invoke-virtual {v2, v3, p0, v4}, Lu6/e;->y(Landroid/content/Context;Lcom/miui/gamebooster/service/w;Z)V

    iget-object v2, p0, Lcom/miui/gamebooster/service/w;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/miui/gamebooster/service/w;->m:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Lo6/a;->e(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/miui/gamebooster/service/w;->m:Ljava/lang/String;

    iget v2, p0, Lcom/miui/gamebooster/service/w;->n:I

    invoke-direct {p0, v0, v2}, Lcom/miui/gamebooster/service/w;->j0(Ljava/lang/String;I)V

    invoke-static {}, Li7/i;->l()Li7/i;

    move-result-object v0

    invoke-virtual {v0, v1}, Li7/i;->E(Z)V

    iget-object v0, p0, Lcom/miui/gamebooster/service/w;->b:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/miui/gamebooster/service/w;->b:Landroid/content/Context;

    const-class v3, Lcom/miui/gamebooster/gbservices/FrameRateDataService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public g0()V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/gamebooster/service/w;->h0()V

    return-void
.end method

.method public h0()V
    .locals 6

    iget-boolean v0, p0, Lcom/miui/gamebooster/service/w;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/service/w;->b:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/miui/gamebooster/service/w;->b:Landroid/content/Context;

    const-class v3, Lcom/miui/gamebooster/gbservices/FrameRateDataService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/gamebooster/service/w;->c0(Z)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/miui/gamebooster/service/w;->o:J

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/gamebooster/service/w;->e:Z

    const-string v2, "GameBoosterService"

    const-string v3, "game exit app..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v2, p0, Lcom/miui/gamebooster/service/w;->w:J

    invoke-static {v2, v3}, Lcom/miui/gamebooster/utils/a$n;->c(J)V

    invoke-virtual {p0}, Lcom/miui/gamebooster/service/w;->A()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x7a

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    new-instance v2, Landroid/content/Intent;

    const-string v3, "action_toast_booster_fail"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/miui/gamebooster/service/w;->b:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v2, p0, Lcom/miui/gamebooster/service/w;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, La7/c;

    invoke-virtual {v3}, La7/c;->a()V

    const/16 v4, 0x8

    invoke-virtual {v3}, La7/c;->e()I

    move-result v5

    if-ne v4, v5, :cond_1

    check-cast v3, La7/e;

    invoke-virtual {v3}, La7/e;->f()V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/miui/gamebooster/service/w;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gamebooster/service/w;->C:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v2, p0, Lcom/miui/gamebooster/service/w;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gamebooster/service/w;->D:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-direct {p0, v0}, Lcom/miui/gamebooster/service/w;->N(I)V

    invoke-direct {p0, v0}, Lcom/miui/gamebooster/service/w;->X(Z)V

    invoke-static {}, Lf7/b;->c()V

    invoke-static {}, Lu6/e;->n()Lu6/e;

    move-result-object v2

    iget-boolean v3, p0, Lcom/miui/gamebooster/service/w;->e:Z

    xor-int/2addr v3, v1

    invoke-virtual {v2, v3}, Lu6/e;->w(Z)V

    iget-object v2, p0, Lcom/miui/gamebooster/service/w;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/miui/gamebooster/service/w;->m:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Lo6/a;->e(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-static {}, Li7/i;->l()Li7/i;

    move-result-object v1

    invoke-virtual {v1, v0}, Li7/i;->E(Z)V

    return-void
.end method

.method public i0()V
    .locals 4

    iget-object v0, p0, Lcom/miui/gamebooster/service/w;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La7/c;

    instance-of v2, v1, La7/b;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/miui/gamebooster/service/w;->e:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/miui/gamebooster/service/w;->b:Landroid/content/Context;

    invoke-static {v2}, Lm6/a;->e(Landroid/content/Context;)Lm6/a;

    invoke-static {}, La8/g0;->R()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-static {v3}, Lm6/a;->i(Z)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lm6/a;->Q(Z)V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/miui/gamebooster/service/w;->b:Landroid/content/Context;

    invoke-static {v2}, Lm6/a;->e(Landroid/content/Context;)Lm6/a;

    invoke-static {v3}, Lm6/a;->j(Z)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lm6/a;->P(Z)V

    :goto_1
    move-object v2, v1

    check-cast v2, La7/b;

    invoke-virtual {v2}, La7/b;->g()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, La7/c;->a()V

    :cond_2
    invoke-virtual {v1}, La7/c;->d()V

    invoke-virtual {v1}, La7/c;->c()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public k0()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/gamebooster/service/w;->X(Z)V

    iget-object v0, p0, Lcom/miui/gamebooster/service/w;->b:Landroid/content/Context;

    invoke-static {v0}, Lf7/a;->b(Landroid/content/Context;)Lf7/a;

    move-result-object v0

    invoke-virtual {v0}, Lf7/a;->c()V

    return-void
.end method

.method public y()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/service/w;->m:Ljava/lang/String;

    return-object v0
.end method

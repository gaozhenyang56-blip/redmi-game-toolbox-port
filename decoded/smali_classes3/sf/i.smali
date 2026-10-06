.class public Lsf/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsf/i$d;,
        Lsf/i$b;,
        Lsf/i$c;,
        Lsf/i$e;
    }
.end annotation


# static fields
.field private static final A:Landroid/net/Uri;

.field public static final B:Landroid/net/Uri;

.field public static final C:Landroid/net/Uri;

.field private static final y:Landroid/net/Uri;

.field private static final z:Landroid/net/Uri;


# instance fields
.field private a:Lsf/i$c;

.field private b:Lsf/i$b;

.field private c:Landroid/content/Context;

.field public d:Z

.field public e:J

.field public f:I

.field public g:Z

.field public h:Ljava/lang/String;

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:J

.field public p:Z

.field public q:Z

.field public r:J

.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/common/customview/AutoScrollViewPager;",
            ">;"
        }
    .end annotation
.end field

.field public t:Z

.field public u:J

.field public v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lsf/i$d;",
            ">;"
        }
    .end annotation
.end field

.field public w:Z

.field private x:Lsf/g;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "key_garbage_danger_in_flag"

    invoke-static {v0}, Lam/a;->f(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lsf/i;->y:Landroid/net/Uri;

    invoke-static {v0}, Lam/b;->d(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lsf/i;->z:Landroid/net/Uri;

    const-string v0, "key_has_app_update"

    invoke-static {v0}, Lam/a;->f(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lsf/i;->A:Landroid/net/Uri;

    const-string v0, "key_antivirus_danger"

    invoke-static {v0}, Lam/a;->f(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lsf/i;->B:Landroid/net/Uri;

    const-string v0, "key_antivirus_safe"

    invoke-static {v0}, Lam/a;->f(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lsf/i;->C:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsf/i;->d:Z

    const/4 v1, -0x1

    iput v1, p0, Lsf/i;->f:I

    iput-boolean v0, p0, Lsf/i;->g:Z

    iput-boolean v0, p0, Lsf/i;->j:Z

    iput-boolean v0, p0, Lsf/i;->k:Z

    iput-boolean v0, p0, Lsf/i;->l:Z

    iput-boolean v0, p0, Lsf/i;->m:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lsf/i;->n:Z

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lsf/i;->o:J

    iput-boolean v1, p0, Lsf/i;->p:Z

    iput-boolean v0, p0, Lsf/i;->q:Z

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lsf/i;->r:J

    iput-boolean v0, p0, Lsf/i;->t:Z

    iput-wide v2, p0, Lsf/i;->u:J

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lsf/i;->c:Landroid/content/Context;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lsf/i;->v:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lsf/i;->s:Ljava/util/List;

    if-eqz p2, :cond_0

    new-instance p1, Lsf/i$c;

    invoke-direct {p1, p0}, Lsf/i$c;-><init>(Lsf/i;)V

    iput-object p1, p0, Lsf/i;->a:Lsf/i$c;

    new-instance p1, Lsf/i$b;

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p1, p0, p2}, Lsf/i$b;-><init>(Lsf/i;Landroid/os/Handler;)V

    iput-object p1, p0, Lsf/i;->b:Lsf/i$b;

    new-instance p1, Lsf/g;

    iget-object p2, p0, Lsf/i;->c:Landroid/content/Context;

    invoke-direct {p1, p2, p0}, Lsf/g;-><init>(Landroid/content/Context;Lsf/i;)V

    iput-object p1, p0, Lsf/i;->x:Lsf/g;

    sget-object p2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v0, v1, [Ljava/lang/Void;

    invoke-virtual {p1, p2, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method static synthetic a(Lsf/i;Landroid/content/Context;ZLsf/i;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lsf/i;->l(Landroid/content/Context;ZLsf/i;Ljava/util/List;)V

    return-void
.end method

.method static synthetic b()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lsf/i;->y:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic c()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lsf/i;->z:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic d()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lsf/i;->A:Landroid/net/Uri;

    return-object v0
.end method

.method private l(Landroid/content/Context;ZLsf/i;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Lsf/i;",
            "Ljava/util/List<",
            "Lsf/i$d;",
            ">;)V"
        }
    .end annotation

    new-instance v6, Lsf/i$a;

    move-object v0, v6

    move-object v1, p0

    move v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lsf/i$a;-><init>(Lsf/i;ZLandroid/content/Context;Lsf/i;Ljava/util/List;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v6, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public e(Lsf/i$d;)V
    .locals 1

    iget-object v0, p0, Lsf/i;->v:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lsf/i;->v:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public f(Lcom/miui/common/customview/AutoScrollViewPager;)V
    .locals 1

    iget-object v0, p0, Lsf/i;->s:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lsf/i;->s:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public g()V
    .locals 2

    iget-object v0, p0, Lsf/i;->s:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lsf/i;->s:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lsf/i;->s:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/common/customview/AutoScrollViewPager;

    invoke-virtual {v1}, Lcom/miui/common/customview/AutoScrollViewPager;->m()V

    invoke-virtual {v1}, Lcom/miui/common/customview/AutoScrollViewPager;->f()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public h()V
    .locals 2

    iget-object v0, p0, Lsf/i;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lsf/i;->a:Lsf/i$c;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lsf/i;->c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    iget-object v0, p0, Lsf/i;->b:Lsf/i$b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lsf/i;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lsf/i;->b:Lsf/i$b;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1
    iget-object v0, p0, Lsf/i;->x:Lsf/g;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_2
    invoke-virtual {p0}, Lsf/i;->g()V

    iget-object v0, p0, Lsf/i;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public i(Lsf/i$d;Ljava/util/Set;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsf/i$d;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lsf/i;->w:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_a

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lsf/i$e;->d:Lsf/i$e;

    invoke-virtual {v1}, Lsf/i$e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v0, p0, Lsf/i;->d:Z

    iget-wide v1, p0, Lsf/i;->e:J

    invoke-interface {p1, v0, v1, v2}, Lsf/i$d;->onGarbageChange(ZJ)V

    goto :goto_0

    :cond_3
    sget-object v1, Lsf/i$e;->e:Lsf/i$e;

    invoke-virtual {v1}, Lsf/i$e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v3, p0, Lsf/i;->m:Z

    iget-boolean v4, p0, Lsf/i;->n:Z

    iget-wide v5, p0, Lsf/i;->o:J

    iget-boolean v7, p0, Lsf/i;->p:Z

    move-object v2, p1

    invoke-interface/range {v2 .. v7}, Lsf/i$d;->onNetworkAssistChange(ZZJZ)V

    goto :goto_0

    :cond_4
    sget-object v1, Lsf/i$e;->f:Lsf/i$e;

    invoke-virtual {v1}, Lsf/i$e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v3, p0, Lsf/i;->i:Z

    iget v4, p0, Lsf/i;->f:I

    iget-boolean v5, p0, Lsf/i;->g:Z

    const/4 v6, 0x3

    iget-object v7, p0, Lsf/i;->h:Ljava/lang/String;

    move-object v2, p1

    invoke-interface/range {v2 .. v7}, Lsf/i$d;->onPowerCenterChange(ZIZILjava/lang/String;)V

    goto :goto_0

    :cond_5
    sget-object v1, Lsf/i$e;->g:Lsf/i$e;

    invoke-virtual {v1}, Lsf/i$e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-boolean v0, p0, Lsf/i;->j:Z

    invoke-interface {p1, v0}, Lsf/i$d;->onSecurityScanChange(Z)V

    goto :goto_0

    :cond_6
    sget-object v1, Lsf/i$e;->i:Lsf/i$e;

    invoke-virtual {v1}, Lsf/i$e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-boolean v0, p0, Lsf/i;->k:Z

    invoke-interface {p1, v0}, Lsf/i$d;->onAppManagerChange(Z)V

    goto :goto_0

    :cond_7
    sget-object v1, Lsf/i$e;->h:Lsf/i$e;

    invoke-virtual {v1}, Lsf/i$e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-boolean v0, p0, Lsf/i;->l:Z

    invoke-interface {p1, v0}, Lsf/i$d;->onAntiSpamChange(Z)V

    goto/16 :goto_0

    :cond_8
    sget-object v1, Lsf/i$e;->j:Lsf/i$e;

    invoke-virtual {v1}, Lsf/i$e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-boolean v0, p0, Lsf/i;->q:Z

    iget-wide v1, p0, Lsf/i;->r:J

    invoke-interface {p1, v0, v1, v2}, Lsf/i$d;->onOptimizemanageChange(ZJ)V

    goto/16 :goto_0

    :cond_9
    sget-object v1, Lsf/i$e;->k:Lsf/i$e;

    invoke-virtual {v1}, Lsf/i$e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lsf/i;->t:Z

    invoke-interface {p1, v0}, Lsf/i$d;->onDeepCleanChange(Z)V

    goto/16 :goto_0

    :cond_a
    :goto_1
    return-void
.end method

.method public j()V
    .locals 4

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "miui.intent.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.miui.action.NETWORK_POLICY_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lsf/i;->c:Landroid/content/Context;

    iget-object v2, p0, Lsf/i;->a:Lsf/i$c;

    const/4 v3, 0x2

    invoke-static {v1, v2, v0, v3}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    iget-object v0, p0, Lsf/i;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lsf/i;->y:Landroid/net/Uri;

    iget-object v2, p0, Lsf/i;->b:Lsf/i$b;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lsf/i;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lsf/i;->z:Landroid/net/Uri;

    iget-object v2, p0, Lsf/i;->b:Lsf/i$b;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lsf/i;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lsf/i;->A:Landroid/net/Uri;

    iget-object v2, p0, Lsf/i;->b:Lsf/i$b;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lsf/i;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lsf/i;->B:Landroid/net/Uri;

    iget-object v2, p0, Lsf/i;->b:Lsf/i$b;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lsf/i;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lsf/i;->C:Landroid/net/Uri;

    iget-object v2, p0, Lsf/i;->b:Lsf/i$b;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lsf/i;->a:Lsf/i$c;

    iget-object v1, p0, Lsf/i;->v:Ljava/util/List;

    invoke-virtual {v0, v1}, Lsf/i$c;->b(Ljava/util/List;)V

    iget-object v0, p0, Lsf/i;->a:Lsf/i$c;

    iget-object v1, p0, Lsf/i;->c:Landroid/content/Context;

    invoke-static {v1}, Lme/w;->L(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lsf/i$c;->a(Z)V

    iget-object v0, p0, Lsf/i;->b:Lsf/i$b;

    iget-object v1, p0, Lsf/i;->v:Ljava/util/List;

    invoke-virtual {v0, v1}, Lsf/i$b;->a(Ljava/util/List;)V

    return-void
.end method

.method public k()V
    .locals 2

    iget-object v0, p0, Lsf/i;->s:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lsf/i;->s:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lsf/i;->s:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/common/customview/AutoScrollViewPager;

    invoke-virtual {v1}, Lcom/miui/common/customview/AutoScrollViewPager;->m()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

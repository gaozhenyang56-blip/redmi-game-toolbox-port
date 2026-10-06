.class public Lcom/miui/gamebooster/mutiwindow/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/gamebooster/mutiwindow/b$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gamebooster/mutiwindow/a$c;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/Object;

.field private e:Landroid/content/Context;

.field private volatile f:Z

.field private volatile g:Z

.field private volatile h:Z

.field private i:Landroid/os/Handler;

.field private j:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/mutiwindow/a;->c:Ljava/util/List;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/mutiwindow/a;->d:Ljava/lang/Object;

    new-instance v0, Lcom/miui/gamebooster/mutiwindow/a$a;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/miui/gamebooster/mutiwindow/a$a;-><init>(Lcom/miui/gamebooster/mutiwindow/a;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/gamebooster/mutiwindow/a;->j:Landroid/database/ContentObserver;

    iput-object p1, p0, Lcom/miui/gamebooster/mutiwindow/a;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/gamebooster/mutiwindow/a;->i:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/miui/gamebooster/mutiwindow/a;->i()V

    return-void
.end method

.method static synthetic a(Lcom/miui/gamebooster/mutiwindow/a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/gamebooster/mutiwindow/a;->a:Z

    return p0
.end method

.method static synthetic b(Lcom/miui/gamebooster/mutiwindow/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/mutiwindow/a;->a:Z

    return p1
.end method

.method static synthetic c(Lcom/miui/gamebooster/mutiwindow/a;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/mutiwindow/a;->e:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic d(Lcom/miui/gamebooster/mutiwindow/a;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/mutiwindow/a;->d:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic e(Lcom/miui/gamebooster/mutiwindow/a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/gamebooster/mutiwindow/a;->b:Z

    return p0
.end method

.method static synthetic f(Lcom/miui/gamebooster/mutiwindow/a;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/mutiwindow/a;->n(Z)V

    return-void
.end method

.method static synthetic g(Lcom/miui/gamebooster/mutiwindow/a;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/mutiwindow/a;->c:Ljava/util/List;

    return-object p0
.end method

.method static synthetic h(Lcom/miui/gamebooster/mutiwindow/a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/gamebooster/mutiwindow/a;->g:Z

    return p0
.end method

.method private j()V
    .locals 3

    iget-object v0, p0, Lcom/miui/gamebooster/mutiwindow/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v0, Lcom/miui/gamebooster/mutiwindow/a$b;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/mutiwindow/a$b;-><init>(Lcom/miui/gamebooster/mutiwindow/a;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private k(Lcom/gzy/redmiport/compat/process/ForegroundInfo;)V
    .locals 5

    const-string v0, "com.lbe.security.miui"

    iget-object v1, p1, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/mutiwindow/a;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/miui/gamebooster/mutiwindow/a;->a:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/miui/gamebooster/mutiwindow/a;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/miui/gamebooster/mutiwindow/a;->c:Ljava/util/List;

    iget-object v4, p1, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/miui/gamebooster/mutiwindow/a;->h:Z

    iget-boolean v1, p0, Lcom/miui/gamebooster/mutiwindow/a;->h:Z

    if-eqz v1, :cond_2

    invoke-direct {p0, v2}, Lcom/miui/gamebooster/mutiwindow/a;->n(Z)V

    goto :goto_1

    :cond_2
    iget-boolean v1, p0, Lcom/miui/gamebooster/mutiwindow/a;->b:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/miui/gamebooster/mutiwindow/a;->g:Z

    if-nez v1, :cond_4

    sget-object v1, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;->l:Ljava/util/List;

    iget-object v2, p1, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object p1, p1, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-static {p1}, La8/a0;->w(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    monitor-exit v0

    return-void

    :cond_3
    invoke-direct {p0, v3}, Lcom/miui/gamebooster/mutiwindow/a;->n(Z)V

    :cond_4
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private n(Z)V
    .locals 1

    const-string v0, "FreeformWindowHandler"

    if-eqz p1, :cond_0

    const-string p1, "enter QuickReply mode"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/gamebooster/mutiwindow/a;->b:Z

    iget-object p1, p0, Lcom/miui/gamebooster/mutiwindow/a;->e:Landroid/content/Context;

    invoke-static {p1}, Lf7/b;->w(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/gamebooster/mutiwindow/a;->b:Z

    const-string p1, "quit QuickReply mode"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/gamebooster/mutiwindow/a;->e:Landroid/content/Context;

    invoke-static {p1}, Lf7/b;->d(Landroid/content/Context;)V

    invoke-static {}, Lf7/b;->c()V

    :goto_0
    return-void
.end method


# virtual methods
.method public getId()Lf7/e;
    .locals 1

    sget-object v0, Lf7/e;->a:Lf7/e;

    return-object v0
.end method

.method public i()V
    .locals 4

    invoke-static {}, Lf7/b;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/miui/gamebooster/mutiwindow/a$c;

    iget-object v1, p0, Lcom/miui/gamebooster/mutiwindow/a;->i:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/miui/gamebooster/mutiwindow/a$c;-><init>(Lcom/miui/gamebooster/mutiwindow/a;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/gamebooster/mutiwindow/a;->j:Landroid/database/ContentObserver;

    iget-object v0, p0, Lcom/miui/gamebooster/mutiwindow/a;->e:Landroid/content/Context;

    invoke-static {v0}, Lf7/b;->h(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gamebooster/mutiwindow/a;->a:Z

    invoke-direct {p0}, Lcom/miui/gamebooster/mutiwindow/a;->j()V

    iget-object v0, p0, Lcom/miui/gamebooster/mutiwindow/a;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "quick_reply_enable"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gamebooster/mutiwindow/a;->j:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iput-boolean v3, p0, Lcom/miui/gamebooster/mutiwindow/a;->f:Z

    :cond_0
    return-void
.end method

.method public l()V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/gamebooster/mutiwindow/a;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/mutiwindow/a;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/mutiwindow/a;->j:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gamebooster/mutiwindow/a;->f:Z

    :cond_0
    return-void
.end method

.method public m(Z)V
    .locals 4

    iget-object v0, p0, Lcom/miui/gamebooster/mutiwindow/a;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "FreeformWindowHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setGameBoosterMode: open="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/miui/gamebooster/mutiwindow/a;->g:Z

    iget-boolean v1, p0, Lcom/miui/gamebooster/mutiwindow/a;->h:Z

    if-eqz v1, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/gamebooster/mutiwindow/a;->n(Z)V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public o(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/gamebooster/mutiwindow/a;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/miui/gamebooster/mutiwindow/a;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/miui/gamebooster/mutiwindow/a;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onForegroundInfoChanged(Lcom/gzy/redmiport/compat/process/ForegroundInfo;)Z
    .locals 5

    iget v0, p1, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mForegroundUid:I

    invoke-static {v0}, Lx4/z1;->m(I)I

    move-result v0

    invoke-static {}, Lx4/z1;->y()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x3e7

    if-ne v0, v3, :cond_0

    const/16 v4, 0xa

    if-eq v1, v4, :cond_1

    :cond_0
    if-eq v0, v3, :cond_2

    if-eq v1, v0, :cond_2

    :cond_1
    return v2

    :cond_2
    invoke-direct {p0, p1}, Lcom/miui/gamebooster/mutiwindow/a;->k(Lcom/gzy/redmiport/compat/process/ForegroundInfo;)V

    return v2
.end method

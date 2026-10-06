.class public Lvd/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static m:Lvd/b;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/Object;

.field private d:Landroid/content/Context;

.field private e:Lcom/gzy/redmiport/compat/process/IActivityChangeListener$Stub;

.field private f:Landroid/database/ContentObserver;

.field private g:Landroid/database/ContentObserver;

.field private h:I

.field private i:I

.field private j:Lvd/c;

.field private k:Z

.field private l:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lvd/b;->a:Ljava/util/List;

    const-string v0, "allowed_kill_battery_temp_threshhold"

    iput-object v0, p0, Lvd/b;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lvd/b;->c:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lvd/b;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lvd/b;->d:Landroid/content/Context;

    return-void
.end method

.method public static synthetic a(Lvd/b;)V
    .locals 0

    invoke-direct {p0}, Lvd/b;->r()V

    return-void
.end method

.method static synthetic b(Lvd/b;)V
    .locals 0

    invoke-direct {p0}, Lvd/b;->j()V

    return-void
.end method

.method static synthetic c(Lvd/b;)Z
    .locals 0

    invoke-direct {p0}, Lvd/b;->q()Z

    move-result p0

    return p0
.end method

.method static synthetic d(Lvd/b;)Z
    .locals 0

    iget-boolean p0, p0, Lvd/b;->k:Z

    return p0
.end method

.method static synthetic e(Lvd/b;)I
    .locals 0

    iget p0, p0, Lvd/b;->i:I

    return p0
.end method

.method static synthetic f(Lvd/b;)V
    .locals 0

    invoke-direct {p0}, Lvd/b;->o()V

    return-void
.end method

.method static synthetic g(Lvd/b;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lvd/b;->c:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic h(Lvd/b;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lvd/b;->a:Ljava/util/List;

    return-object p0
.end method

.method static synthetic i(Lvd/b;)Lvd/c;
    .locals 0

    iget-object p0, p0, Lvd/b;->j:Lvd/c;

    return-object p0
.end method

.method private j()V
    .locals 6

    iget-object v0, p0, Lvd/b;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "thermal_temp_state_value"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2}, La8/c0;->h(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    invoke-static {v0}, Lvd/b;->m(I)I

    move-result v1

    invoke-static {v0}, Lvd/b;->k(I)I

    move-result v2

    iget-object v3, p0, Lvd/b;->d:Landroid/content/Context;

    invoke-static {v3}, Lme/t;->j(Landroid/content/Context;)Lme/t;

    move-result-object v3

    invoke-virtual {v3}, Lme/t;->D()Z

    move-result v3

    iget-boolean v4, p0, Lvd/b;->k:Z

    const/4 v5, 0x2

    if-nez v4, :cond_0

    iget v4, p0, Lvd/b;->h:I

    if-eq v4, v5, :cond_0

    if-ne v1, v5, :cond_0

    if-eqz v3, :cond_0

    iget-object v3, p0, Lvd/b;->d:Landroid/content/Context;

    invoke-static {v3}, Lde/j;->Y(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    iget v3, p0, Lvd/b;->h:I

    if-ne v3, v5, :cond_1

    if-eq v1, v5, :cond_1

    iget-object v3, p0, Lvd/b;->d:Landroid/content/Context;

    invoke-static {v3}, Lde/j;->h(Landroid/content/Context;)V

    :cond_1
    :goto_0
    invoke-direct {p0}, Lvd/b;->q()Z

    move-result v3

    const/4 v4, 0x5

    if-eqz v3, :cond_2

    iget v5, p0, Lvd/b;->i:I

    if-eq v5, v4, :cond_2

    if-ne v2, v4, :cond_2

    invoke-direct {p0}, Lvd/b;->o()V

    goto :goto_1

    :cond_2
    iget-boolean v5, p0, Lvd/b;->k:Z

    if-eqz v5, :cond_3

    if-eq v2, v4, :cond_3

    invoke-direct {p0}, Lvd/b;->n()V

    :cond_3
    :goto_1
    iput v1, p0, Lvd/b;->h:I

    iput v2, p0, Lvd/b;->i:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "thermalValue:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",million_value:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",hundred_thousand_value="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",isBatteryHighTemp:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HighTempManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static k(I)I
    .locals 1

    const v0, 0x186a0

    div-int/2addr p0, v0

    rem-int/lit8 p0, p0, 0xa

    return p0
.end method

.method public static declared-synchronized l(Landroid/content/Context;)Lvd/b;
    .locals 2

    const-class v0, Lvd/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lvd/b;->m:Lvd/b;

    if-nez v1, :cond_0

    new-instance v1, Lvd/b;

    invoke-direct {v1, p0}, Lvd/b;-><init>(Landroid/content/Context;)V

    sput-object v1, Lvd/b;->m:Lvd/b;

    :cond_0
    sget-object p0, Lvd/b;->m:Lvd/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static m(I)I
    .locals 1

    const v0, 0xf4240

    div-int/2addr p0, v0

    rem-int/lit8 p0, p0, 0xa

    return p0
.end method

.method private n()V
    .locals 2

    iget-object v0, p0, Lvd/b;->j:Lvd/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lvd/c;->v(Z)V

    invoke-direct {p0}, Lvd/b;->v()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lvd/b;->k:Z

    return-void
.end method

.method private o()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lvd/b;->d:Landroid/content/Context;

    invoke-static {v0}, Lde/j;->h(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "HighTempManager"

    const-string v2, "handleHighTempWindowPolicy error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-object v0, p0, Lvd/b;->j:Lvd/c;

    if-nez v0, :cond_0

    new-instance v0, Lvd/c;

    iget-object v1, p0, Lvd/b;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lvd/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lvd/b;->j:Lvd/c;

    :cond_0
    iget-object v0, p0, Lvd/b;->j:Lvd/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lvd/c;->D(Z)V

    invoke-direct {p0}, Lvd/b;->p()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lvd/b;->k:Z

    return-void
.end method

.method private p()V
    .locals 2

    new-instance v0, Lvd/b$d;

    invoke-direct {v0, p0}, Lvd/b$d;-><init>(Lvd/b;)V

    iput-object v0, p0, Lvd/b;->e:Lcom/gzy/redmiport/compat/process/IActivityChangeListener$Stub;

    iget-object v0, p0, Lvd/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lvd/b;->a:Ljava/util/List;

    const-string v1, "com.android.phone"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lvd/b;->a:Ljava/util/List;

    const-string v1, "com.android.incallui"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v0, Lvd/a;

    invoke-direct {v0, p0}, Lvd/a;-><init>(Lvd/b;)V

    invoke-static {v0}, Lx4/f;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method private q()Z
    .locals 3

    iget-object v0, p0, Lvd/b;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "allowed_kill_battery_temp_threshhold"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2}, La8/c0;->h(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    return v2
.end method

.method private synthetic r()V
    .locals 0

    invoke-direct {p0}, Lvd/b;->s()V

    return-void
.end method

.method private declared-synchronized s()V
    .locals 11

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lvd/b;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lvd/b;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lvd/b;->a:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "HighTempManager"

    const-string v4, "miui.process.ProcessManager"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "registerActivityChangeListener"

    const/4 v6, 0x3

    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Ljava/util/List;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const-class v8, Ljava/util/List;

    aput-object v8, v7, v1

    const-string v8, "com.gzy.redmiport.compat.process.IActivityChangeListener"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const/4 v10, 0x2

    aput-object v8, v7, v10

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v9

    aput-object v2, v6, v1

    iget-object v0, p0, Lvd/b;->e:Lcom/gzy/redmiport/compat/process/IActivityChangeListener$Stub;

    aput-object v0, v6, v10

    invoke-static {v3, v4, v5, v7, v6}, Lbh/e;->f(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "HighTempManager"

    const-string v2, "registerActivityChangeListener exception!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method private v()V
    .locals 7

    const-string v0, "HighTempManager"

    :try_start_0
    iget-object v1, p0, Lvd/b;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string v1, "miui.process.ProcessManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v3, "unregisterActivityChanageListener"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-string v6, "com.gzy.redmiport.compat.process.IActivityChangeListener"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v5, v2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lvd/b;->e:Lcom/gzy/redmiport/compat/process/IActivityChangeListener$Stub;

    aput-object v6, v4, v2

    invoke-static {v0, v1, v3, v5, v4}, Lbh/e;->f(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "unregisterActivityChanageListener exception!"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public t()V
    .locals 2

    iget-object v0, p0, Lvd/b;->f:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lvd/b;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lvd/b;->f:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    invoke-direct {p0}, Lvd/b;->v()V

    return-void
.end method

.method public declared-synchronized u()V
    .locals 13

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lvd/b;->d:Landroid/content/Context;

    invoke-static {v0}, Lvd/c;->p(Landroid/content/Context;)V

    new-instance v0, Lvd/b$a;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lvd/b$a;-><init>(Lvd/b;Landroid/os/Handler;)V

    iput-object v0, p0, Lvd/b;->f:Landroid/database/ContentObserver;

    new-instance v0, Lvd/b$b;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lvd/b$b;-><init>(Lvd/b;Landroid/os/Handler;)V

    iput-object v0, p0, Lvd/b;->g:Landroid/database/ContentObserver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lvd/b;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "registerContentObserver"

    const/4 v2, 0x4

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/net/Uri;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-class v7, Landroid/database/ContentObserver;

    const/4 v8, 0x2

    aput-object v7, v3, v8

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x3

    aput-object v7, v3, v9

    new-array v10, v2, [Ljava/lang/Object;

    const-string v11, "thermal_temp_state_value"

    invoke-static {v11}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    aput-object v11, v10, v5

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v11, v10, v6

    iget-object v12, p0, Lvd/b;->f:Landroid/database/ContentObserver;

    aput-object v12, v10, v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v9

    invoke-static {v0, v1, v3, v10}, Lbh/f;->f(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lvd/b;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "registerContentObserver"

    new-array v3, v2, [Ljava/lang/Class;

    const-class v10, Landroid/net/Uri;

    aput-object v10, v3, v5

    aput-object v4, v3, v6

    const-class v4, Landroid/database/ContentObserver;

    aput-object v4, v3, v8

    aput-object v7, v3, v9

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "allowed_kill_battery_temp_threshhold"

    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    aput-object v4, v2, v5

    aput-object v11, v2, v6

    iget-object v4, p0, Lvd/b;->g:Landroid/database/ContentObserver;

    aput-object v4, v2, v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v9

    invoke-static {v0, v1, v3, v2}, Lbh/f;->f(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lvd/b$c;

    invoke-direct {v1, p0}, Lvd/b$c;-><init>(Lvd/b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "HighTempManager"

    const-string v2, "registerContentObserver error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

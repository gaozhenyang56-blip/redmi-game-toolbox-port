.class public Lo4/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo4/a$b;,
        Lo4/a$c;,
        Lo4/a$a;
    }
.end annotation


# static fields
.field private static c:Lo4/a;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo4/a$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lo4/a;->b:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lo4/a;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lo4/a;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lo4/a;->b:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic b(Lo4/a;Lo4/a$a;Lo4/a$c;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lo4/a;->e(Lo4/a$a;Lo4/a$c;Landroid/os/IBinder;)V

    return-void
.end method

.method public static declared-synchronized c(Landroid/content/Context;)Lo4/a;
    .locals 2

    const-class v0, Lo4/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lo4/a;->c:Lo4/a;

    if-nez v1, :cond_0

    new-instance v1, Lo4/a;

    invoke-direct {v1, p0}, Lo4/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Lo4/a;->c:Lo4/a;

    :cond_0
    sget-object p0, Lo4/a;->c:Lo4/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private e(Lo4/a$a;Lo4/a$c;Landroid/os/IBinder;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1, p3}, Lo4/a$a;->v1(Landroid/os/IBinder;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p2}, Lo4/a;->i(Lo4/a$c;)V

    :cond_0
    return-void
.end method

.method private g(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private i(Lo4/a$c;)V
    .locals 4

    if-eqz p1, :cond_2

    iget-object v0, p1, Lo4/a$c;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p1, Lo4/a$c;->d:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p1, Lo4/a$c;->d:I

    const-string v1, "BinderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lo4/a$c;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "   bindCount : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lo4/a$c;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p1, Lo4/a$c;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    :try_start_1
    iget-object v1, p1, Lo4/a$c;->e:Landroid/os/IBinder;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lo4/a$c;->f:Lo4/a$b;

    if-eqz v1, :cond_0

    const-string v1, "BinderManager"

    const-string v2, "BinderManager execute releaseService"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lo4/a;->a:Landroid/content/Context;

    iget-object v2, p1, Lo4/a$c;->f:Lo4/a$b;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    iget-object v1, p0, Lo4/a;->b:Ljava/util/Map;

    iget-object p1, p1, Lo4/a$c;->a:Ljava/lang/String;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string v1, "BinderManager"

    const-string v2, "IllegalArgumentException:"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;Ljava/lang/String;Lo4/a$a;)Z
    .locals 5

    iget-object v0, p0, Lo4/a;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo4/a$c;

    if-nez v0, :cond_0

    new-instance v0, Lo4/a$c;

    invoke-direct {v0, p0}, Lo4/a$c;-><init>(Lo4/a;)V

    iput-object p1, v0, Lo4/a$c;->a:Ljava/lang/String;

    iput-object p2, v0, Lo4/a$c;->b:Ljava/lang/String;

    new-instance p2, Lo4/a$b;

    invoke-direct {p2, p0, p1}, Lo4/a$b;-><init>(Lo4/a;Ljava/lang/String;)V

    iput-object p2, v0, Lo4/a$c;->f:Lo4/a$b;

    iget-object p2, p0, Lo4/a;->b:Ljava/util/Map;

    iget-object v1, v0, Lo4/a$c;->a:Ljava/lang/String;

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p2, v0, Lo4/a$c;->g:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget v1, v0, Lo4/a$c;->d:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lo4/a$c;->d:I

    iget-object v1, v0, Lo4/a$c;->f:Lo4/a$b;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-static {v1, v3}, Lo4/a$b;->b(Lo4/a$b;Z)Z

    :cond_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string p2, "BinderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "action:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "   bindCount : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lo4/a$c;->d:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, v0, Lo4/a$c;->e:Landroid/os/IBinder;

    if-eqz p2, :cond_2

    const-string p1, "BinderManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "find cached binder:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lo4/a$c;->e:Landroid/os/IBinder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " thread:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, v0, Lo4/a$c;->e:Landroid/os/IBinder;

    invoke-direct {p0, p3, v0, p1}, Lo4/a;->e(Lo4/a$a;Lo4/a$c;Landroid/os/IBinder;)V

    goto/16 :goto_1

    :cond_2
    iget-object v0, v0, Lo4/a$c;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget-object p2, p0, Lo4/a;->b:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo4/a$c;

    if-eqz p2, :cond_5

    iget-object v1, p2, Lo4/a$c;->e:Landroid/os/IBinder;

    if-eqz v1, :cond_3

    const-string p1, "BinderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "find cached binder in synchronized code:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p2, Lo4/a$c;->e:Landroid/os/IBinder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " thread:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "  isBindServiceSuccess:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p2, Lo4/a$c;->e:Landroid/os/IBinder;

    invoke-direct {p0, p3, p2, p1}, Lo4/a;->e(Lo4/a$a;Lo4/a$c;Landroid/os/IBinder;)V

    monitor-exit v0

    return v2

    :cond_3
    iget-object v1, p2, Lo4/a$c;->f:Lo4/a$b;

    invoke-virtual {v1, p3}, Lo4/a$b;->c(Lo4/a$a;)V

    iget-boolean p3, p2, Lo4/a$c;->c:Z

    if-nez p3, :cond_5

    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p1, p2, Lo4/a$c;->b:Ljava/lang/String;

    invoke-virtual {p3, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lo4/a;->a:Landroid/content/Context;

    iget-object v1, p2, Lo4/a$c;->f:Lo4/a$b;

    invoke-virtual {p1, p3, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    iget-object v1, p0, Lo4/a;->a:Landroid/content/Context;

    invoke-direct {p0, v1, p3}, Lo4/a;->g(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p3

    if-nez p3, :cond_4

    if-nez p1, :cond_4

    iput-boolean v3, p2, Lo4/a$c;->c:Z

    goto :goto_0

    :cond_4
    iput-boolean v2, p2, Lo4/a$c;->c:Z

    :goto_0
    const-string p2, "BinderManager"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "can not  find cached binder\uff0cbind service thread:"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "  isBindServiceSuccess:"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, p1

    :cond_5
    monitor-exit v0

    :goto_1
    return v2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public f(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lo4/a;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo4/a$c;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lo4/a$c;->f:Lo4/a$b;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lo4/a$b;->a(Lo4/a$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public h(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lo4/a;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo4/a$c;

    invoke-direct {p0, p1}, Lo4/a;->i(Lo4/a$c;)V

    return-void
.end method

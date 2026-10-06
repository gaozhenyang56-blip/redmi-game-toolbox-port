.class public Ldf/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldf/c$a;
.implements Ldf/b$b;
.implements Ldf/k$a;
.implements Landroid/content/ServiceConnection;


# static fields
.field private static final f:Ljava/lang/String;

.field private static g:Ldf/d;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Landroid/os/Handler;

.field private c:Ldf/c;

.field private d:Ldf/k;

.field private e:Ldf/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Ldf/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldf/d;->f:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldf/d;->a:Landroid/content/Context;

    invoke-direct {p0}, Ldf/d;->g()V

    invoke-direct {p0}, Ldf/d;->h()V

    return-void
.end method

.method public static f(Landroid/content/Context;)Ldf/d;
    .locals 1

    sget-object v0, Ldf/d;->g:Ldf/d;

    if-nez v0, :cond_0

    new-instance v0, Ldf/d;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Ldf/d;-><init>(Landroid/content/Context;)V

    sput-object v0, Ldf/d;->g:Ldf/d;

    :cond_0
    sget-object p0, Ldf/d;->g:Ldf/d;

    return-object p0
.end method

.method private g()V
    .locals 3

    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Ldf/d;->f:Ljava/lang/String;

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Ldf/d;->b:Landroid/os/Handler;

    return-void
.end method

.method private h()V
    .locals 3

    new-instance v0, Ldf/k;

    iget-object v1, p0, Ldf/d;->a:Landroid/content/Context;

    iget-object v2, p0, Ldf/d;->b:Landroid/os/Handler;

    invoke-direct {v0, v1, v2, p0}, Ldf/k;-><init>(Landroid/content/Context;Landroid/os/Handler;Ldf/k$a;)V

    iput-object v0, p0, Ldf/d;->d:Ldf/k;

    new-instance v0, Ldf/b;

    iget-object v1, p0, Ldf/d;->a:Landroid/content/Context;

    iget-object v2, p0, Ldf/d;->b:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Ldf/b;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Ldf/d;->e:Ldf/b;

    new-instance v0, Ldf/c;

    iget-object v1, p0, Ldf/d;->a:Landroid/content/Context;

    iget-object v2, p0, Ldf/d;->b:Landroid/os/Handler;

    invoke-direct {v0, v1, v2, p0}, Ldf/c;-><init>(Landroid/content/Context;Landroid/os/Handler;Ldf/c$a;)V

    iput-object v0, p0, Ldf/d;->c:Ldf/c;

    invoke-virtual {v0}, Ldf/c;->b()V

    return-void
.end method

.method private j()V
    .locals 3

    sget-object v0, Ldf/d;->f:Ljava/lang/String;

    const-string v1, "startWatchHandWritingProcess"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Ldf/d;->e:Ldf/b;

    invoke-virtual {v1}, Ldf/b;->d()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Ldf/d;->a:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method private k()V
    .locals 2

    sget-object v0, Ldf/d;->f:Ljava/lang/String;

    const-string v1, "stopWatchHandWritingProcess"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Ldf/d;->a:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Ldf/d;->a:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    invoke-direct {p0}, Ldf/d;->j()V

    return-void
.end method

.method public b()V
    .locals 0

    invoke-virtual {p0}, Ldf/d;->i()V

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Ldf/d;->d:Ldf/k;

    invoke-virtual {v0}, Ldf/k;->d()V

    iget-object v0, p0, Ldf/d;->e:Ldf/b;

    invoke-virtual {v0}, Ldf/b;->g()V

    invoke-direct {p0}, Ldf/d;->k()V

    iget-object v0, p0, Ldf/d;->e:Ldf/b;

    invoke-virtual {v0}, Ldf/b;->b()V

    return-void
.end method

.method public d()V
    .locals 1

    invoke-direct {p0}, Ldf/d;->k()V

    iget-object v0, p0, Ldf/d;->e:Ldf/b;

    invoke-virtual {v0}, Ldf/b;->g()V

    iget-object v0, p0, Ldf/d;->e:Ldf/b;

    invoke-virtual {v0}, Ldf/b;->b()V

    return-void
.end method

.method public e()V
    .locals 0

    invoke-virtual {p0}, Ldf/d;->i()V

    return-void
.end method

.method public i()V
    .locals 2

    iget-object v0, p0, Ldf/d;->c:Ldf/c;

    iget-object v1, p0, Ldf/d;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ldf/c;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ldf/d;->e:Ldf/b;

    invoke-virtual {v0}, Ldf/b;->b()V

    return-void

    :cond_0
    iget-object v0, p0, Ldf/d;->d:Ldf/k;

    invoke-virtual {v0}, Ldf/k;->c()V

    iget-object v0, p0, Ldf/d;->d:Ldf/k;

    invoke-virtual {v0}, Ldf/k;->a()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Ldf/d;->j()V

    iget-object v0, p0, Ldf/d;->e:Ldf/b;

    invoke-virtual {v0, p0}, Ldf/b;->f(Ldf/b$b;)V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    sget-object p1, Ldf/d;->f:Ljava/lang/String;

    const-string p2, "On HandWritingAllyService Connected"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Ldf/d;->e:Ldf/b;

    invoke-virtual {p1}, Ldf/b;->c()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    sget-object p1, Ldf/d;->f:Ljava/lang/String;

    const-string v0, "On HandWritingAllyService Disconnected , restart it now"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Ldf/d;->e:Ldf/b;

    invoke-virtual {p1}, Ldf/b;->b()V

    return-void
.end method

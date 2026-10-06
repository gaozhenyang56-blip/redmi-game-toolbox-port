.class Lp9/a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp9/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lp9/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lp9/a$c;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic c:Lp9/a;


# direct methods
.method private constructor <init>(Lp9/a;)V
    .locals 0

    iput-object p1, p0, Lp9/a$d;->c:Lp9/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lp9/a$d;->a:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lp9/a$d;->b:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lp9/a;Lp9/a$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lp9/a$d;-><init>(Lp9/a;)V

    return-void
.end method


# virtual methods
.method public a(Lp9/a$b;)V
    .locals 1

    iget-object v0, p0, Lp9/a$d;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Lp9/a$c;)V
    .locals 1

    iget-object v0, p0, Lp9/a$d;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c(Lp9/a$b;)V
    .locals 1

    iget-object v0, p0, Lp9/a$d;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lp9/a$d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public e(Lp9/a$c;)V
    .locals 1

    iget-object v0, p0, Lp9/a$d;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object p1, p0, Lp9/a$d;->c:Lp9/a;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lp9/a$d;->c:Lp9/a;

    invoke-static {p2}, Lcom/miui/guardprovider/aidl/IAntiVirusServer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/guardprovider/aidl/IAntiVirusServer;

    move-result-object v1

    invoke-static {v0, v1}, Lp9/a;->c(Lp9/a;Lcom/miui/guardprovider/aidl/IAntiVirusServer;)Lcom/miui/guardprovider/aidl/IAntiVirusServer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lp9/a$d;->c:Lp9/a;

    invoke-static {v0}, Lp9/a;->a(Lp9/a;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p2

    :try_start_2
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    iget-object p2, p0, Lp9/a$d;->a:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp9/a$b;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lp9/a$d;->c:Lp9/a;

    invoke-static {v1}, Lp9/a;->b(Lp9/a;)Lcom/miui/guardprovider/aidl/IAntiVirusServer;

    move-result-object v1

    invoke-interface {v0, v1}, Lp9/a$b;->a(Lcom/miui/guardprovider/aidl/IAntiVirusServer;)V

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lp9/a$d;->a:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object p1, p0, Lp9/a$d;->c:Lp9/a;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lp9/a$d;->c:Lp9/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lp9/a;->c(Lp9/a;Lcom/miui/guardprovider/aidl/IAntiVirusServer;)Lcom/miui/guardprovider/aidl/IAntiVirusServer;

    iget-object v0, p0, Lp9/a$d;->c:Lp9/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lp9/a;->f(Lp9/a;Z)Z

    iget-object v0, p0, Lp9/a$d;->c:Lp9/a;

    invoke-static {v0, v1}, Lp9/a;->d(Lp9/a;I)I

    iget-object v0, p0, Lp9/a$d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp9/a$c;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lp9/a$c;->a()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lp9/a$d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

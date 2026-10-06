.class Lcom/miui/securityscan/model/manualitem/KeySyncModel$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/securityscan/model/manualitem/KeySyncModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/accounts/Account;

.field private b:Lcom/miui/securityscan/model/manualitem/KeySyncModel;


# direct methods
.method public constructor <init>(Lcom/miui/securityscan/model/manualitem/KeySyncModel;Landroid/accounts/Account;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/miui/securityscan/model/manualitem/KeySyncModel$a;->a:Landroid/accounts/Account;

    iput-object p1, p0, Lcom/miui/securityscan/model/manualitem/KeySyncModel$a;->b:Lcom/miui/securityscan/model/manualitem/KeySyncModel;

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    const-string p1, "KeySyncModel"

    :try_start_0
    new-instance v0, Lcom/miui/securityscan/model/manualitem/KeySyncModel$b;

    iget-object v1, p0, Lcom/miui/securityscan/model/manualitem/KeySyncModel$a;->a:Landroid/accounts/Account;

    invoke-direct {v0, p2, v1}, Lcom/miui/securityscan/model/manualitem/KeySyncModel$b;-><init>(Landroid/os/IBinder;Landroid/accounts/Account;)V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/miui/securityscan/model/manualitem/KeySyncModel$b;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-wide/16 v3, 0x3e8

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p2, v0, v3, v4, v1}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/model/manualitem/KeySyncModel$a;->b:Lcom/miui/securityscan/model/manualitem/KeySyncModel;

    sget-object v1, Lcom/miui/securityscan/model/AbsModel$State;->SAFE:Lcom/miui/securityscan/model/AbsModel$State;

    invoke-virtual {v0, v1}, Lcom/miui/securityscan/model/AbsModel;->setSafe(Lcom/miui/securityscan/model/AbsModel$State;)V

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/miui/securityscan/model/manualitem/KeySyncModel$a;->b:Lcom/miui/securityscan/model/manualitem/KeySyncModel;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/miui/securityscan/model/AbsModel$State;->SAFE:Lcom/miui/securityscan/model/AbsModel$State;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/miui/securityscan/model/AbsModel$State;->DANGER:Lcom/miui/securityscan/model/AbsModel$State;

    :goto_0
    invoke-virtual {v1, v0}, Lcom/miui/securityscan/model/AbsModel;->setSafe(Lcom/miui/securityscan/model/AbsModel$State;)V

    :goto_1
    invoke-interface {p2}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p2

    const-string v0, "scan ExecutionException "

    goto :goto_2

    :catch_1
    move-exception p2

    const-string v0, "scan interrupted "

    :goto_2
    invoke-static {p1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method

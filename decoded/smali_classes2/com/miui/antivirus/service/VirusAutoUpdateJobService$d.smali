.class public Lcom/miui/antivirus/service/VirusAutoUpdateJobService$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/antivirus/service/VirusAutoUpdateJobService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field private a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private b:I

.field private c:Landroid/app/job/JobParameters;

.field final synthetic d:Lcom/miui/antivirus/service/VirusAutoUpdateJobService;


# direct methods
.method public constructor <init>(Lcom/miui/antivirus/service/VirusAutoUpdateJobService;Landroid/app/job/JobParameters;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/antivirus/service/VirusAutoUpdateJobService$d;->d:Lcom/miui/antivirus/service/VirusAutoUpdateJobService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/miui/antivirus/service/VirusAutoUpdateJobService$d;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput v0, p0, Lcom/miui/antivirus/service/VirusAutoUpdateJobService$d;->b:I

    iput-object p2, p0, Lcom/miui/antivirus/service/VirusAutoUpdateJobService$d;->c:Landroid/app/job/JobParameters;

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/miui/antivirus/service/VirusAutoUpdateJobService$d;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/antivirus/service/VirusAutoUpdateJobService$d;->b:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/antivirus/service/VirusAutoUpdateJobService$d;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/antivirus/service/VirusAutoUpdateJobService$d;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/antivirus/service/VirusAutoUpdateJobService$d;->d:Lcom/miui/antivirus/service/VirusAutoUpdateJobService;

    iget-object v2, p0, Lcom/miui/antivirus/service/VirusAutoUpdateJobService$d;->c:Landroid/app/job/JobParameters;

    invoke-virtual {v0, v2, v1}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    const-string v0, "VirusAutoUpdateJobService"

    const-string v1, "jobFinished"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

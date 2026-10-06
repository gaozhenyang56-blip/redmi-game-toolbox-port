.class public Lcom/miui/gamebooster/storage/utils/UninstallAppsManager$PackageDeleteObserver;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/storage/utils/UninstallAppsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PackageDeleteObserver"
.end annotation


# instance fields
.field private a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private k:Ljava/util/concurrent/atomic/AtomicInteger;

.field private l:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private m:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/miui/gamebooster/storage/utils/UninstallAppsManager$a;",
            ">;"
        }
    .end annotation
.end field

.field private volatile o:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/miui/gamebooster/storage/utils/UninstallAppsManager$PackageDeleteObserver;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gamebooster/storage/utils/UninstallAppsManager$PackageDeleteObserver;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/storage/utils/UninstallAppsManager$PackageDeleteObserver;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/storage/utils/UninstallAppsManager$PackageDeleteObserver;->n:Ljava/util/Set;

    iput v1, p0, Lcom/miui/gamebooster/storage/utils/UninstallAppsManager$PackageDeleteObserver;->o:I

    return-void
.end method

.method static synthetic v1(Lcom/miui/gamebooster/storage/utils/UninstallAppsManager$PackageDeleteObserver;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/storage/utils/UninstallAppsManager$PackageDeleteObserver;->n:Ljava/util/Set;

    return-object p0
.end method


# virtual methods
.method o8(Lcom/miui/gamebooster/storage/utils/UninstallAppsManager$a;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/storage/utils/UninstallAppsManager$PackageDeleteObserver;->n:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method p8()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/storage/utils/UninstallAppsManager$PackageDeleteObserver;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public packageDeleted(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lcom/miui/gamebooster/storage/utils/UninstallAppsManager$PackageDeleteObserver;->m:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    iget p1, p0, Lcom/miui/gamebooster/storage/utils/UninstallAppsManager$PackageDeleteObserver;->o:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/miui/gamebooster/storage/utils/UninstallAppsManager$PackageDeleteObserver;->o:I

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lcom/miui/gamebooster/storage/utils/UninstallAppsManager$PackageDeleteObserver;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget p1, p0, Lcom/miui/gamebooster/storage/utils/UninstallAppsManager$PackageDeleteObserver;->o:I

    iget-object p2, p0, Lcom/miui/gamebooster/storage/utils/UninstallAppsManager$PackageDeleteObserver;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    if-ne p1, p2, :cond_1

    invoke-virtual {p0}, Lcom/miui/gamebooster/storage/utils/UninstallAppsManager$PackageDeleteObserver;->q8()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method q8()V
    .locals 3

    iget-object v0, p0, Lcom/miui/gamebooster/storage/utils/UninstallAppsManager$PackageDeleteObserver;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    iput v1, p0, Lcom/miui/gamebooster/storage/utils/UninstallAppsManager$PackageDeleteObserver;->o:I

    iget-object v0, p0, Lcom/miui/gamebooster/storage/utils/UninstallAppsManager$PackageDeleteObserver;->n:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gamebooster/storage/utils/UninstallAppsManager$a;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/miui/gamebooster/storage/utils/UninstallAppsManager$PackageDeleteObserver;->m:Ljava/util/Set;

    invoke-interface {v1, v2}, Lcom/miui/gamebooster/storage/utils/UninstallAppsManager$a;->H(Ljava/util/Set;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method r8(Lcom/miui/gamebooster/storage/utils/UninstallAppsManager$a;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/storage/utils/UninstallAppsManager$PackageDeleteObserver;->n:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public s8(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/storage/utils/UninstallAppsManager$PackageDeleteObserver;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gamebooster/storage/utils/UninstallAppsManager$PackageDeleteObserver;->m:Ljava/util/Set;

    iget-object p1, p0, Lcom/miui/gamebooster/storage/utils/UninstallAppsManager$PackageDeleteObserver;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method t8(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/storage/utils/UninstallAppsManager$PackageDeleteObserver;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.class public Lcom/miui/optimizecenter/storage/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/optimizecenter/storage/a$g;,
        Lcom/miui/optimizecenter/storage/a$d;,
        Lcom/miui/optimizecenter/storage/a$e;,
        Lcom/miui/optimizecenter/storage/a$f;,
        Lcom/miui/optimizecenter/storage/a$c;
    }
.end annotation


# static fields
.field private static volatile q:Lcom/miui/optimizecenter/storage/a;

.field public static final r:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final s:[Lra/j0;

.field private static final t:[Lra/j0;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lra/j0;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroidx/lifecycle/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/c0<",
            "Ljava/util/List<",
            "Lwa/a;",
            ">;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/miui/optimizecenter/storage/a$g;

.field private g:Lva/c;

.field private h:Lcom/miui/optimizecenter/storage/a$e;

.field private final i:Lcom/miui/optimizecenter/storage/AppSystemDataManager;

.field private final j:Lxa/b;

.field private k:Z

.field private l:Lcom/miui/optimizecenter/storage/a$c;

.field private final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/optimizecenter/storage/a$d;",
            ">;"
        }
    .end annotation
.end field

.field private n:J

.field private o:J

.field private p:Landroidx/lifecycle/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/c0<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/miui/optimizecenter/storage/a;->r:Ljava/util/Set;

    const/16 v1, 0x8

    new-array v1, v1, [Lra/j0;

    sget-object v2, Lra/j0;->b:Lra/j0;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lra/j0;->c:Lra/j0;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Lra/j0;->e:Lra/j0;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sget-object v6, Lra/j0;->f:Lra/j0;

    const/4 v7, 0x3

    aput-object v6, v1, v7

    sget-object v8, Lra/j0;->g:Lra/j0;

    const/4 v9, 0x4

    aput-object v8, v1, v9

    sget-object v10, Lra/j0;->h:Lra/j0;

    const/4 v11, 0x5

    aput-object v10, v1, v11

    sget-object v12, Lra/j0;->i:Lra/j0;

    const/4 v13, 0x6

    aput-object v12, v1, v13

    sget-object v13, Lra/j0;->j:Lra/j0;

    const/4 v14, 0x7

    aput-object v13, v1, v14

    sput-object v1, Lcom/miui/optimizecenter/storage/a;->s:[Lra/j0;

    new-array v1, v11, [Lra/j0;

    aput-object v2, v1, v3

    aput-object v6, v1, v4

    aput-object v8, v1, v5

    aput-object v10, v1, v7

    aput-object v12, v1, v9

    sput-object v1, Lcom/miui/optimizecenter/storage/a;->t:[Lra/j0;

    sget-boolean v1, Lsl/a;->a:Z

    if-eqz v1, :cond_0

    const-string v1, "com.miui.cleaner"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v1, "com.miui.cleanmaster"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/optimizecenter/storage/a;->b:Ljava/util/Set;

    new-instance v0, Landroidx/lifecycle/c0;

    invoke-direct {v0}, Landroidx/lifecycle/c0;-><init>()V

    iput-object v0, p0, Lcom/miui/optimizecenter/storage/a;->c:Landroidx/lifecycle/c0;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/optimizecenter/storage/a;->d:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/optimizecenter/storage/a;->e:Ljava/util/Set;

    new-instance v0, Lcom/miui/optimizecenter/storage/a$e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/optimizecenter/storage/a$e;-><init>(Lcom/miui/optimizecenter/storage/a;Lcom/miui/optimizecenter/storage/a$a;)V

    iput-object v0, p0, Lcom/miui/optimizecenter/storage/a;->h:Lcom/miui/optimizecenter/storage/a$e;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/optimizecenter/storage/a;->m:Ljava/util/List;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/optimizecenter/storage/a;->n:J

    iput-wide v0, p0, Lcom/miui/optimizecenter/storage/a;->o:J

    new-instance v0, Landroidx/lifecycle/c0;

    invoke-direct {v0}, Landroidx/lifecycle/c0;-><init>()V

    iput-object v0, p0, Lcom/miui/optimizecenter/storage/a;->p:Landroidx/lifecycle/c0;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/optimizecenter/storage/a;->a:Landroid/content/Context;

    new-instance v0, Lcom/miui/optimizecenter/storage/a$g;

    invoke-direct {v0}, Lcom/miui/optimizecenter/storage/a$g;-><init>()V

    iput-object v0, p0, Lcom/miui/optimizecenter/storage/a;->f:Lcom/miui/optimizecenter/storage/a$g;

    invoke-static {p1}, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->k(Landroid/content/Context;)Lcom/miui/optimizecenter/storage/AppSystemDataManager;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/optimizecenter/storage/a;->i:Lcom/miui/optimizecenter/storage/AppSystemDataManager;

    invoke-static {}, Lxa/b;->f()Lxa/b;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/optimizecenter/storage/a;->j:Lxa/b;

    invoke-direct {p0}, Lcom/miui/optimizecenter/storage/a;->R()V

    return-void
.end method

.method private C(ILjava/lang/String;I)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.storage.handle_task"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "key_task_id"

    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "package_name"

    invoke-virtual {v1, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "uid"

    invoke-virtual {v1, p1, p3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "com.miui.securitycenter"

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    return-object v0
.end method

.method public static D(Landroid/content/Context;)Lcom/miui/optimizecenter/storage/a;
    .locals 2

    sget-object v0, Lcom/miui/optimizecenter/storage/a;->q:Lcom/miui/optimizecenter/storage/a;

    if-nez v0, :cond_1

    const-class v0, Lcom/miui/optimizecenter/storage/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/optimizecenter/storage/a;->q:Lcom/miui/optimizecenter/storage/a;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/optimizecenter/storage/a;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/miui/optimizecenter/storage/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/miui/optimizecenter/storage/a;->q:Lcom/miui/optimizecenter/storage/a;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/miui/optimizecenter/storage/a;->q:Lcom/miui/optimizecenter/storage/a;

    return-object p0
.end method

.method private I(Ljava/util/List;)Lcom/miui/optimizecenter/storage/model/StorageSizeBean;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lwa/a;",
            ">;)",
            "Lcom/miui/optimizecenter/storage/model/StorageSizeBean;"
        }
    .end annotation

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    new-instance v1, Lcom/miui/optimizecenter/storage/model/StorageSizeBean;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3, v2, v3}, Lcom/miui/optimizecenter/storage/model/StorageSizeBean;-><init>(JJ)V

    if-nez p1, :cond_0

    return-object v1

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lwa/a;

    iget-object v3, p0, Lcom/miui/optimizecenter/storage/a;->d:Ljava/util/Set;

    iget-object v4, v2, Lwa/a;->pkgName:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lwa/a;->getDataSize()J

    move-result-wide v3

    iget-object v5, v2, Lwa/a;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, v2, Lwa/a;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lwa/a;->isInstalledOnUserData()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v2}, Lwa/a;->getAppSize()J

    move-result-wide v5

    add-long/2addr v3, v5

    :cond_2
    invoke-virtual {v1}, Lcom/miui/optimizecenter/storage/model/StorageSizeBean;->getTotal()J

    move-result-wide v5

    add-long/2addr v5, v3

    invoke-virtual {v1, v5, v6}, Lcom/miui/optimizecenter/storage/model/StorageSizeBean;->setTotal(J)V

    iget-boolean v2, v2, Lwa/a;->isWOrkProfile:Z

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/miui/optimizecenter/storage/model/StorageSizeBean;->getWorkSize()J

    move-result-wide v5

    add-long/2addr v5, v3

    invoke-virtual {v1, v5, v6}, Lcom/miui/optimizecenter/storage/model/StorageSizeBean;->setWorkSize(J)V

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "totalSize = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/miui/optimizecenter/storage/model/StorageSizeBean;->getTotal()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ",workSize = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/miui/optimizecenter/storage/model/StorageSizeBean;->getWorkSize()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StorageDataManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/optimizecenter/storage/a;->h:Lcom/miui/optimizecenter/storage/a$e;

    invoke-virtual {v1}, Lcom/miui/optimizecenter/storage/model/StorageSizeBean;->getTotal()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/miui/optimizecenter/storage/a$e;->h(J)V

    return-object v1
.end method

.method private synthetic J(Lwa/a;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/optimizecenter/storage/a;->M(Lwa/a;)V

    return-void
.end method

.method private synthetic K(Ljava/lang/String;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/miui/optimizecenter/storage/a;->O(Ljava/lang/String;I)V

    return-void
.end method

.method private synthetic L(Lxa/b$e;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/a;->j:Lxa/b;

    invoke-virtual {v0, p1}, Lxa/b;->j(Lxa/b$e;)V

    return-void
.end method

.method private R()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/miui/optimizecenter/storage/a;->l:Lcom/miui/optimizecenter/storage/a$c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/optimizecenter/storage/a$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/optimizecenter/storage/a$c;-><init>(Lcom/miui/optimizecenter/storage/a;Lcom/miui/optimizecenter/storage/a$a;)V

    iput-object v0, p0, Lcom/miui/optimizecenter/storage/a;->l:Lcom/miui/optimizecenter/storage/a$c;

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/optimizecenter/storage/a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/optimizecenter/storage/a;->l:Lcom/miui/optimizecenter/storage/a$c;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v4, 0x4

    invoke-static {v1, v2, v3, v0, v4}, Lx4/v;->o(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static synthetic a(Lcom/miui/optimizecenter/storage/a;Lxa/b$e;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/optimizecenter/storage/a;->L(Lxa/b$e;)V

    return-void
.end method

.method public static synthetic b(Lcom/miui/optimizecenter/storage/a;Lwa/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/optimizecenter/storage/a;->J(Lwa/a;)V

    return-void
.end method

.method public static synthetic c(Lcom/miui/optimizecenter/storage/a;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/optimizecenter/storage/a;->K(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic d(Lcom/miui/optimizecenter/storage/a;)J
    .locals 2

    iget-wide v0, p0, Lcom/miui/optimizecenter/storage/a;->o:J

    return-wide v0
.end method

.method static synthetic e(Lcom/miui/optimizecenter/storage/a;J)J
    .locals 0

    iput-wide p1, p0, Lcom/miui/optimizecenter/storage/a;->o:J

    return-wide p1
.end method

.method static synthetic f(Lcom/miui/optimizecenter/storage/a;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/miui/optimizecenter/storage/a;->d:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic g(Lcom/miui/optimizecenter/storage/a;)Lxa/b;
    .locals 0

    iget-object p0, p0, Lcom/miui/optimizecenter/storage/a;->j:Lxa/b;

    return-object p0
.end method

.method static synthetic h(Lcom/miui/optimizecenter/storage/a;Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/optimizecenter/storage/a;->w(Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic i(Lcom/miui/optimizecenter/storage/a;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/miui/optimizecenter/storage/a;->e:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic j(Lcom/miui/optimizecenter/storage/a;)Lva/c;
    .locals 0

    iget-object p0, p0, Lcom/miui/optimizecenter/storage/a;->g:Lva/c;

    return-object p0
.end method

.method static synthetic k(Lcom/miui/optimizecenter/storage/a;Ljava/util/Set;Lva/c;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/optimizecenter/storage/a;->x(Ljava/util/Set;Lva/c;)V

    return-void
.end method

.method static synthetic l(Lcom/miui/optimizecenter/storage/a;)Lcom/miui/optimizecenter/storage/a$g;
    .locals 0

    iget-object p0, p0, Lcom/miui/optimizecenter/storage/a;->f:Lcom/miui/optimizecenter/storage/a$g;

    return-object p0
.end method

.method static synthetic m(Lcom/miui/optimizecenter/storage/a;)Lcom/miui/optimizecenter/storage/a$e;
    .locals 0

    iget-object p0, p0, Lcom/miui/optimizecenter/storage/a;->h:Lcom/miui/optimizecenter/storage/a$e;

    return-object p0
.end method

.method static synthetic n(Lcom/miui/optimizecenter/storage/a;ILjava/lang/String;I)Landroid/content/Intent;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/optimizecenter/storage/a;->C(ILjava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method static synthetic o(Lcom/miui/optimizecenter/storage/a;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/optimizecenter/storage/a;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic p(Lcom/miui/optimizecenter/storage/a;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/miui/optimizecenter/storage/a;->b:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic q(Lcom/miui/optimizecenter/storage/a;)Lcom/miui/optimizecenter/storage/AppSystemDataManager;
    .locals 0

    iget-object p0, p0, Lcom/miui/optimizecenter/storage/a;->i:Lcom/miui/optimizecenter/storage/AppSystemDataManager;

    return-object p0
.end method

.method static synthetic r(Lcom/miui/optimizecenter/storage/a;)Landroidx/lifecycle/c0;
    .locals 0

    iget-object p0, p0, Lcom/miui/optimizecenter/storage/a;->c:Landroidx/lifecycle/c0;

    return-object p0
.end method

.method static synthetic s(Lcom/miui/optimizecenter/storage/a;Ljava/util/List;)Lcom/miui/optimizecenter/storage/model/StorageSizeBean;
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/optimizecenter/storage/a;->I(Ljava/util/List;)Lcom/miui/optimizecenter/storage/model/StorageSizeBean;

    move-result-object p0

    return-object p0
.end method

.method static synthetic t(Lcom/miui/optimizecenter/storage/a;)J
    .locals 2

    iget-wide v0, p0, Lcom/miui/optimizecenter/storage/a;->n:J

    return-wide v0
.end method

.method private w(Ljava/util/HashMap;)V
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/miui/optimizecenter/storage/a;->h:Lcom/miui/optimizecenter/storage/a$e;

    invoke-virtual {p1}, Lcom/miui/optimizecenter/storage/a$e;->e()V

    return-void

    :cond_0
    const-string v0, "StorageDataManager"

    const-string v1, "start scan rule"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/a;->j:Lxa/b;

    invoke-static {p1}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/optimizecenter/storage/a;->e:Ljava/util/Set;

    iget-object v2, p0, Lcom/miui/optimizecenter/storage/a;->h:Lcom/miui/optimizecenter/storage/a$e;

    invoke-virtual {v0, p1, v1, v2}, Lxa/b;->i(Lcom/google/common/collect/ImmutableMap;Ljava/util/Set;Lxa/b$f;)V

    return-void
.end method

.method private x(Ljava/util/Set;Lva/c;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lva/c;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object v0

    sget-object v1, Lcom/miui/optimizecenter/storage/a;->t:[Lra/j0;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    new-instance v5, Lva/b;

    invoke-direct {v5, p2, v4, p1}, Lva/b;-><init>(Lva/c;Lra/j0;Ljava/util/Set;)V

    invoke-virtual {v0, v5}, Lef/z;->b(Ljava/lang/Runnable;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public A(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lwa/a;",
            ">;)",
            "Ljava/util/List<",
            "Lwa/a;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lx4/z1;->y()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    return-object v1

    :cond_0
    new-instance v2, Ljava/util/HashSet;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4}, Ljava/util/HashSet;-><init>(IF)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lwa/a;

    iget v4, v3, Lwa/a;->uid:I

    invoke-static {v4}, Lx4/z1;->m(I)I

    move-result v4

    if-eq v4, v0, :cond_2

    goto :goto_0

    :cond_2
    sget-object v4, Lcom/miui/optimizecenter/storage/a;->r:Ljava/util/Set;

    iget-object v5, v3, Lwa/a;->pkgName:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v3, Lwa/a;->pkgName:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-boolean v4, v3, Lwa/a;->isSystemApp:Z

    if-eqz v4, :cond_3

    iget-wide v4, v3, Lwa/a;->totalSize:J

    const-wide/32 v6, 0x989680

    cmp-long v4, v4, v6

    if-gez v4, :cond_3

    goto :goto_0

    :cond_3
    iget-object v4, v3, Lwa/a;->pkgName:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method public B()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/miui/optimizecenter/widget/storage/a;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/miui/optimizecenter/storage/a;->b:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lra/j0;

    invoke-virtual {p0, v2}, Lcom/miui/optimizecenter/storage/a;->G(Lra/j0;)Lcom/miui/optimizecenter/widget/storage/a;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public E()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/a;->p:Landroidx/lifecycle/c0;

    return-object v0
.end method

.method public F()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/optimizecenter/storage/a;->n:J

    return-wide v0
.end method

.method public G(Lra/j0;)Lcom/miui/optimizecenter/widget/storage/a;
    .locals 1

    sget-object v0, Lcom/miui/optimizecenter/storage/a$b;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    sget-object p1, Lcom/miui/optimizecenter/widget/storage/a;->n:Lcom/miui/optimizecenter/widget/storage/a;

    return-object p1

    :pswitch_0
    sget-object p1, Lcom/miui/optimizecenter/widget/storage/a;->m:Lcom/miui/optimizecenter/widget/storage/a;

    return-object p1

    :pswitch_1
    sget-object p1, Lcom/miui/optimizecenter/widget/storage/a;->l:Lcom/miui/optimizecenter/widget/storage/a;

    return-object p1

    :pswitch_2
    sget-object p1, Lcom/miui/optimizecenter/widget/storage/a;->k:Lcom/miui/optimizecenter/widget/storage/a;

    return-object p1

    :pswitch_3
    sget-object p1, Lcom/miui/optimizecenter/widget/storage/a;->j:Lcom/miui/optimizecenter/widget/storage/a;

    return-object p1

    :pswitch_4
    sget-object p1, Lcom/miui/optimizecenter/widget/storage/a;->i:Lcom/miui/optimizecenter/widget/storage/a;

    return-object p1

    :pswitch_5
    sget-object p1, Lcom/miui/optimizecenter/widget/storage/a;->h:Lcom/miui/optimizecenter/widget/storage/a;

    return-object p1

    :pswitch_6
    sget-object p1, Lcom/miui/optimizecenter/widget/storage/a;->o:Lcom/miui/optimizecenter/widget/storage/a;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public H()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lra/j0;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/optimizecenter/storage/a;->b:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public M(Lwa/a;)V
    .locals 5

    sget-object v0, Lra/j0;->c:Lra/j0;

    invoke-virtual {v0}, Lra/j0;->a()Lcom/miui/optimizecenter/storage/model/StorageItemInfo;

    move-result-object v0

    iget-wide v1, v0, Lcom/miui/optimizecenter/storage/model/StorageItemInfo;->c:J

    iget-wide v3, p1, Lwa/a;->totalSize:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/miui/optimizecenter/storage/model/StorageItemInfo;->c:J

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/a;->c:Landroidx/lifecycle/c0;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/a;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/optimizecenter/storage/a$d;

    invoke-interface {v2, p1}, Lcom/miui/optimizecenter/storage/a$d;->w(Lwa/a;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/optimizecenter/storage/a;->c:Landroidx/lifecycle/c0;

    invoke-virtual {p1, v1}, Landroidx/lifecycle/c0;->m(Ljava/lang/Object;)V

    return-void
.end method

.method public N(Lwa/a;J)V
    .locals 2

    sget-object p1, Lra/j0;->c:Lra/j0;

    invoke-virtual {p1}, Lra/j0;->a()Lcom/miui/optimizecenter/storage/model/StorageItemInfo;

    move-result-object p1

    iget-wide v0, p1, Lcom/miui/optimizecenter/storage/model/StorageItemInfo;->c:J

    sub-long/2addr v0, p2

    iput-wide v0, p1, Lcom/miui/optimizecenter/storage/model/StorageItemInfo;->c:J

    invoke-virtual {p0}, Lcom/miui/optimizecenter/storage/a;->Q()V

    return-void
.end method

.method public O(Ljava/lang/String;I)V
    .locals 7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/optimizecenter/storage/a;->c:Landroidx/lifecycle/c0;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_1

    return-void

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lwa/a;

    iget-object v4, v3, Lwa/a;->pkgName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, -0x1

    if-eq p2, v4, :cond_3

    iget v4, v3, Lwa/a;->uid:I

    if-ne p2, v4, :cond_2

    :cond_3
    move-object v0, v3

    :cond_4
    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    sget-object p1, Lra/j0;->c:Lra/j0;

    invoke-virtual {p1}, Lra/j0;->a()Lcom/miui/optimizecenter/storage/model/StorageItemInfo;

    move-result-object p1

    iget-wide v3, p1, Lcom/miui/optimizecenter/storage/model/StorageItemInfo;->c:J

    iget-wide v5, v0, Lwa/a;->totalSize:J

    sub-long/2addr v3, v5

    iput-wide v3, p1, Lcom/miui/optimizecenter/storage/model/StorageItemInfo;->c:J

    invoke-virtual {p0}, Lcom/miui/optimizecenter/storage/a;->Q()V

    iget-object p1, p0, Lcom/miui/optimizecenter/storage/a;->m:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/optimizecenter/storage/a$d;

    invoke-interface {p2, v0}, Lcom/miui/optimizecenter/storage/a$d;->K(Lwa/a;)V

    goto :goto_0

    :cond_6
    iget-object p1, p0, Lcom/miui/optimizecenter/storage/a;->c:Landroidx/lifecycle/c0;

    invoke-virtual {p1, v2}, Landroidx/lifecycle/c0;->m(Ljava/lang/Object;)V

    return-void
.end method

.method public P()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFinish scan "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StorageDataManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/a;->f:Lcom/miui/optimizecenter/storage/a$g;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public Q()V
    .locals 9

    sget-object v0, Lcom/miui/optimizecenter/storage/a;->s:[Lra/j0;

    array-length v1, v0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-wide v5, v2

    :goto_0
    if-ge v4, v1, :cond_1

    aget-object v7, v0, v4

    sget-object v8, Lra/j0;->b:Lra/j0;

    if-eq v7, v8, :cond_0

    invoke-virtual {v7}, Lra/j0;->a()Lcom/miui/optimizecenter/storage/model/StorageItemInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/miui/optimizecenter/storage/model/StorageItemInfo;->c()J

    move-result-wide v7

    add-long/2addr v5, v7

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/optimizecenter/storage/a;->i:Lcom/miui/optimizecenter/storage/AppSystemDataManager;

    invoke-virtual {v0}, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->s()J

    move-result-wide v0

    iget-object v4, p0, Lcom/miui/optimizecenter/storage/a;->i:Lcom/miui/optimizecenter/storage/AppSystemDataManager;

    invoke-virtual {v4}, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->f()J

    move-result-wide v7

    sub-long/2addr v0, v7

    sub-long/2addr v0, v5

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    sget-object v3, Lra/j0;->b:Lra/j0;

    invoke-virtual {v3}, Lra/j0;->a()Lcom/miui/optimizecenter/storage/model/StorageItemInfo;

    move-result-object v2

    iput-wide v0, v2, Lcom/miui/optimizecenter/storage/model/StorageItemInfo;->c:J

    invoke-virtual {v3}, Lra/j0;->a()Lcom/miui/optimizecenter/storage/model/StorageItemInfo;

    move-result-object v0

    iget-wide v4, v0, Lcom/miui/optimizecenter/storage/model/StorageItemInfo;->c:J

    const-wide/16 v6, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/miui/optimizecenter/storage/a;->a0(Lra/j0;JJ)V

    return-void
.end method

.method public S(Lcom/miui/optimizecenter/storage/a$d;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/a;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/a;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public T()V
    .locals 2

    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object v0

    new-instance v1, Lcom/miui/optimizecenter/storage/a$a;

    invoke-direct {v1, p0}, Lcom/miui/optimizecenter/storage/a$a;-><init>(Lcom/miui/optimizecenter/storage/a;)V

    invoke-virtual {v0, v1}, Lef/z;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public U(Lra/l;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/a;->f:Lcom/miui/optimizecenter/storage/a$g;

    invoke-virtual {v0, p1}, Lcom/miui/optimizecenter/storage/a$g;->a(Lra/l;)V

    return-void
.end method

.method public V()V
    .locals 12
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-boolean v0, p0, Lcom/miui/optimizecenter/storage/a;->k:Z

    const-string v1, "StorageDataManager"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "totalSpace = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/optimizecenter/storage/a;->i:Lcom/miui/optimizecenter/storage/AppSystemDataManager;

    invoke-virtual {v2}, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->s()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ",sdCardTotal = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/optimizecenter/storage/a;->i:Lcom/miui/optimizecenter/storage/AppSystemDataManager;

    invoke-virtual {v2}, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->p()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", availableSpace = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/optimizecenter/storage/a;->i:Lcom/miui/optimizecenter/storage/AppSystemDataManager;

    invoke-virtual {v2}, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->f()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStart scan "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lxa/a;->f()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/optimizecenter/storage/a;->k:Z

    new-instance v0, Lcom/miui/optimizecenter/storage/a$f;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/miui/optimizecenter/storage/a$f;-><init>(Lcom/miui/optimizecenter/storage/a;Lcom/miui/optimizecenter/storage/a$a;)V

    iput-object v0, p0, Lcom/miui/optimizecenter/storage/a;->g:Lva/c;

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/a;->i:Lcom/miui/optimizecenter/storage/AppSystemDataManager;

    invoke-virtual {v0}, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->s()J

    move-result-wide v2

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/a;->i:Lcom/miui/optimizecenter/storage/AppSystemDataManager;

    invoke-virtual {v0}, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->i()J

    move-result-wide v4

    add-long/2addr v2, v4

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/a;->i:Lcom/miui/optimizecenter/storage/AppSystemDataManager;

    invoke-virtual {v0}, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->p()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/a;->i:Lcom/miui/optimizecenter/storage/AppSystemDataManager;

    invoke-virtual {v0}, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->h()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/a;->i:Lcom/miui/optimizecenter/storage/AppSystemDataManager;

    invoke-virtual {v0}, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->q()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/a;->i:Lcom/miui/optimizecenter/storage/AppSystemDataManager;

    invoke-virtual {v0}, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->n()J

    move-result-wide v4

    sub-long/2addr v2, v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startScan: systemSize = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, 0x0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    sget-object v7, Lra/j0;->j:Lra/j0;

    const-wide/16 v10, 0x0

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/miui/optimizecenter/storage/a;->a0(Lra/j0;JJ)V

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/a;->i:Lcom/miui/optimizecenter/storage/AppSystemDataManager;

    invoke-virtual {v0}, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->B()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/optimizecenter/storage/a;->c:Landroidx/lifecycle/c0;

    invoke-virtual {v2, v0}, Landroidx/lifecycle/c0;->m(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/miui/optimizecenter/storage/a;->I(Ljava/util/List;)Lcom/miui/optimizecenter/storage/model/StorageSizeBean;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startScan: newSize="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/optimizecenter/storage/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/miui/optimizecenter/storage/model/StorageSizeBean;->getTotal()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lsm/a;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lra/j0;->c:Lra/j0;

    invoke-virtual {v0}, Lcom/miui/optimizecenter/storage/model/StorageSizeBean;->getTotal()J

    move-result-wide v5

    invoke-virtual {v0}, Lcom/miui/optimizecenter/storage/model/StorageSizeBean;->getWorkSize()J

    move-result-wide v7

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/miui/optimizecenter/storage/a;->a0(Lra/j0;JJ)V

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/a;->j:Lxa/b;

    iget-object v2, p0, Lcom/miui/optimizecenter/storage/a;->d:Ljava/util/Set;

    invoke-virtual {v0, v2}, Lxa/b;->d(Ljava/util/Set;)Ljava/util/HashMap;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startScan: installedPkgSdcardPaths="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    iget-object v3, p0, Lcom/miui/optimizecenter/storage/a;->e:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    sget-object v1, Lxa/a;->f:Ljava/util/Set;

    iget-object v2, p0, Lcom/miui/optimizecenter/storage/a;->e:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lxa/a;->h:[Ljava/lang/String;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-static {v1}, Lxa/a;->e(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/optimizecenter/storage/a;->e:Ljava/util/Set;

    iget-object v2, p0, Lcom/miui/optimizecenter/storage/a;->g:Lva/c;

    invoke-direct {p0, v1, v2}, Lcom/miui/optimizecenter/storage/a;->x(Ljava/util/Set;Lva/c;)V

    invoke-direct {p0, v0}, Lcom/miui/optimizecenter/storage/a;->w(Ljava/util/HashMap;)V

    return-void
.end method

.method public W(Lxa/b$e;)V
    .locals 3

    invoke-static {}, Lxa/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "public file start Scan"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StorageDataManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object v0

    new-instance v1, Lra/s;

    invoke-direct {v1, p0, p1}, Lra/s;-><init>(Lcom/miui/optimizecenter/storage/a;Lxa/b$e;)V

    invoke-virtual {v0, v1}, Lef/z;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public X(Lcom/miui/optimizecenter/storage/a$d;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/a;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public Y(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lwa/a;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/miui/optimizecenter/storage/model/AppPublicStorageInfo;

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/optimizecenter/storage/model/AppPublicStorageInfo;

    :cond_1
    if-nez v0, :cond_2

    new-instance v0, Lcom/miui/optimizecenter/storage/model/AppPublicStorageInfo;

    invoke-direct {v0}, Lcom/miui/optimizecenter/storage/model/AppPublicStorageInfo;-><init>()V

    :cond_2
    new-instance v1, Lwa/a$b;

    invoke-direct {v1}, Lwa/a$b;-><init>()V

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-wide v1, p0, Lcom/miui/optimizecenter/storage/a;->n:J

    invoke-virtual {v0, v1, v2}, Lwa/a;->setTotalSize(J)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public Z(J)V
    .locals 9

    iget-wide v0, p0, Lcom/miui/optimizecenter/storage/a;->n:J

    sub-long v0, p1, v0

    iput-wide p1, p0, Lcom/miui/optimizecenter/storage/a;->n:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPublicFileTotalSize = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/miui/optimizecenter/storage/a;->n:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ",diff = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "StorageDataManager"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/optimizecenter/storage/a;->p:Landroidx/lifecycle/c0;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroidx/lifecycle/c0;->m(Ljava/lang/Object;)V

    :cond_0
    sget-object v4, Lra/j0;->c:Lra/j0;

    invoke-virtual {v4}, Lra/j0;->a()Lcom/miui/optimizecenter/storage/model/StorageItemInfo;

    move-result-object p1

    iget-wide p1, p1, Lcom/miui/optimizecenter/storage/model/StorageItemInfo;->c:J

    add-long v5, p1, v0

    invoke-virtual {v4}, Lra/j0;->a()Lcom/miui/optimizecenter/storage/model/StorageItemInfo;

    move-result-object p1

    iget-wide v7, p1, Lcom/miui/optimizecenter/storage/model/StorageItemInfo;->d:J

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/miui/optimizecenter/storage/a;->a0(Lra/j0;JJ)V

    return-void
.end method

.method public a0(Lra/j0;JJ)V
    .locals 1

    invoke-virtual {p1}, Lra/j0;->a()Lcom/miui/optimizecenter/storage/model/StorageItemInfo;

    move-result-object v0

    iput-wide p2, v0, Lcom/miui/optimizecenter/storage/model/StorageItemInfo;->c:J

    invoke-virtual {p1}, Lra/j0;->a()Lcom/miui/optimizecenter/storage/model/StorageItemInfo;

    move-result-object p2

    iput-wide p4, p2, Lcom/miui/optimizecenter/storage/model/StorageItemInfo;->d:J

    iget-object p2, p0, Lcom/miui/optimizecenter/storage/a;->b:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/miui/optimizecenter/storage/a;->f:Lcom/miui/optimizecenter/storage/a$g;

    const/4 p3, 0x0

    invoke-static {p2, p3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public u(Ljava/lang/String;)V
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/optimizecenter/storage/a;->c:Landroidx/lifecycle/c0;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lwa/a;

    iget-object v1, v1, Lwa/a;->pkgName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_3
    iget-object v0, p0, Lcom/miui/optimizecenter/storage/a;->i:Lcom/miui/optimizecenter/storage/AppSystemDataManager;

    invoke-virtual {v0, p1}, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->d(Ljava/lang/String;)Lwa/a;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/a;->f:Lcom/miui/optimizecenter/storage/a$g;

    new-instance v1, Lra/r;

    invoke-direct {v1, p0, p1}, Lra/r;-><init>(Lcom/miui/optimizecenter/storage/a;Lwa/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    return-void
.end method

.method public v(Ljava/lang/String;I)V
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/a;->f:Lcom/miui/optimizecenter/storage/a$g;

    new-instance v1, Lra/t;

    invoke-direct {v1, p0, p1, p2}, Lra/t;-><init>(Lcom/miui/optimizecenter/storage/a;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public y(Ljava/lang/String;I)Lwa/a;
    .locals 4

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/a;->c:Landroidx/lifecycle/c0;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lwa/a;

    invoke-virtual {v2, p1, p2}, Lwa/a;->isSameApp(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_2
    return-object v1
.end method

.method public z()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lwa/a;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/a;->c:Landroidx/lifecycle/c0;

    return-object v0
.end method

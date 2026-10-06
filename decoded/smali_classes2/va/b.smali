.class public Lva/b;
.super Lva/a;
.source "SourceFile"


# instance fields
.field private c:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lva/c;Lra/j0;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lva/c;",
            "Lra/j0;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lva/a;-><init>(Lva/c;Lra/j0;)V

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lva/b;->c:Ljava/util/HashSet;

    if-eqz p3, :cond_0

    invoke-virtual {p1, p3}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method protected b()V
    .locals 9

    iget-object v0, p0, Lva/a;->b:Lra/j0;

    const-string v1, "AbsScanTask"

    if-nez v0, :cond_0

    const-string v0, "StorageScanType is null !!!"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lra/m;->f(Landroid/content/Context;)Lra/m;

    move-result-object v0

    sget-object v4, Lva/b$a;->a:[I

    iget-object v5, p0, Lva/a;->b:Lra/j0;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-eq v4, v6, :cond_5

    const/4 v7, 0x4

    const/4 v8, 0x2

    if-eq v4, v8, :cond_4

    if-eq v4, v5, :cond_3

    if-eq v4, v7, :cond_2

    const/4 v5, 0x5

    if-eq v4, v5, :cond_1

    new-instance v0, Lcom/miui/optimizecenter/storage/model/StorageSizeBean;

    const-wide/16 v4, 0x0

    invoke-direct {v0, v4, v5, v4, v5}, Lcom/miui/optimizecenter/storage/model/StorageSizeBean;-><init>(JJ)V

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lva/b;->c:Ljava/util/HashSet;

    invoke-virtual {v0, v4}, Lra/m;->e(Ljava/util/HashSet;)Lcom/miui/optimizecenter/storage/model/StorageSizeBean;

    move-result-object v0

    sget-object v4, Lxa/a;->h:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lva/b;->c:Ljava/util/HashSet;

    invoke-virtual {v0, v4}, Lra/m;->j(Ljava/util/HashSet;)Lcom/miui/optimizecenter/storage/model/StorageSizeBean;

    move-result-object v0

    sget-object v4, Lxa/a;->h:[Ljava/lang/String;

    aget-object v4, v4, v8

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lva/b;->c:Ljava/util/HashSet;

    invoke-virtual {v0, v4}, Lra/m;->b(Ljava/util/HashSet;)Lcom/miui/optimizecenter/storage/model/StorageSizeBean;

    move-result-object v0

    sget-object v4, Lxa/a;->h:[Ljava/lang/String;

    aget-object v4, v4, v6

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lva/b;->c:Ljava/util/HashSet;

    invoke-virtual {v0, v4}, Lra/m;->c(Ljava/util/HashSet;)Lcom/miui/optimizecenter/storage/model/StorageSizeBean;

    move-result-object v0

    sget-object v4, Lxa/a;->h:[Ljava/lang/String;

    aget-object v4, v4, v7

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lva/b;->c:Ljava/util/HashSet;

    invoke-virtual {v0, v4}, Lra/m;->a(Ljava/util/HashSet;)Lcom/miui/optimizecenter/storage/model/StorageSizeBean;

    move-result-object v0

    sget-object v4, Lxa/a;->h:[Ljava/lang/String;

    aget-object v4, v4, v5

    :goto_0
    invoke-static {v4}, Lxa/a;->e(Ljava/lang/String;)V

    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lva/a;->b:Lra/j0;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/miui/optimizecenter/storage/model/StorageSizeBean;->getTotal()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "\tscanTime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/miui/optimizecenter/storage/model/StorageSizeBean;->getTotal()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/miui/optimizecenter/storage/model/StorageSizeBean;->getWorkSize()J

    move-result-wide v3

    invoke-virtual {p0, v1, v2, v3, v4}, Lva/a;->a(JJ)V

    return-void
.end method

.class Lcom/miui/optimizecenter/storage/a$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxa/b$f;
.implements Lxa/b$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/optimizecenter/storage/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field a:J

.field b:J

.field c:J

.field d:Z

.field e:Z

.field f:J

.field g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lwa/a;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic h:Lcom/miui/optimizecenter/storage/a;


# direct methods
.method private constructor <init>(Lcom/miui/optimizecenter/storage/a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/optimizecenter/storage/a$e;->h:Lcom/miui/optimizecenter/storage/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/optimizecenter/storage/a$e;->g:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/optimizecenter/storage/a;Lcom/miui/optimizecenter/storage/a$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/optimizecenter/storage/a$e;-><init>(Lcom/miui/optimizecenter/storage/a;)V

    return-void
.end method

.method private f()J
    .locals 4

    iget-wide v0, p0, Lcom/miui/optimizecenter/storage/a$e;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/a$e;->h:Lcom/miui/optimizecenter/storage/a;

    invoke-static {v0}, Lcom/miui/optimizecenter/storage/a;->q(Lcom/miui/optimizecenter/storage/a;)Lcom/miui/optimizecenter/storage/AppSystemDataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->B()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/optimizecenter/storage/a;->s(Lcom/miui/optimizecenter/storage/a;Ljava/util/List;)Lcom/miui/optimizecenter/storage/model/StorageSizeBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/optimizecenter/storage/model/StorageSizeBean;->getTotal()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/optimizecenter/storage/a$e;->f:J

    :cond_0
    iget-wide v0, p0, Lcom/miui/optimizecenter/storage/a$e;->f:J

    return-wide v0
.end method

.method private g()V
    .locals 10

    iget-boolean v0, p0, Lcom/miui/optimizecenter/storage/a$e;->e:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/optimizecenter/storage/a$e;->d:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/optimizecenter/storage/a$e;->f()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/optimizecenter/storage/a$e;->c:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/miui/optimizecenter/storage/a$e;->b:J

    add-long v6, v0, v2

    iget-object v4, p0, Lcom/miui/optimizecenter/storage/a$e;->h:Lcom/miui/optimizecenter/storage/a;

    sget-object v5, Lra/j0;->c:Lra/j0;

    invoke-virtual {v5}, Lra/j0;->a()Lcom/miui/optimizecenter/storage/model/StorageItemInfo;

    move-result-object v0

    iget-wide v8, v0, Lcom/miui/optimizecenter/storage/model/StorageItemInfo;->d:J

    invoke-virtual/range {v4 .. v9}, Lcom/miui/optimizecenter/storage/a;->a0(Lra/j0;JJ)V

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/a$e;->h:Lcom/miui/optimizecenter/storage/a;

    invoke-virtual {v0}, Lcom/miui/optimizecenter/storage/a;->Q()V

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/a$e;->h:Lcom/miui/optimizecenter/storage/a;

    invoke-virtual {v0}, Lcom/miui/optimizecenter/storage/a;->P()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/optimizecenter/storage/model/PublicFileModel;",
            ">;J)V"
        }
    .end annotation

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/optimizecenter/storage/a$e;->e:Z

    iput-wide p2, p0, Lcom/miui/optimizecenter/storage/a$e;->b:J

    iget-object p1, p0, Lcom/miui/optimizecenter/storage/a$e;->h:Lcom/miui/optimizecenter/storage/a;

    invoke-virtual {p1, p2, p3}, Lcom/miui/optimizecenter/storage/a;->Z(J)V

    invoke-direct {p0}, Lcom/miui/optimizecenter/storage/a$e;->g()V

    return-void
.end method

.method public b()V
    .locals 2

    const-string v0, "StorageDataManager"

    const-string v1, "SdCard onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/optimizecenter/storage/a$e;->c:J

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/optimizecenter/storage/a$e;->a:J

    return-void
.end method

.method public synthetic c()Ljava/util/List;
    .locals 1

    invoke-static {p0}, Lxa/c;->a(Lxa/b$e;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;JJ)V
    .locals 4

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "onPackageScanFinished: pkg="

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "\traw size="

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p5, "\tformat size="

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, p0, Lcom/miui/optimizecenter/storage/a$e;->h:Lcom/miui/optimizecenter/storage/a;

    invoke-static {p5}, Lcom/miui/optimizecenter/storage/a;->o(Lcom/miui/optimizecenter/storage/a;)Landroid/content/Context;

    move-result-object p5

    invoke-static {p5, p2, p3}, Lsm/a;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string p5, "StorageDataManager"

    invoke-static {p5, p4}, Lx4/q0;->g(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lx4/z1;->y()I

    move-result p4

    iget-object p5, p0, Lcom/miui/optimizecenter/storage/a$e;->h:Lcom/miui/optimizecenter/storage/a;

    invoke-static {p5}, Lcom/miui/optimizecenter/storage/a;->r(Lcom/miui/optimizecenter/storage/a;)Landroidx/lifecycle/c0;

    move-result-object p5

    invoke-virtual {p5}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/util/List;

    if-nez p5, :cond_1

    return-void

    :cond_1
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lwa/a;

    iget-object v2, v1, Lwa/a;->pkgName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, v1, Lwa/a;->uid:I

    invoke-static {v2}, Lx4/z1;->m(I)I

    move-result v2

    if-ne p4, v2, :cond_2

    iget-wide v2, v1, Lwa/a;->sdcardSize:J

    add-long/2addr v2, p2

    iput-wide v2, v1, Lwa/a;->sdcardSize:J

    iget-wide v2, v1, Lwa/a;->totalSize:J

    add-long/2addr v2, p2

    iput-wide v2, v1, Lwa/a;->totalSize:J

    iget-wide v0, p0, Lcom/miui/optimizecenter/storage/a$e;->c:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/miui/optimizecenter/storage/a$e;->c:J

    :cond_3
    iput-object p5, p0, Lcom/miui/optimizecenter/storage/a$e;->g:Ljava/util/List;

    return-void
.end method

.method public e()V
    .locals 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/optimizecenter/storage/a$e;->d:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onScanFinished: sdScanTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/miui/optimizecenter/storage/a$e;->a:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StorageDataManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v2, p0, Lcom/miui/optimizecenter/storage/a$e;->c:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/a$e;->h:Lcom/miui/optimizecenter/storage/a;

    invoke-static {v0, v2, v3}, Lcom/miui/optimizecenter/storage/a;->e(Lcom/miui/optimizecenter/storage/a;J)J

    :cond_0
    iget-object v0, p0, Lcom/miui/optimizecenter/storage/a$e;->g:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/a$e;->h:Lcom/miui/optimizecenter/storage/a;

    invoke-static {v0}, Lcom/miui/optimizecenter/storage/a;->r(Lcom/miui/optimizecenter/storage/a;)Landroidx/lifecycle/c0;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/optimizecenter/storage/a$e;->g:Ljava/util/List;

    invoke-virtual {v0, v2}, Landroidx/lifecycle/c0;->m(Ljava/lang/Object;)V

    :cond_1
    invoke-direct {p0}, Lcom/miui/optimizecenter/storage/a$e;->g()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sdScanSize = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v2

    iget-wide v3, p0, Lcom/miui/optimizecenter/storage/a$e;->c:J

    invoke-static {v2, v3, v4}, Lsm/a;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public h(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/optimizecenter/storage/a$e;->f:J

    return-void
.end method

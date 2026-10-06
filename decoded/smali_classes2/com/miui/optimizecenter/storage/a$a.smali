.class Lcom/miui/optimizecenter/storage/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/optimizecenter/storage/a;->T()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/optimizecenter/storage/a;


# direct methods
.method constructor <init>(Lcom/miui/optimizecenter/storage/a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/optimizecenter/storage/a$a;->a:Lcom/miui/optimizecenter/storage/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/a$a;->a:Lcom/miui/optimizecenter/storage/a;

    invoke-static {v0}, Lcom/miui/optimizecenter/storage/a;->p(Lcom/miui/optimizecenter/storage/a;)Ljava/util/Set;

    move-result-object v0

    sget-object v2, Lra/j0;->c:Lra/j0;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/a$a;->a:Lcom/miui/optimizecenter/storage/a;

    invoke-static {v0}, Lcom/miui/optimizecenter/storage/a;->q(Lcom/miui/optimizecenter/storage/a;)Lcom/miui/optimizecenter/storage/AppSystemDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->B()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/optimizecenter/storage/a$a;->a:Lcom/miui/optimizecenter/storage/a;

    invoke-static {v1}, Lcom/miui/optimizecenter/storage/a;->r(Lcom/miui/optimizecenter/storage/a;)Landroidx/lifecycle/c0;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/lifecycle/c0;->m(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/miui/optimizecenter/storage/a$a;->a:Lcom/miui/optimizecenter/storage/a;

    invoke-static {v1, v0}, Lcom/miui/optimizecenter/storage/a;->s(Lcom/miui/optimizecenter/storage/a;Ljava/util/List;)Lcom/miui/optimizecenter/storage/model/StorageSizeBean;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/optimizecenter/storage/a$a;->a:Lcom/miui/optimizecenter/storage/a;

    invoke-virtual {v0}, Lcom/miui/optimizecenter/storage/model/StorageSizeBean;->getTotal()J

    move-result-wide v3

    iget-object v5, p0, Lcom/miui/optimizecenter/storage/a$a;->a:Lcom/miui/optimizecenter/storage/a;

    invoke-static {v5}, Lcom/miui/optimizecenter/storage/a;->t(Lcom/miui/optimizecenter/storage/a;)J

    move-result-wide v5

    add-long/2addr v3, v5

    iget-object v5, p0, Lcom/miui/optimizecenter/storage/a$a;->a:Lcom/miui/optimizecenter/storage/a;

    invoke-static {v5}, Lcom/miui/optimizecenter/storage/a;->d(Lcom/miui/optimizecenter/storage/a;)J

    move-result-wide v5

    add-long/2addr v3, v5

    invoke-virtual {v0}, Lcom/miui/optimizecenter/storage/model/StorageSizeBean;->getWorkSize()J

    move-result-wide v5

    invoke-virtual/range {v1 .. v6}, Lcom/miui/optimizecenter/storage/a;->a0(Lra/j0;JJ)V

    :cond_0
    invoke-static {}, Lxa/a;->d()V

    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object v0

    new-instance v1, Lcom/miui/optimizecenter/storage/a$a$a;

    invoke-direct {v1, p0}, Lcom/miui/optimizecenter/storage/a$a$a;-><init>(Lcom/miui/optimizecenter/storage/a$a;)V

    invoke-virtual {v0, v1}, Lef/z;->a(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/a$a;->a:Lcom/miui/optimizecenter/storage/a;

    invoke-static {v0}, Lcom/miui/optimizecenter/storage/a;->i(Lcom/miui/optimizecenter/storage/a;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/optimizecenter/storage/a$a;->a:Lcom/miui/optimizecenter/storage/a;

    invoke-static {v2}, Lcom/miui/optimizecenter/storage/a;->j(Lcom/miui/optimizecenter/storage/a;)Lva/c;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/optimizecenter/storage/a;->k(Lcom/miui/optimizecenter/storage/a;Ljava/util/Set;Lva/c;)V

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/a$a;->a:Lcom/miui/optimizecenter/storage/a;

    invoke-static {v0}, Lcom/miui/optimizecenter/storage/a;->l(Lcom/miui/optimizecenter/storage/a;)Lcom/miui/optimizecenter/storage/a$g;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

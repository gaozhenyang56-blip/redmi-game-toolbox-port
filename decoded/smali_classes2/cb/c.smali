.class public Lcb/c;
.super Landroidx/lifecycle/r0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcb/c$a;
    }
.end annotation


# instance fields
.field private a:Landroidx/lifecycle/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/c0<",
            "Ljava/util/List<",
            "Lcom/miui/optimizecenter/storage/model/PublicFileModel;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/lifecycle/r0;-><init>()V

    new-instance v0, Landroidx/lifecycle/c0;

    invoke-direct {v0}, Landroidx/lifecycle/c0;-><init>()V

    iput-object v0, p0, Lcb/c;->a:Landroidx/lifecycle/c0;

    return-void
.end method

.method public static synthetic a(Ljava/util/List;)V
    .locals 0

    invoke-static {p0}, Lcb/c;->d(Ljava/util/List;)V

    return-void
.end method

.method private static synthetic d(Ljava/util/List;)V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/optimizecenter/storage/model/PublicFileModel;

    new-instance v3, Ljava/io/File;

    invoke-virtual {v2}, Lcom/miui/optimizecenter/storage/model/PublicFileModel;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/miui/optimizecenter/storage/model/PublicFileModel;->getFileSize()J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/optimizecenter/storage/a;->D(Landroid/content/Context;)Lcom/miui/optimizecenter/storage/a;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Lcom/miui/optimizecenter/storage/a;->Z(J)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 7

    iget-object v0, p0, Lcb/c;->a:Landroidx/lifecycle/c0;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcb/c;->a:Landroidx/lifecycle/c0;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/optimizecenter/storage/a;->D(Landroid/content/Context;)Lcom/miui/optimizecenter/storage/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/optimizecenter/storage/a;->F()J

    move-result-wide v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_0
    if-ltz v4, :cond_2

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/optimizecenter/storage/model/PublicFileModel;

    invoke-virtual {v5}, Lcom/miui/optimizecenter/storage/model/PublicFileModel;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/optimizecenter/storage/model/PublicFileModel;

    invoke-virtual {v5}, Lcom/miui/optimizecenter/storage/model/PublicFileModel;->getFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/optimizecenter/storage/model/PublicFileModel;

    invoke-virtual {v5}, Lcom/miui/optimizecenter/storage/model/PublicFileModel;->getFileSize()J

    move-result-wide v5

    sub-long/2addr v2, v5

    invoke-interface {v0, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/optimizecenter/storage/a;->D(Landroid/content/Context;)Lcom/miui/optimizecenter/storage/a;

    move-result-object v4

    const-wide/16 v5, 0x0

    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-virtual {v4, v2, v3}, Lcom/miui/optimizecenter/storage/a;->Z(J)V

    invoke-virtual {p0, v0}, Lcb/c;->e(Ljava/util/List;)V

    new-instance v0, Lcb/c$a;

    invoke-direct {v0, v1}, Lcb/c$a;-><init>(Ljava/util/List;)V

    invoke-static {v0}, Lmiuix/animation/internal/ThreadPoolUtil;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/miui/optimizecenter/storage/model/PublicFileModel;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcb/c;->a:Landroidx/lifecycle/c0;

    return-object v0
.end method

.method public e(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/optimizecenter/storage/model/PublicFileModel;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcb/c;->a:Landroidx/lifecycle/c0;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/c0;->m(Ljava/lang/Object;)V

    new-instance v0, Lcb/b;

    invoke-direct {v0, p1}, Lcb/b;-><init>(Ljava/util/List;)V

    invoke-static {v0}, Lmiuix/animation/internal/ThreadPoolUtil;->post(Ljava/lang/Runnable;)V

    return-void
.end method

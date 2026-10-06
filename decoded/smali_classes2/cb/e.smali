.class public Lcb/e;
.super Landroidx/lifecycle/r0;
.source "SourceFile"


# instance fields
.field private a:Leb/a;

.field private final b:Landroidx/lifecycle/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/c0<",
            "Lra/k0;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroidx/lifecycle/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/c0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroidx/lifecycle/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/c0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroidx/lifecycle/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/c0<",
            "Lra/j0;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Landroidx/lifecycle/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/c0<",
            "Ljava/util/Set<",
            "Lcom/miui/optimizecenter/widget/storage/a;",
            ">;>;"
        }
    .end annotation
.end field

.field private final g:Landroidx/lifecycle/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/c0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Landroidx/lifecycle/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/c0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Landroidx/lifecycle/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/c0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/lifecycle/r0;-><init>()V

    new-instance v0, Landroidx/lifecycle/c0;

    invoke-direct {v0}, Landroidx/lifecycle/c0;-><init>()V

    iput-object v0, p0, Lcb/e;->b:Landroidx/lifecycle/c0;

    new-instance v0, Landroidx/lifecycle/c0;

    invoke-direct {v0}, Landroidx/lifecycle/c0;-><init>()V

    iput-object v0, p0, Lcb/e;->c:Landroidx/lifecycle/c0;

    new-instance v0, Landroidx/lifecycle/c0;

    invoke-direct {v0}, Landroidx/lifecycle/c0;-><init>()V

    iput-object v0, p0, Lcb/e;->d:Landroidx/lifecycle/c0;

    new-instance v0, Landroidx/lifecycle/c0;

    invoke-direct {v0}, Landroidx/lifecycle/c0;-><init>()V

    iput-object v0, p0, Lcb/e;->e:Landroidx/lifecycle/c0;

    new-instance v0, Landroidx/lifecycle/c0;

    invoke-direct {v0}, Landroidx/lifecycle/c0;-><init>()V

    iput-object v0, p0, Lcb/e;->f:Landroidx/lifecycle/c0;

    new-instance v0, Landroidx/lifecycle/c0;

    invoke-direct {v0}, Landroidx/lifecycle/c0;-><init>()V

    iput-object v0, p0, Lcb/e;->g:Landroidx/lifecycle/c0;

    new-instance v0, Landroidx/lifecycle/c0;

    invoke-direct {v0}, Landroidx/lifecycle/c0;-><init>()V

    iput-object v0, p0, Lcb/e;->h:Landroidx/lifecycle/c0;

    new-instance v0, Landroidx/lifecycle/c0;

    invoke-direct {v0}, Landroidx/lifecycle/c0;-><init>()V

    iput-object v0, p0, Lcb/e;->i:Landroidx/lifecycle/c0;

    return-void
.end method

.method public static synthetic a(Lcb/e;)V
    .locals 0

    invoke-direct {p0}, Lcb/e;->l()V

    return-void
.end method

.method private synthetic l()V
    .locals 5

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lra/i0;->b(Landroid/content/Context;)Lra/i0;

    move-result-object v0

    invoke-virtual {v0}, Lra/i0;->c()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    const-wide/32 v1, 0x5265c00

    cmp-long v1, v3, v1

    if-gez v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    invoke-static {v1}, Ldb/g;->a(Landroid/content/Context;)I

    move-result v1

    iget-object v2, p0, Lcb/e;->a:Leb/a;

    invoke-static {v1}, Ldb/g;->b(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Leb/a;->v(J)Leb/a;

    iget-object v1, p0, Lcb/e;->a:Leb/a;

    invoke-static {}, Ldb/g;->f()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Leb/a;->y(J)Leb/a;

    iget-object v1, p0, Lcb/e;->a:Leb/a;

    invoke-static {v1}, Ldb/f;->f(Leb/a;)V

    invoke-virtual {v0}, Lra/i0;->a()Lra/i0$a;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lra/i0$a;->b(J)Lra/i0$a;

    move-result-object v0

    invoke-virtual {v0}, Lra/i0$a;->a()V

    return-void
.end method

.method private x(Lra/j0;)V
    .locals 5

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lra/j0;->a()Lcom/miui/optimizecenter/storage/model/StorageItemInfo;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lra/j0;->a()Lcom/miui/optimizecenter/storage/model/StorageItemInfo;

    move-result-object v0

    iget-wide v0, v0, Lcom/miui/optimizecenter/storage/model/StorageItemInfo;->c:J

    invoke-virtual {p1}, Lra/j0;->a()Lcom/miui/optimizecenter/storage/model/StorageItemInfo;

    move-result-object v2

    iget-wide v2, v2, Lcom/miui/optimizecenter/storage/model/StorageItemInfo;->d:J

    sget-object v4, Lcb/e$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v4, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lcb/e;->a:Leb/a;

    invoke-virtual {p1, v0, v1}, Leb/a;->w(J)Leb/a;

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lcb/e;->a:Leb/a;

    invoke-virtual {p1, v0, v1, v2, v3}, Leb/a;->s(JJ)Leb/a;

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lcb/e;->a:Leb/a;

    invoke-virtual {p1, v0, v1, v2, v3}, Leb/a;->q(JJ)Leb/a;

    goto :goto_0

    :pswitch_3
    iget-object p1, p0, Lcb/e;->a:Leb/a;

    invoke-virtual {p1, v0, v1, v2, v3}, Leb/a;->z(JJ)Leb/a;

    goto :goto_0

    :pswitch_4
    iget-object p1, p0, Lcb/e;->a:Leb/a;

    invoke-virtual {p1, v0, v1, v2, v3}, Leb/a;->A(JJ)Leb/a;

    goto :goto_0

    :pswitch_5
    iget-object p1, p0, Lcb/e;->a:Leb/a;

    invoke-virtual {p1, v0, v1}, Leb/a;->x(J)Leb/a;

    goto :goto_0

    :pswitch_6
    iget-object p1, p0, Lcb/e;->a:Leb/a;

    invoke-virtual {p1, v0, v1, v2, v3}, Leb/a;->u(JJ)Leb/a;

    goto :goto_0

    :pswitch_7
    iget-object p1, p0, Lcb/e;->a:Leb/a;

    invoke-virtual {p1, v0, v1, v2, v3}, Leb/a;->p(JJ)Leb/a;

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public b()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/Set<",
            "Lcom/miui/optimizecenter/widget/storage/a;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcb/e;->f:Landroidx/lifecycle/c0;

    return-object v0
.end method

.method public c()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lra/j0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcb/e;->e:Landroidx/lifecycle/c0;

    return-object v0
.end method

.method public d()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcb/e;->c:Landroidx/lifecycle/c0;

    return-object v0
.end method

.method public e()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcb/e;->g:Landroidx/lifecycle/c0;

    return-object v0
.end method

.method public f()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcb/e;->d:Landroidx/lifecycle/c0;

    return-object v0
.end method

.method public g()Lcom/miui/optimizecenter/storage/a;
    .locals 1

    invoke-static {}, Lcom/miui/common/e;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/optimizecenter/storage/a;->D(Landroid/content/Context;)Lcom/miui/optimizecenter/storage/a;

    move-result-object v0

    return-object v0
.end method

.method public h()Leb/a;
    .locals 1

    iget-object v0, p0, Lcb/e;->a:Leb/a;

    return-object v0
.end method

.method public i()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lra/k0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcb/e;->b:Landroidx/lifecycle/c0;

    return-object v0
.end method

.method public j()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcb/e;->h:Landroidx/lifecycle/c0;

    return-object v0
.end method

.method public k()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcb/e;->i:Landroidx/lifecycle/c0;

    return-object v0
.end method

.method public m()V
    .locals 4

    sget-object v0, Lcom/miui/optimizecenter/storage/a;->s:[Lra/j0;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-direct {p0, v3}, Lcb/e;->x(Lra/j0;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcb/e;->g:Landroidx/lifecycle/c0;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :cond_1
    invoke-virtual {v0, v1}, Landroidx/lifecycle/c0;->o(Ljava/lang/Object;)V

    return-void
.end method

.method public n()V
    .locals 2

    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object v0

    new-instance v1, Lcb/d;

    invoke-direct {v1, p0}, Lcb/d;-><init>(Lcb/e;)V

    invoke-virtual {v0, v1}, Lef/z;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public o(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/miui/optimizecenter/widget/storage/a;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcb/e;->f:Landroidx/lifecycle/c0;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/c0;->o(Ljava/lang/Object;)V

    iget-object p1, p0, Lcb/e;->a:Leb/a;

    invoke-virtual {p0}, Lcb/e;->g()Lcom/miui/optimizecenter/storage/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/optimizecenter/storage/a;->F()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Leb/a;->t(J)Leb/a;

    return-void
.end method

.method public p(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcb/e;->a:Leb/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Leb/a;->r(Ljava/lang/String;)Leb/a;

    :cond_0
    return-void
.end method

.method public q(Lra/j0;)V
    .locals 1

    invoke-direct {p0, p1}, Lcb/e;->x(Lra/j0;)V

    iget-object v0, p0, Lcb/e;->e:Landroidx/lifecycle/c0;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/c0;->o(Ljava/lang/Object;)V

    return-void
.end method

.method public r(Z)V
    .locals 1

    iget-object v0, p0, Lcb/e;->c:Landroidx/lifecycle/c0;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcb/e;->c:Landroidx/lifecycle/c0;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v0, p1, :cond_1

    :cond_0
    iget-object v0, p0, Lcb/e;->c:Landroidx/lifecycle/c0;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/c0;->m(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public s(Leb/a;)V
    .locals 0

    iput-object p1, p0, Lcb/e;->a:Leb/a;

    return-void
.end method

.method public t(Lra/k0;)V
    .locals 1

    iget-object v0, p0, Lcb/e;->b:Landroidx/lifecycle/c0;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/c0;->o(Ljava/lang/Object;)V

    return-void
.end method

.method public u()V
    .locals 3

    iget-object v0, p0, Lcb/e;->i:Landroidx/lifecycle/c0;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :cond_0
    invoke-virtual {v0, v1}, Landroidx/lifecycle/c0;->o(Ljava/lang/Object;)V

    return-void
.end method

.method public v()V
    .locals 3

    iget-object v0, p0, Lcb/e;->d:Landroidx/lifecycle/c0;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :cond_0
    invoke-virtual {v0, v1}, Landroidx/lifecycle/c0;->o(Ljava/lang/Object;)V

    return-void
.end method

.method public w()V
    .locals 3

    iget-object v0, p0, Lcb/e;->h:Landroidx/lifecycle/c0;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :cond_0
    invoke-virtual {v0, v1}, Landroidx/lifecycle/c0;->o(Ljava/lang/Object;)V

    return-void
.end method

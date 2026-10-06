.class Lcom/miui/optimizecenter/storage/a$g;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/optimizecenter/storage/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "g"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lra/l;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public a(Lra/l;)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/optimizecenter/storage/a$g;->a:Ljava/lang/ref/WeakReference;

    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/a$g;->a:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lra/l;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    if-eqz v1, :cond_4

    const/4 p1, 0x4

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    if-eq v1, p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Lra/l;->u()V

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/util/HashSet;

    const/16 v3, 0x9

    new-array v3, v3, [Lcom/miui/optimizecenter/widget/storage/a;

    const/4 v4, 0x0

    sget-object v5, Lcom/miui/optimizecenter/widget/storage/a;->g:Lcom/miui/optimizecenter/widget/storage/a;

    aput-object v5, v3, v4

    sget-object v4, Lcom/miui/optimizecenter/widget/storage/a;->h:Lcom/miui/optimizecenter/widget/storage/a;

    aput-object v4, v3, v2

    const/4 v2, 0x2

    sget-object v4, Lcom/miui/optimizecenter/widget/storage/a;->l:Lcom/miui/optimizecenter/widget/storage/a;

    aput-object v4, v3, v2

    const/4 v2, 0x3

    sget-object v4, Lcom/miui/optimizecenter/widget/storage/a;->m:Lcom/miui/optimizecenter/widget/storage/a;

    aput-object v4, v3, v2

    sget-object v2, Lcom/miui/optimizecenter/widget/storage/a;->i:Lcom/miui/optimizecenter/widget/storage/a;

    aput-object v2, v3, p1

    const/4 p1, 0x5

    sget-object v2, Lcom/miui/optimizecenter/widget/storage/a;->j:Lcom/miui/optimizecenter/widget/storage/a;

    aput-object v2, v3, p1

    const/4 p1, 0x6

    sget-object v2, Lcom/miui/optimizecenter/widget/storage/a;->k:Lcom/miui/optimizecenter/widget/storage/a;

    aput-object v2, v3, p1

    const/4 p1, 0x7

    sget-object v2, Lcom/miui/optimizecenter/widget/storage/a;->o:Lcom/miui/optimizecenter/widget/storage/a;

    aput-object v2, v3, p1

    const/16 p1, 0x8

    sget-object v2, Lcom/miui/optimizecenter/widget/storage/a;->n:Lcom/miui/optimizecenter/widget/storage/a;

    aput-object v2, v3, p1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1}, Lra/l;->t(Ljava/util/Set;)V

    goto :goto_0

    :cond_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lra/j0;

    invoke-interface {v0, p1}, Lra/l;->i(Lra/j0;)V

    :goto_0
    return-void
.end method

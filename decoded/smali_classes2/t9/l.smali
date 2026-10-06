.class public final Lt9/l;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/app/AppOpsManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/permcenter/model/a;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Z

.field private d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lak/a<",
            "Loj/t;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/AppOpsManager;Ljava/util/List;Z)V
    .locals 1
    .param p1    # Landroid/app/AppOpsManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/AppOpsManager;",
            "Ljava/util/List<",
            "+",
            "Lcom/miui/permcenter/model/a;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "mAppOpsManager"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mPackages"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lt9/l;->a:Landroid/app/AppOpsManager;

    iput-object p2, p0, Lt9/l;->b:Ljava/util/List;

    iput-boolean p3, p0, Lt9/l;->c:Z

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 7
    .param p1    # [Ljava/lang/Void;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "voids"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lt9/l;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/permcenter/model/a;

    iget-object v1, p0, Lt9/l;->a:Landroid/app/AppOpsManager;

    invoke-virtual {v0}, Lcom/miui/permcenter/model/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/miui/permcenter/model/a;->c()I

    move-result v3

    iget-boolean v4, p0, Lt9/l;->c:Z

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    const/16 v6, 0x2735

    invoke-static {v1, v2, v3, v6, v4}, Lcom/miui/permcenter/compact/AppOpsUtilsCompat;->setMode(Landroid/app/AppOpsManager;Ljava/lang/String;III)V

    invoke-static {}, Lx4/z1;->e()I

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    invoke-virtual {v0}, Lcom/miui/permcenter/model/a;->b()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x3e7

    invoke-static {v1, v2, v3}, Lx4/f1;->E(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lt9/l;->a:Landroid/app/AppOpsManager;

    invoke-virtual {v0}, Lcom/miui/permcenter/model/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/miui/permcenter/model/a;->c()I

    move-result v4

    invoke-static {v3, v4}, Lx4/z1;->j(II)I

    move-result v3

    iget-boolean v4, p0, Lt9/l;->c:Z

    xor-int/2addr v4, v5

    invoke-static {v1, v2, v3, v6, v4}, Lcom/miui/permcenter/compact/AppOpsUtilsCompat;->setMode(Landroid/app/AppOpsManager;Ljava/lang/String;III)V

    :cond_0
    iget-object v1, p0, Lt9/l;->a:Landroid/app/AppOpsManager;

    invoke-virtual {v0}, Lcom/miui/permcenter/model/a;->b()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/miui/permcenter/model/a;->c()I

    move-result v4

    invoke-static {v3, v4}, Lx4/z1;->j(II)I

    move-result v3

    const/16 v4, 0x2736

    invoke-static {v1, v2, v3, v4, v5}, Lcom/miui/permcenter/compact/AppOpsUtilsCompat;->setMode(Landroid/app/AppOpsManager;Ljava/lang/String;III)V

    iget-boolean v1, p0, Lt9/l;->c:Z

    invoke-virtual {v0, v1}, Lcom/miui/permcenter/model/a;->e(Z)V

    goto :goto_0

    :cond_1
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method protected b(Z)V
    .locals 0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lt9/l;->d:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lak/a;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lak/a;->invoke()Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public final c(Lak/a;)V
    .locals 1
    .param p1    # Lak/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lak/a<",
            "Loj/t;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lt9/l;->d:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lt9/l;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lt9/l;->b(Z)V

    return-void
.end method

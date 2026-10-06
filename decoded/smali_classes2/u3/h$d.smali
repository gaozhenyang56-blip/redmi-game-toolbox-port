.class Lu3/h$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvf/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu3/h;->M0(Lcom/miui/ai/service/OperationListCollectService$g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lvf/b<",
        "Ljava/util/List<",
        "Lcom/miui/autotask/bean/r;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/ai/service/OperationListCollectService$g;

.field final synthetic b:Lu3/h;


# direct methods
.method constructor <init>(Lu3/h;Lcom/miui/ai/service/OperationListCollectService$g;)V
    .locals 0

    iput-object p1, p0, Lu3/h$d;->b:Lu3/h;

    iput-object p2, p0, Lu3/h$d;->a:Lcom/miui/ai/service/OperationListCollectService$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/autotask/bean/r;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "load success, data size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NewAutoTaskManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/autotask/bean/r;

    iget-object v4, p0, Lu3/h$d;->b:Lu3/h;

    invoke-virtual {v4, v2}, Lu3/h;->u(Lcom/miui/autotask/bean/r;)V

    invoke-virtual {v2}, Lcom/miui/autotask/bean/r;->o()Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lu3/h$d;->a:Lcom/miui/ai/service/OperationListCollectService$g;

    if-nez v1, :cond_2

    iget-object v1, p0, Lu3/h$d;->b:Lu3/h;

    invoke-static {v1}, Lu3/h;->g(Lu3/h;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    if-lez v1, :cond_3

    :cond_2
    move v0, v3

    :cond_3
    invoke-interface {p1, v0}, Lcom/miui/ai/service/OperationListCollectService$g;->a(Z)V

    return-void
.end method

.method public onFail(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "NewAutoTaskManager"

    const-string v1, "load task fail"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p1, p0, Lu3/h$d;->a:Lcom/miui/ai/service/OperationListCollectService$g;

    iget-object v0, p0, Lu3/h$d;->b:Lu3/h;

    invoke-static {v0}, Lu3/h;->g(Lu3/h;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1, v0}, Lcom/miui/ai/service/OperationListCollectService$g;->a(Z)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lu3/h$d;->a(Ljava/util/List;)V

    return-void
.end method

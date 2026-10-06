.class Lcom/miui/ai/service/OperationListCollectService$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvf/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/ai/service/OperationListCollectService;->T()V
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
.field final synthetic a:Lcom/miui/ai/service/OperationListCollectService;


# direct methods
.method constructor <init>(Lcom/miui/ai/service/OperationListCollectService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/ai/service/OperationListCollectService$b;->a:Lcom/miui/ai/service/OperationListCollectService;

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

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/autotask/bean/r;

    invoke-virtual {v4}, Lcom/miui/autotask/bean/r;->o()Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v0, v2, v3}, Lhd/a;->z1(III)V

    return-void
.end method

.method public onFail(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "auto_task_tag"

    const-string v1, "track task size fail"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/miui/ai/service/OperationListCollectService$b;->a(Ljava/util/List;)V

    return-void
.end method

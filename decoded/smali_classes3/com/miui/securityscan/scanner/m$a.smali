.class Lcom/miui/securityscan/scanner/m$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/securityscan/scanner/m;->o(Lrf/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrf/e;

.field final synthetic b:Lcom/miui/securityscan/scanner/m;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/scanner/m;Lrf/e;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/scanner/m$a;->b:Lcom/miui/securityscan/scanner/m;

    iput-object p2, p0, Lcom/miui/securityscan/scanner/m$a;->a:Lrf/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const-string v0, "SystemCheckManager"

    :try_start_0
    const-string v1, "scanSystemConfig start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/miui/securityscan/scanner/m$a;->a:Lrf/e;

    invoke-interface {v1}, Lrf/e;->d()V

    iget-object v1, p0, Lcom/miui/securityscan/scanner/m$a;->b:Lcom/miui/securityscan/scanner/m;

    invoke-static {v1}, Lcom/miui/securityscan/scanner/m;->d(Lcom/miui/securityscan/scanner/m;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/securityscan/model/ModelFactory;->produceSystemGroupModel(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scanSystemConfig groupList size is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/securityscan/model/GroupModel;

    invoke-virtual {v4}, Lcom/miui/securityscan/model/GroupModel;->scan()V

    invoke-virtual {v4}, Lcom/miui/securityscan/model/GroupModel;->getCurModel()Lcom/miui/securityscan/model/AbsModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/securityscan/model/AbsModel;->isScanHide()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "scanSystemConfig modelList size is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    add-int/lit8 v4, v3, 0x1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/securityscan/model/AbsModel;

    invoke-virtual {v3}, Lcom/miui/securityscan/model/AbsModel;->getDesc()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/miui/securityscan/scanner/m$a;->a:Lrf/e;

    invoke-interface {v6, v4, v5, v3}, Lrf/e;->a(IILjava/lang/Object;)V

    move v3, v4

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/miui/securityscan/scanner/m$a;->a:Lrf/e;

    const/16 v3, 0xb

    invoke-interface {v2, v1, v3}, Lrf/e;->c(Ljava/util/List;I)V

    :cond_3
    const-string v1, "scanSystemConfig end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/miui/securityscan/scanner/m$a;->a:Lrf/e;

    invoke-interface {v2}, Lrf/e;->e()V

    const-string v2, "scanSystemConfig() ScanCancelException has appeared"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method

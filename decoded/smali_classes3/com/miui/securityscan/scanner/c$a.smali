.class Lcom/miui/securityscan/scanner/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/securityscan/scanner/c;->e(Lrf/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrf/e;

.field final synthetic b:Lcom/miui/securityscan/scanner/c;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/scanner/c;Lrf/e;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/scanner/c$a;->b:Lcom/miui/securityscan/scanner/c;

    iput-object p2, p0, Lcom/miui/securityscan/scanner/c$a;->a:Lrf/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const-string v0, "ManualItemManager"

    :try_start_0
    const-string v1, "startScan"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/miui/securityscan/scanner/c$a;->a:Lrf/e;

    invoke-interface {v1}, Lrf/e;->d()V

    iget-object v1, p0, Lcom/miui/securityscan/scanner/c$a;->b:Lcom/miui/securityscan/scanner/c;

    invoke-static {v1}, Lcom/miui/securityscan/scanner/c;->a(Lcom/miui/securityscan/scanner/c;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/securityscan/model/ModelFactory;->produceManualGroupModel(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-static {}, Leg/p;->e()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/miui/securityscan/scanner/c$a;->b:Lcom/miui/securityscan/scanner/c;

    invoke-static {v4, v1, v2}, Lcom/miui/securityscan/scanner/c;->b(Lcom/miui/securityscan/scanner/c;Ljava/util/List;Ljava/util/List;)V

    move v2, v3

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/securityscan/model/GroupModel;

    invoke-virtual {v4}, Lcom/miui/securityscan/model/GroupModel;->scan()V

    iget-object v5, p0, Lcom/miui/securityscan/scanner/c$a;->a:Lrf/e;

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v4}, Lcom/miui/securityscan/model/GroupModel;->getDesc()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v2, v6, v4}, Lrf/e;->a(IILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/miui/securityscan/scanner/c$a;->a:Lrf/e;

    invoke-interface {v2, v1, v3}, Lrf/e;->c(Ljava/util/List;I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    iget-object v1, p0, Lcom/miui/securityscan/scanner/c$a;->a:Lrf/e;

    invoke-interface {v1}, Lrf/e;->e()V

    const-string v1, "startScan() InterruptedException has appeared"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

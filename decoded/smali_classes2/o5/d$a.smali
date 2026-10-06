.class Lo5/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo5/d;->d(Landroid/os/Handler;Ljava/lang/String;Lp5/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lp5/a;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/os/Handler;

.field final synthetic d:Lo5/d;


# direct methods
.method constructor <init>(Lo5/d;Lp5/a;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lo5/d$a;->d:Lo5/d;

    iput-object p2, p0, Lo5/d$a;->a:Lp5/a;

    iput-object p3, p0, Lo5/d$a;->b:Ljava/lang/String;

    iput-object p4, p0, Lo5/d$a;->c:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const-string v0, "startScan"

    const-string v1, "FirstAidKitManualItemManager"

    :try_start_0
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lo5/d$a;->a:Lp5/a;

    invoke-interface {v2}, Lp5/a;->d()V

    iget-object v2, p0, Lo5/d$a;->d:Lo5/d;

    invoke-static {v2}, Lo5/d;->a(Lo5/d;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lo5/d$a;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/miui/securityscan/model/ModelFactory;->produceFirstAidKitGroupModel(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    move v4, v3

    move v5, v4

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/securityscan/model/AbsModel;

    invoke-virtual {v6}, Lcom/miui/securityscan/model/AbsModel;->scan()V

    iget-object v7, p0, Lo5/d$a;->a:Lp5/a;

    add-int/lit8 v4, v4, 0x1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v6}, Lcom/miui/securityscan/model/AbsModel;->getDesc()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v4, v8, v9}, Lp5/a;->a(IILjava/lang/String;)V

    invoke-virtual {v6}, Lcom/miui/securityscan/model/AbsModel;->isSafe()Lcom/miui/securityscan/model/AbsModel$State;

    move-result-object v7

    sget-object v8, Lcom/miui/securityscan/model/AbsModel$State;->SAFE:Lcom/miui/securityscan/model/AbsModel$State;

    if-eq v7, v8, :cond_0

    add-int/lit8 v5, v5, 0x1

    :cond_0
    iget-object v7, p0, Lo5/d$a;->c:Landroid/os/Handler;

    invoke-virtual {v6, v7}, Lcom/miui/securityscan/model/AbsModel;->setFirstAidEventHandler(Landroid/os/Handler;)V

    goto :goto_0

    :cond_1
    move v5, v3

    :cond_2
    iget-object v4, p0, Lo5/d$a;->a:Lp5/a;

    invoke-interface {v4, v2, v3, v5}, Lp5/a;->b(Ljava/util/List;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

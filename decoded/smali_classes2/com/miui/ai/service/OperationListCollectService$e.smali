.class Lcom/miui/ai/service/OperationListCollectService$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/ai/service/OperationListCollectService$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/ai/service/OperationListCollectService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/ai/service/OperationListCollectService;


# direct methods
.method constructor <init>(Lcom/miui/ai/service/OperationListCollectService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/ai/service/OperationListCollectService$e;->a:Lcom/miui/ai/service/OperationListCollectService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/miui/ai/service/OperationListCollectService$e;->a:Lcom/miui/ai/service/OperationListCollectService;

    invoke-static {v0}, Lcom/miui/ai/service/OperationListCollectService;->q(Lcom/miui/ai/service/OperationListCollectService;)Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/ai/service/OperationListCollectService$e;->a:Lcom/miui/ai/service/OperationListCollectService;

    invoke-static {v0, p1}, Lcom/miui/ai/service/OperationListCollectService;->r(Lcom/miui/ai/service/OperationListCollectService;Z)Z

    iget-object v0, p0, Lcom/miui/ai/service/OperationListCollectService$e;->a:Lcom/miui/ai/service/OperationListCollectService;

    invoke-static {v0}, Lcom/miui/ai/service/OperationListCollectService;->s(Lcom/miui/ai/service/OperationListCollectService;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/ai/service/OperationListCollectService$e;->a:Lcom/miui/ai/service/OperationListCollectService;

    invoke-static {v0}, Lcom/miui/ai/service/OperationListCollectService;->e(Lcom/miui/ai/service/OperationListCollectService;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    iget-object v0, p0, Lcom/miui/ai/service/OperationListCollectService$e;->a:Lcom/miui/ai/service/OperationListCollectService;

    invoke-static {v0, p1}, Lcom/miui/ai/service/OperationListCollectService;->f(Lcom/miui/ai/service/OperationListCollectService;Z)V

    return-void
.end method

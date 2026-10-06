.class Lcom/miui/securitycenter/service/NotificationService$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/securitycenter/service/NotificationService;->s(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/securitycenter/service/NotificationService;


# direct methods
.method constructor <init>(Lcom/miui/securitycenter/service/NotificationService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securitycenter/service/NotificationService$d;->a:Lcom/miui/securitycenter/service/NotificationService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/miui/securitycenter/service/NotificationService$d;->a:Lcom/miui/securitycenter/service/NotificationService;

    invoke-static {v0}, Lcom/miui/securitycenter/service/NotificationService;->k(Lcom/miui/securitycenter/service/NotificationService;)V

    iget-object v0, p0, Lcom/miui/securitycenter/service/NotificationService$d;->a:Lcom/miui/securitycenter/service/NotificationService;

    invoke-static {v0}, Lcom/miui/securitycenter/service/NotificationService;->l(Lcom/miui/securitycenter/service/NotificationService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/securitycenter/service/NotificationService$d;->a:Lcom/miui/securitycenter/service/NotificationService;

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "cycleMemory"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/miui/securitycenter/service/NotificationService;->o(Lcom/miui/securitycenter/service/NotificationService;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/miui/securitycenter/service/NotificationService$d;->a:Lcom/miui/securitycenter/service/NotificationService;

    invoke-static {v0}, Lcom/miui/securitycenter/service/NotificationService;->n(Lcom/miui/securitycenter/service/NotificationService;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/miui/securitycenter/service/NotificationService$d;->a:Lcom/miui/securitycenter/service/NotificationService;

    new-instance v1, Lcom/miui/securitycenter/service/NotificationService$e;

    iget-object v2, p0, Lcom/miui/securitycenter/service/NotificationService$d;->a:Lcom/miui/securitycenter/service/NotificationService;

    invoke-static {v2}, Lcom/miui/securitycenter/service/NotificationService;->n(Lcom/miui/securitycenter/service/NotificationService;)Landroid/os/HandlerThread;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/miui/securitycenter/service/NotificationService$e;-><init>(Lcom/miui/securitycenter/service/NotificationService;Landroid/os/Looper;)V

    invoke-static {v0, v1}, Lcom/miui/securitycenter/service/NotificationService;->q(Lcom/miui/securitycenter/service/NotificationService;Lcom/miui/securitycenter/service/NotificationService$e;)Lcom/miui/securitycenter/service/NotificationService$e;

    iget-object v0, p0, Lcom/miui/securitycenter/service/NotificationService$d;->a:Lcom/miui/securitycenter/service/NotificationService;

    invoke-static {v0}, Lcom/miui/securitycenter/service/NotificationService;->p(Lcom/miui/securitycenter/service/NotificationService;)Lcom/miui/securitycenter/service/NotificationService$e;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/securitycenter/service/NotificationService$e;->a(Lcom/miui/securitycenter/service/NotificationService$e;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/securitycenter/service/NotificationService$d;->a:Lcom/miui/securitycenter/service/NotificationService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/securitycenter/service/NotificationService;->m(Lcom/miui/securitycenter/service/NotificationService;Z)Z

    return-void
.end method

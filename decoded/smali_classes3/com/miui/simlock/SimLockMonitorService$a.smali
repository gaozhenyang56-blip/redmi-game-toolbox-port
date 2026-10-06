.class Lcom/miui/simlock/SimLockMonitorService$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/simlock/SimLockMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/simlock/SimLockMonitorService;


# direct methods
.method constructor <init>(Lcom/miui/simlock/SimLockMonitorService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/simlock/SimLockMonitorService$a;->a:Lcom/miui/simlock/SimLockMonitorService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/simlock/SimLockMonitorService$a;->a:Lcom/miui/simlock/SimLockMonitorService;

    invoke-static {p1}, Lcom/miui/simlock/SimLockMonitorService;->a(Lcom/miui/simlock/SimLockMonitorService;)Lcom/miui/simlock/SimLockManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/simlock/SimLockManager;->w8()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/simlock/SimLockMonitorService$a;->a:Lcom/miui/simlock/SimLockMonitorService;

    invoke-static {v0}, Lcom/miui/simlock/SimLockMonitorService;->a(Lcom/miui/simlock/SimLockMonitorService;)Lcom/miui/simlock/SimLockManager;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/miui/simlock/SimLockManager;->u8(I)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/miui/simlock/SimLockMonitorService$a;->a:Lcom/miui/simlock/SimLockMonitorService;

    invoke-static {p1}, Lcom/miui/simlock/SimLockMonitorService;->a(Lcom/miui/simlock/SimLockMonitorService;)Lcom/miui/simlock/SimLockManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/simlock/SimLockManager;->x8()V

    invoke-static {}, Lcom/miui/analytics/a;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.miui.securitycenter.bootaware"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/miui/simlock/SimLockMonitorService$a;->a:Lcom/miui/simlock/SimLockMonitorService;

    invoke-virtual {p1}, Landroid/app/Service;->stopSelf()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/miui/simlock/SimLockMonitorService$a;->a:Lcom/miui/simlock/SimLockMonitorService;

    invoke-static {v0}, Lcom/miui/simlock/SimLockMonitorService;->a(Lcom/miui/simlock/SimLockMonitorService;)Lcom/miui/simlock/SimLockManager;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lr1/a;

    invoke-virtual {v0, v1, v2, p1}, Lcom/miui/simlock/SimLockManager;->v8(IILr1/a;)V

    :cond_4
    :goto_0
    return-void
.end method

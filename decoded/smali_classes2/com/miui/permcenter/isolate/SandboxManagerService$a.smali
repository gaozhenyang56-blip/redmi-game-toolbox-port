.class Lcom/miui/permcenter/isolate/SandboxManagerService$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/permcenter/isolate/SandboxManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/permcenter/isolate/SandboxManagerService;


# direct methods
.method public constructor <init>(Lcom/miui/permcenter/isolate/SandboxManagerService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/isolate/SandboxManagerService$a;->a:Lcom/miui/permcenter/isolate/SandboxManagerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const-wide/32 v2, 0xdbba0

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    if-eq p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "SandboxManagerService"

    const-string v0, "handleMessage and stopSelf."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/permcenter/isolate/SandboxManagerService$a;->a:Lcom/miui/permcenter/isolate/SandboxManagerService;

    invoke-virtual {p1}, Landroid/app/Service;->stopSelf()V

    goto :goto_0

    :cond_2
    sget-boolean p1, Lcom/miui/permcenter/isolate/a;->b:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/permcenter/isolate/SandboxManagerService$a;->a:Lcom/miui/permcenter/isolate/SandboxManagerService;

    invoke-static {p1}, Lcom/miui/permcenter/isolate/SandboxManagerService;->c(Lcom/miui/permcenter/isolate/SandboxManagerService;)V

    :cond_3
    sget-boolean p1, Lcom/miui/permcenter/isolate/a;->a:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/miui/permcenter/isolate/SandboxManagerService$a;->a:Lcom/miui/permcenter/isolate/SandboxManagerService;

    invoke-static {p1}, Lcom/miui/permcenter/isolate/SandboxManagerService;->d(Lcom/miui/permcenter/isolate/SandboxManagerService;)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/miui/permcenter/isolate/SandboxManagerService$a;->a:Lcom/miui/permcenter/isolate/SandboxManagerService;

    invoke-static {p1}, Lcom/miui/permcenter/isolate/SandboxManagerService;->a(Lcom/miui/permcenter/isolate/SandboxManagerService;)V

    iget-object p1, p0, Lcom/miui/permcenter/isolate/SandboxManagerService$a;->a:Lcom/miui/permcenter/isolate/SandboxManagerService;

    invoke-static {p1}, Lcom/miui/permcenter/isolate/SandboxManagerService;->b(Lcom/miui/permcenter/isolate/SandboxManagerService;)V

    :cond_5
    :goto_0
    return-void
.end method

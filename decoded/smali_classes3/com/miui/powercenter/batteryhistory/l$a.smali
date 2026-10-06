.class Lcom/miui/powercenter/batteryhistory/l$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/powercenter/batteryhistory/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/powercenter/batteryhistory/l;


# direct methods
.method public constructor <init>(Lcom/miui/powercenter/batteryhistory/l;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/l$a;->a:Lcom/miui/powercenter/batteryhistory/l;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/l$a;->a:Lcom/miui/powercenter/batteryhistory/l;

    invoke-static {v0}, Lcom/miui/powercenter/batteryhistory/l;->a(Lcom/miui/powercenter/batteryhistory/l;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/l$a;->a:Lcom/miui/powercenter/batteryhistory/l;

    invoke-static {v0}, Lcom/miui/powercenter/batteryhistory/l;->b(Lcom/miui/powercenter/batteryhistory/l;)V

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/l$a;->a:Lcom/miui/powercenter/batteryhistory/l;

    invoke-static {v0}, Lcom/miui/powercenter/batteryhistory/l;->a(Lcom/miui/powercenter/batteryhistory/l;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/l$a;->a:Lcom/miui/powercenter/batteryhistory/l;

    invoke-static {v0}, Lcom/miui/powercenter/batteryhistory/l;->c(Lcom/miui/powercenter/batteryhistory/l;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/l$a;->a:Lcom/miui/powercenter/batteryhistory/l;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/powercenter/batteryhistory/l;->d(Lcom/miui/powercenter/batteryhistory/l;Lcom/miui/powercenter/batteryhistory/i$a;)Lcom/miui/powercenter/batteryhistory/i$a;

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/l$a;->a:Lcom/miui/powercenter/batteryhistory/l;

    invoke-static {v0, v1}, Lcom/miui/powercenter/batteryhistory/l;->e(Lcom/miui/powercenter/batteryhistory/l;Ljava/util/List;)Ljava/util/List;

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

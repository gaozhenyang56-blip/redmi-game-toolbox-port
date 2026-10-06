.class Lcom/miui/powercenter/batteryhistory/k$b;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/powercenter/batteryhistory/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/powercenter/batteryhistory/k;


# direct methods
.method public constructor <init>(Lcom/miui/powercenter/batteryhistory/k;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/k$b;->a:Lcom/miui/powercenter/batteryhistory/k;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/miui/powercenter/legacypowerrank/g;->e()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :cond_2
    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/k$b;->a:Lcom/miui/powercenter/batteryhistory/k;

    invoke-static {v1, v0}, Lcom/miui/powercenter/batteryhistory/k;->e(Lcom/miui/powercenter/batteryhistory/k;Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/k$b;->a:Lcom/miui/powercenter/batteryhistory/k;

    invoke-static {v0}, Lcom/miui/powercenter/batteryhistory/k;->d(Lcom/miui/powercenter/batteryhistory/k;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/k$b;->a:Lcom/miui/powercenter/batteryhistory/k;

    invoke-static {v0}, Lcom/miui/powercenter/batteryhistory/k;->c(Lcom/miui/powercenter/batteryhistory/k;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/k$b;->a:Lcom/miui/powercenter/batteryhistory/k;

    invoke-static {v0}, Lcom/miui/powercenter/batteryhistory/k;->b(Lcom/miui/powercenter/batteryhistory/k;)V

    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

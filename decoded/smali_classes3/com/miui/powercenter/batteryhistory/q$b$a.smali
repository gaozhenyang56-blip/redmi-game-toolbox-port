.class Lcom/miui/powercenter/batteryhistory/q$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/powercenter/batteryhistory/q$b;->a(Lcom/miui/powercenter/batteryhistory/i$a;Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/powercenter/batteryhistory/i$a;

.field final synthetic b:Lcom/miui/powercenter/batteryhistory/q$b;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/batteryhistory/q$b;Lcom/miui/powercenter/batteryhistory/i$a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/q$b$a;->b:Lcom/miui/powercenter/batteryhistory/q$b;

    iput-object p2, p0, Lcom/miui/powercenter/batteryhistory/q$b$a;->a:Lcom/miui/powercenter/batteryhistory/i$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/q$b$a;->b:Lcom/miui/powercenter/batteryhistory/q$b;

    iget-object v0, v0, Lcom/miui/powercenter/batteryhistory/q$b;->a:Lcom/miui/powercenter/batteryhistory/q;

    invoke-static {v0}, Lcom/miui/powercenter/batteryhistory/q;->c(Lcom/miui/powercenter/batteryhistory/q;)Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/q$b$a;->b:Lcom/miui/powercenter/batteryhistory/q$b;

    iget-object v0, v0, Lcom/miui/powercenter/batteryhistory/q$b;->a:Lcom/miui/powercenter/batteryhistory/q;

    invoke-static {v0}, Lcom/miui/powercenter/batteryhistory/q;->c(Lcom/miui/powercenter/batteryhistory/q;)Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/q$b$a;->a:Lcom/miui/powercenter/batteryhistory/i$a;

    iget-object v1, v1, Lcom/miui/powercenter/batteryhistory/i$a;->a:Ljava/util/List;

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v2}, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->e(Ljava/util/List;Ljava/util/concurrent/Executor;)V

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/q$b$a;->b:Lcom/miui/powercenter/batteryhistory/q$b;

    iget-object v0, v0, Lcom/miui/powercenter/batteryhistory/q$b;->a:Lcom/miui/powercenter/batteryhistory/q;

    invoke-static {v0}, Lcom/miui/powercenter/batteryhistory/q;->c(Lcom/miui/powercenter/batteryhistory/q;)Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

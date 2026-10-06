.class Lcom/miui/powercenter/powersaver/PerformanceModeTileService$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/powercenter/powersaver/PerformanceModeTileService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/powercenter/powersaver/PerformanceModeTileService;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/powersaver/PerformanceModeTileService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/powersaver/PerformanceModeTileService$a;->a:Lcom/miui/powercenter/powersaver/PerformanceModeTileService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "miui.intent.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "POWER_SAVE_MODE_OPEN"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tileService powerSaveMode = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "PerformanceModeTileService"

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/powercenter/powersaver/PerformanceModeTileService$a;->a:Lcom/miui/powercenter/powersaver/PerformanceModeTileService;

    invoke-static {p1, v0}, Lcom/miui/powercenter/powersaver/PerformanceModeTileService;->a(Lcom/miui/powercenter/powersaver/PerformanceModeTileService;Z)V

    :cond_0
    return-void
.end method

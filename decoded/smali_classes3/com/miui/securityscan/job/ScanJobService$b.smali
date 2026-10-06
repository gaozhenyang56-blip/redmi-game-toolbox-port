.class Lcom/miui/securityscan/job/ScanJobService$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrf/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/securityscan/job/ScanJobService;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/securityscan/job/ScanJobService;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/job/ScanJobService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/job/ScanJobService$b;->a:Lcom/miui/securityscan/job/ScanJobService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 0

    return-void
.end method

.method public h()V
    .locals 4

    invoke-static {}, Lcom/miui/securityscan/scanner/ScoreManager;->j()Lcom/miui/securityscan/scanner/ScoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/securityscan/scanner/ScoreManager;->y()V

    invoke-static {}, Lcom/miui/securityscan/scanner/ScoreManager;->j()Lcom/miui/securityscan/scanner/ScoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/securityscan/scanner/ScoreManager;->q()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFinishScanManualItem "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ScanJobService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/miui/securityscan/job/ScanJobService$b;->a:Lcom/miui/securityscan/job/ScanJobService;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lef/x;->j0(Landroid/content/Context;I)V

    invoke-static {}, Lcom/miui/securityscan/scanner/ScoreManager;->j()Lcom/miui/securityscan/scanner/ScoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/securityscan/scanner/ScoreManager;->Q()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lef/x;->Z(J)V

    invoke-static {}, Lcom/miui/securityscan/scanner/ScoreManager;->j()Lcom/miui/securityscan/scanner/ScoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/securityscan/scanner/ScoreManager;->R()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/securityscan/job/ScanJobService$b;->a:Lcom/miui/securityscan/job/ScanJobService;

    invoke-static {v2}, Lcom/miui/securityscan/job/ScanJobService;->a(Lcom/miui/securityscan/job/ScanJobService;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-string v2, "idle_scan_finish"

    invoke-static {v2, v0, v1}, Lqf/c;->Q(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/miui/securityscan/job/ScanJobService$b;->a:Lcom/miui/securityscan/job/ScanJobService;

    invoke-static {v0}, Lcom/miui/securityscan/job/ScanJobService;->b(Lcom/miui/securityscan/job/ScanJobService;)V

    return-void
.end method

.method public i()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/securityscan/job/ScanJobService$b;->a:Lcom/miui/securityscan/job/ScanJobService;

    invoke-static {v2}, Lcom/miui/securityscan/job/ScanJobService;->a(Lcom/miui/securityscan/job/ScanJobService;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-string v2, "idle_scan_cancel"

    invoke-static {v2, v0, v1}, Lqf/c;->Q(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/miui/securityscan/job/ScanJobService$b;->a:Lcom/miui/securityscan/job/ScanJobService;

    invoke-static {v0}, Lcom/miui/securityscan/job/ScanJobService;->b(Lcom/miui/securityscan/job/ScanJobService;)V

    return-void
.end method

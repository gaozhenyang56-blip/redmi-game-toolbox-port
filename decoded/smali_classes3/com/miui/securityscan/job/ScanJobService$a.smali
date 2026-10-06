.class Lcom/miui/securityscan/job/ScanJobService$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/securityscan/job/ScanJobService;
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

    iput-object p1, p0, Lcom/miui/securityscan/job/ScanJobService$a;->a:Lcom/miui/securityscan/job/ScanJobService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "ScanJobService"

    const-string v1, "ScanJobService didn\'t stop in 20000ms timeOut!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/securityscan/job/ScanJobService$a;->a:Lcom/miui/securityscan/job/ScanJobService;

    invoke-static {v2}, Lcom/miui/securityscan/job/ScanJobService;->a(Lcom/miui/securityscan/job/ScanJobService;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-string v2, "idle_scan_cancel"

    invoke-static {v2, v0, v1}, Lqf/c;->Q(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/miui/securityscan/job/ScanJobService$a;->a:Lcom/miui/securityscan/job/ScanJobService;

    invoke-static {v0}, Lcom/miui/securityscan/job/ScanJobService;->b(Lcom/miui/securityscan/job/ScanJobService;)V

    return-void
.end method

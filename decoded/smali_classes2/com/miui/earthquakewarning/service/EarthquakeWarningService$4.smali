.class Lcom/miui/earthquakewarning/service/EarthquakeWarningService$4;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/earthquakewarning/service/EarthquakeWarningService;->startLocation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/earthquakewarning/service/EarthquakeWarningService;


# direct methods
.method constructor <init>(Lcom/miui/earthquakewarning/service/EarthquakeWarningService;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/miui/earthquakewarning/service/EarthquakeWarningService$4;->this$0:Lcom/miui/earthquakewarning/service/EarthquakeWarningService;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 4

    iget-object v0, p0, Lcom/miui/earthquakewarning/service/EarthquakeWarningService$4;->this$0:Lcom/miui/earthquakewarning/service/EarthquakeWarningService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/earthquakewarning/service/EarthquakeWarningService;->access$302(Lcom/miui/earthquakewarning/service/EarthquakeWarningService;Z)Z

    iget-object v0, p0, Lcom/miui/earthquakewarning/service/EarthquakeWarningService$4;->this$0:Lcom/miui/earthquakewarning/service/EarthquakeWarningService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLocation CountDownTimer finish = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/earthquakewarning/service/EarthquakeWarningService;->access$200(Lcom/miui/earthquakewarning/service/EarthquakeWarningService;Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/earthquakewarning/service/EarthquakeMonitorDataManager;->getInstance()Lcom/miui/earthquakewarning/service/EarthquakeMonitorDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/earthquakewarning/service/EarthquakeMonitorDataManager;->stopLocation()V

    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method

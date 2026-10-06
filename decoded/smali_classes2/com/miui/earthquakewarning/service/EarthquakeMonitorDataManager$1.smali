.class Lcom/miui/earthquakewarning/service/EarthquakeMonitorDataManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/earthquakewarning/service/EarthquakeMonitorDataManager;->sendData(Lcom/miui/earthquakewarning/model/EwTranData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/earthquakewarning/service/EarthquakeMonitorDataManager;

.field final synthetic val$data:Lcom/miui/earthquakewarning/model/EwTranData;


# direct methods
.method constructor <init>(Lcom/miui/earthquakewarning/service/EarthquakeMonitorDataManager;Lcom/miui/earthquakewarning/model/EwTranData;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/earthquakewarning/service/EarthquakeMonitorDataManager$1;->this$0:Lcom/miui/earthquakewarning/service/EarthquakeMonitorDataManager;

    iput-object p2, p0, Lcom/miui/earthquakewarning/service/EarthquakeMonitorDataManager$1;->val$data:Lcom/miui/earthquakewarning/model/EwTranData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/miui/earthquakewarning/service/EarthquakeMonitorDataManager$1;->this$0:Lcom/miui/earthquakewarning/service/EarthquakeMonitorDataManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send data2 time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", send before "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/earthquakewarning/service/EarthquakeMonitorDataManager;->access$000(Lcom/miui/earthquakewarning/service/EarthquakeMonitorDataManager;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/earthquakewarning/service/EarthquakeMonitorDataManager$1;->this$0:Lcom/miui/earthquakewarning/service/EarthquakeMonitorDataManager;

    iget-object v1, p0, Lcom/miui/earthquakewarning/service/EarthquakeMonitorDataManager$1;->val$data:Lcom/miui/earthquakewarning/model/EwTranData;

    invoke-static {v0, v1}, Lcom/miui/earthquakewarning/service/EarthquakeMonitorDataManager;->access$100(Lcom/miui/earthquakewarning/service/EarthquakeMonitorDataManager;Lcom/miui/earthquakewarning/model/EwTranData;)V

    return-void
.end method

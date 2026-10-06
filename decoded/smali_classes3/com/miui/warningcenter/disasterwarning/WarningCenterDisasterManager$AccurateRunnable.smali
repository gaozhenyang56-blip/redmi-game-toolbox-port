.class Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterManager$AccurateRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccurateRunnable"
.end annotation


# instance fields
.field private areaObject:Lorg/json/JSONObject;

.field private context:Landroid/content/Context;

.field private item:Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;

.field final synthetic this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterManager;


# direct methods
.method public constructor <init>(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterManager;Landroid/content/Context;Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterManager$AccurateRunnable;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterManager$AccurateRunnable;->item:Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;

    iput-object p4, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterManager$AccurateRunnable;->areaObject:Lorg/json/JSONObject;

    iput-object p2, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterManager$AccurateRunnable;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const-string v0, "WcDisasterTask"

    const-string v1, "WarningCenterDisasterManager: accurate getLocation"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    new-instance v8, Landroid/location/Criteria;

    invoke-direct {v8}, Landroid/location/Criteria;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Landroid/location/Criteria;->setAccuracy(I)V

    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    invoke-virtual {v8, v2}, Landroid/location/Criteria;->setBearingRequired(Z)V

    invoke-virtual {v8, v1}, Landroid/location/Criteria;->setCostAllowed(Z)V

    invoke-virtual {v8, v1}, Landroid/location/Criteria;->setPowerRequirement(I)V

    new-instance v9, Landroid/os/Handler;

    invoke-direct {v9}, Landroid/os/Handler;-><init>()V

    new-instance v10, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterManager$AccurateLocatonListener;

    iget-object v2, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterManager$AccurateRunnable;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterManager;

    iget-object v3, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterManager$AccurateRunnable;->context:Landroid/content/Context;

    iget-object v6, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterManager$AccurateRunnable;->item:Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;

    iget-object v7, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterManager$AccurateRunnable;->areaObject:Lorg/json/JSONObject;

    move-object v1, v10

    move-object v4, v0

    move-object v5, v9

    invoke-direct/range {v1 .. v7}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterManager$AccurateLocatonListener;-><init>(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterManager;Landroid/content/Context;Landroid/location/LocationManager;Landroid/os/Handler;Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;Lorg/json/JSONObject;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v8, v10, v1}, Landroid/location/LocationManager;->requestSingleUpdate(Landroid/location/Criteria;Landroid/location/LocationListener;Landroid/os/Looper;)V

    new-instance v1, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterManager$DelayCheckRunnable;

    iget-object v2, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterManager$AccurateRunnable;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterManager;

    invoke-direct {v1, v2, v0, v10}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterManager$DelayCheckRunnable;-><init>(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterManager;Landroid/location/LocationManager;Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterManager$AccurateLocatonListener;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v9, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

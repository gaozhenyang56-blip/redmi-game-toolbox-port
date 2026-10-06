.class Lcom/miui/earthquakewarning/EarthquakeWarningManager$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/earthquakewarning/utils/LocationUtils$LocationResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/earthquakewarning/EarthquakeWarningManager;->getLocationStep(Lcom/miui/earthquakewarning/model/UserQuakeItem;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/earthquakewarning/EarthquakeWarningManager;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$userQuakeItem:Lcom/miui/earthquakewarning/model/UserQuakeItem;


# direct methods
.method constructor <init>(Lcom/miui/earthquakewarning/EarthquakeWarningManager;Lcom/miui/earthquakewarning/model/UserQuakeItem;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/earthquakewarning/EarthquakeWarningManager$6;->this$0:Lcom/miui/earthquakewarning/EarthquakeWarningManager;

    iput-object p2, p0, Lcom/miui/earthquakewarning/EarthquakeWarningManager$6;->val$userQuakeItem:Lcom/miui/earthquakewarning/model/UserQuakeItem;

    iput-object p3, p0, Lcom/miui/earthquakewarning/EarthquakeWarningManager$6;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public locationFail()V
    .locals 2

    const-string v0, "EarthquakeManager"

    const-string v1, "locate failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "push_error_location_failed"

    invoke-static {v0}, Lcom/miui/earthquakewarning/analytics/AnalyticHelper;->trackPushActionModuleClick(Ljava/lang/String;)V

    return-void
.end method

.method public locationSuccess(Landroid/location/Location;)V
    .locals 22

    move-object/from16 v0, p0

    new-instance v1, Lcom/miui/earthquakewarning/model/LocationModel;

    invoke-direct {v1}, Lcom/miui/earthquakewarning/model/LocationModel;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/miui/earthquakewarning/model/LocationModel;->setLatitude(D)V

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/miui/earthquakewarning/model/LocationModel;->setLongitude(D)V

    iget-object v2, v0, Lcom/miui/earthquakewarning/EarthquakeWarningManager$6;->val$userQuakeItem:Lcom/miui/earthquakewarning/model/UserQuakeItem;

    invoke-virtual {v2, v1}, Lcom/miui/earthquakewarning/model/UserQuakeItem;->setLocation(Lcom/miui/earthquakewarning/model/LocationModel;)V

    iget-object v1, v0, Lcom/miui/earthquakewarning/EarthquakeWarningManager$6;->val$userQuakeItem:Lcom/miui/earthquakewarning/model/UserQuakeItem;

    sget-object v2, Lcom/miui/earthquakewarning/IntensityTransformer;->DEFAULT:Lcom/miui/earthquakewarning/IntensityTransformer;

    invoke-virtual {v1, v2}, Lcom/miui/earthquakewarning/model/UserQuakeItem;->calIC(Lcom/miui/earthquakewarning/IntensityTransformer;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const-string v3, "NO_POPUP_REASON"

    const-string v4, "receive"

    const/4 v5, 0x0

    if-eqz v1, :cond_0

    const-string v1, "EarthquakeManager"

    const-string v6, "show failed : push_error_time_long"

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "push_error_time_long"

    invoke-static {v1}, Lcom/miui/earthquakewarning/analytics/AnalyticHelper;->trackPushActionModuleClick(Ljava/lang/String;)V

    new-array v1, v2, [Loj/l;

    new-instance v2, Loj/l;

    const-string v6, "PUSH_EXPIRED"

    invoke-direct {v2, v3, v6}, Loj/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v5

    invoke-static {v4, v1}, Lcom/miui/earthquakewarning/analytics/NewTracker;->track(Ljava/lang/String;[Loj/l;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/miui/earthquakewarning/utils/Utils;->getSelectIntensity()F

    move-result v1

    iget-object v6, v0, Lcom/miui/earthquakewarning/EarthquakeWarningManager$6;->val$userQuakeItem:Lcom/miui/earthquakewarning/model/UserQuakeItem;

    invoke-virtual {v6}, Lcom/miui/earthquakewarning/model/UserQuakeItem;->getIntensity()F

    move-result v6

    cmpl-float v6, v6, v1

    const-string v7, "ALERT_WINDOW"

    const-string v8, "ALERT_STYLE"

    const-string v11, "PUSH_MSG_DELAY_SECONDS"

    const-string v13, "LEVEL_BY_ALGORITHM"

    const/4 v14, 0x2

    const-string v15, "USER_DEFINED_THRESHOLD"

    const/4 v12, 0x4

    if-ltz v6, :cond_1

    iget-object v3, v0, Lcom/miui/earthquakewarning/EarthquakeWarningManager$6;->val$userQuakeItem:Lcom/miui/earthquakewarning/model/UserQuakeItem;

    invoke-virtual {v3, v2}, Lcom/miui/earthquakewarning/model/UserQuakeItem;->setIsMyCity(I)V

    new-instance v3, Lcom/miui/earthquakewarning/service/ManageDataTask;

    iget-object v6, v0, Lcom/miui/earthquakewarning/EarthquakeWarningManager$6;->val$context:Landroid/content/Context;

    iget-object v9, v0, Lcom/miui/earthquakewarning/EarthquakeWarningManager$6;->val$userQuakeItem:Lcom/miui/earthquakewarning/model/UserQuakeItem;

    invoke-direct {v3, v6, v9, v2}, Lcom/miui/earthquakewarning/service/ManageDataTask;-><init>(Landroid/content/Context;Lcom/miui/earthquakewarning/model/UserQuakeItem;Z)V

    new-array v6, v5, [Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v3, v0, Lcom/miui/earthquakewarning/EarthquakeWarningManager$6;->this$0:Lcom/miui/earthquakewarning/EarthquakeWarningManager;

    iget-object v6, v0, Lcom/miui/earthquakewarning/EarthquakeWarningManager$6;->val$userQuakeItem:Lcom/miui/earthquakewarning/model/UserQuakeItem;

    invoke-virtual {v6}, Lcom/miui/earthquakewarning/model/QuakeItem;->getEventID()J

    move-result-wide v9

    invoke-static {v3, v9, v10}, Lcom/miui/earthquakewarning/EarthquakeWarningManager;->access$402(Lcom/miui/earthquakewarning/EarthquakeWarningManager;J)J

    iget-object v3, v0, Lcom/miui/earthquakewarning/EarthquakeWarningManager$6;->val$context:Landroid/content/Context;

    iget-object v6, v0, Lcom/miui/earthquakewarning/EarthquakeWarningManager$6;->val$userQuakeItem:Lcom/miui/earthquakewarning/model/UserQuakeItem;

    invoke-static {v3, v6}, Lcom/miui/earthquakewarning/EarthquakeWarningManager;->showAlarmNotification(Landroid/content/Context;Lcom/miui/earthquakewarning/model/UserQuakeItem;)V

    new-array v3, v12, [Loj/l;

    new-instance v6, Loj/l;

    invoke-direct {v6, v8, v7}, Loj/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v3, v5

    new-instance v5, Loj/l;

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v15, v1}, Loj/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v3, v2

    new-instance v1, Loj/l;

    iget-object v2, v0, Lcom/miui/earthquakewarning/EarthquakeWarningManager$6;->val$userQuakeItem:Lcom/miui/earthquakewarning/model/UserQuakeItem;

    invoke-virtual {v2}, Lcom/miui/earthquakewarning/model/UserQuakeItem;->getIntensity()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v1, v13, v2}, Loj/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v3, v14

    new-instance v1, Loj/l;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v2, v0, Lcom/miui/earthquakewarning/EarthquakeWarningManager$6;->val$userQuakeItem:Lcom/miui/earthquakewarning/model/UserQuakeItem;

    invoke-virtual {v2}, Lcom/miui/earthquakewarning/model/QuakeItem;->getUpdateTime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v1, v11, v2}, Loj/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x3

    aput-object v1, v3, v2

    invoke-static {v4, v3}, Lcom/miui/earthquakewarning/analytics/NewTracker;->track(Ljava/lang/String;[Loj/l;)V

    goto/16 :goto_0

    :cond_1
    iget-object v6, v0, Lcom/miui/earthquakewarning/EarthquakeWarningManager$6;->this$0:Lcom/miui/earthquakewarning/EarthquakeWarningManager;

    invoke-static {v6}, Lcom/miui/earthquakewarning/EarthquakeWarningManager;->access$400(Lcom/miui/earthquakewarning/EarthquakeWarningManager;)J

    move-result-wide v9

    const-wide/16 v16, 0x0

    cmp-long v6, v9, v16

    if-lez v6, :cond_2

    iget-object v6, v0, Lcom/miui/earthquakewarning/EarthquakeWarningManager$6;->this$0:Lcom/miui/earthquakewarning/EarthquakeWarningManager;

    invoke-static {v6}, Lcom/miui/earthquakewarning/EarthquakeWarningManager;->access$400(Lcom/miui/earthquakewarning/EarthquakeWarningManager;)J

    move-result-wide v9

    iget-object v6, v0, Lcom/miui/earthquakewarning/EarthquakeWarningManager$6;->val$userQuakeItem:Lcom/miui/earthquakewarning/model/UserQuakeItem;

    invoke-virtual {v6}, Lcom/miui/earthquakewarning/model/QuakeItem;->getEventID()J

    move-result-wide v16

    cmp-long v6, v9, v16

    if-nez v6, :cond_2

    iget-object v3, v0, Lcom/miui/earthquakewarning/EarthquakeWarningManager$6;->val$userQuakeItem:Lcom/miui/earthquakewarning/model/UserQuakeItem;

    invoke-virtual {v3, v2}, Lcom/miui/earthquakewarning/model/UserQuakeItem;->setIsMyCity(I)V

    new-instance v3, Lcom/miui/earthquakewarning/service/ManageDataTask;

    iget-object v6, v0, Lcom/miui/earthquakewarning/EarthquakeWarningManager$6;->val$context:Landroid/content/Context;

    iget-object v9, v0, Lcom/miui/earthquakewarning/EarthquakeWarningManager$6;->val$userQuakeItem:Lcom/miui/earthquakewarning/model/UserQuakeItem;

    invoke-direct {v3, v6, v9, v5}, Lcom/miui/earthquakewarning/service/ManageDataTask;-><init>(Landroid/content/Context;Lcom/miui/earthquakewarning/model/UserQuakeItem;Z)V

    new-array v6, v5, [Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v3, v0, Lcom/miui/earthquakewarning/EarthquakeWarningManager$6;->val$context:Landroid/content/Context;

    iget-object v6, v0, Lcom/miui/earthquakewarning/EarthquakeWarningManager$6;->val$userQuakeItem:Lcom/miui/earthquakewarning/model/UserQuakeItem;

    invoke-static {v3, v6}, Lcom/miui/earthquakewarning/EarthquakeWarningManager;->showAlarmNotification(Landroid/content/Context;Lcom/miui/earthquakewarning/model/UserQuakeItem;)V

    new-array v3, v12, [Loj/l;

    new-instance v6, Loj/l;

    invoke-direct {v6, v8, v7}, Loj/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v3, v5

    new-instance v5, Loj/l;

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v15, v1}, Loj/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v3, v2

    new-instance v1, Loj/l;

    iget-object v2, v0, Lcom/miui/earthquakewarning/EarthquakeWarningManager$6;->val$userQuakeItem:Lcom/miui/earthquakewarning/model/UserQuakeItem;

    invoke-virtual {v2}, Lcom/miui/earthquakewarning/model/UserQuakeItem;->getIntensity()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v1, v13, v2}, Loj/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v3, v14

    new-instance v1, Loj/l;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v2, v0, Lcom/miui/earthquakewarning/EarthquakeWarningManager$6;->val$userQuakeItem:Lcom/miui/earthquakewarning/model/UserQuakeItem;

    invoke-virtual {v2}, Lcom/miui/earthquakewarning/model/QuakeItem;->getUpdateTime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v1, v11, v2}, Loj/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x3

    aput-object v1, v3, v2

    invoke-static {v4, v3}, Lcom/miui/earthquakewarning/analytics/NewTracker;->track(Ljava/lang/String;[Loj/l;)V

    goto/16 :goto_0

    :cond_2
    invoke-static {}, Lcom/miui/earthquakewarning/utils/Utils;->isLowEarthquakeWarningOpen()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, v0, Lcom/miui/earthquakewarning/EarthquakeWarningManager$6;->val$userQuakeItem:Lcom/miui/earthquakewarning/model/UserQuakeItem;

    invoke-virtual {v6, v2}, Lcom/miui/earthquakewarning/model/UserQuakeItem;->setIsMyCity(I)V

    new-instance v6, Lcom/miui/earthquakewarning/service/ManageDataTask;

    iget-object v7, v0, Lcom/miui/earthquakewarning/EarthquakeWarningManager$6;->val$context:Landroid/content/Context;

    iget-object v8, v0, Lcom/miui/earthquakewarning/EarthquakeWarningManager$6;->val$userQuakeItem:Lcom/miui/earthquakewarning/model/UserQuakeItem;

    invoke-direct {v6, v7, v8}, Lcom/miui/earthquakewarning/service/ManageDataTask;-><init>(Landroid/content/Context;Lcom/miui/earthquakewarning/model/UserQuakeItem;)V

    new-array v7, v5, [Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v6, v0, Lcom/miui/earthquakewarning/EarthquakeWarningManager$6;->val$context:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v17

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v19

    new-instance v7, Lcom/miui/earthquakewarning/EarthquakeWarningManager$6$1;

    invoke-direct {v7, v0, v1}, Lcom/miui/earthquakewarning/EarthquakeWarningManager$6$1;-><init>(Lcom/miui/earthquakewarning/EarthquakeWarningManager$6;F)V

    move-object/from16 v16, v6

    move-object/from16 v21, v7

    invoke-static/range {v16 .. v21}, Lcom/miui/earthquakewarning/utils/LocationUtils;->getGeoArea(Landroid/content/Context;DDLcom/miui/earthquakewarning/utils/LocationUtils$AreaResultListener;)V

    :cond_3
    const-string v1, "push_error_intensity_low"

    invoke-static {v1}, Lcom/miui/earthquakewarning/analytics/AnalyticHelper;->trackPushActionModuleClick(Ljava/lang/String;)V

    new-array v1, v12, [Loj/l;

    new-instance v6, Loj/l;

    iget-object v7, v0, Lcom/miui/earthquakewarning/EarthquakeWarningManager$6;->val$userQuakeItem:Lcom/miui/earthquakewarning/model/UserQuakeItem;

    invoke-virtual {v7}, Lcom/miui/earthquakewarning/model/UserQuakeItem;->getIntensity()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-direct {v6, v13, v7}, Loj/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v1, v5

    new-instance v5, Loj/l;

    invoke-static {}, Lcom/miui/earthquakewarning/utils/Utils;->getSelectIntensity()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-direct {v5, v15, v6}, Loj/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v1, v2

    new-instance v2, Loj/l;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v7, v0, Lcom/miui/earthquakewarning/EarthquakeWarningManager$6;->val$userQuakeItem:Lcom/miui/earthquakewarning/model/UserQuakeItem;

    invoke-virtual {v7}, Lcom/miui/earthquakewarning/model/QuakeItem;->getUpdateTime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {v2, v11, v5}, Loj/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v14

    new-instance v2, Loj/l;

    const-string v5, "DO_NOT_REACH_THRESHOLD"

    invoke-direct {v2, v3, v5}, Loj/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-static {v4, v1}, Lcom/miui/earthquakewarning/analytics/NewTracker;->track(Ljava/lang/String;[Loj/l;)V

    :goto_0
    return-void
.end method

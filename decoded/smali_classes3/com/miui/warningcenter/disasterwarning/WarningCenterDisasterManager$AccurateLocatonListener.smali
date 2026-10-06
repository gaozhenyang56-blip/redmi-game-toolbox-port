.class Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterManager$AccurateLocatonListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccurateLocatonListener"
.end annotation


# instance fields
.field private areaObject:Lorg/json/JSONObject;

.field private context:Landroid/content/Context;

.field private delayCheckHandler:Landroid/os/Handler;

.field private item:Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;

.field private locationManager:Landroid/location/LocationManager;

.field final synthetic this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterManager;


# direct methods
.method public constructor <init>(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterManager;Landroid/content/Context;Landroid/location/LocationManager;Landroid/os/Handler;Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterManager$AccurateLocatonListener;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterManager$AccurateLocatonListener;->context:Landroid/content/Context;

    iput-object p5, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterManager$AccurateLocatonListener;->item:Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;

    iput-object p6, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterManager$AccurateLocatonListener;->areaObject:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterManager$AccurateLocatonListener;->locationManager:Landroid/location/LocationManager;

    iput-object p4, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterManager$AccurateLocatonListener;->delayCheckHandler:Landroid/os/Handler;

    return-void
.end method

.method private isLocationInPolygon(Ljava/lang/Double;Ljava/lang/Double;Ljava/util/List;)Z
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            "Ljava/util/List<",
            "Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Coordinate;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v0, p3

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_1

    return v1

    :cond_1
    move v3, v1

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_6

    add-int/lit8 v5, v2, -0x1

    if-ne v3, v5, :cond_2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Coordinate;

    invoke-virtual {v5}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Coordinate;->getLonggitude()Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Coordinate;

    invoke-virtual {v7}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Coordinate;->getLatitude()Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Coordinate;

    invoke-virtual {v9}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Coordinate;->getLonggitude()Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Coordinate;

    invoke-virtual {v11}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Coordinate;->getLatitude()Ljava/lang/Double;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    goto :goto_1

    :cond_2
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Coordinate;

    invoke-virtual {v5}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Coordinate;->getLonggitude()Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Coordinate;

    invoke-virtual {v7}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Coordinate;->getLatitude()Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    add-int/lit8 v9, v3, 0x1

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Coordinate;

    invoke-virtual {v10}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Coordinate;->getLonggitude()Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Coordinate;

    invoke-virtual {v9}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Coordinate;->getLatitude()Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    move-wide v9, v10

    move-wide v11, v12

    :goto_1
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    cmpl-double v13, v13, v7

    if-ltz v13, :cond_3

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    cmpg-double v13, v13, v11

    if-ltz v13, :cond_4

    :cond_3
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    cmpl-double v13, v13, v11

    if-ltz v13, :cond_5

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    cmpg-double v13, v13, v7

    if-gez v13, :cond_5

    :cond_4
    sub-double v11, v7, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    const-wide/16 v15, 0x0

    cmpl-double v13, v13, v15

    if-lez v13, :cond_5

    sub-double v9, v5, v9

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    sub-double/2addr v7, v13

    mul-double/2addr v9, v7

    div-double/2addr v9, v11

    sub-double/2addr v5, v9

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    cmpg-double v5, v5, v7

    if-gez v5, :cond_5

    add-int/lit8 v4, v4, 0x1

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_6
    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_7

    const/4 v1, 0x1

    :cond_7
    return v1

    :cond_8
    :goto_2
    const-string v0, "WcDisasterTask"

    const-string v2, " isLocationInPolygon return coordinates empty"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method


# virtual methods
.method public isLocationInCircle(Ljava/lang/Double;Ljava/lang/Double;Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Circle;)Z
    .locals 8

    invoke-virtual {p3}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Circle;->getLatitude()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-virtual {p3}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Circle;->getLongitude()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p1

    sub-double/2addr p1, v2

    sub-double v2, v4, v0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v0, v4

    div-double/2addr p1, v6

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p1

    invoke-static {p1, p2, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    mul-double/2addr v0, p1

    add-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->asin(D)D

    move-result-wide p1

    mul-double/2addr p1, v6

    const-wide v0, 0x40b8e30000000000L    # 6371.0

    mul-double/2addr p1, v0

    const-wide v0, 0x408f400000000000L    # 1000.0

    mul-double/2addr p1, v0

    invoke-virtual {p3}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Circle;->getRadius()Ljava/lang/Double;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    cmpg-double p1, p1, v0

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 9
    .param p1    # Landroid/location/Location;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterManager$AccurateLocatonListener;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterManager$AccurateLocatonListener;->delayCheckHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    const-string v0, "WcDisasterTask"

    if-nez p1, :cond_1

    const-string p1, "Accurate location null return"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v2, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterManager$AccurateLocatonListener;->areaObject:Lorg/json/JSONObject;

    sget-object v3, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->polygon:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_2

    :try_start_0
    new-instance v3, Lcom/google/gson/GsonBuilder;

    invoke-direct {v3}, Lcom/google/gson/GsonBuilder;-><init>()V

    const-class v4, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Coordinate;

    new-instance v5, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$CoordinateAdapter;

    invoke-direct {v5}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$CoordinateAdapter;-><init>()V

    invoke-virtual {v3, v4, v5}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v3

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterManager$AccurateLocatonListener$1;

    invoke-direct {v4, p0}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterManager$AccurateLocatonListener$1;-><init>(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterManager$AccurateLocatonListener;)V

    invoke-virtual {v4}, Lcom/google/common/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "Accurate parse polygon data failed"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    move-object v2, v1

    :goto_0
    iget-object v3, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterManager$AccurateLocatonListener;->areaObject:Lorg/json/JSONObject;

    sget-object v4, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->circle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    new-instance v1, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Circle;

    sget-object v4, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->longitude:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    sget-object v5, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->latitude:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    sget-object v6, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->radius:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-direct {v1, v4, v5, v3}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Circle;-><init>(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V

    :goto_1
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    const/4 p1, 0x0

    if-eqz v2, :cond_4

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-direct {p0, v7, v8, v2}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterManager$AccurateLocatonListener;->isLocationInPolygon(Ljava/lang/Double;Ljava/lang/Double;Ljava/util/List;)Z

    move-result v2

    goto :goto_2

    :cond_4
    move v2, p1

    :goto_2
    if-nez v2, :cond_5

    if-eqz v1, :cond_5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {p0, v2, v3, v1}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterManager$AccurateLocatonListener;->isLocationInCircle(Ljava/lang/Double;Ljava/lang/Double;Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Circle;)Z

    move-result v2

    :cond_5
    if-eqz v2, :cond_6

    const-string v1, "WarningCenterDisasterManager: accurate alert in polygon"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterManager$AccurateLocatonListener;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterManager;

    iget-object v1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterManager$AccurateLocatonListener;->context:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-int v2, v2

    iget-object v3, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterManager$AccurateLocatonListener;->item:Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterManager;->alert(Landroid/content/Context;ILcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;)V

    const-string v0, "accurate"

    invoke-static {v0}, Lcom/miui/warningcenter/analytics/AnalyticHelper;->trackPushActionModuleShow(Ljava/lang/String;)V

    new-instance v0, Lcom/miui/warningcenter/disasterwarning/db/ManageDataTask;

    iget-object v1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterManager$AccurateLocatonListener;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterManager$AccurateLocatonListener;->item:Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;

    invoke-direct {v0, v1, v2}, Lcom/miui/warningcenter/disasterwarning/db/ManageDataTask;-><init>(Landroid/content/Context;Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;)V

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_3

    :cond_6
    const-string p1, "Accurate not alert because location not in polygon"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void
.end method

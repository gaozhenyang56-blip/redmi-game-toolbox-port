.class Lcom/miui/earthquakewarning/EarthquakeWarningManager$6$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/earthquakewarning/utils/LocationUtils$AreaResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/earthquakewarning/EarthquakeWarningManager$6;->locationSuccess(Landroid/location/Location;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/earthquakewarning/EarthquakeWarningManager$6;

.field final synthetic val$selectIntensity:F


# direct methods
.method constructor <init>(Lcom/miui/earthquakewarning/EarthquakeWarningManager$6;F)V
    .locals 0

    iput-object p1, p0, Lcom/miui/earthquakewarning/EarthquakeWarningManager$6$1;->this$1:Lcom/miui/earthquakewarning/EarthquakeWarningManager$6;

    iput p2, p0, Lcom/miui/earthquakewarning/EarthquakeWarningManager$6$1;->val$selectIntensity:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public areaFail()V
    .locals 9

    iget-object v0, p0, Lcom/miui/earthquakewarning/EarthquakeWarningManager$6$1;->this$1:Lcom/miui/earthquakewarning/EarthquakeWarningManager$6;

    iget-object v1, v0, Lcom/miui/earthquakewarning/EarthquakeWarningManager$6;->this$0:Lcom/miui/earthquakewarning/EarthquakeWarningManager;

    iget-object v2, v0, Lcom/miui/earthquakewarning/EarthquakeWarningManager$6;->val$context:Landroid/content/Context;

    iget-object v0, v0, Lcom/miui/earthquakewarning/EarthquakeWarningManager$6;->val$userQuakeItem:Lcom/miui/earthquakewarning/model/UserQuakeItem;

    invoke-virtual {v0}, Lcom/miui/earthquakewarning/model/QuakeItem;->getEpiLocation()Lcom/miui/earthquakewarning/model/LocationModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/earthquakewarning/model/LocationModel;->getPlace()Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/miui/earthquakewarning/EarthquakeWarningManager$6$1;->this$1:Lcom/miui/earthquakewarning/EarthquakeWarningManager$6;

    iget-object v4, v4, Lcom/miui/earthquakewarning/EarthquakeWarningManager$6;->val$userQuakeItem:Lcom/miui/earthquakewarning/model/UserQuakeItem;

    invoke-virtual {v4}, Lcom/miui/earthquakewarning/model/UserQuakeItem;->getIntensity()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v0, v5

    const-string v4, "%.1f"

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/miui/earthquakewarning/EarthquakeWarningManager$6$1;->this$1:Lcom/miui/earthquakewarning/EarthquakeWarningManager$6;

    iget-object v5, v0, Lcom/miui/earthquakewarning/EarthquakeWarningManager$6;->val$userQuakeItem:Lcom/miui/earthquakewarning/model/UserQuakeItem;

    invoke-static {}, Lcom/miui/earthquakewarning/utils/Utils;->getPreviousAreaCode()I

    move-result v8

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v8}, Lcom/miui/earthquakewarning/EarthquakeWarningManager;->access$500(Lcom/miui/earthquakewarning/EarthquakeWarningManager;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/miui/earthquakewarning/model/UserQuakeItem;Ljava/lang/String;ZI)V

    return-void
.end method

.method public areaSuccess(Landroid/location/Address;)V
    .locals 9

    invoke-virtual {p1}, Landroid/location/Address;->getSubLocality()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/location/Address;->getSubAdminArea()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    move-object v5, p1

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/location/Address;->getSubLocality()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/location/Address;->getSubLocality()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :goto_2
    iget-object p1, p0, Lcom/miui/earthquakewarning/EarthquakeWarningManager$6$1;->this$1:Lcom/miui/earthquakewarning/EarthquakeWarningManager$6;

    iget-object v0, p1, Lcom/miui/earthquakewarning/EarthquakeWarningManager$6;->this$0:Lcom/miui/earthquakewarning/EarthquakeWarningManager;

    iget-object v1, p1, Lcom/miui/earthquakewarning/EarthquakeWarningManager$6;->val$context:Landroid/content/Context;

    iget-object p1, p1, Lcom/miui/earthquakewarning/EarthquakeWarningManager$6;->val$userQuakeItem:Lcom/miui/earthquakewarning/model/UserQuakeItem;

    invoke-virtual {p1}, Lcom/miui/earthquakewarning/model/QuakeItem;->getEpiLocation()Lcom/miui/earthquakewarning/model/LocationModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/earthquakewarning/model/LocationModel;->getPlace()Ljava/lang/String;

    move-result-object v2

    const/4 p1, 0x1

    new-array v3, p1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/miui/earthquakewarning/EarthquakeWarningManager$6$1;->this$1:Lcom/miui/earthquakewarning/EarthquakeWarningManager$6;

    iget-object v4, v4, Lcom/miui/earthquakewarning/EarthquakeWarningManager$6;->val$userQuakeItem:Lcom/miui/earthquakewarning/model/UserQuakeItem;

    invoke-virtual {v4}, Lcom/miui/earthquakewarning/model/UserQuakeItem;->getIntensity()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v8, 0x0

    aput-object v4, v3, v8

    const-string v4, "%.1f"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/earthquakewarning/EarthquakeWarningManager$6$1;->this$1:Lcom/miui/earthquakewarning/EarthquakeWarningManager$6;

    iget-object v4, v4, Lcom/miui/earthquakewarning/EarthquakeWarningManager$6;->val$userQuakeItem:Lcom/miui/earthquakewarning/model/UserQuakeItem;

    const/4 v6, 0x0

    invoke-static {}, Lcom/miui/earthquakewarning/utils/Utils;->getPreviousAreaCode()I

    move-result v7

    invoke-static/range {v0 .. v7}, Lcom/miui/earthquakewarning/EarthquakeWarningManager;->access$500(Lcom/miui/earthquakewarning/EarthquakeWarningManager;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/miui/earthquakewarning/model/UserQuakeItem;Ljava/lang/String;ZI)V

    const/4 v0, 0x4

    new-array v0, v0, [Loj/l;

    new-instance v1, Loj/l;

    const-string v2, "ALERT_STYLE"

    const-string v3, "NOTIFICATION"

    invoke-direct {v1, v2, v3}, Loj/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v8

    new-instance v1, Loj/l;

    iget v2, p0, Lcom/miui/earthquakewarning/EarthquakeWarningManager$6$1;->val$selectIntensity:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    const-string v3, "USER_DEFINED_THRESHOLD"

    invoke-direct {v1, v3, v2}, Loj/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, p1

    const/4 p1, 0x2

    new-instance v1, Loj/l;

    iget-object v2, p0, Lcom/miui/earthquakewarning/EarthquakeWarningManager$6$1;->this$1:Lcom/miui/earthquakewarning/EarthquakeWarningManager$6;

    iget-object v2, v2, Lcom/miui/earthquakewarning/EarthquakeWarningManager$6;->val$userQuakeItem:Lcom/miui/earthquakewarning/model/UserQuakeItem;

    invoke-virtual {v2}, Lcom/miui/earthquakewarning/model/UserQuakeItem;->getIntensity()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string v3, "LEVEL_BY_ALGORITHM"

    invoke-direct {v1, v3, v2}, Loj/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, p1

    const/4 p1, 0x3

    new-instance v1, Loj/l;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/miui/earthquakewarning/EarthquakeWarningManager$6$1;->this$1:Lcom/miui/earthquakewarning/EarthquakeWarningManager$6;

    iget-object v4, v4, Lcom/miui/earthquakewarning/EarthquakeWarningManager$6;->val$userQuakeItem:Lcom/miui/earthquakewarning/model/UserQuakeItem;

    invoke-virtual {v4}, Lcom/miui/earthquakewarning/model/QuakeItem;->getUpdateTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "PUSH_MSG_DELAY_SECONDS"

    invoke-direct {v1, v3, v2}, Loj/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, p1

    const-string p1, "receive"

    invoke-static {p1, v0}, Lcom/miui/earthquakewarning/analytics/NewTracker;->track(Ljava/lang/String;[Loj/l;)V

    return-void
.end method

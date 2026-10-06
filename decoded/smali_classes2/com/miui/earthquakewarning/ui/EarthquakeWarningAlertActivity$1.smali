.class Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/earthquakewarning/utils/LocationUtils$AreaResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->lambda$onDatasourceChanged$2(Lcom/miui/earthquakewarning/model/UserQuakeItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;


# direct methods
.method constructor <init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity$1;->this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity$1;Landroid/location/Address;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity$1;->lambda$areaSuccess$0(Landroid/location/Address;)V

    return-void
.end method

.method private synthetic lambda$areaSuccess$0(Landroid/location/Address;)V
    .locals 7

    invoke-virtual {p1}, Landroid/location/Address;->getSubLocality()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const v3, 0x7f120734

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity$1;->this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;

    invoke-static {v0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->access$100(Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v4, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity$1;->this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/location/Address;->getSubAdminArea()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {v4, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity$1;->this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;

    invoke-static {v0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->access$100(Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v4, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity$1;->this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/location/Address;->getSubLocality()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {v4, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity$1;->this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;

    invoke-static {v0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->access$100(Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v4, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity$1;->this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/location/Address;->getSubLocality()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {v4, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :goto_1
    return-void
.end method


# virtual methods
.method public areaFail()V
    .locals 0

    return-void
.end method

.method public areaSuccess(Landroid/location/Address;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity$1;->this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;

    new-instance v1, Lcom/miui/earthquakewarning/ui/i;

    invoke-direct {v1, p0, p1}, Lcom/miui/earthquakewarning/ui/i;-><init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity$1;Landroid/location/Address;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

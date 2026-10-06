.class Lcom/miui/earthquakewarning/service/EarthquakeWarningService$2;
.super Landroid/telephony/PhoneStateListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/earthquakewarning/service/EarthquakeWarningService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/earthquakewarning/service/EarthquakeWarningService;


# direct methods
.method constructor <init>(Lcom/miui/earthquakewarning/service/EarthquakeWarningService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/earthquakewarning/service/EarthquakeWarningService$2;->this$0:Lcom/miui/earthquakewarning/service/EarthquakeWarningService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/miui/earthquakewarning/service/EarthquakeWarningService$2;->this$0:Lcom/miui/earthquakewarning/service/EarthquakeWarningService;

    const-string p2, "phone"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result p1

    iget-object p2, p0, Lcom/miui/earthquakewarning/service/EarthquakeWarningService$2;->this$0:Lcom/miui/earthquakewarning/service/EarthquakeWarningService;

    invoke-static {p2}, Lcom/miui/earthquakewarning/service/EarthquakeWarningService;->access$000(Lcom/miui/earthquakewarning/service/EarthquakeWarningService;)I

    move-result p2

    if-ne p2, p1, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/miui/earthquakewarning/service/EarthquakeWarningService$2;->this$0:Lcom/miui/earthquakewarning/service/EarthquakeWarningService;

    invoke-static {p2}, Lcom/miui/earthquakewarning/service/EarthquakeWarningService;->access$100(Lcom/miui/earthquakewarning/service/EarthquakeWarningService;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/miui/earthquakewarning/service/EarthquakeWarningService$2;->this$0:Lcom/miui/earthquakewarning/service/EarthquakeWarningService;

    if-eqz p1, :cond_1

    invoke-static {p2}, Lcom/miui/earthquakewarning/utils/NotificationUtil;->muteVolume(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    invoke-static {p2}, Lcom/miui/earthquakewarning/utils/NotificationUtil;->remuteVolume(Landroid/content/Context;)V

    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/miui/earthquakewarning/service/EarthquakeWarningService$2;->this$0:Lcom/miui/earthquakewarning/service/EarthquakeWarningService;

    invoke-static {p2, p1}, Lcom/miui/earthquakewarning/service/EarthquakeWarningService;->access$002(Lcom/miui/earthquakewarning/service/EarthquakeWarningService;I)I

    return-void
.end method

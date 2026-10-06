.class Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment;


# direct methods
.method constructor <init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment$1;->this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment$1;->this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment;

    invoke-virtual {p1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment;->share()V

    const-string p1, "share"

    invoke-static {p1}, Lcom/miui/earthquakewarning/analytics/AnalyticHelper;->trackMonitorClickActionModuleClick(Ljava/lang/String;)V

    return-void
.end method

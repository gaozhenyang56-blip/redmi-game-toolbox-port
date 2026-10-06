.class Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment;->showExitDialog()V
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

    iput-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment$6;->this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment$6;->this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/miui/earthquakewarning/service/EarthquakeWarningService;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "action_exit_volunteer"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment$6;->this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const/4 p2, 0x0

    invoke-static {p2}, Lcom/miui/earthquakewarning/utils/Utils;->openEarthquakeMonitor(Z)V

    iget-object p2, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment$6;->this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment;

    invoke-static {p2}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment;->access$300(Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment;)V

    iget-object p2, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment$6;->this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment;

    invoke-static {p2}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment;->access$400(Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment;)Landroid/view/View;

    move-result-object p2

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment$6;->this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment;

    invoke-static {p2}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment;->access$500(Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    const-string p1, "exit"

    invoke-static {p1}, Lcom/miui/earthquakewarning/analytics/AnalyticHelper;->trackMonitorClickActionModuleClick(Ljava/lang/String;)V

    return-void
.end method

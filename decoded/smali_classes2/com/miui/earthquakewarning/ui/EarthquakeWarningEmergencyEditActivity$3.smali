.class Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;->showOrganDonationChooseDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;


# direct methods
.method constructor <init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity$3;->this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity$3;->this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;

    invoke-static {v0, p2}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;->access$402(Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;I)I

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity$3;->this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;

    invoke-static {v0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;->access$600(Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity$3;->this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;

    invoke-static {v1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;->access$500(Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;)[Ljava/lang/String;

    move-result-object v1

    aget-object p2, v1, p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.class public final synthetic Lcom/miui/earthquakewarning/ui/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity$2;

.field public final synthetic b:Landroid/location/Address;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity$2;Landroid/location/Address;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/earthquakewarning/ui/j;->a:Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity$2;

    iput-object p2, p0, Lcom/miui/earthquakewarning/ui/j;->b:Landroid/location/Address;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/j;->a:Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity$2;

    iget-object v1, p0, Lcom/miui/earthquakewarning/ui/j;->b:Landroid/location/Address;

    invoke-static {v0, v1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity$2;->a(Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity$2;Landroid/location/Address;)V

    return-void
.end method

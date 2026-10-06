.class public final synthetic Lcom/miui/earthquakewarning/ui/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/d0;


# instance fields
.field public final synthetic a:Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/earthquakewarning/ui/f;->a:Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/f;->a:Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;

    check-cast p1, Lcom/miui/earthquakewarning/model/UserQuakeItem;

    invoke-static {v0, p1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->h0(Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;Lcom/miui/earthquakewarning/model/UserQuakeItem;)V

    return-void
.end method

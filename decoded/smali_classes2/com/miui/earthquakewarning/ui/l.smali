.class public final synthetic Lcom/miui/earthquakewarning/ui/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;

.field public final synthetic b:Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$ImageAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$ImageAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/earthquakewarning/ui/l;->a:Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;

    iput-object p2, p0, Lcom/miui/earthquakewarning/ui/l;->b:Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$ImageAdapter;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/l;->a:Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;

    iget-object v1, p0, Lcom/miui/earthquakewarning/ui/l;->b:Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$ImageAdapter;

    invoke-static {v0, v1, p1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;->b0(Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$ImageAdapter;Landroid/view/View;)V

    return-void
.end method

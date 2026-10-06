.class public final synthetic Lcom/miui/earthquakewarning/ui/z0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$EarthquakeWarningSubscribeAreaAdapter;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lcom/miui/earthquakewarning/model/SaveAreaResult;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$EarthquakeWarningSubscribeAreaAdapter;Landroid/content/Context;Lcom/miui/earthquakewarning/model/SaveAreaResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/earthquakewarning/ui/z0;->a:Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$EarthquakeWarningSubscribeAreaAdapter;

    iput-object p2, p0, Lcom/miui/earthquakewarning/ui/z0;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/miui/earthquakewarning/ui/z0;->c:Lcom/miui/earthquakewarning/model/SaveAreaResult;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/z0;->a:Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$EarthquakeWarningSubscribeAreaAdapter;

    iget-object v1, p0, Lcom/miui/earthquakewarning/ui/z0;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/earthquakewarning/ui/z0;->c:Lcom/miui/earthquakewarning/model/SaveAreaResult;

    invoke-static {v0, v1, v2, p1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$EarthquakeWarningSubscribeAreaAdapter;->k(Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$EarthquakeWarningSubscribeAreaAdapter;Landroid/content/Context;Lcom/miui/earthquakewarning/model/SaveAreaResult;Landroid/view/View;)V

    return-void
.end method

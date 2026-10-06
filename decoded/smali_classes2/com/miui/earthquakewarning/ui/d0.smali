.class public final synthetic Lcom/miui/earthquakewarning/ui/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/miui/earthquakewarning/ui/EarthquakeWarningListAdapter;

.field public final synthetic b:Lcom/miui/earthquakewarning/model/WarningModel;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningListAdapter;Lcom/miui/earthquakewarning/model/WarningModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/earthquakewarning/ui/d0;->a:Lcom/miui/earthquakewarning/ui/EarthquakeWarningListAdapter;

    iput-object p2, p0, Lcom/miui/earthquakewarning/ui/d0;->b:Lcom/miui/earthquakewarning/model/WarningModel;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/d0;->a:Lcom/miui/earthquakewarning/ui/EarthquakeWarningListAdapter;

    iget-object v1, p0, Lcom/miui/earthquakewarning/ui/d0;->b:Lcom/miui/earthquakewarning/model/WarningModel;

    invoke-static {v0, v1, p1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListAdapter;->k(Lcom/miui/earthquakewarning/ui/EarthquakeWarningListAdapter;Lcom/miui/earthquakewarning/model/WarningModel;Landroid/view/View;)V

    return-void
.end method

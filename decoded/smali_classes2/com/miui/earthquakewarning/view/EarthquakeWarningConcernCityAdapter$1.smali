.class Lcom/miui/earthquakewarning/view/EarthquakeWarningConcernCityAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/earthquakewarning/view/EarthquakeWarningConcernCityAdapter;->onBindViewHolder(Lcom/miui/earthquakewarning/view/EarthquakeWarningConcernCityAdapter$MyViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/earthquakewarning/view/EarthquakeWarningConcernCityAdapter;

.field final synthetic val$model:Lcom/miui/earthquakewarning/model/SaveAreaResult;


# direct methods
.method constructor <init>(Lcom/miui/earthquakewarning/view/EarthquakeWarningConcernCityAdapter;Lcom/miui/earthquakewarning/model/SaveAreaResult;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/earthquakewarning/view/EarthquakeWarningConcernCityAdapter$1;->this$0:Lcom/miui/earthquakewarning/view/EarthquakeWarningConcernCityAdapter;

    iput-object p2, p0, Lcom/miui/earthquakewarning/view/EarthquakeWarningConcernCityAdapter$1;->val$model:Lcom/miui/earthquakewarning/model/SaveAreaResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/earthquakewarning/view/EarthquakeWarningConcernCityAdapter$1;->this$0:Lcom/miui/earthquakewarning/view/EarthquakeWarningConcernCityAdapter;

    invoke-static {p1}, Lcom/miui/earthquakewarning/view/EarthquakeWarningConcernCityAdapter;->access$000(Lcom/miui/earthquakewarning/view/EarthquakeWarningConcernCityAdapter;)Lcom/miui/earthquakewarning/view/EarthquakeWarningConcernCityAdapter$ClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/earthquakewarning/view/EarthquakeWarningConcernCityAdapter$1;->this$0:Lcom/miui/earthquakewarning/view/EarthquakeWarningConcernCityAdapter;

    invoke-static {p1}, Lcom/miui/earthquakewarning/view/EarthquakeWarningConcernCityAdapter;->access$000(Lcom/miui/earthquakewarning/view/EarthquakeWarningConcernCityAdapter;)Lcom/miui/earthquakewarning/view/EarthquakeWarningConcernCityAdapter$ClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/earthquakewarning/view/EarthquakeWarningConcernCityAdapter$1;->val$model:Lcom/miui/earthquakewarning/model/SaveAreaResult;

    invoke-interface {p1, v0}, Lcom/miui/earthquakewarning/view/EarthquakeWarningConcernCityAdapter$ClickListener;->onItemClick(Lcom/miui/earthquakewarning/model/SaveAreaResult;)V

    :cond_0
    return-void
.end method

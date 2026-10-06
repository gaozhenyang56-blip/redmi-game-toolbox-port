.class public Lcom/miui/earthquakewarning/ui/EarthquakeWarningListAdapter$ReceiveViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/earthquakewarning/ui/EarthquakeWarningListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReceiveViewHolder"
.end annotation


# instance fields
.field mAlertCityText:Landroid/widget/TextView;

.field mAlertFeelText:Landroid/widget/TextView;

.field mAlertIntensity:Landroid/widget/TextView;

.field mAlertLevelText:Landroid/widget/TextView;

.field mAlertTime:Landroid/widget/TextView;

.field mContainer:Landroid/view/ViewGroup;

.field mDistanceText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    const v0, 0x7f0b06e2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListAdapter$ReceiveViewHolder;->mContainer:Landroid/view/ViewGroup;

    const v0, 0x7f0b0097

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListAdapter$ReceiveViewHolder;->mDistanceText:Landroid/widget/TextView;

    const v0, 0x7f0b0096

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListAdapter$ReceiveViewHolder;->mAlertCityText:Landroid/widget/TextView;

    const v0, 0x7f0b009c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListAdapter$ReceiveViewHolder;->mAlertLevelText:Landroid/widget/TextView;

    const v0, 0x7f0b0098

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListAdapter$ReceiveViewHolder;->mAlertFeelText:Landroid/widget/TextView;

    const v0, 0x7f0b009b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListAdapter$ReceiveViewHolder;->mAlertIntensity:Landroid/widget/TextView;

    const v0, 0x7f0b009f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListAdapter$ReceiveViewHolder;->mAlertTime:Landroid/widget/TextView;

    return-void
.end method

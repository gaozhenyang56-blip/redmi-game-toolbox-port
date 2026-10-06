.class public Lcom/miui/earthquakewarning/view/EarthquakeWarningConcernCityAdapter$MyViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/earthquakewarning/view/EarthquakeWarningConcernCityAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyViewHolder"
.end annotation


# instance fields
.field mSummary:Landroid/widget/TextView;

.field mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    const v0, 0x7f0b0241

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/earthquakewarning/view/EarthquakeWarningConcernCityAdapter$MyViewHolder;->mTitle:Landroid/widget/TextView;

    const v0, 0x7f0b0655

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/earthquakewarning/view/EarthquakeWarningConcernCityAdapter$MyViewHolder;->mSummary:Landroid/widget/TextView;

    return-void
.end method

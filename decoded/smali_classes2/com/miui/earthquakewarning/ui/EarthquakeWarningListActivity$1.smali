.class Lcom/miui/earthquakewarning/ui/EarthquakeWarningListActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/earthquakewarning/ui/EarthquakeWarningListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningListActivity;

.field final synthetic val$sortView:Lmiuix/miuixbasewidget/widget/FilterSortView2;


# direct methods
.method constructor <init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningListActivity;Lmiuix/miuixbasewidget/widget/FilterSortView2;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListActivity$1;->this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningListActivity;

    iput-object p2, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListActivity$1;->val$sortView:Lmiuix/miuixbasewidget/widget/FilterSortView2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 4

    invoke-static {}, Lx4/t;->h()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListActivity$1;->val$sortView:Lmiuix/miuixbasewidget/widget/FilterSortView2;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListActivity$1;->this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningListActivity;

    invoke-static {p1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListActivity;->access$000(Lcom/miui/earthquakewarning/ui/EarthquakeWarningListActivity;)Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListActivity$1;->this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningListActivity;

    invoke-static {p1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListActivity;->access$100(Lcom/miui/earthquakewarning/ui/EarthquakeWarningListActivity;)Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->setFilteredTab(Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;)V

    goto :goto_3

    :cond_1
    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListActivity$1;->this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningListActivity;

    invoke-static {v0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListActivity;->access$200(Lcom/miui/earthquakewarning/ui/EarthquakeWarningListActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListActivity$1;->this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningListActivity;

    invoke-static {v0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListActivity;->access$300(Lcom/miui/earthquakewarning/ui/EarthquakeWarningListActivity;)Landroid/widget/Button;

    move-result-object v0

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    :goto_3
    return-void
.end method

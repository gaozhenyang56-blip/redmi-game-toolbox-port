.class public Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field appName:Landroid/widget/TextView;

.field icon:Landroid/widget/ImageView;

.field netOffImageView:Landroid/widget/ImageView;

.field progressBar:Lmiuix/androidbasewidget/widget/ProgressBar;

.field final synthetic this$0:Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;

.field trafficValues:Landroid/widget/TextView;

.field trafficValuesNone:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;Landroid/view/View;)V
    .locals 0
    .param p1    # Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter$ViewHolder;->this$0:Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    const p1, 0x7f0b0548

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const p1, 0x7f0b0ba8

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter$ViewHolder;->appName:Landroid/widget/TextView;

    const p1, 0x7f0b0911

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/androidbasewidget/widget/ProgressBar;

    iput-object p1, p0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter$ViewHolder;->progressBar:Lmiuix/androidbasewidget/widget/ProgressBar;

    const p1, 0x7f0b0b9d

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter$ViewHolder;->trafficValues:Landroid/widget/TextView;

    const p1, 0x7f0b0b9c

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter$ViewHolder;->trafficValuesNone:Landroid/widget/TextView;

    const p1, 0x7f0b0543

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter$ViewHolder;->netOffImageView:Landroid/widget/ImageView;

    return-void
.end method

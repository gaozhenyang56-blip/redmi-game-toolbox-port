.class public Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field appName:Landroid/widget/TextView;

.field icon:Landroid/widget/ImageView;

.field progressBar:Lmiuix/androidbasewidget/widget/ProgressBar;

.field trafficValues:Landroid/widget/TextView;

.field trafficValuesNone:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    const v0, 0x7f0b0548

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const v0, 0x7f0b0ba8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter$ViewHolder;->appName:Landroid/widget/TextView;

    const v0, 0x7f0b0911

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/androidbasewidget/widget/ProgressBar;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter$ViewHolder;->progressBar:Lmiuix/androidbasewidget/widget/ProgressBar;

    const v0, 0x7f0b0b9d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter$ViewHolder;->trafficValues:Landroid/widget/TextView;

    const v0, 0x7f0b0b9c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter$ViewHolder;->trafficValuesNone:Landroid/widget/TextView;

    return-void
.end method

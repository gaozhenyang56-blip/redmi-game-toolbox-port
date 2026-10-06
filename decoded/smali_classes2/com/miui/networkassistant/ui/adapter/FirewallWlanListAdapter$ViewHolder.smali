.class public Lcom/miui/networkassistant/ui/adapter/FirewallWlanListAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/networkassistant/ui/adapter/FirewallWlanListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ViewHolder"
.end annotation


# instance fields
.field appName:Landroid/widget/TextView;

.field icon:Landroid/widget/ImageView;

.field slidingButton:Lmiuix/slidingwidget/widget/SlidingButton;


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

    iput-object v0, p0, Lcom/miui/networkassistant/ui/adapter/FirewallWlanListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const v0, 0x7f0b0ba8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/adapter/FirewallWlanListAdapter$ViewHolder;->appName:Landroid/widget/TextView;

    const v0, 0x7f0b0a9f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/slidingwidget/widget/SlidingButton;

    iput-object p1, p0, Lcom/miui/networkassistant/ui/adapter/FirewallWlanListAdapter$ViewHolder;->slidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

    return-void
.end method

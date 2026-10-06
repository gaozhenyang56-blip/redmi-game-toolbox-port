.class public Lcom/miui/networkassistant/ui/adapter/FirewallMobileListAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/networkassistant/ui/adapter/FirewallMobileListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field appName:Landroid/widget/TextView;

.field arrow:Landroid/widget/ImageView;

.field icon:Landroid/widget/ImageView;

.field slidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

.field final synthetic this$0:Lcom/miui/networkassistant/ui/adapter/FirewallMobileListAdapter;


# direct methods
.method public constructor <init>(Lcom/miui/networkassistant/ui/adapter/FirewallMobileListAdapter;Landroid/view/View;)V
    .locals 0
    .param p1    # Lcom/miui/networkassistant/ui/adapter/FirewallMobileListAdapter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/networkassistant/ui/adapter/FirewallMobileListAdapter$ViewHolder;->this$0:Lcom/miui/networkassistant/ui/adapter/FirewallMobileListAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    const p1, 0x7f0b0548

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/miui/networkassistant/ui/adapter/FirewallMobileListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const p1, 0x7f0b0ba8

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/networkassistant/ui/adapter/FirewallMobileListAdapter$ViewHolder;->appName:Landroid/widget/TextView;

    const p1, 0x7f0b05df

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/miui/networkassistant/ui/adapter/FirewallMobileListAdapter$ViewHolder;->arrow:Landroid/widget/ImageView;

    const p1, 0x7f0b0a9f

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/slidingwidget/widget/SlidingButton;

    iput-object p1, p0, Lcom/miui/networkassistant/ui/adapter/FirewallMobileListAdapter$ViewHolder;->slidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

    return-void
.end method

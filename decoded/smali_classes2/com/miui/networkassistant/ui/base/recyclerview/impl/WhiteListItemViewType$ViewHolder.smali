.class public Lcom/miui/networkassistant/ui/base/recyclerview/impl/WhiteListItemViewType$ViewHolder;
.super Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/networkassistant/ui/base/recyclerview/impl/WhiteListItemViewType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field appIcon:Landroid/widget/ImageView;

.field slidingButton:Lcom/miui/gamebooster/view/QRSlidingButton;

.field summary:Landroid/widget/TextView;

.field title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0b0bc9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/base/recyclerview/impl/WhiteListItemViewType$ViewHolder;->title:Landroid/widget/TextView;

    const v0, 0x7f0b0b21

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/base/recyclerview/impl/WhiteListItemViewType$ViewHolder;->summary:Landroid/widget/TextView;

    const v0, 0x7f0b0506

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/base/recyclerview/impl/WhiteListItemViewType$ViewHolder;->appIcon:Landroid/widget/ImageView;

    const v0, 0x7f0b0a9f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/gamebooster/view/QRSlidingButton;

    iput-object p1, p0, Lcom/miui/networkassistant/ui/base/recyclerview/impl/WhiteListItemViewType$ViewHolder;->slidingButton:Lcom/miui/gamebooster/view/QRSlidingButton;

    return-void
.end method

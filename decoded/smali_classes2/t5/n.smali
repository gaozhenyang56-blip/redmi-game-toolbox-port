.class Lt5/n;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"


# instance fields
.field a:Lcom/miui/gamebooster/view/QRSlidingButton;

.field b:Landroid/widget/TextView;

.field c:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    const v0, 0x7f0b093b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/view/QRSlidingButton;

    iput-object v0, p0, Lt5/n;->a:Lcom/miui/gamebooster/view/QRSlidingButton;

    const v0, 0x7f0b00a6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lt5/n;->b:Landroid/widget/TextView;

    const v0, 0x7f0b0b37

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lt5/n;->c:Landroid/view/View;

    return-void
.end method

.class public Lcom/miui/powercenter/batteryhistory/e0;
.super Lcom/miui/powercenter/batteryhistory/z$d;
.source "SourceFile"


# instance fields
.field private a:Lcom/miui/powercenter/batteryhistory/z$c;

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroid/content/Context;Z)V
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e03eb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/powercenter/batteryhistory/z$d;-><init>(Landroid/view/View;)V

    iput-boolean v2, p0, Lcom/miui/powercenter/batteryhistory/e0;->b:Z

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const v0, 0x7f0b0ca1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-boolean p3, p0, Lcom/miui/powercenter/batteryhistory/e0;->b:Z

    invoke-direct {p0, p2, p1}, Lcom/miui/powercenter/batteryhistory/e0;->h(Landroid/content/Context;Landroid/widget/TextView;)V

    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const v0, 0x7f0b0403

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    new-instance v0, Lcom/miui/powercenter/batteryhistory/e0$a;

    invoke-direct {v0, p0, p2, p1}, Lcom/miui/powercenter/batteryhistory/e0$a;-><init>(Lcom/miui/powercenter/batteryhistory/e0;Landroid/content/Context;Landroid/widget/TextView;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic d(Lcom/miui/powercenter/batteryhistory/e0;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/powercenter/batteryhistory/e0;->b:Z

    return p0
.end method

.method static synthetic e(Lcom/miui/powercenter/batteryhistory/e0;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/powercenter/batteryhistory/e0;->b:Z

    return p1
.end method

.method static synthetic f(Lcom/miui/powercenter/batteryhistory/e0;Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/powercenter/batteryhistory/e0;->h(Landroid/content/Context;Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic g(Lcom/miui/powercenter/batteryhistory/e0;)Lcom/miui/powercenter/batteryhistory/z$c;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/batteryhistory/e0;->a:Lcom/miui/powercenter/batteryhistory/z$c;

    return-object p0
.end method

.method private h(Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseCompatLoadingForDrawables"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/miui/powercenter/batteryhistory/e0;->b:Z

    if-eqz v0, :cond_0

    const v0, 0x7f121056

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f080dff

    goto :goto_0

    :cond_0
    const v0, 0x7f121089

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f080e00

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/powercenter/batteryhistory/e0;->j(Landroid/content/Context;Landroid/widget/TextView;I)V

    return-void
.end method

.method private j(Landroid/content/Context;Landroid/widget/TextView;I)V
    .locals 2
    .param p3    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, La8/k2;->A()Z

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz v0, :cond_1

    invoke-virtual {p2, p1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2, v1, v1, p1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public i(Lcom/miui/powercenter/batteryhistory/z$c;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/e0;->a:Lcom/miui/powercenter/batteryhistory/z$c;

    return-void
.end method

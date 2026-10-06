.class public Lcom/miui/appmanager/widget/AppDetailTextBannerView;
.super Lj3/a;
.source "SourceFile"


# instance fields
.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/appmanager/widget/AppDetailTextBannerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lj3/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0e007d

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const p1, 0x7f0b0cf3

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/appmanager/widget/AppDetailTextBannerView;->e:Landroid/widget/TextView;

    const p1, 0x7f0b0ce1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/appmanager/widget/AppDetailTextBannerView;->f:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public setSummary(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/widget/AppDetailTextBannerView;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/widget/AppDetailTextBannerView;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSummaryVisible(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/widget/AppDetailTextBannerView;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setTitle(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/widget/AppDetailTextBannerView;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

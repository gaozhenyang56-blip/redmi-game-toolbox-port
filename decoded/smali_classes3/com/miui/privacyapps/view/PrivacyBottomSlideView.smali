.class public Lcom/miui/privacyapps/view/PrivacyBottomSlideView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/TextView;

.field private c:Lcom/miui/gamebooster/view/QRSlidingButton;

.field private d:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/privacyapps/view/PrivacyBottomSlideView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0e0468

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const p1, 0x7f0b0506

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/miui/privacyapps/view/PrivacyBottomSlideView;->a:Landroid/widget/ImageView;

    const p1, 0x7f0b0bc9

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/privacyapps/view/PrivacyBottomSlideView;->b:Landroid/widget/TextView;

    const p1, 0x7f0b0a98

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/gamebooster/view/QRSlidingButton;

    iput-object p1, p0, Lcom/miui/privacyapps/view/PrivacyBottomSlideView;->c:Lcom/miui/gamebooster/view/QRSlidingButton;

    const p1, 0x7f0b027f

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/miui/privacyapps/view/PrivacyBottomSlideView;->d:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public setChecked(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/privacyapps/view/PrivacyBottomSlideView;->c:Lcom/miui/gamebooster/view/QRSlidingButton;

    invoke-virtual {v0, p1}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    return-void
.end method

.method public setIcon(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/privacyapps/view/PrivacyBottomSlideView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setTitle(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/privacyapps/view/PrivacyBottomSlideView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

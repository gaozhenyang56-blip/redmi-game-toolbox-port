.class public Lcom/miui/networkassistant/ui/view/ButtonToolbarItemView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private mButton:Landroid/widget/Button;

.field private mImageView:Landroid/widget/ImageView;

.field private mProgress:Landroid/widget/ProgressBar;

.field private mSummaryView:Landroid/widget/TextView;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/networkassistant/ui/view/ButtonToolbarItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/networkassistant/ui/view/ButtonToolbarItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p2, 0x7f0e053c

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f0b0bc9

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/networkassistant/ui/view/ButtonToolbarItemView;->mTitleView:Landroid/widget/TextView;

    const p1, 0x7f0b0b21

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/networkassistant/ui/view/ButtonToolbarItemView;->mSummaryView:Landroid/widget/TextView;

    const p1, 0x7f0b03f5

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/miui/networkassistant/ui/view/ButtonToolbarItemView;->mButton:Landroid/widget/Button;

    const p1, 0x7f0b05d1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/miui/networkassistant/ui/view/ButtonToolbarItemView;->mProgress:Landroid/widget/ProgressBar;

    const p1, 0x7f0b05cb

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/miui/networkassistant/ui/view/ButtonToolbarItemView;->mImageView:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public getFixButton()Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/ButtonToolbarItemView;->mButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getImageView()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/ButtonToolbarItemView;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getProgressBar()Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/ButtonToolbarItemView;->mProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method public setFixButtonText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/ButtonToolbarItemView;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSummaryText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/ButtonToolbarItemView;->mSummaryView:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitleViewText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/ButtonToolbarItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

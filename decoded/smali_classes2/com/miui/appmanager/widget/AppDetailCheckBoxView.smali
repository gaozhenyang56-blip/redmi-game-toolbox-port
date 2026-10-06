.class public Lcom/miui/appmanager/widget/AppDetailCheckBoxView;
.super Lj3/a;
.source "SourceFile"


# instance fields
.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Lmiuix/slidingwidget/widget/SlidingButton;

.field private h:Landroid/view/View;

.field private i:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/appmanager/widget/AppDetailCheckBoxView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lj3/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0e0080

    const/4 v0, 0x1

    invoke-virtual {p2, p3, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/appmanager/widget/AppDetailCheckBoxView;->h:Landroid/view/View;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/appmanager/widget/AppDetailCheckBoxView;->i:Landroid/content/res/Resources;

    const p1, 0x7f0b0cf3

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/appmanager/widget/AppDetailCheckBoxView;->e:Landroid/widget/TextView;

    const p1, 0x7f0b0ce1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/appmanager/widget/AppDetailCheckBoxView;->f:Landroid/widget/TextView;

    const p1, 0x7f0b00c4

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/slidingwidget/widget/SlidingButton;

    iput-object p1, p0, Lcom/miui/appmanager/widget/AppDetailCheckBoxView;->g:Lmiuix/slidingwidget/widget/SlidingButton;

    return-void
.end method


# virtual methods
.method public setSlideButtonChecked(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/widget/AppDetailCheckBoxView;->g:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {v0, p1}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    return-void
.end method

.method public setSlideButtonOnCheckedListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/widget/AppDetailCheckBoxView;->g:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {v0, p1}, Lmiuix/slidingwidget/widget/SlidingButton;->setOnPerformCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public setSummary(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/widget/AppDetailCheckBoxView;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setSummaryVisible(Z)V
    .locals 2

    iget-object v0, p0, Lcom/miui/appmanager/widget/AppDetailCheckBoxView;->f:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/appmanager/widget/AppDetailCheckBoxView;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/appmanager/widget/AppDetailCheckBoxView;->i:Landroid/content/res/Resources;

    const v1, 0x7f0700a5

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/miui/appmanager/widget/AppDetailCheckBoxView;->i:Landroid/content/res/Resources;

    const v1, 0x7f0700a4

    :goto_1
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object p1, p0, Lcom/miui/appmanager/widget/AppDetailCheckBoxView;->h:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setTitle(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/widget/AppDetailCheckBoxView;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setViewEnable(Z)V
    .locals 3

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/appmanager/widget/AppDetailCheckBoxView;->g:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/appmanager/widget/AppDetailCheckBoxView;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/appmanager/widget/AppDetailCheckBoxView;->i:Landroid/content/res/Resources;

    if-eqz p1, :cond_0

    const v2, 0x7f060082

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/miui/appmanager/widget/AppDetailCheckBoxView;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/appmanager/widget/AppDetailCheckBoxView;->i:Landroid/content/res/Resources;

    const v2, 0x7f06007b

    goto :goto_0

    :cond_0
    const v2, 0x7f060ddb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/miui/appmanager/widget/AppDetailCheckBoxView;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/appmanager/widget/AppDetailCheckBoxView;->i:Landroid/content/res/Resources;

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

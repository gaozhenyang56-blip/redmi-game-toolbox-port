.class public Lcom/miui/networkassistant/ui/view/TrafficDragView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/view/TrafficDragView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 5

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/miui/networkassistant/ui/view/TrafficDragView;->mTextView:Landroid/widget/TextView;

    const/16 p1, 0x11

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/view/TrafficDragView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/view/TrafficDragView;->mTextView:Landroid/widget/TextView;

    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/view/TrafficDragView;->mTextView:Landroid/widget/TextView;

    const/high16 v3, 0x40a00000    # 5.0f

    mul-float/2addr v1, v3

    float-to-int v1, v1

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1, v3, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/view/TrafficDragView;->mTextView:Landroid/widget/TextView;

    const v1, 0x7f080d70

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object p1, p0, Lcom/miui/networkassistant/ui/view/TrafficDragView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0, p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/TrafficDragView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/TrafficDragView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

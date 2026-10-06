.class public Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBar;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# static fields
.field private static final c:[Ljava/lang/String;


# instance fields
.field private a:Landroid/content/res/Resources;

.field private b:Lk8/c;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "0"

    const-string v1, "1"

    const-string v2, "2"

    const-string v3, "3"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBar;->c:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBar;->c(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private a(Landroid/widget/LinearLayout;)V
    .locals 3

    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private b()V
    .locals 12

    iget-object v0, p0, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBar;->a:Landroid/content/res/Resources;

    const v1, 0x7f071e30

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v0, v4}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {p0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, La8/k2;->A()Z

    move-result v0

    sget-object v1, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBar;->c:[Ljava/lang/String;

    array-length v1, v1

    iget-object v5, p0, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBar;->a:Landroid/content/res/Resources;

    const v6, 0x7f071e0c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    iget-object v7, p0, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBar;->a:Landroid/content/res/Resources;

    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    const v7, 0x7f06020c

    const v8, 0x7f071c3f

    const/16 v9, 0x11

    if-nez v0, :cond_1

    move v0, v4

    :goto_0
    if-ge v0, v1, :cond_3

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v10, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v11, p0, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBar;->a:Landroid/content/res/Resources;

    invoke-virtual {v11, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v10, v4, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v11, p0, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBar;->a:Landroid/content/res/Resources;

    invoke-virtual {v11, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object v11, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBar;->c:[Ljava/lang/String;

    aget-object v11, v11, v0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v10, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v3, v1, -0x1

    if-ge v0, v3, :cond_0

    invoke-direct {p0, v2}, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBar;->a(Landroid/widget/LinearLayout;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-lez v1, :cond_3

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v5, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v6, p0, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBar;->a:Landroid/content/res/Resources;

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v4, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v6, p0, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBar;->a:Landroid/content/res/Resources;

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object v6, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBar;->c:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v5, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-lez v1, :cond_2

    invoke-direct {p0, v2}, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBar;->a(Landroid/widget/LinearLayout;)V

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private c(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBar;->a:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 4

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBar;->a:Landroid/content/res/Resources;

    const v2, 0x7f071e2e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iget-object v2, p0, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBar;->a:Landroid/content/res/Resources;

    const v3, 0x7f071e3b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v1, Lk8/c;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lk8/c;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBar;->b:Lk8/c;

    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBar;->b()V

    return-void
.end method

.method public setCurrentLevel(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBar;->b:Lk8/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lk8/c;->setCurrentLevel(I)V

    :cond_0
    return-void
.end method

.method public setLevelChangeListener(Lk8/b;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBar;->b:Lk8/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lk8/c;->setLevelChangeListener(Lk8/b;)V

    :cond_0
    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBar;->b:Lk8/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

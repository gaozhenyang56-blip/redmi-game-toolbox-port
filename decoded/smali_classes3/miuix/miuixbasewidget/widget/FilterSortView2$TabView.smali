.class public Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/miuixbasewidget/widget/FilterSortView2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView$b;
    }
.end annotation


# instance fields
.field private mActivatedTextAppearanceId:I

.field private mArrow:Landroid/widget/ImageView;

.field private mArrowIcon:Landroid/graphics/drawable/Drawable;

.field private mDescending:Z

.field private mDescendingEnabled:Z

.field private mFiltered:Z

.field private mHapticFeedbackCompat:Lum/b;

.field private mIndicatorVisibility:I

.field private mOnFilteredListener:Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView$b;

.field private mTextAppearanceId:I

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Lql/b;->a:I

    invoke-direct {p0, p1, p2, v0}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mDescendingEnabled:Z

    invoke-virtual {p0}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->getTabLayoutResource()I

    move-result v1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v2, v1, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v1, 0x1020014

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mTextView:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    sget v1, Lql/f;->a:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mArrow:Landroid/widget/ImageView;

    if-eqz p2, :cond_0

    sget-object v1, Lql/j;->J:[I

    sget v2, Lql/i;->b:I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lql/j;->K:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget p3, Lql/j;->M:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    sget v0, Lql/j;->T:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mIndicatorVisibility:I

    sget v0, Lql/j;->L:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mArrowIcon:Landroid/graphics/drawable/Drawable;

    sget v0, Lql/j;->N:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    sget v0, Lql/j;->O:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    sget v0, Lql/j;->P:I

    sget v2, Lql/d;->k:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    sget v2, Lql/j;->S:I

    sget v3, Lql/d;->l:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    sget v3, Lql/f;->c:I

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0, v2, v0, v2}, Landroid/view/View;->setPadding(IIII)V

    sget v0, Lql/j;->R:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mTextAppearanceId:I

    sget v0, Lql/j;->Q:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mActivatedTextAppearanceId:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, p2, p3}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->initView(Ljava/lang/CharSequence;Z)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setId(I)V

    :cond_1
    new-instance p1, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView$a;

    invoke-direct {p1, p0}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView$a;-><init>(Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;)V

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->p0(Landroid/view/View;Landroidx/core/view/a;)V

    return-void
.end method

.method public static synthetic a(Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;)V
    .locals 0

    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->lambda$setFiltered$0()V

    return-void
.end method

.method static synthetic access$000(Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->setFiltered(Z)V

    return-void
.end method

.method public static synthetic b(Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;Landroid/view/View$OnClickListener;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->lambda$setOnClickListener$1(Landroid/view/View$OnClickListener;Landroid/view/View;)V

    return-void
.end method

.method private getHapticFeedbackCompat()Lum/b;
    .locals 2

    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mHapticFeedbackCompat:Lum/b;

    if-nez v0, :cond_0

    new-instance v0, Lum/b;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lum/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mHapticFeedbackCompat:Lum/b;

    :cond_0
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mHapticFeedbackCompat:Lum/b;

    return-object v0
.end method

.method private synthetic lambda$setFiltered$0()V
    .locals 2

    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mOnFilteredListener:Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView$b;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView$b;->a(Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$setOnClickListener$1(Landroid/view/View$OnClickListener;Landroid/view/View;)V
    .locals 2

    iget-boolean v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mFiltered:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mDescendingEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mDescending:Z

    xor-int/2addr v0, v1

    invoke-direct {p0, v0}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->setDescending(Z)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->setFiltered(Z)V

    :cond_1
    :goto_0
    invoke-interface {p1, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    const-string p1, "2.0"

    invoke-static {p1}, Lmiuix/view/HapticCompat;->c(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->getHapticFeedbackCompat()Lum/b;

    move-result-object p1

    const/16 p2, 0xcc

    invoke-virtual {p1, p2}, Lum/b;->c(I)Z

    goto :goto_1

    :cond_2
    sget p1, Lmiuix/view/i;->k:I

    invoke-static {p2, p1}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;I)Z

    :goto_1
    return-void
.end method

.method private setDescending(Z)V
    .locals 1

    iput-boolean p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mDescending:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mArrow:Landroid/widget/ImageView;

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mArrow:Landroid/widget/ImageView;

    const/high16 v0, 0x43340000    # 180.0f

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setRotationX(F)V

    return-void
.end method

.method private setFiltered(Z)V
    .locals 6

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v5, v4, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    if-eqz v5, :cond_0

    check-cast v4, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    if-eq v4, p0, :cond_0

    iget-boolean v5, v4, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mFiltered:Z

    if-eqz v5, :cond_0

    invoke-direct {v4, v2}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->setFiltered(Z)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iput-boolean p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mFiltered:Z

    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->updateTextAppearance()V

    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/view/View;->setActivated(Z)V

    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/view/View;->setActivated(Z)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setActivated(Z)V

    if-nez v0, :cond_2

    return-void

    :cond_2
    if-eqz p1, :cond_3

    new-instance p1, Lmiuix/miuixbasewidget/widget/d;

    invoke-direct {p1, p0}, Lmiuix/miuixbasewidget/widget/d;-><init>(Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method

.method private updateTextAppearance()V
    .locals 2

    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->isFiltered()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mTextView:Landroid/widget/TextView;

    iget v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mActivatedTextAppearanceId:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mTextView:Landroid/widget/TextView;

    iget v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mTextAppearanceId:I

    :goto_0
    invoke-static {v0, v1}, Landroidx/core/widget/TextViewCompat;->q(Landroid/widget/TextView;I)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_1
    return-void
.end method


# virtual methods
.method public getArrowView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mArrow:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getDescendingEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mDescendingEnabled:Z

    return v0
.end method

.method public getIconView()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mArrow:Landroid/widget/ImageView;

    return-object v0
.end method

.method protected getTabLayoutResource()I
    .locals 1

    sget v0, Lql/g;->c:I

    return v0
.end method

.method public getTextView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method protected initView(Ljava/lang/CharSequence;Z)V
    .locals 2

    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mArrow:Landroid/widget/ImageView;

    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mArrowIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mArrow:Landroid/widget/ImageView;

    iget v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mIndicatorVisibility:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0, p2}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->setDescending(Z)V

    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->updateTextAppearance()V

    return-void
.end method

.method public isDescending()Z
    .locals 1

    iget-boolean v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mDescending:Z

    return v0
.end method

.method public isFiltered()Z
    .locals 1

    iget-boolean v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mFiltered:Z

    return v0
.end method

.method public setActivatedTextAppearance(I)V
    .locals 0

    iput p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mActivatedTextAppearanceId:I

    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->updateTextAppearance()V

    return-void
.end method

.method public setDescendingEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mDescendingEnabled:Z

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method public setIconView(Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mArrow:Landroid/widget/ImageView;

    return-void
.end method

.method public setIndicatorVisibility(I)V
    .locals 1

    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    new-instance v0, Lmiuix/miuixbasewidget/widget/c;

    invoke-direct {v0, p0, p1}, Lmiuix/miuixbasewidget/widget/c;-><init>(Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;Landroid/view/View$OnClickListener;)V

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnFilteredListener(Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView$b;)V
    .locals 0

    iput-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mOnFilteredListener:Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView$b;

    return-void
.end method

.method public setTextAppearance(I)V
    .locals 0

    iput p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mTextAppearanceId:I

    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->updateTextAppearance()V

    return-void
.end method

.method public setTextView(Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mTextView:Landroid/widget/TextView;

    return-void
.end method

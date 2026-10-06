.class public Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/miuixbasewidget/widget/FilterSortView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$c;,
        Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$d;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/ImageView;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:I

.field private g:Lmiuix/miuixbasewidget/widget/FilterSortView;

.field private h:Landroid/graphics/drawable/Drawable;

.field private i:Landroid/content/res/ColorStateList;

.field private j:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$d;

.field private k:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$c;

.field private l:Lum/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->e:Z

    invoke-virtual {p0}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->getTabLayoutResource()I

    move-result v1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v2, v1, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v2, 0x1020014

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->a:Landroid/widget/TextView;

    sget v2, Lql/f;->a:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->b:Landroid/widget/ImageView;

    if-eqz p2, :cond_0

    sget v2, Lql/g;->b:I

    if-ne v1, v2, :cond_0

    sget-object v1, Lql/j;->D:[I

    sget v2, Lql/i;->c:I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lql/j;->E:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget p3, Lql/j;->G:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    sget v0, Lql/j;->I:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->f:I

    sget v0, Lql/j;->F:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->h:Landroid/graphics/drawable/Drawable;

    sget v0, Lql/j;->H:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->i:Landroid/content/res/ColorStateList;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, p2, p3}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->i(Ljava/lang/CharSequence;Z)V

    :cond_0
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->b:Landroid/widget/ImageView;

    iget p2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->f:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setId(I)V

    :cond_1
    return-void
.end method

.method public static synthetic a(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->j(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;)Z
    .locals 0

    iget-boolean p0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->c:Z

    return p0
.end method

.method static synthetic c(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;)Z
    .locals 0

    iget-boolean p0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->e:Z

    return p0
.end method

.method static synthetic d(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;)Z
    .locals 0

    iget-boolean p0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->d:Z

    return p0
.end method

.method static synthetic e(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->setDescending(Z)V

    return-void
.end method

.method static synthetic f(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;)Lum/b;
    .locals 0

    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->getHapticFeedbackCompat()Lum/b;

    move-result-object p0

    return-object p0
.end method

.method static synthetic g(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->setFiltered(Z)V

    return-void
.end method

.method private getHapticFeedbackCompat()Lum/b;
    .locals 2

    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->l:Lum/b;

    if-nez v0, :cond_0

    new-instance v0, Lum/b;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lum/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->l:Lum/b;

    :cond_0
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->l:Lum/b;

    return-object v0
.end method

.method static synthetic h(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;)Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$d;
    .locals 0

    iget-object p0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->j:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$d;

    return-object p0
.end method

.method private synthetic j(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->k:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$c;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSource()I

    move-result p1

    const/16 v1, 0x1002

    if-ne p1, v1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_4

    const/16 v0, 0xa

    if-eq p1, v0, :cond_2

    goto :goto_0

    :cond_2
    iget-boolean p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->c:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->k:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$c;

    invoke-interface {p1}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$c;->a()V

    :cond_3
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->k:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$c;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-interface {p1, v0, p2}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$c;->c(FF)V

    goto :goto_0

    :cond_4
    iget-boolean p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->c:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->k:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$c;

    invoke-interface {p1}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$c;->b()V

    :cond_5
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->k:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$c;

    invoke-interface {p1}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$c;->d()V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private k()Landroid/graphics/drawable/Drawable;
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lql/e;->a:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private setDescending(Z)V
    .locals 1

    iput-boolean p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->d:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->b:Landroid/widget/ImageView;

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->b:Landroid/widget/ImageView;

    const/high16 v0, 0x43340000    # 180.0f

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setRotationX(F)V

    return-void
.end method

.method private setFiltered(Z)V
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lmiuix/miuixbasewidget/widget/FilterSortView;

    iput-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->g:Lmiuix/miuixbasewidget/widget/FilterSortView;

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->g:Lmiuix/miuixbasewidget/widget/FilterSortView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    if-eqz v4, :cond_0

    check-cast v3, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    if-eq v3, p0, :cond_0

    iget-boolean v4, v3, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->c:Z

    if-eqz v4, :cond_0

    invoke-direct {v3, v1}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->setFiltered(Z)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iput-boolean p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->c:Z

    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->g:Lmiuix/miuixbasewidget/widget/FilterSortView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiuix/miuixbasewidget/widget/FilterSortView;->setNeedAnim(Z)V

    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->g:Lmiuix/miuixbasewidget/widget/FilterSortView;

    new-instance v1, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$a;

    invoke-direct {v1, p0, p1}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$a;-><init>(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;Z)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public getArrowView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->b:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getDescendingEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->e:Z

    return v0
.end method

.method public getIconView()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->b:Landroid/widget/ImageView;

    return-object v0
.end method

.method protected getTabLayoutResource()I
    .locals 1

    sget v0, Lql/g;->b:I

    return v0
.end method

.method public getTextView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->a:Landroid/widget/TextView;

    return-object v0
.end method

.method protected i(Ljava/lang/CharSequence;Z)V
    .locals 2

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->k()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->i:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, p2}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->setDescending(Z)V

    new-instance p1, Lmiuix/miuixbasewidget/widget/b;

    invoke-direct {p1, p0}, Lmiuix/miuixbasewidget/widget/b;-><init>(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    return-void
.end method

.method public setDescendingEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->e:Z

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method public setFilterHoverListener(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$c;)V
    .locals 0

    iput-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->k:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$c;

    return-void
.end method

.method public setIconView(Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->b:Landroid/widget/ImageView;

    return-void
.end method

.method public setIndicatorVisibility(I)V
    .locals 1

    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    new-instance v0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$b;

    invoke-direct {v0, p0, p1}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$b;-><init>(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;Landroid/view/View$OnClickListener;)V

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnFilteredListener(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$d;)V
    .locals 0

    iput-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->j:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$d;

    return-void
.end method

.method public setTextView(Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->a:Landroid/widget/TextView;

    return-void
.end method

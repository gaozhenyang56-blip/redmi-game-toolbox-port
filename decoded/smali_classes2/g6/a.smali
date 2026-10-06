.class public Lg6/a;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private c:Landroid/content/Context;

.field private d:Z

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Lcom/miui/gamebooster/windowmanager/GBTopbarLayout;

.field private h:Lmiuix/slidingwidget/widget/SlidingButton;

.field private i:Landroid/widget/LinearLayout;

.field private j:Landroid/widget/LinearLayout;

.field private k:Lmiuix/androidbasewidget/widget/SeekBar;

.field private l:Lh6/a;

.field private m:Z

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lh6/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg6/a;->n:Ljava/util/List;

    iput-object p1, p0, Lg6/a;->c:Landroid/content/Context;

    iput-object p2, p0, Lg6/a;->a:Ljava/lang/String;

    iput p3, p0, Lg6/a;->b:I

    invoke-static {}, Li6/a;->h()Li6/a;

    move-result-object p1

    invoke-virtual {p1}, Li6/a;->i()Z

    move-result p1

    iput-boolean p1, p0, Lg6/a;->m:Z

    invoke-static {}, Li6/a;->h()Li6/a;

    move-result-object p1

    invoke-virtual {p1}, Li6/a;->g()Lh6/a;

    move-result-object p1

    iput-object p1, p0, Lg6/a;->l:Lh6/a;

    invoke-direct {p0}, Lg6/a;->m()V

    invoke-virtual {p0}, Lg6/a;->g()V

    return-void
.end method

.method static synthetic a(Lg6/a;)Lh6/a;
    .locals 0

    iget-object p0, p0, Lg6/a;->l:Lh6/a;

    return-object p0
.end method

.method static synthetic b(Lg6/a;)V
    .locals 0

    invoke-direct {p0}, Lg6/a;->o()V

    return-void
.end method

.method private c(Lh6/a;Z)V
    .locals 4

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f071d5e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f071e3b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x7f071dab

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    :goto_0
    invoke-virtual {v0, v1, v1, p2, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    new-instance p2, Landroid/widget/ImageButton;

    iget-object v1, p0, Lg6/a;->c:Landroid/content/Context;

    invoke-direct {p2, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    new-instance v1, Lg6/a$a;

    invoke-direct {v1, p0, p1}, Lg6/a$a;-><init>(Lg6/a;Lh6/a;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lg6/a;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, p2, p1}, Lg6/a;->i(Landroid/view/View;Lh6/a;)V

    return-void
.end method

.method private d()V
    .locals 5

    iget-object v0, p0, Lg6/a;->n:Ljava/util/List;

    invoke-static {v0}, Lc7/c;->n(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lg6/a;->n:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lg6/a;->n:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lh6/a;

    iget-object v3, p0, Lg6/a;->n:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-ne v1, v3, :cond_1

    move v3, v4

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    invoke-direct {p0, v2, v3}, Lg6/a;->e(Lh6/a;Z)V

    iget-object v3, p0, Lg6/a;->n:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v4

    if-ne v1, v3, :cond_2

    goto :goto_2

    :cond_2
    move v4, v0

    :goto_2
    invoke-direct {p0, v2, v4}, Lg6/a;->c(Lh6/a;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private e(Lh6/a;Z)V
    .locals 4

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f071d54

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x7f071dd5

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    :goto_0
    invoke-virtual {v0, v1, v1, p2, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    new-instance p2, Landroid/widget/ImageButton;

    iget-object v1, p0, Lg6/a;->c:Landroid/content/Context;

    invoke-direct {p2, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    new-instance v1, Lg6/a$b;

    invoke-direct {v1, p0, p1}, Lg6/a$b;-><init>(Lg6/a;Lh6/a;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lg6/a;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, p2, p1}, Lg6/a;->j(Landroid/view/View;Lh6/a;)V

    return-void
.end method

.method private f(Lh6/a;)Landroid/graphics/drawable/StateListDrawable;
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f071d3c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f071e0b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p1}, Lh6/a;->a()I

    move-result p1

    invoke-virtual {v1, v2, p1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    int-to-float p1, v0

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f071d5e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f071e3b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {v1, p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    new-instance p1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, -0x101009e

    aput v2, v0, v1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object p1

    nop

    :array_0
    .array-data 4
        0x101009e
        0x10100a1
    .end array-data
.end method

.method private h(Lh6/a;)Landroid/graphics/drawable/StateListDrawable;
    .locals 6

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f071e77

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {p1}, Lh6/a;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f071d46

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f071dff

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    invoke-virtual {v1, v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {p1}, Lh6/a;->b()I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {v2, p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    new-instance p1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v0, 0x1

    new-array v3, v0, [I

    const v4, 0x101009e

    const/4 v5, 0x0

    aput v4, v3, v5

    invoke-virtual {p1, v3, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v0, v0, [I

    const v1, -0x101009e

    aput v1, v0, v5

    invoke-virtual {p1, v0, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object p1
.end method

.method private i(Landroid/view/View;Lh6/a;)V
    .locals 3

    instance-of v0, p1, Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/widget/ImageButton;

    iget-boolean v0, p0, Lg6/a;->m:Z

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lh6/a;->a()I

    move-result v0

    iget-object v2, p0, Lg6/a;->l:Lh6/a;

    invoke-virtual {v2}, Lh6/a;->a()I

    move-result v2

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    invoke-direct {p0, p2}, Lg6/a;->f(Lh6/a;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0, p2}, Lg6/a;->h(Lh6/a;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private j(Landroid/view/View;Lh6/a;)V
    .locals 3

    instance-of v0, p1, Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/widget/ImageButton;

    iget-boolean v0, p0, Lg6/a;->m:Z

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lh6/a;->d()I

    move-result v0

    iget-object v2, p0, Lg6/a;->l:Lh6/a;

    invoke-virtual {v2}, Lh6/a;->d()I

    move-result v2

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    const v0, 0x7f080f37

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p2}, Lh6/a;->e()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private k(I)I
    .locals 1

    add-int/lit8 p1, p1, -0x14

    int-to-float p1, p1

    const v0, 0x3f4ccccd    # 0.8f

    div-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method private l(I)I
    .locals 4

    int-to-double v0, p1

    const-wide v2, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    add-double/2addr v0, v2

    double-to-int p1, v0

    return p1
.end method

.method private m()V
    .locals 2

    new-instance v0, Lh6/a;

    invoke-direct {v0}, Lh6/a;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lh6/a;->j(I)V

    const v1, 0x7f080817

    invoke-virtual {v0, v1}, Lh6/a;->k(I)V

    const-string v1, "#ffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lh6/a;->f(I)V

    const-string v1, "#33ffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lh6/a;->g(I)V

    iget-boolean v1, p0, Lg6/a;->m:Z

    if-eqz v1, :cond_0

    sget-object v1, Lh6/a$a;->b:Lh6/a$a;

    goto :goto_0

    :cond_0
    sget-object v1, Lh6/a$a;->a:Lh6/a$a;

    :goto_0
    invoke-virtual {v0, v1}, Lh6/a;->h(Lh6/a$a;)V

    iget-object v1, p0, Lg6/a;->n:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lh6/a;

    invoke-direct {v0}, Lh6/a;-><init>()V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lh6/a;->j(I)V

    const v1, 0x7f080819

    invoke-virtual {v0, v1}, Lh6/a;->k(I)V

    const-string v1, "#F93939"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lh6/a;->f(I)V

    const-string v1, "#33F93939"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lh6/a;->g(I)V

    iget-boolean v1, p0, Lg6/a;->m:Z

    if-eqz v1, :cond_1

    sget-object v1, Lh6/a$a;->b:Lh6/a$a;

    goto :goto_1

    :cond_1
    sget-object v1, Lh6/a$a;->a:Lh6/a$a;

    :goto_1
    invoke-virtual {v0, v1}, Lh6/a;->h(Lh6/a$a;)V

    iget-object v1, p0, Lg6/a;->n:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lh6/a;

    invoke-direct {v0}, Lh6/a;-><init>()V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lh6/a;->j(I)V

    const v1, 0x7f080818

    invoke-virtual {v0, v1}, Lh6/a;->k(I)V

    const-string v1, "#F9C339"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lh6/a;->f(I)V

    const-string v1, "#33F9C339"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lh6/a;->g(I)V

    iget-boolean v1, p0, Lg6/a;->m:Z

    if-eqz v1, :cond_2

    sget-object v1, Lh6/a$a;->b:Lh6/a$a;

    goto :goto_2

    :cond_2
    sget-object v1, Lh6/a$a;->a:Lh6/a$a;

    :goto_2
    invoke-virtual {v0, v1}, Lh6/a;->h(Lh6/a$a;)V

    iget-object v1, p0, Lg6/a;->n:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lh6/a;

    invoke-direct {v0}, Lh6/a;-><init>()V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lh6/a;->j(I)V

    const v1, 0x7f080816

    invoke-virtual {v0, v1}, Lh6/a;->k(I)V

    const-string v1, "#39CBF9"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lh6/a;->f(I)V

    const-string v1, "#3339CBF9"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lh6/a;->g(I)V

    iget-boolean v1, p0, Lg6/a;->m:Z

    if-eqz v1, :cond_3

    sget-object v1, Lh6/a$a;->b:Lh6/a$a;

    goto :goto_3

    :cond_3
    sget-object v1, Lh6/a$a;->a:Lh6/a$a;

    :goto_3
    invoke-virtual {v0, v1}, Lh6/a;->h(Lh6/a$a;)V

    iget-object v1, p0, Lg6/a;->n:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lh6/a;

    invoke-direct {v0}, Lh6/a;-><init>()V

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lh6/a;->j(I)V

    const v1, 0x7f080815

    invoke-virtual {v0, v1}, Lh6/a;->k(I)V

    const-string v1, "#8D39F9"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lh6/a;->f(I)V

    const-string v1, "#338D39F9"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lh6/a;->g(I)V

    iget-boolean v1, p0, Lg6/a;->m:Z

    if-eqz v1, :cond_4

    sget-object v1, Lh6/a$a;->b:Lh6/a$a;

    goto :goto_4

    :cond_4
    sget-object v1, Lh6/a$a;->a:Lh6/a$a;

    :goto_4
    invoke-virtual {v0, v1}, Lh6/a;->h(Lh6/a$a;)V

    iget-object v1, p0, Lg6/a;->n:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private n()V
    .locals 2

    iget-object v0, p0, Lg6/a;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e01cd

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lg6/a;->e:Landroid/view/View;

    const v0, 0x7f0b0bfe

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/windowmanager/GBTopbarLayout;

    iput-object v0, p0, Lg6/a;->g:Lcom/miui/gamebooster/windowmanager/GBTopbarLayout;

    iget-object v0, p0, Lg6/a;->e:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, La8/k0;->o(Landroid/view/View;Z)V

    iget-object v0, p0, Lg6/a;->e:Landroid/view/View;

    const v1, 0x7f0b0d89

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lg6/a;->f:Landroid/view/View;

    iget-object v0, p0, Lg6/a;->e:Landroid/view/View;

    const v1, 0x7f0b047b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/slidingwidget/widget/SlidingButton;

    iput-object v0, p0, Lg6/a;->h:Lmiuix/slidingwidget/widget/SlidingButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lg6/a;->h:Lmiuix/slidingwidget/widget/SlidingButton;

    iget-boolean v1, p0, Lg6/a;->m:Z

    invoke-virtual {v0, v1}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    iget-object v0, p0, Lg6/a;->h:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lg6/a;->e:Landroid/view/View;

    const v1, 0x7f0b029b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lg6/a;->i:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lg6/a;->e:Landroid/view/View;

    const v1, 0x7f0b028c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lg6/a;->j:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lg6/a;->e:Landroid/view/View;

    const v1, 0x7f0b047a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/androidbasewidget/widget/SeekBar;

    iput-object v0, p0, Lg6/a;->k:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-virtual {v0, p0}, Lmiuix/androidbasewidget/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v0, p0, Lg6/a;->k:Lmiuix/androidbasewidget/widget/SeekBar;

    iget-boolean v1, p0, Lg6/a;->m:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lg6/a;->k:Lmiuix/androidbasewidget/widget/SeekBar;

    iget-object v1, p0, Lg6/a;->l:Lh6/a;

    invoke-virtual {v1}, Lh6/a;->c()I

    move-result v1

    invoke-direct {p0, v1}, Lg6/a;->k(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-direct {p0}, Lg6/a;->d()V

    return-void
.end method

.method private o()V
    .locals 3

    iget-object v0, p0, Lg6/a;->n:Ljava/util/List;

    invoke-static {v0}, Lc7/c;->n(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lg6/a;->n:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lg6/a;->n:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh6/a;

    iget-object v2, p0, Lg6/a;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-le v2, v0, :cond_1

    iget-object v2, p0, Lg6/a;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lg6/a;->j(Landroid/view/View;Lh6/a;)V

    :cond_1
    iget-object v2, p0, Lg6/a;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-le v2, v0, :cond_2

    iget-object v2, p0, Lg6/a;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lg6/a;->i(Landroid/view/View;Lh6/a;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lg6/a;->k:Lmiuix/androidbasewidget/widget/SeekBar;

    if-eqz v0, :cond_4

    iget-boolean v1, p0, Lg6/a;->m:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_4
    return-void
.end method


# virtual methods
.method public g()V
    .locals 1

    invoke-direct {p0}, Lg6/a;->n()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg6/a;->d:Z

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    iput-boolean p2, p0, Lg6/a;->m:Z

    invoke-static {}, Li6/a;->h()Li6/a;

    move-result-object p1

    iget-object v0, p0, Lg6/a;->a:Ljava/lang/String;

    iget v1, p0, Lg6/a;->b:I

    invoke-static {}, La8/z;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lg6/a;->c:Landroid/content/Context;

    invoke-static {v2}, La8/z;->c(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1, p2, v0, v1, v2}, Li6/a;->o(ZLjava/lang/String;IZ)V

    invoke-direct {p0}, Lg6/a;->o()V

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    iget-object p2, p0, Lg6/a;->l:Lh6/a;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    invoke-direct {p0, p1}, Lg6/a;->l(I)I

    move-result p1

    invoke-virtual {p2, p1}, Lh6/a;->i(I)V

    invoke-static {}, Li6/a;->h()Li6/a;

    move-result-object p1

    iget-object p2, p0, Lg6/a;->l:Lh6/a;

    invoke-virtual {p1, p2}, Li6/a;->m(Lh6/a;)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public setOnBackListener(Lcom/miui/gamebooster/windowmanager/GBTopbarLayout$a;)V
    .locals 1

    iget-object v0, p0, Lg6/a;->g:Lcom/miui/gamebooster/windowmanager/GBTopbarLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/miui/gamebooster/windowmanager/GBTopbarLayout;->setOnBackListener(Lcom/miui/gamebooster/windowmanager/GBTopbarLayout$a;)V

    :cond_0
    return-void
.end method

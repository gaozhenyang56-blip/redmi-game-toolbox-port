.class public Lmiuix/preference/StretchableWidgetPreference;
.super Landroidx/preference/Preference;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/RelativeLayout;

.field private c:Lmiuix/stretchablewidget/WidgetContainer;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Z

.field private i:Ljava/lang/String;

.field private j:I

.field private k:Lrm/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Lmiuix/preference/k;->D:I

    invoke-direct {p0, p1, p2, v0}, Lmiuix/preference/StretchableWidgetPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput v0, p0, Lmiuix/preference/StretchableWidgetPreference;->j:I

    sget-object v1, Lmiuix/preference/r;->j2:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lmiuix/preference/r;->k2:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lmiuix/preference/StretchableWidgetPreference;->i:Ljava/lang/String;

    sget p2, Lmiuix/preference/r;->l2:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lmiuix/preference/StretchableWidgetPreference;->h:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic d(Lmiuix/preference/StretchableWidgetPreference;)V
    .locals 0

    invoke-direct {p0}, Lmiuix/preference/StretchableWidgetPreference;->h()V

    return-void
.end method

.method private e(Z)V
    .locals 7

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lmiuix/preference/StretchableWidgetPreference;->c:Lmiuix/stretchablewidget/WidgetContainer;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v1

    const-string v2, "start"

    invoke-interface {v1, v2}, Lmiuix/animation/IStateStyle;->setup(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v1

    iget v4, p0, Lmiuix/preference/StretchableWidgetPreference;->j:I

    const-string v5, "widgetHeight"

    invoke-interface {v1, v5, v4}, Lmiuix/animation/IStateStyle;->add(Ljava/lang/String;I)Lmiuix/animation/IStateStyle;

    move-result-object v1

    sget-object v4, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-interface {v1, v4, v6}, Lmiuix/animation/IStateStyle;->add(Lmiuix/animation/property/FloatProperty;F)Lmiuix/animation/IStateStyle;

    move-result-object v1

    const-string v6, "end"

    invoke-interface {v1, v6}, Lmiuix/animation/IStateStyle;->setup(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v1

    invoke-interface {v1, v5, v3}, Lmiuix/animation/IStateStyle;->add(Ljava/lang/String;I)Lmiuix/animation/IStateStyle;

    move-result-object v1

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Lmiuix/animation/IStateStyle;->add(Lmiuix/animation/property/FloatProperty;F)Lmiuix/animation/IStateStyle;

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lmiuix/preference/StretchableWidgetPreference;->c:Lmiuix/stretchablewidget/WidgetContainer;

    aput-object v1, v0, v3

    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v6

    :goto_0
    invoke-interface {v0, v2}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    return-void
.end method

.method private h()V
    .locals 6

    iget-boolean v0, p0, Lmiuix/preference/StretchableWidgetPreference;->h:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lmiuix/preference/StretchableWidgetPreference;->h:Z

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, -0x2

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lmiuix/animation/base/AnimSpecialConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimSpecialConfig;-><init>()V

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-virtual {v0, v4, v3}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    check-cast v0, Lmiuix/animation/base/AnimSpecialConfig;

    new-array v3, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lmiuix/preference/StretchableWidgetPreference;->c:Lmiuix/stretchablewidget/WidgetContainer;

    aput-object v4, v3, v5

    invoke-static {v3}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v3

    new-array v1, v1, [Lmiuix/animation/base/AnimConfig;

    new-instance v4, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v4}, Lmiuix/animation/base/AnimConfig;-><init>()V

    invoke-virtual {v4, v2}, Lmiuix/animation/base/AnimConfig;->setFromSpeed(F)Lmiuix/animation/base/AnimConfig;

    move-result-object v2

    sget-object v4, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    invoke-virtual {v2, v4, v0}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    aput-object v0, v1, v5

    const-string v0, "start"

    invoke-interface {v3, v0, v1}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    iget-object v0, p0, Lmiuix/preference/StretchableWidgetPreference;->a:Landroid/widget/ImageView;

    sget v1, Lrm/a;->b:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lmiuix/preference/StretchableWidgetPreference;->f:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lmiuix/preference/StretchableWidgetPreference;->g:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    new-instance v0, Lmiuix/animation/base/AnimSpecialConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimSpecialConfig;-><init>()V

    new-array v3, v3, [F

    fill-array-data v3, :array_1

    invoke-virtual {v0, v4, v3}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    check-cast v0, Lmiuix/animation/base/AnimSpecialConfig;

    new-array v3, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lmiuix/preference/StretchableWidgetPreference;->c:Lmiuix/stretchablewidget/WidgetContainer;

    aput-object v4, v3, v5

    invoke-static {v3}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v3

    new-array v1, v1, [Lmiuix/animation/base/AnimConfig;

    new-instance v4, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v4}, Lmiuix/animation/base/AnimConfig;-><init>()V

    invoke-virtual {v4, v2}, Lmiuix/animation/base/AnimConfig;->setFromSpeed(F)Lmiuix/animation/base/AnimConfig;

    move-result-object v2

    sget-object v4, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    invoke-virtual {v2, v4, v0}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    aput-object v0, v1, v5

    const-string v0, "end"

    invoke-interface {v3, v0, v1}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    iget-object v0, p0, Lmiuix/preference/StretchableWidgetPreference;->a:Landroid/widget/ImageView;

    sget v1, Lrm/a;->a:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lmiuix/preference/StretchableWidgetPreference;->f:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lmiuix/preference/StretchableWidgetPreference;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lmiuix/preference/StretchableWidgetPreference;->k:Lrm/b;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lmiuix/preference/StretchableWidgetPreference;->h:Z

    invoke-interface {v0, v1}, Lrm/b;->a(Z)V

    :cond_1
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3e4ccccd    # 0.2f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3e4ccccd    # 0.2f
    .end array-data
.end method


# virtual methods
.method public f(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lmiuix/preference/StretchableWidgetPreference;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public g(Z)V
    .locals 2

    iget-object v0, p0, Lmiuix/preference/StretchableWidgetPreference;->a:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    sget v1, Lmiuix/preference/n;->e:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lmiuix/preference/StretchableWidgetPreference;->f:Landroid/view/View;

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    sget v1, Lmiuix/preference/n;->d:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lmiuix/preference/StretchableWidgetPreference;->f:Landroid/view/View;

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lmiuix/preference/StretchableWidgetPreference;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, p1}, Lmiuix/preference/StretchableWidgetPreference;->e(Z)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/h;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/h;)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    sget v0, Lmiuix/preference/o;->r:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lmiuix/preference/StretchableWidgetPreference;->b:Landroid/widget/RelativeLayout;

    const v0, 0x1020018

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/stretchablewidget/WidgetContainer;

    iput-object v0, p0, Lmiuix/preference/StretchableWidgetPreference;->c:Lmiuix/stretchablewidget/WidgetContainer;

    const/4 v1, 0x0

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    iget-object v0, p0, Lmiuix/preference/StretchableWidgetPreference;->c:Lmiuix/stretchablewidget/WidgetContainer;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lmiuix/preference/StretchableWidgetPreference;->j:I

    sget v0, Lmiuix/preference/o;->p:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmiuix/preference/StretchableWidgetPreference;->e:Landroid/widget/TextView;

    sget v0, Lmiuix/preference/o;->g:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmiuix/preference/StretchableWidgetPreference;->d:Landroid/widget/TextView;

    sget v0, Lmiuix/preference/o;->n:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lmiuix/preference/StretchableWidgetPreference;->a:Landroid/widget/ImageView;

    sget v1, Lmiuix/preference/n;->d:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    sget v0, Lmiuix/preference/o;->d:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiuix/preference/StretchableWidgetPreference;->f:Landroid/view/View;

    sget v0, Lmiuix/preference/o;->q:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lmiuix/preference/StretchableWidgetPreference;->g:Landroid/view/View;

    iget-object p1, p0, Lmiuix/preference/StretchableWidgetPreference;->i:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lmiuix/preference/StretchableWidgetPreference;->f(Ljava/lang/String;)V

    iget-boolean p1, p0, Lmiuix/preference/StretchableWidgetPreference;->h:Z

    invoke-virtual {p0, p1}, Lmiuix/preference/StretchableWidgetPreference;->g(Z)V

    iget-object p1, p0, Lmiuix/preference/StretchableWidgetPreference;->b:Landroid/widget/RelativeLayout;

    new-instance v0, Lmiuix/preference/StretchableWidgetPreference$a;

    invoke-direct {v0, p0}, Lmiuix/preference/StretchableWidgetPreference$a;-><init>(Lmiuix/preference/StretchableWidgetPreference;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.class public Lmiuix/preference/SingleChoicePreference;
.super Landroidx/preference/CheckBoxPreference;
.source "SourceFile"

# interfaces
.implements Landroid/widget/Checkable;
.implements Lmiuix/preference/b;
.implements Lmiuix/preference/f;


# instance fields
.field private g:Z

.field private h:Lmiuix/preference/d;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:Ljava/lang/String;

.field private l:Z

.field private m:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiuix/preference/SingleChoicePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Lmiuix/preference/k;->z:I

    invoke-direct {p0, p1, p2, v0}, Lmiuix/preference/SingleChoicePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lmiuix/preference/SingleChoicePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object p1, p0, Lmiuix/preference/SingleChoicePreference;->m:Landroid/content/Context;

    sget-object v0, Lmiuix/preference/r;->E:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lmiuix/preference/r;->F:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lmiuix/preference/SingleChoicePreference;->k:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private l(Landroid/widget/CompoundButton;Z)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getButtonDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    instance-of v0, p1, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    instance-of v0, p1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->reset()V

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->isRunning()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lmiuix/preference/SingleChoicePreference;->l:Z

    return v0
.end method

.method public b(Landroidx/preference/h;I)V
    .locals 9

    iget-boolean p1, p0, Lmiuix/preference/SingleChoicePreference;->l:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lmiuix/preference/SingleChoicePreference;->m:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lmiuix/preference/m;->g:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iget-object v0, p0, Lmiuix/preference/SingleChoicePreference;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    const/4 v2, 0x0

    add-int v7, p1, p2

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v3, v7

    move v5, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    iget-object p1, p0, Lmiuix/preference/SingleChoicePreference;->i:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/graphics/drawable/LayerDrawable;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move v5, v7

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    :cond_0
    return-void
.end method

.method public callChangeListener(Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Lmiuix/preference/SingleChoicePreference;->h:Lmiuix/preference/d;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lmiuix/preference/d;->a(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-super {p0, p1}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-nez v1, :cond_2

    iget-boolean p1, p0, Lmiuix/preference/SingleChoicePreference;->g:Z

    if-eqz p1, :cond_2

    iput-boolean v2, p0, Lmiuix/preference/SingleChoicePreference;->g:Z

    :cond_2
    return v1
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmiuix/preference/SingleChoicePreference;->k:Ljava/lang/String;

    return-object v0
.end method

.method m(Lmiuix/preference/d;)V
    .locals 0

    iput-object p1, p0, Lmiuix/preference/SingleChoicePreference;->h:Lmiuix/preference/d;

    return-void
.end method

.method public n(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmiuix/preference/SingleChoicePreference;->k:Ljava/lang/String;

    return-void
.end method

.method protected notifyChanged()V
    .locals 1

    invoke-super {p0}, Landroidx/preference/Preference;->notifyChanged()V

    iget-object v0, p0, Lmiuix/preference/SingleChoicePreference;->h:Lmiuix/preference/d;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lmiuix/preference/d;->b(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/h;)V
    .locals 7

    invoke-super {p0, p1}, Landroidx/preference/CheckBoxPreference;->onBindViewHolder(Landroidx/preference/h;)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [I

    sget v3, Lmiuix/preference/k;->n:I

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-virtual {v0, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    invoke-static {}, Lbl/l;->a()I

    move-result v5

    if-le v5, v1, :cond_0

    if-ne v2, v1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    :goto_1
    iput-boolean v2, p0, Lmiuix/preference/SingleChoicePreference;->l:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    iput-object p1, p0, Lmiuix/preference/SingleChoicePreference;->i:Landroid/view/View;

    iget-boolean v0, p0, Lmiuix/preference/SingleChoicePreference;->l:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v5, Lmiuix/appcompat/R$attr;->isLightTheme:I

    invoke-static {v2, v5, v1}, Lpl/d;->d(Landroid/content/Context;IZ)Z

    move-result v1

    if-eqz v1, :cond_2

    sget v1, Lmiuix/preference/n;->c:I

    goto :goto_2

    :cond_2
    sget v1, Lmiuix/preference/n;->b:I

    :goto_2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lmiuix/preference/n;->a:I

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-static {v2, v5, v6}, Landroidx/core/content/res/g;->f(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-static {v5, v1, v6}, Landroidx/core/content/res/g;->f(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lmiuix/preference/SingleChoicePreference;->i:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const/high16 v6, 0x41400000    # 12.0f

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v6

    float-to-int v0, v0

    invoke-virtual {v1, v2, v4, v5, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :cond_3
    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/Checkable;

    if-eqz v1, :cond_4

    check-cast v0, Landroid/widget/Checkable;

    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_4
    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/Checkable;

    if-eqz v1, :cond_5

    check-cast v0, Landroid/widget/Checkable;

    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_5
    const v0, 0x1020001

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lmiuix/preference/SingleChoicePreference;->j:Landroid/view/View;

    if-eqz p1, :cond_6

    invoke-virtual {p1, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    iget-object p1, p0, Lmiuix/preference/SingleChoicePreference;->j:Landroid/view/View;

    instance-of p1, p1, Landroid/widget/CompoundButton;

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lmiuix/preference/SingleChoicePreference;->j:Landroid/view/View;

    check-cast p1, Landroid/widget/CompoundButton;

    iget-boolean v0, p0, Lmiuix/preference/SingleChoicePreference;->g:Z

    invoke-direct {p0, p1, v0}, Lmiuix/preference/SingleChoicePreference;->l(Landroid/widget/CompoundButton;Z)V

    iput-boolean v4, p0, Lmiuix/preference/SingleChoicePreference;->g:Z

    :cond_6
    return-void
.end method

.method protected onClick()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiuix/preference/SingleChoicePreference;->g:Z

    invoke-super {p0}, Landroidx/preference/TwoStatePreference;->onClick()V

    iget-boolean v0, p0, Lmiuix/preference/SingleChoicePreference;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/preference/SingleChoicePreference;->i:Landroid/view/View;

    if-eqz v0, :cond_0

    sget v1, Lmiuix/view/i;->A:I

    sget v2, Lmiuix/view/i;->f:I

    invoke-static {v0, v1, v2}, Lmiuix/view/HapticCompat;->performHapticFeedbackAsync(Landroid/view/View;II)V

    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method public toggle()V
    .locals 1

    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lmiuix/preference/SingleChoicePreference;->setChecked(Z)V

    return-void
.end method

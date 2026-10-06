.class public Lmiuix/preference/MultiChoicePreference;
.super Landroidx/preference/CheckBoxPreference;
.source "SourceFile"

# interfaces
.implements Landroid/widget/Checkable;


# instance fields
.field private g:Z

.field private h:Lmiuix/preference/d;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiuix/preference/MultiChoicePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Lmiuix/preference/k;->g:I

    invoke-direct {p0, p1, p2, v0}, Lmiuix/preference/MultiChoicePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lmiuix/preference/MultiChoicePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

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

    sget-object v0, Lmiuix/preference/r;->E:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lmiuix/preference/r;->F:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lmiuix/preference/MultiChoicePreference;->k:Ljava/lang/String;

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
.method public callChangeListener(Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Lmiuix/preference/MultiChoicePreference;->h:Lmiuix/preference/d;

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

    iget-boolean p1, p0, Lmiuix/preference/MultiChoicePreference;->g:Z

    if-eqz p1, :cond_2

    iput-boolean v2, p0, Lmiuix/preference/MultiChoicePreference;->g:Z

    :cond_2
    return v1
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmiuix/preference/MultiChoicePreference;->k:Ljava/lang/String;

    return-object v0
.end method

.method m(Lmiuix/preference/d;)V
    .locals 0

    iput-object p1, p0, Lmiuix/preference/MultiChoicePreference;->h:Lmiuix/preference/d;

    return-void
.end method

.method public n(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmiuix/preference/MultiChoicePreference;->k:Ljava/lang/String;

    return-void
.end method

.method protected notifyChanged()V
    .locals 1

    invoke-super {p0}, Landroidx/preference/Preference;->notifyChanged()V

    iget-object v0, p0, Lmiuix/preference/MultiChoicePreference;->h:Lmiuix/preference/d;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lmiuix/preference/d;->b(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/h;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/preference/CheckBoxPreference;->onBindViewHolder(Landroidx/preference/h;)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    iput-object p1, p0, Lmiuix/preference/MultiChoicePreference;->i:Landroid/view/View;

    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/Checkable;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/Checkable;

    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_0
    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/Checkable;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/widget/Checkable;

    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_1
    const v0, 0x1020001

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lmiuix/preference/MultiChoicePreference;->j:Landroid/view/View;

    if-eqz p1, :cond_2

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    iget-object p1, p0, Lmiuix/preference/MultiChoicePreference;->j:Landroid/view/View;

    instance-of p1, p1, Landroid/widget/CompoundButton;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lmiuix/preference/MultiChoicePreference;->j:Landroid/view/View;

    check-cast p1, Landroid/widget/CompoundButton;

    iget-boolean v0, p0, Lmiuix/preference/MultiChoicePreference;->g:Z

    invoke-direct {p0, p1, v0}, Lmiuix/preference/MultiChoicePreference;->l(Landroid/widget/CompoundButton;Z)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lmiuix/preference/MultiChoicePreference;->g:Z

    :cond_2
    return-void
.end method

.method protected onClick()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiuix/preference/MultiChoicePreference;->g:Z

    invoke-super {p0}, Landroidx/preference/TwoStatePreference;->onClick()V

    iget-boolean v0, p0, Lmiuix/preference/MultiChoicePreference;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/preference/MultiChoicePreference;->i:Landroid/view/View;

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

    invoke-virtual {p0, v0}, Lmiuix/preference/MultiChoicePreference;->setChecked(Z)V

    return-void
.end method

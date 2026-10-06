.class public Landroidx/preference/SeekBarPreference;
.super Landroidx/preference/Preference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/preference/SeekBarPreference$SavedState;
    }
.end annotation


# instance fields
.field a:I

.field b:I

.field private c:I

.field private d:I

.field e:Z

.field f:Landroid/widget/SeekBar;

.field private g:Landroid/widget/TextView;

.field h:Z

.field private i:Z

.field j:Z

.field private final k:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private final l:Landroid/view/View$OnKeyListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget v0, Landroidx/preference/i;->j:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

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

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Landroidx/preference/SeekBarPreference$a;

    invoke-direct {v0, p0}, Landroidx/preference/SeekBarPreference$a;-><init>(Landroidx/preference/SeekBarPreference;)V

    iput-object v0, p0, Landroidx/preference/SeekBarPreference;->k:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    new-instance v0, Landroidx/preference/SeekBarPreference$b;

    invoke-direct {v0, p0}, Landroidx/preference/SeekBarPreference$b;-><init>(Landroidx/preference/SeekBarPreference;)V

    iput-object v0, p0, Landroidx/preference/SeekBarPreference;->l:Landroid/view/View$OnKeyListener;

    sget-object v0, Landroidx/preference/q;->H0:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Landroidx/preference/q;->K0:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Landroidx/preference/SeekBarPreference;->b:I

    sget p2, Landroidx/preference/q;->I0:I

    const/16 p4, 0x64

    invoke-virtual {p1, p2, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/preference/SeekBarPreference;->d(I)V

    sget p2, Landroidx/preference/q;->L0:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/preference/SeekBarPreference;->e(I)V

    sget p2, Landroidx/preference/q;->J0:I

    const/4 p4, 0x1

    invoke-virtual {p1, p2, p4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/SeekBarPreference;->h:Z

    sget p2, Landroidx/preference/q;->M0:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/SeekBarPreference;->i:Z

    sget p2, Landroidx/preference/q;->N0:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/SeekBarPreference;->j:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private g(IZ)V
    .locals 1

    iget v0, p0, Landroidx/preference/SeekBarPreference;->b:I

    if-ge p1, v0, :cond_0

    move p1, v0

    :cond_0
    iget v0, p0, Landroidx/preference/SeekBarPreference;->c:I

    if-le p1, v0, :cond_1

    move p1, v0

    :cond_1
    iget v0, p0, Landroidx/preference/SeekBarPreference;->a:I

    if-eq p1, v0, :cond_2

    iput p1, p0, Landroidx/preference/SeekBarPreference;->a:I

    invoke-virtual {p0, p1}, Landroidx/preference/SeekBarPreference;->i(I)V

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->persistInt(I)Z

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_2
    return-void
.end method


# virtual methods
.method public final d(I)V
    .locals 1

    iget v0, p0, Landroidx/preference/SeekBarPreference;->b:I

    if-ge p1, v0, :cond_0

    move p1, v0

    :cond_0
    iget v0, p0, Landroidx/preference/SeekBarPreference;->c:I

    if-eq p1, v0, :cond_1

    iput p1, p0, Landroidx/preference/SeekBarPreference;->c:I

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_1
    return-void
.end method

.method public final e(I)V
    .locals 2

    iget v0, p0, Landroidx/preference/SeekBarPreference;->d:I

    if-eq p1, v0, :cond_0

    iget v0, p0, Landroidx/preference/SeekBarPreference;->c:I

    iget v1, p0, Landroidx/preference/SeekBarPreference;->b:I

    sub-int/2addr v0, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroidx/preference/SeekBarPreference;->d:I

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public f(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroidx/preference/SeekBarPreference;->g(IZ)V

    return-void
.end method

.method h(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1    # Landroid/widget/SeekBar;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget v0, p0, Landroidx/preference/SeekBarPreference;->b:I

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Landroidx/preference/SeekBarPreference;->a:I

    if-eq v0, v1, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Landroidx/preference/SeekBarPreference;->g(IZ)V

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/preference/SeekBarPreference;->a:I

    iget v1, p0, Landroidx/preference/SeekBarPreference;->b:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget p1, p0, Landroidx/preference/SeekBarPreference;->a:I

    invoke-virtual {p0, p1}, Landroidx/preference/SeekBarPreference;->i(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method i(I)V
    .locals 1

    iget-object v0, p0, Landroidx/preference/SeekBarPreference;->g:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/h;)V
    .locals 2
    .param p1    # Landroidx/preference/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/h;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    iget-object v1, p0, Landroidx/preference/SeekBarPreference;->l:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    sget v0, Landroidx/preference/l;->f:I

    invoke-virtual {p1, v0}, Landroidx/preference/h;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Landroidx/preference/SeekBarPreference;->f:Landroid/widget/SeekBar;

    sget v0, Landroidx/preference/l;->g:I

    invoke-virtual {p1, v0}, Landroidx/preference/h;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Landroidx/preference/SeekBarPreference;->g:Landroid/widget/TextView;

    iget-boolean v0, p0, Landroidx/preference/SeekBarPreference;->i:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/preference/SeekBarPreference;->g:Landroid/widget/TextView;

    :goto_0
    iget-object p1, p0, Landroidx/preference/SeekBarPreference;->f:Landroid/widget/SeekBar;

    if-nez p1, :cond_1

    const-string p1, "SeekBarPreference"

    const-string v0, "SeekBar view is null in onBindViewHolder."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Landroidx/preference/SeekBarPreference;->k:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object p1, p0, Landroidx/preference/SeekBarPreference;->f:Landroid/widget/SeekBar;

    iget v0, p0, Landroidx/preference/SeekBarPreference;->c:I

    iget v1, p0, Landroidx/preference/SeekBarPreference;->b:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    iget p1, p0, Landroidx/preference/SeekBarPreference;->d:I

    if-eqz p1, :cond_2

    iget-object v0, p0, Landroidx/preference/SeekBarPreference;->f:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/AbsSeekBar;->setKeyProgressIncrement(I)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Landroidx/preference/SeekBarPreference;->f:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/AbsSeekBar;->getKeyProgressIncrement()I

    move-result p1

    iput p1, p0, Landroidx/preference/SeekBarPreference;->d:I

    :goto_1
    iget-object p1, p0, Landroidx/preference/SeekBarPreference;->f:Landroid/widget/SeekBar;

    iget v0, p0, Landroidx/preference/SeekBarPreference;->a:I

    iget v1, p0, Landroidx/preference/SeekBarPreference;->b:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget p1, p0, Landroidx/preference/SeekBarPreference;->a:I

    invoke-virtual {p0, p1}, Landroidx/preference/SeekBarPreference;->i(I)V

    iget-object p1, p0, Landroidx/preference/SeekBarPreference;->f:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1    # Landroid/content/res/TypedArray;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1    # Landroid/os/Parcelable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroidx/preference/SeekBarPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Landroidx/preference/SeekBarPreference$SavedState;

    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget v0, p1, Landroidx/preference/SeekBarPreference$SavedState;->mSeekBarValue:I

    iput v0, p0, Landroidx/preference/SeekBarPreference;->a:I

    iget v0, p1, Landroidx/preference/SeekBarPreference$SavedState;->mMin:I

    iput v0, p0, Landroidx/preference/SeekBarPreference;->b:I

    iget p1, p1, Landroidx/preference/SeekBarPreference$SavedState;->mMax:I

    iput p1, p0, Landroidx/preference/SeekBarPreference;->c:I

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-super {p0}, Landroidx/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/preference/Preference;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Landroidx/preference/SeekBarPreference$SavedState;

    invoke-direct {v1, v0}, Landroidx/preference/SeekBarPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget v0, p0, Landroidx/preference/SeekBarPreference;->a:I

    iput v0, v1, Landroidx/preference/SeekBarPreference$SavedState;->mSeekBarValue:I

    iget v0, p0, Landroidx/preference/SeekBarPreference;->b:I

    iput v0, v1, Landroidx/preference/SeekBarPreference$SavedState;->mMin:I

    iget v0, p0, Landroidx/preference/SeekBarPreference;->c:I

    iput v0, v1, Landroidx/preference/SeekBarPreference$SavedState;->mMax:I

    return-object v1
.end method

.method protected onSetInitialValue(Ljava/lang/Object;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :cond_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->getPersistedInt(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/SeekBarPreference;->f(I)V

    return-void
.end method

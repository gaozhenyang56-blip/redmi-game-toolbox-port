.class public Lmiuix/preference/SingleChoicePreferenceCategory;
.super Landroidx/preference/PreferenceCategory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/preference/SingleChoicePreferenceCategory$SavedState;,
        Lmiuix/preference/SingleChoicePreferenceCategory$c;,
        Lmiuix/preference/SingleChoicePreferenceCategory$b;
    }
.end annotation


# instance fields
.field private a:[Ljava/lang/CharSequence;

.field private b:[Ljava/lang/CharSequence;

.field private c:[Ljava/lang/CharSequence;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Landroid/content/Context;

.field private h:Lmiuix/preference/SingleChoicePreferenceCategory$c;

.field private i:Z

.field private j:Lmiuix/preference/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiuix/preference/SingleChoicePreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Lmiuix/preference/k;->c:I

    invoke-direct {p0, p1, p2, v0}, Lmiuix/preference/SingleChoicePreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lmiuix/preference/SingleChoicePreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

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

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, -0x1

    iput v0, p0, Lmiuix/preference/SingleChoicePreferenceCategory;->d:I

    const/4 v0, 0x0

    iput-object v0, p0, Lmiuix/preference/SingleChoicePreferenceCategory;->h:Lmiuix/preference/SingleChoicePreferenceCategory$c;

    new-instance v0, Lmiuix/preference/SingleChoicePreferenceCategory$a;

    invoke-direct {v0, p0}, Lmiuix/preference/SingleChoicePreferenceCategory$a;-><init>(Lmiuix/preference/SingleChoicePreferenceCategory;)V

    iput-object v0, p0, Lmiuix/preference/SingleChoicePreferenceCategory;->j:Lmiuix/preference/d;

    iput-object p1, p0, Lmiuix/preference/SingleChoicePreferenceCategory;->g:Landroid/content/Context;

    sget-object v0, Lmiuix/preference/r;->G:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lmiuix/preference/r;->H:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lmiuix/preference/SingleChoicePreferenceCategory;->a:[Ljava/lang/CharSequence;

    sget p2, Lmiuix/preference/r;->I:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lmiuix/preference/SingleChoicePreferenceCategory;->b:[Ljava/lang/CharSequence;

    sget p2, Lmiuix/preference/r;->K:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lmiuix/preference/SingleChoicePreferenceCategory;->c:[Ljava/lang/CharSequence;

    sget p2, Lmiuix/preference/r;->J:I

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lmiuix/preference/SingleChoicePreferenceCategory;->i:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private A(Lmiuix/preference/SingleChoicePreferenceCategory$c;I)V
    .locals 0

    invoke-virtual {p1}, Lmiuix/preference/SingleChoicePreferenceCategory$c;->isChecked()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lmiuix/preference/SingleChoicePreferenceCategory$c;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/preference/SingleChoicePreferenceCategory;->x(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic d(Lmiuix/preference/SingleChoicePreferenceCategory;Landroidx/preference/Preference;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmiuix/preference/SingleChoicePreferenceCategory;->k(Landroidx/preference/Preference;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic e(Lmiuix/preference/SingleChoicePreferenceCategory;Landroidx/preference/Preference;)Lmiuix/preference/SingleChoicePreferenceCategory$c;
    .locals 0

    invoke-direct {p0, p1}, Lmiuix/preference/SingleChoicePreferenceCategory;->u(Landroidx/preference/Preference;)Lmiuix/preference/SingleChoicePreferenceCategory$c;

    move-result-object p0

    return-object p0
.end method

.method static synthetic f(Lmiuix/preference/SingleChoicePreferenceCategory;Lmiuix/preference/SingleChoicePreferenceCategory$c;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiuix/preference/SingleChoicePreferenceCategory;->z(Lmiuix/preference/SingleChoicePreferenceCategory$c;)V

    return-void
.end method

.method static synthetic g(Lmiuix/preference/SingleChoicePreferenceCategory;Lmiuix/preference/SingleChoicePreferenceCategory$c;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiuix/preference/SingleChoicePreferenceCategory;->y(Lmiuix/preference/SingleChoicePreferenceCategory$c;)V

    return-void
.end method

.method static synthetic h(Lmiuix/preference/SingleChoicePreferenceCategory;)I
    .locals 0

    iget p0, p0, Lmiuix/preference/SingleChoicePreferenceCategory;->d:I

    return p0
.end method

.method static synthetic i(Lmiuix/preference/SingleChoicePreferenceCategory;Lmiuix/preference/SingleChoicePreferenceCategory$c;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmiuix/preference/SingleChoicePreferenceCategory;->A(Lmiuix/preference/SingleChoicePreferenceCategory$c;I)V

    return-void
.end method

.method private j(Ljava/lang/Object;Landroidx/preference/Preference;)Z
    .locals 1

    invoke-virtual {p2}, Landroidx/preference/Preference;->getOnPreferenceChangeListener()Landroidx/preference/Preference$c;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroidx/preference/Preference;->getOnPreferenceChangeListener()Landroidx/preference/Preference$c;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Landroidx/preference/Preference$c;->onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private k(Landroidx/preference/Preference;Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p1}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v0

    instance-of v0, v0, Lmiuix/preference/RadioSetPreferenceCategory;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iget-object v1, p0, Lmiuix/preference/SingleChoicePreferenceCategory;->h:Lmiuix/preference/SingleChoicePreferenceCategory$c;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lmiuix/preference/SingleChoicePreferenceCategory$c;->a()Landroidx/preference/Preference;

    move-result-object v1

    if-eq v0, v1, :cond_2

    :cond_1
    invoke-direct {p0, p2, v0}, Lmiuix/preference/SingleChoicePreferenceCategory;->j(Ljava/lang/Object;Landroidx/preference/Preference;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p0, p1}, Lmiuix/preference/SingleChoicePreferenceCategory;->v(Landroidx/preference/Preference;)V

    :cond_2
    return-void
.end method

.method private l()V
    .locals 2

    iget-object v0, p0, Lmiuix/preference/SingleChoicePreferenceCategory;->h:Lmiuix/preference/SingleChoicePreferenceCategory$c;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiuix/preference/SingleChoicePreferenceCategory$c;->setChecked(Z)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lmiuix/preference/SingleChoicePreferenceCategory;->h:Lmiuix/preference/SingleChoicePreferenceCategory$c;

    const/4 v0, -0x1

    iput v0, p0, Lmiuix/preference/SingleChoicePreferenceCategory;->d:I

    return-void
.end method

.method private m()V
    .locals 6

    iget-object v0, p0, Lmiuix/preference/SingleChoicePreferenceCategory;->a:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lmiuix/preference/SingleChoicePreferenceCategory;->a:[Ljava/lang/CharSequence;

    aget-object v2, v2, v1

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lmiuix/preference/SingleChoicePreferenceCategory;->b:[Ljava/lang/CharSequence;

    aget-object v3, v3, v1

    check-cast v3, Ljava/lang/String;

    new-instance v4, Lmiuix/preference/SingleChoicePreference;

    iget-object v5, p0, Lmiuix/preference/SingleChoicePreferenceCategory;->g:Landroid/content/Context;

    invoke-direct {v4, v5}, Lmiuix/preference/SingleChoicePreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v3}, Lmiuix/preference/SingleChoicePreference;->n(Ljava/lang/String;)V

    iget-object v2, p0, Lmiuix/preference/SingleChoicePreferenceCategory;->c:[Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    aget-object v2, v2, v1

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p0, v4}, Lmiuix/preference/SingleChoicePreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private s()V
    .locals 0

    invoke-direct {p0}, Lmiuix/preference/SingleChoicePreferenceCategory;->m()V

    return-void
.end method

.method private u(Landroidx/preference/Preference;)Lmiuix/preference/SingleChoicePreferenceCategory$c;
    .locals 1

    instance-of v0, p1, Lmiuix/preference/SingleChoicePreference;

    if-eqz v0, :cond_0

    new-instance v0, Lmiuix/preference/SingleChoicePreferenceCategory$b;

    check-cast p1, Lmiuix/preference/SingleChoicePreference;

    invoke-direct {v0, p1}, Lmiuix/preference/SingleChoicePreferenceCategory$b;-><init>(Lmiuix/preference/SingleChoicePreference;)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Only SingleChoicePreference can be added to SingleChoicePreference2"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private w(Lmiuix/preference/SingleChoicePreferenceCategory$c;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lmiuix/preference/SingleChoicePreferenceCategory$c;->setChecked(Z)V

    return-void
.end method

.method private y(Lmiuix/preference/SingleChoicePreferenceCategory$c;)V
    .locals 4

    invoke-virtual {p1}, Lmiuix/preference/SingleChoicePreferenceCategory$c;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    invoke-virtual {p1}, Lmiuix/preference/SingleChoicePreferenceCategory$c;->a()Landroidx/preference/Preference;

    move-result-object v3

    if-ne v2, v3, :cond_0

    iput v1, p0, Lmiuix/preference/SingleChoicePreferenceCategory;->d:I

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private z(Lmiuix/preference/SingleChoicePreferenceCategory$c;)V
    .locals 2

    invoke-virtual {p1}, Lmiuix/preference/SingleChoicePreferenceCategory$c;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiuix/preference/SingleChoicePreferenceCategory;->h:Lmiuix/preference/SingleChoicePreferenceCategory$c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/preference/SingleChoicePreferenceCategory$c;->a()Landroidx/preference/Preference;

    move-result-object v0

    invoke-virtual {p1}, Lmiuix/preference/SingleChoicePreferenceCategory$c;->a()Landroidx/preference/Preference;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lmiuix/preference/SingleChoicePreferenceCategory;->h:Lmiuix/preference/SingleChoicePreferenceCategory$c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiuix/preference/SingleChoicePreferenceCategory$c;->setChecked(Z)V

    :cond_0
    iput-object p1, p0, Lmiuix/preference/SingleChoicePreferenceCategory;->h:Lmiuix/preference/SingleChoicePreferenceCategory$c;

    :cond_1
    return-void
.end method


# virtual methods
.method public addPreference(Landroidx/preference/Preference;)Z
    .locals 3
    .param p1    # Landroidx/preference/Preference;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lmiuix/preference/SingleChoicePreferenceCategory;->u(Landroidx/preference/Preference;)Lmiuix/preference/SingleChoicePreferenceCategory$c;

    move-result-object v0

    invoke-super {p0, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lmiuix/preference/SingleChoicePreferenceCategory;->j:Lmiuix/preference/d;

    invoke-virtual {v0, v1}, Lmiuix/preference/SingleChoicePreferenceCategory$c;->c(Lmiuix/preference/d;)V

    :cond_0
    invoke-virtual {v0}, Lmiuix/preference/SingleChoicePreferenceCategory$c;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lmiuix/preference/SingleChoicePreferenceCategory;->h:Lmiuix/preference/SingleChoicePreferenceCategory$c;

    if-nez v1, :cond_1

    iput-object v0, p0, Lmiuix/preference/SingleChoicePreferenceCategory;->h:Lmiuix/preference/SingleChoicePreferenceCategory$c;

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already has a checked item, please check state of new add preference"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    iget-object v1, p0, Lmiuix/preference/SingleChoicePreferenceCategory;->e:Ljava/lang/String;

    invoke-virtual {v0}, Lmiuix/preference/SingleChoicePreferenceCategory$c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiuix/preference/SingleChoicePreferenceCategory$c;->setChecked(Z)V

    :cond_3
    return p1
.end method

.method public n(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lmiuix/preference/SingleChoicePreferenceCategory;->b:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lmiuix/preference/SingleChoicePreferenceCategory;->b:[Ljava/lang/CharSequence;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public o()Z
    .locals 1

    iget-boolean v0, p0, Lmiuix/preference/SingleChoicePreferenceCategory;->i:Z

    return v0
.end method

.method public onAttached()V
    .locals 0

    invoke-super {p0}, Landroidx/preference/PreferenceGroup;->onAttached()V

    invoke-direct {p0}, Lmiuix/preference/SingleChoicePreferenceCategory;->s()V

    return-void
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

    const-class v1, Lmiuix/preference/SingleChoicePreferenceCategory$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lmiuix/preference/SingleChoicePreferenceCategory$SavedState;

    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/preference/PreferenceGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object p1, p1, Lmiuix/preference/SingleChoicePreferenceCategory$SavedState;->mValue:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lmiuix/preference/SingleChoicePreferenceCategory;->x(Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroidx/preference/PreferenceGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-super {p0}, Landroidx/preference/PreferenceGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/preference/Preference;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lmiuix/preference/SingleChoicePreferenceCategory$SavedState;

    invoke-direct {v1, v0}, Lmiuix/preference/SingleChoicePreferenceCategory$SavedState;-><init>(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Lmiuix/preference/SingleChoicePreferenceCategory;->q()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lmiuix/preference/SingleChoicePreferenceCategory$SavedState;->mValue:Ljava/lang/String;

    return-object v1
.end method

.method protected onSetInitialValue(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/preference/SingleChoicePreferenceCategory;->x(Ljava/lang/String;)V

    return-void
.end method

.method public q()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmiuix/preference/SingleChoicePreferenceCategory;->e:Ljava/lang/String;

    return-object v0
.end method

.method public r()I
    .locals 1

    iget-object v0, p0, Lmiuix/preference/SingleChoicePreferenceCategory;->e:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lmiuix/preference/SingleChoicePreferenceCategory;->n(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public removePreference(Landroidx/preference/Preference;)Z
    .locals 0
    .param p1    # Landroidx/preference/Preference;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method

.method public v(Landroidx/preference/Preference;)V
    .locals 1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lmiuix/preference/SingleChoicePreferenceCategory;->l()V

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lmiuix/preference/SingleChoicePreferenceCategory;->u(Landroidx/preference/Preference;)Lmiuix/preference/SingleChoicePreferenceCategory$c;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/preference/SingleChoicePreferenceCategory$c;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lmiuix/preference/SingleChoicePreferenceCategory;->w(Lmiuix/preference/SingleChoicePreferenceCategory$c;)V

    invoke-direct {p0, p1}, Lmiuix/preference/SingleChoicePreferenceCategory;->z(Lmiuix/preference/SingleChoicePreferenceCategory$c;)V

    invoke-direct {p0, p1}, Lmiuix/preference/SingleChoicePreferenceCategory;->y(Lmiuix/preference/SingleChoicePreferenceCategory$c;)V

    iget v0, p0, Lmiuix/preference/SingleChoicePreferenceCategory;->d:I

    invoke-direct {p0, p1, v0}, Lmiuix/preference/SingleChoicePreferenceCategory;->A(Lmiuix/preference/SingleChoicePreferenceCategory$c;I)V

    return-void
.end method

.method public x(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lmiuix/preference/SingleChoicePreferenceCategory;->e:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-nez v0, :cond_0

    iget-boolean v2, p0, Lmiuix/preference/SingleChoicePreferenceCategory;->f:Z

    if-nez v2, :cond_1

    :cond_0
    iput-object p1, p0, Lmiuix/preference/SingleChoicePreferenceCategory;->e:Ljava/lang/String;

    iput-boolean v1, p0, Lmiuix/preference/SingleChoicePreferenceCategory;->f:Z

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->persistString(Ljava/lang/String;)Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_1
    return-void
.end method

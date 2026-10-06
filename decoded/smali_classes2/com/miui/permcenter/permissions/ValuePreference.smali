.class public Lcom/miui/permcenter/permissions/ValuePreference;
.super Landroidx/preference/Preference;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/CharSequence;

.field private b:I

.field private c:Z

.field private d:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/permcenter/permissions/ValuePreference;->c:Z

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/permcenter/permissions/ValuePreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/permcenter/permissions/ValuePreference;->c:Z

    invoke-direct {p0, p1, p2}, Lcom/miui/permcenter/permissions/ValuePreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/miui/permcenter/permissions/ValuePreference;->c:Z

    invoke-direct {p0, p1, p2}, Lcom/miui/permcenter/permissions/ValuePreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-boolean p2, p0, Lcom/miui/permcenter/permissions/ValuePreference;->c:Z

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/miui/permcenter/permissions/ValuePreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const v0, 0x7f0e0462

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    if-eqz p2, :cond_2

    sget-object v0, Lef/y;->J4:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x12

    if-ne v1, v2, :cond_0

    iget v0, v0, Landroid/util/TypedValue;->data:I

    if-eqz v0, :cond_0

    const/4 p2, 0x1

    :cond_0
    iput-boolean p2, p0, Lcom/miui/permcenter/permissions/ValuePreference;->c:Z

    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_2
    iget-boolean p1, p0, Lcom/miui/permcenter/permissions/ValuePreference;->c:Z

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Landroidx/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Landroidx/preference/Preference;->getOnPreferenceClickListener()Landroidx/preference/Preference$d;

    move-result-object p1

    if-nez p1, :cond_3

    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.android.settings.TEST_ARROW"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public d()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/permissions/ValuePreference;->a:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public e(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/permcenter/permissions/ValuePreference;->c:Z

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/permissions/ValuePreference;->a:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/permcenter/permissions/ValuePreference;->b:I

    iput-object p1, p0, Lcom/miui/permcenter/permissions/ValuePreference;->a:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/h;)V
    .locals 5

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/h;)V

    const v0, 0x7f0b0d68

    invoke-virtual {p1, v0}, Landroidx/preference/h;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/permcenter/permissions/ValuePreference;->d()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    const v0, 0x7f0b011a

    invoke-virtual {p1, v0}, Landroidx/preference/h;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p1, :cond_4

    iget-boolean v0, p0, Lcom/miui/permcenter/permissions/ValuePreference;->c:Z

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/miui/permcenter/permissions/ValuePreference;->c:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/permcenter/permissions/ValuePreference;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    :goto_2
    return-void
.end method

.method public performClick()V
    .locals 3

    invoke-virtual {p0}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    :cond_0
    invoke-super {p0}, Landroidx/preference/Preference;->performClick()V

    return-void
.end method

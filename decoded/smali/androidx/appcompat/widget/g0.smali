.class public Landroidx/appcompat/widget/g0;
.super Landroid/widget/ToggleButton;
.source "SourceFile"


# instance fields
.field private final a:Landroidx/appcompat/widget/d;

.field private final b:Landroidx/appcompat/widget/c0;

.field private c:Landroidx/appcompat/widget/j;


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

    const v0, 0x101004b

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/g0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/appcompat/widget/a1;->a(Landroid/view/View;Landroid/content/Context;)V

    new-instance p1, Landroidx/appcompat/widget/d;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/d;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Landroidx/appcompat/widget/g0;->a:Landroidx/appcompat/widget/d;

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/d;->e(Landroid/util/AttributeSet;I)V

    new-instance p1, Landroidx/appcompat/widget/c0;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/c0;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Landroidx/appcompat/widget/g0;->b:Landroidx/appcompat/widget/c0;

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/c0;->m(Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Landroidx/appcompat/widget/g0;->getEmojiTextViewHelper()Landroidx/appcompat/widget/j;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/j;->c(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private getEmojiTextViewHelper()Landroidx/appcompat/widget/j;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroidx/appcompat/widget/g0;->c:Landroidx/appcompat/widget/j;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/widget/j;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/j;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroidx/appcompat/widget/g0;->c:Landroidx/appcompat/widget/j;

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/g0;->c:Landroidx/appcompat/widget/j;

    return-object v0
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ToggleButton;->drawableStateChanged()V

    iget-object v0, p0, Landroidx/appcompat/widget/g0;->a:Landroidx/appcompat/widget/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/d;->b()V

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/g0;->b:Landroidx/appcompat/widget/c0;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/appcompat/widget/c0;->b()V

    :cond_1
    return-void
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$a;->c:Landroidx/annotation/RestrictTo$a;
        }
    .end annotation

    iget-object v0, p0, Landroidx/appcompat/widget/g0;->a:Landroidx/appcompat/widget/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/d;->c()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$a;->c:Landroidx/annotation/RestrictTo$a;
        }
    .end annotation

    iget-object v0, p0, Landroidx/appcompat/widget/g0;->a:Landroidx/appcompat/widget/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/d;->d()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public setAllCaps(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/ToggleButton;->setAllCaps(Z)V

    invoke-direct {p0}, Landroidx/appcompat/widget/g0;->getEmojiTextViewHelper()Landroidx/appcompat/widget/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/j;->d(Z)V

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/widget/ToggleButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroidx/appcompat/widget/g0;->a:Landroidx/appcompat/widget/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/d;->f(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/widget/ToggleButton;->setBackgroundResource(I)V

    iget-object v0, p0, Landroidx/appcompat/widget/g0;->a:Landroidx/appcompat/widget/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/d;->g(I)V

    :cond_0
    return-void
.end method

.method public setEmojiCompatEnabled(Z)V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/widget/g0;->getEmojiTextViewHelper()Landroidx/appcompat/widget/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/j;->e(Z)V

    return-void
.end method

.method public setFilters([Landroid/text/InputFilter;)V
    .locals 1
    .param p1    # [Landroid/text/InputFilter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Landroidx/appcompat/widget/g0;->getEmojiTextViewHelper()Landroidx/appcompat/widget/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/j;->a([Landroid/text/InputFilter;)[Landroid/text/InputFilter;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/ToggleButton;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$a;->c:Landroidx/annotation/RestrictTo$a;
        }
    .end annotation

    iget-object v0, p0, Landroidx/appcompat/widget/g0;->a:Landroidx/appcompat/widget/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/d;->i(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$a;->c:Landroidx/annotation/RestrictTo$a;
        }
    .end annotation

    iget-object v0, p0, Landroidx/appcompat/widget/g0;->a:Landroidx/appcompat/widget/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/d;->j(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

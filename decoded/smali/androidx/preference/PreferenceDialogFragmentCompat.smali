.class public abstract Landroidx/preference/PreferenceDialogFragmentCompat;
.super Landroidx/fragment/app/DialogFragment;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/preference/PreferenceDialogFragmentCompat$a;
    }
.end annotation


# instance fields
.field private a:Landroidx/preference/DialogPreference;

.field private b:Ljava/lang/CharSequence;

.field private c:Ljava/lang/CharSequence;

.field private d:Ljava/lang/CharSequence;

.field private e:Ljava/lang/CharSequence;

.field private f:I
    .annotation build Landroidx/annotation/LayoutRes;
    .end annotation
.end field

.field private g:Landroid/graphics/drawable/BitmapDrawable;

.field private h:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method private g0(Landroid/app/Dialog;)V
    .locals 2
    .param p1    # Landroid/app/Dialog;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    invoke-static {p1}, Landroidx/preference/PreferenceDialogFragmentCompat$a;->a(Landroid/view/Window;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceDialogFragmentCompat;->h0()V

    :goto_0
    return-void
.end method


# virtual methods
.method public a0()Landroidx/preference/DialogPreference;
    .locals 2

    iget-object v0, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->a:Landroidx/preference/DialogPreference;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Landroidx/preference/DialogPreference$a;

    invoke-interface {v1, v0}, Landroidx/preference/DialogPreference$a;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/DialogPreference;

    iput-object v0, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->a:Landroidx/preference/DialogPreference;

    :cond_0
    iget-object v0, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->a:Landroidx/preference/DialogPreference;

    return-object v0
.end method

.method protected b0()Z
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$a;->a:Landroidx/annotation/RestrictTo$a;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method protected c0(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const v0, 0x102000b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v0, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->e:Ljava/lang/CharSequence;

    const/16 v1, 0x8

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    instance-of v1, p1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 v1, 0x0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_2

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method protected d0(Landroid/content/Context;)Landroid/view/View;
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget p1, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->f:I

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public abstract e0(Z)V
.end method

.method protected f0(Landroidx/appcompat/app/a$a;)V
    .locals 0
    .param p1    # Landroidx/appcompat/app/a$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method protected h0()V
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$a;->a:Landroidx/annotation/RestrictTo$a;
        }
    .end annotation

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1    # Landroid/content/DialogInterface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput p2, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->h:I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Landroidx/preference/DialogPreference$a;

    if-eqz v1, :cond_4

    check-cast v0, Landroidx/preference/DialogPreference$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "key"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-nez p1, :cond_2

    invoke-interface {v0, v1}, Landroidx/preference/DialogPreference$a;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/DialogPreference;

    iput-object p1, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->a:Landroidx/preference/DialogPreference;

    invoke-virtual {p1}, Landroidx/preference/DialogPreference;->g()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->b:Ljava/lang/CharSequence;

    iget-object p1, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->a:Landroidx/preference/DialogPreference;

    invoke-virtual {p1}, Landroidx/preference/DialogPreference;->i()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->c:Ljava/lang/CharSequence;

    iget-object p1, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->a:Landroidx/preference/DialogPreference;

    invoke-virtual {p1}, Landroidx/preference/DialogPreference;->h()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->d:Ljava/lang/CharSequence;

    iget-object p1, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->a:Landroidx/preference/DialogPreference;

    invoke-virtual {p1}, Landroidx/preference/DialogPreference;->f()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->e:Ljava/lang/CharSequence;

    iget-object p1, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->a:Landroidx/preference/DialogPreference;

    invoke-virtual {p1}, Landroidx/preference/DialogPreference;->e()I

    move-result p1

    iput p1, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->f:I

    iget-object p1, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->a:Landroidx/preference/DialogPreference;

    invoke-virtual {p1}, Landroidx/preference/DialogPreference;->d()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1

    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    invoke-virtual {p1, v2, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {p1, v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_1
    :goto_0
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    :goto_1
    iput-object p1, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->g:Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_2

    :cond_2
    const-string v0, "PreferenceDialogFragment.title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->b:Ljava/lang/CharSequence;

    const-string v0, "PreferenceDialogFragment.positiveText"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->c:Ljava/lang/CharSequence;

    const-string v0, "PreferenceDialogFragment.negativeText"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->d:Ljava/lang/CharSequence;

    const-string v0, "PreferenceDialogFragment.message"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->e:Ljava/lang/CharSequence;

    const-string v0, "PreferenceDialogFragment.layout"

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->f:I

    const-string v0, "PreferenceDialogFragment.icon"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    if-eqz p1, :cond_3

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->g:Landroid/graphics/drawable/BitmapDrawable;

    :cond_3
    :goto_2
    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Target fragment must implement TargetFragment interface"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 p1, -0x2

    iput p1, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->h:I

    new-instance p1, Landroidx/appcompat/app/a$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/a$a;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->b:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/a$a;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/a$a;

    move-result-object p1

    iget-object v0, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->g:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/a$a;->setIcon(Landroid/graphics/drawable/Drawable;)Landroidx/appcompat/app/a$a;

    move-result-object p1

    iget-object v0, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->c:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, p0}, Landroidx/appcompat/app/a$a;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/a$a;

    move-result-object p1

    iget-object v0, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->d:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, p0}, Landroidx/appcompat/app/a$a;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/a$a;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceDialogFragmentCompat;->d0(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceDialogFragmentCompat;->c0(Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/a$a;->setView(Landroid/view/View;)Landroidx/appcompat/app/a$a;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->e:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/a$a;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/a$a;

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceDialogFragmentCompat;->f0(Landroidx/appcompat/app/a$a;)V

    invoke-virtual {p1}, Landroidx/appcompat/app/a$a;->create()Landroidx/appcompat/app/a;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/preference/PreferenceDialogFragmentCompat;->b0()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Landroidx/preference/PreferenceDialogFragmentCompat;->g0(Landroid/app/Dialog;)V

    :cond_1
    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1    # Landroid/content/DialogInterface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    iget p1, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->h:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceDialogFragmentCompat;->e0(Z)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->b:Ljava/lang/CharSequence;

    const-string v1, "PreferenceDialogFragment.title"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->c:Ljava/lang/CharSequence;

    const-string v1, "PreferenceDialogFragment.positiveText"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->d:Ljava/lang/CharSequence;

    const-string v1, "PreferenceDialogFragment.negativeText"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->e:Ljava/lang/CharSequence;

    const-string v1, "PreferenceDialogFragment.message"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    iget v0, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->f:I

    const-string v1, "PreferenceDialogFragment.layout"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->g:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "PreferenceDialogFragment.icon"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

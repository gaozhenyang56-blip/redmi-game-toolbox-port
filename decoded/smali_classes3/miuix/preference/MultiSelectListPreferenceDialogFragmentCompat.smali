.class public Lmiuix/preference/MultiSelectListPreferenceDialogFragmentCompat;
.super Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat;
.source "SourceFile"


# instance fields
.field private m:Lmiuix/preference/e;

.field private n:Lmiuix/preference/c;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat;-><init>()V

    new-instance v0, Lmiuix/preference/MultiSelectListPreferenceDialogFragmentCompat$a;

    invoke-direct {v0, p0}, Lmiuix/preference/MultiSelectListPreferenceDialogFragmentCompat$a;-><init>(Lmiuix/preference/MultiSelectListPreferenceDialogFragmentCompat;)V

    iput-object v0, p0, Lmiuix/preference/MultiSelectListPreferenceDialogFragmentCompat;->n:Lmiuix/preference/c;

    new-instance v1, Lmiuix/preference/e;

    invoke-direct {v1, v0, p0}, Lmiuix/preference/e;-><init>(Lmiuix/preference/c;Landroidx/preference/PreferenceDialogFragmentCompat;)V

    iput-object v1, p0, Lmiuix/preference/MultiSelectListPreferenceDialogFragmentCompat;->m:Lmiuix/preference/e;

    return-void
.end method

.method static synthetic k0(Lmiuix/preference/MultiSelectListPreferenceDialogFragmentCompat;Landroid/content/Context;)Landroid/view/View;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceDialogFragmentCompat;->d0(Landroid/content/Context;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static synthetic l0(Lmiuix/preference/MultiSelectListPreferenceDialogFragmentCompat;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceDialogFragmentCompat;->c0(Landroid/view/View;)V

    return-void
.end method

.method public static m0(Ljava/lang/String;)Lmiuix/preference/MultiSelectListPreferenceDialogFragmentCompat;
    .locals 3

    new-instance v0, Lmiuix/preference/MultiSelectListPreferenceDialogFragmentCompat;

    invoke-direct {v0}, Lmiuix/preference/MultiSelectListPreferenceDialogFragmentCompat;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    const-string v2, "key"

    invoke-virtual {v1, v2, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method protected final f0(Landroidx/appcompat/app/a$a;)V
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "using miuix builder instead"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected n0(Lmiuix/appcompat/app/AlertDialog$Builder;)V
    .locals 2

    new-instance v0, Lmiuix/preference/a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lmiuix/preference/a;-><init>(Landroid/content/Context;Lmiuix/appcompat/app/AlertDialog$Builder;)V

    invoke-super {p0, v0}, Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat;->f0(Landroidx/appcompat/app/a$a;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lmiuix/preference/MultiSelectListPreferenceDialogFragmentCompat;->m:Lmiuix/preference/e;

    invoke-virtual {v0, p1}, Lmiuix/preference/e;->a(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method

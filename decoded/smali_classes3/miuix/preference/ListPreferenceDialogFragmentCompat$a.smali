.class Lmiuix/preference/ListPreferenceDialogFragmentCompat$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiuix/preference/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/preference/ListPreferenceDialogFragmentCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lmiuix/preference/ListPreferenceDialogFragmentCompat;


# direct methods
.method constructor <init>(Lmiuix/preference/ListPreferenceDialogFragmentCompat;)V
    .locals 0

    iput-object p1, p0, Lmiuix/preference/ListPreferenceDialogFragmentCompat$a;->a:Lmiuix/preference/ListPreferenceDialogFragmentCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lmiuix/preference/ListPreferenceDialogFragmentCompat$a;->a:Lmiuix/preference/ListPreferenceDialogFragmentCompat;

    invoke-static {v0, p1}, Lmiuix/preference/ListPreferenceDialogFragmentCompat;->k0(Lmiuix/preference/ListPreferenceDialogFragmentCompat;Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lmiuix/preference/ListPreferenceDialogFragmentCompat$a;->a:Lmiuix/preference/ListPreferenceDialogFragmentCompat;

    invoke-static {v0, p1}, Lmiuix/preference/ListPreferenceDialogFragmentCompat;->l0(Lmiuix/preference/ListPreferenceDialogFragmentCompat;Landroid/view/View;)V

    return-void
.end method

.method public c(Lmiuix/appcompat/app/AlertDialog$Builder;)V
    .locals 1

    iget-object v0, p0, Lmiuix/preference/ListPreferenceDialogFragmentCompat$a;->a:Lmiuix/preference/ListPreferenceDialogFragmentCompat;

    invoke-virtual {v0, p1}, Lmiuix/preference/ListPreferenceDialogFragmentCompat;->n0(Lmiuix/appcompat/app/AlertDialog$Builder;)V

    return-void
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

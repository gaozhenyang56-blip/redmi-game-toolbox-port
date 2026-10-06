.class public Lcom/miui/permcenter/settings/InvisibleModeActivity$InvisibleModeFragment;
.super Lmiuix/preference/PreferenceFragment;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/permcenter/settings/InvisibleModeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InvisibleModeFragment"
.end annotation


# instance fields
.field private a:Landroidx/preference/CheckBoxPreference;

.field private b:Lmiuix/appcompat/app/AlertDialog;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiuix/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method public static synthetic a0(Lcom/miui/permcenter/settings/InvisibleModeActivity$InvisibleModeFragment;ZLandroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/permcenter/settings/InvisibleModeActivity$InvisibleModeFragment;->f0(ZLandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic b0(Lcom/miui/permcenter/settings/InvisibleModeActivity$InvisibleModeFragment;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/permcenter/settings/InvisibleModeActivity$InvisibleModeFragment;->g0(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic c0(Lcom/miui/permcenter/settings/InvisibleModeActivity$InvisibleModeFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/permcenter/settings/InvisibleModeActivity$InvisibleModeFragment;->e0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private d0()V
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/settings/InvisibleModeActivity$InvisibleModeFragment;->b:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/permcenter/settings/InvisibleModeActivity$InvisibleModeFragment;->b:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private synthetic e0(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/miui/permcenter/settings/InvisibleModeActivity$InvisibleModeFragment;->a:Landroidx/preference/CheckBoxPreference;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method private synthetic f0(ZLandroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/permcenter/settings/InvisibleModeActivity$InvisibleModeFragment;->h0(Z)V

    return-void
.end method

.method private synthetic g0(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/permcenter/settings/InvisibleModeActivity$InvisibleModeFragment;->a:Landroidx/preference/CheckBoxPreference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method private h0(Z)V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/miui/permcenter/o$a;->d(Landroid/content/Context;Z)V

    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/miui/permcenter/service/InvisibleModeService;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lmiuix/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f15005b

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->addPreferencesFromResource(I)V

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const-string v1, "key_dialog_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/permcenter/settings/InvisibleModeActivity$InvisibleModeFragment;->c:Z

    :cond_0
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    invoke-direct {p0}, Lcom/miui/permcenter/settings/InvisibleModeActivity$InvisibleModeFragment;->d0()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p2, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f1204cc

    invoke-virtual {p2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    const v0, 0x7f1204d2

    invoke-virtual {p2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    const v0, 0x7f120499

    new-instance v1, Ltc/a;

    invoke-direct {v1, p0}, Ltc/a;-><init>(Lcom/miui/permcenter/settings/InvisibleModeActivity$InvisibleModeFragment;)V

    invoke-virtual {p2, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    const v0, 0x7f120f48

    new-instance v1, Ltc/b;

    invoke-direct {v1, p0, p1}, Ltc/b;-><init>(Lcom/miui/permcenter/settings/InvisibleModeActivity$InvisibleModeFragment;Z)V

    invoke-virtual {p2, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Ltc/c;

    invoke-direct {p2, p0}, Ltc/c;-><init>(Lcom/miui/permcenter/settings/InvisibleModeActivity$InvisibleModeFragment;)V

    invoke-virtual {p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/permcenter/settings/InvisibleModeActivity$InvisibleModeFragment;->b:Lmiuix/appcompat/app/AlertDialog;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/miui/permcenter/settings/InvisibleModeActivity$InvisibleModeFragment;->h0(Z)V

    :goto_0
    sget-object p1, Lcom/miui/permcenter/permissions/e;->l:Lcom/miui/permcenter/permissions/e$a;

    invoke-virtual {p1}, Lcom/miui/permcenter/permissions/e$a;->a()Lcom/miui/permcenter/permissions/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/permcenter/permissions/e;->q()V

    const/4 p1, 0x1

    return p1
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    iget-object v0, p0, Lcom/miui/permcenter/settings/InvisibleModeActivity$InvisibleModeFragment;->b:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/miui/permcenter/settings/InvisibleModeActivity$InvisibleModeFragment;->a:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/permcenter/o$a;->b(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/permcenter/o$a;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/permcenter/settings/InvisibleModeActivity$InvisibleModeFragment;->b:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v1}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    :cond_2
    :goto_1
    iget-boolean v1, p0, Lcom/miui/permcenter/settings/InvisibleModeActivity$InvisibleModeFragment;->c:Z

    if-eqz v1, :cond_3

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/miui/permcenter/settings/InvisibleModeActivity$InvisibleModeFragment;->a:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/miui/permcenter/settings/InvisibleModeActivity$InvisibleModeFragment;->a:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->performClick()V

    :cond_3
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/miui/permcenter/settings/InvisibleModeActivity$InvisibleModeFragment;->b:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const-string v1, "key_dialog_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lmiuix/preference/PreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const-string p1, "invisible_mode"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/miui/permcenter/settings/InvisibleModeActivity$InvisibleModeFragment;->a:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    sget-boolean p1, Lcom/miui/permcenter/o;->m:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/permcenter/settings/InvisibleModeActivity$InvisibleModeFragment;->a:Landroidx/preference/CheckBoxPreference;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_0
    return-void
.end method

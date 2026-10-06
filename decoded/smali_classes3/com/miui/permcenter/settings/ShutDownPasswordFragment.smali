.class public Lcom/miui/permcenter/settings/ShutDownPasswordFragment;
.super Lmiuix/preference/PreferenceFragment;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroidx/preference/CheckBoxPreference;

.field private final c:I

.field private d:Landroid/content/Context;

.field private e:Lcom/miui/permcenter/settings/model/NoCardNoClickEffectPreference;

.field private f:Landroidx/preference/Preference$c;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmiuix/preference/PreferenceFragment;-><init>()V

    const-string v0, "ShutPasswordFragment"

    iput-object v0, p0, Lcom/miui/permcenter/settings/ShutDownPasswordFragment;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/permcenter/settings/ShutDownPasswordFragment;->c:I

    new-instance v0, Ltc/i;

    invoke-direct {v0, p0}, Ltc/i;-><init>(Lcom/miui/permcenter/settings/ShutDownPasswordFragment;)V

    iput-object v0, p0, Lcom/miui/permcenter/settings/ShutDownPasswordFragment;->f:Landroidx/preference/Preference$c;

    return-void
.end method

.method public static synthetic a0(Lcom/miui/permcenter/settings/ShutDownPasswordFragment;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/permcenter/settings/ShutDownPasswordFragment;->i0(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b0(Lcom/miui/permcenter/settings/ShutDownPasswordFragment;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/permcenter/settings/ShutDownPasswordFragment;->h0(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic c0(Lcom/miui/permcenter/settings/ShutDownPasswordFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/permcenter/settings/ShutDownPasswordFragment;->g0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic d0(Lcom/miui/permcenter/settings/ShutDownPasswordFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/permcenter/settings/ShutDownPasswordFragment;->f0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private e0()V
    .locals 3

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/miui/permcenter/settings/ShutDownPasswordFragment;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120563

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f120562

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    new-instance v1, Ltc/j;

    invoke-direct {v1, p0}, Ltc/j;-><init>(Lcom/miui/permcenter/settings/ShutDownPasswordFragment;)V

    const v2, 0x7f120f7d

    invoke-virtual {v0, v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    new-instance v1, Ltc/k;

    invoke-direct {v1, p0}, Ltc/k;-><init>(Lcom/miui/permcenter/settings/ShutDownPasswordFragment;)V

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    new-instance v1, Ltc/l;

    invoke-direct {v1, p0}, Ltc/l;-><init>(Lcom/miui/permcenter/settings/ShutDownPasswordFragment;)V

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method private synthetic f0(Landroid/content/DialogInterface;I)V
    .locals 1

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "com.android.settings"

    const-string v0, "com.android.settings.SubSettings"

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, ":android:show_fragment"

    const-string v0, "com.android.settings.MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment"

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private synthetic g0(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/miui/permcenter/settings/ShutDownPasswordFragment;->b:Landroidx/preference/CheckBoxPreference;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method private synthetic h0(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/permcenter/settings/ShutDownPasswordFragment;->b:Landroidx/preference/CheckBoxPreference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method private synthetic i0(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    const-string v1, "ShutPasswordFragment"

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/permcenter/settings/ShutDownPasswordFragment;->d:Landroid/content/Context;

    invoke-static {p1}, Lx4/r1;->c(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "has not Set Lock Screen Password"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/miui/permcenter/settings/ShutDownPasswordFragment;->e0()V

    return v0

    :cond_0
    iget-object p1, p0, Lcom/miui/permcenter/settings/ShutDownPasswordFragment;->d:Landroid/content/Context;

    invoke-static {p1, p2}, Lx4/r1;->b(Landroid/content/Context;Z)V

    goto :goto_0

    :cond_1
    const-string p1, "close Lock Screen Password"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/permcenter/settings/ShutDownPasswordFragment;->d:Landroid/content/Context;

    invoke-static {p1, v0}, Lx4/r1;->b(Landroid/content/Context;Z)V

    :goto_0
    return p2
.end method

.method public static j0()Lcom/miui/permcenter/settings/ShutDownPasswordFragment;
    .locals 1

    new-instance v0, Lcom/miui/permcenter/settings/ShutDownPasswordFragment;

    invoke-direct {v0}, Lcom/miui/permcenter/settings/ShutDownPasswordFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    if-nez p1, :cond_0

    const/4 p1, -0x1

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/miui/permcenter/settings/ShutDownPasswordFragment;->b:Landroidx/preference/CheckBoxPreference;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/miui/permcenter/settings/ShutDownPasswordFragment;->d:Landroid/content/Context;

    invoke-static {p1, p2}, Lx4/r1;->b(Landroid/content/Context;Z)V

    :cond_0
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    const p1, 0x7f150064

    invoke-virtual {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->setPreferencesFromResource(ILjava/lang/String;)V

    const-string p1, "key_verify_password"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/miui/permcenter/settings/ShutDownPasswordFragment;->b:Landroidx/preference/CheckBoxPreference;

    iget-object p2, p0, Lcom/miui/permcenter/settings/ShutDownPasswordFragment;->f:Landroidx/preference/Preference$c;

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/permcenter/settings/ShutDownPasswordFragment;->d:Landroid/content/Context;

    const-string p1, "shut_down_password_line"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/miui/permcenter/settings/model/NoCardNoClickEffectPreference;

    iput-object p1, p0, Lcom/miui/permcenter/settings/ShutDownPasswordFragment;->e:Lcom/miui/permcenter/settings/model/NoCardNoClickEffectPreference;

    invoke-static {}, Lx4/y;->f()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    iget-object v0, p0, Lcom/miui/permcenter/settings/ShutDownPasswordFragment;->b:Landroidx/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/miui/permcenter/settings/ShutDownPasswordFragment;->d:Landroid/content/Context;

    invoke-static {v1}, Lx4/r1;->d(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

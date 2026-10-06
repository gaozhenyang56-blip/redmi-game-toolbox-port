.class public Lcom/miui/idprovider/ui/legacy/OAIDSettingsLegacy;
.super Lcom/miui/common/base/ui/MiuiXPreferenceFragment;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/idprovider/ui/legacy/OAIDSettingsLegacy$d;
    }
.end annotation


# instance fields
.field private b:Landroidx/preference/Preference;

.field private c:Lmiuix/preference/CommentPreference;

.field private d:Landroidx/preference/Preference;

.field private final e:Landroid/net/Uri;

.field private f:Landroid/database/ContentObserver;

.field private g:Lcom/miui/idprovider/ui/legacy/OAIDSettingsLegacy$d;

.field private h:I

.field private i:Landroid/widget/Button;

.field private j:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/base/ui/MiuiXPreferenceFragment;-><init>()V

    const-string v0, "allow_oaid_used"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/idprovider/ui/legacy/OAIDSettingsLegacy;->e:Landroid/net/Uri;

    return-void
.end method

.method static synthetic c0(Lcom/miui/idprovider/ui/legacy/OAIDSettingsLegacy;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/idprovider/ui/legacy/OAIDSettingsLegacy;->j0()V

    return-void
.end method

.method static synthetic d0(Lcom/miui/idprovider/ui/legacy/OAIDSettingsLegacy;I)I
    .locals 0

    iput p1, p0, Lcom/miui/idprovider/ui/legacy/OAIDSettingsLegacy;->h:I

    return p1
.end method

.method static synthetic e0(Lcom/miui/idprovider/ui/legacy/OAIDSettingsLegacy;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0

    iput-object p1, p0, Lcom/miui/idprovider/ui/legacy/OAIDSettingsLegacy;->i:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic f0(Lcom/miui/idprovider/ui/legacy/OAIDSettingsLegacy;)Lmiuix/preference/CommentPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/idprovider/ui/legacy/OAIDSettingsLegacy;->c:Lmiuix/preference/CommentPreference;

    return-object p0
.end method

.method static synthetic g0(Lcom/miui/idprovider/ui/legacy/OAIDSettingsLegacy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/idprovider/ui/legacy/OAIDSettingsLegacy;->k0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic h0(Lcom/miui/idprovider/ui/legacy/OAIDSettingsLegacy;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/idprovider/ui/legacy/OAIDSettingsLegacy;->i0()V

    return-void
.end method

.method private i0()V
    .locals 7

    iget-object v0, p0, Lcom/miui/idprovider/ui/legacy/OAIDSettingsLegacy;->i:Landroid/widget/Button;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/miui/idprovider/ui/legacy/OAIDSettingsLegacy;->h:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/miui/idprovider/ui/legacy/OAIDSettingsLegacy;->h:I

    const/4 v3, 0x0

    if-gtz v1, :cond_1

    const v1, 0x7f121588

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/miui/idprovider/ui/legacy/OAIDSettingsLegacy;->i:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    iput v3, p0, Lcom/miui/idprovider/ui/legacy/OAIDSettingsLegacy;->h:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v4, 0x7f121589

    new-array v5, v2, [Ljava/lang/Object;

    iget v6, p0, Lcom/miui/idprovider/ui/legacy/OAIDSettingsLegacy;->h:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/idprovider/ui/legacy/OAIDSettingsLegacy;->g:Lcom/miui/idprovider/ui/legacy/OAIDSettingsLegacy$d;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/miui/idprovider/ui/legacy/OAIDSettingsLegacy;->g:Lcom/miui/idprovider/ui/legacy/OAIDSettingsLegacy$d;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void
.end method

.method private j0()V
    .locals 7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ly4/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/idprovider/ui/legacy/OAIDSettingsLegacy;->c:Lmiuix/preference/CommentPreference;

    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->setSelectable(Z)V

    iget-object v1, p0, Lcom/miui/idprovider/ui/legacy/OAIDSettingsLegacy;->c:Lmiuix/preference/CommentPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f120f44

    new-array v6, v3, [Ljava/lang/Object;

    aput-object v0, v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmiuix/preference/CommentPreference;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/idprovider/ui/legacy/OAIDSettingsLegacy;->c:Lmiuix/preference/CommentPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSelectable(Z)V

    iget-object v0, p0, Lcom/miui/idprovider/ui/legacy/OAIDSettingsLegacy;->c:Lmiuix/preference/CommentPreference;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lmiuix/preference/CommentPreference;->setText(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/miui/idprovider/ui/legacy/OAIDSettingsLegacy;->c:Lmiuix/preference/CommentPreference;

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method private k0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0x3e7

    if-ne p1, p2, :cond_0

    invoke-direct {p0}, Lcom/miui/idprovider/ui/legacy/OAIDSettingsLegacy;->j0()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lmiuix/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/app/AppCompatActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AppCompatActivity;->setExtraHorizontalPaddingEnable(Z)V

    const p1, 0x7f150040

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->addPreferencesFromResource(I)V

    const/4 p1, 0x5

    iput p1, p0, Lcom/miui/idprovider/ui/legacy/OAIDSettingsLegacy;->h:I

    const-string p1, "restore_oaid"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/idprovider/ui/legacy/OAIDSettingsLegacy;->b:Landroidx/preference/Preference;

    const-string p1, "oaid_string"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/CommentPreference;

    iput-object p1, p0, Lcom/miui/idprovider/ui/legacy/OAIDSettingsLegacy;->c:Lmiuix/preference/CommentPreference;

    const-string p1, "oaid_apps_manage"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/idprovider/ui/legacy/OAIDSettingsLegacy;->d:Landroidx/preference/Preference;

    iget-object p1, p0, Lcom/miui/idprovider/ui/legacy/OAIDSettingsLegacy;->b:Landroidx/preference/Preference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object p1, p0, Lcom/miui/idprovider/ui/legacy/OAIDSettingsLegacy;->d:Landroidx/preference/Preference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    new-instance p1, Lcom/miui/idprovider/ui/legacy/OAIDSettingsLegacy$a;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, v1}, Lcom/miui/idprovider/ui/legacy/OAIDSettingsLegacy$a;-><init>(Lcom/miui/idprovider/ui/legacy/OAIDSettingsLegacy;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/miui/idprovider/ui/legacy/OAIDSettingsLegacy;->f:Landroid/database/ContentObserver;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/idprovider/ui/legacy/OAIDSettingsLegacy;->e:Landroid/net/Uri;

    iget-object v2, p0, Lcom/miui/idprovider/ui/legacy/OAIDSettingsLegacy;->f:Landroid/database/ContentObserver;

    invoke-virtual {p1, v1, v0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/miui/idprovider/ui/legacy/OAIDSettingsLegacy;->j0()V

    new-instance p1, Landroid/content/Intent;

    const-string v0, "miui.intent.action.OAID_APPS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/idprovider/ui/legacy/OAIDSettingsLegacy;->j:Landroid/content/Intent;

    const-string v0, "com.miui.securitycenter"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/miui/idprovider/ui/legacy/OAIDSettingsLegacy;->d:Landroidx/preference/Preference;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/idprovider/ui/legacy/OAIDSettingsLegacy;->f:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/miui/idprovider/ui/legacy/OAIDSettingsLegacy;->g:Lcom/miui/idprovider/ui/legacy/OAIDSettingsLegacy$d;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 6

    iget-object v0, p0, Lcom/miui/idprovider/ui/legacy/OAIDSettingsLegacy;->b:Landroidx/preference/Preference;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/miui/idprovider/ui/legacy/OAIDSettingsLegacy;->c:Lmiuix/preference/CommentPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    new-instance p1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f130023

    invoke-direct {p1, v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v0, 0x7f12158a

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f121587

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f121588

    new-instance v2, Lcom/miui/idprovider/ui/legacy/OAIDSettingsLegacy$c;

    invoke-direct {v2, p0}, Lcom/miui/idprovider/ui/legacy/OAIDSettingsLegacy$c;-><init>(Lcom/miui/idprovider/ui/legacy/OAIDSettingsLegacy;)V

    invoke-virtual {p1, v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 v0, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/miui/idprovider/ui/legacy/OAIDSettingsLegacy$b;

    invoke-direct {v0, p0}, Lcom/miui/idprovider/ui/legacy/OAIDSettingsLegacy$b;-><init>(Lcom/miui/idprovider/ui/legacy/OAIDSettingsLegacy;)V

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    const/4 v0, -0x2

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/idprovider/ui/legacy/OAIDSettingsLegacy;->i:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lcom/miui/idprovider/ui/legacy/OAIDSettingsLegacy;->g:Lcom/miui/idprovider/ui/legacy/OAIDSettingsLegacy$d;

    if-nez p1, :cond_0

    new-instance p1, Lcom/miui/idprovider/ui/legacy/OAIDSettingsLegacy$d;

    invoke-direct {p1, p0}, Lcom/miui/idprovider/ui/legacy/OAIDSettingsLegacy$d;-><init>(Lcom/miui/idprovider/ui/legacy/OAIDSettingsLegacy;)V

    iput-object p1, p0, Lcom/miui/idprovider/ui/legacy/OAIDSettingsLegacy;->g:Lcom/miui/idprovider/ui/legacy/OAIDSettingsLegacy$d;

    :cond_0
    iget-object p1, p0, Lcom/miui/idprovider/ui/legacy/OAIDSettingsLegacy;->i:Landroid/widget/Button;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f121589

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget v5, p0, Lcom/miui/idprovider/ui/legacy/OAIDSettingsLegacy;->h:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/idprovider/ui/legacy/OAIDSettingsLegacy;->g:Lcom/miui/idprovider/ui/legacy/OAIDSettingsLegacy$d;

    const-wide/16 v4, 0x3e8

    invoke-virtual {p1, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/idprovider/ui/legacy/OAIDSettingsLegacy;->d:Landroidx/preference/Preference;

    if-ne v0, p1, :cond_2

    iget-object p1, p0, Lcom/miui/idprovider/ui/legacy/OAIDSettingsLegacy;->j:Landroid/content/Intent;

    const/16 v0, 0x3e7

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_2
    :goto_0
    return v1
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    invoke-virtual {p0}, Lmiuix/preference/PreferenceFragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f12065f

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    :cond_0
    return-void
.end method

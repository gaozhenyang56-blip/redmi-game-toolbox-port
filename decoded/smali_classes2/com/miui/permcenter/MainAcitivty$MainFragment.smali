.class public Lcom/miui/permcenter/MainAcitivty$MainFragment;
.super Lmiuix/preference/PreferenceFragment;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/permcenter/MainAcitivty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MainFragment"
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroidx/preference/Preference;

.field private c:Landroidx/preference/Preference;

.field private d:Landroidx/preference/Preference;

.field private e:Landroidx/preference/Preference;

.field private f:Landroidx/preference/Preference;

.field private g:Landroidx/preference/Preference;

.field private h:Landroidx/preference/Preference;

.field private i:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiuix/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 3

    const p1, 0x7f150058

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/permcenter/MainAcitivty$MainFragment;->a:Landroid/app/Activity;

    const-string p1, "main_page_category"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/PreferenceCategory;

    const-string p2, "handle_item_auto_start"

    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/permcenter/MainAcitivty$MainFragment;->b:Landroidx/preference/Preference;

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    const v0, 0x7f12008a

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setTitle(I)V

    :cond_0
    iget-object p2, p0, Lcom/miui/permcenter/MainAcitivty$MainFragment;->b:Landroidx/preference/Preference;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/permcenter/MainAcitivty$MainFragment;->a:Landroid/app/Activity;

    const-class v2, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    sget-boolean p2, Lcom/miui/permcenter/o;->y:Z

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    sget-boolean p2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez p2, :cond_1

    const-string p2, "handle_item_wake_path"

    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/permcenter/MainAcitivty$MainFragment;->c:Landroidx/preference/Preference;

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p2, p0, Lcom/miui/permcenter/MainAcitivty$MainFragment;->c:Landroidx/preference/Preference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/permcenter/wakepath/WakePathManagerActivity;->d0(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    :cond_1
    const-string p2, "handle_item_permissions"

    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/permcenter/MainAcitivty$MainFragment;->d:Landroidx/preference/Preference;

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v1, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MANAGE_PERMISSIONS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const v1, 0x7f120091

    invoke-virtual {p2, v1}, Landroidx/preference/Preference;->setTitle(I)V

    iget-object p2, p0, Lcom/miui/permcenter/MainAcitivty$MainFragment;->d:Landroidx/preference/Preference;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "miui.intent.action.PRIVACY_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "FromMainActivity"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    :goto_0
    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    const-string p2, "handle_item_other_permissions"

    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/permcenter/MainAcitivty$MainFragment;->e:Landroidx/preference/Preference;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/permcenter/MainAcitivty$MainFragment;->a:Landroid/app/Activity;

    const-class v2, Lcom/miui/permcenter/permissions/AppPermissionsTabActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, ":miui:starting_window_label"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    const-string p2, "handle_item_adb"

    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/permcenter/MainAcitivty$MainFragment;->f:Landroidx/preference/Preference;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/permcenter/MainAcitivty$MainFragment;->a:Landroid/app/Activity;

    const-class v2, Lcom/miui/permcenter/install/PackageManagerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    const-string p2, "handle_item_root"

    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/permcenter/MainAcitivty$MainFragment;->g:Landroidx/preference/Preference;

    invoke-virtual {p2, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    const-string p2, "handle_item_install"

    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/permcenter/MainAcitivty$MainFragment;->h:Landroidx/preference/Preference;

    iget-object p2, p0, Lcom/miui/permcenter/MainAcitivty$MainFragment;->a:Landroid/app/Activity;

    invoke-static {p2}, Lx4/t;->Q(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/miui/permcenter/MainAcitivty$MainFragment;->h:Landroidx/preference/Preference;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_1

    :cond_3
    new-instance p2, Landroid/content/Intent;

    const-string v0, "com.miui.packageinstaller.RISK_AUTH"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/permcenter/MainAcitivty$MainFragment;->a:Landroid/app/Activity;

    invoke-static {v0, p2}, Leg/i;->b(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/permcenter/MainAcitivty$MainFragment;->h:Landroidx/preference/Preference;

    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    goto :goto_1

    :cond_4
    iget-object p2, p0, Lcom/miui/permcenter/MainAcitivty$MainFragment;->h:Landroidx/preference/Preference;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/permcenter/MainAcitivty$MainFragment;->a:Landroid/app/Activity;

    const-class v2, Lcom/miui/permcenter/install/RiskAppAuthActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    :goto_1
    sget-boolean p2, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    if-nez p2, :cond_5

    sget-boolean p2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez p2, :cond_5

    invoke-static {}, Lx4/z1;->r()Z

    move-result p2

    if-nez p2, :cond_6

    :cond_5
    if-eqz p1, :cond_6

    iget-object p2, p0, Lcom/miui/permcenter/MainAcitivty$MainFragment;->g:Landroidx/preference/Preference;

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_6
    invoke-static {}, Lof/h;->b()Z

    move-result p2

    if-nez p2, :cond_a

    invoke-static {}, Lof/h;->i()Z

    move-result p2

    if-eqz p2, :cond_7

    goto :goto_4

    :cond_7
    invoke-static {}, Lof/h;->a()Ljava/lang/String;

    move-result-object p2

    const-string v0, "unlocked"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_9

    invoke-static {}, Lof/h;->h()Z

    move-result p2

    if-nez p2, :cond_8

    goto :goto_2

    :cond_8
    iget-object p2, p0, Lcom/miui/permcenter/MainAcitivty$MainFragment;->g:Landroidx/preference/Preference;

    const v0, 0x7f120096

    goto :goto_3

    :cond_9
    :goto_2
    iget-object p2, p0, Lcom/miui/permcenter/MainAcitivty$MainFragment;->g:Landroidx/preference/Preference;

    const v0, 0x7f120094

    :goto_3
    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setTitle(I)V

    :cond_a
    :goto_4
    sget-boolean p2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez p2, :cond_b

    if-eqz p1, :cond_b

    iget-object p2, p0, Lcom/miui/permcenter/MainAcitivty$MainFragment;->e:Landroidx/preference/Preference;

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_b
    return-void
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 4

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "open_debug"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget p1, p0, Lcom/miui/permcenter/MainAcitivty$MainFragment;->i:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/miui/permcenter/MainAcitivty$MainFragment;->i:I

    const/4 v0, 0x5

    if-le p1, v0, :cond_0

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/permcenter/MainAcitivty$MainFragment;->a:Landroid/app/Activity;

    const-class v2, Lcom/miui/permcenter/DebugSettingsAcitivty;

    invoke-direct {p1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return v1

    :cond_1
    const-string v0, "handle_item_root"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    new-instance p1, Landroid/content/ComponentName;

    const-string v2, "com.android.updater"

    const-string v3, "com.miui.permcenter.root.RootAcquiredActivity"

    invoke-direct {p1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lof/h;->b()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {}, Lof/h;->i()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    const/16 v2, 0x1f

    const-string v3, "ro.product.first_api_level"

    invoke-static {v3, v2}, Lx4/v1;->b(Ljava/lang/String;I)I

    move-result v2

    const/16 v3, 0x1e

    if-gt v2, v3, :cond_6

    const-string v2, "sunstone"

    const-string v3, "moonstone"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lx4/a0;->s([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {}, Lof/h;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "unlocked"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {}, Lof/h;->h()Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    new-instance p1, Landroid/content/Intent;

    const-string v2, "miui.intent.action.PERMISSION_CENTER_SECURITY_WEB_VIEW"

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    :goto_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-object p1, v2

    goto :goto_3

    :cond_6
    :goto_1
    new-instance p1, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/miui/permcenter/MainAcitivty$MainFragment;->a:Landroid/app/Activity;

    invoke-direct {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f080d9d

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setIcon(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f120ed8

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f120ed7

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f120476

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->show()V

    return v1

    :cond_7
    :goto_2
    new-instance p1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/miui/permcenter/MainAcitivty$MainFragment;->a:Landroid/app/Activity;

    const-class v3, Lcom/miui/permcenter/root/RootManagementActivity;

    invoke-direct {p1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_3
    :try_start_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    const-string v2, "MainAcitivty"

    const-string v3, "ActivityNotFoundException"

    invoke-static {v2, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p1, p0, Lcom/miui/permcenter/MainAcitivty$MainFragment;->a:Landroid/app/Activity;

    const v2, 0x7f120f70

    invoke-static {p1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_4
    return v1

    :cond_8
    return v0
.end method

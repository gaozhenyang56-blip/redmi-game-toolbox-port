.class public Lcom/miui/appmanager/fragment/AMSettingsFragment;
.super Lcom/miui/common/base/ui/MiuiXPreferenceFragment;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$c;
.implements Landroidx/preference/Preference$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/appmanager/fragment/AMSettingsFragment$a;,
        Lcom/miui/appmanager/fragment/AMSettingsFragment$b;,
        Lcom/miui/appmanager/fragment/AMSettingsFragment$c;
    }
.end annotation


# instance fields
.field private b:Le3/d;

.field private c:Landroidx/preference/Preference;

.field private d:Lcom/miui/appmanager/fragment/AMSettingsFragment$a;

.field private e:Landroid/content/Intent;

.field private f:Landroid/content/Intent;

.field private g:Lcom/miui/appmanager/fragment/AMSettingsFragment$b;

.field private h:Lmiuix/appcompat/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/common/base/ui/MiuiXPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic c0(Lcom/miui/appmanager/fragment/AMSettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/appmanager/fragment/AMSettingsFragment;->h0()V

    return-void
.end method

.method static synthetic d0(Lcom/miui/appmanager/fragment/AMSettingsFragment;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/appmanager/fragment/AMSettingsFragment;->g0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic e0(Lcom/miui/appmanager/fragment/AMSettingsFragment;)Landroidx/preference/Preference;
    .locals 0

    iget-object p0, p0, Lcom/miui/appmanager/fragment/AMSettingsFragment;->c:Landroidx/preference/Preference;

    return-object p0
.end method

.method private f0(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.thirdappassistant.action.EXCEPTION_RESULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.miui.thirdappassistant"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1, v0}, Lx4/f1;->F(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private g0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6

    :try_start_0
    const-string v0, "android.os.ServiceManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getService"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-array v4, v2, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-static {v0, v1, v3, v4}, Lbh/f;->h(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IBinder;

    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    const-string v0, "asInterface"

    new-array v1, v2, [Ljava/lang/Class;

    const-class v3, Landroid/os/IBinder;

    aput-object v3, v1, v5

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-static {p2, v0, v1, v2}, Lbh/f;->h(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "AMSettingsFragment"

    const-string v0, "reflect error while get package manager service"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private h0()V
    .locals 3

    iget-object v0, p0, Lcom/miui/appmanager/fragment/AMSettingsFragment;->g:Lcom/miui/appmanager/fragment/AMSettingsFragment$b;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    new-instance v0, Lcom/miui/appmanager/fragment/AMSettingsFragment$b;

    invoke-direct {v0, p0}, Lcom/miui/appmanager/fragment/AMSettingsFragment$b;-><init>(Lcom/miui/appmanager/fragment/AMSettingsFragment;)V

    iput-object v0, p0, Lcom/miui/appmanager/fragment/AMSettingsFragment;->g:Lcom/miui/appmanager/fragment/AMSettingsFragment$b;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private i0()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/miui/appmanager/fragment/AMSettingsFragment;->h:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f1201ee

    invoke-virtual {v1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    const v0, 0x7f1201ed

    invoke-virtual {v1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    const v0, 0x7f1201ec

    new-instance v2, Lcom/miui/appmanager/fragment/AMSettingsFragment$c;

    invoke-direct {v2, p0}, Lcom/miui/appmanager/fragment/AMSettingsFragment$c;-><init>(Lcom/miui/appmanager/fragment/AMSettingsFragment;)V

    invoke-virtual {v1, v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    const v0, 0x7f1201bf

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/appmanager/fragment/AMSettingsFragment;->h:Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 3

    const p1, 0x7f150014

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->addPreferencesFromResource(I)V

    new-instance p1, Le3/d;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Le3/d;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/miui/appmanager/fragment/AMSettingsFragment;->b:Le3/d;

    const-string p1, "am_update_remind"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iget-object p2, p0, Lcom/miui/appmanager/fragment/AMSettingsFragment;->b:Le3/d;

    invoke-virtual {p2}, Le3/d;->g()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    const-string p1, "key_open_ads"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iget-object p2, p0, Lcom/miui/appmanager/fragment/AMSettingsFragment;->b:Le3/d;

    invoke-virtual {p2}, Le3/d;->d()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    const-string p2, "key_anomaly_analysis"

    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Landroidx/preference/CheckBoxPreference;

    const-string v0, "key_anomaly_analysis_result"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    const-string v1, "key_setting_category"

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/appmanager/AppManageUtils;->g0(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/miui/appmanager/fragment/AMSettingsFragment;->f0(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    invoke-virtual {v1, p2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/miui/appmanager/fragment/AMSettingsFragment;->b:Le3/d;

    invoke-virtual {v2}, Le3/d;->e()Z

    move-result v2

    invoke-virtual {p2, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-virtual {p2, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1, p2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :goto_0
    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :goto_1
    invoke-static {}, Lx4/t;->p()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {v1, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_2
    const-string p1, "key_default_app_setting"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/miui/appmanager/AppManageUtils;->w(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v1, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :goto_2
    const-string p1, "shortcut_manager_setting"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/appmanager/fragment/AMSettingsFragment;->c:Landroidx/preference/Preference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    new-instance p1, Lcom/miui/appmanager/fragment/AMSettingsFragment$a;

    invoke-direct {p1, p0}, Lcom/miui/appmanager/fragment/AMSettingsFragment$a;-><init>(Lcom/miui/appmanager/fragment/AMSettingsFragment;)V

    iput-object p1, p0, Lcom/miui/appmanager/fragment/AMSettingsFragment;->d:Lcom/miui/appmanager/fragment/AMSettingsFragment$a;

    sget-object p2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, p2, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/appmanager/AppManageUtils;->M(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/appmanager/fragment/AMSettingsFragment;->e:Landroid/content/Intent;

    const-string p1, "key_system_app_setting"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/appmanager/fragment/AMSettingsFragment;->e:Landroid/content/Intent;

    if-eqz p2, :cond_4

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    goto :goto_3

    :cond_4
    invoke-virtual {v1, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :goto_3
    const-string p1, "key_reset_app_preferences"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/appmanager/AppManageUtils;->B(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/appmanager/fragment/AMSettingsFragment;->f:Landroid/content/Intent;

    const-string p1, "key_deleted_system_app"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/appmanager/fragment/AMSettingsFragment;->f:Landroid/content/Intent;

    if-eqz p2, :cond_5

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    goto :goto_4

    :cond_5
    invoke-virtual {v1, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :goto_4
    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    iget-object v0, p0, Lcom/miui/appmanager/fragment/AMSettingsFragment;->d:Lcom/miui/appmanager/fragment/AMSettingsFragment$a;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    iget-object v0, p0, Lcom/miui/appmanager/fragment/AMSettingsFragment;->g:Lcom/miui/appmanager/fragment/AMSettingsFragment$b;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_1
    iget-object v0, p0, Lcom/miui/appmanager/fragment/AMSettingsFragment;->h:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    :cond_2
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const-string v0, "am_update_remind"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/miui/appmanager/fragment/AMSettingsFragment;->b:Le3/d;

    invoke-virtual {p1, p2}, Le3/d;->m(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object p2, Le3/e;->a:Landroid/net/Uri;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_0
    return v1

    :cond_1
    const-string v0, "key_open_ads"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/miui/appmanager/fragment/AMSettingsFragment;->b:Le3/d;

    invoke-virtual {p1, p2}, Le3/d;->h(Z)V

    return v1

    :cond_2
    const-string v0, "key_anomaly_analysis"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/appmanager/fragment/AMSettingsFragment;->b:Le3/d;

    invoke-virtual {p1, p2}, Le3/d;->i(Z)V

    return v1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 3

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "shortcut_manager_setting"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.home.settings.action.ALL_HIDE_APP_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/MiuiXPreferenceFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_reset_app_preferences"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/miui/appmanager/fragment/AMSettingsFragment;->i0()V

    :cond_2
    :goto_0
    invoke-super {p0, p1}, Lmiuix/preference/PreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method

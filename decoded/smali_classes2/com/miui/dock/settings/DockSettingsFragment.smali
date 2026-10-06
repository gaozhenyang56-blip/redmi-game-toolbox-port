.class public Lcom/miui/dock/settings/DockSettingsFragment;
.super Lmiuix/preference/PreferenceFragment;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$c;
.implements Landroidx/preference/Preference$d;
.implements Landroidx/loader/app/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/dock/settings/DockSettingsFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiuix/preference/PreferenceFragment;",
        "Landroidx/preference/Preference$c;",
        "Landroidx/preference/Preference$d;",
        "Landroidx/loader/app/a$a<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final m:Ljava/lang/CharSequence;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lcom/miui/dock/settings/DockSettingsFragment$a;

.field private c:Landroidx/preference/PreferenceCategory;

.field private d:Landroidx/preference/PreferenceCategory;

.field private e:Landroidx/preference/CheckBoxPreference;

.field private f:Landroidx/preference/CheckBoxPreference;

.field private g:Landroidx/preference/CheckBoxPreference;

.field private h:Landroidx/preference/CheckBoxPreference;

.field private i:Lmiuix/preference/TextPreference;

.field private j:Lmiuix/preference/TextPreference;

.field private k:Lmiuix/preference/TextPreference;

.field private l:Lmiuix/preference/TextPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "preference_category_key_settings"

    sput-object v0, Lcom/miui/dock/settings/DockSettingsFragment;->m:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiuix/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method private b0()V
    .locals 2

    iget-object v0, p0, Lcom/miui/dock/settings/DockSettingsFragment;->e:Landroidx/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/miui/dock/settings/DockSettingsFragment;->a:Landroid/app/Activity;

    invoke-static {v1}, Li8/c;->D(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/dock/settings/DockSettingsFragment;->f:Landroidx/preference/CheckBoxPreference;

    invoke-static {}, Lm6/a;->w()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/dock/settings/DockSettingsFragment;->g:Landroidx/preference/CheckBoxPreference;

    invoke-static {}, Lx5/p;->l0()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/dock/settings/DockSettingsFragment;->h:Landroidx/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/miui/dock/settings/DockSettingsFragment;->a:Landroid/app/Activity;

    invoke-static {v1}, Lk5/a;->d(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-direct {p0}, Lcom/miui/dock/settings/DockSettingsFragment;->e0()V

    iget-object v0, p0, Lcom/miui/dock/settings/DockSettingsFragment;->a:Landroid/app/Activity;

    invoke-static {v0}, Lm6/a;->e(Landroid/content/Context;)Lm6/a;

    move-result-object v0

    invoke-virtual {v0}, Lm6/a;->x()Z

    move-result v0

    iget-object v1, p0, Lcom/miui/dock/settings/DockSettingsFragment;->f:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method private c0()V
    .locals 4

    const-string v0, "DockSettingsFragment"

    iget-object v1, p0, Lcom/miui/dock/settings/DockSettingsFragment;->a:Landroid/app/Activity;

    invoke-static {v1}, Lk5/a;->d(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    const-string v2, "pref_show_sidebar_drag_tips"

    invoke-static {v2, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.miui.dock.SHOW_DOCK_TIPS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "event_dock_tips_type"

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/miui/dock/settings/DockSettingsFragment;->a:Landroid/app/Activity;

    const-string v3, "com.miui.dock.permission.DOCK_EVENT"

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const-string v1, "showDockTips : send Broadcast"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showDockTips fail : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private d0()V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/dock/settings/DockSettingsFragment;->a:Landroid/app/Activity;

    const-class v2, Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/miui/dock/settings/DockSettingsFragment;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private e0()V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Li8/c;->B(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->y0(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->D0(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/miui/dock/settings/DockSettingsFragment;->i:Lmiuix/preference/TextPreference;

    iget-object v2, p0, Lcom/miui/dock/settings/DockSettingsFragment;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const v4, 0x7f100145

    invoke-virtual {v2, v4, v0, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/loader/app/a;->c(Landroidx/lifecycle/v;)Landroidx/loader/app/a;

    move-result-object v0

    const v1, 0x33916

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroidx/loader/app/a;->e(ILandroid/os/Bundle;Landroidx/loader/app/a$a;)Lq0/c;

    return-void
.end method


# virtual methods
.method public F(Lq0/c;)V
    .locals 0
    .param p1    # Lq0/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq0/c<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public bridge synthetic T(Lq0/c;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Lq0/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/miui/dock/settings/DockSettingsFragment;->a0(Lq0/c;Ljava/lang/Integer;)V

    return-void
.end method

.method public a0(Lq0/c;Ljava/lang/Integer;)V
    .locals 4
    .param p1    # Lq0/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq0/c<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    invoke-static {p0}, Landroidx/loader/app/a;->c(Landroidx/lifecycle/v;)Landroidx/loader/app/a;

    move-result-object p1

    const v0, 0x33916

    invoke-virtual {p1, v0}, Landroidx/loader/app/a;->a(I)V

    iget-object p1, p0, Lcom/miui/dock/settings/DockSettingsFragment;->j:Lmiuix/preference/TextPreference;

    iget-object v0, p0, Lcom/miui/dock/settings/DockSettingsFragment;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const p2, 0x7f100145

    invoke-virtual {v0, p2, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Lq0/c;
    .locals 0
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Lq0/c<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/miui/dock/settings/DockSettingsFragment$a;

    invoke-direct {p1, p0}, Lcom/miui/dock/settings/DockSettingsFragment$a;-><init>(Lcom/miui/dock/settings/DockSettingsFragment;)V

    iput-object p1, p0, Lcom/miui/dock/settings/DockSettingsFragment;->b:Lcom/miui/dock/settings/DockSettingsFragment$a;

    return-object p1
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/dock/settings/DockSettingsFragment;->a:Landroid/app/Activity;

    invoke-static {p1}, Lc7/c;->a(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const p1, 0x7f150033

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->addPreferencesFromResource(I)V

    sget-object p1, Lcom/miui/dock/settings/DockSettingsFragment;->m:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/miui/dock/settings/DockSettingsFragment;->c:Landroidx/preference/PreferenceCategory;

    const-string p1, "preference_key_gtb_switch"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/miui/dock/settings/DockSettingsFragment;->f:Landroidx/preference/CheckBoxPreference;

    const-string p1, "preference_key_vtb_switch"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/miui/dock/settings/DockSettingsFragment;->e:Landroidx/preference/CheckBoxPreference;

    const-string p1, "preference_key_conversation_switch"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/miui/dock/settings/DockSettingsFragment;->g:Landroidx/preference/CheckBoxPreference;

    const-string p1, "preference_key_miui_dock_switch"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/miui/dock/settings/DockSettingsFragment;->h:Landroidx/preference/CheckBoxPreference;

    const-string p1, "gd_setting_group_custom_settings"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/miui/dock/settings/DockSettingsFragment;->d:Landroidx/preference/PreferenceCategory;

    const-string p1, "preference_key_vtb_apps_manage"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/TextPreference;

    iput-object p1, p0, Lcom/miui/dock/settings/DockSettingsFragment;->i:Lmiuix/preference/TextPreference;

    const-string p1, "preference_key_gtb_apps_manage"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/TextPreference;

    iput-object p1, p0, Lcom/miui/dock/settings/DockSettingsFragment;->j:Lmiuix/preference/TextPreference;

    const-string p1, "preference_key_cb_privacy_camera"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/TextPreference;

    iput-object p1, p0, Lcom/miui/dock/settings/DockSettingsFragment;->l:Lmiuix/preference/TextPreference;

    const-string p1, "preference_key_cb_voice_print"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/TextPreference;

    iput-object p1, p0, Lcom/miui/dock/settings/DockSettingsFragment;->k:Lmiuix/preference/TextPreference;

    invoke-static {}, Lk6/d;->c()Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_2

    invoke-static {}, Lk6/d;->e()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Lx5/p;->H0()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lx5/b;->f()Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/miui/dock/settings/DockSettingsFragment;->d:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_2
    invoke-static {}, Lk6/d;->c()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/miui/dock/settings/DockSettingsFragment;->c:Landroidx/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/miui/dock/settings/DockSettingsFragment;->f:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object p1, p0, Lcom/miui/dock/settings/DockSettingsFragment;->d:Landroidx/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/miui/dock/settings/DockSettingsFragment;->j:Lmiuix/preference/TextPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_3
    invoke-static {}, Lk6/d;->e()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/miui/dock/settings/DockSettingsFragment;->c:Landroidx/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/miui/dock/settings/DockSettingsFragment;->e:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object p1, p0, Lcom/miui/dock/settings/DockSettingsFragment;->d:Landroidx/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/miui/dock/settings/DockSettingsFragment;->i:Lmiuix/preference/TextPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_4
    invoke-static {}, Lx5/p;->H0()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/miui/dock/settings/DockSettingsFragment;->g:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p1, p0, Lcom/miui/dock/settings/DockSettingsFragment;->k:Lmiuix/preference/TextPreference;

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p1, p0, Lcom/miui/dock/settings/DockSettingsFragment;->l:Lmiuix/preference/TextPreference;

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    :cond_5
    invoke-static {}, Lx5/b;->f()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/miui/dock/settings/DockSettingsFragment;->k:Lmiuix/preference/TextPreference;

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_6
    iget-object p1, p0, Lcom/miui/dock/settings/DockSettingsFragment;->l:Lmiuix/preference/TextPreference;

    invoke-static {}, Lw5/f;->a0()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_0
    iget-object p1, p0, Lcom/miui/dock/settings/DockSettingsFragment;->e:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object p1, p0, Lcom/miui/dock/settings/DockSettingsFragment;->f:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object p1, p0, Lcom/miui/dock/settings/DockSettingsFragment;->g:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object p1, p0, Lcom/miui/dock/settings/DockSettingsFragment;->h:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object p1, p0, Lcom/miui/dock/settings/DockSettingsFragment;->i:Lmiuix/preference/TextPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object p1, p0, Lcom/miui/dock/settings/DockSettingsFragment;->j:Lmiuix/preference/TextPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object p1, p0, Lcom/miui/dock/settings/DockSettingsFragment;->k:Lmiuix/preference/TextPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object p1, p0, Lcom/miui/dock/settings/DockSettingsFragment;->l:Lmiuix/preference/TextPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    sget-boolean p1, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/miui/dock/settings/DockSettingsFragment;->h:Landroidx/preference/CheckBoxPreference;

    goto :goto_1

    :cond_7
    iget-object p1, p0, Lcom/miui/dock/settings/DockSettingsFragment;->h:Landroidx/preference/CheckBoxPreference;

    invoke-static {}, Lc5/a;->a()Z

    move-result p2

    :goto_1
    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p1, p0, Lcom/miui/dock/settings/DockSettingsFragment;->g:Landroidx/preference/CheckBoxPreference;

    invoke-static {}, Lx5/p;->z0()Z

    move-result p2

    if-eqz p2, :cond_8

    const p2, 0x7f120599

    goto :goto_2

    :cond_8
    const p2, 0x7f120b33

    :goto_2
    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setTitle(I)V

    invoke-direct {p0}, Lcom/miui/dock/settings/DockSettingsFragment;->b0()V

    invoke-direct {p0}, Lcom/miui/dock/settings/DockSettingsFragment;->c0()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p2, Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceChange: tagValue="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DockSettingsFragment"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v2, "preference_key_gtb_switch"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x3

    goto :goto_1

    :sswitch_1
    const-string v2, "preference_key_conversation_switch"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x2

    goto :goto_1

    :sswitch_2
    const-string v2, "preference_key_miui_dock_switch"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    move v0, v3

    goto :goto_1

    :sswitch_3
    const-string v2, "preference_key_vtb_switch"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    move v0, v1

    :goto_1
    packed-switch v0, :pswitch_data_0

    return v1

    :pswitch_0
    const-string p1, "621.3.3.1.17211"

    invoke-static {p1, p2}, Ll5/b;->j(Ljava/lang/String;Z)V

    invoke-static {p2}, Lm6/a;->h0(Z)V

    iget-object p1, p0, Lcom/miui/dock/settings/DockSettingsFragment;->f:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    if-eqz p2, :cond_5

    invoke-direct {p0}, Lcom/miui/dock/settings/DockSettingsFragment;->d0()V

    :cond_5
    return v3

    :pswitch_1
    const-string p1, "621.3.3.1.17214"

    invoke-static {p1, p2}, Ll5/b;->j(Ljava/lang/String;Z)V

    invoke-static {p2}, Lx5/p;->r1(Z)V

    iget-object p1, p0, Lcom/miui/dock/settings/DockSettingsFragment;->a:Landroid/app/Activity;

    if-eqz p2, :cond_6

    invoke-static {p1}, Lcom/miui/gamebooster/beauty/BeautyService;->h0(Landroid/content/Context;)V

    goto :goto_2

    :cond_6
    invoke-static {p1}, Lcom/miui/gamebooster/beauty/BeautyService;->i0(Landroid/content/Context;)V

    :goto_2
    return v3

    :pswitch_2
    const-string p1, "621.3.3.1.17210"

    invoke-static {p1, p2}, Ll5/b;->j(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/miui/dock/settings/DockSettingsFragment;->a:Landroid/app/Activity;

    invoke-static {p1, p2}, Lk5/a;->C(Landroid/content/Context;Z)V

    invoke-static {p2}, Lk5/a;->D(Z)V

    if-eqz p2, :cond_8

    invoke-static {}, La8/z;->d()Z

    move-result p1

    if-nez p1, :cond_7

    invoke-static {}, Lk5/a;->f()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-static {v3}, Lk5/a;->x(Z)V

    :cond_7
    iget-object p1, p0, Lcom/miui/dock/settings/DockSettingsFragment;->a:Landroid/app/Activity;

    invoke-static {p1}, Ld5/e;->b(Landroid/content/Context;)V

    :cond_8
    return v3

    :pswitch_3
    const-string p1, "621.3.3.1.17213"

    invoke-static {p1, p2}, Ll5/b;->j(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/miui/dock/settings/DockSettingsFragment;->a:Landroid/app/Activity;

    invoke-static {p1, p2}, Li8/c;->H0(Landroid/content/Context;Z)V

    return v3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x72a157cd -> :sswitch_3
        -0x1e1b8f0b -> :sswitch_2
        0x6bf352c -> :sswitch_1
        0x3d110762 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 4

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "preference_key_cb_voice_print"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_1
    const-string v0, "preference_key_cb_privacy_camera"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_2
    const-string v0, "preference_key_vtb_apps_manage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v3, v2

    goto :goto_0

    :sswitch_3
    const-string v0, "preference_key_gtb_apps_manage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move v3, v1

    :goto_0
    packed-switch v3, :pswitch_data_0

    return v1

    :pswitch_0
    iget-object p1, p0, Lcom/miui/dock/settings/DockSettingsFragment;->a:Landroid/app/Activity;

    invoke-static {p1}, Lx5/b;->m(Landroid/content/Context;)V

    return v2

    :pswitch_1
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/dock/settings/DockSettingsFragment;->a:Landroid/app/Activity;

    const-class v1, Lcom/miui/gamebooster/beauty/PrivacyCameraGlobalSettingsActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return v2

    :pswitch_2
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/dock/settings/DockSettingsFragment;->a:Landroid/app/Activity;

    const-class v1, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return v2

    :pswitch_3
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/dock/settings/DockSettingsFragment;->a:Landroid/app/Activity;

    const-class v1, Lcom/miui/gamebooster/ui/SelectGameActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return v2

    :sswitch_data_0
    .sparse-switch
        -0x66e8d79c -> :sswitch_3
        -0x230d9dcd -> :sswitch_2
        0x2748b158 -> :sswitch_1
        0x358e7144 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    invoke-direct {p0}, Lcom/miui/dock/settings/DockSettingsFragment;->b0()V

    return-void
.end method

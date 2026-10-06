.class Lcom/miui/powercenter/autotask/f;
.super Lcom/miui/powercenter/autotask/e;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/miui/powercenter/autotask/AutoTask;Lcom/miui/powercenter/autotask/AutoTask;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/powercenter/autotask/e;-><init>(Lcom/miui/powercenter/autotask/AutoTask;Lcom/miui/powercenter/autotask/AutoTask;)V

    return-void
.end method


# virtual methods
.method public b(Landroid/os/Bundle;)V
    .locals 6

    iget-object p1, p0, Lcom/miui/powercenter/autotask/i;->c:Ljava/lang/Object;

    check-cast p1, Lcom/miui/powercenter/autotask/AutoTaskEditFragment;

    const v0, 0x7f150047

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceFragmentCompat;->addPreferencesFromResource(I)V

    iget-object p1, p0, Lcom/miui/powercenter/autotask/i;->c:Ljava/lang/Object;

    check-cast p1, Lcom/miui/powercenter/autotask/AutoTaskEditFragment;

    const-string v0, "conditions_category"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/miui/powercenter/autotask/e;->j:Landroidx/preference/PreferenceCategory;

    iget-object p1, p0, Lcom/miui/powercenter/autotask/i;->c:Ljava/lang/Object;

    check-cast p1, Lcom/miui/powercenter/autotask/AutoTaskEditFragment;

    const-string v0, "operations_category"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/miui/powercenter/autotask/e;->k:Landroidx/preference/PreferenceCategory;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/i;->c:Ljava/lang/Object;

    check-cast v0, Lcom/miui/powercenter/autotask/AutoTaskEditFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f120310

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/powercenter/autotask/i;->c:Ljava/lang/Object;

    check-cast v2, Lcom/miui/powercenter/autotask/AutoTaskEditFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f120308

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/miui/powercenter/autotask/e;->j:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v2, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/miui/powercenter/autotask/i;->c:Ljava/lang/Object;

    check-cast v2, Lcom/miui/powercenter/autotask/AutoTaskEditFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f120311

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/powercenter/autotask/i;->c:Ljava/lang/Object;

    check-cast v0, Lcom/miui/powercenter/autotask/AutoTaskEditFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f12030a

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/powercenter/autotask/e;->k:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/powercenter/autotask/i;->c:Ljava/lang/Object;

    check-cast p1, Lcom/miui/powercenter/autotask/AutoTaskEditFragment;

    const-string v0, "name"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/miui/powercenter/autotask/TextEditPreference;

    iput-object p1, p0, Lcom/miui/powercenter/autotask/e;->d:Lcom/miui/powercenter/autotask/TextEditPreference;

    iget-object p1, p0, Lcom/miui/powercenter/autotask/i;->c:Ljava/lang/Object;

    check-cast p1, Lcom/miui/powercenter/autotask/AutoTaskEditFragment;

    const-string v0, "add_new_condition"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/TextPreference;

    iput-object p1, p0, Lcom/miui/powercenter/autotask/e;->e:Lmiuix/preference/TextPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    const/16 p1, 0x17

    invoke-static {p1, v4}, Lme/b0;->k(II)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/powercenter/autotask/e;->e:Lmiuix/preference/TextPreference;

    iget-object v2, p0, Lcom/miui/powercenter/autotask/i;->c:Ljava/lang/Object;

    check-cast v2, Lcom/miui/powercenter/autotask/AutoTaskEditFragment;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const p1, 0x7f12030b

    invoke-virtual {v2, p1, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/powercenter/autotask/i;->c:Ljava/lang/Object;

    check-cast p1, Lcom/miui/powercenter/autotask/AutoTaskEditFragment;

    const-string v0, "condition_custom"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/TextPreference;

    iput-object p1, p0, Lcom/miui/powercenter/autotask/e;->f:Lmiuix/preference/TextPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object p1, p0, Lcom/miui/powercenter/autotask/i;->c:Ljava/lang/Object;

    check-cast p1, Lcom/miui/powercenter/autotask/AutoTaskEditFragment;

    const-string v0, "operation_custom_view"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/TextPreference;

    iput-object p1, p0, Lcom/miui/powercenter/autotask/e;->g:Lmiuix/preference/TextPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object p1, p0, Lcom/miui/powercenter/autotask/i;->c:Ljava/lang/Object;

    check-cast p1, Lcom/miui/powercenter/autotask/AutoTaskEditFragment;

    const-string v0, "condition_custom_repeat"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/miui/powercenter/bootshutdown/RepeatPreference;

    iput-object p1, p0, Lcom/miui/powercenter/autotask/e;->h:Lcom/miui/powercenter/bootshutdown/RepeatPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object p1, p0, Lcom/miui/powercenter/autotask/i;->c:Ljava/lang/Object;

    check-cast p1, Lcom/miui/powercenter/autotask/AutoTaskEditFragment;

    const-string v0, "key_restore_when_charged"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/miui/powercenter/autotask/e;->i:Landroidx/preference/CheckBoxPreference;

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 3

    const-string v0, "brightness"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/miui/powercenter/autotask/e;->f(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/powercenter/autotask/i;->c:Ljava/lang/Object;

    check-cast v0, Lcom/miui/powercenter/autotask/AutoTaskEditFragment;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/DropDownPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object v1, p0, Lcom/miui/powercenter/autotask/i;->c:Ljava/lang/Object;

    check-cast v1, Lcom/miui/powercenter/autotask/AutoTaskEditFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/miui/powercenter/autotask/n;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lcom/miui/powercenter/autotask/n;->d(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIcon(I)V

    iget-object v1, p0, Lcom/miui/powercenter/autotask/i;->c:Ljava/lang/Object;

    check-cast v1, Lcom/miui/powercenter/autotask/AutoTaskEditFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/powercenter/autotask/i;->b:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-static {v1, v2, p1, v0}, Lcom/miui/powercenter/autotask/n;->f(Landroid/content/Context;Lcom/miui/powercenter/autotask/AutoTask;Ljava/lang/String;Lmiuix/preference/DropDownPreference;)V

    const-string v1, "vibration"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/powercenter/autotask/k;->a(Landroid/content/Context;)Lcom/miui/powercenter/autotask/k;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/powercenter/autotask/k;->b()Z

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/powercenter/autotask/n;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/miui/powercenter/autotask/i;->c:Ljava/lang/Object;

    check-cast p1, Lcom/miui/powercenter/autotask/AutoTaskEditFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/powercenter/autotask/i;->b:Lcom/miui/powercenter/autotask/AutoTask;

    new-instance v2, Lcom/miui/powercenter/autotask/f$a;

    invoke-direct {v2, p0}, Lcom/miui/powercenter/autotask/f$a;-><init>(Lcom/miui/powercenter/autotask/f;)V

    invoke-static {p1, v1, v0, p2, v2}, Lcom/miui/powercenter/autotask/n;->a(Landroid/content/Context;Lcom/miui/powercenter/autotask/AutoTask;Ljava/lang/String;Ljava/lang/Object;Lcom/miui/powercenter/autotask/n$c;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/miui/powercenter/autotask/e;->onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public p()V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/e;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/powercenter/autotask/i;->b:Lcom/miui/powercenter/autotask/AutoTask;

    const-string v1, "internet"

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/autotask/AutoTask;->removeOperation(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/e;->k:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/DropDownPreference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_1
    return-void
.end method

.method public q(Ljava/lang/String;)V
    .locals 2

    const-string v0, "brightness"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/miui/powercenter/autotask/e;->q(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/powercenter/autotask/e;->k:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/DropDownPreference;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/miui/powercenter/autotask/i;->b:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-static {v0, v1, p1}, Lcom/miui/powercenter/autotask/n;->k(Lmiuix/preference/DropDownPreference;Lcom/miui/powercenter/autotask/AutoTask;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/f;->p()V

    return-void
.end method

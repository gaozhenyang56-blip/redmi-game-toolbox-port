.class Lcom/miui/powercenter/autotask/e;
.super Lcom/miui/powercenter/autotask/i;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$c;
.implements Landroidx/preference/Preference$d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/powercenter/autotask/i<",
        "Lcom/miui/powercenter/autotask/AutoTaskEditFragment;",
        ">;",
        "Landroidx/preference/Preference$c;",
        "Landroidx/preference/Preference$d;"
    }
.end annotation


# instance fields
.field public d:Lcom/miui/powercenter/autotask/TextEditPreference;

.field public e:Lmiuix/preference/TextPreference;

.field public f:Lmiuix/preference/TextPreference;

.field public g:Lmiuix/preference/TextPreference;

.field public h:Lcom/miui/powercenter/bootshutdown/RepeatPreference;

.field public i:Landroidx/preference/CheckBoxPreference;

.field public j:Landroidx/preference/PreferenceCategory;

.field public k:Landroidx/preference/PreferenceCategory;


# direct methods
.method public constructor <init>(Lcom/miui/powercenter/autotask/AutoTask;Lcom/miui/powercenter/autotask/AutoTask;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/powercenter/autotask/i;-><init>(Lcom/miui/powercenter/autotask/AutoTask;Lcom/miui/powercenter/autotask/AutoTask;)V

    iput-object p1, p0, Lcom/miui/powercenter/autotask/i;->a:Lcom/miui/powercenter/autotask/AutoTask;

    iput-object p2, p0, Lcom/miui/powercenter/autotask/i;->b:Lcom/miui/powercenter/autotask/AutoTask;

    return-void
.end method


# virtual methods
.method public b(Landroid/os/Bundle;)V
    .locals 6

    iget-object p1, p0, Lcom/miui/powercenter/autotask/i;->c:Ljava/lang/Object;

    check-cast p1, Lcom/miui/powercenter/autotask/AutoTaskEditFragment;

    const v0, 0x7f150046

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

.method public c(Landroid/os/Bundle;)V
    .locals 2

    iget-object p1, p0, Lcom/miui/powercenter/autotask/i;->c:Ljava/lang/Object;

    check-cast p1, Lcom/miui/powercenter/autotask/AutoTaskEditFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    iget-object p1, p0, Lcom/miui/powercenter/autotask/e;->d:Lcom/miui/powercenter/autotask/TextEditPreference;

    iget-object v0, p0, Lcom/miui/powercenter/autotask/i;->c:Ljava/lang/Object;

    check-cast v0, Lcom/miui/powercenter/autotask/AutoTaskEditFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/autotask/i;->b:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-static {v0, v1}, Lcom/miui/powercenter/autotask/r;->b(Landroid/content/Context;Lcom/miui/powercenter/autotask/AutoTask;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/powercenter/autotask/TextEditPreference;->setText(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/e;->o()V

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/e;->r()V

    iget-object p1, p0, Lcom/miui/powercenter/autotask/e;->d:Lcom/miui/powercenter/autotask/TextEditPreference;

    new-instance v0, Lcom/miui/powercenter/autotask/e$a;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/autotask/e$a;-><init>(Lcom/miui/powercenter/autotask/e;)V

    invoke-virtual {p1, v0}, Lcom/miui/powercenter/autotask/TextEditPreference;->g(Lcom/miui/powercenter/autotask/TextEditPreference$b;)V

    return-void
.end method

.method public d(IILandroid/content/Intent;)V
    .locals 4

    const-string v0, "task"

    const-string v1, "bundle"

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne p1, v3, :cond_2

    if-ne p2, v2, :cond_2

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/miui/powercenter/autotask/AutoTask;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/miui/powercenter/autotask/i;->b:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-virtual {p2}, Lcom/miui/powercenter/autotask/AutoTask;->removeAllConditions()V

    invoke-virtual {p1}, Lcom/miui/powercenter/autotask/AutoTask;->getConditionNames()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/powercenter/autotask/i;->b:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-virtual {p1, p3}, Lcom/miui/powercenter/autotask/AutoTask;->getCondition(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Lcom/miui/powercenter/autotask/AutoTask;->setCondition(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/powercenter/autotask/e;->d:Lcom/miui/powercenter/autotask/TextEditPreference;

    iget-object p2, p0, Lcom/miui/powercenter/autotask/i;->c:Ljava/lang/Object;

    check-cast p2, Lcom/miui/powercenter/autotask/AutoTaskEditFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    iget-object p3, p0, Lcom/miui/powercenter/autotask/i;->b:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-static {p2, p3}, Lcom/miui/powercenter/autotask/r;->b(Landroid/content/Context;Lcom/miui/powercenter/autotask/AutoTask;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/powercenter/autotask/TextEditPreference;->setText(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/e;->o()V

    goto :goto_2

    :cond_2
    const/4 v3, 0x2

    if-ne p1, v3, :cond_5

    if-ne p2, v2, :cond_5

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/miui/powercenter/autotask/AutoTask;

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1}, Lcom/miui/powercenter/autotask/AutoTask;->getOperationNames()Ljava/util/List;

    move-result-object p2

    iget-object p3, p0, Lcom/miui/powercenter/autotask/i;->b:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-virtual {p3}, Lcom/miui/powercenter/autotask/AutoTask;->removeAllOperations()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/powercenter/autotask/i;->b:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-virtual {p1, p3}, Lcom/miui/powercenter/autotask/AutoTask;->getOperation(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Lcom/miui/powercenter/autotask/AutoTask;->setOperation(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/e;->r()V

    :cond_5
    :goto_2
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/powercenter/autotask/e;->f:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    const-string v0, "battery_level_down"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "battery_level_up"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "hour_minute"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/powercenter/autotask/e;->f:Lmiuix/preference/TextPreference;

    const v1, 0x7f080dcb

    goto :goto_1

    :cond_1
    const-string v0, "hour_minute_duration"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/powercenter/autotask/e;->f:Lmiuix/preference/TextPreference;

    const v1, 0x7f08103b

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/miui/powercenter/autotask/e;->f:Lmiuix/preference/TextPreference;

    const v1, 0x7f08045e

    :goto_1
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIcon(I)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/i;->b:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-virtual {v0, p1}, Lcom/miui/powercenter/autotask/AutoTask;->getCondition(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_4

    return-void

    :cond_4
    iget-object v1, p0, Lcom/miui/powercenter/autotask/e;->f:Lmiuix/preference/TextPreference;

    iget-object v2, p0, Lcom/miui/powercenter/autotask/i;->c:Ljava/lang/Object;

    check-cast v2, Lcom/miui/powercenter/autotask/AutoTaskEditFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, p1, v0}, Lcom/miui/powercenter/autotask/r;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/powercenter/autotask/e;->f:Lmiuix/preference/TextPreference;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/autotask/i;->c:Ljava/lang/Object;

    check-cast v0, Lcom/miui/powercenter/autotask/AutoTaskEditFragment;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/TextPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

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

    iget-object v1, p0, Lcom/miui/powercenter/autotask/i;->b:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-static {v0, v1, p1}, Lcom/miui/powercenter/autotask/n;->j(Lmiuix/preference/TextPreference;Lcom/miui/powercenter/autotask/AutoTask;Ljava/lang/String;)V

    const-string v1, "vibration"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/powercenter/autotask/k;->a(Landroid/content/Context;)Lcom/miui/powercenter/autotask/k;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/powercenter/autotask/k;->b()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/powercenter/autotask/e;->h:Lcom/miui/powercenter/bootshutdown/RepeatPreference;

    const v1, 0x7f121253

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/e;->h:Lcom/miui/powercenter/bootshutdown/RepeatPreference;

    const-string v1, "key_repeat_type"

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    new-instance v0, Lcom/miui/powercenter/bootshutdown/DaysOfWeek;

    iget-object v1, p0, Lcom/miui/powercenter/autotask/i;->b:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-virtual {v1}, Lcom/miui/powercenter/autotask/AutoTask;->getRepeatType()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/miui/powercenter/bootshutdown/DaysOfWeek;-><init>(I)V

    iget-object v1, p0, Lcom/miui/powercenter/autotask/i;->c:Ljava/lang/Object;

    check-cast v1, Lcom/miui/powercenter/autotask/AutoTaskEditFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/miui/powercenter/bootshutdown/DaysOfWeek;->k(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/miui/powercenter/autotask/e;->h:Lcom/miui/powercenter/bootshutdown/RepeatPreference;

    invoke-virtual {v3, v1}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/powercenter/autotask/e;->h:Lcom/miui/powercenter/bootshutdown/RepeatPreference;

    invoke-virtual {v1, v0}, Lcom/miui/powercenter/bootshutdown/RepeatPreference;->l(Lcom/miui/powercenter/bootshutdown/DaysOfWeek;)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/e;->h:Lcom/miui/powercenter/bootshutdown/RepeatPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    const-string v0, "hour_minute"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/miui/powercenter/autotask/e;->h:Lcom/miui/powercenter/bootshutdown/RepeatPreference;

    const v0, 0x7f080dcb

    :goto_0
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setIcon(I)V

    goto :goto_1

    :cond_0
    const-string v0, "hour_minute_duration"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/powercenter/autotask/e;->h:Lcom/miui/powercenter/bootshutdown/RepeatPreference;

    const v0, 0x7f08103b

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/miui/powercenter/autotask/e;->h:Lcom/miui/powercenter/bootshutdown/RepeatPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method public h()V
    .locals 3

    iget-object v0, p0, Lcom/miui/powercenter/autotask/e;->i:Landroidx/preference/CheckBoxPreference;

    const v1, 0x7f1202e4

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/e;->i:Landroidx/preference/CheckBoxPreference;

    const-string v1, "key_restore_when_charged"

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/e;->i:Landroidx/preference/CheckBoxPreference;

    const v1, 0x7f08045e

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIcon(I)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/e;->i:Landroidx/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/miui/powercenter/autotask/i;->b:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-virtual {v1}, Lcom/miui/powercenter/autotask/AutoTask;->getRestoreLevel()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/e;->i:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/e;->i:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method public i()Z
    .locals 3

    iget-object v0, p0, Lcom/miui/powercenter/autotask/i;->b:Lcom/miui/powercenter/autotask/AutoTask;

    const-string v1, "airplane_mode"

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/autotask/AutoTask;->hasOperation(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/autotask/i;->b:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/autotask/AutoTask;->getOperation(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    return v2
.end method

.method public j()V
    .locals 3

    iget-object v0, p0, Lcom/miui/powercenter/autotask/i;->c:Ljava/lang/Object;

    check-cast v0, Lcom/miui/powercenter/autotask/AutoTaskEditFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/autotask/i;->b:Lcom/miui/powercenter/autotask/AutoTask;

    new-instance v2, Lcom/miui/powercenter/autotask/e$d;

    invoke-direct {v2, p0}, Lcom/miui/powercenter/autotask/e$d;-><init>(Lcom/miui/powercenter/autotask/e;)V

    invoke-static {v0, v1, v2}, Lcom/miui/powercenter/autotask/n;->g(Landroid/content/Context;Lcom/miui/powercenter/autotask/AutoTask;Lcom/miui/powercenter/autotask/n$c;)V

    return-void
.end method

.method public k()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/powercenter/autotask/i;->c:Ljava/lang/Object;

    check-cast v1, Lcom/miui/powercenter/autotask/AutoTaskEditFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/miui/powercenter/autotask/ChooseConditionActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Lcom/miui/powercenter/autotask/i;->b:Lcom/miui/powercenter/autotask/AutoTask;

    const-string v3, "task"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "bundle"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/powercenter/autotask/i;->c:Ljava/lang/Object;

    check-cast v1, Lcom/miui/powercenter/autotask/AutoTaskEditFragment;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public l()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/powercenter/autotask/i;->c:Ljava/lang/Object;

    check-cast v1, Lcom/miui/powercenter/autotask/AutoTaskEditFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/miui/powercenter/autotask/OperationEditActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Lcom/miui/powercenter/autotask/i;->b:Lcom/miui/powercenter/autotask/AutoTask;

    const-string v3, "task"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "bundle"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/powercenter/autotask/i;->c:Ljava/lang/Object;

    check-cast v1, Lcom/miui/powercenter/autotask/AutoTaskEditFragment;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public m()V
    .locals 3

    iget-object v0, p0, Lcom/miui/powercenter/autotask/i;->c:Ljava/lang/Object;

    check-cast v0, Lcom/miui/powercenter/autotask/AutoTaskEditFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/autotask/i;->b:Lcom/miui/powercenter/autotask/AutoTask;

    new-instance v2, Lcom/miui/powercenter/autotask/e$c;

    invoke-direct {v2, p0}, Lcom/miui/powercenter/autotask/e$c;-><init>(Lcom/miui/powercenter/autotask/e;)V

    invoke-static {v0, v1, v2}, Lcom/miui/powercenter/autotask/n;->h(Landroid/content/Context;Lcom/miui/powercenter/autotask/AutoTask;Lcom/miui/powercenter/autotask/n$c;)V

    return-void
.end method

.method public n(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/powercenter/autotask/i;->c:Ljava/lang/Object;

    check-cast v0, Lcom/miui/powercenter/autotask/AutoTaskEditFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/autotask/i;->b:Lcom/miui/powercenter/autotask/AutoTask;

    new-instance v2, Lcom/miui/powercenter/autotask/e$b;

    invoke-direct {v2, p0}, Lcom/miui/powercenter/autotask/e$b;-><init>(Lcom/miui/powercenter/autotask/e;)V

    invoke-static {v0, v1, p1, v2}, Lcom/miui/powercenter/autotask/n;->i(Landroid/content/Context;Lcom/miui/powercenter/autotask/AutoTask;Ljava/lang/String;Lcom/miui/powercenter/autotask/n$c;)V

    return-void
.end method

.method public o()V
    .locals 3

    iget-object v0, p0, Lcom/miui/powercenter/autotask/i;->b:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-static {v0}, Lcom/miui/powercenter/autotask/r;->g(Lcom/miui/powercenter/autotask/AutoTask;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/miui/powercenter/autotask/e;->e:Lmiuix/preference/TextPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v1, p0, Lcom/miui/powercenter/autotask/e;->f:Lmiuix/preference/TextPreference;

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v1, p0, Lcom/miui/powercenter/autotask/e;->h:Lcom/miui/powercenter/bootshutdown/RepeatPreference;

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v1, p0, Lcom/miui/powercenter/autotask/e;->i:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/autotask/e;->e(Ljava/lang/String;)V

    const-string v1, "hour_minute"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "hour_minute_duration"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "battery_level_down"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "battery_level_up"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/e;->h()V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/miui/powercenter/autotask/e;->g(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_repeat_type"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    check-cast p2, Lcom/miui/powercenter/bootshutdown/DaysOfWeek;

    iget-object p1, p0, Lcom/miui/powercenter/autotask/i;->b:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-virtual {p2}, Lcom/miui/powercenter/bootshutdown/DaysOfWeek;->c()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/miui/powercenter/autotask/AutoTask;->setRepeatType(I)V

    return v1

    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "key_restore_when_charged"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/powercenter/autotask/i;->b:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-virtual {p1, v1}, Lcom/miui/powercenter/autotask/AutoTask;->setRestoreLevel(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/powercenter/autotask/i;->b:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-virtual {p1, v0}, Lcom/miui/powercenter/autotask/AutoTask;->setRestoreLevel(I)V

    :goto_0
    return v1

    :cond_2
    return v0
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "add_new_condition"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/e;->k()V

    goto :goto_1

    :cond_1
    const-string v0, "key_add_new_operations"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/e;->l()V

    goto :goto_1

    :cond_2
    const-string v0, "battery_level_down"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "battery_level_up"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "hour_minute"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "hour_minute_duration"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lcom/miui/powercenter/autotask/n;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1}, Lcom/miui/powercenter/autotask/e;->n(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v0, "auto_clean_memory"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/e;->m()V

    goto :goto_1

    :cond_5
    const-string v0, "brightness"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/e;->j()V

    :cond_6
    :goto_1
    const/4 p1, 0x0

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

    check-cast v0, Lmiuix/preference/TextPreference;

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

    iget-object v0, p0, Lcom/miui/powercenter/autotask/e;->k:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/TextPreference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/miui/powercenter/autotask/i;->b:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-static {v0, v1, p1}, Lcom/miui/powercenter/autotask/n;->j(Lmiuix/preference/TextPreference;Lcom/miui/powercenter/autotask/AutoTask;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/e;->p()V

    return-void
.end method

.method public r()V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/e;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/autotask/i;->b:Lcom/miui/powercenter/autotask/AutoTask;

    const-string v1, "internet"

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/autotask/AutoTask;->removeOperation(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/powercenter/autotask/i;->b:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-virtual {v0}, Lcom/miui/powercenter/autotask/AutoTask;->getOperationNames()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/miui/powercenter/autotask/e;->f(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/powercenter/autotask/e;->g:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/e;->g:Lmiuix/preference/TextPreference;

    const-string v1, "key_add_new_operations"

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/e;->g:Lmiuix/preference/TextPreference;

    const v1, 0x7f120309

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/e;->g:Lmiuix/preference/TextPreference;

    const v1, 0x7f12030f

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/e;->g:Lmiuix/preference/TextPreference;

    const v1, 0x7f080801

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIcon(I)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/e;->g:Lmiuix/preference/TextPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/e;->k:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/powercenter/autotask/e;->g:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

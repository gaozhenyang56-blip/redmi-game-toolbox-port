.class public Lcom/miui/simlock/fragment/SimLockQueryAllFragment;
.super Lcom/miui/simlock/fragment/SimLockBaseFragment;
.source "SourceFile"


# instance fields
.field private d:Landroidx/preference/PreferenceCategory;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/simlock/fragment/SimLockBaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public a0()V
    .locals 11

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/simlock/fragment/SimLockQueryAllFragment;->d:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    iget-object v0, p0, Lcom/miui/simlock/fragment/SimLockBaseFragment;->a:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v2

    iget-object v3, p0, Lcom/miui/simlock/fragment/SimLockBaseFragment;->b:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/miui/simlock/a;->b(Landroid/content/Context;I)Lcom/miui/simlock/a$c;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/miui/simlock/a$c;->f()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/miui/simlock/a$c;->g()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/miui/simlock/fragment/SimLockBaseFragment;->a:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v4, v2}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoForSlot(I)Lmiui/telephony/SubscriptionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/telephony/SubscriptionInfo;->isActivated()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    new-instance v2, Lmiuix/preference/TextPreference;

    iget-object v4, p0, Lcom/miui/simlock/fragment/SimLockBaseFragment;->b:Landroid/content/Context;

    invoke-direct {v2, v4}, Lmiuix/preference/TextPreference;-><init>(Landroid/content/Context;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f121667

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v1}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v10

    add-int/2addr v10, v7

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v8, v9

    invoke-virtual {v5, v6, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lmiui/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v3}, Lcom/miui/simlock/a$c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v3}, Lcom/miui/simlock/a$c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/simlock/fragment/SimLockQueryAllFragment;->d:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/miui/simlock/fragment/SimLockBaseFragment;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/simlock/a;->c(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/simlock/a$c;

    new-instance v2, Lmiuix/preference/TextPreference;

    iget-object v3, p0, Lcom/miui/simlock/fragment/SimLockBaseFragment;->b:Landroid/content/Context;

    invoke-direct {v2, v3}, Lmiuix/preference/TextPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/miui/simlock/a$c;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Lcom/miui/simlock/a$c;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Lcom/miui/simlock/a$c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/simlock/fragment/SimLockQueryAllFragment;->d:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_2

    :cond_5
    monitor-exit p0

    return-void

    :cond_6
    :goto_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lmiuix/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/miui/simlock/fragment/SimLockBaseFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    const p1, 0x7f150004

    invoke-virtual {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->setPreferencesFromResource(ILjava/lang/String;)V

    const-string p1, "saved_pins_list"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/miui/simlock/fragment/SimLockQueryAllFragment;->d:Landroidx/preference/PreferenceCategory;

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    invoke-virtual {p0}, Lcom/miui/simlock/fragment/SimLockQueryAllFragment;->a0()V

    return-void
.end method

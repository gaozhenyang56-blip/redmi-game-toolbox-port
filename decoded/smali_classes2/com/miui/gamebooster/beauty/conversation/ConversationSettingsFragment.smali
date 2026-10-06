.class public Lcom/miui/gamebooster/beauty/conversation/ConversationSettingsFragment;
.super Lmiuix/preference/PreferenceFragment;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$c;
.implements Landroidx/preference/Preference$d;


# instance fields
.field private a:Lmiuix/preference/TextPreference;

.field private b:Landroid/app/Activity;

.field private c:Landroidx/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiuix/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method private refreshUI()V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/beauty/conversation/ConversationSettingsFragment;->c:Landroidx/preference/CheckBoxPreference;

    invoke-static {}, Lx5/p;->l0()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/gamebooster/beauty/conversation/ConversationSettingsFragment;->a:Lmiuix/preference/TextPreference;

    iget-object v1, p0, Lcom/miui/gamebooster/beauty/conversation/ConversationSettingsFragment;->c:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lx5/b;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/gamebooster/beauty/conversation/ConversationSettingsFragment;->b:Landroid/app/Activity;

    invoke-static {p1}, Lc7/c;->a(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const p1, 0x7f150020

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->addPreferencesFromResource(I)V

    const-string p1, "preference_key_conversation_switch"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/miui/gamebooster/beauty/conversation/ConversationSettingsFragment;->c:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    const-string p1, "preference_key_cb_voice_print"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/TextPreference;

    iput-object p1, p0, Lcom/miui/gamebooster/beauty/conversation/ConversationSettingsFragment;->a:Lmiuix/preference/TextPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p2, Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreferenceChange: newValue="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "ConversationSettingsFragment"

    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string p2, "preference_key_conversation_switch"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_3

    :cond_1
    invoke-static {v0}, Lx5/p;->F1(Z)V

    if-nez v0, :cond_2

    invoke-static {}, Lx5/p;->O()Lx5/p;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/gamebooster/beauty/conversation/ConversationSettingsFragment;->b:Landroid/app/Activity;

    invoke-virtual {p1, p2, v1}, Lx5/p;->H(Landroid/content/Context;Z)V

    :cond_2
    iget-object p1, p0, Lcom/miui/gamebooster/beauty/conversation/ConversationSettingsFragment;->b:Landroid/app/Activity;

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/miui/gamebooster/beauty/BeautyService;->h0(Landroid/content/Context;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lcom/miui/gamebooster/beauty/BeautyService;->i0(Landroid/content/Context;)V

    :goto_1
    iget-object p1, p0, Lcom/miui/gamebooster/beauty/conversation/ConversationSettingsFragment;->a:Lmiuix/preference/TextPreference;

    if-eqz v0, :cond_4

    invoke-static {}, Lx5/b;->f()Z

    move-result p2

    if-eqz p2, :cond_4

    const/4 p2, 0x1

    goto :goto_2

    :cond_4
    move p2, v1

    :goto_2
    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_3
    invoke-direct {p0}, Lcom/miui/gamebooster/beauty/conversation/ConversationSettingsFragment;->refreshUI()V

    return v1
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "preference_key_cb_voice_print"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lx5/b;->m(Landroid/content/Context;)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    invoke-direct {p0}, Lcom/miui/gamebooster/beauty/conversation/ConversationSettingsFragment;->refreshUI()V

    return-void
.end method

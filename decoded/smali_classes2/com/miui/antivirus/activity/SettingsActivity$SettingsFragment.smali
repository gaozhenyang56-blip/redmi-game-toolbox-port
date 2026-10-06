.class public Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;
.super Lcom/miui/common/base/ui/MiuiXPreferenceFragment;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$d;
.implements Landroidx/preference/Preference$c;
.implements Landroidx/loader/app/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/antivirus/activity/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SettingsFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment$i;,
        Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment$j;,
        Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment$h;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/common/base/ui/MiuiXPreferenceFragment;",
        "Landroidx/preference/Preference$d;",
        "Landroidx/preference/Preference$c;",
        "Landroidx/loader/app/a$a<",
        "Landroid/util/Pair;",
        ">;"
    }
.end annotation


# instance fields
.field private A:Lcom/miui/antivirus/activity/SettingsActivity$c;

.field private B:Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment$h;

.field private C:Z

.field private D:Z

.field private E:Z

.field private F:Z

.field private G:Z

.field private H:Z

.field private I:Z

.field private J:Z

.field private K:Z

.field private L:Z

.field private M:Ljava/lang/String;

.field private N:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo2/b$b;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/miui/antivirus/activity/SettingsActivity;

.field private c:Landroidx/preference/PreferenceCategory;

.field private d:Lcom/miui/antivirus/AntiEngineTextPreference;

.field private e:Lmiuix/preference/TextPreference;

.field private f:Lmiuix/preference/DropDownPreference;

.field private g:Landroidx/preference/SwitchPreference;

.field private h:Landroidx/preference/SwitchPreference;

.field private i:Landroidx/preference/SwitchPreference;

.field private j:Lmiuix/preference/TextPreference;

.field private k:Landroidx/preference/PreferenceCategory;

.field private l:Landroidx/preference/PreferenceCategory;

.field private m:Landroidx/preference/CheckBoxPreference;

.field private n:Landroidx/preference/CheckBoxPreference;

.field private o:Landroidx/preference/CheckBoxPreference;

.field private p:Landroidx/preference/CheckBoxPreference;

.field private q:Landroidx/preference/CheckBoxPreference;

.field private r:Lmiuix/preference/TextPreference;

.field private s:Lmiuix/preference/TextPreference;

.field private t:Landroidx/preference/Preference;

.field private u:Lmiuix/appcompat/app/ProgressDialog;

.field private v:Lp9/a;

.field private w:Lo2/b;

.field private x:Lo2/f;

.field private y:Lcom/miui/antivirus/activity/SettingsActivity$d;

.field private z:Lcom/miui/antivirus/activity/SettingsActivity$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/base/ui/MiuiXPreferenceFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->N:Ljava/util/List;

    return-void
.end method

.method private A0(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo2/b$b;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->D:Z

    const-string v1, "Mi"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo2/b$b;

    iget-object v0, v0, Lo2/b$b;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->i:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo2/b$b;

    iget-boolean v4, v0, Lo2/b$b;->d:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->e:Lmiuix/preference/TextPreference;

    if-eqz v4, :cond_2

    iget-object v5, v0, Lo2/b$b;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    :cond_2
    iget-object v4, v0, Lo2/b$b;->a:Ljava/lang/String;

    invoke-static {v4}, Lo2/h;->B(Ljava/lang/String;)V

    const v4, 0x7f1213f4

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v6, v0, Lo2/b$b;->a:Ljava/lang/String;

    aput-object v6, v5, v3

    invoke-virtual {p0, v4, v5}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lo2/b$b;->a:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->i:Landroidx/preference/SwitchPreference;

    const v6, 0x7f121b9f

    invoke-virtual {p0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->i:Landroidx/preference/SwitchPreference;

    const v6, 0x7f121b9e

    new-array v7, v2, [Ljava/lang/Object;

    iget-object v8, v0, Lo2/b$b;->b:Ljava/lang/String;

    aput-object v8, v7, v3

    invoke-virtual {p0, v6, v7}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :goto_1
    invoke-virtual {v5, v6}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->i:Landroidx/preference/SwitchPreference;

    const v6, 0x7f1213f5

    new-array v7, v2, [Ljava/lang/Object;

    iget-object v8, v0, Lo2/b$b;->a:Ljava/lang/String;

    aput-object v8, v7, v3

    invoke-virtual {p0, v6, v7}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-wide/16 v7, 0x0

    invoke-static {v6, v7, v8}, Lr4/a;->j(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->y0(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->i:Landroidx/preference/SwitchPreference;

    invoke-static {v4}, Lo2/h;->o(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v5, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->i:Landroidx/preference/SwitchPreference;

    new-instance v6, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment$b;

    invoke-direct {v6, p0, v4}, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment$b;-><init>(Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-boolean v0, v0, Lo2/b$b;->e:Z

    if-eqz v0, :cond_4

    invoke-static {}, Lw2/t;->F()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->c:Landroidx/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->g:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->c:Landroidx/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->g:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method private B0(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo2/b$b;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->b:Lcom/miui/antivirus/activity/SettingsActivity;

    invoke-static {v0, p1}, Lw2/t;->f(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "all"

    aput-object v3, v1, v2

    const v4, 0x7f1213f4

    invoke-virtual {p0, v4, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->i:Landroidx/preference/SwitchPreference;

    new-array v5, v0, [Ljava/lang/Object;

    aput-object p1, v5, v2

    const p1, 0x7f121b9e

    invoke-virtual {p0, p1, v5}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->i:Landroidx/preference/SwitchPreference;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v3, v0, v2

    const v2, 0x7f1213f5

    invoke-virtual {p0, v2, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lr4/a;->j(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->y0(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->i:Landroidx/preference/SwitchPreference;

    invoke-static {v1}, Lo2/h;->o(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->i:Landroidx/preference/SwitchPreference;

    new-instance v0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment$a;

    invoke-direct {v0, p0, v1}, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment$a;-><init>(Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->c:Landroidx/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->g:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method private D0(Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo2/b$b;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->f:Lmiuix/preference/DropDownPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void

    :cond_0
    iput-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->N:Ljava/util/List;

    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->f:Lmiuix/preference/DropDownPreference;

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->z0(Ljava/util/List;)V

    :cond_1
    iget-boolean v0, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->E:Z

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->B0(Ljava/util/List;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->A0(Ljava/util/List;)V

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->b:Lcom/miui/antivirus/activity/SettingsActivity;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "com.miui.guardprovider"

    invoke-static {v0, v2}, Lw2/p;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x65

    if-lt v0, v2, :cond_3

    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->c:Landroidx/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->j:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->c:Landroidx/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->j:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :goto_1
    iget-boolean v0, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->D:Z

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo2/b$b;

    iget-object p1, p1, Lo2/b$b;->a:Ljava/lang/String;

    const-string v0, "Mi"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "third_party_category"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->t:Landroidx/preference/Preference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_4
    return-void
.end method

.method private E0()V
    .locals 8

    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->N:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, -0x1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget-object v4, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->N:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    iget-object v4, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->N:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo2/b$b;

    const v5, 0x7f1200ff

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, v4, Lo2/b$b;->b:Ljava/lang/String;

    aput-object v7, v6, v2

    invoke-virtual {p0, v5, v6}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v3

    iget-boolean v4, v4, Lo2/b$b;->d:Z

    if-eqz v4, :cond_1

    move v1, v3

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    new-instance v2, Lw2/i;

    new-instance v3, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment$c;

    invoke-direct {v3, p0}, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment$c;-><init>(Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;)V

    invoke-direct {v2, v3}, Lw2/i;-><init>(Landroid/content/DialogInterface$OnClickListener;)V

    new-instance v3, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->b:Lcom/miui/antivirus/activity/SettingsActivity;

    invoke-direct {v3, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f120100

    invoke-virtual {v3, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    invoke-virtual {v2, v0}, Lw2/i;->c(Landroid/app/Dialog;)V

    return-void
.end method

.method private F0()V
    .locals 9

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/high16 v1, 0x1040000

    const v2, 0x7f12012b

    const v3, 0x7f120121

    const v4, 0x7f121bad

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->D:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Leg/o;->c(Landroid/content/Context;Z)V

    invoke-static {v0}, Lx4/u;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->G0()V

    goto/16 :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->J0()V

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment$d;

    invoke-direct {v7, p0}, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment$d;-><init>(Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;)V

    new-instance v8, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment$e;

    invoke-direct {v8, p0}, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment$e;-><init>(Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;)V

    move-object v1, v0

    move-object v2, v4

    move-object v4, v6

    move-object v6, v7

    move-object v7, v8

    invoke-static/range {v1 .. v7}, Lcom/miui/securityscan/b;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lqf/c;->M0(Z)V

    goto :goto_1

    :cond_3
    :goto_0
    return-void

    :cond_4
    new-instance v0, Lw2/i;

    new-instance v5, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment$f;

    invoke-direct {v5, p0}, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment$f;-><init>(Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;)V

    invoke-direct {v0, v5}, Lw2/i;-><init>(Landroid/content/DialogInterface$OnClickListener;)V

    new-instance v5, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->b:Lcom/miui/antivirus/activity/SettingsActivity;

    invoke-direct {v5, v6}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Lmiuix/appcompat/app/AlertDialog;->show()V

    invoke-virtual {v0, v1}, Lw2/i;->c(Landroid/app/Dialog;)V

    :goto_1
    return-void
.end method

.method private H0(I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->u:Lmiuix/appcompat/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->b:Lcom/miui/antivirus/activity/SettingsActivity;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->b:Lcom/miui/antivirus/activity/SettingsActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->u:Lmiuix/appcompat/app/ProgressDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->u:Lmiuix/appcompat/app/ProgressDialog;

    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->b:Lcom/miui/antivirus/activity/SettingsActivity;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private I0(Lcom/miui/guardprovider/aidl/UpdateInfo;)V
    .locals 11

    iget v0, p1, Lcom/miui/guardprovider/aidl/UpdateInfo;->updateResult:I

    const v1, 0x7f120125

    const v2, 0x7f120127

    const-string v3, "all"

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const v8, 0x7f1213f5

    if-eqz v0, :cond_4

    const/4 v9, 0x2

    if-eq v0, v9, :cond_3

    const/4 v9, 0x3

    if-eq v0, v9, :cond_1

    :cond_0
    move v1, v2

    goto/16 :goto_2

    :cond_1
    iget-boolean v0, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->E:Z

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->x:Lo2/f;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {p1, v9, v10, v3}, Lo2/f;->f(JLjava/lang/String;)V

    iget-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->i:Landroidx/preference/SwitchPreference;

    new-array v0, v7, [Ljava/lang/Object;

    aput-object v3, v0, v6

    invoke-virtual {p0, v8, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4, v5}, Lr4/a;->j(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->y0(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->x:Lo2/f;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v9, p1, Lcom/miui/guardprovider/aidl/UpdateInfo;->engineName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v9}, Lo2/f;->f(JLjava/lang/String;)V

    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->i:Landroidx/preference/SwitchPreference;

    new-array v2, v7, [Ljava/lang/Object;

    iget-object p1, p1, Lcom/miui/guardprovider/aidl/UpdateInfo;->engineName:Ljava/lang/String;

    aput-object p1, v2, v6

    invoke-virtual {p0, v8, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v4, v5}, Lr4/a;->j(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->y0(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->x:Lo2/f;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lo2/f;->h(J)V

    goto :goto_2

    :cond_3
    iget-object p1, p1, Lcom/miui/guardprovider/aidl/UpdateInfo;->engineName:Ljava/lang/String;

    const-string v0, "Avast"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_2

    :cond_4
    iget-boolean v0, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->E:Z

    if-eqz v0, :cond_5

    iget-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->x:Lo2/f;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1, v3}, Lo2/f;->f(JLjava/lang/String;)V

    iget-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->i:Landroidx/preference/SwitchPreference;

    new-array v0, v7, [Ljava/lang/Object;

    aput-object v3, v0, v6

    invoke-virtual {p0, v8, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4, v5}, Lr4/a;->j(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->y0(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->x:Lo2/f;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p1, Lcom/miui/guardprovider/aidl/UpdateInfo;->engineName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lo2/f;->f(JLjava/lang/String;)V

    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->i:Landroidx/preference/SwitchPreference;

    new-array v1, v7, [Ljava/lang/Object;

    iget-object p1, p1, Lcom/miui/guardprovider/aidl/UpdateInfo;->engineName:Ljava/lang/String;

    aput-object p1, v1, v6

    invoke-virtual {p0, v8, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v4, v5}, Lr4/a;->j(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->y0(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->x:Lo2/f;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lo2/f;->h(J)V

    const v1, 0x7f120128

    :goto_2
    invoke-direct {p0, v1}, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->H0(I)V

    return-void
.end method

.method private J0()V
    .locals 5

    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->A:Lcom/miui/antivirus/activity/SettingsActivity$c;

    const/4 v1, 0x0

    const v2, 0x7f120129

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->b:Lcom/miui/antivirus/activity/SettingsActivity;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->b:Lcom/miui/antivirus/activity/SettingsActivity;

    const/4 v3, 0x0

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    invoke-static {v0, v3, v2, v4, v4}, Lmiuix/appcompat/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lmiuix/appcompat/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->u:Lmiuix/appcompat/app/ProgressDialog;

    new-instance v0, Lcom/miui/antivirus/activity/SettingsActivity$c;

    invoke-direct {v0, p0}, Lcom/miui/antivirus/activity/SettingsActivity$c;-><init>(Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;)V

    iput-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->A:Lcom/miui/antivirus/activity/SettingsActivity$c;

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v2, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private K0()V
    .locals 3

    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->b:Lcom/miui/antivirus/activity/SettingsActivity;

    invoke-static {v0}, Lx4/u;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->b:Lcom/miui/antivirus/activity/SettingsActivity;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120126

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lw2/t;->I()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lo2/b;->g(Landroid/content/Context;)Lo2/b;

    move-result-object v0

    invoke-virtual {v0}, Lo2/b;->i()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-static {}, Lef/x;->z()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->F0()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->b:Lcom/miui/antivirus/activity/SettingsActivity;

    invoke-static {v0}, Lx4/u;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->G0()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->J0()V

    :goto_0
    return-void
.end method

.method static synthetic c0(Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;)Lcom/miui/antivirus/activity/SettingsActivity;
    .locals 0

    iget-object p0, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->b:Lcom/miui/antivirus/activity/SettingsActivity;

    return-object p0
.end method

.method static synthetic d0(Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;Lcom/miui/guardprovider/aidl/UpdateInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->I0(Lcom/miui/guardprovider/aidl/UpdateInfo;)V

    return-void
.end method

.method static synthetic e0(Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->H:Z

    return p1
.end method

.method static synthetic f0(Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->I:Z

    return p1
.end method

.method static synthetic g0(Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->J:Z

    return p1
.end method

.method static synthetic h0(Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->K:Z

    return p1
.end method

.method static synthetic i0(Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->D:Z

    return p0
.end method

.method static synthetic j0(Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->N:Ljava/util/List;

    return-object p0
.end method

.method static synthetic k0(Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->C:Z

    return p0
.end method

.method static synthetic l0(Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->C:Z

    return p1
.end method

.method static synthetic m0(Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->x0(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method static synthetic n0(Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->J0()V

    return-void
.end method

.method static synthetic o0(Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;)Landroidx/preference/SwitchPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->i:Landroidx/preference/SwitchPreference;

    return-object p0
.end method

.method static synthetic p0(Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;Lcom/miui/antivirus/activity/SettingsActivity$c;)Lcom/miui/antivirus/activity/SettingsActivity$c;
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->A:Lcom/miui/antivirus/activity/SettingsActivity$c;

    return-object p1
.end method

.method static synthetic q0(Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;)Lo2/f;
    .locals 0

    iget-object p0, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->x:Lo2/f;

    return-object p0
.end method

.method static synthetic r0(Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;)Lcom/miui/antivirus/activity/SettingsActivity$d;
    .locals 0

    iget-object p0, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->y:Lcom/miui/antivirus/activity/SettingsActivity$d;

    return-object p0
.end method

.method static synthetic s0(Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;)Lo2/b;
    .locals 0

    iget-object p0, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->w:Lo2/b;

    return-object p0
.end method

.method static synthetic t0(Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->D0(Ljava/util/List;)V

    return-void
.end method

.method static synthetic u0(Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->M:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic v0(Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->F:Z

    return p1
.end method

.method static synthetic w0(Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->G:Z

    return p1
.end method

.method private x0(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lo2/b$b;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->B:Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment$h;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->v:Lp9/a;

    invoke-virtual {v1, v0}, Lp9/a;->l(Lp9/a$b;)V

    :cond_0
    new-instance v0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment$h;

    invoke-direct {v0, p0, p2, p1}, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment$h;-><init>(Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;Ljava/util/List;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->B:Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment$h;

    iget-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->v:Lp9/a;

    invoke-virtual {p1, v0}, Lp9/a;->i(Lp9/a$b;)V

    return-void
.end method

.method private y0(J)Ljava/lang/String;
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const p1, 0x7f120c2d

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const v0, 0x7f120dab

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/text/format/DateFormat;->getMediumDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private z0(Ljava/util/List;)V
    .locals 11
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo2/b$b;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo2/b$b;

    iget-object v0, v0, Lo2/b$b;->a:Ljava/lang/String;

    const-string v3, "Mi"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->f:Lmiuix/preference/DropDownPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->f:Lmiuix/preference/DropDownPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->f:Lmiuix/preference/DropDownPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, -0x1

    move v5, v2

    move v6, v4

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_3

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lo2/b$b;

    const v8, 0x7f1200ff

    new-array v9, v1, [Ljava/lang/Object;

    iget-object v10, v7, Lo2/b$b;->b:Ljava/lang/String;

    aput-object v10, v9, v2

    invoke-virtual {p0, v8, v9}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v5

    iget-boolean v7, v7, Lo2/b$b;->d:Z

    if-eqz v7, :cond_2

    move v6, v5

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->f:Lmiuix/preference/DropDownPreference;

    invoke-virtual {p1, v0}, Lmiuix/preference/DropDownPreference;->y([Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->f:Lmiuix/preference/DropDownPreference;

    invoke-virtual {p1, v3}, Lmiuix/preference/DropDownPreference;->B([Ljava/lang/CharSequence;)V

    if-ne v6, v4, :cond_4

    goto :goto_1

    :cond_4
    move v2, v6

    :goto_1
    iget-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->f:Lmiuix/preference/DropDownPreference;

    invoke-virtual {p1, v2}, Lmiuix/preference/DropDownPreference;->E(I)V

    return-void
.end method


# virtual methods
.method public C0(Lq0/c;Landroid/util/Pair;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq0/c<",
            "Landroid/util/Pair;",
            ">;",
            "Landroid/util/Pair;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->d:Lcom/miui/antivirus/AntiEngineTextPreference;

    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->M:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/miui/antivirus/AntiEngineTextPreference;->setText(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->r:Lmiuix/preference/TextPreference;

    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v1, 0x7f121735

    const/4 v2, 0x0

    const v3, 0x7f100130

    const/4 v4, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v5, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    new-array v6, v4, [Ljava/lang/Object;

    iget-object v7, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    aput-object v7, v6, v2

    invoke-virtual {v0, v3, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->s:Lmiuix/preference/TextPreference;

    iget-object v0, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-array v5, v4, [Ljava/lang/Object;

    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    aput-object p2, v5, v2

    invoke-virtual {v0, v3, v1, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :goto_1
    invoke-virtual {p1, p2}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->g:Landroidx/preference/SwitchPreference;

    iget-boolean p2, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->F:Z

    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->g:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->m:Landroidx/preference/CheckBoxPreference;

    iget-boolean p2, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->G:Z

    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->m:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->n:Landroidx/preference/CheckBoxPreference;

    iget-boolean p2, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->H:Z

    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->n:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->o:Landroidx/preference/CheckBoxPreference;

    iget-boolean p2, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->I:Z

    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->o:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->p:Landroidx/preference/CheckBoxPreference;

    iget-boolean p2, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->J:Z

    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->p:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->q:Landroidx/preference/CheckBoxPreference;

    iget-boolean p2, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->K:Z

    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->q:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_3
    :goto_2
    return-void
.end method

.method public F(Lq0/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq0/c<",
            "Landroid/util/Pair;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public G0()V
    .locals 4

    new-instance v0, Lw2/i;

    new-instance v1, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment$g;

    invoke-direct {v1, p0}, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment$g;-><init>(Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;)V

    invoke-direct {v0, v1}, Lw2/i;-><init>(Landroid/content/DialogInterface$OnClickListener;)V

    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->b:Lcom/miui/antivirus/activity/SettingsActivity;

    invoke-direct {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f121bad

    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->b:Lcom/miui/antivirus/activity/SettingsActivity;

    const v3, 0x7f121bae

    invoke-static {v2, v3}, Lx4/y1;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f12012a

    invoke-virtual {v1, v2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Lmiuix/appcompat/app/AlertDialog;->show()V

    invoke-virtual {v0, v1}, Lw2/i;->c(Landroid/app/Dialog;)V

    return-void
.end method

.method public bridge synthetic T(Lq0/c;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/util/Pair;

    invoke-virtual {p0, p1, p2}, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->C0(Lq0/c;Landroid/util/Pair;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lmiuix/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/miui/antivirus/activity/SettingsActivity;

    iput-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->b:Lcom/miui/antivirus/activity/SettingsActivity;

    invoke-virtual {p0}, Lcom/miui/common/base/ui/MiuiXPreferenceFragment;->a0()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f150071

    goto :goto_0

    :cond_0
    const p1, 0x7f150070

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->addPreferencesFromResource(I)V

    iget-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->b:Lcom/miui/antivirus/activity/SettingsActivity;

    invoke-static {p1}, Lo2/b;->g(Landroid/content/Context;)Lo2/b;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->w:Lo2/b;

    iget-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->b:Lcom/miui/antivirus/activity/SettingsActivity;

    const v0, 0x7f1213de

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->c:Landroidx/preference/PreferenceCategory;

    invoke-static {}, Lw2/t;->A()Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->E:Z

    invoke-virtual {p0}, Lcom/miui/common/base/ui/MiuiXPreferenceFragment;->a0()Z

    move-result p1

    const v0, 0x7f1213e6

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->b:Lcom/miui/antivirus/activity/SettingsActivity;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/DropDownPreference;

    iput-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->f:Lmiuix/preference/DropDownPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->f:Lmiuix/preference/DropDownPreference;

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->b:Lcom/miui/antivirus/activity/SettingsActivity;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/TextPreference;

    iput-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->e:Lmiuix/preference/TextPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->e:Lmiuix/preference/TextPreference;

    :goto_1
    iget-boolean v0, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->E:Z

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    const-string p1, "key_show_all_engine"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/miui/antivirus/AntiEngineTextPreference;

    iput-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->d:Lcom/miui/antivirus/AntiEngineTextPreference;

    iget-boolean v0, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->E:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_2
    iget-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->b:Lcom/miui/antivirus/activity/SettingsActivity;

    const v0, 0x7f121400

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    iput-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->g:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->g:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->b:Lcom/miui/antivirus/activity/SettingsActivity;

    const v0, 0x7f121401

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    iput-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->h:Landroidx/preference/SwitchPreference;

    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->b:Lcom/miui/antivirus/activity/SettingsActivity;

    invoke-static {v0}, Lw2/c;->a(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->h:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    invoke-static {}, Lx4/t;->p()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->b:Lcom/miui/antivirus/activity/SettingsActivity;

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_3

    const-string v0, "com.miui.global.packageinstaller"

    goto :goto_3

    :cond_3
    const-string v0, "com.miui.packageinstaller"

    :goto_3
    invoke-static {p1, v0}, Lw2/t;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->c:Landroidx/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->h:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_4
    iget-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->b:Lcom/miui/antivirus/activity/SettingsActivity;

    const v0, 0x7f12140d

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    iput-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->i:Landroidx/preference/SwitchPreference;

    iget-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->b:Lcom/miui/antivirus/activity/SettingsActivity;

    const v0, 0x7f1213f9

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/TextPreference;

    iput-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->j:Lmiuix/preference/TextPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->b:Lcom/miui/antivirus/activity/SettingsActivity;

    const v0, 0x7f1213eb

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->k:Landroidx/preference/PreferenceCategory;

    iget-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->b:Lcom/miui/antivirus/activity/SettingsActivity;

    const v0, 0x7f121406

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->m:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->m:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->b:Lcom/miui/antivirus/activity/SettingsActivity;

    const v0, 0x7f121405

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->n:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->n:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->b:Lcom/miui/antivirus/activity/SettingsActivity;

    const v0, 0x7f1213ea

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->l:Landroidx/preference/PreferenceCategory;

    iget-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->b:Lcom/miui/antivirus/activity/SettingsActivity;

    const v0, 0x7f1213f0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->o:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->o:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    sget-boolean p1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->o:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f121734

    invoke-static {v0, v1}, Lx4/y1;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_5
    iget-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->b:Lcom/miui/antivirus/activity/SettingsActivity;

    const v0, 0x7f1213ee

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->p:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->p:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->b:Lcom/miui/antivirus/activity/SettingsActivity;

    const v0, 0x7f1213ef

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->q:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->q:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->b:Lcom/miui/antivirus/activity/SettingsActivity;

    const v0, 0x7f12140e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/TextPreference;

    iput-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->r:Lmiuix/preference/TextPreference;

    iget-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->b:Lcom/miui/antivirus/activity/SettingsActivity;

    const v0, 0x7f121407

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/TextPreference;

    iput-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->s:Lmiuix/preference/TextPreference;

    iget-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->b:Lcom/miui/antivirus/activity/SettingsActivity;

    invoke-static {p1}, Lo2/f;->a(Landroid/content/Context;)Lo2/f;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->x:Lo2/f;

    iget-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->b:Lcom/miui/antivirus/activity/SettingsActivity;

    invoke-static {p1}, Lp9/a;->j(Landroid/content/Context;)Lp9/a;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->v:Lp9/a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lp9/a;->g(Lp9/a$b;)V

    new-instance p1, Lcom/miui/antivirus/activity/SettingsActivity$d;

    invoke-direct {p1, p0}, Lcom/miui/antivirus/activity/SettingsActivity$d;-><init>(Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;)V

    iput-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->y:Lcom/miui/antivirus/activity/SettingsActivity$d;

    new-instance p1, Lcom/miui/antivirus/activity/SettingsActivity$a;

    invoke-direct {p1, p0}, Lcom/miui/antivirus/activity/SettingsActivity$a;-><init>(Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;)V

    iput-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->z:Lcom/miui/antivirus/activity/SettingsActivity$a;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {p1, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-static {}, Lef/d0;->a()I

    move-result p1

    const/4 v1, 0x5

    if-ge p1, v1, :cond_6

    iget-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->l:Landroidx/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->r:Lmiuix/preference/TextPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_4

    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportLoaderManager()Landroidx/loader/app/a;

    move-result-object p1

    const/16 v1, 0x64

    invoke-virtual {p1, v1, v0, p0}, Landroidx/loader/app/a;->e(ILandroid/os/Bundle;Landroidx/loader/app/a$a;)Lq0/c;

    :goto_4
    sget-boolean p1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p1, :cond_9

    const-string p1, "IN"

    invoke-static {p1}, Lmiui/os/Build;->checkRegion(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-static {}, Lw2/t;->z()Z

    move-result p1

    if-nez p1, :cond_8

    :cond_7
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->k:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_8
    iget-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->l:Landroidx/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->o:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->l:Landroidx/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->s:Lmiuix/preference/TextPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_9
    sget-boolean p1, Lmiui/os/Build;->IS_ALPHA_BUILD:Z

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->l:Landroidx/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->p:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_a
    invoke-static {}, Lx4/t;->u()Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->D:Z

    const p1, 0x7f1213e7

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->t:Landroidx/preference/Preference;

    iget-boolean v0, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->D:Z

    if-eqz v0, :cond_b

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    goto :goto_5

    :cond_b
    const-string p1, "third_party_category"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->t:Landroidx/preference/Preference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :goto_5
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Lq0/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Lq0/c<",
            "Landroid/util/Pair;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/miui/antivirus/activity/SettingsActivity$b;

    iget-object p2, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->b:Lcom/miui/antivirus/activity/SettingsActivity;

    invoke-direct {p1, p0, p2}, Lcom/miui/antivirus/activity/SettingsActivity$b;-><init>(Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;Landroid/content/Context;)V

    return-object p1
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->v:Lp9/a;

    invoke-virtual {v0}, Lp9/a;->m()V

    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->A:Lcom/miui/antivirus/activity/SettingsActivity$c;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->z:Lcom/miui/antivirus/activity/SettingsActivity$a;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_1
    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->B:Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment$h;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->v:Lp9/a;

    invoke-virtual {v1, v0}, Lp9/a;->l(Lp9/a$b;)V

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportLoaderManager()Landroidx/loader/app/a;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroidx/loader/app/a;->a(I)V

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->L:Z

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->f:Lmiuix/preference/DropDownPreference;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Lmiuix/preference/DropDownPreference;->D(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->N:Ljava/util/List;

    iget-object p2, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->f:Lmiuix/preference/DropDownPreference;

    invoke-virtual {p2}, Lmiuix/preference/DropDownPreference;->s()I

    move-result p2

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo2/b$b;

    iget-object p1, p1, Lo2/b$b;->a:Ljava/lang/String;

    iget-object p2, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->N:Ljava/util/List;

    invoke-direct {p0, p1, p2}, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->x0(Ljava/lang/String;Ljava/util/List;)V

    return v1

    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->g:Landroidx/preference/SwitchPreference;

    if-ne p1, v0, :cond_1

    invoke-static {p2}, Lo2/h;->V(Z)V

    return v1

    :cond_1
    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->h:Landroidx/preference/SwitchPreference;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->b:Lcom/miui/antivirus/activity/SettingsActivity;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lw2/c;->b(Landroid/content/Context;Z)V

    return v1

    :cond_2
    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->m:Landroidx/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_4

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->b:Lcom/miui/antivirus/activity/SettingsActivity;

    const-class v2, Lcom/miui/antivirus/service/GuardService;

    invoke-direct {p1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p2, :cond_3

    const-string p2, "action_register_foreground_notification"

    goto :goto_0

    :cond_3
    const-string p2, "action_unregister_foreground_notification"

    :goto_0
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->b:Lcom/miui/antivirus/activity/SettingsActivity;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return v1

    :cond_4
    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->n:Landroidx/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_5

    invoke-static {p2}, Lo2/h;->S(Z)V

    return v1

    :cond_5
    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->o:Landroidx/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_6

    invoke-static {p2}, Lo2/h;->X(Z)V

    return v1

    :cond_6
    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->p:Landroidx/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_7

    invoke-static {p2}, Lo2/h;->R(Z)V

    return v1

    :cond_7
    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->q:Landroidx/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_8

    invoke-static {p2}, Lo2/h;->U(Z)V

    return v1

    :cond_8
    const/4 p1, 0x0

    return p1
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 5

    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->e:Lmiuix/preference/TextPreference;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->E0()V

    return v1

    :cond_0
    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->r:Lmiuix/preference/TextPreference;

    if-ne p1, v0, :cond_1

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->b:Lcom/miui/antivirus/activity/SettingsActivity;

    const-class v2, Lcom/miui/antivirus/whitelist/WhiteListActivity;

    invoke-direct {p1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/miui/common/base/ui/MiuiXPreferenceFragment;->startActivity(Landroid/content/Intent;)V

    return v1

    :cond_1
    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->j:Lmiuix/preference/TextPreference;

    if-ne p1, v0, :cond_2

    :try_start_0
    invoke-direct {p0}, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->K0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p1

    const-string v0, "SettingsActivity"

    const-string v1, "exception when update engine: "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->t:Landroidx/preference/Preference;

    if-ne p1, v0, :cond_5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->N:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v2, ""

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo2/b$b;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v3, Lo2/b$b;->a:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://api.sec.miui.com/res/docs/disclaimer/av/privacy?lang="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&on="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&sp=kddi"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/MiuiXPreferenceFragment;->startActivity(Landroid/content/Intent;)V

    const-string p1, "third_party_privacy"

    invoke-static {p1}, Lq2/b$a;->q(Ljava/lang/String;)V

    return v1

    :cond_5
    :goto_2
    const/4 p1, 0x0

    return p1
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    iget-boolean v0, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->L:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lw2/t;->A()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->E:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->L:Z

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportLoaderManager()Landroidx/loader/app/a;

    move-result-object v0

    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroidx/loader/app/a;->g(ILandroid/os/Bundle;Landroidx/loader/app/a$a;)Lq0/c;

    return-void
.end method

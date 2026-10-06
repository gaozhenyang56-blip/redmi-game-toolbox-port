.class public Lcom/miui/permcenter/permissions/AppPermissionsUseActivity$AppPermissionsUserFragment;
.super Lmiuix/preference/PreferenceFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/permcenter/permissions/AppPermissionsUseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppPermissionsUserFragment"
.end annotation


# instance fields
.field protected a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/miui/permcenter/permissions/AppPermissionsUseActivity$a;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmiuix/preference/PreferenceFragment;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/permcenter/permissions/AppPermissionsUseActivity$AppPermissionsUserFragment;->a:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/permcenter/permissions/AppPermissionsUseActivity$AppPermissionsUserFragment;->b:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/permcenter/permissions/AppPermissionsUseActivity$AppPermissionsUserFragment;->c:Ljava/util/List;

    return-void
.end method

.method private a0()V
    .locals 4

    iget-object v0, p0, Lcom/miui/permcenter/permissions/AppPermissionsUseActivity$AppPermissionsUserFragment;->a:Ljava/util/HashMap;

    new-instance v1, Lcom/miui/permcenter/permissions/AppPermissionsUseActivity$a;

    const v2, 0x7f120215

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f120216

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/miui/permcenter/permissions/AppPermissionsUseActivity$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "android.permission-group.CONTACTS"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/permcenter/permissions/AppPermissionsUseActivity$AppPermissionsUserFragment;->a:Ljava/util/HashMap;

    new-instance v1, Lcom/miui/permcenter/permissions/AppPermissionsUseActivity$a;

    const v2, 0x7f12021b

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f12021c

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/miui/permcenter/permissions/AppPermissionsUseActivity$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "android.permission-group.PHONE"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/permcenter/permissions/AppPermissionsUseActivity$AppPermissionsUserFragment;->a:Ljava/util/HashMap;

    new-instance v1, Lcom/miui/permcenter/permissions/AppPermissionsUseActivity$a;

    const v2, 0x7f120211

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f120212

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/miui/permcenter/permissions/AppPermissionsUseActivity$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "android.permission-group.CALENDAR"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/permcenter/permissions/AppPermissionsUseActivity$AppPermissionsUserFragment;->a:Ljava/util/HashMap;

    new-instance v1, Lcom/miui/permcenter/permissions/AppPermissionsUseActivity$a;

    const v2, 0x7f120213

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f120214

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/miui/permcenter/permissions/AppPermissionsUseActivity$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "android.permission-group.CAMERA"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/permcenter/permissions/AppPermissionsUseActivity$AppPermissionsUserFragment;->a:Ljava/util/HashMap;

    new-instance v1, Lcom/miui/permcenter/permissions/AppPermissionsUseActivity$a;

    const v2, 0x7f12021d

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f12021e

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/miui/permcenter/permissions/AppPermissionsUseActivity$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "android.permission-group.SENSORS"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/permcenter/permissions/AppPermissionsUseActivity$AppPermissionsUserFragment;->a:Ljava/util/HashMap;

    new-instance v1, Lcom/miui/permcenter/permissions/AppPermissionsUseActivity$a;

    const v2, 0x7f120217

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f120218

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/miui/permcenter/permissions/AppPermissionsUseActivity$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "android.permission-group.LOCATION"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/permcenter/permissions/AppPermissionsUseActivity$AppPermissionsUserFragment;->a:Ljava/util/HashMap;

    new-instance v1, Lcom/miui/permcenter/permissions/AppPermissionsUseActivity$a;

    const v2, 0x7f120221

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f120222

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/miui/permcenter/permissions/AppPermissionsUseActivity$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "android.permission-group.STORAGE"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/permcenter/permissions/AppPermissionsUseActivity$AppPermissionsUserFragment;->a:Ljava/util/HashMap;

    new-instance v1, Lcom/miui/permcenter/permissions/AppPermissionsUseActivity$a;

    const v2, 0x7f120219

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f12021a

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/miui/permcenter/permissions/AppPermissionsUseActivity$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "android.permission-group.MICROPHONE"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/permcenter/permissions/AppPermissionsUseActivity$AppPermissionsUserFragment;->a:Ljava/util/HashMap;

    new-instance v1, Lcom/miui/permcenter/permissions/AppPermissionsUseActivity$a;

    const v2, 0x7f12021f

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f120220

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/miui/permcenter/permissions/AppPermissionsUseActivity$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "android.permission-group.SMS"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/permcenter/permissions/AppPermissionsUseActivity$AppPermissionsUserFragment;->a:Ljava/util/HashMap;

    new-instance v1, Lcom/miui/permcenter/permissions/AppPermissionsUseActivity$a;

    const v2, 0x7f12000b

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f12000c

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/miui/permcenter/permissions/AppPermissionsUseActivity$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "android.permission-group.READ_MEDIA_VISUAL"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/permcenter/permissions/AppPermissionsUseActivity$AppPermissionsUserFragment;->a:Ljava/util/HashMap;

    new-instance v1, Lcom/miui/permcenter/permissions/AppPermissionsUseActivity$a;

    const v2, 0x7f120008

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f120009

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/miui/permcenter/permissions/AppPermissionsUseActivity$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "android.permission-group.READ_MEDIA_AURAL"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private b0()V
    .locals 6

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    iget-object v1, p0, Lcom/miui/permcenter/permissions/AppPermissionsUseActivity$AppPermissionsUserFragment;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/f;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/preference/f;->b()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    const v2, 0x7f120223

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setTitle(I)V

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    iget-object v2, p0, Lcom/miui/permcenter/permissions/AppPermissionsUseActivity$AppPermissionsUserFragment;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/permcenter/permissions/AppPermissionsUseActivity$AppPermissionsUserFragment;->a:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/permcenter/permissions/AppPermissionsUseActivity$a;

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v4, Landroidx/preference/Preference;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/f;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/preference/f;->b()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    iget-object v5, v3, Lcom/miui/permcenter/permissions/AppPermissionsUseActivity$a;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v3, v3, Lcom/miui/permcenter/permissions/AppPermissionsUseActivity$a;->b:Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v4}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/miui/permcenter/permissions/AppPermissionsUseActivity$AppPermissionsUserFragment;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/f;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/preference/f;->b()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    const v2, 0x7f120224

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setTitle(I)V

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/permcenter/permissions/AppPermissionsUseActivity$AppPermissionsUserFragment;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/permcenter/permissions/AppPermissionsUseActivity$AppPermissionsUserFragment;->a:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/permcenter/permissions/AppPermissionsUseActivity$a;

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance v3, Landroidx/preference/Preference;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/f;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/preference/f;->b()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    iget-object v4, v2, Lcom/miui/permcenter/permissions/AppPermissionsUseActivity$a;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v2, v2, Lcom/miui/permcenter/permissions/AppPermissionsUseActivity$a;->b:Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 7

    invoke-direct {p0}, Lcom/miui/permcenter/permissions/AppPermissionsUseActivity$AppPermissionsUserFragment;->a0()V

    const p1, 0x7f150056

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    const-string v0, "extra_pkgname"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_main_permission_groups"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_8

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    goto/16 :goto_3

    :cond_1
    const/4 p2, 0x0

    move v1, p2

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x4

    const/4 v5, 0x2

    if-eq v3, v4, :cond_2

    if-eq v3, v5, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "extra_main_permission_groups data format error:len="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "AppPermissionsUseActivity"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    :cond_2
    if-ne v3, v4, :cond_4

    aget-object v3, v2, v5

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "null"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/miui/permcenter/permissions/AppPermissionsUseActivity$AppPermissionsUserFragment;->a:Ljava/util/HashMap;

    aget-object v5, v2, p2

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/miui/permcenter/permissions/AppPermissionsUseActivity$AppPermissionsUserFragment;->a:Ljava/util/HashMap;

    aget-object v5, v2, p2

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/permcenter/permissions/AppPermissionsUseActivity$a;

    new-instance v5, Ljava/lang/String;

    iget-object v3, v3, Lcom/miui/permcenter/permissions/AppPermissionsUseActivity$a;->a:Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/miui/permcenter/permissions/AppPermissionsUseActivity$a;

    aget-object v4, v2, v4

    invoke-direct {v3, v5, v4}, Lcom/miui/permcenter/permissions/AppPermissionsUseActivity$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/miui/permcenter/permissions/AppPermissionsUseActivity$AppPermissionsUserFragment;->a:Ljava/util/HashMap;

    aget-object v5, v2, p2

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/miui/permcenter/permissions/AppPermissionsUseActivity$AppPermissionsUserFragment;->a:Ljava/util/HashMap;

    aget-object v6, v2, p2

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Lcom/miui/permcenter/permissions/AppPermissionsUseActivity$a;

    aget-object v5, v2, v5

    aget-object v4, v2, v4

    invoke-direct {v3, v5, v4}, Lcom/miui/permcenter/permissions/AppPermissionsUseActivity$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/miui/permcenter/permissions/AppPermissionsUseActivity$AppPermissionsUserFragment;->a:Ljava/util/HashMap;

    aget-object v5, v2, p2

    :goto_1
    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    aget-object v3, v2, p2

    iget-object v4, p0, Lcom/miui/permcenter/permissions/AppPermissionsUseActivity$AppPermissionsUserFragment;->a:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x1

    aget-object v2, v2, v4

    const-string v4, "1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/miui/permcenter/permissions/AppPermissionsUseActivity$AppPermissionsUserFragment;->b:Ljava/util/List;

    goto :goto_2

    :cond_5
    iget-object v2, p0, Lcom/miui/permcenter/permissions/AppPermissionsUseActivity$AppPermissionsUserFragment;->c:Ljava/util/List;

    :goto_2
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_7
    invoke-direct {p0}, Lcom/miui/permcenter/permissions/AppPermissionsUseActivity$AppPermissionsUserFragment;->b0()V

    return-void

    :cond_8
    :goto_3
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

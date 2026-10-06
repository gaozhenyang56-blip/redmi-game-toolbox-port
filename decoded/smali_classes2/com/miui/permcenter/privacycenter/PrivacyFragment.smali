.class public final Lcom/miui/permcenter/privacycenter/PrivacyFragment;
.super Lmiuix/preference/PreferenceFragment;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/permcenter/privacycenter/PrivacyFragment$a;
    }
.end annotation


# static fields
.field public static final g:Lcom/miui/permcenter/privacycenter/PrivacyFragment$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private a:Lmiuix/preference/PreferenceCategory;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final b:Loj/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Loj/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final d:Loj/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final e:Loj/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final f:Landroid/content/ComponentName;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/permcenter/privacycenter/PrivacyFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/permcenter/privacycenter/PrivacyFragment$a;-><init>(Lbk/g;)V

    sput-object v0, Lcom/miui/permcenter/privacycenter/PrivacyFragment;->g:Lcom/miui/permcenter/privacycenter/PrivacyFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lmiuix/preference/PreferenceFragment;-><init>()V

    new-instance v0, Lcom/miui/permcenter/privacycenter/PrivacyFragment$e;

    invoke-direct {v0, p0}, Lcom/miui/permcenter/privacycenter/PrivacyFragment$e;-><init>(Lcom/miui/permcenter/privacycenter/PrivacyFragment;)V

    invoke-static {v0}, Loj/g;->a(Lak/a;)Loj/f;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/permcenter/privacycenter/PrivacyFragment;->b:Loj/f;

    new-instance v0, Lcom/miui/permcenter/privacycenter/PrivacyFragment$d;

    invoke-direct {v0, p0}, Lcom/miui/permcenter/privacycenter/PrivacyFragment$d;-><init>(Lcom/miui/permcenter/privacycenter/PrivacyFragment;)V

    invoke-static {v0}, Loj/g;->a(Lak/a;)Loj/f;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/permcenter/privacycenter/PrivacyFragment;->c:Loj/f;

    new-instance v0, Lcom/miui/permcenter/privacycenter/PrivacyFragment$c;

    invoke-direct {v0, p0}, Lcom/miui/permcenter/privacycenter/PrivacyFragment$c;-><init>(Lcom/miui/permcenter/privacycenter/PrivacyFragment;)V

    invoke-static {v0}, Loj/g;->a(Lak/a;)Loj/f;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/permcenter/privacycenter/PrivacyFragment;->d:Loj/f;

    new-instance v0, Lcom/miui/permcenter/privacycenter/PrivacyFragment$f;

    invoke-direct {v0, p0}, Lcom/miui/permcenter/privacycenter/PrivacyFragment$f;-><init>(Lcom/miui/permcenter/privacycenter/PrivacyFragment;)V

    invoke-static {v0}, Loj/g;->a(Lak/a;)Loj/f;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/permcenter/privacycenter/PrivacyFragment;->e:Loj/f;

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.miui.securitycore"

    const-string v2, "com.miui.securityspace.ui.activity.PrivateSpaceMainActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/permcenter/privacycenter/PrivacyFragment;->f:Landroid/content/ComponentName;

    return-void
.end method

.method public static synthetic a0(Lcom/miui/permcenter/privacycenter/PrivacyFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/permcenter/privacycenter/PrivacyFragment;->l0(Lcom/miui/permcenter/privacycenter/PrivacyFragment;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static final synthetic b0(Lcom/miui/permcenter/privacycenter/PrivacyFragment;)Lcom/miui/permcenter/settings/model/OneImagePreference;
    .locals 0

    invoke-direct {p0}, Lcom/miui/permcenter/privacycenter/PrivacyFragment;->f0()Lcom/miui/permcenter/settings/model/OneImagePreference;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c0(Lcom/miui/permcenter/privacycenter/PrivacyFragment;)Landroidx/preference/PreferenceCategory;
    .locals 0

    invoke-direct {p0}, Lcom/miui/permcenter/privacycenter/PrivacyFragment;->g0()Landroidx/preference/PreferenceCategory;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic d0(Lcom/miui/permcenter/privacycenter/PrivacyFragment;)Landroidx/preference/PreferenceCategory;
    .locals 0

    invoke-direct {p0}, Lcom/miui/permcenter/privacycenter/PrivacyFragment;->h0()Landroidx/preference/PreferenceCategory;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic e0(Lcom/miui/permcenter/privacycenter/PrivacyFragment;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/permcenter/privacycenter/PrivacyFragment;->j0(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private final f0()Lcom/miui/permcenter/settings/model/OneImagePreference;
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/privacycenter/PrivacyFragment;->d:Loj/f;

    invoke-interface {v0}, Loj/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/permcenter/settings/model/OneImagePreference;

    return-object v0
.end method

.method private final g0()Landroidx/preference/PreferenceCategory;
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/privacycenter/PrivacyFragment;->c:Loj/f;

    invoke-interface {v0}, Loj/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    return-object v0
.end method

.method private final h0()Landroidx/preference/PreferenceCategory;
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/privacycenter/PrivacyFragment;->b:Loj/f;

    invoke-interface {v0}, Loj/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    return-object v0
.end method

.method private final i0()Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference;
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/privacycenter/PrivacyFragment;->e:Loj/f;

    invoke-interface {v0}, Loj/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference;

    return-object v0
.end method

.method private final j0(Ljava/util/List;Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/miui/permission/PermissionGroupInfo;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lcom/miui/permission/PermissionGroupInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/permcenter/privacycenter/PrivacyFragment;->a:Lmiuix/preference/PreferenceCategory;

    invoke-static {}, Lhc/a;->b()Landroid/content/Context;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v2

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/permission/PermissionGroupInfo;

    invoke-virtual {v5}, Lcom/miui/permission/PermissionGroupInfo;->getDisplayOrder()I

    move-result v6

    if-eq v3, v6, :cond_1

    invoke-virtual {v5}, Lcom/miui/permission/PermissionGroupInfo;->getDisplayOrder()I

    move-result v3

    new-instance v4, Lmiuix/preference/PreferenceCategory;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6, v2}, Lmiuix/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    if-eqz v0, :cond_1

    invoke-virtual {v0, v4}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_1
    invoke-virtual {v5}, Lcom/miui/permission/PermissionGroupInfo;->getId()I

    move-result v6

    const/16 v7, 0x40

    if-ne v6, v7, :cond_2

    invoke-static {}, Lcom/miui/permcenter/o;->w()Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_0

    :cond_2
    new-instance v6, Lmiuix/preference/TextPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v6, v8}, Lmiuix/preference/TextPreference;-><init>(Landroid/content/Context;)V

    const v8, 0x7f0e04a7

    invoke-virtual {v6, v8}, Landroidx/preference/Preference;->setLayoutResource(I)V

    invoke-static {}, Lhc/a;->b()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/miui/permission/PermissionGroupInfo;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v5}, Lcom/miui/permission/PermissionGroupInfo;->getIconRes()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v5}, Lcom/miui/permission/PermissionGroupInfo;->getId()I

    move-result v9

    if-eq v9, v7, :cond_4

    const/high16 v7, 0x10000

    if-eq v9, v7, :cond_3

    new-instance v7, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v9

    const-class v10, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;

    invoke-direct {v7, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v9, ":miui:starting_window_label"

    invoke-virtual {v7, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v9, "extra_permission_group"

    invoke-virtual {v7, v9, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v5, "extra_permission_name"

    invoke-virtual {v7, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    goto :goto_1

    :cond_3
    new-instance v5, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    const-class v8, Lcom/miui/permcenter/settings/OtherPermissionsActivity;

    invoke-direct {v5, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v7, "null cannot be cast to non-null type java.io.Serializable"

    invoke-static {p2, v7}, Lbk/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v7, p2

    check-cast v7, Ljava/io/Serializable;

    const-string v8, "other_permission"

    invoke-virtual {v5, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    new-instance v7, Lcom/miui/permcenter/AppPermissionInfo;

    invoke-direct {v7}, Lcom/miui/permcenter/AppPermissionInfo;-><init>()V

    const-string v8, "other"

    invoke-virtual {v7, v8}, Lcom/miui/permcenter/AppPermissionInfo;->setPackageName(Ljava/lang/String;)V

    const-string v8, "extra_permission_info"

    invoke-virtual {v5, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v5

    goto :goto_1

    :cond_4
    new-instance v5, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    const-class v8, Lcom/miui/devicepermission/editpermission/DevicePermissionSettingsActivity;

    invoke-direct {v5, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v7, "title"

    const-string v8, "from_security_center"

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    :goto_1
    invoke-virtual {v6, v5}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    if-eqz v4, :cond_0

    invoke-virtual {v4, v6}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method private final k0()V
    .locals 3

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1219ef

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120554

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lhc/b;

    invoke-direct {v1, p0}, Lhc/b;-><init>(Lcom/miui/permcenter/privacycenter/PrivacyFragment;)V

    const v2, 0x7f120779

    invoke-virtual {v0, v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method private static final l0(Lcom/miui/permcenter/privacycenter/PrivacyFragment;Landroid/content/DialogInterface;I)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    new-instance p2, Landroid/content/ComponentName;

    const-string v0, "com.android.fileexplorer"

    const-string v1, "com.android.fileexplorer.activity.PrivateFolderActivity"

    invoke-direct {p2, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private final m0()V
    .locals 8

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/v;

    move-result-object v0

    const-string v1, "viewLifecycleOwner"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Landroidx/lifecycle/w;->a(Landroidx/lifecycle/v;)Landroidx/lifecycle/o;

    move-result-object v2

    new-instance v5, Lcom/miui/permcenter/privacycenter/PrivacyFragment$b;

    const/4 v0, 0x0

    invoke-direct {v5, p0, v0}, Lcom/miui/permcenter/privacycenter/PrivacyFragment$b;-><init>(Lcom/miui/permcenter/privacycenter/PrivacyFragment;Ltj/d;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Llk/g;->b(Llk/i0;Ltj/g;Llk/k0;Lak/p;ILjava/lang/Object;)Llk/s1;

    return-void
.end method

.method private final n0()V
    .locals 5

    const-string v0, "permissions"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/miui/permcenter/privacycenter/PrivacyFragment;->a:Lmiuix/preference/PreferenceCategory;

    const-string v0, "key_flares_settings"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/TextPreference;

    if-eqz v0, :cond_0

    invoke-static {}, Ldb/c;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_0
    const-string v0, "key_oadi_settings"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    invoke-static {}, Lv9/d;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f120656

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    :cond_1
    const-string v0, "key_second_space"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/TextPreference;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "second_space_entrance_status"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_2

    move v3, v2

    goto :goto_0

    :cond_2
    move v3, v1

    :goto_0
    invoke-static {}, Lx4/z1;->r()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lx4/k0;->n()Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v3, :cond_3

    move v3, v2

    goto :goto_1

    :cond_3
    move v3, v1

    goto :goto_1

    :cond_4
    invoke-static {}, Lx4/k0;->n()Z

    move-result v3

    :goto_1
    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    iget-object v4, p0, Lcom/miui/permcenter/privacycenter/PrivacyFragment;->f:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v3

    if-nez v3, :cond_5

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_5
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    :cond_6
    const-string v0, "key_security_dir"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/TextPreference;

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/miui/permcenter/privacycenter/PrivacyFragment;->p0()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    :cond_7
    const-string v0, "privacy_input_mode"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/TextPreference;

    if-eqz v0, :cond_9

    invoke-static {}, Ldb/c;->d()Z

    move-result v3

    if-eqz v3, :cond_8

    sget-boolean v3, Lcom/miui/permcenter/o;->z:Z

    if-eqz v3, :cond_8

    move v1, v2

    :cond_8
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_9
    const-string v0, "privacy_invisible_mode"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/TextPreference;

    if-eqz v0, :cond_a

    sget-boolean v1, Lcom/miui/permcenter/o;->m:Z

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_a
    const-string v0, "key_pm_setting_more_info_title"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_2

    :cond_b
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    :goto_2
    const-string v0, "bottom_view"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/miui/permcenter/settings/model/PrivacyProtectionBottomPreference;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/miui/permcenter/settings/model/PrivacyProtectionBottomPreference;->e()V

    :cond_c
    return-void
.end method

.method private final o0()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/permcenter/privacycenter/PrivacyFragment;->i0()Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/permcenter/privacycenter/ui/RecentBehaviorPreference;->q()V

    :cond_0
    return-void
.end method

.method private final p0()Z
    .locals 4

    invoke-static {}, Lx4/z1;->r()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "FileExplorer/.safebox"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    array-length v0, v0

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-eqz v0, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    xor-int/lit8 v0, v1, 0x1

    return v0
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const p1, 0x7f15002e

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->addPreferencesFromResource(I)V

    invoke-direct {p0}, Lcom/miui/permcenter/privacycenter/PrivacyFragment;->n0()V

    invoke-direct {p0}, Lcom/miui/permcenter/privacycenter/PrivacyFragment;->h0()Landroidx/preference/PreferenceCategory;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setVisible(Z)V

    invoke-direct {p0}, Lcom/miui/permcenter/privacycenter/PrivacyFragment;->g0()Landroidx/preference/PreferenceCategory;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setVisible(Z)V

    invoke-direct {p0}, Lcom/miui/permcenter/privacycenter/PrivacyFragment;->f0()Lcom/miui/permcenter/settings/model/OneImagePreference;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/permcenter/privacycenter/PrivacyFragment;->m0()V

    invoke-super {p0, p1, p2, p3}, Lmiuix/preference/PreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    const-string p2, "super.onCreateView(infla\u2026iner, savedInstanceState)"

    invoke-static {p1, p2}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 3
    .param p1    # Landroidx/preference/Preference;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "preference"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v0, "key_security_dir"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/miui/permcenter/privacycenter/PrivacyFragment;->k0()V

    return v1

    :sswitch_1
    const-string v0, "key_oadi_settings"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    :try_start_0
    invoke-static {}, Lv9/d;->g()Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/miui/idprovider/ui/OAIDAppSettingsActivity;

    invoke-direct {p1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    :cond_2
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/miui/idprovider/ui/legacy/OAIDSettingsActivityLegacy;

    invoke-direct {p1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v1

    :sswitch_2
    const-string v0, "key_pm_setting_more_info_title"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    const-string p1, "https://privacy.miui.com"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return v1

    :sswitch_3
    const-string v0, "key_second_space"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iget-object v0, p0, Lcom/miui/permcenter/privacycenter/PrivacyFragment;->f:Landroid/content/ComponentName;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :try_start_1
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_1
    const/4 p1, 0x0

    return p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x159330a5 -> :sswitch_3
        -0x14d327a0 -> :sswitch_2
        0xb0bffab -> :sswitch_1
        0x302de8ee -> :sswitch_0
    .end sparse-switch
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    invoke-direct {p0}, Lcom/miui/permcenter/privacycenter/PrivacyFragment;->o0()V

    return-void
.end method

.class public abstract Lcom/miui/permcenter/permissions/PermissionsEditorBaseFragment;
.super Lmiuix/preference/PreferenceFragment;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmiuix/preference/PreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/permcenter/permissions/PermissionsEditorBaseFragment;->a:Z

    iput-boolean v0, p0, Lcom/miui/permcenter/permissions/PermissionsEditorBaseFragment;->b:Z

    return-void
.end method

.method static synthetic a0(Lcom/miui/permcenter/permissions/PermissionsEditorBaseFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/permcenter/permissions/PermissionsEditorBaseFragment;->b:Z

    return p1
.end method

.method static synthetic b0(Lcom/miui/permcenter/permissions/PermissionsEditorBaseFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/permcenter/permissions/PermissionsEditorBaseFragment;->a:Z

    return p0
.end method

.method static synthetic c0(Lcom/miui/permcenter/permissions/PermissionsEditorBaseFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/permcenter/permissions/PermissionsEditorBaseFragment;->a:Z

    return p1
.end method


# virtual methods
.method protected d0(Landroid/content/Context;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "com.android.permission.SHAKE"

    const-string v1, "com.android.permission.GET_INSTALLED_APPS"

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sget-boolean v3, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v3, :cond_3

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x1000

    invoke-virtual {v3, p2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p2

    iget-object v3, p2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v3, :cond_2

    array-length v3, v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "com.lbe.security.miui"

    if-eqz v3, :cond_1

    :try_start_1
    iget-object v3, v3, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-wide/high16 v6, 0x200000000000000L

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v6, p2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v6, v1}, Lcom/miui/permission/PermissionManager$ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, v0, v4}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-wide/high16 v3, 0x800000000000000L

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iget-object p2, p2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/miui/permission/PermissionManager$ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_2
    :goto_0
    return-object v2

    :catch_0
    move-exception p1

    const-string p2, "PermissionsEditorBaseFragment"

    const-string v0, "requestedGetInstallAppsPermission error"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_1
    return-object v2
.end method

.method protected e0(Landroidx/preference/PreferenceScreen;Landroid/content/Context;)V
    .locals 2

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/miui/permcenter/permissions/PermissionsEditorBaseFragment;->b:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/miui/permcenter/permissions/PermissionsEditorBaseFragment;->a:Z

    if-nez v0, :cond_1

    new-instance v0, Lcom/miui/permcenter/settings/model/OneImagePreference;

    invoke-direct {v0, p2}, Lcom/miui/permcenter/settings/model/OneImagePreference;-><init>(Landroid/content/Context;)V

    const p2, 0x7f0e0449

    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setLayoutResource(I)V

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/miui/permcenter/permissions/PermissionsEditorBaseFragment$a;

    invoke-direct {v1, p0, p2, p1}, Lcom/miui/permcenter/permissions/PermissionsEditorBaseFragment$a;-><init>(Lcom/miui/permcenter/permissions/PermissionsEditorBaseFragment;Landroid/content/Context;Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method protected f0(Landroid/content/Context;Landroidx/preference/PreferenceScreen;)V
    .locals 1

    new-instance v0, Lcom/miui/permcenter/settings/model/NoClickEffectPreference;

    invoke-direct {v0, p1}, Lcom/miui/permcenter/settings/model/NoClickEffectPreference;-><init>(Landroid/content/Context;)V

    const p1, 0x7f0e0457

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    invoke-virtual {p2, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/miui/permcenter/permissions/PermissionsEditorActivity;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/miui/permcenter/permissions/PermissionsEditorActivity;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/miui/permcenter/permissions/PermissionsEditorActivity;->d0(Z)V

    :cond_0
    return-void
.end method

.method protected g0(JLjava/util/HashMap;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    const-wide/high16 v0, 0x200000000000000L

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x800000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_2

    :cond_0
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1

    :cond_3
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

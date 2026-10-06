.class Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;


# direct methods
.method constructor <init>(Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment$a;->a:Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 5
    .param p1    # Landroidx/preference/Preference;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    instance-of v0, p1, Lcom/miui/permcenter/permissions/AppPermissionsEditorPreference;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/miui/permcenter/permissions/AppPermissionsEditorPreference;

    new-instance v0, Lcom/miui/permcenter/AppPermissionInfo;

    invoke-direct {v0}, Lcom/miui/permcenter/AppPermissionInfo;-><init>()V

    iget-object v1, p0, Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment$a;->a:Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;

    invoke-static {v1}, Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;->j0(Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/permcenter/AppPermissionInfo;->setPackageName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment$a;->a:Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;

    invoke-static {v1}, Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;->k0(Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1}, Lcom/miui/permcenter/AppPermissionInfo;->setUid(I)V

    iget-object v1, p0, Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment$a;->a:Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;

    invoke-static {v1}, Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;->l0(Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;)Lcom/miui/permcenter/permissions/c;

    move-result-object v1

    iget-object v1, v1, Lcom/miui/permcenter/permissions/c;->c:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/miui/permcenter/AppPermissionInfo;->setPermissionToAction(Ljava/util/HashMap;)V

    invoke-virtual {p1}, Lcom/miui/permcenter/permissions/AppPermissionsEditorPreference;->f()Lcom/miui/permission/PermissionGroupInfo;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment$a;->a:Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/miui/permcenter/permissions/PermissionAppsModifyActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Lhc/a;->b()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/miui/permission/PermissionGroupInfo;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "permission_name"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1}, Lcom/miui/permission/PermissionGroupInfo;->getRelativePermissionIds()Ljava/util/ArrayList;

    move-result-object v3

    const-string v4, "permission_id"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {v1}, Lcom/miui/permission/PermissionGroupInfo;->getId()I

    move-result v1

    const-string v3, "group_id"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/miui/permcenter/permissions/AppBasePermsEditorPreference;->d()I

    move-result p1

    const-string v1, "permission_action"

    invoke-virtual {v2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p1, p0, Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment$a;->a:Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;

    invoke-static {p1}, Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;->k0(Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;)Landroid/content/pm/PackageInfo;

    move-result-object p1

    const-string v1, "key_package_info"

    invoke-virtual {v2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "extra_permission_info"

    invoke-virtual {v2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment$a;->a:Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;

    invoke-virtual {p1, v2}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

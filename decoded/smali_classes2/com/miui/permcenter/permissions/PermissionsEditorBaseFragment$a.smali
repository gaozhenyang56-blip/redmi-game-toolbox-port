.class Lcom/miui/permcenter/permissions/PermissionsEditorBaseFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/permcenter/permissions/PermissionsEditorBaseFragment;->e0(Landroidx/preference/PreferenceScreen;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroidx/preference/PreferenceScreen;

.field final synthetic c:Lcom/miui/permcenter/permissions/PermissionsEditorBaseFragment;


# direct methods
.method constructor <init>(Lcom/miui/permcenter/permissions/PermissionsEditorBaseFragment;Landroid/content/Context;Landroidx/preference/PreferenceScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/permissions/PermissionsEditorBaseFragment$a;->c:Lcom/miui/permcenter/permissions/PermissionsEditorBaseFragment;

    iput-object p2, p0, Lcom/miui/permcenter/permissions/PermissionsEditorBaseFragment$a;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/miui/permcenter/permissions/PermissionsEditorBaseFragment$a;->b:Landroidx/preference/PreferenceScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionsEditorBaseFragment$a;->c:Lcom/miui/permcenter/permissions/PermissionsEditorBaseFragment;

    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionsEditorBaseFragment$a;->c:Lcom/miui/permcenter/permissions/PermissionsEditorBaseFragment;

    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_4

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionsEditorBaseFragment$a;->c:Lcom/miui/permcenter/permissions/PermissionsEditorBaseFragment;

    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionsEditorBaseFragment$a;->c:Lcom/miui/permcenter/permissions/PermissionsEditorBaseFragment;

    invoke-static {v0, v1}, Lcom/miui/permcenter/permissions/PermissionsEditorBaseFragment;->a0(Lcom/miui/permcenter/permissions/PermissionsEditorBaseFragment;Z)Z

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionsEditorBaseFragment$a;->c:Lcom/miui/permcenter/permissions/PermissionsEditorBaseFragment;

    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    instance-of v0, v0, Lmiuix/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionsEditorBaseFragment$a;->c:Lcom/miui/permcenter/permissions/PermissionsEditorBaseFragment;

    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    check-cast v0, Lmiuix/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/miui/permcenter/permissions/PermissionsEditorBaseFragment$a;->c:Lcom/miui/permcenter/permissions/PermissionsEditorBaseFragment;

    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v2, v1}, Lcom/miui/permcenter/permissions/PermissionsEditorBaseFragment;->c0(Lcom/miui/permcenter/permissions/PermissionsEditorBaseFragment;Z)Z

    :cond_1
    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionsEditorBaseFragment$a;->c:Lcom/miui/permcenter/permissions/PermissionsEditorBaseFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/permcenter/permissions/PermissionsEditorActivity;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionsEditorBaseFragment$a;->c:Lcom/miui/permcenter/permissions/PermissionsEditorBaseFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/miui/permcenter/permissions/PermissionsEditorActivity;

    iget-object v1, p0, Lcom/miui/permcenter/permissions/PermissionsEditorBaseFragment$a;->c:Lcom/miui/permcenter/permissions/PermissionsEditorBaseFragment;

    invoke-static {v1}, Lcom/miui/permcenter/permissions/PermissionsEditorBaseFragment;->b0(Lcom/miui/permcenter/permissions/PermissionsEditorBaseFragment;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/permcenter/permissions/PermissionsEditorActivity;->d0(Z)V

    :cond_2
    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionsEditorBaseFragment$a;->c:Lcom/miui/permcenter/permissions/PermissionsEditorBaseFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/permcenter/permissions/SecondPermissionAppsActivity;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionsEditorBaseFragment$a;->c:Lcom/miui/permcenter/permissions/PermissionsEditorBaseFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/miui/permcenter/permissions/SecondPermissionAppsActivity;

    iget-object v1, p0, Lcom/miui/permcenter/permissions/PermissionsEditorBaseFragment$a;->c:Lcom/miui/permcenter/permissions/PermissionsEditorBaseFragment;

    invoke-static {v1}, Lcom/miui/permcenter/permissions/PermissionsEditorBaseFragment;->b0(Lcom/miui/permcenter/permissions/PermissionsEditorBaseFragment;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/permcenter/permissions/SecondPermissionAppsActivity;->d0(Z)V

    :cond_3
    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionsEditorBaseFragment$a;->c:Lcom/miui/permcenter/permissions/PermissionsEditorBaseFragment;

    invoke-static {v0}, Lcom/miui/permcenter/permissions/PermissionsEditorBaseFragment;->b0(Lcom/miui/permcenter/permissions/PermissionsEditorBaseFragment;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Lcom/miui/permcenter/settings/model/OneImagePreference;

    iget-object v1, p0, Lcom/miui/permcenter/permissions/PermissionsEditorBaseFragment$a;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/permcenter/settings/model/OneImagePreference;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0e0449

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    iget-object v1, p0, Lcom/miui/permcenter/permissions/PermissionsEditorBaseFragment$a;->b:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_4
    return-void
.end method

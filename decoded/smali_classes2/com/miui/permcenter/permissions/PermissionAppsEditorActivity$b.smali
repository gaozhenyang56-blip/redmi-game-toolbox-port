.class Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiuix/view/l$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;


# direct methods
.method constructor <init>(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$b;->a:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    check-cast p1, Lmiuix/view/l;

    iget-object p2, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$b;->a:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;

    invoke-static {p2}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->o0(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;)Landroid/view/View;

    move-result-object p2

    invoke-interface {p1, p2}, Lmiuix/view/l;->setAnchorView(Landroid/view/View;)V

    iget-object p2, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$b;->a:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;

    invoke-static {p2}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->g0(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;)Lmiuix/recyclerview/widget/RecyclerView;

    move-result-object p2

    invoke-interface {p1, p2}, Lmiuix/view/l;->setResultView(Landroid/view/View;)V

    invoke-interface {p1}, Lmiuix/view/l;->getSearchInput()Landroid/widget/EditText;

    move-result-object p2

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$b;->a:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;

    invoke-static {v0}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->p0(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;)Landroid/text/TextWatcher;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance p2, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$b$a;

    invoke-direct {p2, p0}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$b$a;-><init>(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$b;)V

    invoke-interface {p1, p2}, Lmiuix/view/l;->addAnimationListener(Lmiuix/view/b;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1

    check-cast p1, Lmiuix/view/l;

    invoke-interface {p1}, Lmiuix/view/l;->getSearchInput()Landroid/widget/EditText;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$b;->a:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;

    invoke-static {v0}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->p0(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;)Landroid/text/TextWatcher;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p1, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$b;->a:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;

    invoke-virtual {p1}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->exitSearchMode()V

    iget-object p1, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$b;->a:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;

    invoke-static {p1}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->m0(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;)V

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

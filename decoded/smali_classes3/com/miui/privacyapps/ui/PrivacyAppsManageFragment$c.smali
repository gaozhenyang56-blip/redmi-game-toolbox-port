.class Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiuix/view/l$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;


# direct methods
.method constructor <init>(Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment$c;->a:Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;

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

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lmiuix/view/l;->setAnchorApplyExtraPaddingByUser(Z)V

    iget-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment$c;->a:Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;

    invoke-static {v0}, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;->i0(Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;)Landroid/view/View;

    move-result-object v0

    invoke-interface {p1, v0}, Lmiuix/view/l;->setAnchorView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment$c;->a:Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;

    invoke-static {v0}, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;->j0(Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;)Lmiuix/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-interface {p1, v0}, Lmiuix/view/l;->setAnimateView(Landroid/view/View;)V

    invoke-interface {p1}, Lmiuix/view/l;->getSearchInput()Landroid/widget/EditText;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment$c;->a:Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;

    invoke-static {v0}, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;->k0(Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;)Landroid/text/TextWatcher;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return p2
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1

    check-cast p1, Lmiuix/view/l;

    invoke-interface {p1}, Lmiuix/view/l;->getSearchInput()Landroid/widget/EditText;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment$c;->a:Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;

    invoke-static {v0}, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;->k0(Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;)Landroid/text/TextWatcher;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p1, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment$c;->a:Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;

    invoke-virtual {p1}, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;->exitSearchMode()V

    iget-object p1, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment$c;->a:Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;

    invoke-static {p1}, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;->m0(Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;)Lcom/miui/privacyapps/ui/a;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment$c;->a:Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;

    invoke-static {v0}, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;->l0(Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/privacyapps/ui/a;->o(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

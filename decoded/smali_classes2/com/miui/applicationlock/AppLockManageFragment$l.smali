.class Lcom/miui/applicationlock/AppLockManageFragment$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiuix/view/l$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/applicationlock/AppLockManageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/applicationlock/AppLockManageFragment;


# direct methods
.method constructor <init>(Lcom/miui/applicationlock/AppLockManageFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/AppLockManageFragment$l;->a:Lcom/miui/applicationlock/AppLockManageFragment;

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
    .locals 2

    check-cast p1, Lmiuix/view/l;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lmiuix/view/l;->setAnchorApplyExtraPaddingByUser(Z)V

    iget-object v0, p0, Lcom/miui/applicationlock/AppLockManageFragment$l;->a:Lcom/miui/applicationlock/AppLockManageFragment;

    invoke-static {v0}, Lcom/miui/applicationlock/AppLockManageFragment;->b0(Lcom/miui/applicationlock/AppLockManageFragment;)Landroid/view/View;

    move-result-object v0

    invoke-interface {p1, v0}, Lmiuix/view/l;->setAnchorView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/applicationlock/AppLockManageFragment$l;->a:Lcom/miui/applicationlock/AppLockManageFragment;

    invoke-static {v0}, Lcom/miui/applicationlock/AppLockManageFragment;->D0(Lcom/miui/applicationlock/AppLockManageFragment;)Lmiuix/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-interface {p1, v0}, Lmiuix/view/l;->setAnimateView(Landroid/view/View;)V

    invoke-interface {p1}, Lmiuix/view/l;->getSearchInput()Landroid/widget/EditText;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/applicationlock/AppLockManageFragment$l;->a:Lcom/miui/applicationlock/AppLockManageFragment;

    invoke-static {v0}, Lcom/miui/applicationlock/AppLockManageFragment;->M0(Lcom/miui/applicationlock/AppLockManageFragment;)Landroid/text/TextWatcher;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-array p1, p2, [Landroid/view/View;

    iget-object v0, p0, Lcom/miui/applicationlock/AppLockManageFragment$l;->a:Lcom/miui/applicationlock/AppLockManageFragment;

    invoke-static {v0}, Lcom/miui/applicationlock/AppLockManageFragment;->D0(Lcom/miui/applicationlock/AppLockManageFragment;)Lmiuix/recyclerview/widget/RecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    invoke-static {v1, p1}, Lx4/b;->b(Z[Landroid/view/View;)V

    return p2
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 3

    check-cast p1, Lmiuix/view/l;

    invoke-interface {p1}, Lmiuix/view/l;->getSearchInput()Landroid/widget/EditText;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/applicationlock/AppLockManageFragment$l;->a:Lcom/miui/applicationlock/AppLockManageFragment;

    invoke-static {v0}, Lcom/miui/applicationlock/AppLockManageFragment;->M0(Lcom/miui/applicationlock/AppLockManageFragment;)Landroid/text/TextWatcher;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p1, p0, Lcom/miui/applicationlock/AppLockManageFragment$l;->a:Lcom/miui/applicationlock/AppLockManageFragment;

    invoke-virtual {p1}, Lcom/miui/applicationlock/AppLockManageFragment;->exitSearchMode()V

    iget-object p1, p0, Lcom/miui/applicationlock/AppLockManageFragment$l;->a:Lcom/miui/applicationlock/AppLockManageFragment;

    invoke-static {p1}, Lcom/miui/applicationlock/AppLockManageFragment;->j0(Lcom/miui/applicationlock/AppLockManageFragment;)Lcom/miui/applicationlock/a;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/applicationlock/AppLockManageFragment$l;->a:Lcom/miui/applicationlock/AppLockManageFragment;

    invoke-static {v0}, Lcom/miui/applicationlock/AppLockManageFragment;->n0(Lcom/miui/applicationlock/AppLockManageFragment;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/miui/applicationlock/a;->w(Ljava/util/List;Z)V

    new-array p1, v1, [Landroid/view/View;

    iget-object v0, p0, Lcom/miui/applicationlock/AppLockManageFragment$l;->a:Lcom/miui/applicationlock/AppLockManageFragment;

    invoke-static {v0}, Lcom/miui/applicationlock/AppLockManageFragment;->D0(Lcom/miui/applicationlock/AppLockManageFragment;)Lmiuix/recyclerview/widget/RecyclerView;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, p1, v2

    invoke-static {v1, p1}, Lx4/b;->b(Z[Landroid/view/View;)V

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

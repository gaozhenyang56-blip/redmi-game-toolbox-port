.class Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiuix/view/l$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;

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

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;

    invoke-virtual {v0, p1, p2}, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->onCreateSearchView(Landroid/view/ActionMode;Landroid/view/Menu;)V

    check-cast p1, Lmiuix/view/l;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lmiuix/view/l;->setAnchorApplyExtraPaddingByUser(Z)V

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$2$1;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$2$1;-><init>(Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$2;)V

    invoke-interface {p1, v0}, Lmiuix/view/l;->addAnimationListener(Lmiuix/view/b;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;

    iget-object v0, v0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mSearchView:Landroid/view/View;

    invoke-interface {p1, v0}, Lmiuix/view/l;->setAnchorView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;

    iget-object v0, v0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mContainerLayout:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    invoke-interface {p1, v0}, Lmiuix/view/l;->setAnimateView(Landroid/view/View;)V

    invoke-interface {p1}, Lmiuix/view/l;->getSearchInput()Landroid/widget/EditText;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->access$000(Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;)Landroid/text/TextWatcher;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;

    iget-object p1, p1, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mAdapter:Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter;

    invoke-virtual {p1, p2}, Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter;->setInSearch(Z)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;

    invoke-static {p1, p2}, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->access$102(Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;Z)Z

    return p2
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->onDestroySearchView(Landroid/view/ActionMode;)V

    check-cast p1, Lmiuix/view/l;

    invoke-interface {p1}, Lmiuix/view/l;->getSearchInput()Landroid/widget/EditText;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->access$000(Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;)Landroid/text/TextWatcher;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->exitSearchMode()V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;

    iget-object p1, p1, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mAdapter:Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter;->setSearchInput(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;

    iget-object p1, p1, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mAdapter:Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter;->setInSearch(Z)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;

    invoke-static {p1, v0}, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->access$102(Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;Z)Z

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;

    iget-object v0, p1, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mAppList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mAdapter:Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter;

    invoke-virtual {p1, v0}, Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter;->setData(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

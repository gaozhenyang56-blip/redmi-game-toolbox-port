.class Lcom/miui/gamebooster/ui/WhiteListFragment$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiuix/view/l$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/ui/WhiteListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/ui/WhiteListFragment;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/ui/WhiteListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/WhiteListFragment$e;->a:Lcom/miui/gamebooster/ui/WhiteListFragment;

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
    .locals 0

    check-cast p1, Lmiuix/view/l;

    iget-object p2, p0, Lcom/miui/gamebooster/ui/WhiteListFragment$e;->a:Lcom/miui/gamebooster/ui/WhiteListFragment;

    invoke-static {p2}, Lcom/miui/gamebooster/ui/WhiteListFragment;->i0(Lcom/miui/gamebooster/ui/WhiteListFragment;)Landroid/view/View;

    move-result-object p2

    invoke-interface {p1, p2}, Lmiuix/view/l;->setAnchorView(Landroid/view/View;)V

    iget-object p2, p0, Lcom/miui/gamebooster/ui/WhiteListFragment$e;->a:Lcom/miui/gamebooster/ui/WhiteListFragment;

    invoke-static {p2}, Lcom/miui/gamebooster/ui/WhiteListFragment;->m0(Lcom/miui/gamebooster/ui/WhiteListFragment;)Lmiuix/recyclerview/widget/RecyclerView;

    move-result-object p2

    invoke-interface {p1, p2}, Lmiuix/view/l;->setAnimateView(Landroid/view/View;)V

    invoke-interface {p1}, Lmiuix/view/l;->getSearchInput()Landroid/widget/EditText;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/gamebooster/ui/WhiteListFragment$e;->a:Lcom/miui/gamebooster/ui/WhiteListFragment;

    invoke-static {p2}, Lcom/miui/gamebooster/ui/WhiteListFragment;->e0(Lcom/miui/gamebooster/ui/WhiteListFragment;)Landroid/text/TextWatcher;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2

    check-cast p1, Lmiuix/view/l;

    invoke-interface {p1}, Lmiuix/view/l;->getSearchInput()Landroid/widget/EditText;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/WhiteListFragment$e;->a:Lcom/miui/gamebooster/ui/WhiteListFragment;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/WhiteListFragment;->e0(Lcom/miui/gamebooster/ui/WhiteListFragment;)Landroid/text/TextWatcher;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p1, p0, Lcom/miui/gamebooster/ui/WhiteListFragment$e;->a:Lcom/miui/gamebooster/ui/WhiteListFragment;

    invoke-virtual {p1}, Lcom/miui/gamebooster/ui/WhiteListFragment;->exitSearchMode()V

    iget-object p1, p0, Lcom/miui/gamebooster/ui/WhiteListFragment$e;->a:Lcom/miui/gamebooster/ui/WhiteListFragment;

    invoke-static {p1}, Lcom/miui/gamebooster/ui/WhiteListFragment;->c0(Lcom/miui/gamebooster/ui/WhiteListFragment;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/gamebooster/ui/WhiteListFragment$e;->a:Lcom/miui/gamebooster/ui/WhiteListFragment;

    invoke-static {p1}, Lcom/miui/gamebooster/ui/WhiteListFragment;->c0(Lcom/miui/gamebooster/ui/WhiteListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/miui/gamebooster/ui/WhiteListFragment;->s0(Ljava/util/List;Z)V

    iget-object p1, p0, Lcom/miui/gamebooster/ui/WhiteListFragment$e;->a:Lcom/miui/gamebooster/ui/WhiteListFragment;

    invoke-static {p1}, Lcom/miui/gamebooster/ui/WhiteListFragment;->d0(Lcom/miui/gamebooster/ui/WhiteListFragment;)V

    :cond_0
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

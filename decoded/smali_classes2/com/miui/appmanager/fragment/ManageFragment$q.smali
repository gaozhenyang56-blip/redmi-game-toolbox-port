.class Lcom/miui/appmanager/fragment/ManageFragment$q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiuix/view/l$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/appmanager/fragment/ManageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "q"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/appmanager/fragment/ManageFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/appmanager/fragment/ManageFragment;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/appmanager/fragment/ManageFragment$q;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 3

    iget-object p2, p0, Lcom/miui/appmanager/fragment/ManageFragment$q;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/appmanager/fragment/ManageFragment;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    check-cast p1, Lmiuix/view/l;

    invoke-static {p2}, Lcom/miui/appmanager/fragment/ManageFragment;->J0(Lcom/miui/appmanager/fragment/ManageFragment;)Landroid/view/View;

    move-result-object v1

    invoke-interface {p1, v1}, Lmiuix/view/l;->setAnchorView(Landroid/view/View;)V

    invoke-static {p2}, Lcom/miui/appmanager/fragment/ManageFragment;->K0(Lcom/miui/appmanager/fragment/ManageFragment;)Lmiuix/springback/view/SpringBackLayout;

    move-result-object v1

    invoke-static {p2}, Lcom/miui/appmanager/fragment/ManageFragment;->J0(Lcom/miui/appmanager/fragment/ManageFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v1, v0, v2, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    invoke-static {p2}, Lcom/miui/appmanager/fragment/ManageFragment;->L0(Lcom/miui/appmanager/fragment/ManageFragment;)Lmiuix/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-interface {p1, v0}, Lmiuix/view/l;->setResultView(Landroid/view/View;)V

    invoke-interface {p1}, Lmiuix/view/l;->getSearchInput()Landroid/widget/EditText;

    move-result-object p1

    invoke-static {p2}, Lcom/miui/appmanager/fragment/ManageFragment;->M0(Lcom/miui/appmanager/fragment/ManageFragment;)Landroid/text/TextWatcher;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ManageFragment$q;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/appmanager/fragment/ManageFragment;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast p1, Lmiuix/view/l;

    invoke-interface {p1}, Lmiuix/view/l;->getSearchInput()Landroid/widget/EditText;

    move-result-object p1

    invoke-static {v0}, Lcom/miui/appmanager/fragment/ManageFragment;->M0(Lcom/miui/appmanager/fragment/ManageFragment;)Landroid/text/TextWatcher;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-static {v0}, Lcom/miui/appmanager/fragment/ManageFragment;->K0(Lcom/miui/appmanager/fragment/ManageFragment;)Lmiuix/springback/view/SpringBackLayout;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v0}, Lcom/miui/appmanager/fragment/ManageFragment;->exitSearchMode()V

    invoke-static {v0}, Lcom/miui/appmanager/fragment/ManageFragment;->d0(Lcom/miui/appmanager/fragment/ManageFragment;)V

    invoke-static {v0}, Lcom/miui/appmanager/fragment/ManageFragment;->l0(Lcom/miui/appmanager/fragment/ManageFragment;)V

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

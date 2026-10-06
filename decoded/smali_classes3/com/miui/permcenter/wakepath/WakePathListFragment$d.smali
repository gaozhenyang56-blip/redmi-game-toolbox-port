.class public final Lcom/miui/permcenter/wakepath/WakePathListFragment$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiuix/view/l$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/permcenter/wakepath/WakePathListFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/permcenter/wakepath/WakePathListFragment;


# direct methods
.method constructor <init>(Lcom/miui/permcenter/wakepath/WakePathListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/wakepath/WakePathListFragment$d;->a:Lcom/miui/permcenter/wakepath/WakePathListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1    # Landroid/view/ActionMode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MenuItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "actionMode"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "menuItem"

    invoke-static {p2, p1}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2
    .param p1    # Landroid/view/ActionMode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/Menu;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "actionMode"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "menu"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/miui/permcenter/wakepath/WakePathListFragment$d;->a:Lcom/miui/permcenter/wakepath/WakePathListFragment;

    check-cast p1, Lmiuix/view/l;

    invoke-static {p2, p1}, Lcom/miui/permcenter/wakepath/WakePathListFragment;->m0(Lcom/miui/permcenter/wakepath/WakePathListFragment;Lmiuix/view/l;)V

    iget-object p1, p0, Lcom/miui/permcenter/wakepath/WakePathListFragment$d;->a:Lcom/miui/permcenter/wakepath/WakePathListFragment;

    invoke-static {p1}, Lcom/miui/permcenter/wakepath/WakePathListFragment;->g0(Lcom/miui/permcenter/wakepath/WakePathListFragment;)Lmiuix/view/l;

    move-result-object p1

    invoke-static {p1}, Lbk/m;->b(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/permcenter/wakepath/WakePathListFragment$d;->a:Lcom/miui/permcenter/wakepath/WakePathListFragment;

    invoke-static {p2}, Lcom/miui/permcenter/wakepath/WakePathListFragment;->j0(Lcom/miui/permcenter/wakepath/WakePathListFragment;)Landroid/view/View;

    move-result-object v1

    invoke-interface {p1, v1}, Lmiuix/view/l;->setAnchorView(Landroid/view/View;)V

    invoke-static {p2}, Lcom/miui/permcenter/wakepath/WakePathListFragment;->l0(Lcom/miui/permcenter/wakepath/WakePathListFragment;)Lmiuix/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-interface {p1, v1}, Lmiuix/view/l;->setResultView(Landroid/view/View;)V

    invoke-interface {p1}, Lmiuix/view/l;->getSearchInput()Landroid/widget/EditText;

    move-result-object v1

    invoke-static {p2}, Lcom/miui/permcenter/wakepath/WakePathListFragment;->i0(Lcom/miui/permcenter/wakepath/WakePathListFragment;)Landroid/text/TextWatcher;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance p2, Lcom/miui/permcenter/wakepath/WakePathListFragment$d$a;

    invoke-direct {p2, v0}, Lcom/miui/permcenter/wakepath/WakePathListFragment$d$a;-><init>(Lcom/miui/permcenter/wakepath/WakePathListFragment;)V

    invoke-interface {p1, p2}, Lmiuix/view/l;->addAnimationListener(Lmiuix/view/b;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2
    .param p1    # Landroid/view/ActionMode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "actionMode"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/permcenter/wakepath/WakePathListFragment$d;->a:Lcom/miui/permcenter/wakepath/WakePathListFragment;

    invoke-static {p1}, Lcom/miui/permcenter/wakepath/WakePathListFragment;->g0(Lcom/miui/permcenter/wakepath/WakePathListFragment;)Lmiuix/view/l;

    move-result-object v0

    invoke-static {v0}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-interface {v0}, Lmiuix/view/l;->getSearchInput()Landroid/widget/EditText;

    move-result-object v0

    invoke-static {p1}, Lcom/miui/permcenter/wakepath/WakePathListFragment;->i0(Lcom/miui/permcenter/wakepath/WakePathListFragment;)Landroid/text/TextWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {p1}, Lcom/miui/permcenter/wakepath/WakePathListFragment;->exitSearchMode()V

    iget-object p1, p0, Lcom/miui/permcenter/wakepath/WakePathListFragment$d;->a:Lcom/miui/permcenter/wakepath/WakePathListFragment;

    invoke-static {p1}, Lcom/miui/permcenter/wakepath/WakePathListFragment;->k0(Lcom/miui/permcenter/wakepath/WakePathListFragment;)Lyc/s;

    move-result-object p1

    invoke-virtual {p1}, Lyc/s;->t()V

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1    # Landroid/view/ActionMode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/Menu;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "actionMode"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "menu"

    invoke-static {p2, p1}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

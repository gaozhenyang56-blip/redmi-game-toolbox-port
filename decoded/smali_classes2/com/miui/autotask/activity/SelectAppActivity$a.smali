.class Lcom/miui/autotask/activity/SelectAppActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiuix/view/l$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/autotask/activity/SelectAppActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/autotask/activity/SelectAppActivity;


# direct methods
.method constructor <init>(Lcom/miui/autotask/activity/SelectAppActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/autotask/activity/SelectAppActivity$a;->a:Lcom/miui/autotask/activity/SelectAppActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2

    check-cast p1, Lmiuix/view/l;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lmiuix/view/l;->setAnchorApplyExtraPaddingByUser(Z)V

    iget-object v0, p0, Lcom/miui/autotask/activity/SelectAppActivity$a;->a:Lcom/miui/autotask/activity/SelectAppActivity;

    invoke-static {v0}, Lcom/miui/autotask/activity/SelectAppActivity;->k0(Lcom/miui/autotask/activity/SelectAppActivity;)Landroid/view/View;

    move-result-object v0

    invoke-interface {p1, v0}, Lmiuix/view/l;->setAnchorView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/autotask/activity/SelectAppActivity$a;->a:Lcom/miui/autotask/activity/SelectAppActivity;

    const v1, 0x7f0b0a44

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-interface {p1, v0}, Lmiuix/view/l;->setAnimateView(Landroid/view/View;)V

    invoke-interface {p1}, Lmiuix/view/l;->getSearchInput()Landroid/widget/EditText;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/autotask/activity/SelectAppActivity$a;->a:Lcom/miui/autotask/activity/SelectAppActivity;

    invoke-static {v0}, Lcom/miui/autotask/activity/SelectAppActivity;->l0(Lcom/miui/autotask/activity/SelectAppActivity;)Landroid/text/TextWatcher;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return p2
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/autotask/activity/SelectAppActivity$a;->a:Lcom/miui/autotask/activity/SelectAppActivity;

    iget-object p1, p1, Lcom/miui/autotask/activity/SelectAppActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/miui/autotask/activity/SelectAppActivity$a;->a:Lcom/miui/autotask/activity/SelectAppActivity;

    iget-object v0, p1, Lcom/miui/autotask/activity/SelectAppActivity;->e:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/miui/autotask/activity/SelectAppActivity;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/miui/autotask/activity/SelectAppActivity$a;->a:Lcom/miui/autotask/activity/SelectAppActivity;

    invoke-static {p1}, Lcom/miui/autotask/activity/SelectAppActivity;->m0(Lcom/miui/autotask/activity/SelectAppActivity;)Lr3/u;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

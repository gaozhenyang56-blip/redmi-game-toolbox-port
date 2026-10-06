.class Lcom/miui/permcenter/autostart/AutoStartManagementActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiuix/view/l$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/permcenter/autostart/AutoStartManagementActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/permcenter/autostart/AutoStartManagementActivity;


# direct methods
.method constructor <init>(Lcom/miui/permcenter/autostart/AutoStartManagementActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity$b;->a:Lcom/miui/permcenter/autostart/AutoStartManagementActivity;

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

    iget-object p2, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity$b;->a:Lcom/miui/permcenter/autostart/AutoStartManagementActivity;

    invoke-static {p2}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->p0(Lcom/miui/permcenter/autostart/AutoStartManagementActivity;)Landroid/view/View;

    move-result-object p2

    invoke-interface {p1, p2}, Lmiuix/view/l;->setAnchorView(Landroid/view/View;)V

    iget-object p2, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity$b;->a:Lcom/miui/permcenter/autostart/AutoStartManagementActivity;

    invoke-static {p2}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->q0(Lcom/miui/permcenter/autostart/AutoStartManagementActivity;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    invoke-interface {p1, p2}, Lmiuix/view/l;->setResultView(Landroid/view/View;)V

    invoke-interface {p1}, Lmiuix/view/l;->getSearchInput()Landroid/widget/EditText;

    move-result-object p2

    iget-object v0, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity$b;->a:Lcom/miui/permcenter/autostart/AutoStartManagementActivity;

    invoke-static {v0}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->r0(Lcom/miui/permcenter/autostart/AutoStartManagementActivity;)Landroid/text/TextWatcher;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance p2, Lcom/miui/permcenter/autostart/AutoStartManagementActivity$b$a;

    invoke-direct {p2, p0}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity$b$a;-><init>(Lcom/miui/permcenter/autostart/AutoStartManagementActivity$b;)V

    invoke-interface {p1, p2}, Lmiuix/view/l;->addAnimationListener(Lmiuix/view/b;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1

    check-cast p1, Lmiuix/view/l;

    invoke-interface {p1}, Lmiuix/view/l;->getSearchInput()Landroid/widget/EditText;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity$b;->a:Lcom/miui/permcenter/autostart/AutoStartManagementActivity;

    invoke-static {v0}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->r0(Lcom/miui/permcenter/autostart/AutoStartManagementActivity;)Landroid/text/TextWatcher;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p1, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity$b;->a:Lcom/miui/permcenter/autostart/AutoStartManagementActivity;

    invoke-virtual {p1}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->exitSearchMode()V

    iget-object p1, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity$b;->a:Lcom/miui/permcenter/autostart/AutoStartManagementActivity;

    invoke-static {p1}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->n0(Lcom/miui/permcenter/autostart/AutoStartManagementActivity;)V

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

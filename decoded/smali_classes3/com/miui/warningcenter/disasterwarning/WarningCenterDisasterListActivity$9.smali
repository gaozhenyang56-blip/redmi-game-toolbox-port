.class Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiuix/view/l$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;


# direct methods
.method constructor <init>(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity$9;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;

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

    iget-object p2, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity$9;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;

    invoke-static {p2}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;->access$700(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;)Landroid/view/View;

    move-result-object p2

    invoke-interface {p1, p2}, Lmiuix/view/l;->setAnchorView(Landroid/view/View;)V

    iget-object p2, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity$9;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;

    invoke-static {p2}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;->access$1000(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;)Landroid/view/ViewGroup;

    move-result-object p2

    invoke-interface {p1, p2}, Lmiuix/view/l;->setAnimateView(Landroid/view/View;)V

    invoke-interface {p1}, Lmiuix/view/l;->getSearchInput()Landroid/widget/EditText;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity$9;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;

    invoke-static {p2}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;->access$1100(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;)Landroid/text/TextWatcher;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity$9;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;

    invoke-static {p1}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;->access$1200(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2

    check-cast p1, Lmiuix/view/l;

    invoke-interface {p1}, Lmiuix/view/l;->getSearchInput()Landroid/widget/EditText;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity$9;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;

    invoke-static {v0}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;->access$1100(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;)Landroid/text/TextWatcher;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity$9;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;

    invoke-virtual {p1}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;->exitSearchMode()V

    iget-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity$9;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;->access$300(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;Z)V

    new-instance p1, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity$9;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;

    invoke-static {v1}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;->access$100(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity$9;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;

    invoke-static {v1}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;->access$200(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;)Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListAdapter;->setList(Ljava/util/List;)V

    iget-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity$9;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;

    invoke-static {p1}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;->access$1200(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

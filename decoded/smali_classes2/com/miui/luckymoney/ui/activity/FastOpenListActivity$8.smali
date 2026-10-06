.class Lcom/miui/luckymoney/ui/activity/FastOpenListActivity$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiuix/view/l$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;


# direct methods
.method constructor <init>(Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity$8;->this$0:Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;

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

    iget-object p2, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity$8;->this$0:Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;

    invoke-static {p2}, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->access$1000(Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;)Landroid/view/View;

    move-result-object p2

    invoke-interface {p1, p2}, Lmiuix/view/l;->setAnchorView(Landroid/view/View;)V

    iget-object p2, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity$8;->this$0:Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;

    invoke-static {p2}, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->access$1100(Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;)Landroid/widget/LinearLayout;

    move-result-object p2

    invoke-interface {p1, p2}, Lmiuix/view/l;->setAnimateView(Landroid/view/View;)V

    invoke-interface {p1}, Lmiuix/view/l;->getSearchInput()Landroid/widget/EditText;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity$8;->this$0:Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;

    invoke-static {p2}, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->access$1200(Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;)Landroid/text/TextWatcher;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p1, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity$8;->this$0:Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;

    invoke-static {p1}, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->access$800(Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;)Lcom/miui/common/expandableview/WrapPinnedHeaderListView;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->setImportantForAccessibility(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1

    check-cast p1, Lmiuix/view/l;

    invoke-interface {p1}, Lmiuix/view/l;->getSearchInput()Landroid/widget/EditText;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity$8;->this$0:Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->access$1200(Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;)Landroid/text/TextWatcher;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p1, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity$8;->this$0:Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;

    invoke-virtual {p1}, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->exitSearchMode()V

    iget-object p1, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity$8;->this$0:Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;

    invoke-static {p1}, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->access$600(Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;)Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity$8;->this$0:Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;

    iget-object v0, v0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter;->updateData(Ljava/util/List;)V

    iget-object p1, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity$8;->this$0:Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;

    invoke-static {p1}, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->access$600(Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;)Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/common/expandableview/a;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity$8;->this$0:Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;

    invoke-static {p1}, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->access$800(Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;)Lcom/miui/common/expandableview/WrapPinnedHeaderListView;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

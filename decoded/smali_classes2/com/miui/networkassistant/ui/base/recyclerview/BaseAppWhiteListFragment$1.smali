.class Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment$1;->this$0:Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment$1;->this$0:Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;->access$000(Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;)Lcom/miui/networkassistant/ui/base/recyclerview/MultiRecycleViewHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/ui/base/recyclerview/MultiRecycleViewHelper;->getDataItem(I)Lcom/miui/networkassistant/ui/base/recyclerview/BaseEntity;

    move-result-object p1

    instance-of v0, p1, Lcom/miui/networkassistant/model/WhiteListItem;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast p1, Lcom/miui/networkassistant/model/WhiteListItem;

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/WhiteListItem;->isEnabled()Z

    move-result v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment$1;->this$0:Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;->access$000(Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;)Lcom/miui/networkassistant/ui/base/recyclerview/MultiRecycleViewHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/networkassistant/ui/base/recyclerview/MultiRecycleViewHelper;->getPairDate()Landroid/util/Pair;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_0
    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Lcom/miui/networkassistant/model/WhiteListItem;->setEnabled(Z)V

    iget-object v2, p0, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment$1;->this$0:Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;

    xor-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;->getGroupNameId(Z)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/miui/networkassistant/ui/base/recyclerview/BaseEntity;->setGroup(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment$1;->this$0:Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, p1, v0}, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;->onItemSwitched(Lcom/miui/networkassistant/model/WhiteListItem;Z)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment$1;->this$0:Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;->access$000(Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;)Lcom/miui/networkassistant/ui/base/recyclerview/MultiRecycleViewHelper;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/miui/networkassistant/ui/base/recyclerview/MultiRecycleViewHelper;->setData(Landroid/util/Pair;)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment$1;->this$0:Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;->access$000(Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;)Lcom/miui/networkassistant/ui/base/recyclerview/MultiRecycleViewHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/base/recyclerview/MultiRecycleViewHelper;->notifyDataSetChanged()V

    return-void
.end method

.method public onItemLongClick(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.class Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment$2;
.super Lcom/miui/common/base/asyn/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->resetTitle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;Landroidx/fragment/app/Fragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;

    invoke-direct {p0, p2}, Lcom/miui/common/base/asyn/b;-><init>(Landroidx/fragment/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public runOnUiThread()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->access$400(Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->access$500(Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;

    iget v2, v2, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mSlotNum:I

    if-nez v2, :cond_0

    const v2, 0x7f1206d8

    goto :goto_0

    :cond_0
    const v2, 0x7f1206d9

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "%s-%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;

    invoke-static {v1, v0}, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->access$600(Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;Ljava/lang/String;)V

    return-void
.end method

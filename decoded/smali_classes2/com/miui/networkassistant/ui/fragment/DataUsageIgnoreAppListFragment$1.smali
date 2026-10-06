.class Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mServiceConnected:Z

    invoke-static {p2}, Lcom/miui/networkassistant/service/ITrafficManageBinder$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/networkassistant/service/ITrafficManageBinder;

    move-result-object p2

    iput-object p2, p1, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;

    iget-object p2, p1, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->access$000(Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;)Landroid/content/Context;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getInstance(Landroid/content/Context;I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object p1

    aput-object p1, p2, v1

    sget-boolean p1, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_DUAL_CARD:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;

    iget-object p2, p1, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->access$100(Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getInstance(Landroid/content/Context;I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object p1

    aput-object p1, p2, v0

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;

    invoke-static {}, Lcom/miui/networkassistant/dual/Sim;->getCurrentOptSlotNum()I

    move-result p2

    iput p2, p1, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mSlotNum:I

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->resetTitle()V

    :cond_0
    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;

    new-instance p2, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment$1$1;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;

    invoke-direct {p2, p0, v0}, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment$1$1;-><init>(Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment$1;Landroidx/fragment/app/Fragment;)V

    invoke-static {p1, p2}, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->access$300(Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;Lcom/miui/common/base/asyn/b;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mServiceConnected:Z

    return-void
.end method

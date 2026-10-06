.class Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string v0, "uid_map"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;->access$000(Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;)Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->getFilteredAppInfosList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;->access$100(Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;)Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter;->setData(Ljava/util/ArrayList;Ljava/util/HashMap;)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/networkassistant/ui/base/ListFragment;->showEmptyView(Z)V

    :cond_2
    :goto_0
    return-void
.end method

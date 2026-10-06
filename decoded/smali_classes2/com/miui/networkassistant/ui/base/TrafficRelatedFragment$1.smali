.class Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment$1;->this$0:Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceConnected name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TrafficRelatedFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment$1;->this$0:Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;

    invoke-static {p2}, Lcom/miui/networkassistant/service/ITrafficManageBinder$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/networkassistant/service/ITrafficManageBinder;

    move-result-object p2

    iput-object p2, p1, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    const/4 p1, 0x0

    :try_start_0
    iget-object p2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment$1;->this$0:Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;

    iget-object v0, p2, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;->mTrafficCornBinders:[Lcom/miui/networkassistant/service/ITrafficCornBinder;

    iget-object p2, p2, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    invoke-interface {p2, p1}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->getTrafficCornBinder(I)Lcom/miui/networkassistant/service/ITrafficCornBinder;

    move-result-object p2

    aput-object p2, v0, p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    iget-object p2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment$1;->this$0:Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;

    iget-object v0, p2, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-static {p2}, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;->access$000(Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/miui/networkassistant/config/SimUserInfo;->getInstance(Landroid/content/Context;I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object p2

    aput-object p2, v0, p1

    sget-boolean p1, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_DUAL_CARD:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    :try_start_1
    iget-object p1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment$1;->this$0:Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;

    iget-object v0, p1, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;->mTrafficCornBinders:[Lcom/miui/networkassistant/service/ITrafficCornBinder;

    iget-object p1, p1, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    invoke-interface {p1, p2}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->getTrafficCornBinder(I)Lcom/miui/networkassistant/service/ITrafficCornBinder;

    move-result-object p1

    aput-object p1, v0, p2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    iget-object p1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment$1;->this$0:Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;

    iget-object v0, p1, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;->access$100(Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/miui/networkassistant/config/SimUserInfo;->getInstance(Landroid/content/Context;I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object p1

    aput-object p1, v0, p2

    :cond_0
    iget-object p1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment$1;->this$0:Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;

    iput-boolean p2, p1, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;->mServiceConnected:Z

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;->onTrafficManageServiceConnected()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceDisconnected name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TrafficRelatedFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment$1;->this$0:Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;->mServiceConnected:Z

    return-void
.end method

.class Lcom/miui/networkassistant/ui/NetworkAssistantActivity$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/networkassistant/ui/NetworkAssistantActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$8;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isVirtualSim(Landroid/content/Context;)Z
    .locals 5

    const-string v0, "android.provider.MiuiSettings$VirtualSim"

    invoke-static {v0}, Lbh/d$a;->d(Ljava/lang/String;)Lbh/d$a;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p1, v3, v4

    const-string p1, "getVirtualSimImsi"

    invoke-virtual {v0, p1, v2, v3}, Lbh/d$a;->c(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lbh/d$a;

    move-result-object p1

    invoke-virtual {p1}, Lbh/d$a;->m()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    return v1

    :cond_0
    return v4
.end method

.method private setMiSim(II)V
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$8;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->access$2300(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)[Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    move-result-object v0

    aget-object v0, v0, p1

    sget-object v1, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;->Init:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lcom/miui/networkassistant/utils/TelephonyUtil;->isMiMobileOperator(I)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eq p1, p2, :cond_0

    :try_start_0
    iget-object p2, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$8;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-static {p2}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->access$2300(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)[Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    move-result-object p2

    sget-object v0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;->Normal:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    aput-object v0, p2, p1

    iget-object p2, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$8;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-static {p2}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->access$2400(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/miui/networkassistant/config/SimUserInfo;->getInstance(Landroid/content/Context;I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/networkassistant/config/SimUserInfo;->isSimInserted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/miui/networkassistant/config/SimUserInfo;->isDailyCardSettingGuideEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MIMOBILE"

    invoke-virtual {p2, v0}, Lcom/miui/networkassistant/config/SimUserInfo;->saveOperator(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$8;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->access$1500(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)Lcom/miui/networkassistant/service/ITrafficManageBinder;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-interface {v0, v3, p1, v1, v2}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->startCorrection(ZIZI)Z

    invoke-virtual {p2, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->setDailyCardSettingGuideEnable(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public getVirtualSimSlotId(Landroid/content/Context;)I
    .locals 5

    const-string v0, "android.provider.MiuiSettings$VirtualSim"

    invoke-static {v0}, Lbh/d$a;->d(Ljava/lang/String;)Lbh/d$a;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const-string p1, "getVirtualSimSlotId"

    invoke-virtual {v0, p1, v2, v1}, Lbh/d$a;->c(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lbh/d$a;

    move-result-object p1

    invoke-virtual {p1}, Lbh/d$a;->i()I

    move-result p1

    return p1
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    const-string p1, "NAMainActivity"

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$8;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-static {p2}, Lcom/miui/networkassistant/service/ITrafficManageBinder$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/networkassistant/service/ITrafficManageBinder;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->access$1502(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;Lcom/miui/networkassistant/service/ITrafficManageBinder;)Lcom/miui/networkassistant/service/ITrafficManageBinder;

    const/4 p2, 0x1

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$8;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->access$400(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)[Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$8;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-static {v2}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->access$1600(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getInstance(Landroid/content/Context;I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$8;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-static {v2}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->access$1700(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$8;->isVirtualSim(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$8;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->access$1800(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$8;->getVirtualSimSlotId(Landroid/content/Context;)I

    move-result v1

    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$8;->setMiSim(II)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mTrafficManageConnection:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$8;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-static {v3}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->access$400(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)[Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/miui/networkassistant/config/SimUserInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$8;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-static {v2}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->access$1900(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)[Lcom/miui/networkassistant/service/ITrafficCornBinder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$8;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-static {v3}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->access$1500(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)Lcom/miui/networkassistant/service/ITrafficManageBinder;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->getTrafficCornBinder(I)Lcom/miui/networkassistant/service/ITrafficCornBinder;

    move-result-object v3

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$8;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-static {v2}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->access$1900(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)[Lcom/miui/networkassistant/service/ITrafficCornBinder;

    move-result-object v2

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$8;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-static {v2}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->access$1900(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)[Lcom/miui/networkassistant/service/ITrafficCornBinder;

    move-result-object v2

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$8;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-static {v3}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->access$2000(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)Lcom/miui/networkassistant/service/wrapper/TrafficCornBinderListenerHost;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/networkassistant/service/wrapper/TrafficCornBinderListenerHost;->getStub()Lcom/miui/networkassistant/service/ITrafficCornBinderListener;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/miui/networkassistant/service/ITrafficCornBinder;->registerLisener(Lcom/miui/networkassistant/service/ITrafficCornBinderListener;)V

    :cond_1
    iget-object v2, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$8;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-static {v2}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->access$2100(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$8;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-static {v2}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->access$400(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)[Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$8;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-static {v3}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->access$2200(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p2}, Lcom/miui/networkassistant/config/SimUserInfo;->getInstance(Landroid/content/Context;I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v3

    aput-object v3, v2, p2

    invoke-direct {p0, p2, v1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$8;->setMiSim(II)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$8;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->access$1900(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)[Lcom/miui/networkassistant/service/ITrafficCornBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$8;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-static {v2}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->access$1500(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)Lcom/miui/networkassistant/service/ITrafficManageBinder;

    move-result-object v2

    invoke-interface {v2, p2}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->getTrafficCornBinder(I)Lcom/miui/networkassistant/service/ITrafficCornBinder;

    move-result-object v2

    aput-object v2, v1, p2

    iget-object v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$8;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->access$1900(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)[Lcom/miui/networkassistant/service/ITrafficCornBinder;

    move-result-object v1

    aget-object v1, v1, p2

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$8;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->access$1900(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)[Lcom/miui/networkassistant/service/ITrafficCornBinder;

    move-result-object v1

    aget-object v1, v1, p2

    iget-object v2, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$8;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-static {v2}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->access$2000(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)Lcom/miui/networkassistant/service/wrapper/TrafficCornBinderListenerHost;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/networkassistant/service/wrapper/TrafficCornBinderListenerHost;->getStub()Lcom/miui/networkassistant/service/ITrafficCornBinderListener;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/miui/networkassistant/service/ITrafficCornBinder;->registerLisener(Lcom/miui/networkassistant/service/ITrafficCornBinderListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "register traffic corn"

    invoke-static {p1, v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$8;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->access$1900(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)[Lcom/miui/networkassistant/service/ITrafficCornBinder;

    move-result-object p1

    aget-object p1, p1, v0

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$8;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->access$1400(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)Lcom/miui/networkassistant/ui/NetworkAssistantActivity$UiHandler;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$8;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->access$1502(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;Lcom/miui/networkassistant/service/ITrafficManageBinder;)Lcom/miui/networkassistant/service/ITrafficManageBinder;

    return-void
.end method

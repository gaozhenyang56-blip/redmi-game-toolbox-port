.class Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$3;->this$0:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    iget-object p1, p0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$3;->this$0:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    invoke-static {p2}, Lcom/miui/networkassistant/service/ITrafficManageBinder$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/networkassistant/service/ITrafficManageBinder;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->access$202(Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;Lcom/miui/networkassistant/service/ITrafficManageBinder;)Lcom/miui/networkassistant/service/ITrafficManageBinder;

    :try_start_0
    iget-object p1, p0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$3;->this$0:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    invoke-static {p1}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->access$200(Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;)Lcom/miui/networkassistant/service/ITrafficManageBinder;

    move-result-object p2

    invoke-interface {p2}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->getAppMonitorBinder()Lcom/miui/networkassistant/service/IAppMonitorBinder;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->access$302(Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;Lcom/miui/networkassistant/service/IAppMonitorBinder;)Lcom/miui/networkassistant/service/IAppMonitorBinder;

    iget-object p1, p0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$3;->this$0:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    invoke-static {p1}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->access$300(Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;)Lcom/miui/networkassistant/service/IAppMonitorBinder;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$3;->this$0:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    invoke-static {p2}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->access$400(Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;)Lcom/miui/networkassistant/service/IAppMonitorBinderListener$Stub;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/miui/networkassistant/service/IAppMonitorBinder;->registerLisener(Lcom/miui/networkassistant/service/IAppMonitorBinderListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$3;->this$0:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->access$202(Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;Lcom/miui/networkassistant/service/ITrafficManageBinder;)Lcom/miui/networkassistant/service/ITrafficManageBinder;

    iget-object p1, p0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$3;->this$0:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    invoke-static {p1, v0}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->access$302(Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;Lcom/miui/networkassistant/service/IAppMonitorBinder;)Lcom/miui/networkassistant/service/IAppMonitorBinder;

    return-void
.end method

.class Lcom/milink/sdk/cast/v1/MiLinkCastClientV1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/milink/api/v1/MilinkClientManagerDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;


# direct methods
.method constructor <init>(Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;)V
    .locals 0

    iput-object p1, p0, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1$1;->this$0:Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 0

    return-void
.end method

.method public onConnected()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1$1;->this$0:Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;

    invoke-static {v0}, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;->access$000(Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;)Lcom/milink/sdk/cast/IMiLinkCastCallback;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Lcom/milink/sdk/cast/IMiLinkCastCallback;->onConnected(Lcom/milink/sdk/cast/MiLinkDevice;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onConnectedFailed(Lcom/milink/api/v1/type/ErrorCode;)V
    .locals 2

    :try_start_0
    iget-object p1, p0, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1$1;->this$0:Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;

    invoke-static {p1}, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;->access$000(Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;)Lcom/milink/sdk/cast/IMiLinkCastCallback;

    move-result-object p1

    const/4 v0, -0x1

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Lcom/milink/sdk/cast/IMiLinkCastCallback;->onFailure(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onDeviceFound(Ljava/lang/String;Ljava/lang/String;Lcom/milink/api/v1/type/DeviceType;)V
    .locals 1

    new-instance v0, Lcom/milink/sdk/cast/MiLinkDevice;

    invoke-direct {v0}, Lcom/milink/sdk/cast/MiLinkDevice;-><init>()V

    invoke-virtual {v0, p2}, Lcom/milink/sdk/cast/MiLinkDevice;->setName(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/milink/sdk/cast/MiLinkDevice;->setKey(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/milink/sdk/cast/MiLinkDevice;->setIp(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/milink/sdk/cast/MiLinkDevice;->setType(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1$1;->this$0:Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;

    invoke-static {p2}, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;->access$100(Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1$1;->this$0:Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;

    invoke-static {p1}, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;->access$200(Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;)Lcom/milink/sdk/client/MiLinkDeviceListener;

    move-result-object p1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1$1;->this$0:Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;

    invoke-static {p1}, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;->access$200(Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;)Lcom/milink/sdk/client/MiLinkDeviceListener;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/milink/sdk/cast/IMiLinkDeviceListener;->onFound(Lcom/milink/sdk/cast/MiLinkDevice;)V
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

.method public onDeviceLost(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/milink/sdk/cast/MiLinkDevice;

    invoke-direct {v0}, Lcom/milink/sdk/cast/MiLinkDevice;-><init>()V

    invoke-virtual {v0, p1}, Lcom/milink/sdk/cast/MiLinkDevice;->setKey(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/milink/sdk/cast/MiLinkDevice;->setIp(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1$1;->this$0:Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;

    invoke-static {v1}, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;->access$100(Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1$1;->this$0:Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;

    invoke-static {p1}, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;->access$200(Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;)Lcom/milink/sdk/client/MiLinkDeviceListener;

    move-result-object p1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1$1;->this$0:Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;

    invoke-static {p1}, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;->access$200(Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;)Lcom/milink/sdk/client/MiLinkDeviceListener;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/milink/sdk/cast/IMiLinkDeviceListener;->onLost(Lcom/milink/sdk/cast/MiLinkDevice;)V
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

.method public onDisconnected()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1$1;->this$0:Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;

    invoke-static {v0}, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;->access$000(Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;)Lcom/milink/sdk/cast/IMiLinkCastCallback;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Lcom/milink/sdk/cast/IMiLinkCastCallback;->onDisconnected(Lcom/milink/sdk/cast/MiLinkDevice;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onLoading()V
    .locals 1

    iget-object v0, p0, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1$1;->this$0:Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;

    invoke-static {v0}, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;->access$300(Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;)Lcom/milink/sdk/client/MiLinkMediaCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1$1;->this$0:Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;

    invoke-static {v0}, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;->access$300(Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;)Lcom/milink/sdk/client/MiLinkMediaCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/milink/sdk/cast/IMiLinkMediaCallback;->onLoading()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onNextAudio(Z)V
    .locals 1

    iget-object v0, p0, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1$1;->this$0:Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;

    invoke-static {v0}, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;->access$300(Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;)Lcom/milink/sdk/client/MiLinkMediaCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1$1;->this$0:Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;

    invoke-static {v0}, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;->access$300(Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;)Lcom/milink/sdk/client/MiLinkMediaCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/milink/sdk/cast/IMiLinkMediaCallback;->onNextAudio(Z)V
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

.method public onOpen()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1$1;->this$0:Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;

    invoke-static {v0}, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;->access$000(Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;)Lcom/milink/sdk/cast/IMiLinkCastCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/milink/sdk/cast/IMiLinkCastCallback;->onInit()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onPaused()V
    .locals 1

    iget-object v0, p0, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1$1;->this$0:Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;

    invoke-static {v0}, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;->access$300(Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;)Lcom/milink/sdk/client/MiLinkMediaCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1$1;->this$0:Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;

    invoke-static {v0}, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;->access$300(Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;)Lcom/milink/sdk/client/MiLinkMediaCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/milink/sdk/cast/IMiLinkMediaCallback;->onPaused()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onPlaying()V
    .locals 1

    iget-object v0, p0, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1$1;->this$0:Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;

    invoke-static {v0}, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;->access$300(Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;)Lcom/milink/sdk/client/MiLinkMediaCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1$1;->this$0:Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;

    invoke-static {v0}, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;->access$300(Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;)Lcom/milink/sdk/client/MiLinkMediaCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/milink/sdk/cast/IMiLinkMediaCallback;->onPlaying()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onPrevAudio(Z)V
    .locals 1

    iget-object v0, p0, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1$1;->this$0:Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;

    invoke-static {v0}, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;->access$300(Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;)Lcom/milink/sdk/client/MiLinkMediaCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1$1;->this$0:Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;

    invoke-static {v0}, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;->access$300(Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;)Lcom/milink/sdk/client/MiLinkMediaCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/milink/sdk/cast/IMiLinkMediaCallback;->onPrevAudio(Z)V
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

.method public onStopped()V
    .locals 1

    iget-object v0, p0, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1$1;->this$0:Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;

    invoke-static {v0}, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;->access$300(Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;)Lcom/milink/sdk/client/MiLinkMediaCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1$1;->this$0:Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;

    invoke-static {v0}, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;->access$300(Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;)Lcom/milink/sdk/client/MiLinkMediaCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/milink/sdk/cast/IMiLinkMediaCallback;->onStopped()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onVolume(I)V
    .locals 1

    iget-object v0, p0, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1$1;->this$0:Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;

    invoke-static {v0}, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;->access$300(Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;)Lcom/milink/sdk/client/MiLinkMediaCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1$1;->this$0:Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;

    invoke-static {v0}, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;->access$300(Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;)Lcom/milink/sdk/client/MiLinkMediaCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/milink/sdk/cast/IMiLinkMediaCallback;->onVolume(I)V
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

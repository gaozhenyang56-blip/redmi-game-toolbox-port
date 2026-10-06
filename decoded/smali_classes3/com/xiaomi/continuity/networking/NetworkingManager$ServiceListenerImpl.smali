.class Lcom/xiaomi/continuity/networking/NetworkingManager$ServiceListenerImpl;
.super Lcom/xiaomi/continuity/networking/IServiceListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/continuity/networking/NetworkingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServiceListenerImpl"
.end annotation


# instance fields
.field private listener:Lcom/xiaomi/continuity/networking/ServiceListener;


# direct methods
.method public constructor <init>(Lcom/xiaomi/continuity/networking/ServiceListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/continuity/networking/IServiceListener$Stub;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/continuity/networking/NetworkingManager$ServiceListenerImpl;->listener:Lcom/xiaomi/continuity/networking/ServiceListener;

    return-void
.end method


# virtual methods
.method public onDeviceChanged(Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;)V
    .locals 2

    const-string v0, "onDeviceChanged, deviceId:"

    invoke-static {v0}, Lcom/xiaomi/continuity/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TrustedDeviceManager"

    invoke-static {v1, v0}, Lcom/xiaomi/continuity/netbus/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/continuity/networking/NetworkingManager$ServiceListenerImpl;->listener:Lcom/xiaomi/continuity/networking/ServiceListener;

    invoke-interface {v0, p1}, Lcom/xiaomi/continuity/networking/ServiceListener;->onDeviceChanged(Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;)V

    return-void
.end method

.method public onServiceChanged(Lcom/xiaomi/continuity/networking/BusinessServiceInfo;Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;)V
    .locals 2

    const-string v0, "onServiceChanged, serviceName:"

    invoke-static {v0}, Lcom/xiaomi/continuity/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/continuity/networking/BusinessServiceInfo;->getServiceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", deviceId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TrustedDeviceManager"

    invoke-static {v1, v0}, Lcom/xiaomi/continuity/netbus/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/continuity/networking/NetworkingManager$ServiceListenerImpl;->listener:Lcom/xiaomi/continuity/networking/ServiceListener;

    invoke-interface {v0, p1, p2}, Lcom/xiaomi/continuity/networking/ServiceListener;->onServiceChanged(Lcom/xiaomi/continuity/networking/BusinessServiceInfo;Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;)V

    return-void
.end method

.method public onServiceOffline(Lcom/xiaomi/continuity/networking/BusinessServiceInfo;Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;I)V
    .locals 2

    const-string v0, "onServiceOffline, serviceName:"

    invoke-static {v0}, Lcom/xiaomi/continuity/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/continuity/networking/BusinessServiceInfo;->getServiceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", deviceId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", reason = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TrustedDeviceManager"

    invoke-static {v1, v0}, Lcom/xiaomi/continuity/netbus/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/continuity/networking/NetworkingManager$ServiceListenerImpl;->listener:Lcom/xiaomi/continuity/networking/ServiceListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/xiaomi/continuity/networking/ServiceListener;->onServiceOffline(Lcom/xiaomi/continuity/networking/BusinessServiceInfo;Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;I)V

    return-void
.end method

.method public onServiceOnline(Lcom/xiaomi/continuity/networking/BusinessServiceInfo;Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;)V
    .locals 2

    const-string v0, "onServiceOnline, serviceName:"

    invoke-static {v0}, Lcom/xiaomi/continuity/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/continuity/networking/BusinessServiceInfo;->getServiceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", deviceId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TrustedDeviceManager"

    invoke-static {v1, v0}, Lcom/xiaomi/continuity/netbus/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/continuity/networking/NetworkingManager$ServiceListenerImpl;->listener:Lcom/xiaomi/continuity/networking/ServiceListener;

    invoke-interface {v0, p1, p2}, Lcom/xiaomi/continuity/networking/ServiceListener;->onServiceOnline(Lcom/xiaomi/continuity/networking/BusinessServiceInfo;Lcom/xiaomi/continuity/networking/TrustedDeviceInfo;)V

    return-void
.end method

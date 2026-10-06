.class Lcom/milink/sdk/cast/v1/MiLinkCastClientV1$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/milink/api/v1/MiLinkClientMiracastConnectCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;->startConnect(Lcom/milink/sdk/cast/MiLinkDevice;I)I
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

    iput-object p1, p0, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1$4;->this$0:Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectFail(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object p1, p0, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1$4;->this$0:Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;

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

.method public onConnectSuccess(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object p1, p0, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1$4;->this$0:Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;

    invoke-static {p1}, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;->access$000(Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;)Lcom/milink/sdk/cast/IMiLinkCastCallback;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Lcom/milink/sdk/cast/IMiLinkCastCallback;->onConnected(Lcom/milink/sdk/cast/MiLinkDevice;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onConnecting(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onResult(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.class Lcom/milink/sdk/cast/v1/MiLinkCastClientV1$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/milink/api/v1/MiLinkClientScanListCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;->startWithUI(I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;

.field final synthetic val$flag:I


# direct methods
.method constructor <init>(Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;I)V
    .locals 0

    iput-object p1, p0, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1$3;->this$0:Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;

    iput p2, p0, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1$3;->val$flag:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectFail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object p1, p0, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1$3;->this$0:Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;

    invoke-static {p1}, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;->access$000(Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;)Lcom/milink/sdk/cast/IMiLinkCastCallback;

    move-result-object p1

    const/4 p2, -0x1

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lcom/milink/sdk/cast/IMiLinkCastCallback;->onFailure(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onConnectSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object p1, p0, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1$3;->this$0:Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;

    invoke-static {p1}, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;->access$000(Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;)Lcom/milink/sdk/cast/IMiLinkCastCallback;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lcom/milink/sdk/cast/IMiLinkCastCallback;->onConnected(Lcom/milink/sdk/cast/MiLinkDevice;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onSelectDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget p2, p0, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1$3;->val$flag:I

    const/4 p3, 0x2

    if-ne p2, p3, :cond_0

    iget-object p2, p0, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1$3;->this$0:Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;

    invoke-static {p2}, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;->access$500(Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;)Lcom/milink/api/v1/MilinkClientManager;

    move-result-object p2

    const/16 p3, 0x3e8

    invoke-virtual {p2, p1, p3}, Lcom/milink/api/v1/MilinkClientManager;->connect(Ljava/lang/String;I)Lcom/milink/api/v1/type/ReturnCode;

    :cond_0
    return-void
.end method

.class Lcom/milink/sdk/cast/v2/MiLinkCastClientV2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;


# direct methods
.method constructor <init>(Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;)V
    .locals 0

    iput-object p1, p0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2$1;->this$0:Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "ML::MiLinkCastClientV2"

    const-string v0, "onServiceConnected"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2$1;->this$0:Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;

    invoke-static {p2}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2$Stub;->asInterface(Landroid/os/IBinder;)Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;->access$002(Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;)Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;

    :try_start_0
    iget-object p1, p0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2$1;->this$0:Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;

    invoke-static {p1}, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;->access$000(Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;)Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;

    move-result-object p1

    iget-object p2, p0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2$1;->this$0:Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;

    invoke-static {p2}, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;->access$100(Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2$1;->this$0:Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;

    invoke-static {v0}, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;->access$200(Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;)Lcom/milink/sdk/cast/IMiLinkCastCallback;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;->init(Ljava/lang/String;Lcom/milink/sdk/cast/IMiLinkCastCallback;)V

    iget-object p1, p0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2$1;->this$0:Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;

    invoke-static {p1}, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;->access$000(Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;)Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;

    move-result-object p1

    iget-object p2, p0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2$1;->this$0:Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;

    invoke-static {p2}, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;->access$100(Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2$1;->this$0:Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;

    invoke-static {v0}, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;->access$300(Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;)Lcom/milink/sdk/cast/IMiLinkPhotoSource;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;->setPhotoSource(Ljava/lang/String;Lcom/milink/sdk/cast/IMiLinkPhotoSource;)V

    iget-object p1, p0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2$1;->this$0:Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;

    invoke-static {p1}, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;->access$000(Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;)Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;

    move-result-object p1

    iget-object p2, p0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2$1;->this$0:Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;

    invoke-static {p2}, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;->access$100(Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2$1;->this$0:Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;

    invoke-static {v0}, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;->access$400(Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;)Lcom/milink/sdk/cast/IMiLinkMediaCallback;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;->setMediaCallback(Ljava/lang/String;Lcom/milink/sdk/cast/IMiLinkMediaCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string p1, "ML::MiLinkCastClientV2"

    const-string v0, "onServiceDisconnected"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2$1;->this$0:Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;->access$002(Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;)Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;

    iget-object p1, p0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2$1;->this$0:Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;

    invoke-static {p1}, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;->access$200(Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;)Lcom/milink/sdk/cast/IMiLinkCastCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2$1;->this$0:Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;

    invoke-static {p1}, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;->access$200(Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;)Lcom/milink/sdk/cast/IMiLinkCastCallback;

    move-result-object p1

    const/4 v0, -0x2

    const/4 v1, 0x3

    invoke-interface {p1, v0, v1}, Lcom/milink/sdk/cast/IMiLinkCastCallback;->onFailure(II)V
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

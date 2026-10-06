.class Lcom/milink/sdk/client/PhotoCastClient$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/milink/sdk/client/PhotoCastClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/milink/sdk/client/PhotoCastClient;


# direct methods
.method constructor <init>(Lcom/milink/sdk/client/PhotoCastClient;)V
    .locals 0

    iput-object p1, p0, Lcom/milink/sdk/client/PhotoCastClient$1;->this$0:Lcom/milink/sdk/client/PhotoCastClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "ML::PhotoCastClient"

    const-string v0, "onServiceConnected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/milink/sdk/client/PhotoCastClient$1;->this$0:Lcom/milink/sdk/client/PhotoCastClient;

    invoke-static {p2}, Lcom/milink/sdk/photo/IPhotoCastService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/milink/sdk/photo/IPhotoCastService;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/milink/sdk/client/PhotoCastClient;->access$002(Lcom/milink/sdk/client/PhotoCastClient;Lcom/milink/sdk/photo/IPhotoCastService;)Lcom/milink/sdk/photo/IPhotoCastService;

    :try_start_0
    iget-object p2, p0, Lcom/milink/sdk/client/PhotoCastClient$1;->this$0:Lcom/milink/sdk/client/PhotoCastClient;

    invoke-static {p2}, Lcom/milink/sdk/client/PhotoCastClient;->access$100(Lcom/milink/sdk/client/PhotoCastClient;)Lcom/milink/sdk/photo/IPhotoCastDataSource;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/milink/sdk/client/PhotoCastClient$1;->this$0:Lcom/milink/sdk/client/PhotoCastClient;

    invoke-static {p2}, Lcom/milink/sdk/client/PhotoCastClient;->access$000(Lcom/milink/sdk/client/PhotoCastClient;)Lcom/milink/sdk/photo/IPhotoCastService;

    move-result-object p2

    iget-object v0, p0, Lcom/milink/sdk/client/PhotoCastClient$1;->this$0:Lcom/milink/sdk/client/PhotoCastClient;

    invoke-static {v0}, Lcom/milink/sdk/client/PhotoCastClient;->access$100(Lcom/milink/sdk/client/PhotoCastClient;)Lcom/milink/sdk/photo/IPhotoCastDataSource;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/milink/sdk/photo/IPhotoCastService;->setDataSource(Lcom/milink/sdk/photo/IPhotoCastDataSource;)I

    :cond_0
    iget-object p2, p0, Lcom/milink/sdk/client/PhotoCastClient$1;->this$0:Lcom/milink/sdk/client/PhotoCastClient;

    invoke-static {p2}, Lcom/milink/sdk/client/PhotoCastClient;->access$200(Lcom/milink/sdk/client/PhotoCastClient;)Lcom/milink/sdk/photo/IPhotoCastCallback;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/milink/sdk/client/PhotoCastClient$1;->this$0:Lcom/milink/sdk/client/PhotoCastClient;

    invoke-static {p2}, Lcom/milink/sdk/client/PhotoCastClient;->access$000(Lcom/milink/sdk/client/PhotoCastClient;)Lcom/milink/sdk/photo/IPhotoCastService;

    move-result-object p2

    iget-object v0, p0, Lcom/milink/sdk/client/PhotoCastClient$1;->this$0:Lcom/milink/sdk/client/PhotoCastClient;

    invoke-static {v0}, Lcom/milink/sdk/client/PhotoCastClient;->access$200(Lcom/milink/sdk/client/PhotoCastClient;)Lcom/milink/sdk/photo/IPhotoCastCallback;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/milink/sdk/photo/IPhotoCastService;->init(Lcom/milink/sdk/photo/IPhotoCastCallback;)I

    iget-object p2, p0, Lcom/milink/sdk/client/PhotoCastClient$1;->this$0:Lcom/milink/sdk/client/PhotoCastClient;

    invoke-static {p2}, Lcom/milink/sdk/client/PhotoCastClient;->access$200(Lcom/milink/sdk/client/PhotoCastClient;)Lcom/milink/sdk/photo/IPhotoCastCallback;

    move-result-object p2

    invoke-interface {p2}, Lcom/milink/sdk/photo/IPhotoCastCallback;->onInit()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string v0, "init error: "

    invoke-static {p1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "ML::PhotoCastClient"

    const-string v0, "onServiceDisconnected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/milink/sdk/client/PhotoCastClient$1;->this$0:Lcom/milink/sdk/client/PhotoCastClient;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/milink/sdk/client/PhotoCastClient;->access$002(Lcom/milink/sdk/client/PhotoCastClient;Lcom/milink/sdk/photo/IPhotoCastService;)Lcom/milink/sdk/photo/IPhotoCastService;

    return-void
.end method

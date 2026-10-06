.class Lcom/miui/bubbles/services/BubbleRemoteService$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/bubbles/services/BubbleRemoteService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/bubbles/services/BubbleRemoteService;


# direct methods
.method constructor <init>(Lcom/miui/bubbles/services/BubbleRemoteService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/bubbles/services/BubbleRemoteService$2;->this$0:Lcom/miui/bubbles/services/BubbleRemoteService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/miui/bubbles/services/BubbleRemoteService$2;Landroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/bubbles/services/BubbleRemoteService$2;->lambda$onServiceConnected$0(Landroid/content/ComponentName;)V

    return-void
.end method

.method private synthetic lambda$onServiceConnected$0(Landroid/content/ComponentName;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "binderDied: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BubbleRemoteService"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/bubbles/services/BubbleRemoteService$2;->this$0:Lcom/miui/bubbles/services/BubbleRemoteService;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/bubbles/settings/BubblesSettings;->getInstance(Landroid/content/Context;)Lcom/miui/bubbles/settings/BubblesSettings;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "binderDied"

    invoke-virtual {p1, v0, v1}, Lcom/miui/bubbles/settings/BubblesSettings;->notifyBubbleAppChanged(ZLjava/lang/String;)V

    iget-object p1, p0, Lcom/miui/bubbles/services/BubbleRemoteService$2;->this$0:Lcom/miui/bubbles/services/BubbleRemoteService;

    invoke-static {p1}, Lcom/miui/bubbles/services/BubbleRemoteService;->access$600(Lcom/miui/bubbles/services/BubbleRemoteService;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceConnected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BubbleRemoteService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/bubbles/services/BubbleRemoteService$2;->this$0:Lcom/miui/bubbles/services/BubbleRemoteService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/bubbles/services/BubbleRemoteService;->access$402(Lcom/miui/bubbles/services/BubbleRemoteService;Z)Z

    iget-object v0, p0, Lcom/miui/bubbles/services/BubbleRemoteService$2;->this$0:Lcom/miui/bubbles/services/BubbleRemoteService;

    invoke-static {p2}, Lcom/miui/bubbles/IUiProcessBinder$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/bubbles/IUiProcessBinder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/bubbles/services/BubbleRemoteService;->access$502(Lcom/miui/bubbles/services/BubbleRemoteService;Lcom/miui/bubbles/IUiProcessBinder;)Lcom/miui/bubbles/IUiProcessBinder;

    invoke-static {}, Lcom/miui/bubbles/services/BubblesNotificationHelper;->getInstance()Lcom/miui/bubbles/services/BubblesNotificationHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/bubbles/services/BubbleRemoteService$2;->this$0:Lcom/miui/bubbles/services/BubbleRemoteService;

    invoke-static {v1}, Lcom/miui/bubbles/services/BubbleRemoteService;->access$500(Lcom/miui/bubbles/services/BubbleRemoteService;)Lcom/miui/bubbles/IUiProcessBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/bubbles/services/BubblesNotificationHelper;->setUiProcessBinder(Lcom/miui/bubbles/IUiProcessBinder;)V

    :try_start_0
    new-instance v0, Lcom/miui/bubbles/services/a;

    invoke-direct {v0, p0, p1}, Lcom/miui/bubbles/services/a;-><init>(Lcom/miui/bubbles/services/BubbleRemoteService$2;Landroid/content/ComponentName;)V

    const/4 p1, 0x0

    invoke-interface {p2, v0, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
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

    iget-object v0, p0, Lcom/miui/bubbles/services/BubbleRemoteService$2;->this$0:Lcom/miui/bubbles/services/BubbleRemoteService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/bubbles/services/BubbleRemoteService;->access$402(Lcom/miui/bubbles/services/BubbleRemoteService;Z)Z

    iget-object v0, p0, Lcom/miui/bubbles/services/BubbleRemoteService$2;->this$0:Lcom/miui/bubbles/services/BubbleRemoteService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/bubbles/services/BubbleRemoteService;->access$502(Lcom/miui/bubbles/services/BubbleRemoteService;Lcom/miui/bubbles/IUiProcessBinder;)Lcom/miui/bubbles/IUiProcessBinder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceDisconnected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BubbleRemoteService"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

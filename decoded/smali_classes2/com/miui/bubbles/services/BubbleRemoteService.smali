.class public Lcom/miui/bubbles/services/BubbleRemoteService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field public static final ACTION_BUBBLE_REMOTE_SERVICE:Ljava/lang/String; = "com.miui.bubbles.BUBBLE_REMOTE_SERVICE"

.field private static final BUBBLE_REMOTE_HANDLER_THREAD:Ljava/lang/String; = "bubble_remote_handler_thread"

.field public static final TAG:Ljava/lang/String; = "BubbleRemoteService"


# instance fields
.field private iUiProcessBinder:Lcom/miui/bubbles/IUiProcessBinder;

.field private mBound:Z

.field private final mBubbleServiceConnection:Landroid/content/ServiceConnection;

.field private mCurrentUserId:I

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private final mIFreeformCallback:Lmiui/app/IFreeformCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/miui/bubbles/services/BubbleRemoteService$1;

    invoke-direct {v0, p0}, Lcom/miui/bubbles/services/BubbleRemoteService$1;-><init>(Lcom/miui/bubbles/services/BubbleRemoteService;)V

    iput-object v0, p0, Lcom/miui/bubbles/services/BubbleRemoteService;->mIFreeformCallback:Lmiui/app/IFreeformCallback;

    new-instance v0, Lcom/miui/bubbles/services/BubbleRemoteService$2;

    invoke-direct {v0, p0}, Lcom/miui/bubbles/services/BubbleRemoteService$2;-><init>(Lcom/miui/bubbles/services/BubbleRemoteService;)V

    iput-object v0, p0, Lcom/miui/bubbles/services/BubbleRemoteService;->mBubbleServiceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/bubbles/services/BubbleRemoteService;)I
    .locals 0

    iget p0, p0, Lcom/miui/bubbles/services/BubbleRemoteService;->mCurrentUserId:I

    return p0
.end method

.method static synthetic access$100(Lcom/miui/bubbles/services/BubbleRemoteService;)Z
    .locals 0

    invoke-direct {p0}, Lcom/miui/bubbles/services/BubbleRemoteService;->isFreeformAppsRunning()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/miui/bubbles/services/BubbleRemoteService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/bubbles/services/BubbleRemoteService;->bindBubblesService()V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/bubbles/services/BubbleRemoteService;)Landroid/content/ServiceConnection;
    .locals 0

    iget-object p0, p0, Lcom/miui/bubbles/services/BubbleRemoteService;->mBubbleServiceConnection:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method static synthetic access$402(Lcom/miui/bubbles/services/BubbleRemoteService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/bubbles/services/BubbleRemoteService;->mBound:Z

    return p1
.end method

.method static synthetic access$500(Lcom/miui/bubbles/services/BubbleRemoteService;)Lcom/miui/bubbles/IUiProcessBinder;
    .locals 0

    iget-object p0, p0, Lcom/miui/bubbles/services/BubbleRemoteService;->iUiProcessBinder:Lcom/miui/bubbles/IUiProcessBinder;

    return-object p0
.end method

.method static synthetic access$502(Lcom/miui/bubbles/services/BubbleRemoteService;Lcom/miui/bubbles/IUiProcessBinder;)Lcom/miui/bubbles/IUiProcessBinder;
    .locals 0

    iput-object p1, p0, Lcom/miui/bubbles/services/BubbleRemoteService;->iUiProcessBinder:Lcom/miui/bubbles/IUiProcessBinder;

    return-object p1
.end method

.method static synthetic access$600(Lcom/miui/bubbles/services/BubbleRemoteService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/bubbles/services/BubbleRemoteService;->bindBubblesServiceIfNeed()V

    return-void
.end method

.method private bindBubblesService()V
    .locals 4

    iget-boolean v0, p0, Lcom/miui/bubbles/services/BubbleRemoteService;->mBound:Z

    const-string v1, "BubbleRemoteService"

    if-eqz v0, :cond_0

    const-string v0, "Already bound"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.miui.bubbles.BUBBLES_SERVICE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/miui/bubbles/services/BubbleRemoteService;->mBubbleServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/bubbles/services/BubbleRemoteService;->mBound:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindBubblesService "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/miui/bubbles/services/BubbleRemoteService;->mBound:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "startBubblesServicesIfNeed: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/bubbles/services/BubbleRemoteService;->mBound:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/bubbles/services/BubbleRemoteService;->iUiProcessBinder:Lcom/miui/bubbles/IUiProcessBinder;

    :goto_0
    return-void
.end method

.method private bindBubblesServiceIfNeed()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/bubbles/services/BubbleRemoteService;->isFreeformAppsRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/bubbles/services/BubbleRemoteService;->bindBubblesService()V

    :cond_0
    return-void
.end method

.method private createHandlerThread()V
    .locals 2

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "bubble_remote_handler_thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/bubbles/services/BubbleRemoteService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private isFreeformAppsRunning()Z
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1e

    if-lt v0, v2, :cond_0

    invoke-virtual {p0}, Landroid/app/Service;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lmiui/app/MiuiFreeFormManager;->getAllFreeFormStackInfosOnDisplay(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-direct {p0}, Lcom/miui/bubbles/services/BubbleRemoteService;->createHandlerThread()V

    invoke-static {}, Lx4/z1;->y()I

    move-result v0

    iput v0, p0, Lcom/miui/bubbles/services/BubbleRemoteService;->mCurrentUserId:I

    iget-object v0, p0, Lcom/miui/bubbles/services/BubbleRemoteService;->mIFreeformCallback:Lmiui/app/IFreeformCallback;

    invoke-static {v0}, Lmiui/app/MiuiFreeFormManager;->registerFreeformCallback(Lmiui/app/IFreeformCallback;)V

    invoke-direct {p0}, Lcom/miui/bubbles/services/BubbleRemoteService;->bindBubblesServiceIfNeed()V

    const-string v0, "BubbleRemoteService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    iget-object v0, p0, Lcom/miui/bubbles/services/BubbleRemoteService;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/bubbles/services/BubbleRemoteService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    :cond_0
    iget-object v0, p0, Lcom/miui/bubbles/services/BubbleRemoteService;->mIFreeformCallback:Lmiui/app/IFreeformCallback;

    invoke-static {v0}, Lmiui/app/MiuiFreeFormManager;->unregisterFreeformCallback(Lmiui/app/IFreeformCallback;)V

    const-string v0, "BubbleRemoteService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.class public Lcom/miui/bubbles/services/BubblesService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/bubbles/services/BubblesService$IUiProcessBinderImpl;
    }
.end annotation


# static fields
.field public static final ACTION_BUBBLES_SERVICE:Ljava/lang/String; = "com.miui.bubbles.BUBBLES_SERVICE"

.field private static final FSG_STATE_CHANGE_ACTION:Ljava/lang/String; = "com.android.systemui.fsgesture"

.field private static final HANDLER_THREAD_NAME:Ljava/lang/String; = "bubbles_handler_thread"

.field public static final INTENT_SIDEBAR_LOCATION_CHANGED:Ljava/lang/String; = "INTENT_SIDEBAR_LOCATION_CHANGED"

.field private static final TAG:Ljava/lang/String; = "MiuiBubbles.BubblesServices"


# instance fields
.field private final mBubbleContentObserver:Landroid/database/ContentObserver;

.field private mBubblesManager:Lcom/miui/bubbles/BubblesManager;

.field private final mBubblesReceiver:Landroid/content/BroadcastReceiver;

.field private final mFocusModeObserver:Landroid/database/ContentObserver;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIUiProcessBinder:Lcom/miui/bubbles/services/BubblesService$IUiProcessBinderImpl;

.field private final mLocalReceiver:Landroid/content/BroadcastReceiver;

.field private final mScreenshotReceiver:Landroid/content/BroadcastReceiver;

.field private mUiHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/miui/bubbles/services/BubblesService$1;

    invoke-direct {v0, p0}, Lcom/miui/bubbles/services/BubblesService$1;-><init>(Lcom/miui/bubbles/services/BubblesService;)V

    iput-object v0, p0, Lcom/miui/bubbles/services/BubblesService;->mScreenshotReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/miui/bubbles/services/BubblesService$2;

    invoke-direct {v0, p0}, Lcom/miui/bubbles/services/BubblesService$2;-><init>(Lcom/miui/bubbles/services/BubblesService;)V

    iput-object v0, p0, Lcom/miui/bubbles/services/BubblesService;->mBubblesReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/miui/bubbles/services/BubblesService$3;

    iget-object v1, p0, Lcom/miui/bubbles/services/BubblesService;->mUiHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/miui/bubbles/services/BubblesService$3;-><init>(Lcom/miui/bubbles/services/BubblesService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/bubbles/services/BubblesService;->mFocusModeObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/miui/bubbles/services/BubblesService$4;

    iget-object v1, p0, Lcom/miui/bubbles/services/BubblesService;->mUiHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/miui/bubbles/services/BubblesService$4;-><init>(Lcom/miui/bubbles/services/BubblesService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/bubbles/services/BubblesService;->mBubbleContentObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/miui/bubbles/services/BubblesService$5;

    invoke-direct {v0, p0}, Lcom/miui/bubbles/services/BubblesService$5;-><init>(Lcom/miui/bubbles/services/BubblesService;)V

    iput-object v0, p0, Lcom/miui/bubbles/services/BubblesService;->mLocalReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/bubbles/services/BubblesService;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/bubbles/services/BubblesService;->handleScreenShot(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/bubbles/services/BubblesService;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/bubbles/services/BubblesService;->handleStatusBarExpand(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/bubbles/services/BubblesService;)Lcom/miui/bubbles/BubblesManager;
    .locals 0

    iget-object p0, p0, Lcom/miui/bubbles/services/BubblesService;->mBubblesManager:Lcom/miui/bubbles/BubblesManager;

    return-object p0
.end method

.method private handleScreenShot(Landroid/content/Intent;)V
    .locals 2

    :try_start_0
    const-string v0, "IsFinished"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iget-object v0, p0, Lcom/miui/bubbles/services/BubblesService;->mBubblesManager:Lcom/miui/bubbles/BubblesManager;

    invoke-virtual {v0, p1}, Lcom/miui/bubbles/BubblesManager;->onVisibilityChanged(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private handleStatusBarExpand(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "isEnter"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iget-object v0, p0, Lcom/miui/bubbles/services/BubblesService;->mBubblesManager:Lcom/miui/bubbles/BubblesManager;

    invoke-virtual {v0, p1}, Lcom/miui/bubbles/BubblesManager;->onStatusBarStateChanged(Z)V

    return-void
.end method

.method private initBubbleSettings()V
    .locals 1

    invoke-static {p0}, Lcom/miui/bubbles/settings/BubblesSettings;->getInstance(Landroid/content/Context;)Lcom/miui/bubbles/settings/BubblesSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/bubbles/settings/BubblesSettings;->initBubblesSettings()V

    return-void
.end method

.method private initExecutorAndHandler()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/bubbles/services/BubblesService;->mUiHandler:Landroid/os/Handler;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "bubbles_handler_thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/bubbles/services/BubblesService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private registerContentObservers()V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "settings_focus_mode_status"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/bubbles/services/BubblesService;->mFocusModeObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "all_app_workespace_status"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/bubbles/services/BubblesService;->mBubbleContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private registerReceiver()V
    .locals 9

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.systemui.fsgesture"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/bubbles/services/BubblesService;->mBubblesReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x2

    invoke-static {p0, v1, v0, v2}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/miui/bubbles/services/BubblesService;->mScreenshotReceiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v0, "miui.intent.TAKE_SCREENSHOT"

    invoke-direct {v5, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/miui/bubbles/services/BubblesService;->mUiHandler:Landroid/os/Handler;

    const-string v6, "miui.permission.USE_INTERNAL_GENERAL_API"

    const/4 v8, 0x2

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Lx4/v;->n(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "INTENT_SIDEBAR_LOCATION_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lr0/a;->b(Landroid/content/Context;)Lr0/a;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/bubbles/services/BubblesService;->mLocalReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lr0/a;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method private unregisterContentObservers()V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/bubbles/services/BubblesService;->mFocusModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/bubbles/services/BubblesService;->mBubbleContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private unregisterReceiver()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/miui/bubbles/services/BubblesService;->mBubblesReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/miui/bubbles/services/BubblesService;->mScreenshotReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-static {p0}, Lr0/a;->b(Landroid/content/Context;)Lr0/a;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/bubbles/services/BubblesService;->mLocalReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lr0/a;->e(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/bubbles/services/BubblesService;->mBubblesManager:Lcom/miui/bubbles/BubblesManager;

    invoke-virtual {p1, p2}, Lcom/miui/bubbles/BubblesManager;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p1, p0, Lcom/miui/bubbles/services/BubblesService;->mIUiProcessBinder:Lcom/miui/bubbles/services/BubblesService$IUiProcessBinderImpl;

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    const-string v0, "MiuiBubbles.BubblesServices"

    const-string v1, "onCreate: ..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-direct {p0}, Lcom/miui/bubbles/services/BubblesService;->initExecutorAndHandler()V

    invoke-direct {p0}, Lcom/miui/bubbles/services/BubblesService;->initBubbleSettings()V

    invoke-direct {p0}, Lcom/miui/bubbles/services/BubblesService;->registerReceiver()V

    new-instance v0, Lcom/miui/bubbles/BubblesManager;

    invoke-direct {v0, p0}, Lcom/miui/bubbles/BubblesManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/bubbles/services/BubblesService;->mBubblesManager:Lcom/miui/bubbles/BubblesManager;

    new-instance v0, Lcom/miui/bubbles/services/BubblesService$IUiProcessBinderImpl;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/bubbles/services/BubblesService$IUiProcessBinderImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/bubbles/services/BubblesService;->mIUiProcessBinder:Lcom/miui/bubbles/services/BubblesService$IUiProcessBinderImpl;

    invoke-direct {p0}, Lcom/miui/bubbles/services/BubblesService;->registerContentObservers()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    iget-object v0, p0, Lcom/miui/bubbles/services/BubblesService;->mBubblesManager:Lcom/miui/bubbles/BubblesManager;

    invoke-virtual {v0}, Lcom/miui/bubbles/BubblesManager;->onDestroy()V

    invoke-direct {p0}, Lcom/miui/bubbles/services/BubblesService;->unregisterReceiver()V

    invoke-direct {p0}, Lcom/miui/bubbles/services/BubblesService;->unregisterContentObservers()V

    iget-object v0, p0, Lcom/miui/bubbles/services/BubblesService;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/bubbles/services/BubblesService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    :cond_0
    const-string v0, "MiuiBubbles.BubblesServices"

    const-string v1, "onDestroy: ..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.class public Lcom/miui/bubbles/BubblesManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final SETTINGS_SHOW_HIDE_BUBBLE:Ljava/lang/String; = "all_app_workespace_status"


# instance fields
.field private final displayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mBubbleController:Lcom/miui/bubbles/BubbleController;

.field private final mContext:Landroid/content/Context;

.field private final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mFreeFormController:Lcom/miui/bubbles/controller/FreeFormController;

.field private final mKeyguardManager:Landroid/app/KeyguardManager;

.field private mNotificationController:Lcom/miui/bubbles/controller/NotificationController;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/miui/bubbles/BubblesManager$1;

    invoke-direct {v0, p0}, Lcom/miui/bubbles/BubblesManager$1;-><init>(Lcom/miui/bubbles/BubblesManager;)V

    iput-object v0, p0, Lcom/miui/bubbles/BubblesManager;->displayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iput-object p1, p0, Lcom/miui/bubbles/BubblesManager;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/miui/bubbles/BubblesManager;->setUpBubbles()V

    const-string v1, "keyguard"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    iput-object v1, p0, Lcom/miui/bubbles/BubblesManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    const-string v1, "display"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    iput-object p1, p0, Lcom/miui/bubbles/BubblesManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p1, v0, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/bubbles/BubblesManager;)Landroid/app/KeyguardManager;
    .locals 0

    iget-object p0, p0, Lcom/miui/bubbles/BubblesManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object p0
.end method

.method private isExitAllWorkspace()Z
    .locals 3

    iget-object v0, p0, Lcom/miui/bubbles/BubblesManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "all_app_workespace_status"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private setUpBubbles()V
    .locals 2

    iget-object v0, p0, Lcom/miui/bubbles/BubblesManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/bubbles/BubbleController;->create(Landroid/content/Context;)Lcom/miui/bubbles/BubbleController;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/bubbles/BubblesManager;->mBubbleController:Lcom/miui/bubbles/BubbleController;

    iget-object v0, p0, Lcom/miui/bubbles/BubblesManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/bubbles/controller/FreeFormController;->getInstance(Landroid/content/Context;)Lcom/miui/bubbles/controller/FreeFormController;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/bubbles/BubblesManager;->mFreeFormController:Lcom/miui/bubbles/controller/FreeFormController;

    iget-object v1, p0, Lcom/miui/bubbles/BubblesManager;->mBubbleController:Lcom/miui/bubbles/BubbleController;

    invoke-virtual {v0, v1}, Lcom/miui/bubbles/controller/FreeFormController;->init(Lcom/miui/bubbles/BubbleController;)V

    iget-object v0, p0, Lcom/miui/bubbles/BubblesManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/bubbles/controller/NotificationController;->getInstance(Landroid/content/Context;)Lcom/miui/bubbles/controller/NotificationController;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/bubbles/BubblesManager;->mNotificationController:Lcom/miui/bubbles/controller/NotificationController;

    iget-object v1, p0, Lcom/miui/bubbles/BubblesManager;->mBubbleController:Lcom/miui/bubbles/BubbleController;

    invoke-virtual {v0, v1}, Lcom/miui/bubbles/controller/NotificationController;->setBubbleController(Lcom/miui/bubbles/BubbleController;)V

    iget-object v0, p0, Lcom/miui/bubbles/BubblesManager;->mFreeFormController:Lcom/miui/bubbles/controller/FreeFormController;

    invoke-virtual {v0}, Lcom/miui/bubbles/controller/FreeFormController;->restorePinnedAppsIfNeed()V

    return-void
.end method

.method private shouldShow()Z
    .locals 1

    invoke-static {}, Lcom/miui/common/e;->d()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lx4/g0;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/bubbles/BubblesManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/bubbles/BubblesManager;->isExitAllWorkspace()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/bubbles/BubblesManager;->mBubbleController:Lcom/miui/bubbles/BubbleController;

    invoke-virtual {v0, p1}, Lcom/miui/bubbles/BubbleController;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/miui/bubbles/BubblesManager;->mFreeFormController:Lcom/miui/bubbles/controller/FreeFormController;

    invoke-virtual {v0}, Lcom/miui/bubbles/controller/FreeFormController;->destroy()V

    iget-object v0, p0, Lcom/miui/bubbles/BubblesManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/miui/bubbles/BubblesManager;->displayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    return-void
.end method

.method public onStatusBarStateChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/bubbles/BubblesManager;->mBubbleController:Lcom/miui/bubbles/BubbleController;

    invoke-virtual {v0}, Lcom/miui/bubbles/BubbleController;->asBubbles()Lcom/miui/bubbles/MiuiBubbles;

    move-result-object v0

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/miui/bubbles/BubblesManager;->shouldShow()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    invoke-interface {v0, p1}, Lcom/miui/bubbles/MiuiBubbles;->onStatusBarStateChanged(Z)V

    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/bubbles/BubblesManager;->mBubbleController:Lcom/miui/bubbles/BubbleController;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/miui/bubbles/BubblesManager;->shouldShow()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/miui/bubbles/BubbleController;->onBubbleVisibilityChanged(Z)V

    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public updateBubblesLocation()V
    .locals 1

    iget-object v0, p0, Lcom/miui/bubbles/BubblesManager;->mBubbleController:Lcom/miui/bubbles/BubbleController;

    invoke-virtual {v0}, Lcom/miui/bubbles/BubbleController;->updateBubblesLocation()V

    return-void
.end method

.method public updateBubblesState()V
    .locals 1

    iget-object v0, p0, Lcom/miui/bubbles/BubblesManager;->mBubbleController:Lcom/miui/bubbles/BubbleController;

    invoke-virtual {v0}, Lcom/miui/bubbles/BubbleController;->updateBubblesState()V

    return-void
.end method

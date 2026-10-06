.class public Lcom/miui/bubbles/BubbleController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/bubbles/BubbleController$MiuiBubblesImpl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MiuiBubbles.MBController"


# instance fields
.field private mAddedToWindowManager:Z

.field private final mBubbleData:Lcom/miui/bubbles/BubbleData;

.field private final mBubbleDataListener:Lcom/miui/bubbles/BubbleData$Listener;

.field private final mBubblePositioner:Lcom/miui/bubbles/BubblePositioner;

.field private final mContext:Landroid/content/Context;

.field private final mMainExecutor:Ljava/util/concurrent/Executor;

.field private final mMainHandler:Landroid/os/Handler;

.field private final mMiuiBubbles:Lcom/miui/bubbles/MiuiBubbles;

.field private mStackView:Lcom/miui/bubbles/BubbleStackView;

.field private final mWindowManager:Landroid/view/WindowManager;

.field private mWmLayoutParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/bubbles/BubbleData;Lcom/miui/bubbles/BubblePositioner;Ljava/util/concurrent/Executor;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/miui/bubbles/BubbleController$1;

    invoke-direct {v0, p0}, Lcom/miui/bubbles/BubbleController$1;-><init>(Lcom/miui/bubbles/BubbleController;)V

    iput-object v0, p0, Lcom/miui/bubbles/BubbleController;->mBubbleDataListener:Lcom/miui/bubbles/BubbleData$Listener;

    new-instance v1, Lcom/miui/bubbles/BubbleController$MiuiBubblesImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/bubbles/BubbleController$MiuiBubblesImpl;-><init>(Lcom/miui/bubbles/BubbleController;Lcom/miui/bubbles/BubbleController$1;)V

    iput-object v1, p0, Lcom/miui/bubbles/BubbleController;->mMiuiBubbles:Lcom/miui/bubbles/MiuiBubbles;

    iput-object p1, p0, Lcom/miui/bubbles/BubbleController;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/miui/bubbles/BubbleController;->mWindowManager:Landroid/view/WindowManager;

    iput-object p2, p0, Lcom/miui/bubbles/BubbleController;->mBubbleData:Lcom/miui/bubbles/BubbleData;

    iput-object p3, p0, Lcom/miui/bubbles/BubbleController;->mBubblePositioner:Lcom/miui/bubbles/BubblePositioner;

    iput-object p4, p0, Lcom/miui/bubbles/BubbleController;->mMainExecutor:Ljava/util/concurrent/Executor;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p1, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/miui/bubbles/BubbleController;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Lcom/miui/bubbles/BubbleData;->setListener(Lcom/miui/bubbles/BubbleData$Listener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/bubbles/BubbleController;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/bubbles/BubbleController;->ensureStackViewCreated()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/bubbles/BubbleController;)Lcom/miui/bubbles/BubbleStackView;
    .locals 0

    iget-object p0, p0, Lcom/miui/bubbles/BubbleController;->mStackView:Lcom/miui/bubbles/BubbleStackView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/miui/bubbles/BubbleController;Lcom/miui/bubbles/data/BubbleEntry;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/bubbles/BubbleController;->onEntryAdded(Lcom/miui/bubbles/data/BubbleEntry;)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/bubbles/BubbleController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/bubbles/BubbleController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/bubbles/BubbleController;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/bubbles/BubbleController;->updateStack()V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/bubbles/BubbleController;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/miui/bubbles/BubbleController;->mMainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$600(Lcom/miui/bubbles/BubbleController;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lcom/miui/bubbles/BubbleController;->mMainExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic access$700(Lcom/miui/bubbles/BubbleController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/bubbles/BubbleController;->onStatusBarStateChanged(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/miui/bubbles/BubbleController;Lcom/miui/bubbles/data/BubbleEntry;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/bubbles/BubbleController;->onEntryUpdated(Lcom/miui/bubbles/data/BubbleEntry;)V

    return-void
.end method

.method static synthetic access$900(Lcom/miui/bubbles/BubbleController;Lcom/miui/bubbles/data/BubbleEntry;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/bubbles/BubbleController;->onEntryRemoved(Lcom/miui/bubbles/data/BubbleEntry;)V

    return-void
.end method

.method private addToWindowManagerMaybe()V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/bubbles/BubbleController;->mStackView:Lcom/miui/bubbles/BubbleStackView;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/miui/bubbles/BubbleController;->mAddedToWindowManager:Z

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/16 v4, 0x7d2

    const v5, 0x1000028

    const/4 v6, -0x3

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/miui/bubbles/BubbleController;->mWmLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7eb

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_1

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/miui/bubbles/c;->a(Landroid/view/WindowManager$LayoutParams;I)V

    :cond_1
    iget-object v0, p0, Lcom/miui/bubbles/BubbleController;->mWmLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x10

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    new-instance v4, Landroid/os/Binder;

    invoke-direct {v4}, Landroid/os/Binder;-><init>()V

    iput-object v4, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iget-object v0, p0, Lcom/miui/bubbles/BubbleController;->mWmLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, p0, Lcom/miui/bubbles/BubbleController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/bubbles/BubbleController;->mWmLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const-string v4, "MiuiBubbles"

    invoke-virtual {v0, v4}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/bubbles/BubbleController;->mWmLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0x30

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-lt v1, v2, :cond_2

    const/4 v1, 0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    :cond_2
    invoke-direct {p0}, Lcom/miui/bubbles/BubbleController;->setTrustedOverlay()V

    iget-object v0, p0, Lcom/miui/bubbles/BubbleController;->mWmLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/2addr v1, v3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/miui/bubbles/BubbleController;->mAddedToWindowManager:Z

    iget-object v0, p0, Lcom/miui/bubbles/BubbleController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/miui/bubbles/BubbleController;->mStackView:Lcom/miui/bubbles/BubbleStackView;

    iget-object v2, p0, Lcom/miui/bubbles/BubbleController;->mWmLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/miui/bubbles/BubbleController;->mBubblePositioner:Lcom/miui/bubbles/BubblePositioner;

    invoke-virtual {v0}, Lcom/miui/bubbles/BubblePositioner;->update()V

    const-string v0, "MiuiBubbles.MBController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addToWindowManagerMaybe: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/bubbles/BubbleController;->mStackView:Lcom/miui/bubbles/BubbleStackView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/miui/bubbles/BubbleController;
    .locals 4

    new-instance v0, Lcom/miui/bubbles/BubblePositioner;

    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-direct {v0, p0, v1}, Lcom/miui/bubbles/BubblePositioner;-><init>(Landroid/content/Context;Landroid/view/WindowManager;)V

    new-instance v1, Lcom/miui/bubbles/utils/BubblesExecutor;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, v2}, Lcom/miui/bubbles/utils/BubblesExecutor;-><init>(Landroid/os/Handler;)V

    new-instance v2, Lcom/miui/bubbles/BubbleData;

    invoke-direct {v2}, Lcom/miui/bubbles/BubbleData;-><init>()V

    new-instance v3, Lcom/miui/bubbles/BubbleController;

    invoke-direct {v3, p0, v2, v0, v1}, Lcom/miui/bubbles/BubbleController;-><init>(Landroid/content/Context;Lcom/miui/bubbles/BubbleData;Lcom/miui/bubbles/BubblePositioner;Ljava/util/concurrent/Executor;)V

    return-object v3
.end method

.method private ensureStackViewCreated()V
    .locals 3

    iget-object v0, p0, Lcom/miui/bubbles/BubbleController;->mStackView:Lcom/miui/bubbles/BubbleStackView;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/bubbles/BubbleStackView;

    iget-object v1, p0, Lcom/miui/bubbles/BubbleController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/bubbles/BubbleController;->mBubbleData:Lcom/miui/bubbles/BubbleData;

    invoke-direct {v0, v1, p0, v2}, Lcom/miui/bubbles/BubbleStackView;-><init>(Landroid/content/Context;Lcom/miui/bubbles/BubbleController;Lcom/miui/bubbles/BubbleData;)V

    iput-object v0, p0, Lcom/miui/bubbles/BubbleController;->mStackView:Lcom/miui/bubbles/BubbleStackView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/miui/bubbles/BubbleController;->addToWindowManagerMaybe()V

    return-void
.end method

.method private inflateAndAddOrUpdate(Lcom/miui/bubbles/Bubble;)V
    .locals 3

    invoke-direct {p0}, Lcom/miui/bubbles/BubbleController;->ensureStackViewCreated()V

    iget-object v0, p0, Lcom/miui/bubbles/BubbleController;->mBubbleData:Lcom/miui/bubbles/BubbleData;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/miui/bubbles/d;

    invoke-direct {v1, v0}, Lcom/miui/bubbles/d;-><init>(Lcom/miui/bubbles/BubbleData;)V

    iget-object v0, p0, Lcom/miui/bubbles/BubbleController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/bubbles/BubbleController;->mStackView:Lcom/miui/bubbles/BubbleStackView;

    invoke-virtual {p1, v1, v0, p0, v2}, Lcom/miui/bubbles/Bubble;->inflate(Lcom/miui/bubbles/BubbleViewInfoTask$Callback;Landroid/content/Context;Lcom/miui/bubbles/BubbleController;Lcom/miui/bubbles/BubbleStackView;)V

    return-void
.end method

.method public static isRunningInFreeformMode(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_1

    invoke-static {p0}, Lcom/miui/blur/sdk/backdrop/i;->a(Landroid/content/Context;)Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getDisplayId()I

    move-result p0

    goto :goto_0

    :cond_1
    move p0, v0

    :goto_0
    invoke-static {p0}, Lmiui/app/MiuiFreeFormManager;->getAllFreeFormStackInfosOnDisplay(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    iget-object v1, v1, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isRunningInFreeformMode: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MiuiBubbles.MBController"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    return v0
.end method

.method private onEntryAdded(Lcom/miui/bubbles/data/BubbleEntry;)V
    .locals 0
    .param p1    # Lcom/miui/bubbles/data/BubbleEntry;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/miui/bubbles/BubbleController;->updateBubble(Lcom/miui/bubbles/data/BubbleEntry;)V

    return-void
.end method

.method private onEntryRemoved(Lcom/miui/bubbles/data/BubbleEntry;)V
    .locals 1

    invoke-virtual {p1}, Lcom/miui/bubbles/data/BubbleEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/miui/bubbles/BubbleController;->removeBubble(Ljava/lang/String;I)V

    return-void
.end method

.method private onEntryUpdated(Lcom/miui/bubbles/data/BubbleEntry;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/bubbles/BubbleController;->updateBubble(Lcom/miui/bubbles/data/BubbleEntry;)V

    return-void
.end method

.method private onStatusBarStateChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/bubbles/BubbleController;->mStackView:Lcom/miui/bubbles/BubbleStackView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/miui/bubbles/BubbleStackView;->onStatusBarStateChanged(Z)V

    :cond_0
    return-void
.end method

.method private removeFromWindowManagerMaybe()V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/bubbles/BubbleController;->mAddedToWindowManager:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/miui/bubbles/BubbleController;->mAddedToWindowManager:Z

    iget-object v0, p0, Lcom/miui/bubbles/BubbleController;->mStackView:Lcom/miui/bubbles/BubbleStackView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/miui/bubbles/BubbleController;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    const-string v0, "MiuiBubbles.MBController"

    const-string v1, "StackView added to WindowManager, but was null when removing!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private setTrustedOverlay()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/miui/bubbles/BubbleController;->mWmLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const-class v1, Ljava/lang/Void;

    const-string v2, "setTrustedOverlay"

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3, v4}, Lbh/f;->b(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private updateBubble(Lcom/miui/bubbles/data/BubbleEntry;)V
    .locals 2
    .param p1    # Lcom/miui/bubbles/data/BubbleEntry;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/miui/bubbles/BubbleController;->mBubbleData:Lcom/miui/bubbles/BubbleData;

    iget-object v1, p0, Lcom/miui/bubbles/BubbleController;->mMainExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, p1, v1}, Lcom/miui/bubbles/BubbleData;->getOrCreateBubble(Lcom/miui/bubbles/data/BubbleEntry;Ljava/util/concurrent/Executor;)Lcom/miui/bubbles/Bubble;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/bubbles/BubbleController;->inflateAndAddOrUpdate(Lcom/miui/bubbles/Bubble;)V

    return-void
.end method

.method private updateStack()V
    .locals 2

    iget-object v0, p0, Lcom/miui/bubbles/BubbleController;->mStackView:Lcom/miui/bubbles/BubbleStackView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/miui/bubbles/BubbleController;->hasBubbles()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/bubbles/BubbleController;->mStackView:Lcom/miui/bubbles/BubbleStackView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/bubbles/BubbleController;->mStackView:Lcom/miui/bubbles/BubbleStackView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/miui/bubbles/BubbleController;->removeFromWindowManagerMaybe()V

    :goto_0
    return-void
.end method


# virtual methods
.method public asBubbles()Lcom/miui/bubbles/MiuiBubbles;
    .locals 1

    iget-object v0, p0, Lcom/miui/bubbles/BubbleController;->mMiuiBubbles:Lcom/miui/bubbles/MiuiBubbles;

    return-object v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 1

    const-string v0, "===\tMiuiBubbles dump start\t==="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/bubbles/BubbleController;->mStackView:Lcom/miui/bubbles/BubbleStackView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/miui/bubbles/BubbleStackView;->dump(Ljava/io/PrintWriter;)V

    :cond_0
    const-string v0, "===\tMiuiBubbles dump end\t==="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getBubblesWithPackageAndUserId(Ljava/lang/String;I)Lcom/miui/bubbles/Bubble;
    .locals 1

    iget-object v0, p0, Lcom/miui/bubbles/BubbleController;->mBubbleData:Lcom/miui/bubbles/BubbleData;

    invoke-virtual {v0, p1, p2}, Lcom/miui/bubbles/BubbleData;->getBubbleWithPackageAndUserId(Ljava/lang/String;I)Lcom/miui/bubbles/Bubble;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/bubbles/Bubble;->getIconView()Lcom/miui/bubbles/views/BubbleImageView;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/miui/bubbles/Bubble;->getIconView()Lcom/miui/bubbles/views/BubbleImageView;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/bubbles/views/BubbleImageView;->isEdgeState()Z

    move-result p2

    if-eqz p2, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPositioner()Lcom/miui/bubbles/BubblePositioner;
    .locals 1

    iget-object v0, p0, Lcom/miui/bubbles/BubbleController;->mBubblePositioner:Lcom/miui/bubbles/BubblePositioner;

    return-object v0
.end method

.method public hasBubbles()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/bubbles/BubbleController;->mStackView:Lcom/miui/bubbles/BubbleStackView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/bubbles/BubbleController;->mBubbleData:Lcom/miui/bubbles/BubbleData;

    invoke-virtual {v0}, Lcom/miui/bubbles/BubbleData;->hasBubbles()Z

    move-result v0

    return v0
.end method

.method public onBubbleVisibilityChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/bubbles/BubbleController;->mStackView:Lcom/miui/bubbles/BubbleStackView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/miui/bubbles/BubbleStackView;->onScreenStatusChanged(Z)V

    :cond_0
    return-void
.end method

.method public removeBubble(Ljava/lang/String;I)V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-object v0, p0, Lcom/miui/bubbles/BubbleController;->mBubbleData:Lcom/miui/bubbles/BubbleData;

    invoke-virtual {v0, p1}, Lcom/miui/bubbles/BubbleData;->hasBubbleInStackWithKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/bubbles/BubbleController;->mBubbleData:Lcom/miui/bubbles/BubbleData;

    invoke-virtual {v0, p1, p2}, Lcom/miui/bubbles/BubbleData;->dismissBubbleWithKey(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public updateBubblesLocation()V
    .locals 1

    iget-object v0, p0, Lcom/miui/bubbles/BubbleController;->mStackView:Lcom/miui/bubbles/BubbleStackView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/bubbles/BubbleStackView;->updateBubblesLocation()V

    :cond_0
    return-void
.end method

.method public updateBubblesState()V
    .locals 4

    iget-object v0, p0, Lcom/miui/bubbles/BubbleController;->mBubbleData:Lcom/miui/bubbles/BubbleData;

    invoke-virtual {v0}, Lcom/miui/bubbles/BubbleData;->getBubbles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/bubbles/Bubble;

    iget-object v2, p0, Lcom/miui/bubbles/BubbleController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/miui/bubbles/Bubble;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/bubbles/BubbleController;->isRunningInFreeformMode(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/miui/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lcom/miui/bubbles/BubbleController;->removeBubble(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    return-void
.end method

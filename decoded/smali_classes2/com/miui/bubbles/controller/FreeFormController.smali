.class public Lcom/miui/bubbles/controller/FreeFormController;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "MiuiBubbles.FFC"

.field private static sInstance:Lcom/miui/bubbles/controller/FreeFormController;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private final mIFreeformCallback:Lmiui/app/IFreeformCallback;

.field private mIsRegistered:Z

.field private mMiuiBubbleController:Lcom/miui/bubbles/BubbleController;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/miui/bubbles/controller/FreeFormController$1;

    invoke-direct {v0, p0}, Lcom/miui/bubbles/controller/FreeFormController$1;-><init>(Lcom/miui/bubbles/controller/FreeFormController;)V

    iput-object v0, p0, Lcom/miui/bubbles/controller/FreeFormController;->mIFreeformCallback:Lmiui/app/IFreeformCallback;

    iput-object p1, p0, Lcom/miui/bubbles/controller/FreeFormController;->mContext:Landroid/content/Context;

    invoke-static {}, Lx4/z1;->y()I

    move-result p1

    iput p1, p0, Lcom/miui/bubbles/controller/FreeFormController;->mCurrentUserId:I

    return-void
.end method

.method static synthetic access$000(Lcom/miui/bubbles/controller/FreeFormController;)I
    .locals 0

    iget p0, p0, Lcom/miui/bubbles/controller/FreeFormController;->mCurrentUserId:I

    return p0
.end method

.method static synthetic access$100(Lcom/miui/bubbles/controller/FreeFormController;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/bubbles/controller/FreeFormController;->isInvalidUserEvent(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/miui/bubbles/controller/FreeFormController;ILmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/bubbles/controller/FreeFormController;->isFreeFromToPin(ILmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/miui/bubbles/controller/FreeFormController;)Lcom/miui/bubbles/BubbleController;
    .locals 0

    iget-object p0, p0, Lcom/miui/bubbles/controller/FreeFormController;->mMiuiBubbleController:Lcom/miui/bubbles/BubbleController;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/bubbles/controller/FreeFormController;ILmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/bubbles/controller/FreeFormController;->isFreeFromUnpinned(ILmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;)Z

    move-result p0

    return p0
.end method

.method private getContextDisplayId()I
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/miui/bubbles/controller/FreeFormController;->mContext:Landroid/content/Context;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v2, "getDisplayId"

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3, v4}, Lbh/f;->e(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getContextDisplayId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiBubbles.FFC"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/miui/bubbles/controller/FreeFormController;
    .locals 2

    const-class v0, Lcom/miui/bubbles/controller/FreeFormController;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/bubbles/controller/FreeFormController;->sInstance:Lcom/miui/bubbles/controller/FreeFormController;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/bubbles/controller/FreeFormController;

    invoke-direct {v1, p0}, Lcom/miui/bubbles/controller/FreeFormController;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/miui/bubbles/controller/FreeFormController;->sInstance:Lcom/miui/bubbles/controller/FreeFormController;

    :cond_0
    sget-object p0, Lcom/miui/bubbles/controller/FreeFormController;->sInstance:Lcom/miui/bubbles/controller/FreeFormController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getPinnedApps()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/miui/bubbles/controller/FreeFormController;->getContextDisplayId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/miui/bubbles/utils/MiuiFreeFormManagerWrapper;->getAllPinedFreeFormStackInfosOnDisplay(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private isFreeFromToPin(ILmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;)Z
    .locals 0

    const/16 p2, 0x9

    if-eq p1, p2, :cond_1

    const/16 p2, 0xe

    if-eq p1, p2, :cond_1

    const/16 p2, 0xf

    if-eq p1, p2, :cond_1

    const/16 p2, 0xa

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private isFreeFromUnpinned(ILmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;)Z
    .locals 1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    if-eq p1, p2, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    :cond_0
    :pswitch_0
    return p2

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isInvalidUserEvent(I)Z
    .locals 2

    iget v0, p0, Lcom/miui/bubbles/controller/FreeFormController;->mCurrentUserId:I

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/16 v0, 0x3e7

    if-eq p1, v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private windowStateToAction(I)I
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/16 p1, 0xa

    return p1

    :cond_0
    const/16 p1, 0x9

    return p1
.end method


# virtual methods
.method public destroy()V
    .locals 3

    iget-boolean v0, p0, Lcom/miui/bubbles/controller/FreeFormController;->mIsRegistered:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/bubbles/controller/FreeFormController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/bubbles/settings/BubblesSettings;->getInstance(Landroid/content/Context;)Lcom/miui/bubbles/settings/BubblesSettings;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "destroy"

    invoke-virtual {v0, v1, v2}, Lcom/miui/bubbles/settings/BubblesSettings;->notifyBubbleAppChanged(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/miui/bubbles/controller/FreeFormController;->mIFreeformCallback:Lmiui/app/IFreeformCallback;

    invoke-static {v0}, Lmiui/app/MiuiFreeFormManager;->unregisterFreeformCallback(Lmiui/app/IFreeformCallback;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/bubbles/controller/FreeFormController;->mIsRegistered:Z

    const-string v0, "MiuiBubbles.FFC"

    const-string v1, "destroy: destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public init(Lcom/miui/bubbles/BubbleController;)V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/bubbles/controller/FreeFormController;->mIsRegistered:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/bubbles/controller/FreeFormController;->mIsRegistered:Z

    iput-object p1, p0, Lcom/miui/bubbles/controller/FreeFormController;->mMiuiBubbleController:Lcom/miui/bubbles/BubbleController;

    iget-object p1, p0, Lcom/miui/bubbles/controller/FreeFormController;->mIFreeformCallback:Lmiui/app/IFreeformCallback;

    invoke-static {p1}, Lmiui/app/MiuiFreeFormManager;->registerFreeformCallback(Lmiui/app/IFreeformCallback;)V

    const-string p1, "MiuiBubbles.FFC"

    const-string v0, "create: registerFreeformCallback"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public restorePinnedAppsIfNeed()V
    .locals 4

    iget-object v0, p0, Lcom/miui/bubbles/controller/FreeFormController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/bubbles/settings/BubblesSettings;->getInstance(Landroid/content/Context;)Lcom/miui/bubbles/settings/BubblesSettings;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "restorePinnedAppsIfNeed"

    invoke-virtual {v0, v1, v2}, Lcom/miui/bubbles/settings/BubblesSettings;->notifyBubbleAppChanged(ZLjava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/bubbles/controller/FreeFormController;->getPinnedApps()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restorePinnedAppsIfNeed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MiuiBubbles.FFC"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    iget-boolean v3, v2, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->inPinMode:Z

    if-eqz v3, :cond_1

    iget v3, v2, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->windowState:I

    if-eqz v3, :cond_2

    if-ne v3, v1, :cond_1

    :cond_2
    iget v3, v2, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->userId:I

    invoke-direct {p0, v3}, Lcom/miui/bubbles/controller/FreeFormController;->isInvalidUserEvent(I)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    iget v3, v2, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->windowState:I

    invoke-direct {p0, v3}, Lcom/miui/bubbles/controller/FreeFormController;->windowStateToAction(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/miui/bubbles/data/BubbleEntry;->createByFreeformStackInfo(Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;I)Lcom/miui/bubbles/data/BubbleEntry;

    move-result-object v2

    iput-boolean v1, v2, Lcom/miui/bubbles/data/BubbleEntry;->isRestored:Z

    iget-object v3, p0, Lcom/miui/bubbles/controller/FreeFormController;->mMiuiBubbleController:Lcom/miui/bubbles/BubbleController;

    invoke-virtual {v3}, Lcom/miui/bubbles/BubbleController;->asBubbles()Lcom/miui/bubbles/MiuiBubbles;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/miui/bubbles/MiuiBubbles;->onPinnedAppAdded(Lcom/miui/bubbles/data/BubbleEntry;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public updateBubbleAppBounds(Lcom/miui/bubbles/BubbleData;)V
    .locals 6

    invoke-direct {p0}, Lcom/miui/bubbles/controller/FreeFormController;->getPinnedApps()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    iget-boolean v2, v1, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->inPinMode:Z

    if-eqz v2, :cond_1

    iget v2, v1, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->windowState:I

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    :cond_2
    iget v2, v1, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->userId:I

    invoke-direct {p0, v2}, Lcom/miui/bubbles/controller/FreeFormController;->isInvalidUserEvent(I)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    iget v2, v1, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->windowState:I

    invoke-direct {p0, v2}, Lcom/miui/bubbles/controller/FreeFormController;->windowStateToAction(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/miui/bubbles/data/BubbleEntry;->createByFreeformStackInfo(Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;I)Lcom/miui/bubbles/data/BubbleEntry;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/bubbles/BubbleData;->getBubbles()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/bubbles/Bubble;

    invoke-virtual {v3}, Lcom/miui/bubbles/Bubble;->getPreMode()Lcom/miui/bubbles/data/FreeformMode;

    move-result-object v4

    sget-object v5, Lcom/miui/bubbles/data/FreeformMode;->MODE_FREEFORM:Lcom/miui/bubbles/data/FreeformMode;

    if-ne v4, v5, :cond_4

    iget v4, v3, Lcom/miui/bubbles/Bubble;->stackId:I

    iget v5, v1, Lcom/miui/bubbles/data/BubbleEntry;->stackId:I

    if-ne v4, v5, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateBubbleAppBounds: prev = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/miui/bubbles/Bubble;->mAppBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " after = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/miui/bubbles/data/BubbleEntry;->mAppBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MiuiBubbles.FFC"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v1, Lcom/miui/bubbles/data/BubbleEntry;->mAppBounds:Landroid/graphics/Rect;

    iput-object v4, v3, Lcom/miui/bubbles/Bubble;->mAppBounds:Landroid/graphics/Rect;

    goto :goto_1

    :cond_5
    return-void
.end method

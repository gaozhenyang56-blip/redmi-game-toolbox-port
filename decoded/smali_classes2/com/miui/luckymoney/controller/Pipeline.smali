.class public Lcom/miui/luckymoney/controller/Pipeline;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final MAX_HEADS_UP_VIEW_COUNT:I = 0x14

.field private static final TAG:Ljava/lang/String; = "Pipeline"

.field private static final allPipelines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/luckymoney/controller/Pipeline;",
            ">;"
        }
    .end annotation
.end field

.field private static final headsUpMessageViewHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final keyguardPipelineHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/luckymoney/controller/Pipeline;",
            ">;"
        }
    .end annotation
.end field

.field private static keyguardUnlockedListener:Lcom/miui/luckymoney/utils/ScreenUtil$KeyguardUnlockedListener;

.field private static shellAppMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final configuration:Lcom/miui/luckymoney/model/config/BaseConfiguration;

.field private final headsUpMessageViews:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/luckymoney/ui/view/messageview/MessageView;",
            ">;>;"
        }
    .end annotation
.end field

.field private lastLockScreenMessage:Lcom/miui/luckymoney/model/message/AppMessage;

.field private lockScreenMessageView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/luckymoney/ui/view/messageview/MessageView;",
            ">;"
        }
    .end annotation
.end field

.field private final viewCreator:Lcom/miui/luckymoney/ui/view/messageview/MessageViewCreator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/luckymoney/controller/Pipeline;->allPipelines:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/luckymoney/controller/Pipeline;->keyguardPipelineHistory:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/luckymoney/controller/Pipeline;->headsUpMessageViewHistory:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/luckymoney/controller/Pipeline;->shellAppMap:Ljava/util/Map;

    const-string v1, "com.android.thememanager"

    const-string v2, "com.miui.themestore"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/luckymoney/controller/Pipeline;->shellAppMap:Ljava/util/Map;

    const-string v1, "com.miui.securitycenter"

    const-string v2, "com.miui.securitymanager"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/miui/luckymoney/model/config/BaseConfiguration;Lcom/miui/luckymoney/ui/view/messageview/MessageViewCreator;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/luckymoney/controller/Pipeline;->headsUpMessageViews:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/luckymoney/controller/Pipeline;->lockScreenMessageView:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Lcom/miui/luckymoney/controller/Pipeline;->lastLockScreenMessage:Lcom/miui/luckymoney/model/message/AppMessage;

    iput-object p1, p0, Lcom/miui/luckymoney/controller/Pipeline;->configuration:Lcom/miui/luckymoney/model/config/BaseConfiguration;

    iput-object p2, p0, Lcom/miui/luckymoney/controller/Pipeline;->viewCreator:Lcom/miui/luckymoney/ui/view/messageview/MessageViewCreator;

    return-void
.end method

.method static synthetic access$000()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lcom/miui/luckymoney/controller/Pipeline;->keyguardPipelineHistory:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/luckymoney/controller/Pipeline;)Lcom/miui/luckymoney/model/message/AppMessage;
    .locals 0

    iget-object p0, p0, Lcom/miui/luckymoney/controller/Pipeline;->lastLockScreenMessage:Lcom/miui/luckymoney/model/message/AppMessage;

    return-object p0
.end method

.method static synthetic access$102(Lcom/miui/luckymoney/controller/Pipeline;Lcom/miui/luckymoney/model/message/AppMessage;)Lcom/miui/luckymoney/model/message/AppMessage;
    .locals 0

    iput-object p1, p0, Lcom/miui/luckymoney/controller/Pipeline;->lastLockScreenMessage:Lcom/miui/luckymoney/model/message/AppMessage;

    return-object p1
.end method

.method static synthetic access$200(Lcom/miui/luckymoney/controller/Pipeline;Lcom/miui/luckymoney/model/message/AppMessage;Z)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/luckymoney/controller/Pipeline;->process(Lcom/miui/luckymoney/model/message/AppMessage;Z)Z

    move-result p0

    return p0
.end method

.method private checkFastOpenMode()Z
    .locals 5

    iget-object v0, p0, Lcom/miui/luckymoney/controller/Pipeline;->configuration:Lcom/miui/luckymoney/model/config/BaseConfiguration;

    invoke-virtual {v0}, Lcom/miui/luckymoney/model/config/BaseConfiguration;->context()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/luckymoney/utils/ScreenUtil;->isScreenLocked(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/miui/luckymoney/controller/Pipeline;->configuration:Lcom/miui/luckymoney/model/config/BaseConfiguration;

    invoke-virtual {v0}, Lcom/miui/luckymoney/model/config/BaseConfiguration;->context()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/luckymoney/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/luckymoney/config/CommonConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/luckymoney/config/CommonConfig;->isFastOpenEnable()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/miui/luckymoney/controller/Pipeline;->configuration:Lcom/miui/luckymoney/model/config/BaseConfiguration;

    invoke-virtual {v0}, Lcom/miui/luckymoney/model/config/BaseConfiguration;->context()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/luckymoney/utils/PackageUtil;->getForegroundApp(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/miui/luckymoney/controller/Pipeline;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "currentPackage:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/miui/luckymoney/controller/Pipeline;->shellAppMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/miui/luckymoney/controller/Pipeline;->shellAppMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shell app package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v2, p0, Lcom/miui/luckymoney/controller/Pipeline;->configuration:Lcom/miui/luckymoney/model/config/BaseConfiguration;

    invoke-virtual {v2}, Lcom/miui/luckymoney/model/config/BaseConfiguration;->context()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/luckymoney/config/FastOpenConfig;->getInstance(Landroid/content/Context;)Lcom/miui/luckymoney/config/FastOpenConfig;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/miui/luckymoney/config/FastOpenConfig;->isRestrict(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    return v0

    :cond_3
    return v1
.end method

.method private closeAllHeadsUpMessageView()V
    .locals 4

    iget-object v0, p0, Lcom/miui/luckymoney/controller/Pipeline;->headsUpMessageViews:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/luckymoney/controller/Pipeline;->headsUpMessageViews:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/luckymoney/ui/view/messageview/MessageView;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/miui/luckymoney/ui/view/messageview/MessageView;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Lcom/miui/luckymoney/ui/view/messageview/MessageView;->hide()V

    :cond_0
    sget-object v2, Lcom/miui/luckymoney/controller/Pipeline;->headsUpMessageViewHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/luckymoney/controller/Pipeline;->headsUpMessageViews:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method private static declared-synchronized closeAllHeadsUpMessageViewOfAllPipelines()V
    .locals 3

    const-class v0, Lcom/miui/luckymoney/controller/Pipeline;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/luckymoney/controller/Pipeline;->allPipelines:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/luckymoney/controller/Pipeline;

    invoke-direct {v2}, Lcom/miui/luckymoney/controller/Pipeline;->closeAllHeadsUpMessageView()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private closeHeadsUpMessageView(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/luckymoney/controller/Pipeline;->headsUpMessageViews:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/luckymoney/ui/view/messageview/MessageView;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/miui/luckymoney/ui/view/messageview/MessageView;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/miui/luckymoney/ui/view/messageview/MessageView;->hide()V

    :cond_0
    iget-object v0, p0, Lcom/miui/luckymoney/controller/Pipeline;->headsUpMessageViews:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/luckymoney/controller/Pipeline;->headsUpMessageViewHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private static declared-synchronized closeHeadsUpMessageViewOfAllPipelines(Ljava/lang/String;)V
    .locals 3

    const-class v0, Lcom/miui/luckymoney/controller/Pipeline;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/luckymoney/controller/Pipeline;->allPipelines:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/luckymoney/controller/Pipeline;

    invoke-direct {v2, p0}, Lcom/miui/luckymoney/controller/Pipeline;->closeHeadsUpMessageView(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private closeLockScreenMessageView()V
    .locals 2

    iget-object v0, p0, Lcom/miui/luckymoney/controller/Pipeline;->lockScreenMessageView:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/luckymoney/ui/view/messageview/MessageView;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/miui/luckymoney/ui/view/messageview/MessageView;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lcom/miui/luckymoney/ui/view/messageview/MessageView;->hide()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/luckymoney/controller/Pipeline;->lockScreenMessageView:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private static declared-synchronized closeLockScreenMessageViewExcept(Lcom/miui/luckymoney/controller/Pipeline;)V
    .locals 3

    const-class v0, Lcom/miui/luckymoney/controller/Pipeline;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/luckymoney/controller/Pipeline;->allPipelines:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/luckymoney/controller/Pipeline;

    if-eq v2, p0, :cond_0

    invoke-direct {v2}, Lcom/miui/luckymoney/controller/Pipeline;->closeLockScreenMessageView()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized create(Lcom/miui/luckymoney/model/config/BaseConfiguration;Lcom/miui/luckymoney/ui/view/messageview/MessageViewCreator;)Lcom/miui/luckymoney/controller/Pipeline;
    .locals 2

    const-class v0, Lcom/miui/luckymoney/controller/Pipeline;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/luckymoney/controller/Pipeline;->keyguardUnlockedListener:Lcom/miui/luckymoney/utils/ScreenUtil$KeyguardUnlockedListener;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/luckymoney/controller/Pipeline$1;

    invoke-direct {v1}, Lcom/miui/luckymoney/controller/Pipeline$1;-><init>()V

    sput-object v1, Lcom/miui/luckymoney/controller/Pipeline;->keyguardUnlockedListener:Lcom/miui/luckymoney/utils/ScreenUtil$KeyguardUnlockedListener;

    invoke-static {v1}, Lcom/miui/luckymoney/utils/ScreenUtil;->register(Lcom/miui/luckymoney/utils/ScreenUtil$KeyguardUnlockedListener;)V

    :cond_0
    new-instance v1, Lcom/miui/luckymoney/controller/Pipeline;

    invoke-direct {v1, p0, p1}, Lcom/miui/luckymoney/controller/Pipeline;-><init>(Lcom/miui/luckymoney/model/config/BaseConfiguration;Lcom/miui/luckymoney/ui/view/messageview/MessageViewCreator;)V

    sget-object p0, Lcom/miui/luckymoney/controller/Pipeline;->allPipelines:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private obtainLockScreenMessageView(Lcom/miui/luckymoney/model/message/AppMessage;)Lcom/miui/luckymoney/ui/view/messageview/MessageView;
    .locals 2

    iget-object p1, p0, Lcom/miui/luckymoney/controller/Pipeline;->lockScreenMessageView:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/luckymoney/ui/view/messageview/MessageView;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/miui/luckymoney/ui/view/messageview/MessageView;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p1

    goto :goto_1

    :cond_1
    :goto_0
    iput-object v0, p0, Lcom/miui/luckymoney/controller/Pipeline;->lockScreenMessageView:Ljava/lang/ref/WeakReference;

    :cond_2
    :goto_1
    if-nez v0, :cond_3

    iget-object p1, p0, Lcom/miui/luckymoney/controller/Pipeline;->viewCreator:Lcom/miui/luckymoney/ui/view/messageview/MessageViewCreator;

    invoke-interface {p1}, Lcom/miui/luckymoney/ui/view/messageview/MessageViewCreator;->createLockScreenMessageView()Lcom/miui/luckymoney/ui/view/messageview/MessageView;

    move-result-object v0

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/miui/luckymoney/controller/Pipeline;->lockScreenMessageView:Ljava/lang/ref/WeakReference;

    :cond_3
    return-object v0
.end method

.method private obtianHeadsUpMessageView(Lcom/miui/luckymoney/model/message/AppMessage;)Lcom/miui/luckymoney/ui/view/messageview/MessageView;
    .locals 3

    invoke-interface {p1}, Lcom/miui/luckymoney/model/message/AppMessage;->getId()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/luckymoney/controller/Pipeline;->headsUpMessageViews:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/luckymoney/ui/view/messageview/MessageView;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/miui/luckymoney/ui/view/messageview/MessageView;->isAlive()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/miui/luckymoney/controller/Pipeline;->headsUpMessageViews:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    if-nez v1, :cond_3

    iget-object v0, p0, Lcom/miui/luckymoney/controller/Pipeline;->viewCreator:Lcom/miui/luckymoney/ui/view/messageview/MessageViewCreator;

    invoke-interface {v0}, Lcom/miui/luckymoney/ui/view/messageview/MessageViewCreator;->createHeadsUpMessageView()Lcom/miui/luckymoney/ui/view/messageview/MessageView;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/miui/luckymoney/controller/Pipeline;->headsUpMessageViews:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    sget-object v0, Lcom/miui/luckymoney/controller/Pipeline;->headsUpMessageViewHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 v2, 0x14

    if-le p1, v2, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/miui/luckymoney/controller/Pipeline;->closeHeadsUpMessageViewOfAllPipelines(Ljava/lang/String;)V

    :cond_4
    return-object v1
.end method

.method private obtianMessageView(Lcom/miui/luckymoney/model/message/AppMessage;)Lcom/miui/luckymoney/ui/view/messageview/MessageView;
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/controller/Pipeline;->configuration:Lcom/miui/luckymoney/model/config/BaseConfiguration;

    invoke-virtual {v0}, Lcom/miui/luckymoney/model/config/BaseConfiguration;->context()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/luckymoney/utils/ScreenUtil;->isScreenLocked(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/luckymoney/controller/Pipeline;->closeAllHeadsUpMessageViewOfAllPipelines()V

    invoke-static {p0}, Lcom/miui/luckymoney/controller/Pipeline;->closeLockScreenMessageViewExcept(Lcom/miui/luckymoney/controller/Pipeline;)V

    invoke-direct {p0, p1}, Lcom/miui/luckymoney/controller/Pipeline;->obtainLockScreenMessageView(Lcom/miui/luckymoney/model/message/AppMessage;)Lcom/miui/luckymoney/ui/view/messageview/MessageView;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/luckymoney/controller/Pipeline;->obtianHeadsUpMessageView(Lcom/miui/luckymoney/model/message/AppMessage;)Lcom/miui/luckymoney/ui/view/messageview/MessageView;

    move-result-object p1

    return-object p1
.end method

.method private process(Lcom/miui/luckymoney/model/message/AppMessage;Z)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-interface/range {p1 .. p1}, Lcom/miui/luckymoney/model/message/AppMessage;->isHongbao()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    sget-object v2, Lcom/miui/luckymoney/controller/Pipeline;->TAG:Ljava/lang/String;

    const-string v4, "Message is lucky money, continue"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v0, Lcom/miui/luckymoney/controller/Pipeline;->configuration:Lcom/miui/luckymoney/model/config/BaseConfiguration;

    invoke-virtual {v4}, Lcom/miui/luckymoney/model/config/BaseConfiguration;->context()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/luckymoney/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/luckymoney/config/CommonConfig;

    move-result-object v4

    iget-object v5, v0, Lcom/miui/luckymoney/controller/Pipeline;->configuration:Lcom/miui/luckymoney/model/config/BaseConfiguration;

    invoke-virtual {v5}, Lcom/miui/luckymoney/model/config/BaseConfiguration;->getNotifyType()Lcom/miui/luckymoney/model/config/BaseConfiguration$NotifyType;

    move-result-object v5

    if-eqz v5, :cond_b

    sget-object v6, Lcom/miui/luckymoney/model/config/BaseConfiguration$NotifyType;->NONE:Lcom/miui/luckymoney/model/config/BaseConfiguration$NotifyType;

    if-ne v5, v6, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object v5, v0, Lcom/miui/luckymoney/controller/Pipeline;->configuration:Lcom/miui/luckymoney/model/config/BaseConfiguration;

    invoke-virtual {v5}, Lcom/miui/luckymoney/model/config/BaseConfiguration;->justForGroupMessage()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface/range {p1 .. p1}, Lcom/miui/luckymoney/model/message/AppMessage;->isGroupMessage()Z

    move-result v5

    if-nez v5, :cond_2

    const-string v1, "Message is not for group, do not remind"

    :goto_0
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_2
    const/4 v5, 0x0

    iput-object v5, v0, Lcom/miui/luckymoney/controller/Pipeline;->lastLockScreenMessage:Lcom/miui/luckymoney/model/message/AppMessage;

    iget-object v5, v0, Lcom/miui/luckymoney/controller/Pipeline;->configuration:Lcom/miui/luckymoney/model/config/BaseConfiguration;

    invoke-virtual {v5}, Lcom/miui/luckymoney/model/config/BaseConfiguration;->context()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/miui/luckymoney/utils/SettingsUtil;->isQuietModeEnable(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, v0, Lcom/miui/luckymoney/controller/Pipeline;->configuration:Lcom/miui/luckymoney/model/config/BaseConfiguration;

    invoke-virtual {v5}, Lcom/miui/luckymoney/model/config/BaseConfiguration;->context()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/miui/luckymoney/utils/ScreenUtil;->powerOnScreen(Landroid/content/Context;)V

    :cond_3
    const-wide/16 v5, 0x1

    const/4 v7, 0x1

    if-nez p2, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/miui/luckymoney/controller/Pipeline;->checkFastOpenMode()Z

    move-result v8

    if-eqz v8, :cond_4

    new-instance v2, Lcom/miui/luckymoney/ui/view/PendingIntentRunnable;

    invoke-interface/range {p1 .. p1}, Lcom/miui/luckymoney/model/message/AppMessage;->getAction()Landroid/app/PendingIntent;

    move-result-object v8

    invoke-direct {v2, v8}, Lcom/miui/luckymoney/ui/view/PendingIntentRunnable;-><init>(Landroid/app/PendingIntent;)V

    invoke-virtual {v2}, Lcom/miui/luckymoney/ui/view/PendingIntentRunnable;->run()V

    invoke-virtual {v4}, Lcom/miui/luckymoney/config/CommonConfig;->getWarningLuckyMoneyCount()J

    move-result-wide v8

    add-long/2addr v8, v5

    invoke-virtual {v4, v8, v9}, Lcom/miui/luckymoney/config/CommonConfig;->setWarningLuckyMoneyCount(J)V

    iget-object v2, v0, Lcom/miui/luckymoney/controller/Pipeline;->configuration:Lcom/miui/luckymoney/model/config/BaseConfiguration;

    invoke-virtual {v2}, Lcom/miui/luckymoney/model/config/BaseConfiguration;->getLuckyMoneyEventKeyPostfix()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/luckymoney/stats/MiStatUtil;->recordLuckyMoneyFastOpen(Ljava/lang/String;)V

    move v2, v7

    goto :goto_1

    :cond_4
    invoke-direct/range {p0 .. p1}, Lcom/miui/luckymoney/controller/Pipeline;->obtianMessageView(Lcom/miui/luckymoney/model/message/AppMessage;)Lcom/miui/luckymoney/ui/view/messageview/MessageView;

    move-result-object v8

    if-nez v8, :cond_5

    const-string v1, "Failed to obtain message view, do not remind"

    goto :goto_0

    :cond_5
    if-nez p2, :cond_6

    invoke-virtual {v4}, Lcom/miui/luckymoney/config/CommonConfig;->getWarningLuckyMoneyCount()J

    move-result-wide v9

    add-long/2addr v9, v5

    invoke-virtual {v4, v9, v10}, Lcom/miui/luckymoney/config/CommonConfig;->setWarningLuckyMoneyCount(J)V

    :cond_6
    invoke-interface {v8, v1}, Lcom/miui/luckymoney/ui/view/messageview/MessageView;->show(Lcom/miui/luckymoney/model/message/AppMessage;)V

    if-nez p2, :cond_7

    iget-object v2, v0, Lcom/miui/luckymoney/controller/Pipeline;->configuration:Lcom/miui/luckymoney/model/config/BaseConfiguration;

    invoke-virtual {v2}, Lcom/miui/luckymoney/model/config/BaseConfiguration;->context()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/luckymoney/utils/ScreenUtil;->isScreenLocked(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v2, Lcom/miui/luckymoney/controller/Pipeline;->keyguardPipelineHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v2, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iput-object v1, v0, Lcom/miui/luckymoney/controller/Pipeline;->lastLockScreenMessage:Lcom/miui/luckymoney/model/message/AppMessage;

    :cond_7
    move v2, v3

    :goto_1
    iget-object v4, v0, Lcom/miui/luckymoney/controller/Pipeline;->configuration:Lcom/miui/luckymoney/model/config/BaseConfiguration;

    invoke-virtual {v4}, Lcom/miui/luckymoney/model/config/BaseConfiguration;->context()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/luckymoney/utils/SettingsUtil;->isQuietModeEnable(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, v0, Lcom/miui/luckymoney/controller/Pipeline;->configuration:Lcom/miui/luckymoney/model/config/BaseConfiguration;

    invoke-virtual {v4}, Lcom/miui/luckymoney/model/config/BaseConfiguration;->needPlaySource()Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, v0, Lcom/miui/luckymoney/controller/Pipeline;->configuration:Lcom/miui/luckymoney/model/config/BaseConfiguration;

    invoke-virtual {v4}, Lcom/miui/luckymoney/model/config/BaseConfiguration;->context()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lvg/a;->c(Landroid/content/Context;)V

    :cond_8
    if-nez v2, :cond_9

    if-nez p2, :cond_a

    iget-object v2, v0, Lcom/miui/luckymoney/controller/Pipeline;->configuration:Lcom/miui/luckymoney/model/config/BaseConfiguration;

    invoke-virtual {v2}, Lcom/miui/luckymoney/model/config/BaseConfiguration;->needPlaySource()Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_9
    iget-object v2, v0, Lcom/miui/luckymoney/controller/Pipeline;->configuration:Lcom/miui/luckymoney/model/config/BaseConfiguration;

    invoke-virtual {v2}, Lcom/miui/luckymoney/model/config/BaseConfiguration;->context()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f120c31

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    iget-object v2, v0, Lcom/miui/luckymoney/controller/Pipeline;->configuration:Lcom/miui/luckymoney/model/config/BaseConfiguration;

    invoke-virtual {v2}, Lcom/miui/luckymoney/model/config/BaseConfiguration;->context()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f12085c

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v4, v7, [Ljava/lang/Object;

    invoke-interface/range {p1 .. p1}, Lcom/miui/luckymoney/model/message/AppMessage;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v3

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    iget-object v1, v0, Lcom/miui/luckymoney/controller/Pipeline;->configuration:Lcom/miui/luckymoney/model/config/BaseConfiguration;

    invoke-virtual {v1}, Lcom/miui/luckymoney/model/config/BaseConfiguration;->context()Landroid/content/Context;

    move-result-object v8

    iget-object v1, v0, Lcom/miui/luckymoney/controller/Pipeline;->configuration:Lcom/miui/luckymoney/model/config/BaseConfiguration;

    invoke-virtual {v1}, Lcom/miui/luckymoney/model/config/BaseConfiguration;->getSoundResId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v12, 0x0

    iget-object v1, v0, Lcom/miui/luckymoney/controller/Pipeline;->configuration:Lcom/miui/luckymoney/model/config/BaseConfiguration;

    invoke-virtual {v1}, Lcom/miui/luckymoney/model/config/BaseConfiguration;->getSoundResId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    iget-object v1, v0, Lcom/miui/luckymoney/controller/Pipeline;->configuration:Lcom/miui/luckymoney/model/config/BaseConfiguration;

    invoke-virtual {v1}, Lcom/miui/luckymoney/model/config/BaseConfiguration;->needPlaySource()Z

    move-result v14

    const/4 v15, 0x1

    invoke-static/range {v8 .. v15}, Lcom/miui/luckymoney/utils/NotificationUtil;->showFloatNotification(Landroid/content/Context;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;IZZ)V

    :cond_a
    return v7

    :cond_b
    :goto_2
    const-string v1, "Remind is disabled, do not remind"

    goto/16 :goto_0
.end method

.method public static declared-synchronized recycle(Lcom/miui/luckymoney/controller/Pipeline;)V
    .locals 2

    const-class v0, Lcom/miui/luckymoney/controller/Pipeline;

    monitor-enter v0

    if-nez p0, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/miui/luckymoney/controller/Pipeline;->closeAllHeadsUpMessageView()V

    invoke-direct {p0}, Lcom/miui/luckymoney/controller/Pipeline;->closeLockScreenMessageView()V

    sget-object v1, Lcom/miui/luckymoney/controller/Pipeline;->allPipelines:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    sget-object v1, Lcom/miui/luckymoney/controller/Pipeline;->keyguardPipelineHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public notifyPhoneArrived()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/luckymoney/controller/Pipeline;->closeAllHeadsUpMessageView()V

    invoke-direct {p0}, Lcom/miui/luckymoney/controller/Pipeline;->closeLockScreenMessageView()V

    return-void
.end method

.method public process(Lcom/miui/luckymoney/model/message/AppMessage;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/luckymoney/controller/Pipeline;->process(Lcom/miui/luckymoney/model/message/AppMessage;Z)Z

    move-result p1

    return p1
.end method

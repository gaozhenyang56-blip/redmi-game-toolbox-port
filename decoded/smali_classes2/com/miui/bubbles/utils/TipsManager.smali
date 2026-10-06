.class public Lcom/miui/bubbles/utils/TipsManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final KEY_GAME_BOOSTER:Ljava/lang/String; = "gb_boosting"

.field private static final SHOW_BUBBLE_TIP_IN_GAME_MODE:Ljava/lang/String; = "show_bubble_tip_in_game_mode"

.field private static final SP_KEY_BUBBLE_BARRAGE_TIP_CASE1:Ljava/lang/String; = "bubble_tips_1"

.field private static final SP_KEY_BUBBLE_BARRAGE_TIP_CASE2:Ljava/lang/String; = "bubble_tips_2"

.field private static final TAG:Ljava/lang/String; = "TipsManager"

.field public static final TIP_TYPE_BARRAGE_CASE1:I = 0x1

.field public static final TIP_TYPE_BARRAGE_CASE2:I = 0x2

.field public static final TIP_TYPE_BARRAGE_CASE3:I = 0x3

.field private static sInstance:Lcom/miui/bubbles/utils/TipsManager;

.field private static final sTipText:Landroid/util/SparseIntArray;


# instance fields
.field private isBubbleBarrageTipShownForCase1:Z

.field private isBubbleBarrageTipShownForCase2:Z

.field private isSupportBubbleTips:Z

.field private final mContentObserver:Landroid/database/ContentObserver;

.field private mIsGameMode:Z

.field private final mSharedPreferences:Landroid/content/SharedPreferences;

.field private final mTipContentObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/miui/bubbles/utils/TipsManager;->sTipText:Landroid/util/SparseIntArray;

    sget v1, Lcom/miui/bubbles/R$string;->bubble_mode_barrage_tips:I

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/miui/bubbles/R$string;->bubble_mode_barrage_switch_tips:I

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/bubbles/utils/TipsManager;->mIsGameMode:Z

    new-instance v1, Lcom/miui/bubbles/utils/TipsManager$1;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, p0, v2}, Lcom/miui/bubbles/utils/TipsManager$1;-><init>(Lcom/miui/bubbles/utils/TipsManager;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/miui/bubbles/utils/TipsManager;->mContentObserver:Landroid/database/ContentObserver;

    new-instance v1, Lcom/miui/bubbles/utils/TipsManager$2;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, p0, v2}, Lcom/miui/bubbles/utils/TipsManager$2;-><init>(Lcom/miui/bubbles/utils/TipsManager;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/miui/bubbles/utils/TipsManager;->mTipContentObserver:Landroid/database/ContentObserver;

    invoke-static {}, Lcom/miui/common/e;->d()Landroid/app/Application;

    move-result-object v1

    const-string v2, "miui_bubbles_settings"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/bubbles/utils/TipsManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Lcom/miui/bubbles/utils/TipsManager;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/bubbles/utils/TipsManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/bubbles/utils/TipsManager;->mIsGameMode:Z

    return p0
.end method

.method static synthetic access$002(Lcom/miui/bubbles/utils/TipsManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/bubbles/utils/TipsManager;->mIsGameMode:Z

    return p1
.end method

.method private canShowTips(Ljava/lang/String;I)Z
    .locals 3

    iget-boolean v0, p0, Lcom/miui/bubbles/utils/TipsManager;->isSupportBubbleTips:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/miui/bubbles/utils/TipsManager;->mIsGameMode:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/miui/common/e;->d()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/bubbles/settings/BubblesSettings;->getInstance(Landroid/content/Context;)Lcom/miui/bubbles/settings/BubblesSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/bubbles/settings/BubblesSettings;->isBubbleNotificationSwitchOpen()Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x1

    if-ne p2, v2, :cond_3

    iget-boolean p2, p0, Lcom/miui/bubbles/utils/TipsManager;->isBubbleBarrageTipShownForCase1:Z

    if-nez p2, :cond_2

    invoke-virtual {v0, p1}, Lcom/miui/bubbles/settings/BubblesSettings;->isBubbleNotificationApp(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lcom/miui/bubbles/settings/BubblesSettings;->isShowBarrageInGameScene()Z

    move-result p1

    if-eqz p1, :cond_2

    move v1, v2

    :cond_2
    return v1

    :cond_3
    const/4 p1, 0x2

    if-ne p2, p1, :cond_5

    iget-boolean p1, p0, Lcom/miui/bubbles/utils/TipsManager;->isBubbleBarrageTipShownForCase2:Z

    if-nez p1, :cond_4

    invoke-virtual {v0}, Lcom/miui/bubbles/settings/BubblesSettings;->hasNotificationBubbles()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {v0}, Lcom/miui/bubbles/settings/BubblesSettings;->isShowBarrageInGameScene()Z

    move-result p1

    if-eqz p1, :cond_4

    move v1, v2

    :cond_4
    return v1

    :cond_5
    const/4 p1, 0x3

    if-ne p2, p1, :cond_6

    invoke-virtual {v0}, Lcom/miui/bubbles/settings/BubblesSettings;->hasNotificationBubbles()Z

    move-result p1

    return p1

    :cond_6
    :goto_0
    return v1
.end method

.method public static declared-synchronized getInstance()Lcom/miui/bubbles/utils/TipsManager;
    .locals 2

    const-class v0, Lcom/miui/bubbles/utils/TipsManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/bubbles/utils/TipsManager;->sInstance:Lcom/miui/bubbles/utils/TipsManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/bubbles/utils/TipsManager;

    invoke-direct {v1}, Lcom/miui/bubbles/utils/TipsManager;-><init>()V

    sput-object v1, Lcom/miui/bubbles/utils/TipsManager;->sInstance:Lcom/miui/bubbles/utils/TipsManager;

    :cond_0
    sget-object v1, Lcom/miui/bubbles/utils/TipsManager;->sInstance:Lcom/miui/bubbles/utils/TipsManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private init()V
    .locals 7

    sget-boolean v0, Lsl/a;->a:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/common/e;->d()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/bubbles/settings/BubblesSettings;->isBubbleNotificationSupport(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/miui/bubbles/utils/TipsManager;->isSupportBubbleTips:Z

    invoke-virtual {p0}, Lcom/miui/bubbles/utils/TipsManager;->isBubbleBarrageTipShownForCase1()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/bubbles/utils/TipsManager;->isBubbleBarrageTipShownForCase1:Z

    invoke-direct {p0}, Lcom/miui/bubbles/utils/TipsManager;->isBubbleBarrageTipShownForCase2()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/bubbles/utils/TipsManager;->isBubbleBarrageTipShownForCase2:Z

    iget-boolean v0, p0, Lcom/miui/bubbles/utils/TipsManager;->isSupportBubbleTips:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/miui/common/e;->d()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "gb_boosting"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/bubbles/utils/TipsManager;->mContentObserver:Landroid/database/ContentObserver;

    const/4 v6, -0x1

    invoke-virtual {v0, v4, v2, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-static {}, Lcom/miui/common/e;->d()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-static {v0, v3, v2, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/miui/bubbles/utils/TipsManager;->mIsGameMode:Z

    :cond_2
    return-void
.end method

.method private isBubbleBarrageTipShownForCase2()Z
    .locals 3

    iget-object v0, p0, Lcom/miui/bubbles/utils/TipsManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "bubble_tips_2"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private setBubbleBarrageTipShownForCase1()V
    .locals 3

    iget-object v0, p0, Lcom/miui/bubbles/utils/TipsManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "bubble_tips_1"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private setBubbleBarrageTipShownForCase2()V
    .locals 3

    iget-object v0, p0, Lcom/miui/bubbles/utils/TipsManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "bubble_tips_2"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public isBubbleBarrageTipShownForCase1()Z
    .locals 3

    iget-object v0, p0, Lcom/miui/bubbles/utils/TipsManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "bubble_tips_1"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isShownBubbleTipsInGameMode(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "show_bubble_tip_in_game_mode"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public isSupportBubbleTips()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/bubbles/utils/TipsManager;->isSupportBubbleTips:Z

    return v0
.end method

.method public registerTipContentObserver()V
    .locals 4

    invoke-static {}, Lcom/miui/common/e;->d()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "show_bubble_tip_in_game_mode"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/bubbles/utils/TipsManager;->mTipContentObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public setShowBubbleTipsInGameMode(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "show_bubble_tip_in_game_mode"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public showBarrageTips(I)V
    .locals 7

    sget-object v0, Lcom/miui/bubbles/utils/TipsManager;->sTipText:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/miui/common/e;->d()Landroid/app/Application;

    move-result-object v1

    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/miui/gamebooster/utils/GameBoxToastHelper;

    sget-object v3, Lcom/miui/gamebooster/utils/GameBoxToastHelper;->INSTANCE:Lcom/miui/gamebooster/utils/GameBoxToastHelper;

    const-string v3, "showBubbleNotificationConflictIfNeed"

    new-array v4, v2, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-static {v1, v3, v4, v5}, Lbh/f;->h(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail call showToast: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TipsManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-ne p1, v2, :cond_0

    iput-boolean v2, p0, Lcom/miui/bubbles/utils/TipsManager;->isBubbleBarrageTipShownForCase1:Z

    invoke-direct {p0}, Lcom/miui/bubbles/utils/TipsManager;->setBubbleBarrageTipShownForCase1()V

    goto :goto_1

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iput-boolean v2, p0, Lcom/miui/bubbles/utils/TipsManager;->isBubbleBarrageTipShownForCase2:Z

    invoke-direct {p0}, Lcom/miui/bubbles/utils/TipsManager;->setBubbleBarrageTipShownForCase2()V

    :cond_1
    :goto_1
    return-void
.end method

.method public showBarrageTipsIfNeed(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/bubbles/utils/TipsManager;->canShowTips(Ljava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lcom/miui/bubbles/utils/TipsManager;->showBarrageTips(I)V

    return-void
.end method

.class public Lcom/miui/bubbles/controller/MiuiBarrageController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/bubbles/controller/MiuiBarrageController$MiuiSettingsObserver;
    }
.end annotation


# static fields
.field public static final ENABLED_NOTIFICATION_LISTENERS:Ljava/lang/String; = "enabled_notification_listeners"

.field public static final KEY_BARRAGE_GAME_SCENE_SWITCH:Ljava/lang/String; = "gb_bullet_chat"

.field private static final KEY_GAME_BOOSTER:Ljava/lang/String; = "gb_boosting"

.field public static final PKG_NAME_BARRAGE:Ljava/lang/String; = "com.xiaomi.barrage"

.field private static final TAG:Ljava/lang/String; = "MiuiBubbles.MiuiBarrageController"


# instance fields
.field private mBarragePermissionEnabled:Z

.field private mBarrageSwitch:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private mIsGameMode:Z

.field private mObserver:Lcom/miui/bubbles/controller/MiuiBarrageController$MiuiSettingsObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/bubbles/controller/MiuiBarrageController;->mIsGameMode:Z

    iput-boolean v0, p0, Lcom/miui/bubbles/controller/MiuiBarrageController;->mBarrageSwitch:Z

    iput-boolean v0, p0, Lcom/miui/bubbles/controller/MiuiBarrageController;->mBarragePermissionEnabled:Z

    iput-object p1, p0, Lcom/miui/bubbles/controller/MiuiBarrageController;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/miui/bubbles/controller/MiuiBarrageController$MiuiSettingsObserver;

    invoke-direct {p1, p0}, Lcom/miui/bubbles/controller/MiuiBarrageController$MiuiSettingsObserver;-><init>(Lcom/miui/bubbles/controller/MiuiBarrageController;)V

    iput-object p1, p0, Lcom/miui/bubbles/controller/MiuiBarrageController;->mObserver:Lcom/miui/bubbles/controller/MiuiBarrageController$MiuiSettingsObserver;

    invoke-virtual {p1}, Lcom/miui/bubbles/controller/MiuiBarrageController$MiuiSettingsObserver;->observe()V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    iput p1, p0, Lcom/miui/bubbles/controller/MiuiBarrageController;->mCurrentUserId:I

    return-void
.end method

.method static synthetic access$000(Lcom/miui/bubbles/controller/MiuiBarrageController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/bubbles/controller/MiuiBarrageController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$102(Lcom/miui/bubbles/controller/MiuiBarrageController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/bubbles/controller/MiuiBarrageController;->mIsGameMode:Z

    return p1
.end method

.method static synthetic access$200(Lcom/miui/bubbles/controller/MiuiBarrageController;)I
    .locals 0

    iget p0, p0, Lcom/miui/bubbles/controller/MiuiBarrageController;->mCurrentUserId:I

    return p0
.end method

.method static synthetic access$302(Lcom/miui/bubbles/controller/MiuiBarrageController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/bubbles/controller/MiuiBarrageController;->mBarragePermissionEnabled:Z

    return p1
.end method

.method static synthetic access$402(Lcom/miui/bubbles/controller/MiuiBarrageController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/bubbles/controller/MiuiBarrageController;->mBarrageSwitch:Z

    return p1
.end method


# virtual methods
.method public isInGameMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/bubbles/controller/MiuiBarrageController;->mIsGameMode:Z

    return v0
.end method

.method public isShowBarrageInGameScene(Landroid/service/notification/StatusBarNotification;)Z
    .locals 1

    iget-boolean p1, p0, Lcom/miui/bubbles/controller/MiuiBarrageController;->mIsGameMode:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/miui/bubbles/controller/MiuiBarrageController;->mBarrageSwitch:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/miui/bubbles/controller/MiuiBarrageController;->mBarragePermissionEnabled:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "gm="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/miui/bubbles/controller/MiuiBarrageController;->mIsGameMode:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "\tbs="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/miui/bubbles/controller/MiuiBarrageController;->mBarrageSwitch:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "\tbpe= "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/miui/bubbles/controller/MiuiBarrageController;->mBarragePermissionEnabled:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MiuiBubbles.MiuiBarrageController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

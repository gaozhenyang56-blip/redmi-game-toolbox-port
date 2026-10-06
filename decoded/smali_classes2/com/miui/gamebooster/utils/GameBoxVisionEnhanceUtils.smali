.class public Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils$VisionEnhanceType;,
        Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils$f;,
        Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils$g;
    }
.end annotation


# static fields
.field private static o:Z = false

.field private static p:Z = false

.field private static q:Z = false

.field private static r:Z = false

.field private static final s:Z

.field private static t:I = 0x0

.field private static u:I = -0x1


# instance fields
.field private volatile a:Lcom/xiaomi/joyose/securitycenter/IGPUTunerInterface;

.field private volatile b:Z

.field private volatile c:I

.field private volatile d:Z

.field private volatile e:Z

.field private volatile f:Z

.field private volatile g:Ljava/lang/String;

.field private h:Landroid/os/Handler;

.field private volatile i:Z

.field private j:I

.field private final k:Ljava/lang/Object;

.field private volatile l:[I

.field private m:Landroid/content/ServiceConnection;

.field private n:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    invoke-static {}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->E()V

    const-string v0, "ro.vendor.display.hyperos.miDualDPU_support"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lx4/v1;->a(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->s:Z

    const-string v2, "ro.vendor.display.hyperos.miDualDPU_gamebox_version"

    if-eqz v0, :cond_0

    invoke-static {v2, v1}, Lx4/v1;->b(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->t:I

    goto :goto_0

    :cond_0
    sget v3, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->u:I

    const/4 v4, 0x1

    if-lt v3, v4, :cond_1

    invoke-static {v2, v1}, Lx4/v1;->b(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->t:I

    :cond_1
    const-string v2, "ro.vendor.xiaomi.sr.support"

    invoke-static {v2, v1}, Lx4/v1;->a(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->q:Z

    const-string v2, "ro.vendor.gpp.frc.support"

    invoke-static {v2, v1}, Lx4/v1;->a(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->p:Z

    const-string v2, "ro.vendor.display.iris_x7.support"

    invoke-static {v2, v1}, Lx4/v1;->a(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->o:Z

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "visionEnhance - isSupportDualDPU = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", deviceShowType = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->t:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", isSupportResolution = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->q:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isDeviceSupportFRC = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->p:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isDeviceSupport = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->o:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GameBoxVisionEnhanceUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->c:I

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->h:Landroid/os/Handler;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->k:Ljava/lang/Object;

    new-instance v0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils$a;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils$a;-><init>(Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;)V

    iput-object v0, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->m:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils$b;

    iget-object v1, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->h:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils$b;-><init>(Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->n:Landroid/database/ContentObserver;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;-><init>()V

    return-void
.end method

.method private A()Z
    .locals 4

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gamebooster_vision_enhance_default_switch"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "default val = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "GameBoxVisionEnhanceUtils"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    return v2
.end method

.method private C(Ljava/lang/String;)Z
    .locals 2

    invoke-static {}, La8/x1;->l()La8/x1;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_ve_switch"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->A()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, La8/y1;->a(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method private static E()V
    .locals 4

    const-string v0, "GameBoxVisionEnhanceUtils"

    :try_start_0
    const-string v1, "com.xiaomi.joyose"

    invoke-static {v1}, Lx4/f1;->m(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "joyose_game_turbo_api_version"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->u:I

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initJoyoseServiceVersion : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->u:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initJoyoseServiceVersion fail "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private F()V
    .locals 4

    iget-object v0, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->a:Lcom/xiaomi/joyose/securitycenter/IGPUTunerInterface;

    const-string v1, "GameBoxVisionEnhanceUtils"

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->f:Z

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->g:Ljava/lang/String;

    invoke-static {v2}, La8/u0;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, La8/u0;->k(I)I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->d0(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->a:Lcom/xiaomi/joyose/securitycenter/IGPUTunerInterface;

    iget-object v2, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->g:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/xiaomi/joyose/securitycenter/IGPUTunerInterface;->isSupportGameEnhancePkg(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->j:I

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->d:Z

    iget-boolean v0, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->d:Z

    if-eqz v0, :cond_4

    sget v0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->t:I

    if-ne v2, v0, :cond_2

    iget-object v0, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->a:Lcom/xiaomi/joyose/securitycenter/IGPUTunerInterface;

    iget-object v3, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->g:Ljava/lang/String;

    invoke-interface {v0, v3}, Lcom/xiaomi/joyose/securitycenter/IGPUTunerInterface;->enableSuperResolutionWithFrameInsert(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->e:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isTopGame = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->e:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget v0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->u:I

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->a:Lcom/xiaomi/joyose/securitycenter/IGPUTunerInterface;

    iget-object v3, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->g:Ljava/lang/String;

    invoke-interface {v0, v3}, Lcom/xiaomi/joyose/securitycenter/IGPUTunerInterface;->getPictureEnhanceSupportType(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->l:[I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "all support types = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->l:[I

    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    sget v0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->u:I

    if-le v0, v2, :cond_4

    iget-object v0, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->a:Lcom/xiaomi/joyose/securitycenter/IGPUTunerInterface;

    iget-object v2, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->g:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/xiaomi/joyose/securitycenter/IGPUTunerInterface;->isSupportSuperResolutionWithFrameInsert(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->r:Z

    :cond_4
    iget-object v0, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->a:Lcom/xiaomi/joyose/securitycenter/IGPUTunerInterface;

    iget-object v2, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->g:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/xiaomi/joyose/securitycenter/IGPUTunerInterface;->getFrameInsertingOrSuperResolution(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->c:I

    iget-object v0, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->g:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->C(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->b:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initialization completed, curPkg = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", selectedType = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isGameSupportVisionEnhance = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->d:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", inGameMode = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->f:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", visionEnhanceSwitchStates = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->b:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", frameRate = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->j:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isSupportResolution = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->q:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isSupportDualDPU = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->s:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isDeviceSupportFRC = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->p:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isDeviceSupport = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->o:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", deviceShowType = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->t:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isTopGame = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->e:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isSupportSuperResolutionWithFrameInsert = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->r:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->f:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->d:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->b:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->a:Lcom/xiaomi/joyose/securitycenter/IGPUTunerInterface;

    iget-object v2, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->g:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->b:Z

    invoke-interface {v0, v2, v3}, Lcom/xiaomi/joyose/securitycenter/IGPUTunerInterface;->setPictureEnhancement(Ljava/lang/String;Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PictureEnhancement effective , curPkg : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->Z()V

    :cond_6
    :goto_1
    invoke-direct {p0}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->m()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v2, "initParameter fail "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void

    :cond_7
    :goto_3
    const-string v0, "service is null or not in game mode!"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static G()Z
    .locals 1

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->o:Z

    if-nez v0, :cond_1

    :cond_0
    sget-boolean v0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->s:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lc7/c;->q()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static H()Z
    .locals 1

    sget-boolean v0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->p:Z

    return v0
.end method

.method private K()Z
    .locals 8

    invoke-static {}, La8/x1;->l()La8/x1;

    move-result-object v0

    invoke-direct {p0}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->v()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, La8/y1;->c(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v2, v0, v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    return v3

    :cond_0
    invoke-static {}, La8/x1;->l()La8/x1;

    move-result-object v2

    invoke-direct {p0}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->u()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, La8/y1;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    const-wide/32 v0, 0x5265c00

    cmp-long v0, v6, v0

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    move v3, v5

    :goto_0
    return v3
.end method

.method private M()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->l:[I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->d:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->l:[I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->l([II)Z

    move-result v0

    :goto_0
    return v0
.end method

.method private N()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->l:[I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->d:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->l:[I

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->l([II)Z

    move-result v0

    :goto_0
    return v0
.end method

.method public static R()Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSupportResolution "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->q:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GameBoxVisionEnhanceUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->q:Z

    return v0
.end method

.method private static U()Z
    .locals 2

    invoke-static {}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->s()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->w()Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;

    move-result-object v0

    iget-boolean v0, v0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->e:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private synthetic V(Z)V
    .locals 3

    iget-object v0, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->a:Lcom/xiaomi/joyose/securitycenter/IGPUTunerInterface;

    const-string v1, "GameBoxVisionEnhanceUtils"

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVisionEnhanceSwitch service is null, drop status :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->g:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->e0(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->a:Lcom/xiaomi/joyose/securitycenter/IGPUTunerInterface;

    iget-object v2, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->g:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Lcom/xiaomi/joyose/securitycenter/IGPUTunerInterface;->setPictureEnhancement(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->i0()V

    sget-boolean v0, Luf/a;->a:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVisionEnhanceSwitch, switchStates = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", curPkg = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->g:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-boolean p1, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->b:Z

    if-nez p1, :cond_2

    invoke-static {}, La8/x1;->l()La8/x1;

    move-result-object p1

    invoke-direct {p0}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->u()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2}, La8/y1;->g(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVisionEnhanceSwitch FAIL : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic W(I)V
    .locals 3

    iget-object v0, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->a:Lcom/xiaomi/joyose/securitycenter/IGPUTunerInterface;

    const-string v1, "GameBoxVisionEnhanceUtils"

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVisionEnhanceType service is null, drop type :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->a:Lcom/xiaomi/joyose/securitycenter/IGPUTunerInterface;

    iget-object v2, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->g:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Lcom/xiaomi/joyose/securitycenter/IGPUTunerInterface;->setFrameInsertingOrSuperResolution(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->i0()V

    sget-boolean v0, Luf/a;->a:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVisionEnhanceType, type = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", curPkg = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->g:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVisionEnhanceType FAIL : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public static X()Z
    .locals 6

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    sget-boolean v1, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->o:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-boolean v1, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->p:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-boolean v1, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->q:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    sget-boolean v1, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->s:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v0, v5

    const-string v4, "needInitService isDeviceSupport = %s, isDeviceSupportFRC = %s, isSupportResolution = %s, isSupportDualDPU = %s"

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "GameBoxVisionEnhanceUtils"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->o:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->p:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->q:Z

    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    move v2, v3

    :cond_1
    return v2
.end method

.method private Z()V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->g:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->d0(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->a:Lcom/xiaomi/joyose/securitycenter/IGPUTunerInterface;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->k()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->d:Z

    iput-boolean v0, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->b:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->g:Ljava/lang/String;

    iput v0, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->j:I

    iput-object v1, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->l:[I

    const-string v0, "GameBoxVisionEnhanceUtils"

    const-string v1, "release service..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic a(Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->W(I)V

    return-void
.end method

.method private a0()V
    .locals 4

    const-string v0, "GameBoxVisionEnhanceUtils"

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->d:Z

    :try_start_0
    invoke-direct {p0}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->r()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resetParameter : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", isInGameMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->f:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->f:Z

    if-eqz v2, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iput-object v1, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->a:Lcom/xiaomi/joyose/securitycenter/IGPUTunerInterface;

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->F()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->o(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->p()V

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->j0(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resetParameter fail "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic b(Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->V(Z)V

    return-void
.end method

.method static synthetic c(Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;)Lcom/xiaomi/joyose/securitycenter/IGPUTunerInterface;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->a:Lcom/xiaomi/joyose/securitycenter/IGPUTunerInterface;

    return-object p0
.end method

.method static synthetic d(Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;Lcom/xiaomi/joyose/securitycenter/IGPUTunerInterface;)Lcom/xiaomi/joyose/securitycenter/IGPUTunerInterface;
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->a:Lcom/xiaomi/joyose/securitycenter/IGPUTunerInterface;

    return-object p1
.end method

.method static synthetic e(Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->k:Ljava/lang/Object;

    return-object p0
.end method

.method private e0(Ljava/lang/String;Z)V
    .locals 2

    invoke-static {}, La8/x1;->l()La8/x1;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_ve_switch"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, La8/y1;->g(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic f(Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->a0()V

    return-void
.end method

.method static synthetic g(Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->g:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic h(Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->h0(Ljava/lang/String;)V

    return-void
.end method

.method private h0(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->a:Lcom/xiaomi/joyose/securitycenter/IGPUTunerInterface;

    const-string v1, "GameBoxVisionEnhanceUtils"

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.xiaomi.joyose"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "gpu_tuner"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->m:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    sget-object v4, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-static {v0, p1, v2, v3, v4}, Lx4/v;->b(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startService FAIL : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startService fail. service not null, pkg = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic i(Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->F()V

    return-void
.end method

.method static synthetic j(Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->p()V

    return-void
.end method

.method private l([II)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget v3, p1, v2

    if-ne v3, p2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private l0(Ln6/c;)V
    .locals 4

    invoke-static {}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils$g;->a()Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils$g;->b()Z

    move-result v1

    invoke-virtual {v0}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils$g;->c()Z

    move-result v0

    sget-object v2, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils$e;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v2, p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v3, :cond_1

    const/4 v3, 0x2

    if-eq p1, v3, :cond_0

    return-void

    :cond_0
    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->T()Z

    move-result p1

    if-nez p1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_1
    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->T()Z

    move-result p1

    if-nez p1, :cond_2

    move v0, v2

    :cond_2
    :goto_0
    const/4 p1, 0x4

    invoke-virtual {p0, v1, v0, p1}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->k0(ZZI)V

    return-void
.end method

.method private m()V
    .locals 2

    const-string v0, "pref_vision_enhance_daily_track"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->i0()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->b0(Z)V

    :cond_0
    return-void
.end method

.method private p()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->Z()V

    return-void
.end method

.method private r()Ljava/lang/String;
    .locals 4

    const-string v0, "key_currentbooster_pkg_uid"

    const-string v1, ""

    invoke-static {v0, v1}, Lr4/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    :cond_0
    return-object v1
.end method

.method public static s()I
    .locals 1

    sget v0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->t:I

    return v0
.end method

.method private u()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ve_frame_is_show_tips_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private v()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ve_frame_tips_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static w()Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;
    .locals 1

    invoke-static {}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils$f;->a()Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;

    move-result-object v0

    return-object v0
.end method

.method private z(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const-string p1, "null"

    return-object p1

    :cond_0
    const-string p1, "\u8d85\u7ea7\u5206\u8fa8\u7387"

    return-object p1

    :cond_1
    const-string p1, "\u667a\u80fd\u63d2\u5e27"

    return-object p1
.end method


# virtual methods
.method public B()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->b:Z

    return v0
.end method

.method public D(Ln6/c;)V
    .locals 3

    invoke-virtual {p0}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->B()Z

    move-result v0

    invoke-virtual {p0}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->O()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->B()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->f0(Z)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->l0(Ln6/c;)V

    goto :goto_0

    :cond_1
    xor-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->f0(Z)V

    :goto_0
    new-array v0, v2, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "handleVisionEnhanceSwitch(gameBoxType: %s)"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "GameBoxVisionEnhanceUtils"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public I()Z
    .locals 1

    sget-boolean v0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->q:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->N()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lc7/c;->q()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public J()Z
    .locals 1

    invoke-static {}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->M()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lc7/c;->q()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public L()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->d:Z

    return v0
.end method

.method public O()Z
    .locals 2

    sget v0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->u:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public P()Z
    .locals 3

    iget-boolean v0, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->f:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->d:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->b:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->c:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->j:I

    if-le v0, v1, :cond_0

    const/16 v2, 0x90

    if-gt v0, v2, :cond_0

    invoke-direct {p0}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->K()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public Q()Z
    .locals 1

    sget-boolean v0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->s:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->p:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->M()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public S()Z
    .locals 1

    sget-boolean v0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->s:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->q:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->N()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public T()Z
    .locals 1

    sget-boolean v0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->r:Z

    return v0
.end method

.method public Y(Landroid/content/Context;)V
    .locals 4

    const-string v0, "GameBoxVisionEnhanceUtils"

    iget-boolean v1, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->i:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "content://com.miui.securitycenter.remoteprovider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "key_currentbooster_pkg_uid"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->n:Landroid/database/ContentObserver;

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->i:Z

    sget-boolean p1, Luf/a;->a:Z

    if-eqz p1, :cond_1

    const-string p1, "registerForegroundInfoChanged"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerForegroundInfoChanged fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public b0(Z)V
    .locals 1

    const-string v0, "pref_vision_enhance_daily_track"

    invoke-static {v0, p1}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public c0()V
    .locals 4

    invoke-static {}, La8/x1;->l()La8/x1;

    move-result-object v0

    invoke-direct {p0}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->v()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, La8/y1;->i(Ljava/lang/String;J)V

    invoke-static {}, La8/x1;->l()La8/x1;

    move-result-object v0

    invoke-direct {p0}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->u()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, La8/y1;->g(Ljava/lang/String;Z)V

    return-void
.end method

.method public d0(Ljava/lang/String;I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPerformancePolicy: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " status = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->a:Lcom/xiaomi/joyose/securitycenter/IGPUTunerInterface;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "GameBoxVisionEnhanceUtils"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->a:Lcom/xiaomi/joyose/securitycenter/IGPUTunerInterface;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->a:Lcom/xiaomi/joyose/securitycenter/IGPUTunerInterface;

    invoke-interface {v0, p1, p2}, Lcom/xiaomi/joyose/securitycenter/IGPUTunerInterface;->setPerformancePolicy(Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-static {v2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-void
.end method

.method public f0(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->b:Z

    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object v0

    new-instance v1, La8/p0;

    invoke-direct {v1, p0, p1}, La8/p0;-><init>(Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;Z)V

    invoke-virtual {v0, v1}, Lef/z;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public g0(I)V
    .locals 2

    iput p1, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->c:I

    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object v0

    new-instance v1, La8/q0;

    invoke-direct {v1, p0, p1}, La8/q0;-><init>(Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;I)V

    invoke-virtual {v0, v1}, Lef/z;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public i0()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iget-boolean v1, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->b:Z

    if-eqz v1, :cond_0

    const-string v1, "true"

    goto :goto_0

    :cond_0
    const-string v1, "false"

    :goto_0
    const-string v2, "if_open_picture_quality_enhancement_switch"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->c:I

    invoke-direct {p0, v1}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->z(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "picture_quality_enhancement_mode"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "picture_quality_enhancement_set_status"

    invoke-static {v1, v0}, Lcom/miui/gamebooster/utils/a$n;->k(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public j0(Landroid/content/Context;)V
    .locals 3

    const-string v0, "GameBoxVisionEnhanceUtils"

    iget-boolean v1, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->i:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->n:Landroid/database/ContentObserver;

    invoke-virtual {p1, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    sget-boolean p1, Luf/a;->a:Z

    if-eqz p1, :cond_1

    const-string p1, "unregisterContentObserver"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->i:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unRegisterForegroundInfoChanged fail"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public k()V
    .locals 5

    const-string v0, "GameBoxVisionEnhanceUtils"

    iget-object v1, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->a:Lcom/xiaomi/joyose/securitycenter/IGPUTunerInterface;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->m:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :try_start_0
    iget-boolean v2, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->d:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->b:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->a:Lcom/xiaomi/joyose/securitycenter/IGPUTunerInterface;

    iget-object v3, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->g:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/xiaomi/joyose/securitycenter/IGPUTunerInterface;->setPictureEnhancement(Ljava/lang/String;Z)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disable visionEnhance pkg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->m:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const-string v2, "close Service ... "

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iput-object v1, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->a:Lcom/xiaomi/joyose/securitycenter/IGPUTunerInterface;

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "closeService fail : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    iput-object v1, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->a:Lcom/xiaomi/joyose/securitycenter/IGPUTunerInterface;

    throw v0

    :cond_1
    :goto_2
    return-void
.end method

.method public k0(ZZI)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateVisionEnhanceType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GameBoxVisionEnhanceUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    move p3, v0

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    const/4 p3, 0x2

    goto :goto_0

    :cond_2
    move p3, v1

    :goto_0
    if-ne p3, v1, :cond_3

    iput p3, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->c:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->g0(I)V

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->f0(Z)V

    goto :goto_1

    :cond_3
    iget-boolean p1, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->b:Z

    if-nez p1, :cond_4

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->f0(Z)V

    :cond_4
    invoke-virtual {p0, p3}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->g0(I)V

    :goto_1
    return-void
.end method

.method public n()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->f:Z

    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object v0

    new-instance v1, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils$d;

    invoke-direct {v1, p0}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils$d;-><init>(Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;)V

    invoke-virtual {v0, v1}, Lef/z;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public o(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->f:Z

    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object v0

    new-instance v1, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils$c;

    invoke-direct {v1, p0, p1}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils$c;-><init>(Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lef/z;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public q()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lc6/j;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lc6/j;

    invoke-static {}, Lcom/miui/securitycenter/Application;->z()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120aed

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lc6/h$a;->g:Lc6/h$a;

    iget v4, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->c:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    const v7, 0x7f120aec

    invoke-direct {v1, v7, v2, v3, v4}, Lc6/j;-><init>(ILjava/lang/String;Lc6/h$a;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->U()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f1209f1

    const v2, 0x7f1209f2

    goto :goto_1

    :cond_1
    const v1, 0x7f120aee

    const v2, 0x7f120aef

    :goto_1
    new-instance v3, Lc6/j;

    invoke-static {}, Lcom/miui/securitycenter/Application;->z()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lc6/h$a;->h:Lc6/h$a;

    iget v7, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->c:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    move v5, v6

    :cond_2
    invoke-direct {v3, v1, v2, v4, v5}, Lc6/j;-><init>(ILjava/lang/String;Lc6/h$a;Z)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public t()I
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->j:I

    return v0
.end method

.method public x()I
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->c:I

    return v0
.end method

.method public y(Lc6/h$a;)I
    .locals 1

    sget-object v0, Lc6/h$a;->g:Lc6/h$a;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    sget-object v0, Lc6/h$a;->h:Lc6/h$a;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x2

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

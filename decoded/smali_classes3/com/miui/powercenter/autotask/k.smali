.class public Lcom/miui/powercenter/autotask/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile d:Lcom/miui/powercenter/autotask/k;


# instance fields
.field private a:Lmiui/util/HapticFeedbackUtil;

.field private b:Z

.field private final c:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/powercenter/autotask/k;->c:Z

    new-instance v0, Lmiui/util/HapticFeedbackUtil;

    invoke-direct {v0, p1, p2}, Lmiui/util/HapticFeedbackUtil;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/miui/powercenter/autotask/k;->a:Lmiui/util/HapticFeedbackUtil;

    invoke-static {}, Lmiui/util/HapticFeedbackUtil;->isSupportLinearMotorVibrate()Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/powercenter/autotask/k;->b:Z

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/miui/powercenter/autotask/k;
    .locals 3

    sget-object v0, Lcom/miui/powercenter/autotask/k;->d:Lcom/miui/powercenter/autotask/k;

    if-nez v0, :cond_1

    const-class v0, Lcom/miui/powercenter/autotask/k;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/powercenter/autotask/k;->d:Lcom/miui/powercenter/autotask/k;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/powercenter/autotask/k;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/miui/powercenter/autotask/k;-><init>(Landroid/content/Context;Z)V

    sput-object v1, Lcom/miui/powercenter/autotask/k;->d:Lcom/miui/powercenter/autotask/k;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/miui/powercenter/autotask/k;->d:Lcom/miui/powercenter/autotask/k;

    return-object p0
.end method


# virtual methods
.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/powercenter/autotask/k;->c:Z

    return v0
.end method

.method public c()V
    .locals 3

    iget-boolean v0, p0, Lcom/miui/powercenter/autotask/k;->b:Z

    if-eqz v0, :cond_1

    const-string v0, "2.0"

    invoke-static {v0}, Lmiuix/view/HapticCompat;->c(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/autotask/k;->a:Lmiui/util/HapticFeedbackUtil;

    sget v2, Lmiuix/view/i;->B:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/powercenter/autotask/k;->a:Lmiui/util/HapticFeedbackUtil;

    const v2, 0x10000003

    :goto_0
    invoke-virtual {v0, v2, v1}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(IZ)Z

    :cond_1
    return-void
.end method

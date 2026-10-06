.class Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/gamebooster/view/IncomingCallFloatBall$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/service/GameBoosterTelecomManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Landroid/content/Context;

.field private e:J

.field private f:Lcom/miui/gamebooster/view/IncomingCallFloatBall;

.field private g:Z

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d$a;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d$a;-><init>(Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d;)V

    iput-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d;->a:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d;->g:Z

    iput-boolean v0, p0, Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d;->h:Z

    iput-object p1, p0, Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d;->d:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d;->b:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d;)J
    .locals 2

    iget-wide v0, p0, Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d;->e:J

    return-wide v0
.end method

.method static synthetic c(Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d;)Lcom/miui/gamebooster/view/IncomingCallFloatBall;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d;->f:Lcom/miui/gamebooster/view/IncomingCallFloatBall;

    return-object p0
.end method

.method static synthetic d(Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d;->g:Z

    return p0
.end method

.method static synthetic e(Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d;->d:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic g(Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d;->h:Z

    return p0
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d;->d:Landroid/content/Context;

    const-string v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    :try_start_0
    const-string v1, "endCall"

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GameBoosterReflectUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public h()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dismissFloatBall: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GameBoosterTeleManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d;->h:Z

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d;->f:Lcom/miui/gamebooster/view/IncomingCallFloatBall;

    invoke-virtual {v0}, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->b()V

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d;->a:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method public i(J)Ljava/lang/String;
    .locals 10

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    const v2, 0x7f100035

    const v3, 0x7f100034

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-gez v1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    new-array p2, v4, [Ljava/lang/Object;

    const-string v1, "--"

    aput-object v1, p2, v5

    invoke-virtual {v0, v3, v5, p2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array p2, v4, [Ljava/lang/Object;

    aput-object v1, p2, v5

    invoke-virtual {v0, v2, v5, p2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-wide/16 v6, 0x3e8

    div-long/2addr p1, v6

    const-wide/16 v6, 0x3c

    div-long v8, p1, v6

    long-to-int v1, v8

    rem-long/2addr p1, v6

    long-to-int p1, p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-virtual {v0, v3, v1, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v1, v4, [Ljava/lang/Object;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const-string v4, "%02d"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v5

    invoke-virtual {v0, v2, p1, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public j()V
    .locals 3

    new-instance v0, Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d$b;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d$b;-><init>(Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d;->c:Ljava/lang/String;

    return-void
.end method

.method public l(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d;->e:J

    return-void
.end method

.method public m()V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showFloatBall: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d;->h:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GameBoosterTeleManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d;->h:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->a(Landroid/content/Context;)Lcom/miui/gamebooster/view/IncomingCallFloatBall;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d;->f:Lcom/miui/gamebooster/view/IncomingCallFloatBall;

    iget-object v1, p0, Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d;->c:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->setCallerName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d;->f:Lcom/miui/gamebooster/view/IncomingCallFloatBall;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d;->e:J

    sub-long/2addr v3, v5

    invoke-virtual {p0, v3, v4}, Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d;->i(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->setCallDuration(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d;->f:Lcom/miui/gamebooster/view/IncomingCallFloatBall;

    invoke-virtual {v0, p0}, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->setOnHangUpClickListener(Lcom/miui/gamebooster/view/IncomingCallFloatBall$b;)V

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d;->f:Lcom/miui/gamebooster/view/IncomingCallFloatBall;

    invoke-virtual {v0}, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->g()V

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d;->a:Landroid/os/Handler;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iput-boolean v2, p0, Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d;->h:Z

    :cond_1
    return-void
.end method

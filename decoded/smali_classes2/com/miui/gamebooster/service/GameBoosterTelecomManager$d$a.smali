.class Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d$a;->a:Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d$a;->a:Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d;

    invoke-static {p1}, Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d;->c(Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d;)Lcom/miui/gamebooster/view/IncomingCallFloatBall;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d$a;->a:Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d$a;->a:Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d;

    invoke-static {v4}, Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d;->b(Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d;->i(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->setCallDuration(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d$a;->a:Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d;

    invoke-static {p1}, Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d;->d(Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d;)Z

    move-result p1

    if-nez p1, :cond_1

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    :goto_0
    return-void
.end method

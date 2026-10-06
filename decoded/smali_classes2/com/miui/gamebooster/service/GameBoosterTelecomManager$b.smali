.class Lcom/miui/gamebooster/service/GameBoosterTelecomManager$b;
.super Landroid/telephony/PhoneStateListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/service/GameBoosterTelecomManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/service/GameBoosterTelecomManager;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/service/GameBoosterTelecomManager;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/service/GameBoosterTelecomManager$b;->a:Lcom/miui/gamebooster/service/GameBoosterTelecomManager;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPhoneStateChanged state :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GameBoosterTeleManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/gamebooster/service/GameBoosterTelecomManager$b;->a:Lcom/miui/gamebooster/service/GameBoosterTelecomManager;

    invoke-static {p1}, Lcom/miui/gamebooster/service/GameBoosterTelecomManager;->c(Lcom/miui/gamebooster/service/GameBoosterTelecomManager;)Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/gamebooster/service/GameBoosterTelecomManager$b;->a:Lcom/miui/gamebooster/service/GameBoosterTelecomManager;

    new-instance v0, Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d;

    invoke-virtual {p1}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/miui/gamebooster/service/GameBoosterTelecomManager;->d(Lcom/miui/gamebooster/service/GameBoosterTelecomManager;Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d;)Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d;

    iget-object p1, p0, Lcom/miui/gamebooster/service/GameBoosterTelecomManager$b;->a:Lcom/miui/gamebooster/service/GameBoosterTelecomManager;

    invoke-static {p1}, Lcom/miui/gamebooster/service/GameBoosterTelecomManager;->c(Lcom/miui/gamebooster/service/GameBoosterTelecomManager;)Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d;->j()V

    :cond_1
    iget-object p1, p0, Lcom/miui/gamebooster/service/GameBoosterTelecomManager$b;->a:Lcom/miui/gamebooster/service/GameBoosterTelecomManager;

    invoke-static {p1}, Lcom/miui/gamebooster/service/GameBoosterTelecomManager;->e(Lcom/miui/gamebooster/service/GameBoosterTelecomManager;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/miui/gamebooster/service/GameBoosterTelecomManager$b;->a:Lcom/miui/gamebooster/service/GameBoosterTelecomManager;

    invoke-static {p1}, Lcom/miui/gamebooster/service/GameBoosterTelecomManager;->c(Lcom/miui/gamebooster/service/GameBoosterTelecomManager;)Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d;

    move-result-object p1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d;->l(J)V

    iget-object p1, p0, Lcom/miui/gamebooster/service/GameBoosterTelecomManager$b;->a:Lcom/miui/gamebooster/service/GameBoosterTelecomManager;

    invoke-static {p1}, Lcom/miui/gamebooster/service/GameBoosterTelecomManager;->c(Lcom/miui/gamebooster/service/GameBoosterTelecomManager;)Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d;->m()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/miui/gamebooster/service/GameBoosterTelecomManager$b;->a:Lcom/miui/gamebooster/service/GameBoosterTelecomManager;

    invoke-static {p1}, Lcom/miui/gamebooster/service/GameBoosterTelecomManager;->c(Lcom/miui/gamebooster/service/GameBoosterTelecomManager;)Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/gamebooster/service/GameBoosterTelecomManager$b;->a:Lcom/miui/gamebooster/service/GameBoosterTelecomManager;

    invoke-static {p1}, Lcom/miui/gamebooster/service/GameBoosterTelecomManager;->c(Lcom/miui/gamebooster/service/GameBoosterTelecomManager;)Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d;->h()V

    iget-object p1, p0, Lcom/miui/gamebooster/service/GameBoosterTelecomManager$b;->a:Lcom/miui/gamebooster/service/GameBoosterTelecomManager;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/miui/gamebooster/service/GameBoosterTelecomManager;->d(Lcom/miui/gamebooster/service/GameBoosterTelecomManager;Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d;)Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d;

    :cond_3
    iget-object p1, p0, Lcom/miui/gamebooster/service/GameBoosterTelecomManager$b;->a:Lcom/miui/gamebooster/service/GameBoosterTelecomManager;

    invoke-static {p1}, Lcom/miui/gamebooster/service/GameBoosterTelecomManager;->e(Lcom/miui/gamebooster/service/GameBoosterTelecomManager;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/miui/gamebooster/service/GameBoosterTelecomManager$b;->a:Lcom/miui/gamebooster/service/GameBoosterTelecomManager;

    invoke-virtual {p1}, Landroid/app/Service;->stopSelf()V

    :cond_4
    :goto_0
    return-void
.end method

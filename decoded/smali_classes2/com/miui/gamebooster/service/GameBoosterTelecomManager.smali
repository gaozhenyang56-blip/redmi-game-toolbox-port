.class public Lcom/miui/gamebooster/service/GameBoosterTelecomManager;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gamebooster/service/GameBoosterTelecomManager$c;,
        Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d;
    }
.end annotation


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Z

.field private c:Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d;

.field private d:Landroid/telephony/PhoneStateListener;

.field private e:Lcom/miui/gamebooster/service/GameBoosterTelecomManager$c;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterTelecomManager;->a:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterTelecomManager;->c:Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d;

    new-instance v0, Lcom/miui/gamebooster/service/GameBoosterTelecomManager$b;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/service/GameBoosterTelecomManager$b;-><init>(Lcom/miui/gamebooster/service/GameBoosterTelecomManager;)V

    iput-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterTelecomManager;->d:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method static synthetic a(Lcom/miui/gamebooster/service/GameBoosterTelecomManager;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/service/GameBoosterTelecomManager;->a:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic b(Lcom/miui/gamebooster/service/GameBoosterTelecomManager;)Landroid/telephony/PhoneStateListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/service/GameBoosterTelecomManager;->d:Landroid/telephony/PhoneStateListener;

    return-object p0
.end method

.method static synthetic c(Lcom/miui/gamebooster/service/GameBoosterTelecomManager;)Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/service/GameBoosterTelecomManager;->c:Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d;

    return-object p0
.end method

.method static synthetic d(Lcom/miui/gamebooster/service/GameBoosterTelecomManager;Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d;)Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d;
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/service/GameBoosterTelecomManager;->c:Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d;

    return-object p1
.end method

.method static synthetic e(Lcom/miui/gamebooster/service/GameBoosterTelecomManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/gamebooster/service/GameBoosterTelecomManager;->b:Z

    return p0
.end method


# virtual methods
.method public f()V
    .locals 3

    const-string v0, "GameBoosterTeleManager"

    const-string v1, "onEnterGameBoosterMode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gamebooster/service/GameBoosterTelecomManager;->b:Z

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/miui/gamebooster/service/GameBoosterTelecomManager;->d:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    sget-boolean v0, Lm6/c;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/miui/gamebooster/service/GameBoosterTelecomManager$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/gamebooster/service/GameBoosterTelecomManager$c;-><init>(Lcom/miui/gamebooster/service/GameBoosterTelecomManager;Lcom/miui/gamebooster/service/GameBoosterTelecomManager$a;)V

    iput-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterTelecomManager;->e:Lcom/miui/gamebooster/service/GameBoosterTelecomManager$c;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.miui.gamebooster.service.DEBUG_INCOMING_CALL"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public g()V
    .locals 2

    const-string v0, "GameBoosterTeleManager"

    const-string v1, "onQuitGameBoosterMode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gamebooster/service/GameBoosterTelecomManager;->b:Z

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterTelecomManager;->c:Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d;->h()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterTelecomManager;->c:Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d;

    :cond_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const-string p1, "GameBoosterTeleManager"

    const-string v0, "onBind"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/miui/gamebooster/service/GameBoosterTelecomManager$a;

    invoke-direct {p1, p0}, Lcom/miui/gamebooster/service/GameBoosterTelecomManager$a;-><init>(Lcom/miui/gamebooster/service/GameBoosterTelecomManager;)V

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "GameBoosterTeleManager"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroy()V
    .locals 3

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const-string v0, "GameBoosterTeleManager"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/miui/gamebooster/service/GameBoosterTelecomManager;->d:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    sget-boolean v0, Lm6/c;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterTelecomManager;->e:Lcom/miui/gamebooster/service/GameBoosterTelecomManager$c;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterTelecomManager;->c:Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d;->h()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterTelecomManager;->c:Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d;

    :cond_1
    return-void
.end method

.class Lcom/miui/gamebooster/service/GameBoosterTelecomManager$c;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/service/GameBoosterTelecomManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/service/GameBoosterTelecomManager;


# direct methods
.method private constructor <init>(Lcom/miui/gamebooster/service/GameBoosterTelecomManager;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/service/GameBoosterTelecomManager$c;->a:Lcom/miui/gamebooster/service/GameBoosterTelecomManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gamebooster/service/GameBoosterTelecomManager;Lcom/miui/gamebooster/service/GameBoosterTelecomManager$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/service/GameBoosterTelecomManager$c;-><init>(Lcom/miui/gamebooster/service/GameBoosterTelecomManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "state"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v0, "incomingNumber"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterTelecomManager$c;->a:Lcom/miui/gamebooster/service/GameBoosterTelecomManager;

    invoke-static {v0}, Lcom/miui/gamebooster/service/GameBoosterTelecomManager;->b(Lcom/miui/gamebooster/service/GameBoosterTelecomManager;)Landroid/telephony/PhoneStateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterTelecomManager$c;->a:Lcom/miui/gamebooster/service/GameBoosterTelecomManager;

    invoke-static {v0}, Lcom/miui/gamebooster/service/GameBoosterTelecomManager;->b(Lcom/miui/gamebooster/service/GameBoosterTelecomManager;)Landroid/telephony/PhoneStateListener;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

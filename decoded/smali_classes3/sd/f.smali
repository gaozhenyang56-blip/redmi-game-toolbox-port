.class public Lsd/f;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsd/f$c;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Landroid/database/ContentObserver;

.field private c:Z

.field private d:I

.field private e:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsd/f;->a:Z

    iput-boolean v0, p0, Lsd/f;->c:Z

    iput v0, p0, Lsd/f;->d:I

    return-void
.end method

.method public static synthetic a(Lsd/f;Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lsd/f;->u(Landroid/content/Context;I)V

    return-void
.end method

.method public static synthetic b(Lsd/f;I)V
    .locals 0

    invoke-direct {p0, p1}, Lsd/f;->v(I)V

    return-void
.end method

.method static synthetic c(Lsd/f;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lsd/f;->m(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic d(Lsd/f;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lsd/f;->n(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic e(Lsd/f;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lsd/f;->o(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic f(Lsd/f;)Z
    .locals 0

    iget-boolean p0, p0, Lsd/f;->a:Z

    return p0
.end method

.method static synthetic g(Lsd/f;Z)Z
    .locals 0

    iput-boolean p1, p0, Lsd/f;->a:Z

    return p1
.end method

.method static synthetic h(Lsd/f;)Z
    .locals 0

    invoke-direct {p0}, Lsd/f;->j()Z

    move-result p0

    return p0
.end method

.method static synthetic i(Lsd/f;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lsd/f;->k(Landroid/content/Context;)V

    return-void
.end method

.method private j()Z
    .locals 3

    iget-object v0, p0, Lsd/f;->e:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "key_fast_charge_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method private k(Landroid/content/Context;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lsd/f;->l(Landroid/content/Context;I)V

    return-void
.end method

.method private l(Landroid/content/Context;I)V
    .locals 1

    new-instance v0, Lsd/e;

    invoke-direct {v0, p0, p1, p2}, Lsd/e;-><init>(Lsd/f;Landroid/content/Context;I)V

    invoke-static {v0}, Lx4/f;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method private m(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const-string v0, "miui.intent.extra.quick_charge_type"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "miui.intent.extra.POWER_MAX"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-static {p1}, Lme/w;->L(Landroid/content/Context;)Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pc fastcharge receive fastcharge broadcast! type is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " powerMax: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " isInCharging "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "FastChargeReceiver"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lde/i;->M()Lde/i;

    move-result-object v2

    invoke-virtual {v2}, Lde/i;->O()I

    move-result v2

    const-string v3, "handlePowerConnected: BATTERY_PLUGGED_WIRELESS=4"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lsd/f;->t(I)Z

    move-result v0

    goto :goto_0

    :cond_1
    invoke-static {v0, p2}, Lsd/f;->s(II)Z

    move-result v0

    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handlePowerConnected: plugType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "\tisPowerSupport="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x1

    invoke-static {v0}, Lgd/c;->z2(Z)V

    invoke-static {p2}, Lgd/c;->A2(I)V

    invoke-static {}, Lgd/c;->V0()Z

    move-result v5

    if-nez v5, :cond_3

    const-string p1, "pc fastcharge handlePowerConnected noti disabled return"

    :goto_1
    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    if-eq v2, v3, :cond_4

    invoke-static {}, Lld/a;->a()Ljava/lang/String;

    move-result-object v5

    const-string v6, "WIRED_TOP_SPEED_FAST"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v5, v0

    goto :goto_2

    :cond_4
    move v5, v1

    :goto_2
    if-ne v2, v3, :cond_5

    invoke-static {}, Lld/a;->b()Ljava/lang/String;

    move-result-object v3

    const-string v6, "WIRELESS_TOPSPEED"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v1, v0

    :cond_5
    if-nez v5, :cond_9

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    invoke-static {p1}, Lme/w;->j(Landroid/content/Context;)I

    move-result v0

    invoke-static {}, Lgd/c;->D0()I

    move-result v1

    if-le v0, v1, :cond_7

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "pc fastcharge handlePowerConnected currentLevel is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " levelThreshold is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " return"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_7
    if-gtz p2, :cond_8

    return-void

    :cond_8
    invoke-static {p1, p2, v2}, Lsd/c;->b(Landroid/content/Context;II)V

    return-void

    :cond_9
    :goto_3
    invoke-static {p1}, Lme/w;->j(Landroid/content/Context;)I

    move-result p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FastChargeEnabledDefault true, show exit notification batteryPercent: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x64

    if-ge p2, v1, :cond_a

    invoke-static {p1, v2}, Lsd/c;->c(Landroid/content/Context;I)V

    if-eqz v5, :cond_a

    invoke-static {v0}, Lsd/f;->y(Z)V

    :cond_a
    return-void
.end method

.method private n(Landroid/content/Context;)V
    .locals 3

    const-string v0, "FastChargeReceiver"

    const-string v1, "pc fastcharge receive broadcast android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-static {v0}, Lgd/c;->z2(Z)V

    invoke-static {v0}, Lgd/c;->A2(I)V

    invoke-static {p1}, Lsd/c;->a(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lgd/c;->U0()Z

    move-result v1

    const-string v2, "key_fast_charge_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Lld/a;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WIRELESS_TOPSPEED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lsd/b;->i(Z)V

    invoke-static {}, Lme/q;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lsd/f;->k(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private o(Landroid/content/Context;)V
    .locals 2

    const-string v0, "FastChargeReceiver"

    const-string v1, "pc fastcharge receive broadcast android.intent.action.ACTION_SHUTDOWN"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lme/w;->L(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lgd/c;->z2(Z)V

    invoke-static {v0}, Lgd/c;->A2(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {}, Lgd/c;->U0()Z

    move-result v0

    const-string v1, "key_fast_charge_enabled"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method private p(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lsd/f;->b:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    new-instance v0, Lsd/f$b;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1, p1}, Lsd/f$b;-><init>(Lsd/f;Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v0, p0, Lsd/f;->b:Landroid/database/ContentObserver;

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "key_fast_charge_enabled"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lsd/f;->b:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private q()V
    .locals 2

    invoke-static {}, Lme/q;->A()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lsd/f;->j()Z

    move-result v0

    iput-boolean v0, p0, Lsd/f;->a:Z

    new-instance v0, Lsd/d;

    invoke-direct {v0, p0}, Lsd/d;-><init>(Lsd/f;)V

    invoke-static {}, Lee/e;->a()Lee/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lee/e;->k(Lsd/f$c;)V

    return-void
.end method

.method public static r(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "key_fast_charge_enabled"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method private static s(II)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ge p0, v2, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1f

    if-lt v2, v3, :cond_1

    const/16 v2, 0x59

    if-ge p1, v2, :cond_1

    move p1, v0

    goto :goto_1

    :cond_1
    move p1, v1

    :goto_1
    if-nez p0, :cond_3

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    return v0

    :cond_3
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlePowerConnected: isBelowFastChargeType120W="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "\tisBelowFastChargeType90W="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FastChargeReceiver"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private static t(I)Z
    .locals 1

    const/16 v0, 0x4f

    if-le p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic u(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lsd/f;->w(Landroid/content/Context;I)V

    return-void
.end method

.method private synthetic v(I)V
    .locals 1

    iget-boolean v0, p0, Lsd/f;->a:Z

    if-nez v0, :cond_0

    const-string p1, "FastChargeReceiver"

    const-string v0, "modeChange not fastMode return!!!"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lsd/f;->e:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lsd/f;->l(Landroid/content/Context;I)V

    return-void
.end method

.method private w(Landroid/content/Context;I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lsd/f;->j()Z

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleFastChargeStateChanged: fastChargeState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FastChargeReceiver"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2}, Lsd/f;->x(ZI)V

    invoke-static {p1}, Lsd/f;->y(Z)V

    return-void
.end method

.method private x(ZI)V
    .locals 4

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "8"

    :goto_0
    if-eqz p1, :cond_1

    move-object v1, v0

    goto :goto_1

    :cond_1
    const-string v1, "0"

    :goto_1
    const/4 v2, 0x0

    const-string v3, "/sys/class/thermal/thermal_message/charger_temp"

    invoke-static {v3, v1, v2}, Lme/e0;->o(Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyFastChargeStateToBsp: state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ",sicMode:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",fastChargeValue:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FastChargeReceiver"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static y(Z)V
    .locals 10

    const-class v0, Ljava/lang/String;

    const-string v1, "notifiFwFastCharge: "

    const-string v2, "FastChargeReceiver"

    :try_start_0
    invoke-static {}, Lme/w;->Z()Z

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyWiredFastChargeStateToFw: supportLowFastCharge"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_0

    return-void

    :cond_0
    if-eqz p0, :cond_1

    const-string p0, "1"

    goto :goto_0

    :cond_1
    const-string p0, "0"

    :goto_0
    const-string v3, "miui.util.IMiCharge"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getInstance"

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5, v7}, Lbh/f;->h(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-class v4, Ljava/lang/Boolean;

    const-string v5, "setMiChargePath"

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Class;

    aput-object v0, v8, v6

    const/4 v9, 0x1

    aput-object v0, v8, v9

    new-array v0, v7, [Ljava/lang/Object;

    const-string v7, "sport_mode"

    aput-object v7, v0, v6

    aput-object p0, v0, v9

    invoke-static {v3, v4, v5, v8, v0}, Lbh/f;->b(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",setValue ="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-static {v2, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method


# virtual methods
.method public A(Landroid/content/Context;)V
    .locals 1

    iget-boolean v0, p0, Lsd/f;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsd/f;->c:Z

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lsd/f;->b:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lsd/f;->b:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "FastChargeReceiver"

    const-string p2, "onReceive: action is null!!!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lde/i;->M()Lde/i;

    move-result-object v1

    invoke-virtual {v1}, Lde/i;->J()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lde/i;->M()Lde/i;

    move-result-object v1

    invoke-virtual {v1}, Lde/i;->J()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lsd/f$a;

    invoke-direct {v2, p0, v0, p1, p2}, Lsd/f$a;-><init>(Lsd/f;Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public z(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    iput-object p1, p0, Lsd/f;->e:Landroid/content/Context;

    iget-boolean v0, p0, Lsd/f;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsd/f;->c:Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "miui.intent.action.ACTION_QUICK_CHARGE_TYPE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-static {p1, p0, v0, v1}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    invoke-direct {p0, p1}, Lsd/f;->p(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lsd/f;->k(Landroid/content/Context;)V

    invoke-direct {p0}, Lsd/f;->q()V

    :cond_0
    return-void
.end method

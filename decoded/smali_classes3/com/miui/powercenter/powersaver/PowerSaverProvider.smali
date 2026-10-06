.class public Lcom/miui/powercenter/powersaver/PowerSaverProvider;
.super Landroid/content/ContentProvider;
.source "SourceFile"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/powercenter/powersaver/PowerSaverProvider;->a:Z

    return-void
.end method

.method public static synthetic a(Lcom/miui/powercenter/powersaver/PowerSaverProvider;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/powercenter/powersaver/PowerSaverProvider;->g(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic b(Lcom/miui/powercenter/powersaver/PowerSaverProvider;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/powercenter/powersaver/PowerSaverProvider;->f(Landroid/os/Bundle;)V

    return-void
.end method

.method private c(Landroid/os/Bundle;Z)V
    .locals 8

    const-string v0, "POWER_SUPERSAVE_MODE_OPEN"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "POWER_SUPERSAVE_MODE_FROMUSER"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    const-wide/16 v1, 0x7d0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lme/w;->Q(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    invoke-direct {p0, v4, v3, v5}, Lcom/miui/powercenter/powersaver/PowerSaverProvider;->n(ZZLjava/lang/String;)V

    const-string v3, "EnterSuperPower"

    invoke-static {v4, v3}, Lhd/a;->b1(ZLjava/lang/String;)V

    :cond_0
    invoke-static {}, Lce/g;->q()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lme/w;->P(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, v4}, Lcom/miui/powercenter/powersaver/PowerSaverProvider;->k(Z)V

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lde/j;->y(Landroid/content/Context;)V

    :cond_1
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lme/w;->F(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, v4}, Lcom/miui/powercenter/powersaver/PowerSaverProvider;->i(Z)V

    :cond_2
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "ultimate"

    invoke-static {v3, v4}, Lce/g;->y(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-nez p2, :cond_4

    invoke-static {}, Lme/q;->k()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x3

    invoke-static {v5, v6}, Lpg/i;->L(Landroid/content/Context;I)V

    invoke-static {}, Lde/i;->M()Lde/i;

    move-result-object v5

    invoke-virtual {v5}, Lde/i;->J()Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/miui/powercenter/powersaver/PowerSaverProvider$a;

    invoke-direct {v6, p0}, Lcom/miui/powercenter/powersaver/PowerSaverProvider$a;-><init>(Lcom/miui/powercenter/powersaver/PowerSaverProvider;)V

    invoke-virtual {v5, v6, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v5, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    const-class v7, Lcom/miui/superpower/SuperPowerProgressActivity;

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v6, "isEnter"

    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v4, 0x10000000

    invoke-virtual {v5, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_4
    invoke-static {}, Lce/g;->q()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-direct {p0, v3}, Lcom/miui/powercenter/powersaver/PowerSaverProvider;->i(Z)V

    :cond_5
    :goto_0
    if-eqz p2, :cond_6

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Ljg/e;->y(Landroid/content/Context;)Ljg/e;

    move-result-object p2

    invoke-virtual {p2, v0, p1}, Ljg/e;->U(ZZ)V

    goto :goto_1

    :cond_6
    if-nez v0, :cond_7

    invoke-static {}, Lme/q;->k()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Ljg/e;->y(Landroid/content/Context;)Ljg/e;

    move-result-object p2

    invoke-virtual {p2}, Ljg/e;->x()Landroid/os/Handler;

    move-result-object p2

    new-instance v3, Lcom/miui/powercenter/powersaver/PowerSaverProvider$b;

    invoke-direct {v3, p0, v0, p1}, Lcom/miui/powercenter/powersaver/PowerSaverProvider$b;-><init>(Lcom/miui/powercenter/powersaver/PowerSaverProvider;ZZ)V

    invoke-virtual {p2, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Ljg/e;->y(Landroid/content/Context;)Ljg/e;

    move-result-object p2

    invoke-virtual {p2, v0, p1}, Ljg/e;->W(ZZ)V

    :goto_1
    return-void
.end method

.method private d()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lbe/f;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lbe/g;

    invoke-direct {v1}, Lbe/g;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lbe/c;

    invoke-direct {v1}, Lbe/c;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lbe/h;

    invoke-direct {v1}, Lbe/h;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lbe/i;

    invoke-direct {v1}, Lbe/i;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-boolean v1, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    if-nez v1, :cond_0

    new-instance v1, Lbe/a;

    invoke-direct {v1}, Lbe/a;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-ge v1, v2, :cond_1

    new-instance v1, Lbe/b;

    invoke-direct {v1}, Lbe/b;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method private e()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lbe/f;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lbe/e;

    invoke-direct {v1}, Lbe/e;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private synthetic f(Landroid/os/Bundle;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "METHOD_CHANGE_POWER_MODE,call_package:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerSaverProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lme/w;->S(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    const-string v0, "POWER_SAVE_MODE_OPEN"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "deviceId"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/miui/powercenter/powersaver/PowerSaverProvider;->m(ZLjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/miui/powercenter/powersaver/PowerSaverProvider;->p(Z)V

    if-eqz v0, :cond_1

    const-string v0, "LOW_BATTERY_DIALOG"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lme/w;->j(Landroid/content/Context;)I

    move-result p1

    const/16 v0, 0xa

    if-le p1, v0, :cond_0

    const/16 v1, 0x14

    if-ge p1, v1, :cond_0

    invoke-static {}, Lhd/a;->w0()V

    goto :goto_0

    :cond_0
    if-ge p1, v0, :cond_1

    invoke-static {}, Lhd/a;->x0()V

    :goto_0
    invoke-static {p1}, Lhd/a;->F(I)V

    :cond_1
    return-void
.end method

.method private synthetic g(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "POWER_PERFORMANCE_MODE_OPEN"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "POWER_PERFORMANCE_MODE_FROMUSER"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/miui/powercenter/powersaver/PowerSaverProvider;->l(ZZ)V

    invoke-direct {p0, v0}, Lcom/miui/powercenter/powersaver/PowerSaverProvider;->o(Z)V

    return-void
.end method

.method private h(Z)V
    .locals 7

    const-string v0, "setPowerSaveModeEnabled"

    const-string v1, "PowerSaverProvider"

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-ge v2, v3, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v2, "persist.sys.miui_optimization"

    const-string v3, "1"

    const-string v4, "ro.miui.cts"

    invoke-static {v4}, Lmiuix/core/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_1

    move v3, v5

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    invoke-static {v2, v3}, Lmiuix/core/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    xor-int/2addr v2, v5

    if-nez v2, :cond_2

    invoke-static {}, Lme/q;->s()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    new-array v3, v5, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v3, v4

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v5, v4

    invoke-static {v2, v0, v3, v5}, Lbh/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "setPowerSaveModeEnabled: "

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    :goto_1
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_2
    return-void
.end method

.method private i(Z)V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.HIDE_MODE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "hideModeStatus"

    const-string v2, "POWER_BALANCED_MODE_OPEN"

    const-string v3, "enhance"

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v4, 0x0

    :goto_0
    invoke-static {p1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v3}, Lce/g;->y(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private j(ZZ)V
    .locals 2

    invoke-static {}, Lce/g;->q()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lme/w;->F(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lme/w;->Q(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/miui/powercenter/powersaver/PowerSaverProvider;->m(ZLjava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lde/j;->z(Landroid/content/Context;)V

    :cond_2
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lme/w;->P(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, v0}, Lcom/miui/powercenter/powersaver/PowerSaverProvider;->k(Z)V

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lde/j;->y(Landroid/content/Context;)V

    :cond_3
    const/4 v0, 0x1

    :cond_4
    invoke-direct {p0, v0}, Lcom/miui/powercenter/powersaver/PowerSaverProvider;->i(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " switchBalancedMode  enabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " fromUser = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PowerSaverProvider"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private k(Z)V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.HIDE_MODE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v1, 0x1

    const-string v2, "hideModeStatus"

    const-string v3, "POWER_PERFORMANCE_MODE_OPEN"

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "performance"

    invoke-static {p1, v1}, Lce/g;->y(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v4, 0x0

    invoke-static {p1, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v3, "enhance"

    invoke-static {p1, v3}, Lce/g;->y(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v1}, Lcom/miui/powercenter/powersaver/PowerSaverProvider;->i(Z)V

    :goto_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private l(ZZ)V
    .locals 2

    invoke-static {}, Lce/g;->q()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lme/w;->P(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lme/w;->Q(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/miui/powercenter/powersaver/PowerSaverProvider;->m(ZLjava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lme/w;->F(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, v0}, Lcom/miui/powercenter/powersaver/PowerSaverProvider;->i(Z)V

    :cond_3
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/powercenter/powersaver/PowerSaverProvider;->k(Z)V

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lme/w;->P(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lde/j;->d0(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lde/j;->z(Landroid/content/Context;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, v0}, Lcom/miui/powercenter/powersaver/PowerSaverProvider;->k(Z)V

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lde/j;->y(Landroid/content/Context;)V

    :cond_5
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " switchPerformanceMode  enabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " fromUser = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PowerSaverProvider"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private m(ZLjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/miui/powercenter/powersaver/PowerSaverProvider;->n(ZZLjava/lang/String;)V

    return-void
.end method

.method private n(ZZLjava/lang/String;)V
    .locals 10

    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.POWER_SAVE_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/miui/powercenter/powersaver/PowerSaverProvider;->d()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0}, Lcom/miui/powercenter/powersaver/PowerSaverProvider;->e()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, La8/l0;->g(Landroid/content/Context;)Z

    move-result v3

    const-string v4, "PowerSaverProvider"

    const-string v5, "POWER_SAVE_MODE_OPEN_MAML"

    const-string v6, "POWER_SAVE_MODE_OPEN"

    const/4 v7, 0x0

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lme/w;->Q(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lce/g;->q()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lme/w;->P(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-direct {p0, v7}, Lcom/miui/powercenter/powersaver/PowerSaverProvider;->k(Z)V

    :cond_1
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lme/w;->F(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-direct {p0, v7}, Lcom/miui/powercenter/powersaver/PowerSaverProvider;->i(Z)V

    :cond_2
    new-instance p2, Lce/f;

    invoke-direct {p2}, Lce/f;-><init>()V

    const/4 v7, 0x1

    invoke-virtual {p2, v7}, Lce/f;->g(I)V

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "ultimate"

    invoke-static {v8, v9}, Lce/g;->y(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v7, p2}, Lce/g;->B(Landroid/content/Context;ZLce/f;)V

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v7}, Lce/g;->v(Landroid/content/Context;Z)V

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v7}, Lce/g;->w(Landroid/content/Context;Z)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lbe/f;

    instance-of v9, v8, Lbe/g;

    if-eqz v9, :cond_3

    check-cast v8, Lbe/g;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v8, v9, p2}, Lbe/g;->c(Landroid/content/Context;Lce/f;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-interface {v8, v9}, Lbe/f;->b(Landroid/content/Context;)V

    goto :goto_0

    :cond_4
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbe/f;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-interface {v2, v8}, Lbe/f;->b(Landroid/content/Context;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lme/w;->j(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Lce/c;->m(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Open power save mode, battery percent "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lme/w;->H0(Landroid/content/Context;)V

    invoke-static {v1}, Lpg/e;->d(I)V

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lpg/c;->p(Landroid/content/Context;)Lpg/c;

    move-result-object v1

    invoke-virtual {v1}, Lpg/c;->t()V

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lde/j;->F(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lde/j;->e0(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lde/j;->y(Landroid/content/Context;)V

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p3}, Lcom/miui/powercenter/continuity/PowerContinuityNoticeUtils;->g(Landroid/content/Context;Ljava/lang/String;)V

    :cond_6
    if-nez v3, :cond_d

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, v7}, Lce/g;->D(Landroid/content/Context;Z)V

    iput-boolean v7, p0, Lcom/miui/powercenter/powersaver/PowerSaverProvider;->a:Z

    goto/16 :goto_4

    :cond_7
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p3

    const-string v3, "enhance"

    invoke-static {p3, v3}, Lce/g;->y(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, v7}, Lce/g;->A(Landroid/content/Context;Z)V

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, v7}, Lce/g;->v(Landroid/content/Context;Z)V

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, v7}, Lce/g;->w(Landroid/content/Context;Z)V

    iget-boolean p3, p0, Lcom/miui/powercenter/powersaver/PowerSaverProvider;->a:Z

    if-eqz p3, :cond_8

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, v7}, Lce/g;->D(Landroid/content/Context;Z)V

    iput-boolean v7, p0, Lcom/miui/powercenter/powersaver/PowerSaverProvider;->a:Z

    :cond_8
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbe/f;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v2, v3}, Lbe/f;->a(Landroid/content/Context;)V

    goto :goto_2

    :cond_9
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    invoke-static {p3, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lme/w;->j(Landroid/content/Context;)I

    move-result p3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Close power save mode, battery percent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v7}, Lce/c;->m(I)V

    invoke-static {p3}, Lpg/e;->c(I)V

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lpg/c;->p(Landroid/content/Context;)Lpg/c;

    move-result-object p3

    invoke-virtual {p3}, Lpg/c;->t()V

    if-nez p2, :cond_a

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lbe/f;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {p3, v1}, Lbe/f;->a(Landroid/content/Context;)V

    goto :goto_3

    :cond_a
    new-instance p2, Lbe/g;

    invoke-direct {p2}, Lbe/g;-><init>()V

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p2, p3}, Lbe/g;->a(Landroid/content/Context;)V

    sget-boolean p2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p2, :cond_b

    new-instance p2, Lbe/d;

    invoke-direct {p2}, Lbe/d;-><init>()V

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p2, p3}, Lbe/d;->a(Landroid/content/Context;)V

    :cond_b
    sget-boolean p2, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    if-nez p2, :cond_c

    new-instance p2, Lbe/a;

    invoke-direct {p2}, Lbe/a;-><init>()V

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p2, p3}, Lbe/a;->a(Landroid/content/Context;)V

    :cond_c
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lde/j;->z(Landroid/content/Context;)V

    new-instance p2, Lce/f;

    invoke-direct {p2}, Lce/f;-><init>()V

    invoke-virtual {p2, v7}, Lce/f;->g(I)V

    :cond_d
    :goto_4
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, p2}, Lce/g;->G(Landroid/content/Context;Lce/f;)V

    invoke-direct {p0, p1}, Lcom/miui/powercenter/powersaver/PowerSaverProvider;->h(Z)V

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private o(Z)V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerSaverProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1, v0}, Lhd/a;->W0(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private p(Z)V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerSaverProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1, v0}, Lhd/a;->b1(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4

    const-string v0, "changePowerMode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lde/i;->M()Lde/i;

    move-result-object v0

    new-instance v1, Lce/d;

    invoke-direct {v1, p0, p3}, Lce/d;-><init>(Lcom/miui/powercenter/powersaver/PowerSaverProvider;Landroid/os/Bundle;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lde/i;->h0(Ljava/lang/Runnable;J)V

    goto/16 :goto_1

    :cond_0
    const-string v0, "changePerformanceMode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lde/i;->M()Lde/i;

    move-result-object v0

    new-instance v1, Lce/e;

    invoke-direct {v1, p0, p3}, Lce/e;-><init>(Lcom/miui/powercenter/powersaver/PowerSaverProvider;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Lde/i;->g0(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    :cond_1
    const-string v0, "changeBalancedMode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "POWER_BALANCED_MODE_OPEN"

    invoke-virtual {p3, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "POWER_BALANCED_MODE_FROMUSER"

    invoke-virtual {p3, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/miui/powercenter/powersaver/PowerSaverProvider;->j(ZZ)V

    goto/16 :goto_1

    :cond_2
    const-string v0, "showLowBatteryDialog"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lme/w;->j(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_3

    const/16 v2, 0x14

    if-ge v0, v2, :cond_3

    invoke-static {}, Lhd/a;->y0()V

    goto/16 :goto_1

    :cond_3
    if-ge v0, v1, :cond_4

    const/4 v1, 0x5

    if-le v0, v1, :cond_4

    invoke-static {}, Lhd/a;->A0()V

    goto :goto_1

    :cond_4
    invoke-static {}, Lhd/a;->z0()V

    goto :goto_1

    :cond_5
    const-string v0, "changeSuperPowerMode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p3, v0}, Lcom/miui/powercenter/powersaver/PowerSaverProvider;->c(Landroid/os/Bundle;Z)V

    goto :goto_1

    :cond_6
    const-string v0, "cleanMemory"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "CLEAN_MEMORY_EXCEPTION_LIST"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callpackage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",appList:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SuperPowerClean"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-static {v0}, Ljg/b;->b(Ljava/util/List;)V

    goto :goto_1

    :cond_8
    const-string v0, "changeExtremeEnduranceMode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_0

    :cond_9
    const-string v0, "showSuperPowerHome"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ljg/e;->G(Landroid/content/Context;)V

    :cond_a
    :goto_1
    invoke-super {p0, p1, p2, p3}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.class public Lmd/h;
.super Lnd/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmd/h$c;,
        Lmd/h$b;
    }
.end annotation


# static fields
.field private static i:J

.field private static j:J

.field private static k:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static l:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static m:Ljava/lang/Boolean;


# instance fields
.field private g:Lmd/h$c;

.field private h:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lmd/h;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lmd/h;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnd/c;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmd/h$a;)V
    .locals 0

    invoke-direct {p0}, Lmd/h;-><init>()V

    return-void
.end method

.method private C(Lzd/b;)I
    .locals 1

    invoke-virtual {p1}, Lzd/b;->c()I

    move-result v0

    invoke-virtual {p1}, Lzd/b;->b()I

    move-result p1

    if-gt v0, p1, :cond_0

    sub-int/2addr p1, v0

    return p1

    :cond_0
    rsub-int v0, v0, 0x5a0

    add-int/2addr v0, p1

    return v0
.end method

.method private D(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/powercenter/provider/PowerSaveService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.miui.powercenter.action.ACTION_CHECK_NIGHT_CHARGE_ALARM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    const/high16 v2, 0xc000000

    invoke-static {p1, v1, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method private E(Ljava/util/Date;)I
    .locals 1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 p1, 0xb

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    return p1
.end method

.method public static F()Lmd/h;
    .locals 1

    invoke-static {}, Lmd/h$b;->a()Lmd/h;

    move-result-object v0

    return-object v0
.end method

.method private G(Ljava/util/Date;)I
    .locals 1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 p1, 0xc

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    return p1
.end method

.method private I(Landroid/content/Context;J)Landroid/app/PendingIntent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/powercenter/provider/PowerSaveService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.miui.powercenter.action.ACTION_RECHARGE_ALARM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "extra_recharge_trigger_time"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/4 p2, 0x0

    const/high16 p3, 0xc000000

    invoke-static {p1, p2, v0, p3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method private J(Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    invoke-direct {p0, p1}, Lmd/h;->L(Ljava/util/List;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int p1, v0

    return p1
.end method

.method private K(Ljava/util/Date;)I
    .locals 1

    invoke-direct {p0, p1}, Lmd/h;->E(Ljava/util/Date;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    invoke-direct {p0, p1}, Lmd/h;->G(Ljava/util/Date;)I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method private L(Ljava/util/List;)D
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)D"
        }
    .end annotation

    invoke-direct {p0, p1}, Lmd/h;->m(Ljava/util/List;)I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    int-to-double v4, v2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr v2, v0

    int-to-double v2, v2

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v4, v2

    double-to-int v2, v4

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    div-int/2addr v2, p1

    int-to-double v0, v2

    return-wide v0
.end method

.method private N()V
    .locals 3

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object v1, p0, Lmd/h;->h:Landroid/content/Context;

    const-string v2, "night_charge_back_list.json"

    invoke-static {v1, v2}, Lx4/e;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lmd/h$a;

    invoke-direct {v2, p0}, Lmd/h$a;-><init>(Lmd/h;)V

    invoke-virtual {v2}, Lcom/google/common/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lmd/h;->c0(Z)V

    :cond_0
    return-void
.end method

.method public static P()Z
    .locals 6

    sget-wide v0, Lmd/h;->j:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    const-wide/16 v1, 0x0

    if-lez v0, :cond_0

    sput-wide v1, Lmd/h;->j:J

    :cond_0
    sget-wide v3, Lmd/h;->j:J

    cmp-long v0, v3, v1

    const/4 v1, 0x1

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lmd/h;->j:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x2255100

    cmp-long v0, v2, v4

    if-ltz v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private Q()Z
    .locals 10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "key_night_charge_record"

    invoke-static {v1, v0}, Lr4/a;->m(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const-string v3, "BaseChargeProtect_Night"

    const/4 v4, 0x4

    if-ge v1, v4, :cond_0

    const-string v0, "isNeedNightChargeProtection  return false case 1 "

    :goto_0
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const-wide v4, 0x7fffffffffffffffL

    const-wide/high16 v6, -0x8000000000000000L

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    :try_start_0
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v8, "charge_end_timestamp"

    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v8

    goto :goto_2

    :catch_1
    move-exception v8

    :goto_2
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :cond_1
    sub-long/2addr v6, v4

    const-wide/32 v4, 0x5265c00

    div-long/2addr v6, v4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    int-to-long v0, v0

    cmp-long v0, v6, v0

    if-ltz v0, :cond_2

    const-string v0, "isNeedNightChargeProtection  return false case 2 "

    goto :goto_0

    :cond_2
    invoke-static {}, Lgd/c;->f()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_3

    const-string v0, "isNeedNightChargeProtection  return false case 3 "

    goto :goto_0

    :cond_3
    invoke-static {}, Lgd/c;->s0()I

    move-result v0

    const/16 v1, 0x3c

    if-gt v0, v1, :cond_4

    const/4 v0, 0x1

    return v0

    :cond_4
    const-string v0, "isNeedNightChargeProtection  return false case 4 "

    goto :goto_0
.end method

.method public static W()Z
    .locals 6

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v4}, Landroid/view/Display;->getState()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static declared-synchronized X()Z
    .locals 3

    const-class v0, Lmd/h;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lmd/h;->m:Ljava/lang/Boolean;

    if-nez v1, :cond_3

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v1, :cond_0

    sget-object v1, Lmd/h;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-static {}, Lgd/c;->U()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    sput-object v1, Lmd/h;->m:Ljava/lang/Boolean;

    goto :goto_1

    :cond_2
    const-string v1, "persist.vendor.night.charge"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lmiuix/core/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    :cond_3
    :goto_1
    sget-object v1, Lmd/h;->m:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private Z(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "charge_end_timestamp"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v6, v4, v0

    if-gez v6, :cond_1

    move v3, v2

    move-wide v0, v4

    goto :goto_2

    :catch_0
    move-exception v4

    goto :goto_1

    :catch_1
    move-exception v4

    :goto_1
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_3
    :goto_3
    return-void
.end method

.method private static c0(Z)V
    .locals 2

    sget-object v0, Lmd/h;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setInternationalBlackDevice:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BaseChargeProtect_Night"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private m(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    invoke-direct {p0, p1}, Lmd/h;->n(Ljava/util/List;)I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    div-int/2addr v0, p1

    return v0
.end method

.method private n(Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method static synthetic p(Lmd/h;)V
    .locals 0

    invoke-direct {p0}, Lmd/h;->u()V

    return-void
.end method

.method static synthetic q(Lmd/h;Ljava/util/Date;)I
    .locals 0

    invoke-direct {p0, p1}, Lmd/h;->K(Ljava/util/Date;)I

    move-result p0

    return p0
.end method

.method private u()V
    .locals 2

    const-string v0, "BaseChargeProtect_Night"

    const-string v1, "clearNightChargeHistory "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Lgd/c;->e2(Ljava/util/ArrayList;)V

    const/4 v0, -0x1

    invoke-static {v0}, Lgd/c;->b1(I)V

    invoke-static {v0}, Lgd/c;->D1(I)V

    const/4 v0, 0x0

    invoke-static {v0}, Lgd/c;->o2(I)V

    invoke-static {v0}, Lgd/c;->m2(I)V

    invoke-static {}, Lgd/c;->b()V

    invoke-static {}, Lgd/c;->c()V

    return-void
.end method

.method private v()I
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "key_night_charge_record"

    invoke-static {v1, v0}, Lr4/a;->m(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/16 v2, 0x5a0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "charge_end_minute"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "earliestEndTime: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " size: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseChargeProtect_Night"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private x()I
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "key_night_charge_record"

    invoke-static {v1, v0}, Lr4/a;->m(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "charge_start_minute"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v5, 0x78

    if-gt v4, v5, :cond_0

    add-int/lit16 v4, v4, 0x5a0

    :cond_0
    add-int/2addr v3, v4

    goto :goto_0

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    div-int v2, v3, v1

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "aveChargeStartMinute: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    rem-int/lit16 v2, v2, 0x5a0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " size: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseChargeProtect_Night"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private y()I
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "key_night_charge_record"

    invoke-static {v1, v0}, Lr4/a;->m(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "charge_start_minute"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x78

    if-gt v2, v3, :cond_0

    add-int/lit16 v2, v2, 0x5a0

    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1}, Lmd/h;->J(Ljava/util/List;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startAverageTimeSD: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BaseChargeProtect_Night"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private z()J
    .locals 3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public A(Landroid/content/Context;)V
    .locals 4

    invoke-virtual {p0}, Lmd/h;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lmd/c;->r(I)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setNightChargingState result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BaseChargeProtect_Night"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_1

    const-string v1, "sendRechargeAlarm  "

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lmd/h;->b0(Landroid/content/Context;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lmd/h;->i:J

    invoke-static {}, Lgd/c;->E1()V

    sget-object p1, Lmd/h;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Lme/d;->h()Lme/d;

    move-result-object p1

    invoke-virtual {p1, v0}, Lme/d;->s(Z)V

    invoke-static {}, Lhd/a;->O()V

    :cond_1
    return-void
.end method

.method public B(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p0}, Lmd/h;->U()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "BaseChargeProtect_Night"

    const-string v1, "exitNightChargeProtection"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lmd/h;->M(Landroid/content/Context;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lmd/h;->j:J

    invoke-virtual {p0}, Lmd/h;->d0()V

    const/4 p1, 0x0

    invoke-static {p1}, Lmd/c;->r(I)Ljava/lang/Boolean;

    return-void
.end method

.method public H(Landroid/content/Context;)I
    .locals 10

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "next_alarm_clock_long"

    const-wide/16 v2, -0x1

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v2, v0, v2

    const-string v3, "BaseChargeProtect_Night"

    if-eqz v2, :cond_0

    const-wide/16 v4, 0x0

    cmp-long p1, v0, v4

    if-eqz p1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v6, v0, v6

    const-wide/32 v8, 0x2932e00

    cmp-long p1, v6, v8

    if-gez p1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v6, v0, v6

    cmp-long p1, v6, v4

    if-lez p1, :cond_1

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nextDeskClockTime = "

    :goto_0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lmd/h;->K(Ljava/util/Date;)I

    move-result p1

    return p1

    :cond_0
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    invoke-virtual {p1}, Landroid/app/AlarmManager;->getNextAlarmClock()Landroid/app/AlarmManager$AlarmClockInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v0

    new-instance p1, Ljava/util/Date;

    const-wide/32 v4, 0x36ee80

    add-long/2addr v4, v0

    invoke-direct {p1, v4, v5}, Ljava/util/Date;-><init>(J)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTriggerTime = "

    goto :goto_0

    :cond_1
    const p1, 0x7fffffff

    return p1
.end method

.method public M(Landroid/content/Context;)V
    .locals 2

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    const/4 v0, 0x0

    const v1, 0x7f121246

    invoke-virtual {p1, v0, v1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    return-void
.end method

.method protected O(Lzd/b;I)Z
    .locals 2

    invoke-static {}, Lmd/c;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lgd/c;->e0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lzd/b;->a()I

    move-result p1

    invoke-static {}, Lgd/c;->L()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/16 p1, 0x64

    if-ge p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected R(Landroid/content/Context;)Z
    .locals 8

    invoke-static {p1}, Lme/w;->L(Landroid/content/Context;)Z

    move-result v0

    invoke-static {p1}, Lme/w;->k(Landroid/content/Context;)I

    move-result p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eq p1, v3, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    invoke-virtual {p0}, Lmd/h;->U()Z

    move-result v3

    invoke-static {}, Lgd/c;->e0()Z

    move-result v4

    invoke-static {}, Lmd/h;->P()Z

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isInCharging:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ",isNotUsb:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ",isNightChargeProtectionOpen:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ",isNeedChargeProtection:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ",isFirstProtectionToday:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "BaseChargeProtect_Night"

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    if-nez v3, :cond_1

    if-eqz v4, :cond_1

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1
.end method

.method protected S(Lzd/b;)Z
    .locals 4

    invoke-virtual {p1}, Lzd/b;->b()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x1e0

    if-le v0, v2, :cond_0

    invoke-virtual {p1}, Lzd/b;->b()I

    move-result v0

    const/16 v2, 0x528

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lzd/b;->d()I

    move-result v0

    const/16 v2, 0x12c

    const/4 v3, 0x1

    if-lt v0, v2, :cond_1

    return v3

    :cond_1
    invoke-direct {p0, p1}, Lmd/h;->C(Lzd/b;)I

    move-result p1

    const/16 v0, 0x168

    if-lt p1, v0, :cond_2

    return v3

    :cond_2
    return v1
.end method

.method public T()Z
    .locals 2

    invoke-static {}, Lgd/c;->i()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-static {}, Lgd/c;->L()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public U()Z
    .locals 2

    invoke-static {}, Lmd/c;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method protected V()Z
    .locals 5

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-direct {p0, v0}, Lmd/h;->K(Ljava/util/Date;)I

    move-result v0

    invoke-static {}, Lgd/c;->i()I

    move-result v1

    invoke-static {}, Lgd/c;->L()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eq v1, v3, :cond_4

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lgd/c;->s0()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v3, 0x1

    if-gt v1, v2, :cond_2

    if-lt v0, v1, :cond_1

    if-gt v0, v2, :cond_1

    move v4, v3

    :cond_1
    return v4

    :cond_2
    if-ge v0, v1, :cond_3

    if-gt v0, v2, :cond_4

    :cond_3
    move v4, v3

    :cond_4
    :goto_0
    return v4
.end method

.method protected Y(Lzd/b;)V
    .locals 2

    invoke-virtual {p0, p1}, Lmd/h;->S(Lzd/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lzd/b;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "key_night_charge_record"

    invoke-static {v1, v0}, Lr4/a;->m(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1}, Lzd/b;->n()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v1, 0x7

    if-le p1, v1, :cond_0

    invoke-direct {p0, v0}, Lmd/h;->Z(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lgd/c;->e2(Ljava/util/ArrayList;)V

    invoke-direct {p0}, Lmd/h;->x()I

    move-result p1

    invoke-static {p1}, Lgd/c;->b1(I)V

    invoke-direct {p0}, Lmd/h;->v()I

    move-result p1

    invoke-static {p1}, Lgd/c;->D1(I)V

    invoke-direct {p0}, Lmd/h;->y()I

    move-result p1

    invoke-static {p1}, Lgd/c;->o2(I)V

    invoke-virtual {p0}, Lmd/h;->w()I

    move-result p1

    invoke-static {p1}, Lgd/c;->m2(I)V

    :cond_1
    return-void
.end method

.method public a0(Landroid/content/Context;)V
    .locals 6

    invoke-virtual {p0}, Lmd/h;->T()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xdbba0

    add-long/2addr v0, v2

    invoke-virtual {p0}, Lmd/h;->V()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0}, Lmd/h;->z()J

    move-result-wide v0

    invoke-static {}, Lgd/c;->i()I

    move-result v2

    int-to-long v2, v2

    const-wide/32 v4, 0xea60

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    :cond_1
    const-string v2, "alarm"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    invoke-direct {p0, p1}, Lmd/h;->D(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0, v1, p1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkTime: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BaseChargeProtect_Night"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "MODE_NIGHT"

    return-object v0
.end method

.method public b0(Landroid/content/Context;)V
    .locals 9

    invoke-static {}, Lgd/c;->L()I

    move-result v0

    const/16 v1, 0x1e0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-gtz v0, :cond_0

    invoke-virtual {p0, p1}, Lmd/h;->B(Landroid/content/Context;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lmd/h;->H(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rechargeMinute = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BaseChargeProtect_Night"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-direct {p0, v1}, Lmd/h;->K(Ljava/util/Date;)I

    move-result v1

    const-wide/32 v3, 0xea60

    invoke-direct {p0}, Lmd/h;->z()J

    move-result-wide v5

    if-ge v0, v1, :cond_1

    const-wide/32 v7, 0x5265c00

    add-long/2addr v5, v7

    :cond_1
    int-to-long v0, v0

    mul-long/2addr v0, v3

    add-long/2addr v5, v0

    invoke-static {}, Lme/w;->K()Z

    move-result v0

    const-wide/32 v3, 0x6ddd00

    if-eqz v0, :cond_3

    invoke-static {}, Lx4/t;->E()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lme/w;->z()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const-wide/32 v0, 0x36ee80

    sub-long/2addr v5, v0

    goto :goto_0

    :cond_3
    sub-long/2addr v5, v3

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v0, v5, v0

    cmp-long v0, v0, v3

    if-gez v0, :cond_4

    const-string v0, "less than two hours,exitNightChargeProtection"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lmd/h;->B(Landroid/content/Context;)V

    return-void

    :cond_4
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rechargetime: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v5, v6}, Lmd/h;->I(Landroid/content/Context;J)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {v0, v1, v5, v6, p1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method public d0()V
    .locals 8

    sget-wide v0, Lmd/h;->i:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    sget-wide v4, Lmd/h;->j:J

    cmp-long v2, v4, v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    sub-long v2, v4, v0

    const-wide/32 v6, 0x2255100

    cmp-long v2, v2, v6

    if-lez v2, :cond_1

    return-void

    :cond_1
    sub-long/2addr v4, v0

    const-wide/32 v0, 0xea60

    div-long/2addr v4, v0

    long-to-int v0, v4

    invoke-static {v0}, Lhd/a;->N(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public e()V
    .locals 2

    invoke-super {p0}, Lnd/a;->e()V

    invoke-virtual {p0}, Lnd/a;->h()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmd/h;->A(Landroid/content/Context;)V

    const-string v0, "BaseChargeProtect_Night"

    const-string v1, "openProtect NightChargeProtectManager"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public f()V
    .locals 2

    invoke-super {p0}, Lnd/a;->f()V

    invoke-virtual {p0}, Lnd/a;->h()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmd/h;->B(Landroid/content/Context;)V

    const-string v0, "BaseChargeProtect_Night"

    const-string v1, "closeProtect NightChargeProtectManager"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public g(Landroid/content/Context;Lmd/o$b;Lmd/p;)V
    .locals 1

    const-string v0, "BaseChargeProtect_Night"

    invoke-super {p0, p1, p2, p3}, Lnd/a;->g(Landroid/content/Context;Lmd/o$b;Lmd/p;)V

    iput-object p1, p0, Lmd/h;->h:Landroid/content/Context;

    :try_start_0
    invoke-direct {p0}, Lmd/h;->N()V

    const-string p2, "ares"

    const-string p3, "chopin"

    filled-new-array {p2, p3}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lx4/a0;->s([Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lmd/h;->U()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lmd/h;->h:Landroid/content/Context;

    invoke-virtual {p0, p2}, Lmd/h;->B(Landroid/content/Context;)V

    invoke-direct {p0}, Lmd/h;->u()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    const-string p3, "init: "

    invoke-static {v0, p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    invoke-static {}, Lmd/h;->X()Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Lmd/h$c;

    invoke-direct {p2, p0}, Lmd/h$c;-><init>(Lmd/h;)V

    iput-object p2, p0, Lmd/h;->g:Lmd/h$c;

    invoke-virtual {p2, p1}, Lmd/h$c;->k(Landroid/content/Context;)V

    const-string p1, "register NightChargeProtectReceiver"

    goto :goto_0

    :cond_1
    const-string p1, "can not register NightChargeProtectReceiver!!!"

    :goto_0
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected o(Landroid/content/Context;)V
    .locals 2

    const-string v0, "BaseChargeProtect_Night"

    const-string v1, "abnormalExitNightChargeProtection"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lmd/h;->B(Landroid/content/Context;)V

    invoke-static {}, Lgd/c;->Y0()V

    invoke-virtual {p0}, Lmd/h;->t()V

    invoke-static {}, Lhd/a;->M()V

    return-void
.end method

.method public r()Z
    .locals 1

    invoke-virtual {p0}, Lmd/h;->V()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lmd/h;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public s(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p0}, Lmd/h;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "ares"

    const-string v1, "chopin"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lx4/a0;->s([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "BaseChargeProtect_Night"

    const-string v0, "return because is K10 or K10A"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-static {p1}, Lme/w;->N(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lmd/h;->V()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lmd/h;->W()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lnd/a;->j(Z)V

    :cond_2
    return-void
.end method

.method public t()V
    .locals 2

    invoke-direct {p0}, Lmd/h;->Q()Z

    move-result v0

    invoke-static {}, Lgd/c;->e0()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lmd/h;->u()V

    :cond_0
    invoke-static {v0}, Lgd/c;->Z1(Z)V

    return-void
.end method

.method public w()I
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "key_night_charge_record"

    invoke-static {v1, v0}, Lr4/a;->m(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "charge_end_minute"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x1e0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1}, Lmd/h;->J(Ljava/util/List;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startAverageTimeSD: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BaseChargeProtect_Night"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

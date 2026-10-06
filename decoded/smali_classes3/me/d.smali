.class public Lme/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/d$c;
    }
.end annotation


# static fields
.field public static E:Ljava/lang/String; = "ChargeTimeV2Manager"

.field private static F:F = 4400.0f

.field private static G:I = -0x1


# instance fields
.field A:Z

.field private B:F

.field C:Z

.field private D:Ljava/util/concurrent/atomic/AtomicInteger;

.field private a:J

.field private b:I

.field private c:J

.field private d:I

.field private e:I

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private g:[F

.field private h:[F

.field private i:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/miui/powercenter/bean/ChargeCurrentConfig;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/miui/powercenter/bean/ChargeCurrentConfig;",
            ">;"
        }
    .end annotation
.end field

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:J

.field private p:J

.field private q:J

.field private r:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private s:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private t:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private u:I

.field private v:I

.field private w:I

.field private x:J

.field private y:I

.field z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lme/d;->a:J

    const/4 v0, 0x0

    iput v0, p0, Lme/d;->b:I

    const-wide/16 v1, 0x1388

    iput-wide v1, p0, Lme/d;->c:J

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lme/d;->f:Ljava/util/List;

    const/16 v1, 0x15

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    iput-object v1, p0, Lme/d;->g:[F

    const/16 v1, 0x13

    new-array v1, v1, [F

    fill-array-data v1, :array_1

    iput-object v1, p0, Lme/d;->h:[F

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lme/d;->i:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lme/d;->j:Ljava/util/concurrent/ConcurrentHashMap;

    iput v0, p0, Lme/d;->k:I

    const/4 v1, 0x0

    iput-object v1, p0, Lme/d;->r:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object v1, p0, Lme/d;->s:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lme/d;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean v0, p0, Lme/d;->z:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lme/d;->A:Z

    iput-boolean v0, p0, Lme/d;->C:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    sget v1, Lme/d;->G:I

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lme/d;->D:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void

    :array_0
    .array-data 4
        0x42b20000    # 89.0f
        0x42b40000    # 90.0f
        0x42b50000    # 90.5f
        0x42b60000    # 91.0f
        0x42b76666    # 91.7f
        0x42b8cccd    # 92.4f
        0x42ba0000    # 93.0f
        0x42bb6666    # 93.7f
        0x42bccccd    # 94.4f
        0x42be0000    # 95.0f
        0x42bf6666    # 95.7f
        0x42c03333    # 96.1f
        0x42c20000    # 97.0f
        0x42c36666    # 97.7f
        0x42c4cccd    # 98.4f
        0x42c60000    # 99.0f
        0x42c66666    # 99.2f
        0x42c6cccd    # 99.4f
        0x42c73333    # 99.6f
        0x42c7999a    # 99.8f
        0x42c80000    # 100.0f
    .end array-data

    :array_1
    .array-data 4
        0x42b20000    # 89.0f
        0x42b40000    # 90.0f
        0x42b60000    # 91.0f
        0x42b90000    # 92.5f
        0x42bb0000    # 93.5f
        0x42bc0000    # 94.0f
        0x42bd0000    # 94.5f
        0x42bf0000    # 95.5f
        0x42c00000    # 96.0f
        0x42c10000    # 96.5f
        0x42c30000    # 97.5f
        0x42c40000    # 98.0f
        0x42c50000    # 98.5f
        0x42c60000    # 99.0f
        0x42c66666    # 99.2f
        0x42c6cccd    # 99.4f
        0x42c73333    # 99.6f
        0x42c7999a    # 99.8f
        0x42c80000    # 100.0f
    .end array-data
.end method

.method synthetic constructor <init>(Lme/d$a;)V
    .locals 0

    invoke-direct {p0}, Lme/d;-><init>()V

    return-void
.end method

.method private a(ZLcom/miui/powercenter/bean/ChargeCurrentConfig;)V
    .locals 2

    invoke-virtual {p2}, Lcom/miui/powercenter/bean/ChargeCurrentConfig;->getIs_double_battery()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/miui/powercenter/bean/ChargeCurrentConfig;->getIs_fast_charge_mode()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "one_battery_balance"

    :goto_0
    invoke-direct {p0, p1, v0, p2}, Lme/d;->r(ZLjava/lang/String;Lcom/miui/powercenter/bean/ChargeCurrentConfig;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Lcom/miui/powercenter/bean/ChargeCurrentConfig;->getIs_double_battery()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/miui/powercenter/bean/ChargeCurrentConfig;->getIs_fast_charge_mode()I

    move-result v0

    if-ne v0, v1, :cond_1

    const-string v0, "one_battery_fast"

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/miui/powercenter/bean/ChargeCurrentConfig;->getIs_double_battery()I

    move-result v0

    if-ne v0, v1, :cond_2

    invoke-virtual {p2}, Lcom/miui/powercenter/bean/ChargeCurrentConfig;->getIs_fast_charge_mode()I

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "double_battery_balance"

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lcom/miui/powercenter/bean/ChargeCurrentConfig;->getIs_double_battery()I

    move-result v0

    if-ne v0, v1, :cond_3

    invoke-virtual {p2}, Lcom/miui/powercenter/bean/ChargeCurrentConfig;->getIs_fast_charge_mode()I

    move-result v0

    if-ne v0, v1, :cond_3

    const-string v0, "double_battery_fast"

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method private b(Lcom/miui/powercenter/bean/ChargeTimeConfig;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/powercenter/bean/ChargeTimeConfig;",
            ")",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    const/16 v1, 0x21

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/powercenter/bean/ChargeTimeConfig;->getWattage_33()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x37

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/powercenter/bean/ChargeTimeConfig;->getWattage_55()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x41

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/powercenter/bean/ChargeTimeConfig;->getWattage_65()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x43

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/powercenter/bean/ChargeTimeConfig;->getWattage_67()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x5a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/powercenter/bean/ChargeTimeConfig;->getWattage_90()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x78

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/powercenter/bean/ChargeTimeConfig;->getWattage_120()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xd2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/powercenter/bean/ChargeTimeConfig;->getWattage_210()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private c(II)V
    .locals 2

    const/16 v0, 0x50

    if-gt p1, v0, :cond_2

    add-int/lit8 v0, p1, -0x1

    iget v1, p0, Lme/d;->d:I

    if-ne v0, v1, :cond_0

    iput p2, p0, Lme/d;->l:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lme/d;->o:J

    :cond_0
    add-int/lit8 v0, p1, -0x14

    iget v1, p0, Lme/d;->d:I

    if-ne v0, v1, :cond_1

    iput p2, p0, Lme/d;->m:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lme/d;->p:J

    :cond_1
    add-int/lit8 p1, p1, -0x28

    iget v0, p0, Lme/d;->d:I

    if-ne p1, v0, :cond_2

    iput p2, p0, Lme/d;->n:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lme/d;->q:J

    :cond_2
    return-void
.end method

.method private d()Z
    .locals 1

    iget-object v0, p0, Lme/d;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lme/d;->r:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    iget-object v0, p0, Lme/d;->s:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

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

.method private f(ZZZI)I
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lme/d;->i:Ljava/util/concurrent/ConcurrentHashMap;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lme/d;->j:Ljava/util/concurrent/ConcurrentHashMap;

    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lme/d;->q(Ljava/util/concurrent/ConcurrentHashMap;ZZ)Lcom/miui/powercenter/bean/ChargeCurrentConfig;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_8

    const/16 p3, 0x21

    if-eq p4, p3, :cond_7

    const/16 p3, 0x37

    if-eq p4, p3, :cond_6

    const/16 p3, 0x41

    if-eq p4, p3, :cond_5

    const/16 p3, 0x43

    if-eq p4, p3, :cond_4

    const/16 p3, 0x5a

    if-eq p4, p3, :cond_3

    const/16 p3, 0x78

    if-eq p4, p3, :cond_2

    const/16 p3, 0xd2

    if-eq p4, p3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/miui/powercenter/bean/ChargeCurrentConfig;->getWattage_210()I

    move-result p2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/miui/powercenter/bean/ChargeCurrentConfig;->getWattage_120()I

    move-result p2

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/miui/powercenter/bean/ChargeCurrentConfig;->getWattage_90()I

    move-result p2

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/miui/powercenter/bean/ChargeCurrentConfig;->getWattage_67()I

    move-result p2

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Lcom/miui/powercenter/bean/ChargeCurrentConfig;->getWattage_65()I

    move-result p2

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Lcom/miui/powercenter/bean/ChargeCurrentConfig;->getWattage_55()I

    move-result p2

    goto :goto_1

    :cond_7
    invoke-virtual {p1}, Lcom/miui/powercenter/bean/ChargeCurrentConfig;->getWattage_33()I

    move-result p2

    :cond_8
    :goto_1
    return p2
.end method

.method public static h()Lme/d;
    .locals 1

    invoke-static {}, Lme/d$c;->a()Lme/d;

    move-result-object v0

    return-object v0
.end method

.method private i(I)F
    .locals 10

    iget v0, p0, Lme/d;->k:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x78

    if-lt v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    const v3, 0x40f9999a    # 7.8f

    goto :goto_1

    :cond_1
    const v3, 0x404ccccd    # 3.2f

    :goto_1
    invoke-static {}, Lme/e;->j()I

    move-result v4

    invoke-static {}, Lme/e;->f()I

    move-result v5

    iput v5, p0, Lme/d;->y:I

    if-eqz v0, :cond_2

    const v6, 0x3f733333    # 0.95f

    goto :goto_2

    :cond_2
    const v6, 0x3f7851ec    # 0.97f

    :goto_2
    int-to-float v7, v4

    int-to-float v5, v5

    div-float/2addr v7, v5

    div-float/2addr v7, v6

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v7, v5

    const/high16 v8, 0x3f800000    # 1.0f

    add-float/2addr v7, v8

    cmpl-float v5, v7, v5

    if-ltz v5, :cond_3

    return v8

    :cond_3
    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v5

    const/4 v7, 0x4

    invoke-virtual {v5, v2, v7}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigDecimal;->floatValue()F

    move-result v5

    sget-object v7, Lme/d;->E:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getLastPeriodTime virtual_soc_by_calculate:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, ",rm:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",mFcc:"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lme/d;->y:I

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",help_delta:"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_4

    iget-object v0, p0, Lme/d;->g:[F

    invoke-direct {p0, v5, v0}, Lme/d;->p(F[F)I

    move-result v0

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lme/d;->h:[F

    invoke-direct {p0, v5, v0}, Lme/d;->p(F[F)I

    move-result v0

    :goto_3
    const/16 v4, 0x59

    if-le p1, v4, :cond_5

    const/4 v5, -0x1

    if-ne v0, v5, :cond_5

    sget-object v0, Lme/d;->E:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "percent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",searchIndex == -1!!!, return mCurrentLastPeriodTime:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lme/d;->B:F

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p0, Lme/d;->B:F

    return p1

    :cond_5
    if-gt p1, v4, :cond_6

    goto :goto_4

    :cond_6
    move v1, v0

    :goto_4
    const p1, 0x3de978d0    # 0.11399996f

    iget v0, p0, Lme/d;->y:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    const/high16 p1, 0x41a00000    # 20.0f

    div-float/2addr v0, p1

    const/high16 p1, 0x42700000    # 60.0f

    mul-float/2addr v0, p1

    div-float/2addr v0, v3

    const p1, 0x49742400    # 1000000.0f

    div-float/2addr v0, p1

    add-int/2addr v1, v2

    rsub-int/lit8 p1, v1, 0x15

    int-to-float p1, p1

    mul-float/2addr p1, v0

    iput p1, p0, Lme/d;->B:F

    return p1
.end method

.method private j(ZZI)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lme/d;->k(ZZ)Lcom/miui/powercenter/bean/ChargeCurrentConfig;

    move-result-object p1

    if-eqz p1, :cond_6

    const/16 p2, 0x21

    if-eq p3, p2, :cond_5

    const/16 p2, 0x37

    if-eq p3, p2, :cond_4

    const/16 p2, 0x41

    if-eq p3, p2, :cond_3

    const/16 p2, 0x43

    if-eq p3, p2, :cond_2

    const/16 p2, 0x78

    if-eq p3, p2, :cond_1

    const/16 p2, 0xd2

    if-eq p3, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/miui/powercenter/bean/ChargeCurrentConfig;->getWattage_210()I

    move-result p1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/miui/powercenter/bean/ChargeCurrentConfig;->getWattage_120()I

    move-result p1

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/miui/powercenter/bean/ChargeCurrentConfig;->getWattage_67()I

    move-result p1

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/miui/powercenter/bean/ChargeCurrentConfig;->getWattage_65()I

    move-result p1

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/miui/powercenter/bean/ChargeCurrentConfig;->getWattage_55()I

    move-result p1

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Lcom/miui/powercenter/bean/ChargeCurrentConfig;->getWattage_33()I

    move-result p1

    goto :goto_1

    :cond_6
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method private k(ZZ)Lcom/miui/powercenter/bean/ChargeCurrentConfig;
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    const-string p1, "key_new_charge_current_balance_below_35"

    :goto_0
    invoke-static {p1}, Lgd/c;->E(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    const-string p1, "key_new_charge_current_fast_below_35"

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    const-string p1, "key_new_charge_current_balance_above_35"

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    const-string p1, "key_new_charge_current_fast_above_35"

    goto :goto_0

    :cond_3
    move-object p1, v0

    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    const-class v0, Lcom/miui/powercenter/bean/ChargeCurrentConfig;

    invoke-virtual {p2, p1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/miui/powercenter/bean/ChargeCurrentConfig;

    :cond_4
    return-object v0
.end method

.method private l(I)V
    .locals 11

    iget-object v0, p0, Lme/d;->D:Ljava/util/concurrent/atomic/AtomicInteger;

    sget v1, Lme/d;->G:I

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-boolean v0, p0, Lme/d;->A:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lme/d;->C:Z

    if-nez v0, :cond_6

    const/16 v0, 0x50

    if-lt p1, v0, :cond_6

    const/16 v0, 0x59

    if-gt p1, v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget-wide v1, p0, Lme/d;->x:J

    move p1, v0

    move-wide v0, v1

    :goto_0
    iget v2, p0, Lme/d;->d:I

    const v3, 0x3f7851ec    # 0.97f

    const/high16 v4, 0x42c80000    # 100.0f

    const/16 v5, 0x23

    const/high16 v6, 0x3f000000    # 0.5f

    const/high16 v7, 0x42700000    # 60.0f

    const/4 v8, 0x0

    const/high16 v9, 0x447a0000    # 1000.0f

    const/4 v10, 0x1

    if-ge v2, v5, :cond_3

    sub-int/2addr p1, v2

    int-to-float p1, p1

    div-float/2addr p1, v4

    iget v2, p0, Lme/d;->y:I

    int-to-float v2, v2

    div-float/2addr v2, v9

    mul-float/2addr p1, v2

    mul-float/2addr p1, v3

    mul-float/2addr p1, v7

    div-float/2addr p1, v9

    iget-wide v2, p0, Lme/d;->a:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    div-float/2addr v0, v9

    div-float/2addr v0, v7

    div-float/2addr p1, v0

    mul-float/2addr p1, v9

    float-to-int p1, p1

    iget-boolean v0, p0, Lme/d;->z:Z

    iget v1, p0, Lme/d;->u:I

    if-ne v1, v10, :cond_1

    move v1, v10

    goto :goto_1

    :cond_1
    move v1, v8

    :goto_1
    iget v2, p0, Lme/d;->v:I

    invoke-direct {p0, v10, v0, v1, v2}, Lme/d;->f(ZZZI)I

    move-result v0

    if-lez v0, :cond_6

    int-to-float p1, p1

    int-to-float v0, v0

    mul-float/2addr v0, v6

    cmpl-float v1, p1, v0

    if-lez v1, :cond_6

    mul-float/2addr p1, v6

    add-float/2addr p1, v0

    float-to-int p1, p1

    iget v0, p0, Lme/d;->u:I

    if-ne v0, v10, :cond_2

    move v8, v10

    :cond_2
    iget v0, p0, Lme/d;->v:I

    invoke-direct {p0, v10, v8, p1, v0}, Lme/d;->u(ZZII)V

    goto :goto_4

    :cond_3
    if-lt v2, v5, :cond_6

    const/16 v5, 0x32

    if-gt v2, v5, :cond_6

    sub-int/2addr p1, v2

    int-to-float p1, p1

    div-float/2addr p1, v4

    iget v2, p0, Lme/d;->y:I

    int-to-float v2, v2

    div-float/2addr v2, v9

    mul-float/2addr p1, v2

    mul-float/2addr p1, v3

    mul-float/2addr p1, v7

    div-float/2addr p1, v9

    iget-wide v2, p0, Lme/d;->a:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    div-float/2addr v0, v9

    div-float/2addr v0, v7

    div-float/2addr p1, v0

    mul-float/2addr p1, v9

    float-to-int p1, p1

    iget-boolean v0, p0, Lme/d;->z:Z

    iget v1, p0, Lme/d;->u:I

    if-ne v1, v10, :cond_4

    move v1, v10

    goto :goto_2

    :cond_4
    move v1, v8

    :goto_2
    iget v2, p0, Lme/d;->v:I

    invoke-direct {p0, v8, v0, v1, v2}, Lme/d;->f(ZZZI)I

    move-result v0

    if-lez v0, :cond_6

    int-to-float p1, p1

    int-to-float v0, v0

    mul-float/2addr v0, v6

    cmpl-float v1, p1, v0

    if-lez v1, :cond_6

    mul-float/2addr p1, v6

    add-float/2addr p1, v0

    float-to-int p1, p1

    iget v0, p0, Lme/d;->u:I

    if-ne v0, v10, :cond_5

    goto :goto_3

    :cond_5
    move v10, v8

    :goto_3
    iget v0, p0, Lme/d;->v:I

    invoke-direct {p0, v8, v10, p1, v0}, Lme/d;->u(ZZII)V

    :cond_6
    :goto_4
    return-void
.end method

.method private n(Landroid/content/Context;I)V
    .locals 3

    invoke-static {}, Lme/b;->A()Z

    move-result v0

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-string v2, "charge_time_config.json"

    invoke-static {p1, v2}, Lx4/e;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lme/d$b;

    invoke-direct {v2, p0}, Lme/d$b;-><init>(Lme/d;)V

    invoke-virtual {v2}, Lcom/google/common/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ltz v1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/powercenter/bean/ChargeTimeConfig;

    invoke-virtual {v1}, Lcom/miui/powercenter/bean/ChargeTimeConfig;->getDevice_standard_power()I

    move-result v2

    if-ne v2, p2, :cond_0

    invoke-virtual {v1}, Lcom/miui/powercenter/bean/ChargeTimeConfig;->getIs_double_battery()I

    move-result v2

    if-ne v2, v0, :cond_0

    invoke-virtual {v1}, Lcom/miui/powercenter/bean/ChargeTimeConfig;->getIs_fast_charge_mode()I

    move-result v2

    invoke-direct {p0, v1}, Lme/d;->b(Lcom/miui/powercenter/bean/ChargeTimeConfig;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    if-nez v2, :cond_1

    iput-object v1, p0, Lme/d;->r:Ljava/util/concurrent/ConcurrentHashMap;

    goto :goto_0

    :cond_1
    iput-object v1, p0, Lme/d;->s:Ljava/util/concurrent/ConcurrentHashMap;

    goto :goto_0

    :cond_2
    return-void
.end method

.method private o(I)V
    .locals 2

    iget-object v0, p0, Lme/d;->D:Ljava/util/concurrent/atomic/AtomicInteger;

    sget v1, Lme/d;->G:I

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lme/d;->a:J

    iput p1, p0, Lme/d;->d:I

    iget-object p1, p0, Lme/d;->f:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    const/4 p1, -0x1

    iput p1, p0, Lme/d;->e:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lme/d;->x:J

    const/4 v0, 0x0

    iput v0, p0, Lme/d;->y:I

    iput p1, p0, Lme/d;->u:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lme/d;->A:Z

    const/4 p1, 0x0

    iput p1, p0, Lme/d;->B:F

    const/16 p1, -0x3e8

    iput p1, p0, Lme/d;->l:I

    iput p1, p0, Lme/d;->m:I

    iput p1, p0, Lme/d;->n:I

    iput-boolean v0, p0, Lme/d;->C:Z

    return-void
.end method

.method private p(F[F)I
    .locals 6

    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-gt v1, v0, :cond_2

    sub-int v2, v0, v1

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v1

    aget v3, p2, v2

    const/high16 v4, 0x3f000000    # 0.5f

    sub-float v5, v3, v4

    cmpg-float v5, v5, p1

    if-gtz v5, :cond_0

    add-float/2addr v4, v3

    cmpg-float v4, p1, v4

    if-gtz v4, :cond_0

    return v2

    :cond_0
    cmpl-float v3, v3, p1

    if-lez v3, :cond_1

    add-int/lit8 v2, v2, -0x1

    move v0, v2

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    move v1, v2

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method private q(Ljava/util/concurrent/ConcurrentHashMap;ZZ)Lcom/miui/powercenter/bean/ChargeCurrentConfig;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/miui/powercenter/bean/ChargeCurrentConfig;",
            ">;ZZ)",
            "Lcom/miui/powercenter/bean/ChargeCurrentConfig;"
        }
    .end annotation

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    const-string p2, "one_battery_balance"

    :goto_0
    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/powercenter/bean/ChargeCurrentConfig;

    goto :goto_1

    :cond_0
    if-nez p2, :cond_1

    if-eqz p3, :cond_1

    const-string p2, "one_battery_fast"

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    if-nez p3, :cond_2

    const-string p2, "double_battery_balance"

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    const-string p2, "double_battery_fast"

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method private r(ZLjava/lang/String;Lcom/miui/powercenter/bean/ChargeCurrentConfig;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lme/d;->i:Ljava/util/concurrent/ConcurrentHashMap;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lme/d;->j:Ljava/util/concurrent/ConcurrentHashMap;

    :goto_0
    invoke-virtual {p1, p2, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private t(ZZLjava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    const-string p1, "key_new_charge_current_balance_below_35"

    :goto_0
    invoke-static {p1, p3}, Lgd/c;->v1(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    const-string p1, "key_new_charge_current_fast_below_35"

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    const-string p1, "key_new_charge_current_balance_above_35"

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    const-string p1, "key_new_charge_current_fast_above_35"

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method private u(ZZII)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lme/d;->k(ZZ)Lcom/miui/powercenter/bean/ChargeCurrentConfig;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/powercenter/bean/ChargeCurrentConfig;

    invoke-direct {v0}, Lcom/miui/powercenter/bean/ChargeCurrentConfig;-><init>()V

    :cond_0
    const/16 v1, 0x21

    if-eq p4, v1, :cond_6

    const/16 v1, 0x37

    if-eq p4, v1, :cond_5

    const/16 v1, 0x41

    if-eq p4, v1, :cond_4

    const/16 v1, 0x43

    if-eq p4, v1, :cond_3

    const/16 v1, 0x78

    if-eq p4, v1, :cond_2

    const/16 v1, 0xd2

    if-eq p4, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p3}, Lcom/miui/powercenter/bean/ChargeCurrentConfig;->setWattage_210(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p3}, Lcom/miui/powercenter/bean/ChargeCurrentConfig;->setWattage_120(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0, p3}, Lcom/miui/powercenter/bean/ChargeCurrentConfig;->setWattage_67(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {v0, p3}, Lcom/miui/powercenter/bean/ChargeCurrentConfig;->setWattage_65(I)V

    goto :goto_0

    :cond_5
    invoke-virtual {v0, p3}, Lcom/miui/powercenter/bean/ChargeCurrentConfig;->setWattage_55(I)V

    goto :goto_0

    :cond_6
    invoke-virtual {v0, p3}, Lcom/miui/powercenter/bean/ChargeCurrentConfig;->setWattage_33(I)V

    :goto_0
    new-instance p3, Lcom/google/gson/Gson;

    invoke-direct {p3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p3, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lme/d;->t(ZZLjava/lang/String;)V

    return-void
.end method

.method private v()V
    .locals 9

    iget-boolean v0, p0, Lme/d;->C:Z

    const/16 v1, -0x3e8

    if-nez v0, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lme/d;->o:J

    sub-long v4, v2, v4

    long-to-float v0, v4

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v0, v4

    const/high16 v5, 0x42700000    # 60.0f

    div-float/2addr v0, v5

    float-to-int v0, v0

    iget-wide v6, p0, Lme/d;->p:J

    sub-long v6, v2, v6

    long-to-float v6, v6

    div-float/2addr v6, v4

    div-float/2addr v6, v5

    float-to-int v6, v6

    iget-wide v7, p0, Lme/d;->q:J

    sub-long/2addr v2, v7

    long-to-float v2, v2

    div-float/2addr v2, v4

    div-float/2addr v2, v5

    float-to-int v2, v2

    iget v3, p0, Lme/d;->l:I

    if-eq v3, v1, :cond_0

    iget v4, p0, Lme/d;->d:I

    sub-int/2addr v0, v3

    invoke-static {v4, v0}, Lhd/c;->c(II)V

    :cond_0
    iget v0, p0, Lme/d;->m:I

    if-eq v0, v1, :cond_1

    iget v3, p0, Lme/d;->d:I

    sub-int/2addr v6, v0

    invoke-static {v3, v6}, Lhd/c;->a(II)V

    :cond_1
    iget v0, p0, Lme/d;->n:I

    if-eq v0, v1, :cond_5

    iget v1, p0, Lme/d;->d:I

    sub-int/2addr v2, v0

    invoke-static {v1, v2}, Lhd/c;->b(II)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lme/d;->l:I

    if-eq v0, v1, :cond_3

    iget v0, p0, Lme/d;->d:I

    invoke-static {v0, v1}, Lhd/c;->c(II)V

    :cond_3
    iget v0, p0, Lme/d;->m:I

    if-eq v0, v1, :cond_4

    iget v0, p0, Lme/d;->d:I

    invoke-static {v0, v1}, Lhd/c;->a(II)V

    :cond_4
    iget v0, p0, Lme/d;->n:I

    if-eq v0, v1, :cond_5

    iget v0, p0, Lme/d;->d:I

    invoke-static {v0, v1}, Lhd/c;->b(II)V

    :cond_5
    :goto_0
    return-void
.end method


# virtual methods
.method public e(Landroid/content/Intent;)I
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Lme/d;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, -0x3e8

    return v1

    :cond_0
    const-string v2, "status"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v4, "level"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "scale"

    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    mul-int/lit8 v4, v4, 0x64

    div-int/2addr v4, v1

    sget v1, Lme/d;->G:I

    iget v5, v0, Lme/d;->b:I

    const/4 v6, 0x2

    if-eq v2, v5, :cond_1

    if-ne v2, v6, :cond_1

    invoke-direct {v0, v4}, Lme/d;->o(I)V

    :cond_1
    add-int/lit8 v5, v4, -0x1

    iget v7, v0, Lme/d;->e:I

    const/16 v8, 0xb

    const/4 v9, 0x0

    if-ne v5, v7, :cond_3

    iget-object v5, v0, Lme/d;->f:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v8, :cond_2

    iget-object v5, v0, Lme/d;->f:Ljava/util/List;

    invoke-interface {v5, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2
    iget-object v5, v0, Lme/d;->f:Ljava/util/List;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    const-string v5, "resultLeftChargeTime:"

    if-ne v2, v6, :cond_17

    invoke-static {}, Lme/e;->l()Z

    move-result v6

    if-eqz v6, :cond_18

    invoke-static {}, Lme/e;->i()I

    move-result v1

    iput v1, v0, Lme/d;->v:I

    invoke-static {}, Lme/b;->A()Z

    move-result v1

    iput-boolean v1, v0, Lme/d;->z:Z

    invoke-static {}, Lme/e;->k()I

    move-result v1

    iget v6, v0, Lme/d;->u:I

    if-eq v6, v3, :cond_4

    if-eq v1, v6, :cond_4

    iput-boolean v9, v0, Lme/d;->A:Z

    :cond_4
    iput v1, v0, Lme/d;->u:I

    invoke-static {}, Lme/e;->g()I

    move-result v1

    int-to-float v1, v1

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v1, v6

    float-to-int v1, v1

    iget v7, v0, Lme/d;->d:I

    const/16 v10, 0x23

    const/4 v11, 0x1

    if-ge v7, v10, :cond_5

    move v7, v11

    goto :goto_0

    :cond_5
    move v7, v9

    :goto_0
    iget-boolean v12, v0, Lme/d;->z:Z

    iget v13, v0, Lme/d;->u:I

    if-ne v13, v11, :cond_6

    move v13, v11

    goto :goto_1

    :cond_6
    move v13, v9

    :goto_1
    iget v14, v0, Lme/d;->v:I

    invoke-direct {v0, v7, v12, v13, v14}, Lme/d;->f(ZZZI)I

    move-result v7

    add-int/lit8 v1, v1, -0x64

    iput v1, v0, Lme/d;->w:I

    const/16 v12, 0x59

    if-ne v4, v12, :cond_7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    iput-wide v13, v0, Lme/d;->x:J

    :cond_7
    iget-object v13, v0, Lme/d;->f:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    const/high16 v14, 0x42700000    # 60.0f

    if-ne v13, v8, :cond_8

    iget v8, v0, Lme/d;->w:I

    add-int/lit8 v8, v8, -0x64

    int-to-float v8, v8

    const/high16 v13, 0x41200000    # 10.0f

    div-float/2addr v8, v13

    const v13, 0x3f733333    # 0.95f

    mul-float/2addr v8, v13

    iget-object v13, v0, Lme/d;->f:Ljava/util/List;

    const/16 v15, 0xa

    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    iget-object v13, v0, Lme/d;->f:Ljava/util/List;

    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    sub-long v9, v15, v17

    long-to-float v9, v9

    div-float/2addr v9, v6

    div-float/2addr v9, v14

    div-float/2addr v8, v9

    mul-float/2addr v8, v14

    float-to-int v6, v8

    goto :goto_2

    :cond_8
    move v6, v3

    :goto_2
    iget v8, v0, Lme/d;->u:I

    if-ne v8, v11, :cond_9

    iget-object v8, v0, Lme/d;->s:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v8, :cond_a

    iget v9, v0, Lme/d;->v:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    iget-object v8, v0, Lme/d;->s:Ljava/util/concurrent/ConcurrentHashMap;

    goto :goto_3

    :cond_9
    iget-object v8, v0, Lme/d;->r:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v8, :cond_a

    iget v9, v0, Lme/d;->v:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    iget-object v8, v0, Lme/d;->r:Ljava/util/concurrent/ConcurrentHashMap;

    :goto_3
    iget v9, v0, Lme/d;->v:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    goto :goto_4

    :cond_a
    const/4 v8, 0x0

    :goto_4
    sget-object v9, Lme/d;->E:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "standard_time ="

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v8, :cond_b

    iget-object v1, v0, Lme/d;->D:Ljava/util/concurrent/atomic/AtomicInteger;

    sget v2, Lme/d;->G:I

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    sget-object v1, Lme/d;->E:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lme/d;->G:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v1, Lme/d;->G:I

    return v1

    :cond_b
    int-to-float v1, v1

    sget v9, Lme/d;->F:F

    div-float/2addr v1, v9

    int-to-float v8, v8

    mul-float/2addr v1, v8

    float-to-int v1, v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iget-wide v13, v0, Lme/d;->a:J

    sub-long/2addr v8, v13

    iget-wide v13, v0, Lme/d;->c:J

    cmp-long v8, v8, v13

    if-gez v8, :cond_c

    rsub-int/lit8 v3, v4, 0x64

    mul-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x64

    goto/16 :goto_9

    :cond_c
    if-gt v4, v12, :cond_16

    iget v1, v0, Lme/d;->d:I

    const/16 v8, 0x23

    if-ge v1, v8, :cond_f

    iget v1, v0, Lme/d;->u:I

    if-ne v1, v11, :cond_d

    move v9, v11

    goto :goto_5

    :cond_d
    const/4 v9, 0x0

    :goto_5
    iget v1, v0, Lme/d;->v:I

    invoke-direct {v0, v11, v9, v1}, Lme/d;->j(ZZI)I

    move-result v1

    if-nez v1, :cond_e

    goto :goto_7

    :cond_e
    move v9, v1

    goto :goto_8

    :cond_f
    if-lt v1, v8, :cond_11

    if-gt v4, v12, :cond_11

    iget v1, v0, Lme/d;->u:I

    if-ne v1, v11, :cond_10

    goto :goto_6

    :cond_10
    const/4 v11, 0x0

    :goto_6
    iget v1, v0, Lme/d;->v:I

    const/4 v8, 0x0

    invoke-direct {v0, v8, v11, v1}, Lme/d;->j(ZZI)I

    move-result v9

    if-nez v9, :cond_12

    :goto_7
    move v9, v7

    goto :goto_8

    :cond_11
    const/4 v8, 0x0

    move v9, v8

    :cond_12
    :goto_8
    if-eq v6, v3, :cond_14

    int-to-float v1, v6

    int-to-float v3, v7

    const v8, 0x3e99999a    # 0.3f

    mul-float/2addr v3, v8

    cmpg-float v1, v1, v3

    if-gez v1, :cond_13

    float-to-int v1, v3

    move v6, v1

    :cond_13
    invoke-static {v9, v6}, Ljava/lang/Math;->min(II)I

    move-result v9

    :cond_14
    sget-object v1, Lme/d;->E:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "virtual_current:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",current_by_10:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",configCurrent:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v9, :cond_15

    rsub-int/lit8 v1, v4, 0x59

    int-to-float v1, v1

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v1, v3

    iget v3, v0, Lme/d;->w:I

    int-to-float v3, v3

    mul-float/2addr v1, v3

    int-to-float v3, v9

    div-float/2addr v1, v3

    const/high16 v3, 0x42700000    # 60.0f

    mul-float/2addr v1, v3

    invoke-direct {v0, v4}, Lme/d;->i(I)F

    move-result v3

    add-float/2addr v1, v3

    float-to-int v1, v1

    invoke-direct {v0, v4, v1}, Lme/d;->c(II)V

    goto :goto_9

    :cond_15
    iget-object v1, v0, Lme/d;->D:Ljava/util/concurrent/atomic/AtomicInteger;

    sget v2, Lme/d;->G:I

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    sget-object v1, Lme/d;->E:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "virtual_current=0,resultLeftChargeTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lme/d;->G:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v1, Lme/d;->G:I

    return v1

    :cond_16
    invoke-direct {v0, v4}, Lme/d;->i(I)F

    move-result v1

    float-to-int v1, v1

    const/16 v3, 0x63

    if-ne v4, v3, :cond_18

    iget v3, v0, Lme/d;->e:I

    const/16 v6, 0x62

    if-ne v3, v6, :cond_18

    invoke-direct/range {p0 .. p0}, Lme/d;->v()V

    goto :goto_9

    :cond_17
    iget v3, v0, Lme/d;->b:I

    if-eq v3, v2, :cond_18

    const/4 v3, 0x3

    if-ne v2, v3, :cond_18

    invoke-direct {v0, v4}, Lme/d;->l(I)V

    :cond_18
    :goto_9
    iput v4, v0, Lme/d;->e:I

    iget-object v3, v0, Lme/d;->D:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    sget-object v3, Lme/d;->E:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v2, v0, Lme/d;->b:I

    return v1
.end method

.method public g()I
    .locals 1

    iget-object v0, p0, Lme/d;->D:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public m(Landroid/content/Context;)V
    .locals 5

    invoke-static {}, Lme/e;->m()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lme/e;->c()I

    move-result v0

    iput v0, p0, Lme/d;->k:I

    sget-object v0, Lme/d;->E:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDeviceModePower = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lme/d;->k:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lme/d;->k:I

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-string v1, "charge_current_config.json"

    invoke-static {p1, v1}, Lx4/e;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lme/d$a;

    invoke-direct {v2, p0}, Lme/d$a;-><init>(Lme/d;)V

    invoke-virtual {v2}, Lcom/google/common/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lme/d;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object v1, p0, Lme/d;->j:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/powercenter/bean/ChargeCurrentConfig;

    iget v3, p0, Lme/d;->k:I

    invoke-virtual {v1}, Lcom/miui/powercenter/bean/ChargeCurrentConfig;->getDevice_standard_power()I

    move-result v4

    if-ne v3, v4, :cond_2

    invoke-virtual {v1}, Lcom/miui/powercenter/bean/ChargeCurrentConfig;->getIs_above_35()I

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    invoke-direct {p0, v2, v1}, Lme/d;->a(ZLcom/miui/powercenter/bean/ChargeCurrentConfig;)V

    goto :goto_0

    :cond_4
    iget v0, p0, Lme/d;->k:I

    invoke-direct {p0, p1, v0}, Lme/d;->n(Landroid/content/Context;I)V

    iget-object p1, p0, Lme/d;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    sget-object v0, Lme/d;->E:Ljava/lang/String;

    const-string v1, "initBatteryChargeConfig error"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method

.method public s(Z)V
    .locals 0

    iput-boolean p1, p0, Lme/d;->C:Z

    return-void
.end method

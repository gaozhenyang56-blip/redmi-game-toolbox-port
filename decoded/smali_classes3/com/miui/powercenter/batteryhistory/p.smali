.class public Lcom/miui/powercenter/batteryhistory/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile o:I = 0x1

.field private static p:Lcom/miui/powercenter/batteryhistory/p;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private f:Lcom/miui/powercenter/batteryhistory/z;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/powercenter/legacypowerrank/BatteryData;",
            ">;"
        }
    .end annotation
.end field

.field private i:D

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/powercenter/legacypowerrank/BatteryData;",
            ">;"
        }
    .end annotation
.end field

.field private k:D

.field private l:I

.field private m:I

.field private n:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/miui/powercenter/legacypowerrank/BatteryData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.miui.securitycenter"

    iput-object v0, p0, Lcom/miui/powercenter/batteryhistory/p;->a:Ljava/lang/String;

    const-string v0, "com.miui.powerkeeper"

    iput-object v0, p0, Lcom/miui/powercenter/batteryhistory/p;->b:Ljava/lang/String;

    const-string v0, "com.android.settings"

    iput-object v0, p0, Lcom/miui/powercenter/batteryhistory/p;->c:Ljava/lang/String;

    const-string v0, "com.android.systemui"

    iput-object v0, p0, Lcom/miui/powercenter/batteryhistory/p;->d:Ljava/lang/String;

    const-string v0, "com.miui.aod"

    iput-object v0, p0, Lcom/miui/powercenter/batteryhistory/p;->e:Ljava/lang/String;

    new-instance v0, Lcom/miui/powercenter/batteryhistory/p$a;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/batteryhistory/p$a;-><init>(Lcom/miui/powercenter/batteryhistory/p;)V

    iput-object v0, p0, Lcom/miui/powercenter/batteryhistory/p;->n:Ljava/util/Comparator;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/powercenter/batteryhistory/p;->h:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/powercenter/batteryhistory/p;->g:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/powercenter/batteryhistory/p;->j:Ljava/util/List;

    return-void
.end method

.method private c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public static declared-synchronized d()Lcom/miui/powercenter/batteryhistory/p;
    .locals 2

    const-class v0, Lcom/miui/powercenter/batteryhistory/p;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/powercenter/batteryhistory/p;->p:Lcom/miui/powercenter/batteryhistory/p;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/powercenter/batteryhistory/p;

    invoke-direct {v1}, Lcom/miui/powercenter/batteryhistory/p;-><init>()V

    sput-object v1, Lcom/miui/powercenter/batteryhistory/p;->p:Lcom/miui/powercenter/batteryhistory/p;

    :cond_0
    sget-object v1, Lcom/miui/powercenter/batteryhistory/p;->p:Lcom/miui/powercenter/batteryhistory/p;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private e(Lcom/miui/powercenter/legacypowerrank/BatteryData;D)D
    .locals 3

    const-wide/16 v0, 0x0

    cmpl-double v2, p2, v0

    if-nez v2, :cond_0

    return-wide v0

    :cond_0
    invoke-virtual {p1}, Lcom/miui/powercenter/legacypowerrank/BatteryData;->getValue()D

    move-result-wide v0

    div-double/2addr v0, p2

    const-wide/high16 p1, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, p1

    return-wide v0
.end method

.method private f(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/powercenter/legacypowerrank/BatteryData;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/miui/powercenter/legacypowerrank/BatteryData;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget v1, Lcom/miui/powercenter/batteryhistory/p;->o:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    return-object p1

    :cond_0
    sget v1, Lcom/miui/powercenter/batteryhistory/p;->o:I

    const/4 v2, 0x2

    const/16 v3, 0xa

    const/4 v4, 0x6

    if-ne v1, v2, :cond_3

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/powercenter/legacypowerrank/BatteryData;

    iget v2, v1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->drainType:I

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    :cond_2
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    sget v1, Lcom/miui/powercenter/batteryhistory/p;->o:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/powercenter/legacypowerrank/BatteryData;

    iget v2, v1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->drainType:I

    if-eq v2, v4, :cond_4

    if-eq v2, v3, :cond_4

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 4

    sput p1, Lcom/miui/powercenter/batteryhistory/p;->o:I

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/p;->h:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/p;->f:Lcom/miui/powercenter/batteryhistory/z;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    const/4 p1, 0x0

    iget-wide v1, p0, Lcom/miui/powercenter/batteryhistory/p;->k:D

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/miui/powercenter/batteryhistory/z;->u(Ljava/util/List;DZ)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x3

    if-gt p1, v0, :cond_2

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/p;->j:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/miui/powercenter/batteryhistory/p;->f(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/p;->f:Lcom/miui/powercenter/batteryhistory/z;

    iget-wide v1, p0, Lcom/miui/powercenter/batteryhistory/p;->k:D

    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/p;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/powercenter/batteryhistory/p;->h:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/p;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iput-object v0, p0, Lcom/miui/powercenter/batteryhistory/p;->g:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/p;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iput-object v0, p0, Lcom/miui/powercenter/batteryhistory/p;->j:Ljava/util/List;

    iput-object v0, p0, Lcom/miui/powercenter/batteryhistory/p;->f:Lcom/miui/powercenter/batteryhistory/z;

    sput-object v0, Lcom/miui/powercenter/batteryhistory/p;->p:Lcom/miui/powercenter/batteryhistory/p;

    const/4 v0, 0x1

    sput v0, Lcom/miui/powercenter/batteryhistory/p;->o:I

    return-void
.end method

.method public g()D
    .locals 10

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/p;->j:Ljava/util/List;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/p;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-wide v3, v1

    move-wide v5, v3

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/powercenter/legacypowerrank/BatteryData;

    iget v8, v7, Lcom/miui/powercenter/legacypowerrank/BatteryData;->drainType:I

    const/4 v9, 0x6

    if-eq v8, v9, :cond_1

    const/16 v9, 0xa

    if-ne v8, v9, :cond_2

    :cond_1
    iget-wide v8, v7, Lcom/miui/powercenter/legacypowerrank/BatteryData;->value:D

    add-double/2addr v5, v8

    :cond_2
    iget-wide v7, v7, Lcom/miui/powercenter/legacypowerrank/BatteryData;->value:D

    add-double/2addr v3, v7

    goto :goto_0

    :cond_3
    cmpl-double v0, v3, v1

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    div-double v1, v5, v3

    :cond_5
    :goto_1
    return-wide v1
.end method

.method public h(Ljava/util/List;)D
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/powercenter/legacypowerrank/BatteryData;",
            ">;)D"
        }
    .end annotation

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/powercenter/legacypowerrank/BatteryData;

    iget-wide v2, v2, Lcom/miui/powercenter/legacypowerrank/BatteryData;->value:D

    add-double/2addr v0, v2

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public i(Ljava/util/List;Landroid/content/Context;)Ljava/util/List;
    .locals 42
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/powercenter/legacypowerrank/BatteryData;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/powercenter/legacypowerrank/BatteryData;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0x14

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    if-nez p1, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_0
    move-object/from16 v3, p1

    :goto_0
    invoke-virtual {v0, v3}, Lcom/miui/powercenter/batteryhistory/p;->h(Ljava/util/List;)D

    move-result-wide v4

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v6, 0x0

    move-object/from16 p1, v6

    move-object/from16 v16, p1

    move-object/from16 v17, v16

    move-object/from16 v20, v17

    move-object/from16 v21, v20

    move-object/from16 v22, v21

    move-object/from16 v23, v22

    move-object/from16 v24, v23

    move-object/from16 v27, v24

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v25, 0x0

    const-wide/16 v28, 0x0

    const-wide/16 v30, 0x0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    move-object/from16 v32, v6

    const-string v6, "com.miui.aod"

    move-object/from16 v33, v2

    const-string v2, "com.android.systemui"

    move-object/from16 v34, v6

    const-string v6, "com.android.settings"

    move-object/from16 v35, v2

    const-string v2, "com.miui.powerkeeper"

    move-object/from16 v36, v6

    const-string v6, "com.miui.securitycenter"

    if-eqz v13, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/miui/powercenter/legacypowerrank/BatteryData;

    invoke-static {v1, v13}, Lcom/miui/powercenter/legacypowerrank/a;->c(Landroid/content/Context;Lcom/miui/powercenter/legacypowerrank/BatteryData;)Ljava/lang/String;

    move-result-object v37

    invoke-direct {v0, v13, v4, v5}, Lcom/miui/powercenter/batteryhistory/p;->e(Lcom/miui/powercenter/legacypowerrank/BatteryData;D)D

    move-result-wide v38

    const-wide/high16 v40, 0x3fe0000000000000L    # 0.5

    cmpg-double v38, v38, v40

    if-gez v38, :cond_1

    invoke-virtual {v13}, Lcom/miui/powercenter/legacypowerrank/BatteryData;->getValue()D

    move-result-wide v34

    add-double v9, v9, v34

    move-object/from16 v2, p1

    move-object/from16 v38, v3

    move-wide/from16 v39, v4

    :goto_2
    move-object/from16 v6, v32

    move-object/from16 v3, v33

    goto/16 :goto_c

    :cond_1
    invoke-static/range {v37 .. v37}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v37

    move-object/from16 v38, v3

    const-string v3, "PowerRankHelperHolder"

    if-eqz v37, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "other-displayName empty \uff1a "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v13, Lcom/miui/powercenter/legacypowerrank/BatteryData;->defaultPackageName:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " value: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v39, v4

    invoke-virtual {v13}, Lcom/miui/powercenter/legacypowerrank/BatteryData;->getValue()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, " drainType "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v13, Lcom/miui/powercenter/legacypowerrank/BatteryData;->drainType:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " name "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v13, Lcom/miui/powercenter/legacypowerrank/BatteryData;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v13}, Lcom/miui/powercenter/legacypowerrank/BatteryData;->getValue()D

    move-result-wide v2

    add-double/2addr v9, v2

    :goto_4
    move-object/from16 v2, p1

    goto :goto_2

    :cond_2
    move-wide/from16 v39, v4

    invoke-static {v13}, Lcom/miui/powercenter/legacypowerrank/a;->e(Lcom/miui/powercenter/legacypowerrank/BatteryData;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v13}, Lcom/miui/powercenter/legacypowerrank/BatteryData;->getValue()D

    move-result-wide v2

    add-double/2addr v11, v2

    goto :goto_4

    :cond_3
    iget-object v4, v13, Lcom/miui/powercenter/legacypowerrank/BatteryData;->defaultPackageName:Ljava/lang/String;

    if-eqz v4, :cond_5

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v2, v13, Lcom/miui/powercenter/legacypowerrank/BatteryData;->defaultPackageName:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v6, Lcom/miui/powercenter/legacypowerrank/BatteryData;

    invoke-direct {v6, v13}, Lcom/miui/powercenter/legacypowerrank/BatteryData;-><init>(Lcom/miui/powercenter/legacypowerrank/BatteryData;)V

    move-object/from16 v2, v27

    goto :goto_5

    :cond_4
    new-instance v2, Lcom/miui/powercenter/legacypowerrank/BatteryData;

    invoke-direct {v2, v13}, Lcom/miui/powercenter/legacypowerrank/BatteryData;-><init>(Lcom/miui/powercenter/legacypowerrank/BatteryData;)V

    move-object/from16 v6, v32

    :goto_5
    invoke-virtual {v13}, Lcom/miui/powercenter/legacypowerrank/BatteryData;->getValue()D

    move-result-wide v3

    add-double/2addr v7, v3

    move-object/from16 v27, v2

    :goto_6
    move-object/from16 v3, v33

    move-object/from16 v2, p1

    goto/16 :goto_c

    :cond_5
    iget-object v4, v13, Lcom/miui/powercenter/legacypowerrank/BatteryData;->defaultPackageName:Ljava/lang/String;

    if-eqz v4, :cond_7

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v3, v13, Lcom/miui/powercenter/legacypowerrank/BatteryData;->defaultPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Lcom/miui/powercenter/legacypowerrank/BatteryData;

    invoke-direct {v2, v13}, Lcom/miui/powercenter/legacypowerrank/BatteryData;-><init>(Lcom/miui/powercenter/legacypowerrank/BatteryData;)V

    goto :goto_7

    :cond_6
    new-instance v2, Lcom/miui/powercenter/legacypowerrank/BatteryData;

    invoke-direct {v2, v13}, Lcom/miui/powercenter/legacypowerrank/BatteryData;-><init>(Lcom/miui/powercenter/legacypowerrank/BatteryData;)V

    move-object/from16 v24, v2

    move-object/from16 v2, v23

    :goto_7
    invoke-virtual {v13}, Lcom/miui/powercenter/legacypowerrank/BatteryData;->getValue()D

    move-result-wide v3

    add-double/2addr v14, v3

    move-object/from16 v23, v2

    :goto_8
    move-object/from16 v6, v32

    goto :goto_6

    :cond_7
    iget-object v2, v13, Lcom/miui/powercenter/legacypowerrank/BatteryData;->defaultPackageName:Ljava/lang/String;

    if-eqz v2, :cond_9

    move-object/from16 v4, v36

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, v13, Lcom/miui/powercenter/legacypowerrank/BatteryData;->defaultPackageName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance v2, Lcom/miui/powercenter/legacypowerrank/BatteryData;

    invoke-direct {v2, v13}, Lcom/miui/powercenter/legacypowerrank/BatteryData;-><init>(Lcom/miui/powercenter/legacypowerrank/BatteryData;)V

    goto :goto_9

    :cond_8
    new-instance v2, Lcom/miui/powercenter/legacypowerrank/BatteryData;

    invoke-direct {v2, v13}, Lcom/miui/powercenter/legacypowerrank/BatteryData;-><init>(Lcom/miui/powercenter/legacypowerrank/BatteryData;)V

    move-object/from16 v22, v2

    move-object/from16 v2, v21

    :goto_9
    invoke-virtual {v13}, Lcom/miui/powercenter/legacypowerrank/BatteryData;->getValue()D

    move-result-wide v3

    add-double v30, v30, v3

    move-object/from16 v21, v2

    goto :goto_8

    :cond_9
    iget-object v2, v13, Lcom/miui/powercenter/legacypowerrank/BatteryData;->defaultPackageName:Ljava/lang/String;

    if-eqz v2, :cond_b

    move-object/from16 v5, v35

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, v13, Lcom/miui/powercenter/legacypowerrank/BatteryData;->defaultPackageName:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    new-instance v2, Lcom/miui/powercenter/legacypowerrank/BatteryData;

    invoke-direct {v2, v13}, Lcom/miui/powercenter/legacypowerrank/BatteryData;-><init>(Lcom/miui/powercenter/legacypowerrank/BatteryData;)V

    goto :goto_a

    :cond_a
    new-instance v2, Lcom/miui/powercenter/legacypowerrank/BatteryData;

    invoke-direct {v2, v13}, Lcom/miui/powercenter/legacypowerrank/BatteryData;-><init>(Lcom/miui/powercenter/legacypowerrank/BatteryData;)V

    move-object/from16 v20, v2

    move-object/from16 v2, p1

    :goto_a
    invoke-virtual {v13}, Lcom/miui/powercenter/legacypowerrank/BatteryData;->getValue()D

    move-result-wide v3

    add-double v28, v28, v3

    goto/16 :goto_2

    :cond_b
    iget-object v2, v13, Lcom/miui/powercenter/legacypowerrank/BatteryData;->defaultPackageName:Ljava/lang/String;

    if-eqz v2, :cond_d

    move-object/from16 v4, v34

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, v13, Lcom/miui/powercenter/legacypowerrank/BatteryData;->defaultPackageName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    new-instance v2, Lcom/miui/powercenter/legacypowerrank/BatteryData;

    invoke-direct {v2, v13}, Lcom/miui/powercenter/legacypowerrank/BatteryData;-><init>(Lcom/miui/powercenter/legacypowerrank/BatteryData;)V

    move-object/from16 v16, v2

    goto :goto_b

    :cond_c
    new-instance v2, Lcom/miui/powercenter/legacypowerrank/BatteryData;

    invoke-direct {v2, v13}, Lcom/miui/powercenter/legacypowerrank/BatteryData;-><init>(Lcom/miui/powercenter/legacypowerrank/BatteryData;)V

    move-object/from16 v17, v2

    :goto_b
    invoke-virtual {v13}, Lcom/miui/powercenter/legacypowerrank/BatteryData;->getValue()D

    move-result-wide v2

    move-wide/from16 v4, v25

    add-double v25, v4, v2

    goto/16 :goto_4

    :cond_d
    move-wide/from16 v4, v25

    iget v2, v13, Lcom/miui/powercenter/legacypowerrank/BatteryData;->drainType:I

    const/16 v6, 0xa

    if-ne v2, v6, :cond_e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "other-bottom :"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v13, Lcom/miui/powercenter/legacypowerrank/BatteryData;->defaultPackageName:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " value "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v25, v4

    iget-wide v4, v13, Lcom/miui/powercenter/legacypowerrank/BatteryData;->value:D

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_e
    move-wide/from16 v25, v4

    move-object/from16 v3, v33

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, p1

    move-object/from16 v6, v32

    :goto_c
    move-object/from16 p1, v2

    move-object v2, v3

    move-object/from16 v3, v38

    move-wide/from16 v4, v39

    goto/16 :goto_1

    :cond_f
    move-object/from16 v3, v33

    move-object/from16 v13, v34

    move-object/from16 v5, v35

    move-object/from16 v4, v36

    const-wide/16 v18, 0x0

    move-wide/from16 v33, v9

    move-wide/from16 v9, v25

    cmpl-double v25, v7, v18

    if-lez v25, :cond_11

    move-wide/from16 v25, v11

    if-eqz v32, :cond_10

    move-object/from16 v11, v32

    iput-wide v7, v11, Lcom/miui/powercenter/legacypowerrank/BatteryData;->value:D

    :goto_d
    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_10
    if-eqz v27, :cond_12

    move-object/from16 v11, v27

    iput-wide v7, v11, Lcom/miui/powercenter/legacypowerrank/BatteryData;->value:D

    iput-object v6, v11, Lcom/miui/powercenter/legacypowerrank/BatteryData;->defaultPackageName:Ljava/lang/String;

    invoke-direct {v0, v1, v6}, Lcom/miui/powercenter/batteryhistory/p;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v11, Lcom/miui/powercenter/legacypowerrank/BatteryData;->name:Ljava/lang/String;

    goto :goto_d

    :cond_11
    move-wide/from16 v25, v11

    :cond_12
    :goto_e
    const-wide/16 v6, 0x0

    cmpl-double v8, v14, v6

    if-lez v8, :cond_14

    if-eqz v23, :cond_13

    move-object/from16 v6, v23

    iput-wide v14, v6, Lcom/miui/powercenter/legacypowerrank/BatteryData;->value:D

    :goto_f
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_13
    if-eqz v24, :cond_14

    move-object/from16 v6, v24

    iput-wide v14, v6, Lcom/miui/powercenter/legacypowerrank/BatteryData;->value:D

    iput-object v2, v6, Lcom/miui/powercenter/legacypowerrank/BatteryData;->defaultPackageName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/miui/powercenter/batteryhistory/p;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lcom/miui/powercenter/legacypowerrank/BatteryData;->name:Ljava/lang/String;

    goto :goto_f

    :cond_14
    :goto_10
    const-wide/16 v6, 0x0

    cmpl-double v2, v30, v6

    if-lez v2, :cond_16

    if-eqz v21, :cond_15

    move-object/from16 v6, v21

    move-wide/from16 v7, v30

    iput-wide v7, v6, Lcom/miui/powercenter/legacypowerrank/BatteryData;->value:D

    :goto_11
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_15
    move-wide/from16 v7, v30

    if-eqz v22, :cond_16

    move-object/from16 v6, v22

    iput-wide v7, v6, Lcom/miui/powercenter/legacypowerrank/BatteryData;->value:D

    iput-object v4, v6, Lcom/miui/powercenter/legacypowerrank/BatteryData;->defaultPackageName:Ljava/lang/String;

    invoke-direct {v0, v1, v4}, Lcom/miui/powercenter/batteryhistory/p;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lcom/miui/powercenter/legacypowerrank/BatteryData;->name:Ljava/lang/String;

    goto :goto_11

    :cond_16
    :goto_12
    const-wide/16 v6, 0x0

    cmpl-double v2, v28, v6

    if-lez v2, :cond_18

    if-eqz p1, :cond_17

    move-object/from16 v2, p1

    move-wide/from16 v7, v28

    iput-wide v7, v2, Lcom/miui/powercenter/legacypowerrank/BatteryData;->value:D

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_17
    move-wide/from16 v7, v28

    if-eqz v20, :cond_18

    move-object/from16 v6, v20

    iput-wide v7, v6, Lcom/miui/powercenter/legacypowerrank/BatteryData;->value:D

    iput-object v5, v6, Lcom/miui/powercenter/legacypowerrank/BatteryData;->defaultPackageName:Ljava/lang/String;

    invoke-direct {v0, v1, v5}, Lcom/miui/powercenter/batteryhistory/p;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lcom/miui/powercenter/legacypowerrank/BatteryData;->name:Ljava/lang/String;

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_18
    :goto_13
    const-wide/16 v4, 0x0

    cmpl-double v2, v9, v4

    if-lez v2, :cond_1a

    move-object/from16 v6, v16

    if-eqz v6, :cond_19

    iput-wide v9, v6, Lcom/miui/powercenter/legacypowerrank/BatteryData;->value:D

    :goto_14
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_19
    move-object/from16 v6, v17

    if-eqz v6, :cond_1a

    iput-wide v9, v6, Lcom/miui/powercenter/legacypowerrank/BatteryData;->value:D

    iput-object v13, v6, Lcom/miui/powercenter/legacypowerrank/BatteryData;->defaultPackageName:Ljava/lang/String;

    invoke-direct {v0, v1, v13}, Lcom/miui/powercenter/batteryhistory/p;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lcom/miui/powercenter/legacypowerrank/BatteryData;->name:Ljava/lang/String;

    goto :goto_14

    :cond_1a
    :goto_15
    const-wide/16 v4, 0x0

    cmpl-double v2, v25, v4

    if-lez v2, :cond_1b

    new-instance v2, Lcom/miui/powercenter/legacypowerrank/BatteryData;

    invoke-direct {v2}, Lcom/miui/powercenter/legacypowerrank/BatteryData;-><init>()V

    const/4 v4, 0x6

    iput v4, v2, Lcom/miui/powercenter/legacypowerrank/BatteryData;->drainType:I

    move-wide/from16 v7, v25

    iput-wide v7, v2, Lcom/miui/powercenter/legacypowerrank/BatteryData;->value:D

    const-string v4, "system"

    iput-object v4, v2, Lcom/miui/powercenter/legacypowerrank/BatteryData;->defaultPackageName:Ljava/lang/String;

    const v4, 0x7f1212e6

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/miui/powercenter/legacypowerrank/BatteryData;->name:Ljava/lang/String;

    const/16 v1, 0x3e8

    iput v1, v2, Lcom/miui/powercenter/legacypowerrank/BatteryData;->uid:I

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1b
    iget-object v1, v0, Lcom/miui/powercenter/batteryhistory/p;->n:Ljava/util/Comparator;

    invoke-static {v3, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const-wide/16 v1, 0x0

    cmpl-double v1, v33, v1

    if-lez v1, :cond_1c

    new-instance v1, Lcom/miui/powercenter/legacypowerrank/BatteryData;

    invoke-direct {v1}, Lcom/miui/powercenter/legacypowerrank/BatteryData;-><init>()V

    const/16 v2, 0xa

    iput v2, v1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->drainType:I

    move-wide/from16 v7, v33

    iput-wide v7, v1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->value:D

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1c
    return-object v3
.end method

.method public j(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/p;->g:Ljava/util/List;

    return-void
.end method

.method public k(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/powercenter/legacypowerrank/BatteryData;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/p;->j:Ljava/util/List;

    return-void
.end method

.method public l(D)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/powercenter/batteryhistory/p;->k:D

    return-void
.end method

.method public m(Lcom/miui/powercenter/batteryhistory/z;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/p;->f:Lcom/miui/powercenter/batteryhistory/z;

    return-void
.end method

.method public n(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/powercenter/legacypowerrank/BatteryData;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/p;->h:Ljava/util/List;

    return-void
.end method

.method public o(D)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/powercenter/batteryhistory/p;->i:D

    return-void
.end method

.method public p(Landroid/content/Context;II)V
    .locals 7

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/p;->h:Ljava/util/List;

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/p;->f:Lcom/miui/powercenter/batteryhistory/z;

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    iget v1, p0, Lcom/miui/powercenter/batteryhistory/p;->l:I

    if-ne p2, v1, :cond_1

    iget v1, p0, Lcom/miui/powercenter/batteryhistory/p;->m:I

    if-ne p3, v1, :cond_1

    return-void

    :cond_1
    iput p2, p0, Lcom/miui/powercenter/batteryhistory/p;->l:I

    iput p3, p0, Lcom/miui/powercenter/batteryhistory/p;->m:I

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-gez p2, :cond_2

    iget-wide v1, p0, Lcom/miui/powercenter/batteryhistory/p;->i:D

    iput-object v0, p0, Lcom/miui/powercenter/batteryhistory/p;->j:Ljava/util/List;

    goto :goto_1

    :cond_2
    if-ltz p2, :cond_6

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/p;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_6

    if-ltz p3, :cond_6

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/p;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v3

    if-ge p3, v0, :cond_6

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/p;->g:Ljava/util/List;

    invoke-interface {v0, p2, p3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move-object p3, v4

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;

    iget v5, v0, Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;->type:I

    if-ne v5, v3, :cond_3

    goto :goto_0

    :cond_3
    iget-wide v5, v0, Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;->totalConsume:D

    add-double/2addr v1, v5

    if-nez p3, :cond_4

    new-instance p3, Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;->batteryDataList:Ljava/util/List;

    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_4
    iget-object v0, v0, Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;->batteryDataList:Ljava/util/List;

    invoke-static {p3, v0}, Lid/a;->l(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    goto :goto_0

    :cond_5
    invoke-virtual {p0, p3, p1}, Lcom/miui/powercenter/batteryhistory/p;->i(Ljava/util/List;Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/powercenter/batteryhistory/p;->f(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/p;->j:Ljava/util/List;

    goto :goto_1

    :cond_6
    move-object v0, v4

    :goto_1
    iput-wide v1, p0, Lcom/miui/powercenter/batteryhistory/p;->k:D

    sget p1, Lcom/miui/powercenter/batteryhistory/p;->o:I

    const/4 p2, 0x4

    if-ne p1, p2, :cond_7

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/p;->f:Lcom/miui/powercenter/batteryhistory/z;

    iget-wide p2, p0, Lcom/miui/powercenter/batteryhistory/p;->k:D

    invoke-virtual {p1, v4, p2, p3, v3}, Lcom/miui/powercenter/batteryhistory/z;->u(Ljava/util/List;DZ)V

    goto :goto_2

    :cond_7
    sget p1, Lcom/miui/powercenter/batteryhistory/p;->o:I

    const/4 p2, 0x3

    if-gt p1, p2, :cond_8

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/p;->f:Lcom/miui/powercenter/batteryhistory/z;

    iget-wide p2, p0, Lcom/miui/powercenter/batteryhistory/p;->k:D

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, p3, v1}, Lcom/miui/powercenter/batteryhistory/z;->u(Ljava/util/List;DZ)V

    :cond_8
    :goto_2
    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/p;->f:Lcom/miui/powercenter/batteryhistory/z;

    invoke-virtual {p1}, Lcom/miui/powercenter/batteryhistory/z;->x()V

    :cond_9
    :goto_3
    return-void
.end method

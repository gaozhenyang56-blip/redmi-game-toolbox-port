.class public abstract Lcom/miui/powercenter/legacypowerrank/PowerRankFragment;
.super Landroidx/fragment/app/ListFragment;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private a:Lcom/miui/powercenter/legacypowerrank/f;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ProgressBar;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private i:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/ListFragment;-><init>()V

    const-string v0, "com.miui.securitycenter"

    iput-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerRankFragment;->d:Ljava/lang/String;

    const-string v0, "com.miui.powerkeeper"

    iput-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerRankFragment;->e:Ljava/lang/String;

    const-string v0, "com.android.settings"

    iput-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerRankFragment;->f:Ljava/lang/String;

    const-string v0, "com.android.systemui"

    iput-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerRankFragment;->g:Ljava/lang/String;

    const-string v0, "com.miui.aod"

    iput-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerRankFragment;->h:Ljava/lang/String;

    new-instance v0, Lcom/miui/powercenter/legacypowerrank/PowerRankFragment$a;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/legacypowerrank/PowerRankFragment$a;-><init>(Lcom/miui/powercenter/legacypowerrank/PowerRankFragment;)V

    iput-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerRankFragment;->i:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a0(Lcom/miui/powercenter/legacypowerrank/PowerRankFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/legacypowerrank/PowerRankFragment;->i0()V

    return-void
.end method

.method private b0(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
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

.method private d0(Lcom/miui/powercenter/legacypowerrank/BatteryData;)D
    .locals 4

    invoke-virtual {p1}, Lcom/miui/powercenter/legacypowerrank/BatteryData;->getValue()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/miui/powercenter/legacypowerrank/PowerRankFragment;->f0()D

    move-result-wide v2

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method private h0(Ljava/util/List;)V
    .locals 38
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/powercenter/legacypowerrank/BatteryData;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lcom/miui/powercenter/legacypowerrank/PowerRankFragment;->a:Lcom/miui/powercenter/legacypowerrank/f;

    invoke-virtual {v1}, Lcom/miui/powercenter/legacypowerrank/f;->b()V

    iget-object v1, v0, Lcom/miui/powercenter/legacypowerrank/PowerRankFragment;->a:Lcom/miui/powercenter/legacypowerrank/f;

    invoke-virtual/range {p0 .. p0}, Lcom/miui/powercenter/legacypowerrank/PowerRankFragment;->f0()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/miui/powercenter/legacypowerrank/f;->d(D)V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move-object/from16 p1, v2

    move-object/from16 v5, p1

    move-object/from16 v18, v5

    move-object/from16 v19, v18

    move-object/from16 v20, v19

    move-object/from16 v21, v20

    move-object/from16 v22, v21

    move-object/from16 v23, v22

    move-object/from16 v24, v23

    const-wide/16 v3, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    move-object/from16 v26, v5

    const-string v5, "com.miui.aod"

    move-object/from16 v27, v2

    const-string v2, "com.android.systemui"

    move-wide/from16 v28, v6

    const-string v6, "com.android.settings"

    const-string v7, "com.miui.powerkeeper"

    move-object/from16 v30, v5

    const-string v5, "com.miui.securitycenter"

    if-eqz v25, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v31, v1

    move-object/from16 v1, v25

    check-cast v1, Lcom/miui/powercenter/legacypowerrank/BatteryData;

    move-wide/from16 v32, v8

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v1}, Lcom/miui/powercenter/legacypowerrank/a;->c(Landroid/content/Context;Lcom/miui/powercenter/legacypowerrank/BatteryData;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Lcom/miui/powercenter/legacypowerrank/BatteryData;->getValue()D

    move-result-wide v34

    invoke-virtual/range {p0 .. p0}, Lcom/miui/powercenter/legacypowerrank/PowerRankFragment;->f0()D

    move-result-wide v36

    div-double v34, v34, v36

    const-wide/high16 v36, 0x4059000000000000L    # 100.0

    mul-double v34, v34, v36

    instance-of v9, v0, Lcom/miui/powercenter/legacypowerrank/SoftwareRankFragment;

    if-eqz v9, :cond_1

    const-wide/high16 v36, 0x3fe0000000000000L    # 0.5

    cmpg-double v9, v34, v36

    if-gez v9, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    :goto_1
    invoke-virtual {v1}, Lcom/miui/powercenter/legacypowerrank/BatteryData;->getValue()D

    move-result-wide v1

    add-double/2addr v3, v1

    :goto_2
    move-object/from16 v2, p1

    :goto_3
    move-object/from16 v5, v26

    move-wide/from16 v6, v28

    :goto_4
    move-wide/from16 v8, v32

    goto/16 :goto_a

    :cond_2
    iget-object v8, v1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->defaultPackageName:Ljava/lang/String;

    if-eqz v8, :cond_4

    invoke-virtual {v8, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v2, v1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->defaultPackageName:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v2, v1

    move-object/from16 v5, v26

    goto :goto_5

    :cond_3
    move-object v5, v1

    move-object/from16 v2, v27

    :goto_5
    invoke-virtual {v1}, Lcom/miui/powercenter/legacypowerrank/BatteryData;->getValue()D

    move-result-wide v6

    add-double/2addr v14, v6

    move-object/from16 v27, v2

    move-wide/from16 v6, v28

    move-wide/from16 v8, v32

    move-object/from16 v2, p1

    goto/16 :goto_a

    :cond_4
    iget-object v5, v1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->defaultPackageName:Ljava/lang/String;

    if-eqz v5, :cond_6

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v2, v1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->defaultPackageName:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object v6, v1

    move-object/from16 v7, v24

    goto :goto_6

    :cond_5
    move-object v7, v1

    move-object/from16 v6, v23

    :goto_6
    invoke-virtual {v1}, Lcom/miui/powercenter/legacypowerrank/BatteryData;->getValue()D

    move-result-wide v1

    add-double/2addr v12, v1

    move-object/from16 v2, p1

    move-object/from16 v23, v6

    move-object/from16 v24, v7

    goto :goto_3

    :cond_6
    iget-object v5, v1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->defaultPackageName:Ljava/lang/String;

    if-eqz v5, :cond_8

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v2, v1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->defaultPackageName:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    move-object v8, v1

    move-object/from16 v9, v22

    goto :goto_7

    :cond_7
    move-object v9, v1

    move-object/from16 v8, v21

    :goto_7
    invoke-virtual {v1}, Lcom/miui/powercenter/legacypowerrank/BatteryData;->getValue()D

    move-result-wide v1

    add-double/2addr v10, v1

    move-object/from16 v2, p1

    move-object/from16 v21, v8

    move-object/from16 v22, v9

    goto :goto_3

    :cond_8
    iget-object v5, v1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->defaultPackageName:Ljava/lang/String;

    if-eqz v5, :cond_a

    invoke-virtual {v5, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, v1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->defaultPackageName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    move-object/from16 v19, v1

    goto :goto_8

    :cond_9
    move-object/from16 v20, v1

    :goto_8
    invoke-virtual {v1}, Lcom/miui/powercenter/legacypowerrank/BatteryData;->getValue()D

    move-result-wide v1

    add-double v8, v32, v1

    move-object/from16 v2, p1

    move-object/from16 v5, v26

    move-wide/from16 v6, v28

    goto :goto_a

    :cond_a
    iget-object v2, v1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->defaultPackageName:Ljava/lang/String;

    if-eqz v2, :cond_c

    move-object/from16 v8, v30

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, v1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->defaultPackageName:Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    move-object v2, v1

    goto :goto_9

    :cond_b
    move-object/from16 v2, p1

    move-object/from16 v18, v1

    :goto_9
    invoke-virtual {v1}, Lcom/miui/powercenter/legacypowerrank/BatteryData;->getValue()D

    move-result-wide v5

    add-double v6, v28, v5

    move-object/from16 v5, v26

    goto/16 :goto_4

    :cond_c
    iget-object v2, v0, Lcom/miui/powercenter/legacypowerrank/PowerRankFragment;->a:Lcom/miui/powercenter/legacypowerrank/f;

    invoke-virtual {v2, v1}, Lcom/miui/powercenter/legacypowerrank/f;->a(Lcom/miui/powercenter/legacypowerrank/BatteryData;)V

    goto/16 :goto_2

    :goto_a
    move-object/from16 p1, v2

    move-object/from16 v2, v27

    move-object/from16 v1, v31

    goto/16 :goto_0

    :cond_d
    move-wide/from16 v32, v8

    move-object/from16 v8, v30

    const-wide/16 v16, 0x0

    cmpl-double v1, v14, v16

    if-lez v1, :cond_f

    if-eqz v27, :cond_e

    move-object/from16 v1, v27

    iput-wide v14, v1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->value:D

    :goto_b
    iget-object v5, v0, Lcom/miui/powercenter/legacypowerrank/PowerRankFragment;->a:Lcom/miui/powercenter/legacypowerrank/f;

    invoke-virtual {v5, v1}, Lcom/miui/powercenter/legacypowerrank/f;->a(Lcom/miui/powercenter/legacypowerrank/BatteryData;)V

    goto :goto_c

    :cond_e
    if-eqz v26, :cond_f

    move-object/from16 v1, v26

    iput-wide v14, v1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->value:D

    iput-object v5, v1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->defaultPackageName:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v0, v9, v5}, Lcom/miui/powercenter/legacypowerrank/PowerRankFragment;->b0(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->name:Ljava/lang/String;

    goto :goto_b

    :cond_f
    :goto_c
    const-wide/16 v14, 0x0

    cmpl-double v1, v12, v14

    if-lez v1, :cond_11

    if-eqz v23, :cond_10

    move-object/from16 v1, v23

    iput-wide v12, v1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->value:D

    :goto_d
    iget-object v5, v0, Lcom/miui/powercenter/legacypowerrank/PowerRankFragment;->a:Lcom/miui/powercenter/legacypowerrank/f;

    invoke-virtual {v5, v1}, Lcom/miui/powercenter/legacypowerrank/f;->a(Lcom/miui/powercenter/legacypowerrank/BatteryData;)V

    goto :goto_e

    :cond_10
    if-eqz v24, :cond_11

    move-object/from16 v1, v24

    iput-wide v12, v1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->value:D

    iput-object v7, v1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->defaultPackageName:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v5, v7}, Lcom/miui/powercenter/legacypowerrank/PowerRankFragment;->b0(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->name:Ljava/lang/String;

    goto :goto_d

    :cond_11
    :goto_e
    const-wide/16 v12, 0x0

    cmpl-double v1, v10, v12

    if-lez v1, :cond_13

    if-eqz v21, :cond_12

    move-object/from16 v1, v21

    iput-wide v10, v1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->value:D

    :goto_f
    iget-object v5, v0, Lcom/miui/powercenter/legacypowerrank/PowerRankFragment;->a:Lcom/miui/powercenter/legacypowerrank/f;

    invoke-virtual {v5, v1}, Lcom/miui/powercenter/legacypowerrank/f;->a(Lcom/miui/powercenter/legacypowerrank/BatteryData;)V

    goto :goto_10

    :cond_12
    if-eqz v22, :cond_13

    move-object/from16 v1, v22

    iput-wide v10, v1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->value:D

    iput-object v6, v1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->defaultPackageName:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v5, v6}, Lcom/miui/powercenter/legacypowerrank/PowerRankFragment;->b0(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->name:Ljava/lang/String;

    goto :goto_f

    :cond_13
    :goto_10
    const-wide/16 v5, 0x0

    cmpl-double v1, v32, v5

    if-lez v1, :cond_15

    if-eqz v19, :cond_14

    move-object/from16 v1, v19

    move-wide/from16 v5, v32

    iput-wide v5, v1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->value:D

    :goto_11
    iget-object v2, v0, Lcom/miui/powercenter/legacypowerrank/PowerRankFragment;->a:Lcom/miui/powercenter/legacypowerrank/f;

    invoke-virtual {v2, v1}, Lcom/miui/powercenter/legacypowerrank/f;->a(Lcom/miui/powercenter/legacypowerrank/BatteryData;)V

    goto :goto_12

    :cond_14
    move-wide/from16 v5, v32

    if-eqz v20, :cond_15

    move-object/from16 v1, v20

    iput-wide v5, v1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->value:D

    iput-object v2, v1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->defaultPackageName:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v5, v2}, Lcom/miui/powercenter/legacypowerrank/PowerRankFragment;->b0(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->name:Ljava/lang/String;

    goto :goto_11

    :cond_15
    :goto_12
    const-wide/16 v1, 0x0

    cmpl-double v5, v28, v1

    if-lez v5, :cond_17

    if-eqz p1, :cond_16

    move-object/from16 v2, p1

    move-wide/from16 v6, v28

    iput-wide v6, v2, Lcom/miui/powercenter/legacypowerrank/BatteryData;->value:D

    :goto_13
    iget-object v1, v0, Lcom/miui/powercenter/legacypowerrank/PowerRankFragment;->a:Lcom/miui/powercenter/legacypowerrank/f;

    invoke-virtual {v1, v2}, Lcom/miui/powercenter/legacypowerrank/f;->a(Lcom/miui/powercenter/legacypowerrank/BatteryData;)V

    goto :goto_14

    :cond_16
    move-wide/from16 v6, v28

    if-eqz v18, :cond_17

    move-object/from16 v2, v18

    iput-wide v6, v2, Lcom/miui/powercenter/legacypowerrank/BatteryData;->value:D

    iput-object v8, v2, Lcom/miui/powercenter/legacypowerrank/BatteryData;->defaultPackageName:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v8}, Lcom/miui/powercenter/legacypowerrank/PowerRankFragment;->b0(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/miui/powercenter/legacypowerrank/BatteryData;->name:Ljava/lang/String;

    goto :goto_13

    :cond_17
    :goto_14
    iget-object v1, v0, Lcom/miui/powercenter/legacypowerrank/PowerRankFragment;->a:Lcom/miui/powercenter/legacypowerrank/f;

    invoke-virtual {v1}, Lcom/miui/powercenter/legacypowerrank/f;->e()V

    const-wide/16 v1, 0x0

    cmpl-double v1, v3, v1

    if-lez v1, :cond_18

    new-instance v1, Lcom/miui/powercenter/legacypowerrank/BatteryData;

    invoke-direct {v1}, Lcom/miui/powercenter/legacypowerrank/BatteryData;-><init>()V

    const/16 v2, 0xa

    iput v2, v1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->drainType:I

    iput-wide v3, v1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->value:D

    iget-object v2, v0, Lcom/miui/powercenter/legacypowerrank/PowerRankFragment;->a:Lcom/miui/powercenter/legacypowerrank/f;

    invoke-virtual {v2, v1}, Lcom/miui/powercenter/legacypowerrank/f;->a(Lcom/miui/powercenter/legacypowerrank/BatteryData;)V

    :cond_18
    iget-object v1, v0, Lcom/miui/powercenter/legacypowerrank/PowerRankFragment;->a:Lcom/miui/powercenter/legacypowerrank/f;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private i0()V
    .locals 7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerRankFragment;->c:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerRankFragment;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/powercenter/legacypowerrank/PowerRankFragment;->e0()I

    move-result v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0}, Lcom/miui/powercenter/legacypowerrank/PowerRankFragment;->c0()I

    move-result v6

    invoke-static {v5, v6}, Lme/e0;->d(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/miui/powercenter/legacypowerrank/PowerRankFragment;->g0()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/powercenter/legacypowerrank/PowerRankFragment;->h0(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method protected abstract c0()I
.end method

.method protected abstract e0()I
.end method

.method protected f0()D
    .locals 2

    invoke-static {}, Lcom/miui/powercenter/legacypowerrank/g;->l()D

    move-result-wide v0

    return-wide v0
.end method

.method protected abstract g0()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/powercenter/legacypowerrank/BatteryData;",
            ">;"
        }
    .end annotation
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.miui.powercenter.action.UPDATE_POWER_RANK"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lr0/a;->b(Landroid/content/Context;)Lr0/a;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/legacypowerrank/PowerRankFragment;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Lr0/a;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0e0406

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lr0/a;->b(Landroid/content/Context;)Lr0/a;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/legacypowerrank/PowerRankFragment;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lr0/a;->e(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/miui/powercenter/legacypowerrank/PowerRankFragment;->a:Lcom/miui/powercenter/legacypowerrank/f;

    invoke-virtual {p1, p3}, Lcom/miui/powercenter/legacypowerrank/f;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p0, p1}, Lcom/miui/powercenter/legacypowerrank/PowerRankFragment;->d0(Lcom/miui/powercenter/legacypowerrank/BatteryData;)D

    move-result-wide p3

    invoke-static {p2, p1, p3, p4}, Lcom/miui/powercenter/legacypowerrank/e;->a(Landroid/content/Context;Lcom/miui/powercenter/legacypowerrank/BatteryData;D)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    new-instance p2, Lcom/miui/powercenter/legacypowerrank/f;

    invoke-direct {p2}, Lcom/miui/powercenter/legacypowerrank/f;-><init>()V

    iput-object p2, p0, Lcom/miui/powercenter/legacypowerrank/PowerRankFragment;->a:Lcom/miui/powercenter/legacypowerrank/f;

    invoke-virtual {p0}, Landroidx/fragment/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p2

    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerRankFragment;->a:Lcom/miui/powercenter/legacypowerrank/f;

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Landroidx/fragment/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const p2, 0x7f0b08de

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/miui/powercenter/legacypowerrank/PowerRankFragment;->b:Landroid/widget/TextView;

    const p2, 0x7f0b090d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/miui/powercenter/legacypowerrank/PowerRankFragment;->c:Landroid/widget/ProgressBar;

    return-void
.end method

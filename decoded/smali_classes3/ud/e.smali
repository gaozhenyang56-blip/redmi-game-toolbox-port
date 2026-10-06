.class public Lud/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lud/e$c;,
        Lud/e$b;
    }
.end annotation


# static fields
.field private static final h:Ljava/lang/String;

.field private static final i:Ljava/lang/String;

.field private static final j:Ljava/lang/String;


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Landroid/content/Context;

.field private f:I

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/misc/user/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lx4/z1;->y()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/powercenter/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lud/e;->h:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "battery_sn"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lud/e;->i:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "battery_sn_2"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lud/e;->j:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lud/e;->a:Z

    iput-boolean v0, p0, Lud/e;->b:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lud/e;->c:Z

    iput-boolean v0, p0, Lud/e;->d:Z

    iput-object p1, p0, Lud/e;->e:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lud/e$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lud/e;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic a(Lud/e;ZII[ILud/e$c;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lud/e;->m(ZII[ILud/e$c;)V

    return-void
.end method

.method private b(Z)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iput-boolean v0, p0, Lud/e;->a:Z

    goto :goto_0

    :cond_0
    iput-boolean v0, p0, Lud/e;->b:Z

    :goto_0
    return-void
.end method

.method private d(Ljava/lang/String;Z)I
    .locals 4

    const-string v0, "BatteryCheckChangedManagerNew"

    :try_start_0
    invoke-static {p1}, Lud/e;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_0

    invoke-static {}, Lme/j;->o()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-static {}, Lme/j;->p()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CHECK_BATTERY_SAME isFirstBattery:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_1
    invoke-static {p1, v2}, Lud/e;->u(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CHECK_BATTERY_DIFFERENT!!! isFirstBattery:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return p1

    :catch_0
    move-exception p1

    const-string p2, "checkSameBattery error:"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, -0x1

    return p1
.end method

.method private f(Z)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    sget-object p1, Lud/e;->i:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object p1, Lud/e;->j:Ljava/lang/String;

    :goto_0
    return-object p1
.end method

.method public static g()Lud/e;
    .locals 1

    invoke-static {}, Lud/e$b;->a()Lud/e;

    move-result-object v0

    return-object v0
.end method

.method private h(Z)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "security_center_pc_50_to_100_c_r_s"

    goto :goto_0

    :cond_0
    const-string p1, "security_center_pc_50_to_100_c_r_s_2"

    :goto_0
    return-object p1
.end method

.method private i(Z)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "security_center_pc_l_50_r_s"

    goto :goto_0

    :cond_0
    const-string p1, "security_center_pc_l_50_r_s_2"

    :goto_0
    return-object p1
.end method

.method private j([I)I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    move v3, v2

    :goto_0
    const/4 v4, 0x5

    if-ge v2, v4, :cond_1

    add-int/lit8 v4, v2, 0x5

    aget v4, p1, v4

    if-lez v4, :cond_0

    int-to-float v4, v4

    add-float/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    int-to-float p1, v3

    div-float/2addr v1, p1

    float-to-int p1, v1

    return p1

    :cond_2
    return v0
.end method

.method private l(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget p1, p0, Lud/e;->f:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lud/e;->f:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lud/e;->g:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lud/e;->g:I

    :goto_0
    return-void
.end method

.method private synthetic m(ZII[ILud/e$c;)V
    .locals 0

    invoke-virtual/range {p0 .. p5}, Lud/e;->c(ZII[ILud/e$c;)V

    return-void
.end method

.method private n(Z)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-eqz p1, :cond_0

    iget p1, p0, Lud/e;->f:I

    if-le p1, v2, :cond_1

    goto :goto_0

    :cond_0
    iget p1, p0, Lud/e;->g:I

    if-le p1, v2, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    return v0
.end method

.method public static o(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lme/b;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private p(Ljava/lang/String;Ljava/lang/String;ZII)Z
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0x64

    if-gt p4, v1, :cond_3

    const/16 v2, 0xb

    new-array v2, v2, [I

    aput v1, v2, v0

    invoke-static {v2, p4}, Lme/b;->N([II)V

    const/4 v0, 0x3

    const/4 v3, 0x2

    aput v3, v2, v0

    const/4 v0, 0x4

    aput v1, v2, v0

    const/16 v0, 0x32

    if-le p4, v0, :cond_0

    invoke-static {v1, p5}, Ljava/lang/Math;->min(II)I

    move-result p5

    sub-int/2addr p4, v0

    new-array p4, p4, [I

    invoke-static {p4, p5}, Ljava/util/Arrays;->fill([II)V

    iget-object p5, p0, Lud/e;->e:Landroid/content/Context;

    invoke-static {p5, p1, p4}, Lme/b;->P(Landroid/content/Context;Ljava/lang/String;[I)V

    iget-object p1, p0, Lud/e;->e:Landroid/content/Context;

    invoke-static {p1, p2, p4}, Lme/b;->P(Landroid/content/Context;Ljava/lang/String;[I)V

    invoke-static {v2, p4}, Lme/b;->O([I[I)V

    :cond_0
    invoke-static {}, Lme/b;->z()Z

    move-result p1

    if-nez p1, :cond_2

    if-eqz p3, :cond_1

    invoke-static {v2}, Lme/j;->A([I)Z

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lme/j;->B([I)Z

    :cond_2
    :goto_0
    const-string p1, "BatteryCheckChangedManagerNew"

    const-string p2, "recoverDifferentBatteryErrorRecord"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1

    :cond_3
    return v0
.end method

.method private q(Ljava/lang/String;Ljava/lang/String;I[II)V
    .locals 2

    const-string v0, "BatteryCheckChangedManagerNew"

    if-nez p3, :cond_0

    const/4 p3, 0x0

    new-array p3, p3, [I

    iget-object p4, p0, Lud/e;->e:Landroid/content/Context;

    invoke-static {p4, p1, p3}, Lme/b;->P(Landroid/content/Context;Ljava/lang/String;[I)V

    iget-object p1, p0, Lud/e;->e:Landroid/content/Context;

    invoke-static {p1, p2, p3}, Lme/b;->P(Landroid/content/Context;Ljava/lang/String;[I)V

    const-string p1, "CHECK_SUM_CODE_INIT return"

    :goto_0
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/16 p3, 0x32

    if-ge p5, p3, :cond_1

    const-string p1, "less than 50 counts return"

    goto :goto_0

    :cond_1
    if-le p5, p3, :cond_2

    const/16 v1, 0x64

    if-gt p5, v1, :cond_2

    sub-int/2addr p5, p3

    new-array p3, p5, [I

    goto :goto_1

    :cond_2
    new-array p3, p3, [I

    :goto_1
    invoke-direct {p0, p4}, Lud/e;->j([I)I

    move-result p4

    invoke-static {p3, p4}, Ljava/util/Arrays;->fill([II)V

    iget-object p4, p0, Lud/e;->e:Landroid/content/Context;

    invoke-static {p4, p1, p3}, Lme/b;->P(Landroid/content/Context;Ljava/lang/String;[I)V

    iget-object p1, p0, Lud/e;->e:Landroid/content/Context;

    invoke-static {p1, p2, p3}, Lme/b;->P(Landroid/content/Context;Ljava/lang/String;[I)V

    const-string p1, "recoverDifferentBatteryHasRecord success"

    goto :goto_0
.end method

.method private r(Ljava/lang/String;Ljava/lang/String;ZII)V
    .locals 5

    const/16 v0, 0xb

    new-array v0, v0, [I

    add-int/lit8 v1, p5, 0x2

    const/16 v2, 0x64

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v3, 0x0

    aput v1, v0, v3

    invoke-static {v0, p4}, Lme/b;->N([II)V

    const/4 v3, 0x3

    const/4 v4, 0x2

    aput v4, v0, v3

    const/4 v3, 0x4

    aput v1, v0, v3

    const/16 v1, 0x32

    if-le p4, v1, :cond_1

    if-gt p4, v2, :cond_0

    sub-int/2addr p4, v1

    new-array p4, p4, [I

    goto :goto_0

    :cond_0
    new-array p4, v1, [I

    :goto_0
    invoke-static {p4, p5}, Ljava/util/Arrays;->fill([II)V

    iget-object p5, p0, Lud/e;->e:Landroid/content/Context;

    invoke-static {p5, p1, p4}, Lme/b;->P(Landroid/content/Context;Ljava/lang/String;[I)V

    iget-object p1, p0, Lud/e;->e:Landroid/content/Context;

    invoke-static {p1, p2, p4}, Lme/b;->P(Landroid/content/Context;Ljava/lang/String;[I)V

    invoke-static {v0, p4}, Lme/b;->O([I[I)V

    :cond_1
    invoke-static {}, Lme/b;->z()Z

    move-result p1

    if-nez p1, :cond_3

    if-eqz p3, :cond_2

    invoke-static {v0}, Lme/j;->A([I)Z

    goto :goto_1

    :cond_2
    invoke-static {v0}, Lme/j;->B([I)Z

    :cond_3
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "recoverSameBatteryErrorRecord: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BatteryCheckChangedManagerNew"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private s(Z)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iput-boolean v0, p0, Lud/e;->a:Z

    goto :goto_0

    :cond_0
    iput-boolean v0, p0, Lud/e;->b:Z

    :goto_0
    return-void
.end method

.method private t(Z)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iput-boolean v0, p0, Lud/e;->c:Z

    goto :goto_0

    :cond_0
    iput-boolean v0, p0, Lud/e;->d:Z

    :goto_0
    return-void
.end method

.method public static u(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lud/e;->h:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {p0, p1}, Lme/b;->M(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "BatteryCheckChangedManagerNew"

    const-string v0, "writeSnDataToMisc error:"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public declared-synchronized c(ZII[ILud/e$c;)V
    .locals 9

    monitor-enter p0

    if-nez p5, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    :try_start_0
    iget-boolean v0, p0, Lud/e;->c:Z

    if-nez v0, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_1
    :goto_0
    if-nez p1, :cond_3

    iget-boolean v0, p0, Lud/e;->d:Z

    if-eqz v0, :cond_3

    :cond_2
    invoke-interface {p5}, Lud/e$c;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    const/4 v0, -0x1

    if-eq v0, p2, :cond_c

    if-ne v0, p3, :cond_4

    goto/16 :goto_4

    :cond_4
    :try_start_1
    invoke-direct {p0, p1}, Lud/e;->f(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1}, Lud/e;->i(Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1}, Lud/e;->h(Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lud/j;->b()Lud/j;

    move-result-object v2

    invoke-virtual {v2, p1}, Lud/j;->h(Z)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-direct {p0, v1, p1}, Lud/e;->d(Ljava/lang/String;Z)I

    move-result v1

    const-string v2, "BatteryCheckChangedManagerNew"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkBattery checkSameBatteryRes:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    if-ne v2, v1, :cond_6

    invoke-static {p4}, Lme/b;->f([I)I

    move-result p4

    if-ne v0, p4, :cond_5

    move-object v2, p0

    move v5, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v2 .. v7}, Lud/e;->r(Ljava/lang/String;Ljava/lang/String;ZII)V

    :cond_5
    invoke-static {}, Lud/i;->g()Lud/i;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Lud/i;->f(III)V

    goto :goto_1

    :cond_6
    if-nez v1, :cond_7

    invoke-static {p4}, Lme/b;->f([I)I

    move-result v5

    move-object v2, p0

    if-ne v0, v5, :cond_8

    move v5, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v2 .. v7}, Lud/e;->p(Ljava/lang/String;Ljava/lang/String;ZII)Z

    move-result p2

    if-nez p2, :cond_9

    :cond_7
    invoke-direct {p0, p1}, Lud/e;->b(Z)V

    goto :goto_1

    :cond_8
    move-object v6, p4

    move v7, p2

    invoke-direct/range {v2 .. v7}, Lud/e;->q(Ljava/lang/String;Ljava/lang/String;I[II)V

    :cond_9
    :goto_1
    invoke-direct {p0, p1}, Lud/e;->t(Z)V

    :goto_2
    invoke-interface {p5}, Lud/e$c;->a()V

    goto :goto_3

    :cond_a
    invoke-direct {p0, p1}, Lud/e;->b(Z)V

    invoke-direct {p0, p1}, Lud/e;->l(Z)V

    invoke-direct {p0, p1}, Lud/e;->n(Z)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-direct {p0, p1}, Lud/e;->s(Z)V

    invoke-static {}, Lde/i;->M()Lde/i;

    move-result-object v0

    new-instance v8, Lud/d;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lud/d;-><init>(Lud/e;ZII[ILud/e$c;)V

    const-wide/16 p1, 0x1388

    invoke-virtual {v0, v8, p1, p2}, Lde/i;->h0(Ljava/lang/Runnable;J)V

    goto :goto_3

    :cond_b
    invoke-direct {p0, p1}, Lud/e;->t(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_3
    monitor-exit p0

    return-void

    :cond_c
    :goto_4
    :try_start_2
    invoke-direct {p0, p1}, Lud/e;->b(Z)V

    invoke-direct {p0, p1}, Lud/e;->t(Z)V

    invoke-interface {p5}, Lud/e$c;->a()V

    const-string p1, "BatteryCheckChangedManagerNew"

    const-string p2, "checkBattery error return"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :goto_5
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized e(Z)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "BatteryCheckChangedManagerNew"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBatteryCheckSuccess: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    iget-boolean v2, p0, Lud/e;->a:Z

    goto :goto_0

    :cond_0
    iget-boolean v2, p0, Lud/e;->b:Z

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lud/e;->a:Z

    goto :goto_1

    :cond_1
    iget-boolean p1, p0, Lud/e;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized k(Z)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "BatteryCheckChangedManagerNew"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasChecked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lud/e;->c:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",hasChecked2:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lud/e;->d:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lud/e;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :cond_0
    :try_start_1
    iget-boolean p1, p0, Lud/e;->d:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

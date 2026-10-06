.class public abstract Lud/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lud/o;


# instance fields
.field protected a:I

.field protected b:I

.field protected c:[I

.field protected d:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lud/c;->a:I

    iput v0, p0, Lud/c;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lud/c;->c:[I

    iput-object v0, p0, Lud/c;->d:[I

    return-void
.end method

.method private A(II[I)V
    .locals 4

    int-to-float v0, p2

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    const v1, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    sub-double/2addr v2, v0

    double-to-int v0, v2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    aget v1, p3, v0

    if-eq p1, v1, :cond_0

    const/4 v1, 0x4

    aget v2, p3, v1

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    aput v2, p3, v1

    invoke-static {p3, p2}, Lme/b;->N([II)V

    :cond_0
    aput p1, p3, v0

    return-void
.end method

.method private E(ZII[I)V
    .locals 4

    const-string v0, "security_center_pc_50_to_100_c_r_s"

    if-eqz p1, :cond_0

    move-object p1, v0

    goto :goto_0

    :cond_0
    const-string p1, "security_center_pc_50_to_100_c_r_s_2"

    :goto_0
    invoke-virtual {p0}, Lud/c;->v()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lme/b;->H(Landroid/content/Context;Ljava/lang/String;)[I

    move-result-object p1

    const/16 v1, 0x64

    const/16 v2, 0x32

    if-le p2, v2, :cond_3

    if-gt p2, v1, :cond_3

    if-eqz p1, :cond_1

    array-length p4, p1

    if-eq p4, v2, :cond_2

    :cond_1
    new-array p1, v2, [I

    :cond_2
    sub-int/2addr p2, v2

    add-int/lit8 p2, p2, -0x1

    aput p3, p1, p2

    invoke-virtual {p0}, Lud/c;->v()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v0, p1}, Lme/b;->P(Landroid/content/Context;Ljava/lang/String;[I)V

    goto :goto_2

    :cond_3
    if-le p2, v1, :cond_8

    if-eqz p1, :cond_8

    array-length p2, p1

    if-eq p2, v2, :cond_4

    goto :goto_2

    :cond_4
    const/4 p2, 0x3

    aget p3, p4, p2

    if-eqz p3, :cond_5

    return-void

    :cond_5
    const/4 p3, 0x0

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    array-length v3, p1

    if-ge v0, v3, :cond_7

    aget v3, p1, v0

    if-lez v3, :cond_6

    if-gt v3, v1, :cond_6

    int-to-float v3, v3

    add-float/2addr p3, v3

    add-int/lit8 v2, v2, 0x1

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    if-lez v2, :cond_8

    int-to-float p1, v2

    div-float/2addr p3, p1

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p1

    sub-int/2addr v1, p1

    const/4 p1, 0x4

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    aput p1, p4, p2

    nop

    :cond_8
    :goto_2
    return-void
.end method

.method private F(IIZ[I)V
    .locals 4

    const/16 v0, 0x32

    if-ge p1, v0, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    const-string p1, "security_center_pc_l_50_r_s"

    goto :goto_0

    :cond_1
    const-string p1, "security_center_pc_l_50_r_s_2"

    :goto_0
    invoke-virtual {p0}, Lud/c;->v()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, p1}, Lme/b;->H(Landroid/content/Context;Ljava/lang/String;)[I

    move-result-object p3

    const/4 v1, 0x0

    if-eqz p3, :cond_4

    array-length v2, p3

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    array-length v2, p3

    if-ge v2, v0, :cond_3

    add-int/lit8 v0, v2, 0x1

    new-array v0, v0, [I

    invoke-static {p3, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput p2, v0, v2

    goto :goto_2

    :cond_3
    new-array v0, v0, [I

    const/16 v3, 0x31

    sub-int/2addr v2, v3

    invoke-static {p3, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput p2, v0, v3

    goto :goto_2

    :cond_4
    :goto_1
    const/4 p3, 0x1

    new-array v0, p3, [I

    aput p2, v0, v1

    :goto_2
    invoke-static {p4, v0}, Lme/b;->O([I[I)V

    invoke-virtual {p0}, Lud/c;->v()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1, v0}, Lme/b;->P(Landroid/content/Context;Ljava/lang/String;[I)V

    return-void
.end method

.method public static synthetic p()V
    .locals 0

    invoke-static {}, Lud/c;->z()V

    return-void
.end method

.method public static synthetic q(Lud/c;ZII[I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lud/c;->y(ZII[I)V

    return-void
.end method

.method private declared-synchronized r(Z)V
    .locals 11

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lx4/z1;->r()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "BaseHealthManager"

    const-string v0, "checkWriteSohInitComp return not owner"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lud/c;->B(Z)I

    move-result v6

    invoke-virtual {p0, p1}, Lud/c;->C(Z)I

    move-result v7

    invoke-virtual {p0, p1}, Lud/c;->D(Z)[I

    move-result-object v8

    const-string v0, "BaseHealthManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkComputeSoh isFirstBattery:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",cycleCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",rawSoh:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lud/e;->g()Lud/e;

    move-result-object v9

    new-instance v10, Lud/b;

    move-object v0, v10

    move-object v1, p0

    move v2, p1

    move v3, v6

    move v4, v7

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Lud/b;-><init>(Lud/c;ZII[I)V

    move-object v0, v9

    move v1, p1

    move v2, v6

    move v3, v7

    move-object v4, v8

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Lud/e;->c(ZII[ILud/e$c;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private u(I[I)I
    .locals 5

    invoke-direct {p0, p2}, Lud/c;->x([I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v1, 0x0

    aget v2, p2, v1

    const/4 v3, 0x3

    aget v3, p2, v3

    add-int/2addr v0, v3

    sub-int/2addr v2, v0

    const/4 v0, 0x2

    aget v0, p2, v0

    const/4 v3, 0x1

    aget v4, p2, v3

    invoke-direct {p0, v0, v4}, Lud/c;->w(II)I

    move-result v0

    sub-int/2addr p1, v0

    const/4 v0, 0x5

    if-lt v2, v3, :cond_1

    if-gt v2, v0, :cond_1

    const/16 v4, 0x2d

    if-lt p1, v4, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v1

    :goto_0
    if-le v2, v0, :cond_2

    const/16 v0, 0x19

    if-lt p1, v0, :cond_2

    move p1, v3

    goto :goto_1

    :cond_2
    move p1, v1

    :goto_1
    if-nez v4, :cond_4

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    aget p1, p2, v1

    return p1

    :cond_4
    :goto_2
    aget p1, p2, v1

    sub-int/2addr p1, v3

    return p1
.end method

.method private w(II)I
    .locals 0

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p1, p2

    return p1
.end method

.method private x([I)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x5

    :goto_0
    const/16 v3, 0xa

    if-ge v2, v3, :cond_1

    aget v3, p1, v2

    if-lez v3, :cond_0

    int-to-float v3, v3

    add-float/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-lez v1, :cond_2

    int-to-float p1, v1

    div-float/2addr v0, p1

    float-to-int p1, v0

    return p1

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method private synthetic y(ZII[I)V
    .locals 2

    invoke-static {}, Lud/e;->g()Lud/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lud/e;->e(Z)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lud/c;->v()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1}, Lme/b;->F(Landroid/content/Context;I)V

    return-void

    :cond_0
    if-eq v1, p2, :cond_a

    if-ne v1, p3, :cond_1

    goto :goto_3

    :cond_1
    if-eqz p1, :cond_2

    iget v0, p0, Lud/c;->a:I

    if-eq p2, v0, :cond_3

    :cond_2
    if-nez p1, :cond_4

    iget v0, p0, Lud/c;->b:I

    if-ne p2, v0, :cond_4

    :cond_3
    const-string p1, "BaseHealthManager"

    const-string p2, "same cycle return!!!"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    invoke-direct {p0, p1, p2, p3, p4}, Lud/c;->E(ZII[I)V

    invoke-direct {p0, p2, p3, p1, p4}, Lud/c;->F(IIZ[I)V

    const/4 p3, 0x0

    const/16 v0, 0x64

    if-gt p2, v0, :cond_5

    aput v0, p4, p3

    const/4 p3, 0x4

    aput v0, p4, p3

    goto :goto_0

    :cond_5
    const/4 v0, 0x3

    aget v0, p4, v0

    aget p3, p4, p3

    invoke-direct {p0, p2, p4}, Lud/c;->u(I[I)I

    move-result p3

    if-eq p3, v1, :cond_6

    invoke-direct {p0, p3, p2, p4}, Lud/c;->A(II[I)V

    :cond_6
    :goto_0
    invoke-virtual {p0, p1, p4}, Lud/c;->G(Z[I)Z

    move-result p3

    if-eqz p3, :cond_8

    if-eqz p1, :cond_7

    iput-object p4, p0, Lud/c;->c:[I

    goto :goto_1

    :cond_7
    iput-object p4, p0, Lud/c;->d:[I

    :cond_8
    :goto_1
    if-eqz p1, :cond_9

    iput p2, p0, Lud/c;->a:I

    goto :goto_2

    :cond_9
    iput p2, p0, Lud/c;->b:I

    :goto_2
    invoke-virtual {p0}, Lud/c;->v()Landroid/content/Context;

    move-result-object p1

    invoke-interface {p0}, Lud/o;->m()I

    move-result p2

    invoke-static {p1, p2}, Lme/b;->F(Landroid/content/Context;I)V

    return-void

    :cond_a
    :goto_3
    invoke-virtual {p0}, Lud/c;->v()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1}, Lme/b;->F(Landroid/content/Context;I)V

    return-void
.end method

.method private static synthetic z()V
    .locals 2

    const-string v0, "BaseHealthManager"

    const-string v1, "initBatDeviceBatteryCheck"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public B(Z)I
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p0}, Lud/o;->f()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lud/o;->c()I

    move-result p1

    :goto_0
    return p1
.end method

.method public C(Z)I
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p0}, Lud/o;->g()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lud/o;->d()I

    move-result p1

    :goto_0
    return p1
.end method

.method public D(Z)[I
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p0}, Lud/o;->o()[I

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lud/o;->i()[I

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public G(Z[I)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p2}, Lme/j;->A([I)Z

    move-result p1

    return p1

    :cond_0
    invoke-static {p2}, Lme/j;->B([I)Z

    move-result p1

    return p1
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lud/c;->r(Z)V

    return-void
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lud/c;->r(Z)V

    return-void
.end method

.method public j(Z)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p0}, Lud/o;->a()Z

    move-result p1

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lud/o;->h()Z

    move-result p1

    :goto_0
    return p1
.end method

.method public k(Z)V
    .locals 7

    invoke-static {}, Lx4/z1;->r()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "BaseHealthManager"

    const-string v0, "checkWriteSohInitComp return not owner"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lud/c;->B(Z)I

    move-result v3

    invoke-virtual {p0, p1}, Lud/c;->C(Z)I

    move-result v4

    invoke-virtual {p0, p1}, Lud/c;->D(Z)[I

    move-result-object v5

    invoke-static {}, Lud/e;->g()Lud/e;

    move-result-object v1

    new-instance v6, Lud/a;

    invoke-direct {v6}, Lud/a;-><init>()V

    move v2, p1

    invoke-virtual/range {v1 .. v6}, Lud/e;->c(ZII[ILud/e$c;)V

    return-void
.end method

.method public l()[I
    .locals 1

    iget-object v0, p0, Lud/c;->d:[I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [I

    :cond_0
    return-object v0
.end method

.method public n()[I
    .locals 1

    iget-object v0, p0, Lud/c;->c:[I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [I

    :cond_0
    return-object v0
.end method

.method protected s(Z)Z
    .locals 1

    invoke-static {}, Lx4/z1;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lud/e;->g()Lud/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lud/e;->k(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lud/e;->g()Lud/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lud/e;->e(Z)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected t(Z)I
    .locals 3

    invoke-virtual {p0, p1}, Lud/c;->s(Z)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p0}, Lud/o;->f()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lud/o;->c()I

    move-result v0

    :goto_0
    if-ne v0, v1, :cond_2

    return v1

    :cond_2
    const/16 v1, 0x64

    if-gt v0, v1, :cond_3

    return v1

    :cond_3
    const-string v0, "BaseHealthManager"

    if-eqz p1, :cond_4

    iget-object v1, p0, Lud/c;->c:[I

    if-nez v1, :cond_5

    const-string v1, "computeCurrentBatterySohShow mUiSohDataArray1 is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lme/j;->v()[I

    move-result-object v1

    iput-object v1, p0, Lud/c;->c:[I

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lud/c;->d:[I

    if-nez v1, :cond_5

    const-string v1, "computeCurrentBatterySohShow mUiSohDataArray2 is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lme/j;->w()[I

    move-result-object v1

    iput-object v1, p0, Lud/c;->d:[I

    :cond_5
    :goto_1
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    iget-object p1, p0, Lud/c;->c:[I

    aget p1, p1, v1

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lud/c;->d:[I

    aget p1, p1, v1

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "computeCurrentBatterySohShow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method protected abstract v()Landroid/content/Context;
.end method

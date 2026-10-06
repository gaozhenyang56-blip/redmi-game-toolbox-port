.class public Lud/l;
.super Lud/c;
.source "SourceFile"


# static fields
.field private static f:Ljava/lang/Float;


# instance fields
.field private e:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lud/c;-><init>()V

    iput-object p1, p0, Lud/l;->e:Landroid/content/Context;

    return-void
.end method

.method private H()F
    .locals 3

    sget-object v0, Lud/l;->f:Ljava/lang/Float;

    if-nez v0, :cond_0

    invoke-static {}, Lme/j;->e()F

    move-result v0

    invoke-static {}, Lme/j;->e()F

    move-result v1

    invoke-static {}, Lme/j;->f()F

    move-result v2

    add-float/2addr v1, v2

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lud/l;->f:Ljava/lang/Float;

    :cond_0
    sget-object v0, Lud/l;->f:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method


# virtual methods
.method public I()I
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lud/c;->t(Z)I

    move-result v0

    return v0
.end method

.method public J()I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lud/c;->t(Z)I

    move-result v0

    return v0
.end method

.method public a()Z
    .locals 1

    invoke-static {}, Lme/j;->a()Z

    move-result v0

    return v0
.end method

.method public c()I
    .locals 3

    invoke-static {}, Lme/j;->s()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBatteryCycleCount2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BatteryHeathQcomManagerImp"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public d()I
    .locals 3

    invoke-static {}, Lme/j;->u()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRawSoh2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BatteryHeathQcomManagerImp"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public f()I
    .locals 3

    invoke-static {}, Lme/j;->r()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBatteryCycleCount1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BatteryHeathQcomManagerImp"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public g()I
    .locals 3

    invoke-static {}, Lme/j;->t()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRawSoh1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BatteryHeathQcomManagerImp"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public h()Z
    .locals 1

    invoke-static {}, Lme/j;->b()Z

    move-result v0

    return v0
.end method

.method public i()[I
    .locals 1

    invoke-static {}, Lme/j;->w()[I

    move-result-object v0

    return-object v0
.end method

.method public m()I
    .locals 6

    invoke-static {}, Lx4/z1;->r()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lme/b;->A()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lud/l;->H()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    invoke-virtual {p0}, Lud/l;->I()I

    move-result v2

    invoke-virtual {p0}, Lud/l;->J()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getUiSohShow fg1BatteryWeight:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BatteryHeathQcomManagerImp"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    int-to-float v2, v2

    mul-float/2addr v2, v0

    int-to-float v0, v3

    mul-float/2addr v0, v1

    add-float/2addr v2, v0

    float-to-int v0, v2

    return v0

    :cond_1
    :goto_0
    return v4

    :cond_2
    invoke-virtual {p0}, Lud/l;->I()I

    move-result v0

    return v0

    :cond_3
    invoke-virtual {p0}, Lud/l;->v()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lme/b;->r(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public o()[I
    .locals 1

    invoke-static {}, Lme/j;->v()[I

    move-result-object v0

    return-object v0
.end method

.method protected v()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lud/l;->e:Landroid/content/Context;

    return-object v0
.end method

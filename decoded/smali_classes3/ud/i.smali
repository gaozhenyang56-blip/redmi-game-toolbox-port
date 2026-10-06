.class public Lud/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lde/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lud/i$b;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:J

.field private d:I

.field private e:I

.field private f:I

.field private g:Ljava/lang/Runnable;

.field private h:[I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lud/i$a;)V
    .locals 0

    invoke-direct {p0}, Lud/i;-><init>()V

    return-void
.end method

.method public static synthetic b(Lud/i;I)V
    .locals 0

    invoke-direct {p0, p1}, Lud/i;->h(I)V

    return-void
.end method

.method public static synthetic c(Lud/i;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lud/i;->i(II)V

    return-void
.end method

.method public static synthetic d(Lud/i;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lud/i;->j(II)V

    return-void
.end method

.method private e(I)V
    .locals 3

    iget-object v0, p0, Lud/i;->g:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    new-instance v0, Lud/g;

    invoke-direct {v0, p0, p1}, Lud/g;-><init>(Lud/i;I)V

    iput-object v0, p0, Lud/i;->g:Ljava/lang/Runnable;

    :cond_0
    invoke-static {}, Lde/i;->M()Lde/i;

    move-result-object p1

    iget-object v0, p0, Lud/i;->g:Ljava/lang/Runnable;

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lde/i;->h0(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static g()Lud/i;
    .locals 1

    invoke-static {}, Lud/i$b;->a()Lud/i;

    move-result-object v0

    return-object v0
.end method

.method private synthetic h(I)V
    .locals 4

    iget v0, p0, Lud/i;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lud/i;->e:I

    const/4 v1, 0x0

    const/16 v2, 0x14

    if-lt v0, v2, :cond_0

    iput v1, p0, Lud/i;->e:I

    return-void

    :cond_0
    invoke-static {}, Lme/j;->c()I

    move-result v0

    iget v2, p0, Lud/i;->f:I

    const v3, -0x30d40

    if-ge v2, v3, :cond_2

    if-ge v0, v3, :cond_2

    if-eq v2, v0, :cond_2

    iget-object v0, p0, Lud/i;->h:[I

    if-nez v0, :cond_1

    invoke-static {}, Lud/j;->b()Lud/j;

    move-result-object v0

    invoke-virtual {v0}, Lud/j;->a()V

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lme/j;->A([I)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lud/i;->h:[I

    :goto_0
    iput v1, p0, Lud/i;->f:I

    iput v1, p0, Lud/i;->e:I

    iput p1, p0, Lud/i;->b:I

    const-string p1, "BatteryHealthRecord"

    const-string v0, "checkBatteryBat checkComputeSoh"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iput v0, p0, Lud/i;->f:I

    invoke-static {}, Lde/i;->M()Lde/i;

    move-result-object p1

    iget-object v0, p0, Lud/i;->g:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Lde/i;->h0(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private synthetic i(II)V
    .locals 1

    invoke-static {}, Lme/j;->v()[I

    move-result-object v0

    invoke-static {v0}, Lme/b;->f([I)I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Lud/n;->a(II)[I

    move-result-object p1

    iput-object p1, p0, Lud/i;->h:[I

    :cond_0
    return-void
.end method

.method private synthetic j(II)V
    .locals 2

    invoke-static {}, Lme/b;->z()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "level:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",pluggedType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BatteryHealthRecord"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xa

    if-lt p1, v0, :cond_3

    const/16 v0, 0x5f

    if-gt p1, v0, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-wide p1, p0, Lud/i;->c:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide v0, p0, Lud/i;->c:J

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x2710

    cmp-long p1, p1, v0

    if-gez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lme/j;->r()I

    move-result p1

    iget p2, p0, Lud/i;->b:I

    if-ne p2, p1, :cond_2

    return-void

    :cond_2
    invoke-direct {p0, p1}, Lud/i;->e(I)V

    goto :goto_1

    :cond_3
    :goto_0
    return-void

    :cond_4
    invoke-static {}, Lud/j;->b()Lud/j;

    move-result-object p1

    invoke-virtual {p1}, Lud/j;->a()V

    :goto_1
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x64

    const-string v1, "level"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "plugged"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iget v1, p0, Lud/i;->d:I

    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lud/i;->c:J

    :cond_1
    iput p1, p0, Lud/i;->d:I

    iget v1, p0, Lud/i;->a:I

    sub-int v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v2, 0xa

    if-le v1, v2, :cond_2

    invoke-static {}, Lde/i;->M()Lde/i;

    move-result-object v1

    new-instance v2, Lud/f;

    invoke-direct {v2, p0, v0, p1}, Lud/f;-><init>(Lud/i;II)V

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lde/i;->h0(Ljava/lang/Runnable;J)V

    iput v0, p0, Lud/i;->a:I

    :cond_2
    return-void
.end method

.method public f(III)V
    .locals 1

    invoke-static {}, Lme/b;->z()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x32

    if-gt p1, v0, :cond_1

    invoke-static {}, Lud/n;->b()[I

    move-result-object p1

    iput-object p1, p0, Lud/i;->h:[I

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-eq p3, v0, :cond_2

    invoke-static {}, Lde/i;->M()Lde/i;

    move-result-object p3

    new-instance v0, Lud/h;

    invoke-direct {v0, p0, p1, p2}, Lud/h;-><init>(Lud/i;II)V

    const-wide/16 p1, 0x64

    invoke-virtual {p3, v0, p1, p2}, Lde/i;->h0(Ljava/lang/Runnable;J)V

    :cond_2
    :goto_0
    return-void
.end method

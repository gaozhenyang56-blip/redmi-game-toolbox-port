.class public Lee/b;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private b:Z

.field private c:I

.field private d:Z

.field private e:J

.field private f:Lcom/miui/powercenter/batteryhistory/b$a;

.field private g:Lee/a;

.field private h:Lee/c;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lee/b;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean v1, p0, Lee/b;->b:Z

    iput v1, p0, Lee/b;->c:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lee/b;->d:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lee/b;->e:J

    new-instance v0, Lee/a;

    invoke-direct {v0}, Lee/a;-><init>()V

    iput-object v0, p0, Lee/b;->g:Lee/a;

    new-instance v0, Lee/c;

    invoke-direct {v0}, Lee/c;-><init>()V

    iput-object v0, p0, Lee/b;->h:Lee/c;

    return-void
.end method

.method static synthetic a(Lee/b;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lee/b;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic b(Lee/b;)Lcom/miui/powercenter/batteryhistory/b$a;
    .locals 0

    iget-object p0, p0, Lee/b;->f:Lcom/miui/powercenter/batteryhistory/b$a;

    return-object p0
.end method

.method static synthetic c(Lee/b;Lcom/miui/powercenter/batteryhistory/b$a;)Lcom/miui/powercenter/batteryhistory/b$a;
    .locals 0

    iput-object p1, p0, Lee/b;->f:Lcom/miui/powercenter/batteryhistory/b$a;

    return-object p1
.end method

.method private static d(Ljava/util/Date;)I
    .locals 1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 p0, 0xb

    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0
.end method

.method private e(J)I
    .locals 2

    const-wide/32 v0, 0x1b7740

    add-long/2addr p1, v0

    const-wide/32 v0, 0x36ee80

    div-long/2addr p1, v0

    long-to-int p1, p1

    return p1
.end method

.method public static f()I
    .locals 5

    invoke-static {}, Lgd/c;->k0()I

    move-result v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Lgd/c;->h0()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lme/b0;->u(JJ)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-static {v2}, Lgd/c;->g2(I)V

    move v0, v2

    :cond_0
    return v0
.end method

.method private g(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const-string v0, "level"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "scale"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/16 v2, 0x64

    mul-int/2addr v0, v2

    div-int/2addr v0, v1

    invoke-static {p2}, Lme/w;->M(Landroid/content/Intent;)Z

    move-result v1

    iget v3, p0, Lee/b;->c:I

    const-string v4, "BatteryInfoReceiver"

    if-eq v3, v0, :cond_4

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lee/b;->k(Landroid/content/Context;)V

    if-lt v0, v2, :cond_3

    iget v2, p0, Lee/b;->c:I

    invoke-direct {p0, p2, v2, v0}, Lee/b;->j(Landroid/content/Intent;II)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lgd/c;->I0()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lee/b;->g:Lee/a;

    invoke-virtual {p2, v0}, Lee/a;->a(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lgd/c;->l0()J

    move-result-wide v5

    sub-long v5, v2, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    const-wide/32 v7, 0x1b7740

    cmp-long p2, v5, v7

    if-ltz p2, :cond_2

    iget-object p2, p0, Lee/b;->g:Lee/a;

    invoke-virtual {p2, p1, v0}, Lee/a;->c(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lee/b;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lee/b;->h:Lee/c;

    invoke-virtual {v5, p1, p2}, Lee/c;->c(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    invoke-static {v2, v3}, Lgd/c;->h2(J)V

    const-string p2, "Show battery consume abnormal notification"

    invoke-static {v4, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget p2, p0, Lee/b;->c:I

    invoke-direct {p0, p2, v0}, Lee/b;->h(II)V

    :cond_3
    :goto_0
    iput v0, p0, Lee/b;->c:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lee/b;->e:J

    :cond_4
    iget-boolean p2, p0, Lee/b;->d:Z

    if-eq p2, v1, :cond_9

    const-string p2, "stable"

    const/4 v0, 0x0

    if-nez v1, :cond_7

    iget-object p1, p0, Lee/b;->f:Lcom/miui/powercenter/batteryhistory/b$a;

    if-eqz p1, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Save charge details,  startLevel "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lee/b;->f:Lcom/miui/powercenter/batteryhistory/b$a;

    iget v2, v2, Lcom/miui/powercenter/batteryhistory/b$a;->d:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " endLevel "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lee/b;->f:Lcom/miui/powercenter/batteryhistory/b$a;

    iget v2, v2, Lcom/miui/powercenter/batteryhistory/b$a;->e:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " totalChargedTime "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lee/b;->f:Lcom/miui/powercenter/batteryhistory/b$a;

    iget-wide v2, v2, Lcom/miui/powercenter/batteryhistory/b$a;->b:J

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lee/b;->f:Lcom/miui/powercenter/batteryhistory/b$a;

    invoke-direct {p0, p1}, Lee/b;->o(Lcom/miui/powercenter/batteryhistory/b$a;)V

    iget-object p1, p0, Lee/b;->f:Lcom/miui/powercenter/batteryhistory/b$a;

    invoke-direct {p0, p1}, Lee/b;->m(Lcom/miui/powercenter/batteryhistory/b$a;)V

    invoke-direct {p0}, Lee/b;->q()V

    invoke-static {}, Lx4/t;->l()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lee/b;->f:Lcom/miui/powercenter/batteryhistory/b$a;

    iget p1, p1, Lcom/miui/powercenter/batteryhistory/b$a;->e:I

    invoke-static {p1}, Lhd/a;->B(I)V

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-static {p1}, Lee/b;->d(Ljava/util/Date;)I

    move-result p1

    invoke-static {p1}, Lhd/a;->H1(I)V

    invoke-static {}, Lgd/c;->z()J

    move-result-wide p1

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-eqz v2, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p1

    invoke-direct {p0, v2, v3}, Lee/b;->e(J)I

    move-result p1

    invoke-static {p1}, Lhd/a;->H(I)V

    iget-object p1, p0, Lee/b;->f:Lcom/miui/powercenter/batteryhistory/b$a;

    iget-wide p1, p1, Lcom/miui/powercenter/batteryhistory/b$a;->b:J

    sub-long p1, v2, p1

    invoke-direct {p0, p1, p2}, Lee/b;->e(J)I

    move-result p1

    invoke-static {p1}, Lhd/a;->K(I)V

    invoke-static {}, Lgd/c;->A()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-direct {p0, v2, v3}, Lee/b;->e(J)I

    move-result p1

    invoke-static {p1}, Lhd/a;->I(I)V

    iget-object p1, p0, Lee/b;->f:Lcom/miui/powercenter/batteryhistory/b$a;

    iget-wide p1, p1, Lcom/miui/powercenter/batteryhistory/b$a;->b:J

    sub-long/2addr v2, p1

    invoke-direct {p0, v2, v3}, Lee/b;->e(J)I

    move-result p1

    invoke-static {p1}, Lhd/a;->L(I)V

    :cond_5
    invoke-static {v0}, Lgd/c;->r1(Z)V

    const/4 p1, 0x0

    iput-object p1, p0, Lee/b;->f:Lcom/miui/powercenter/batteryhistory/b$a;

    :cond_6
    invoke-static {}, Lmd/o;->h()Lmd/o;

    move-result-object p1

    invoke-virtual {p1}, Lmd/o;->x()V

    goto :goto_1

    :cond_7
    invoke-static {v0}, Lgd/c;->r1(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lgd/c;->q1(J)V

    invoke-static {}, Lx4/t;->l()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_8

    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    invoke-static {p2}, Lee/b;->d(Ljava/util/Date;)I

    move-result p2

    invoke-static {p2}, Lhd/a;->Y0(I)V

    invoke-static {p1}, Lme/w;->j(Landroid/content/Context;)I

    move-result p2

    invoke-static {p2}, Lhd/a;->C(I)V

    invoke-static {p1}, Lme/w;->j(Landroid/content/Context;)I

    move-result p1

    invoke-static {p1}, Lhd/a;->D(I)V

    :cond_8
    sget-object p1, Lmd/o;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Charge status changed, prev status "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lee/b;->d:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", status "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lee/b;->d:Z

    iget-object p1, p0, Lee/b;->g:Lee/a;

    invoke-virtual {p1}, Lee/a;->e()V

    :cond_9
    return-void
.end method

.method private h(II)V
    .locals 4

    if-lt p2, p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lgd/c;->r()I

    move-result v0

    add-int/2addr v0, p1

    sub-int/2addr v0, p2

    const/16 p1, 0x64

    if-le v0, p1, :cond_1

    move v0, p1

    :cond_1
    invoke-static {v0}, Lgd/c;->i1(I)V

    invoke-static {}, Lgd/c;->s()J

    move-result-wide p1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lee/b;->e:J

    sub-long/2addr v0, v2

    add-long/2addr p1, v0

    invoke-static {p1, p2}, Lgd/c;->j1(J)V

    return-void
.end method

.method private static i()Z
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

.method private j(Landroid/content/Intent;II)V
    .locals 2

    invoke-static {}, Lgd/c;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lee/b;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {v0}, Lee/b;->d(Ljava/util/Date;)I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_2

    return-void

    :cond_2
    const-string v0, "status"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    if-ge p2, p3, :cond_3

    const/16 p2, 0x64

    if-eq p3, p2, :cond_4

    :cond_3
    const/4 p2, 0x5

    if-ne p1, p2, :cond_5

    :cond_4
    invoke-static {v1}, Lgd/c;->r1(Z)V

    invoke-static {}, Lx4/t;->l()Ljava/lang/String;

    move-result-object p1

    const-string p2, "stable"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-static {p1}, Lee/b;->d(Ljava/util/Date;)I

    move-result p1

    invoke-static {p1}, Lhd/a;->J(I)V

    :cond_5
    return-void
.end method

.method private k(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lee/b$b;

    invoke-direct {v0, p0, p1}, Lee/b$b;-><init>(Lee/b;Landroid/content/Context;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private m(Lcom/miui/powercenter/batteryhistory/b$a;)V
    .locals 4

    iget-wide v0, p1, Lcom/miui/powercenter/batteryhistory/b$a;->b:J

    const-wide/32 v2, 0x493e0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget v0, p1, Lcom/miui/powercenter/batteryhistory/b$a;->e:I

    iget p1, p1, Lcom/miui/powercenter/batteryhistory/b$a;->d:I

    sub-int/2addr v0, p1

    const/4 p1, 0x2

    if-lt v0, p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lgd/c;->h1(J)V

    const/4 p1, 0x0

    invoke-static {p1}, Lgd/c;->i1(I)V

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lgd/c;->j1(J)V

    :cond_0
    return-void
.end method

.method private o(Lcom/miui/powercenter/batteryhistory/b$a;)V
    .locals 11

    sget-object v0, Lmd/o;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-string v1, "BatteryInfoReceiver"

    if-eqz v0, :cond_0

    const-string p1, "updateChargeFullTime return because is protect night charge"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "charge detail, startLevel "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/miui/powercenter/batteryhistory/b$a;->d:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " endLevel "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/miui/powercenter/batteryhistory/b$a;->e:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " plugType "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/miui/powercenter/batteryhistory/b$a;->h:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " useMaxOrMin "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/miui/powercenter/batteryhistory/b$a;->f:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isChargeProtection "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/miui/powercenter/batteryhistory/b$a;->g:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " chargedTime "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/miui/powercenter/batteryhistory/b$a;->c:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Lcom/miui/powercenter/batteryhistory/b$a;->e:I

    const/16 v2, 0x5a

    if-lt v0, v2, :cond_7

    iget v2, p1, Lcom/miui/powercenter/batteryhistory/b$a;->d:I

    const/16 v3, 0x32

    if-gt v2, v3, :cond_7

    iget-boolean v3, p1, Lcom/miui/powercenter/batteryhistory/b$a;->f:Z

    if-nez v3, :cond_7

    iget-boolean v3, p1, Lcom/miui/powercenter/batteryhistory/b$a;->g:Z

    if-nez v3, :cond_7

    iget-wide v3, p1, Lcom/miui/powercenter/batteryhistory/b$a;->c:J

    const-wide/16 v5, 0x64

    mul-long/2addr v3, v5

    sub-int/2addr v0, v2

    int-to-long v5, v0

    div-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-gtz v0, :cond_1

    const-string p1, "chargeFullTime 0"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget v0, p1, Lcom/miui/powercenter/batteryhistory/b$a;->h:I

    const/4 v2, 0x1

    const-wide/16 v7, 0x2

    if-ne v0, v2, :cond_3

    iget-object v2, p1, Lcom/miui/powercenter/batteryhistory/b$a;->j:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-static {v2}, Lgd/c;->B(Ljava/lang/String;)J

    move-result-wide v9

    cmp-long v0, v9, v5

    if-eqz v0, :cond_2

    add-long/2addr v9, v3

    div-long/2addr v9, v7

    iget-object p1, p1, Lcom/miui/powercenter/batteryhistory/b$a;->j:Ljava/lang/String;

    invoke-static {v9, v10, p1}, Lgd/c;->s1(JLjava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object p1, p1, Lcom/miui/powercenter/batteryhistory/b$a;->j:Ljava/lang/String;

    invoke-static {v3, v4, p1}, Lgd/c;->s1(JLjava/lang/String;)V

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "plugType ac, charge full time "

    goto :goto_2

    :cond_3
    const/4 v2, 0x2

    if-ne v0, v2, :cond_5

    invoke-static {}, Lgd/c;->C()J

    move-result-wide v9

    cmp-long p1, v9, v5

    if-eqz p1, :cond_4

    add-long/2addr v9, v3

    div-long/2addr v9, v7

    invoke-static {v9, v10}, Lgd/c;->t1(J)V

    goto :goto_1

    :cond_4
    invoke-static {v3, v4}, Lgd/c;->t1(J)V

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "plugType usb, charge full time "

    :goto_2
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_5
    const/4 v2, 0x4

    if-ne v0, v2, :cond_7

    iget-object v0, p1, Lcom/miui/powercenter/batteryhistory/b$a;->k:Ljava/lang/String;

    if-eqz v0, :cond_7

    invoke-static {v0}, Lgd/c;->D(Ljava/lang/String;)J

    move-result-wide v9

    cmp-long v0, v9, v5

    if-eqz v0, :cond_6

    add-long/2addr v9, v3

    div-long/2addr v9, v7

    iget-object p1, p1, Lcom/miui/powercenter/batteryhistory/b$a;->k:Ljava/lang/String;

    invoke-static {v9, v10, p1}, Lgd/c;->u1(JLjava/lang/String;)V

    goto :goto_3

    :cond_6
    iget-object p1, p1, Lcom/miui/powercenter/batteryhistory/b$a;->k:Ljava/lang/String;

    invoke-static {v3, v4, p1}, Lgd/c;->u1(JLjava/lang/String;)V

    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "plugType wireless, charge full time "

    goto :goto_2

    :cond_7
    :goto_4
    return-void
.end method

.method private p()V
    .locals 1

    new-instance v0, Lee/b$c;

    invoke-direct {v0, p0}, Lee/b$c;-><init>(Lee/b;)V

    invoke-static {v0}, Lx4/f;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method private q()V
    .locals 9

    invoke-static {}, Lgd/c;->h0()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lgd/c;->k0()I

    move-result v4

    invoke-static {v0, v1, v2, v3}, Lme/b0;->u(JJ)Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_0

    invoke-static {v6}, Lgd/c;->g2(I)V

    :goto_0
    invoke-static {v2, v3}, Lgd/c;->c2(J)V

    goto :goto_1

    :cond_0
    sub-long v0, v2, v0

    const-wide/32 v7, 0x493e0

    cmp-long v0, v0, v7

    if-lez v0, :cond_1

    add-int/2addr v4, v6

    invoke-static {v4}, Lgd/c;->g2(I)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public l(Landroid/content/Context;)V
    .locals 2

    iget-boolean v0, p0, Lee/b;->b:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lee/b;->b:Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {}, Lme/w;->g0()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "android.hardware.usb.action.USB_PORT_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x4

    invoke-static {p1, p0, v0, v1}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, v0}, Lee/b;->g(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method public n(Landroid/content/Context;)V
    .locals 1

    iget-boolean v0, p0, Lee/b;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lee/b;->b:Z

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lee/b;->g(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-direct {p0}, Lee/b;->p()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-wide/16 p1, 0x0

    invoke-static {p1, p2}, Lgd/c;->q1(J)V

    const/4 p1, 0x0

    invoke-static {p1}, Lgd/c;->r1(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.hardware.usb.action.USB_PORT_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lde/i;->M()Lde/i;

    move-result-object p1

    invoke-virtual {p1}, Lde/i;->J()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance v0, Lee/b$a;

    invoke-direct {v0, p0, p2}, Lee/b$a;-><init>(Lee/b;Landroid/content/Intent;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method

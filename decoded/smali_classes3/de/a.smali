.class public Lde/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lde/g;


# instance fields
.field private a:J

.field private b:J

.field private c:Z

.field private d:J

.field private e:I

.field private f:I

.field private g:Ljava/lang/Boolean;

.field private h:Ljava/lang/Boolean;

.field private i:Ljava/lang/Boolean;

.field private j:I

.field private k:I

.field private l:Landroid/content/Context;

.field private m:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lde/a;->c:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lde/a;->d:J

    const/4 v1, 0x0

    iput-object v1, p0, Lde/a;->g:Ljava/lang/Boolean;

    iput-object v1, p0, Lde/a;->h:Ljava/lang/Boolean;

    iput-object v1, p0, Lde/a;->i:Ljava/lang/Boolean;

    iput v0, p0, Lde/a;->j:I

    const/4 v0, 0x1

    iput v0, p0, Lde/a;->k:I

    iput-object p1, p0, Lde/a;->l:Landroid/content/Context;

    return-void
.end method

.method private b(II)V
    .locals 6

    sget-boolean v0, Lsl/a;->a:Z

    if-eqz v0, :cond_4

    invoke-static {}, Lce/g;->I()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget v0, p0, Lde/a;->e:I

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v2, :cond_1

    if-ne p1, v1, :cond_1

    const/4 v5, 0x4

    if-ne p2, v5, :cond_1

    move v5, v3

    goto :goto_0

    :cond_1
    move v5, v4

    :goto_0
    if-ne v0, v1, :cond_2

    if-ne p1, v2, :cond_2

    iget p1, p0, Lde/a;->j:I

    if-ne p2, p1, :cond_2

    move p1, v3

    goto :goto_1

    :cond_2
    move p1, v4

    :goto_1
    if-eqz v5, :cond_3

    iget-object p2, p0, Lde/a;->l:Landroid/content/Context;

    invoke-static {p2}, Lde/j;->K(Landroid/content/Context;)V

    :cond_3
    if-eqz p1, :cond_4

    iget-object p1, p0, Lde/a;->l:Landroid/content/Context;

    new-array p2, v3, [I

    const v0, 0x7f1210cd

    aput v0, p2, v4

    invoke-static {p1, p2}, Lde/j;->m(Landroid/content/Context;[I)V

    :cond_4
    :goto_2
    return-void
.end method

.method private c(II)V
    .locals 2

    iget-object v0, p0, Lde/a;->i:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    iget-object v0, p0, Lde/a;->l:Landroid/content/Context;

    invoke-static {v0}, Lme/w;->x(Landroid/content/Context;)I

    move-result v0

    iget v1, p0, Lde/a;->k:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lde/a;->i:Ljava/lang/Boolean;

    :cond_1
    iget-object v0, p0, Lde/a;->h:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    invoke-static {}, Lmd/c;->k()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lde/a;->h:Ljava/lang/Boolean;

    :cond_2
    iget-object v0, p0, Lde/a;->i:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lde/a;->h:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lde/a;->l:Landroid/content/Context;

    invoke-static {v0}, Lbm/d;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lde/a;->l:Landroid/content/Context;

    invoke-static {v0}, Lmd/c;->h(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lx4/z1;->r()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    iget v0, p0, Lde/a;->j:I

    if-eq p2, v0, :cond_4

    const/4 p2, 0x2

    if-ne p1, p2, :cond_4

    const-string p1, "BatteryUiReminder"

    const-string p2, "onBatteryChanged: show first charge notice"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lde/a;->l:Landroid/content/Context;

    invoke-static {p1}, Lde/j;->h0(Landroid/content/Context;)V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p0, Lde/a;->i:Ljava/lang/Boolean;

    iget-object p1, p0, Lde/a;->l:Landroid/content/Context;

    iget p2, p0, Lde/a;->k:I

    invoke-static {p1, p2}, Lme/w;->B0(Landroid/content/Context;I)V

    :cond_4
    :goto_1
    return-void
.end method

.method private d(II)V
    .locals 5

    invoke-static {}, Lme/q;->n()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lgd/c;->y()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/16 v0, 0x23

    const-wide/16 v1, 0x0

    if-ge p1, v0, :cond_3

    const/16 v0, 0x31

    if-lt p2, v0, :cond_3

    iget-wide v3, p0, Lde/a;->b:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lde/a;->b:J

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lde/a;->b:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lde/a;->a:J

    :goto_0
    iget-wide v0, p0, Lde/a;->a:J

    const-wide/32 v2, 0x1b7740

    cmp-long v0, v0, v2

    if-ltz v0, :cond_5

    iget-boolean v0, p0, Lde/a;->c:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lde/a;->l:Landroid/content/Context;

    invoke-static {v0}, Lde/j;->R(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/a;->c:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "currentLevel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",temp:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",mHighTemp49StartTime:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p1, p0, Lde/a;->b:J

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ",mHighTemp49LastTime:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p1, p0, Lde/a;->a:J

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BatteryUiReminder"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    iget-boolean p1, p0, Lde/a;->c:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lde/a;->l:Landroid/content/Context;

    invoke-static {p1}, Lde/j;->d(Landroid/content/Context;)V

    :cond_4
    iput-wide v1, p0, Lde/a;->b:J

    iput-wide v1, p0, Lde/a;->a:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lde/a;->c:Z

    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)V
    .locals 5

    if-eqz p1, :cond_1

    iget-object v0, p0, Lde/a;->l:Landroid/content/Context;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x64

    const-string v1, "level"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, -0x1

    const-string v2, "status"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "plugged"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v4, "temperature"

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    div-int/lit8 v3, v3, 0xa

    invoke-direct {p0, v1, v2}, Lde/a;->c(II)V

    invoke-direct {p0, v1, v2}, Lde/a;->b(II)V

    invoke-direct {p0, v0, v3}, Lde/a;->d(II)V

    invoke-virtual {p0, v0}, Lde/a;->e(I)V

    invoke-static {}, Lee/e;->a()Lee/e;

    move-result-object v3

    invoke-virtual {v3, p1}, Lee/e;->d(Landroid/content/Intent;)V

    iput v0, p0, Lde/a;->m:I

    iput v1, p0, Lde/a;->e:I

    iput v2, p0, Lde/a;->f:I

    :cond_1
    :goto_0
    return-void
.end method

.method public e(I)V
    .locals 1

    const/16 v0, 0x64

    if-lt p1, v0, :cond_0

    iget p1, p0, Lde/a;->m:I

    if-ge p1, v0, :cond_0

    iget-object p1, p0, Lde/a;->l:Landroid/content/Context;

    invoke-static {p1}, Lsd/c;->a(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.class public Lmd/a;
.super Lnd/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmd/a$b;
    }
.end annotation


# instance fields
.field private g:I

.field private h:I

.field private i:I

.field private j:J

.field private k:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnd/a;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmd/a;->k:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic m(Lmd/a;)I
    .locals 0

    iget p0, p0, Lmd/a;->h:I

    return p0
.end method

.method static synthetic n(Lmd/a;I)I
    .locals 0

    iput p1, p0, Lmd/a;->h:I

    return p1
.end method

.method static synthetic o(Lmd/a;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lmd/a;->k:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic p(Lmd/a;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    iput-object p1, p0, Lmd/a;->k:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic q(Lmd/a;)Landroid/content/Context;
    .locals 0

    invoke-virtual {p0}, Lnd/a;->h()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic r(Lmd/a;)V
    .locals 0

    invoke-direct {p0}, Lmd/a;->w()V

    return-void
.end method

.method static synthetic s(Lmd/a;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lmd/a;->y(III)V

    return-void
.end method

.method static synthetic t(Lmd/a;)Landroid/content/Context;
    .locals 0

    invoke-virtual {p0}, Lnd/a;->h()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic u(Lmd/a;I)I
    .locals 0

    iput p1, p0, Lmd/a;->i:I

    return p1
.end method

.method static synthetic v(Lmd/a;I)I
    .locals 0

    iput p1, p0, Lmd/a;->g:I

    return p1
.end method

.method private w()V
    .locals 6

    invoke-virtual {p0}, Lnd/a;->h()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmd/c;->h(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lnd/a;->h()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lme/w;->i(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-string v1, "BaseChargeProtect_AlwaysProtect"

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init last charge time: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lmd/a;->j:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lmd/a;->j:J

    invoke-virtual {p0}, Lnd/a;->h()Landroid/content/Context;

    move-result-object v0

    iget-wide v2, p0, Lmd/a;->j:J

    invoke-static {v0, v2, v3}, Lme/w;->r0(Landroid/content/Context;J)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lnd/a;->h()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lme/w;->i(Landroid/content/Context;)J

    move-result-wide v2

    iput-wide v2, p0, Lmd/a;->j:J

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lmd/a;->j:J

    invoke-static {v2, v3, v4, v5}, Lme/b0;->t(JJ)Z

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lastFullChargeTime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lmd/a;->j:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ",greaterThan30Days: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lnd/a;->k(Z)V

    return-void
.end method

.method private x()Z
    .locals 4

    invoke-virtual {p0}, Lnd/a;->h()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lme/w;->i(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3, v0, v1}, Lme/b0;->t(JJ)Z

    move-result v0

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

.method private y(III)V
    .locals 1

    invoke-static {}, Lmd/c;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p3, :cond_2

    const/4 p3, 0x5

    if-ne p2, p3, :cond_0

    iget p2, p0, Lmd/a;->g:I

    if-ne p2, p3, :cond_1

    :cond_0
    const/16 p2, 0x64

    if-lt p1, p2, :cond_2

    iget p1, p0, Lmd/a;->i:I

    if-ge p1, p2, :cond_2

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lmd/a;->j:J

    invoke-virtual {p0}, Lnd/a;->h()Landroid/content/Context;

    move-result-object p1

    iget-wide p2, p0, Lmd/a;->j:J

    invoke-static {p1, p2, p3}, Lme/w;->r0(Landroid/content/Context;J)V

    :cond_2
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    invoke-super {p0, p1}, Lnd/a;->a(I)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lnd/a;->l(Z)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "MODE_ALWAYS"

    return-object v0
.end method

.method public d()I
    .locals 1

    const/16 v0, 0x7d0

    return v0
.end method

.method public e()V
    .locals 2

    invoke-super {p0}, Lnd/a;->e()V

    const/16 v0, 0x50

    invoke-static {v0}, Lmd/c;->n(I)V

    iget v0, p0, Lmd/a;->h:I

    if-eqz v0, :cond_0

    iget v0, p0, Lmd/a;->i:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lnd/a;->h()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lde/j;->O(Landroid/content/Context;)V

    :cond_0
    const-string v0, "BaseChargeProtect_AlwaysProtect"

    const-string v1, "openProtect AlwaysProtectManager"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public f()V
    .locals 2

    invoke-super {p0}, Lnd/a;->f()V

    invoke-static {}, Lmd/c;->a()V

    invoke-virtual {p0}, Lnd/a;->h()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lde/j;->b(Landroid/content/Context;)V

    const-string v0, "BaseChargeProtect_AlwaysProtect"

    const-string v1, "closeProtect AlwaysProtectManager"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public g(Landroid/content/Context;Lmd/o$b;Lmd/p;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lnd/a;->g(Landroid/content/Context;Lmd/o$b;Lmd/p;)V

    invoke-direct {p0}, Lmd/a;->x()Z

    move-result p2

    invoke-virtual {p0, p2}, Lnd/a;->k(Z)V

    invoke-static {p1}, Lmd/c;->h(Landroid/content/Context;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lnd/a;->l(Z)V

    invoke-static {}, Lde/i;->M()Lde/i;

    move-result-object p1

    new-instance p2, Lmd/a$b;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lmd/a$b;-><init>(Lmd/a;Lmd/a$a;)V

    invoke-virtual {p1, p2}, Lde/i;->B(Lde/g;)V

    return-void
.end method

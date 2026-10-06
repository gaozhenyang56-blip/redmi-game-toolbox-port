.class Lmd/d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lde/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmd/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lmd/d;


# direct methods
.method private constructor <init>(Lmd/d;)V
    .locals 0

    iput-object p1, p0, Lmd/d$b;->a:Lmd/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmd/d;Lmd/d$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lmd/d$b;-><init>(Lmd/d;)V

    return-void
.end method

.method private b(IZ)V
    .locals 1

    const/16 v0, 0x32

    if-le p1, v0, :cond_0

    iget-object p1, p0, Lmd/d$b;->a:Lmd/d;

    invoke-static {p1}, Lmd/d;->o(Lmd/d;)I

    move-result p1

    const/16 v0, 0x14

    if-lt p1, v0, :cond_0

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object p2, p0, Lmd/d$b;->a:Lmd/d;

    invoke-static {p2}, Lmd/d;->r(Lmd/d;)Z

    move-result p2

    if-eq p2, p1, :cond_1

    iget-object p2, p0, Lmd/d$b;->a:Lmd/d;

    invoke-virtual {p2, p1}, Lnd/a;->j(Z)V

    iget-object p2, p0, Lmd/d$b;->a:Lmd/d;

    invoke-static {p2, p1}, Lmd/d;->s(Lmd/d;Z)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)V
    .locals 11

    const-string v0, "temperature"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "level"

    const/16 v3, 0x64

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v4, "plugged"

    invoke-virtual {p1, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    invoke-static {}, Lde/i;->M()Lde/i;

    move-result-object v4

    invoke-virtual {v4}, Lde/i;->a0()Z

    move-result v4

    const/16 v5, 0x1c2

    const/16 v6, 0x14

    if-lt v0, v5, :cond_2

    const/16 v5, 0x1e0

    if-ge v0, v5, :cond_2

    if-eqz v4, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v5, p0, Lmd/d$b;->a:Lmd/d;

    invoke-static {v5}, Lmd/d;->m(Lmd/d;)J

    move-result-wide v7

    sub-long v7, v0, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    const-wide/32 v9, 0xea60

    cmp-long v5, v7, v9

    if-ltz v5, :cond_1

    iget-object v5, p0, Lmd/d$b;->a:Lmd/d;

    invoke-static {v5}, Lmd/d;->q(Lmd/d;)I

    iget-object v5, p0, Lmd/d$b;->a:Lmd/d;

    invoke-static {v5, v0, v1}, Lmd/d;->n(Lmd/d;J)J

    :cond_1
    iget-object v0, p0, Lmd/d$b;->a:Lmd/d;

    invoke-static {v0}, Lmd/d;->o(Lmd/d;)I

    move-result v0

    if-le v0, v6, :cond_5

    iget-object v0, p0, Lmd/d$b;->a:Lmd/d;

    invoke-static {v0, v6}, Lmd/d;->p(Lmd/d;I)I

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lmd/d$b;->a:Lmd/d;

    invoke-static {v5}, Lmd/d;->o(Lmd/d;)I

    move-result v5

    if-lez v5, :cond_3

    iget-object v5, p0, Lmd/d$b;->a:Lmd/d;

    invoke-static {v5}, Lmd/d;->o(Lmd/d;)I

    move-result v5

    if-lt v5, v6, :cond_4

    :cond_3
    iget-object v5, p0, Lmd/d$b;->a:Lmd/d;

    invoke-static {v5}, Lmd/d;->r(Lmd/d;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v5, 0x1a4

    if-ge v0, v5, :cond_5

    :cond_4
    iget-object v0, p0, Lmd/d$b;->a:Lmd/d;

    const-wide/16 v5, 0x0

    invoke-static {v0, v5, v6}, Lmd/d;->n(Lmd/d;J)J

    iget-object v0, p0, Lmd/d$b;->a:Lmd/d;

    invoke-static {v0, v1}, Lmd/d;->p(Lmd/d;I)I

    :cond_5
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCountByMinute:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmd/d$b;->a:Lmd/d;

    invoke-static {v1}, Lmd/d;->o(Lmd/d;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",isScreenOn:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseChargeProtect_HighTemp"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2, p1}, Lmd/d$b;->b(IZ)V

    iget-object p1, p0, Lmd/d$b;->a:Lmd/d;

    invoke-static {p1}, Lmd/d;->t(Lmd/d;)I

    move-result p1

    if-eq p1, v2, :cond_6

    if-lt v2, v3, :cond_6

    invoke-static {}, Lmd/o;->h()Lmd/o;

    move-result-object p1

    invoke-virtual {p1}, Lmd/o;->x()V

    :cond_6
    iget-object p1, p0, Lmd/d$b;->a:Lmd/d;

    invoke-static {p1, v2}, Lmd/d;->u(Lmd/d;I)I

    return-void
.end method

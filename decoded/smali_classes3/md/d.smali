.class public Lmd/d;
.super Lnd/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmd/d$b;
    }
.end annotation


# instance fields
.field private g:J

.field private h:Z

.field private i:I

.field private j:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnd/c;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmd/d;->h:Z

    return-void
.end method

.method static synthetic m(Lmd/d;)J
    .locals 2

    iget-wide v0, p0, Lmd/d;->g:J

    return-wide v0
.end method

.method static synthetic n(Lmd/d;J)J
    .locals 0

    iput-wide p1, p0, Lmd/d;->g:J

    return-wide p1
.end method

.method static synthetic o(Lmd/d;)I
    .locals 0

    iget p0, p0, Lmd/d;->j:I

    return p0
.end method

.method static synthetic p(Lmd/d;I)I
    .locals 0

    iput p1, p0, Lmd/d;->j:I

    return p1
.end method

.method static synthetic q(Lmd/d;)I
    .locals 2

    iget v0, p0, Lmd/d;->j:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lmd/d;->j:I

    return v0
.end method

.method static synthetic r(Lmd/d;)Z
    .locals 0

    iget-boolean p0, p0, Lmd/d;->h:Z

    return p0
.end method

.method static synthetic s(Lmd/d;Z)Z
    .locals 0

    iput-boolean p1, p0, Lmd/d;->h:Z

    return p1
.end method

.method static synthetic t(Lmd/d;)I
    .locals 0

    iget p0, p0, Lmd/d;->i:I

    return p0
.end method

.method static synthetic u(Lmd/d;I)I
    .locals 0

    iput p1, p0, Lmd/d;->i:I

    return p1
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "MODE_HIGH_TEMP"

    return-object v0
.end method

.method public e()V
    .locals 2

    invoke-super {p0}, Lnd/a;->e()V

    const/16 v0, 0x50

    invoke-static {v0}, Lmd/c;->n(I)V

    const-string v0, "BaseChargeProtect_HighTemp"

    const-string v1, "openProtect HighTempProtectManager"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public f()V
    .locals 2

    invoke-super {p0}, Lnd/a;->f()V

    invoke-static {}, Lmd/c;->a()V

    const-string v0, "BaseChargeProtect_HighTemp"

    const-string v1, "closeProtect HighTempProtectManager"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public g(Landroid/content/Context;Lmd/o$b;Lmd/p;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lnd/a;->g(Landroid/content/Context;Lmd/o$b;Lmd/p;)V

    invoke-static {}, Lde/i;->M()Lde/i;

    move-result-object p1

    new-instance p2, Lmd/d$b;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lmd/d$b;-><init>(Lmd/d;Lmd/d$a;)V

    invoke-virtual {p1, p2}, Lde/i;->B(Lde/g;)V

    return-void
.end method

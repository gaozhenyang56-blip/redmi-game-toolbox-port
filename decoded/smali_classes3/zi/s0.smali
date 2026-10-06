.class public Lzi/s0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:J

.field private b:J

.field private c:J

.field private d:J

.field private final e:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lzi/s0;->e:J

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    invoke-static {}, Lcom/xiaomi/push/service/b0;->p()Z

    move-result v0

    return v0
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lzi/s0;->a:J

    return-wide v0
.end method

.method public c()V
    .locals 4

    iget-wide v0, p0, Lzi/s0;->c:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lzi/s0;->c:J

    return-void
.end method

.method public d(J)V
    .locals 0

    iput-wide p1, p0, Lzi/s0;->a:J

    return-void
.end method

.method public e()J
    .locals 2

    iget-wide v0, p0, Lzi/s0;->b:J

    return-wide v0
.end method

.method public f(J)V
    .locals 2

    iget-wide v0, p0, Lzi/s0;->b:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lzi/s0;->b:J

    return-void
.end method

.method public g()J
    .locals 2

    iget-wide v0, p0, Lzi/s0;->c:J

    return-wide v0
.end method

.method public h(J)V
    .locals 2

    iget-wide v0, p0, Lzi/s0;->d:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lzi/s0;->d:J

    return-void
.end method

.method public i()J
    .locals 2

    iget-wide v0, p0, Lzi/s0;->d:J

    return-wide v0
.end method

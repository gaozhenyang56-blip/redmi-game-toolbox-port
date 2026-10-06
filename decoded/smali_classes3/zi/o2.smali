.class public Lzi/o2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:J

.field private f:I

.field private g:Ljava/lang/String;

.field private h:I

.field private i:J

.field private j:J

.field private k:J

.field private l:I

.field private m:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lzi/o2;->a:I

    return v0
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lzi/o2;->e:J

    return-wide v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lzi/o2;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lzi/o2;->a:I

    return-void
.end method

.method public e(J)V
    .locals 0

    iput-wide p1, p0, Lzi/o2;->e:J

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lzi/o2;->b:Ljava/lang/String;

    return-void
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lzi/o2;->c:I

    return v0
.end method

.method public h()J
    .locals 2

    iget-wide v0, p0, Lzi/o2;->i:J

    return-wide v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lzi/o2;->g:Ljava/lang/String;

    return-object v0
.end method

.method public j(I)V
    .locals 0

    iput p1, p0, Lzi/o2;->c:I

    return-void
.end method

.method public k(J)V
    .locals 0

    iput-wide p1, p0, Lzi/o2;->i:J

    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lzi/o2;->g:Ljava/lang/String;

    return-void
.end method

.method public m()I
    .locals 1

    iget v0, p0, Lzi/o2;->d:I

    return v0
.end method

.method public n()J
    .locals 2

    iget-wide v0, p0, Lzi/o2;->j:J

    return-wide v0
.end method

.method public o(I)V
    .locals 0

    iput p1, p0, Lzi/o2;->d:I

    return-void
.end method

.method public p(J)V
    .locals 0

    iput-wide p1, p0, Lzi/o2;->j:J

    return-void
.end method

.method public q()I
    .locals 1

    iget v0, p0, Lzi/o2;->f:I

    return v0
.end method

.method public r()J
    .locals 2

    iget-wide v0, p0, Lzi/o2;->k:J

    return-wide v0
.end method

.method public s(I)V
    .locals 0

    iput p1, p0, Lzi/o2;->f:I

    return-void
.end method

.method public t(J)V
    .locals 0

    iput-wide p1, p0, Lzi/o2;->k:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DisconnectStatsModel{count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lzi/o2;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", host=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lzi/o2;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", netState="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lzi/o2;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", reason="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lzi/o2;->d:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pingInterval="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lzi/o2;->e:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", netType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lzi/o2;->f:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", wifiDigest=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lzi/o2;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", connectedNetType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lzi/o2;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lzi/o2;->i:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", disconnectionTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lzi/o2;->j:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", reconnectionTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lzi/o2;->k:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", xmsfVc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lzi/o2;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", androidVc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lzi/o2;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()I
    .locals 1

    iget v0, p0, Lzi/o2;->h:I

    return v0
.end method

.method public v(I)V
    .locals 0

    iput p1, p0, Lzi/o2;->h:I

    return-void
.end method

.method public w()I
    .locals 1

    iget v0, p0, Lzi/o2;->l:I

    return v0
.end method

.method public x(I)V
    .locals 0

    iput p1, p0, Lzi/o2;->l:I

    return-void
.end method

.method public y()I
    .locals 1

    iget v0, p0, Lzi/o2;->m:I

    return v0
.end method

.method public z(I)V
    .locals 0

    iput p1, p0, Lzi/o2;->m:I

    return-void
.end method

.class public Leb/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:J

.field private b:J

.field private c:J

.field private d:J

.field private e:J

.field private f:J

.field private g:J

.field private h:J

.field private i:J

.field private j:J

.field private k:J

.field private l:J

.field private m:J

.field private n:J

.field private o:J

.field private p:J

.field private q:J

.field private r:J

.field private s:Ljava/lang/String;


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Leb/a;->a:J

    return-void
.end method

.method private j(IJJ)J
    .locals 2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    return-wide p4

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const-wide/16 v0, 0x0

    sub-long/2addr p2, p4

    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    return-wide p1

    :cond_1
    return-wide p2
.end method


# virtual methods
.method public A(JJ)Leb/a;
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Leb/a;->i:J

    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Leb/a;->j:J

    return-object p0
.end method

.method public B(Leb/a;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-wide v0, p1, Leb/a;->a:J

    iput-wide v0, p0, Leb/a;->a:J

    iget-wide v0, p1, Leb/a;->c:J

    iget-wide v2, p1, Leb/a;->d:J

    invoke-virtual {p0, v0, v1, v2, v3}, Leb/a;->q(JJ)Leb/a;

    move-result-object v0

    iget-wide v1, p1, Leb/a;->b:J

    invoke-virtual {v0, v1, v2}, Leb/a;->w(J)Leb/a;

    move-result-object v0

    iget-wide v1, p1, Leb/a;->e:J

    iget-wide v3, p1, Leb/a;->f:J

    invoke-virtual {v0, v1, v2, v3, v4}, Leb/a;->u(JJ)Leb/a;

    move-result-object v0

    iget-wide v1, p1, Leb/a;->i:J

    iget-wide v3, p1, Leb/a;->j:J

    invoke-virtual {v0, v1, v2, v3, v4}, Leb/a;->A(JJ)Leb/a;

    move-result-object v0

    iget-wide v1, p1, Leb/a;->g:J

    iget-wide v3, p1, Leb/a;->h:J

    invoke-virtual {v0, v1, v2, v3, v4}, Leb/a;->z(JJ)Leb/a;

    move-result-object v0

    iget-wide v1, p1, Leb/a;->m:J

    iget-wide v3, p1, Leb/a;->n:J

    invoke-virtual {v0, v1, v2, v3, v4}, Leb/a;->s(JJ)Leb/a;

    move-result-object v0

    iget-wide v1, p1, Leb/a;->o:J

    invoke-virtual {v0, v1, v2}, Leb/a;->x(J)Leb/a;

    move-result-object v0

    iget-wide v1, p1, Leb/a;->k:J

    iget-wide v3, p1, Leb/a;->l:J

    invoke-virtual {v0, v1, v2, v3, v4}, Leb/a;->p(JJ)Leb/a;

    return-void
.end method

.method public a()J
    .locals 2

    iget-wide v0, p0, Leb/a;->k:J

    return-wide v0
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Leb/a;->c:J

    return-wide v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Leb/a;->s:Ljava/lang/String;

    return-object v0
.end method

.method public d()J
    .locals 2

    iget-wide v0, p0, Leb/a;->m:J

    return-wide v0
.end method

.method public e()J
    .locals 2

    iget-wide v0, p0, Leb/a;->p:J

    return-wide v0
.end method

.method public f()J
    .locals 2

    iget-wide v0, p0, Leb/a;->e:J

    return-wide v0
.end method

.method public g()J
    .locals 2

    iget-wide v0, p0, Leb/a;->q:J

    return-wide v0
.end method

.method public h()J
    .locals 2

    iget-wide v0, p0, Leb/a;->b:J

    return-wide v0
.end method

.method public i(Lcom/miui/optimizecenter/widget/storage/a;I)J
    .locals 6

    sget-object v0, Leb/a$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const-wide/16 p1, 0x0

    goto :goto_1

    :pswitch_0
    iget-wide p1, p0, Leb/a;->a:J

    goto :goto_1

    :pswitch_1
    iget-wide v2, p0, Leb/a;->c:J

    iget-wide v4, p0, Leb/a;->d:J

    goto :goto_0

    :pswitch_2
    iget-wide p1, p0, Leb/a;->o:J

    goto :goto_1

    :pswitch_3
    iget-wide v2, p0, Leb/a;->i:J

    iget-wide v4, p0, Leb/a;->j:J

    goto :goto_0

    :pswitch_4
    iget-wide v2, p0, Leb/a;->g:J

    iget-wide v4, p0, Leb/a;->h:J

    goto :goto_0

    :pswitch_5
    iget-wide v2, p0, Leb/a;->e:J

    iget-wide v4, p0, Leb/a;->f:J

    goto :goto_0

    :pswitch_6
    iget-wide v2, p0, Leb/a;->m:J

    iget-wide v4, p0, Leb/a;->n:J

    goto :goto_0

    :pswitch_7
    iget-wide v2, p0, Leb/a;->k:J

    iget-wide v4, p0, Leb/a;->l:J

    :goto_0
    move-object v0, p0

    move v1, p2

    invoke-direct/range {v0 .. v5}, Leb/a;->j(IJJ)J

    move-result-wide p1

    goto :goto_1

    :pswitch_8
    iget-wide p1, p0, Leb/a;->b:J

    :goto_1
    return-wide p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public k()J
    .locals 2

    iget-wide v0, p0, Leb/a;->o:J

    return-wide v0
.end method

.method public l()J
    .locals 2

    iget-wide v0, p0, Leb/a;->r:J

    return-wide v0
.end method

.method public m()J
    .locals 2

    iget-wide v0, p0, Leb/a;->a:J

    return-wide v0
.end method

.method public n()J
    .locals 2

    iget-wide v0, p0, Leb/a;->g:J

    return-wide v0
.end method

.method public o()J
    .locals 2

    iget-wide v0, p0, Leb/a;->i:J

    return-wide v0
.end method

.method public p(JJ)Leb/a;
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Leb/a;->k:J

    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Leb/a;->l:J

    return-object p0
.end method

.method public q(JJ)Leb/a;
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Leb/a;->c:J

    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Leb/a;->d:J

    return-object p0
.end method

.method public r(Ljava/lang/String;)Leb/a;
    .locals 0

    iput-object p1, p0, Leb/a;->s:Ljava/lang/String;

    return-object p0
.end method

.method public s(JJ)Leb/a;
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Leb/a;->m:J

    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Leb/a;->n:J

    return-object p0
.end method

.method public t(J)Leb/a;
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Leb/a;->p:J

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StorageInfo{total="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Leb/a;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", other="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Leb/a;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", appData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Leb/a;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", image="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Leb/a;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", video="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Leb/a;->g:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", voice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Leb/a;->i:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", apk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Leb/a;->k:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", file="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Leb/a;->m:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", system="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Leb/a;->o:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(JJ)Leb/a;
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Leb/a;->e:J

    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Leb/a;->f:J

    return-object p0
.end method

.method public v(J)Leb/a;
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Leb/a;->q:J

    return-object p0
.end method

.method public w(J)Leb/a;
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Leb/a;->b:J

    return-object p0
.end method

.method public x(J)Leb/a;
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Leb/a;->o:J

    return-object p0
.end method

.method public y(J)Leb/a;
    .locals 0

    iput-wide p1, p0, Leb/a;->r:J

    return-object p0
.end method

.method public z(JJ)Leb/a;
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Leb/a;->g:J

    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Leb/a;->h:J

    return-object p0
.end method

.class public Lzi/y7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzi/c9;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lzi/c9<",
        "Lzi/y7;",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final e:Lzi/t9;

.field private static final f:Lzi/k9;

.field private static final g:Lzi/k9;

.field private static final h:Lzi/k9;


# instance fields
.field public a:J

.field public b:Lzi/s7;

.field public c:Ljava/lang/String;

.field private d:Ljava/util/BitSet;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lzi/t9;

    const-string v1, "DataCollectionItem"

    invoke-direct {v0, v1}, Lzi/t9;-><init>(Ljava/lang/String;)V

    sput-object v0, Lzi/y7;->e:Lzi/t9;

    new-instance v0, Lzi/k9;

    const-string v1, ""

    const/16 v2, 0xa

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lzi/k9;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lzi/y7;->f:Lzi/k9;

    new-instance v0, Lzi/k9;

    const/16 v2, 0x8

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lzi/k9;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lzi/y7;->g:Lzi/k9;

    new-instance v0, Lzi/k9;

    const/16 v2, 0xb

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lzi/k9;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lzi/y7;->h:Lzi/k9;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lzi/y7;->d:Ljava/util/BitSet;

    return-void
.end method


# virtual methods
.method public a(Lzi/y7;)I
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0}, Lzi/y7;->h()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lzi/y7;->h()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Lzi/y7;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lzi/y7;->a:J

    iget-wide v2, p1, Lzi/y7;->a:J

    invoke-static {v0, v1, v2, v3}, Lzi/d9;->c(JJ)I

    move-result v0

    if-eqz v0, :cond_2

    return v0

    :cond_2
    invoke-virtual {p0}, Lzi/y7;->j()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lzi/y7;->j()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_3

    return v0

    :cond_3
    invoke-virtual {p0}, Lzi/y7;->j()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lzi/y7;->b:Lzi/s7;

    iget-object v1, p1, Lzi/y7;->b:Lzi/s7;

    invoke-static {v0, v1}, Lzi/d9;->d(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-eqz v0, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0}, Lzi/y7;->k()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lzi/y7;->k()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_5

    return v0

    :cond_5
    invoke-virtual {p0}, Lzi/y7;->k()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lzi/y7;->c:Ljava/lang/String;

    iget-object p1, p1, Lzi/y7;->c:Ljava/lang/String;

    invoke-static {v0, p1}, Lzi/d9;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_6

    return p1

    :cond_6
    const/4 p1, 0x0

    return p1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lzi/y7;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(J)Lzi/y7;
    .locals 0

    iput-wide p1, p0, Lzi/y7;->a:J

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lzi/y7;->g(Z)V

    return-object p0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lzi/y7;

    invoke-virtual {p0, p1}, Lzi/y7;->a(Lzi/y7;)I

    move-result p1

    return p1
.end method

.method public d(Ljava/lang/String;)Lzi/y7;
    .locals 0

    iput-object p1, p0, Lzi/y7;->c:Ljava/lang/String;

    return-object p0
.end method

.method public e(Lzi/s7;)Lzi/y7;
    .locals 0

    iput-object p1, p0, Lzi/y7;->b:Lzi/s7;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lzi/y7;

    if-eqz v1, :cond_1

    check-cast p1, Lzi/y7;

    invoke-virtual {p0, p1}, Lzi/y7;->i(Lzi/y7;)Z

    move-result p1

    return p1

    :cond_1
    return v0
.end method

.method public f()V
    .locals 3

    iget-object v0, p0, Lzi/y7;->b:Lzi/s7;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lzi/y7;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lzi/o9;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'content\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lzi/y7;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lzi/o9;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lzi/o9;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'collectionType\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lzi/y7;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lzi/o9;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public g(Z)V
    .locals 2

    iget-object v0, p0, Lzi/y7;->d:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-void
.end method

.method public h()Z
    .locals 2

    iget-object v0, p0, Lzi/y7;->d:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public i(Lzi/y7;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-wide v1, p0, Lzi/y7;->a:J

    iget-wide v3, p1, Lzi/y7;->a:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Lzi/y7;->j()Z

    move-result v1

    invoke-virtual {p1}, Lzi/y7;->j()Z

    move-result v2

    if-nez v1, :cond_2

    if-eqz v2, :cond_4

    :cond_2
    if-eqz v1, :cond_8

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lzi/y7;->b:Lzi/s7;

    iget-object v2, p1, Lzi/y7;->b:Lzi/s7;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0}, Lzi/y7;->k()Z

    move-result v1

    invoke-virtual {p1}, Lzi/y7;->k()Z

    move-result v2

    if-nez v1, :cond_5

    if-eqz v2, :cond_7

    :cond_5
    if-eqz v1, :cond_8

    if-nez v2, :cond_6

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lzi/y7;->c:Ljava/lang/String;

    iget-object p1, p1, Lzi/y7;->c:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v0

    :cond_7
    const/4 p1, 0x1

    return p1

    :cond_8
    :goto_0
    return v0
.end method

.method public j()Z
    .locals 1

    iget-object v0, p0, Lzi/y7;->b:Lzi/s7;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public k()Z
    .locals 1

    iget-object v0, p0, Lzi/y7;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public p(Lzi/n9;)V
    .locals 2

    invoke-virtual {p0}, Lzi/y7;->f()V

    sget-object v0, Lzi/y7;->e:Lzi/t9;

    invoke-virtual {p1, v0}, Lzi/n9;->v(Lzi/t9;)V

    sget-object v0, Lzi/y7;->f:Lzi/k9;

    invoke-virtual {p1, v0}, Lzi/n9;->s(Lzi/k9;)V

    iget-wide v0, p0, Lzi/y7;->a:J

    invoke-virtual {p1, v0, v1}, Lzi/n9;->p(J)V

    invoke-virtual {p1}, Lzi/n9;->z()V

    iget-object v0, p0, Lzi/y7;->b:Lzi/s7;

    if-eqz v0, :cond_0

    sget-object v0, Lzi/y7;->g:Lzi/k9;

    invoke-virtual {p1, v0}, Lzi/n9;->s(Lzi/k9;)V

    iget-object v0, p0, Lzi/y7;->b:Lzi/s7;

    invoke-virtual {v0}, Lzi/s7;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Lzi/n9;->o(I)V

    invoke-virtual {p1}, Lzi/n9;->z()V

    :cond_0
    iget-object v0, p0, Lzi/y7;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lzi/y7;->h:Lzi/k9;

    invoke-virtual {p1, v0}, Lzi/n9;->s(Lzi/k9;)V

    iget-object v0, p0, Lzi/y7;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lzi/n9;->q(Ljava/lang/String;)V

    invoke-virtual {p1}, Lzi/n9;->z()V

    :cond_1
    invoke-virtual {p1}, Lzi/n9;->A()V

    invoke-virtual {p1}, Lzi/n9;->m()V

    return-void
.end method

.method public t(Lzi/n9;)V
    .locals 3

    invoke-virtual {p1}, Lzi/n9;->k()Lzi/t9;

    :goto_0
    invoke-virtual {p1}, Lzi/n9;->g()Lzi/k9;

    move-result-object v0

    iget-byte v1, v0, Lzi/k9;->b:B

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lzi/n9;->D()V

    invoke-virtual {p0}, Lzi/y7;->h()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lzi/y7;->f()V

    return-void

    :cond_0
    new-instance p1, Lzi/o9;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Required field \'collectedAt\' was not found in serialized data! Struct: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lzi/y7;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lzi/o9;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-short v0, v0, Lzi/k9;->c:S

    const/4 v2, 0x1

    if-eq v0, v2, :cond_5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    :cond_2
    invoke-static {p1, v1}, Lzi/r9;->a(Lzi/n9;B)V

    goto :goto_1

    :cond_3
    const/16 v0, 0xb

    if-ne v1, v0, :cond_2

    invoke-virtual {p1}, Lzi/n9;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lzi/y7;->c:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const/16 v0, 0x8

    if-ne v1, v0, :cond_2

    invoke-virtual {p1}, Lzi/n9;->c()I

    move-result v0

    invoke-static {v0}, Lzi/s7;->b(I)Lzi/s7;

    move-result-object v0

    iput-object v0, p0, Lzi/y7;->b:Lzi/s7;

    goto :goto_1

    :cond_5
    const/16 v0, 0xa

    if-ne v1, v0, :cond_2

    invoke-virtual {p1}, Lzi/n9;->d()J

    move-result-wide v0

    iput-wide v0, p0, Lzi/y7;->a:J

    invoke-virtual {p0, v2}, Lzi/y7;->g(Z)V

    :goto_1
    invoke-virtual {p1}, Lzi/n9;->E()V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DataCollectionItem("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "collectedAt:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lzi/y7;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "collectionType:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lzi/y7;->b:Lzi/s7;

    const-string v3, "null"

    if-nez v2, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "content:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lzi/y7;->c:Ljava/lang/String;

    if-nez v1, :cond_1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

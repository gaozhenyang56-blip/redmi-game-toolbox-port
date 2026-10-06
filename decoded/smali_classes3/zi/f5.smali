.class public Lzi/f5;
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
        "Lzi/f5;",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final l:Lzi/t9;

.field private static final m:Lzi/k9;

.field private static final n:Lzi/k9;

.field private static final o:Lzi/k9;

.field private static final p:Lzi/k9;

.field private static final q:Lzi/k9;

.field private static final r:Lzi/k9;

.field private static final s:Lzi/k9;

.field private static final t:Lzi/k9;

.field private static final u:Lzi/k9;

.field private static final v:Lzi/k9;


# instance fields
.field public a:B

.field public b:I

.field public c:I

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:I

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:I

.field public j:I

.field private k:Ljava/util/BitSet;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lzi/t9;

    const-string v1, "StatsEvent"

    invoke-direct {v0, v1}, Lzi/t9;-><init>(Ljava/lang/String;)V

    sput-object v0, Lzi/f5;->l:Lzi/t9;

    new-instance v0, Lzi/k9;

    const-string v1, ""

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lzi/k9;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lzi/f5;->m:Lzi/k9;

    new-instance v0, Lzi/k9;

    const/16 v3, 0x8

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lzi/k9;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lzi/f5;->n:Lzi/k9;

    new-instance v0, Lzi/k9;

    invoke-direct {v0, v1, v3, v2}, Lzi/k9;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lzi/f5;->o:Lzi/k9;

    new-instance v0, Lzi/k9;

    const/16 v2, 0xb

    const/4 v4, 0x4

    invoke-direct {v0, v1, v2, v4}, Lzi/k9;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lzi/f5;->p:Lzi/k9;

    new-instance v0, Lzi/k9;

    const/4 v4, 0x5

    invoke-direct {v0, v1, v2, v4}, Lzi/k9;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lzi/f5;->q:Lzi/k9;

    new-instance v0, Lzi/k9;

    const/4 v4, 0x6

    invoke-direct {v0, v1, v3, v4}, Lzi/k9;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lzi/f5;->r:Lzi/k9;

    new-instance v0, Lzi/k9;

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v4}, Lzi/k9;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lzi/f5;->s:Lzi/k9;

    new-instance v0, Lzi/k9;

    invoke-direct {v0, v1, v2, v3}, Lzi/k9;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lzi/f5;->t:Lzi/k9;

    new-instance v0, Lzi/k9;

    const/16 v2, 0x9

    invoke-direct {v0, v1, v3, v2}, Lzi/k9;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lzi/f5;->u:Lzi/k9;

    new-instance v0, Lzi/k9;

    const/16 v2, 0xa

    invoke-direct {v0, v1, v3, v2}, Lzi/k9;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lzi/f5;->v:Lzi/k9;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lzi/f5;->k:Ljava/util/BitSet;

    return-void
.end method


# virtual methods
.method public A()Z
    .locals 1

    iget-object v0, p0, Lzi/f5;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public B()Z
    .locals 1

    iget-object v0, p0, Lzi/f5;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public C()Z
    .locals 2

    iget-object v0, p0, Lzi/f5;->k:Ljava/util/BitSet;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public D()Z
    .locals 2

    iget-object v0, p0, Lzi/f5;->k:Ljava/util/BitSet;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public a(Lzi/f5;)I
    .locals 2

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
    invoke-virtual {p0}, Lzi/f5;->g()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lzi/f5;->g()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Lzi/f5;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-byte v0, p0, Lzi/f5;->a:B

    iget-byte v1, p1, Lzi/f5;->a:B

    invoke-static {v0, v1}, Lzi/d9;->a(BB)I

    move-result v0

    if-eqz v0, :cond_2

    return v0

    :cond_2
    invoke-virtual {p0}, Lzi/f5;->l()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lzi/f5;->l()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_3

    return v0

    :cond_3
    invoke-virtual {p0}, Lzi/f5;->l()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lzi/f5;->b:I

    iget v1, p1, Lzi/f5;->b:I

    invoke-static {v0, v1}, Lzi/d9;->b(II)I

    move-result v0

    if-eqz v0, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0}, Lzi/f5;->q()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lzi/f5;->q()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_5

    return v0

    :cond_5
    invoke-virtual {p0}, Lzi/f5;->q()Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lzi/f5;->c:I

    iget v1, p1, Lzi/f5;->c:I

    invoke-static {v0, v1}, Lzi/d9;->b(II)I

    move-result v0

    if-eqz v0, :cond_6

    return v0

    :cond_6
    invoke-virtual {p0}, Lzi/f5;->v()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lzi/f5;->v()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_7

    return v0

    :cond_7
    invoke-virtual {p0}, Lzi/f5;->v()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lzi/f5;->d:Ljava/lang/String;

    iget-object v1, p1, Lzi/f5;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lzi/d9;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_8

    return v0

    :cond_8
    invoke-virtual {p0}, Lzi/f5;->x()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lzi/f5;->x()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_9

    return v0

    :cond_9
    invoke-virtual {p0}, Lzi/f5;->x()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lzi/f5;->e:Ljava/lang/String;

    iget-object v1, p1, Lzi/f5;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lzi/d9;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_a

    return v0

    :cond_a
    invoke-virtual {p0}, Lzi/f5;->z()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lzi/f5;->z()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_b

    return v0

    :cond_b
    invoke-virtual {p0}, Lzi/f5;->z()Z

    move-result v0

    if-eqz v0, :cond_c

    iget v0, p0, Lzi/f5;->f:I

    iget v1, p1, Lzi/f5;->f:I

    invoke-static {v0, v1}, Lzi/d9;->b(II)I

    move-result v0

    if-eqz v0, :cond_c

    return v0

    :cond_c
    invoke-virtual {p0}, Lzi/f5;->A()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lzi/f5;->A()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_d

    return v0

    :cond_d
    invoke-virtual {p0}, Lzi/f5;->A()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lzi/f5;->g:Ljava/lang/String;

    iget-object v1, p1, Lzi/f5;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Lzi/d9;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_e

    return v0

    :cond_e
    invoke-virtual {p0}, Lzi/f5;->B()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lzi/f5;->B()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_f

    return v0

    :cond_f
    invoke-virtual {p0}, Lzi/f5;->B()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lzi/f5;->h:Ljava/lang/String;

    iget-object v1, p1, Lzi/f5;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Lzi/d9;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_10

    return v0

    :cond_10
    invoke-virtual {p0}, Lzi/f5;->C()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lzi/f5;->C()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_11

    return v0

    :cond_11
    invoke-virtual {p0}, Lzi/f5;->C()Z

    move-result v0

    if-eqz v0, :cond_12

    iget v0, p0, Lzi/f5;->i:I

    iget v1, p1, Lzi/f5;->i:I

    invoke-static {v0, v1}, Lzi/d9;->b(II)I

    move-result v0

    if-eqz v0, :cond_12

    return v0

    :cond_12
    invoke-virtual {p0}, Lzi/f5;->D()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lzi/f5;->D()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_13

    return v0

    :cond_13
    invoke-virtual {p0}, Lzi/f5;->D()Z

    move-result v0

    if-eqz v0, :cond_14

    iget v0, p0, Lzi/f5;->j:I

    iget p1, p1, Lzi/f5;->j:I

    invoke-static {v0, p1}, Lzi/d9;->b(II)I

    move-result p1

    if-eqz p1, :cond_14

    return p1

    :cond_14
    const/4 p1, 0x0

    return p1
.end method

.method public b(B)Lzi/f5;
    .locals 0

    iput-byte p1, p0, Lzi/f5;->a:B

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lzi/f5;->f(Z)V

    return-object p0
.end method

.method public c(I)Lzi/f5;
    .locals 0

    iput p1, p0, Lzi/f5;->b:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lzi/f5;->k(Z)V

    return-object p0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lzi/f5;

    invoke-virtual {p0, p1}, Lzi/f5;->a(Lzi/f5;)I

    move-result p1

    return p1
.end method

.method public d(Ljava/lang/String;)Lzi/f5;
    .locals 0

    iput-object p1, p0, Lzi/f5;->d:Ljava/lang/String;

    return-object p0
.end method

.method public e()V
    .locals 3

    iget-object v0, p0, Lzi/f5;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lzi/o9;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'connpt\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lzi/f5;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lzi/o9;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lzi/f5;

    if-eqz v1, :cond_1

    check-cast p1, Lzi/f5;

    invoke-virtual {p0, p1}, Lzi/f5;->h(Lzi/f5;)Z

    move-result p1

    return p1

    :cond_1
    return v0
.end method

.method public f(Z)V
    .locals 2

    iget-object v0, p0, Lzi/f5;->k:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-void
.end method

.method public g()Z
    .locals 2

    iget-object v0, p0, Lzi/f5;->k:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public h(Lzi/f5;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-byte v1, p0, Lzi/f5;->a:B

    iget-byte v2, p1, Lzi/f5;->a:B

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    iget v1, p0, Lzi/f5;->b:I

    iget v2, p1, Lzi/f5;->b:I

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    iget v1, p0, Lzi/f5;->c:I

    iget v2, p1, Lzi/f5;->c:I

    if-eq v1, v2, :cond_3

    return v0

    :cond_3
    invoke-virtual {p0}, Lzi/f5;->v()Z

    move-result v1

    invoke-virtual {p1}, Lzi/f5;->v()Z

    move-result v2

    if-nez v1, :cond_4

    if-eqz v2, :cond_6

    :cond_4
    if-eqz v1, :cond_19

    if-nez v2, :cond_5

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Lzi/f5;->d:Ljava/lang/String;

    iget-object v2, p1, Lzi/f5;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v0

    :cond_6
    invoke-virtual {p0}, Lzi/f5;->x()Z

    move-result v1

    invoke-virtual {p1}, Lzi/f5;->x()Z

    move-result v2

    if-nez v1, :cond_7

    if-eqz v2, :cond_9

    :cond_7
    if-eqz v1, :cond_19

    if-nez v2, :cond_8

    goto/16 :goto_0

    :cond_8
    iget-object v1, p0, Lzi/f5;->e:Ljava/lang/String;

    iget-object v2, p1, Lzi/f5;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v0

    :cond_9
    invoke-virtual {p0}, Lzi/f5;->z()Z

    move-result v1

    invoke-virtual {p1}, Lzi/f5;->z()Z

    move-result v2

    if-nez v1, :cond_a

    if-eqz v2, :cond_c

    :cond_a
    if-eqz v1, :cond_19

    if-nez v2, :cond_b

    goto/16 :goto_0

    :cond_b
    iget v1, p0, Lzi/f5;->f:I

    iget v2, p1, Lzi/f5;->f:I

    if-eq v1, v2, :cond_c

    return v0

    :cond_c
    invoke-virtual {p0}, Lzi/f5;->A()Z

    move-result v1

    invoke-virtual {p1}, Lzi/f5;->A()Z

    move-result v2

    if-nez v1, :cond_d

    if-eqz v2, :cond_f

    :cond_d
    if-eqz v1, :cond_19

    if-nez v2, :cond_e

    goto :goto_0

    :cond_e
    iget-object v1, p0, Lzi/f5;->g:Ljava/lang/String;

    iget-object v2, p1, Lzi/f5;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v0

    :cond_f
    invoke-virtual {p0}, Lzi/f5;->B()Z

    move-result v1

    invoke-virtual {p1}, Lzi/f5;->B()Z

    move-result v2

    if-nez v1, :cond_10

    if-eqz v2, :cond_12

    :cond_10
    if-eqz v1, :cond_19

    if-nez v2, :cond_11

    goto :goto_0

    :cond_11
    iget-object v1, p0, Lzi/f5;->h:Ljava/lang/String;

    iget-object v2, p1, Lzi/f5;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v0

    :cond_12
    invoke-virtual {p0}, Lzi/f5;->C()Z

    move-result v1

    invoke-virtual {p1}, Lzi/f5;->C()Z

    move-result v2

    if-nez v1, :cond_13

    if-eqz v2, :cond_15

    :cond_13
    if-eqz v1, :cond_19

    if-nez v2, :cond_14

    goto :goto_0

    :cond_14
    iget v1, p0, Lzi/f5;->i:I

    iget v2, p1, Lzi/f5;->i:I

    if-eq v1, v2, :cond_15

    return v0

    :cond_15
    invoke-virtual {p0}, Lzi/f5;->D()Z

    move-result v1

    invoke-virtual {p1}, Lzi/f5;->D()Z

    move-result v2

    if-nez v1, :cond_16

    if-eqz v2, :cond_18

    :cond_16
    if-eqz v1, :cond_19

    if-nez v2, :cond_17

    goto :goto_0

    :cond_17
    iget v1, p0, Lzi/f5;->j:I

    iget p1, p1, Lzi/f5;->j:I

    if-eq v1, p1, :cond_18

    return v0

    :cond_18
    const/4 p1, 0x1

    return p1

    :cond_19
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public i(I)Lzi/f5;
    .locals 0

    iput p1, p0, Lzi/f5;->c:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lzi/f5;->o(Z)V

    return-object p0
.end method

.method public j(Ljava/lang/String;)Lzi/f5;
    .locals 0

    iput-object p1, p0, Lzi/f5;->e:Ljava/lang/String;

    return-object p0
.end method

.method public k(Z)V
    .locals 2

    iget-object v0, p0, Lzi/f5;->k:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-void
.end method

.method public l()Z
    .locals 2

    iget-object v0, p0, Lzi/f5;->k:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public m(I)Lzi/f5;
    .locals 0

    iput p1, p0, Lzi/f5;->f:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lzi/f5;->u(Z)V

    return-object p0
.end method

.method public n(Ljava/lang/String;)Lzi/f5;
    .locals 0

    iput-object p1, p0, Lzi/f5;->g:Ljava/lang/String;

    return-object p0
.end method

.method public o(Z)V
    .locals 2

    iget-object v0, p0, Lzi/f5;->k:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-void
.end method

.method public p(Lzi/n9;)V
    .locals 1

    invoke-virtual {p0}, Lzi/f5;->e()V

    sget-object v0, Lzi/f5;->l:Lzi/t9;

    invoke-virtual {p1, v0}, Lzi/n9;->v(Lzi/t9;)V

    sget-object v0, Lzi/f5;->m:Lzi/k9;

    invoke-virtual {p1, v0}, Lzi/n9;->s(Lzi/k9;)V

    iget-byte v0, p0, Lzi/f5;->a:B

    invoke-virtual {p1, v0}, Lzi/n9;->n(B)V

    invoke-virtual {p1}, Lzi/n9;->z()V

    sget-object v0, Lzi/f5;->n:Lzi/k9;

    invoke-virtual {p1, v0}, Lzi/n9;->s(Lzi/k9;)V

    iget v0, p0, Lzi/f5;->b:I

    invoke-virtual {p1, v0}, Lzi/n9;->o(I)V

    invoke-virtual {p1}, Lzi/n9;->z()V

    sget-object v0, Lzi/f5;->o:Lzi/k9;

    invoke-virtual {p1, v0}, Lzi/n9;->s(Lzi/k9;)V

    iget v0, p0, Lzi/f5;->c:I

    invoke-virtual {p1, v0}, Lzi/n9;->o(I)V

    invoke-virtual {p1}, Lzi/n9;->z()V

    iget-object v0, p0, Lzi/f5;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lzi/f5;->p:Lzi/k9;

    invoke-virtual {p1, v0}, Lzi/n9;->s(Lzi/k9;)V

    iget-object v0, p0, Lzi/f5;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lzi/n9;->q(Ljava/lang/String;)V

    invoke-virtual {p1}, Lzi/n9;->z()V

    :cond_0
    iget-object v0, p0, Lzi/f5;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lzi/f5;->x()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lzi/f5;->q:Lzi/k9;

    invoke-virtual {p1, v0}, Lzi/n9;->s(Lzi/k9;)V

    iget-object v0, p0, Lzi/f5;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lzi/n9;->q(Ljava/lang/String;)V

    invoke-virtual {p1}, Lzi/n9;->z()V

    :cond_1
    invoke-virtual {p0}, Lzi/f5;->z()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lzi/f5;->r:Lzi/k9;

    invoke-virtual {p1, v0}, Lzi/n9;->s(Lzi/k9;)V

    iget v0, p0, Lzi/f5;->f:I

    invoke-virtual {p1, v0}, Lzi/n9;->o(I)V

    invoke-virtual {p1}, Lzi/n9;->z()V

    :cond_2
    iget-object v0, p0, Lzi/f5;->g:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lzi/f5;->A()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lzi/f5;->s:Lzi/k9;

    invoke-virtual {p1, v0}, Lzi/n9;->s(Lzi/k9;)V

    iget-object v0, p0, Lzi/f5;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lzi/n9;->q(Ljava/lang/String;)V

    invoke-virtual {p1}, Lzi/n9;->z()V

    :cond_3
    iget-object v0, p0, Lzi/f5;->h:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lzi/f5;->B()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lzi/f5;->t:Lzi/k9;

    invoke-virtual {p1, v0}, Lzi/n9;->s(Lzi/k9;)V

    iget-object v0, p0, Lzi/f5;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lzi/n9;->q(Ljava/lang/String;)V

    invoke-virtual {p1}, Lzi/n9;->z()V

    :cond_4
    invoke-virtual {p0}, Lzi/f5;->C()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lzi/f5;->u:Lzi/k9;

    invoke-virtual {p1, v0}, Lzi/n9;->s(Lzi/k9;)V

    iget v0, p0, Lzi/f5;->i:I

    invoke-virtual {p1, v0}, Lzi/n9;->o(I)V

    invoke-virtual {p1}, Lzi/n9;->z()V

    :cond_5
    invoke-virtual {p0}, Lzi/f5;->D()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lzi/f5;->v:Lzi/k9;

    invoke-virtual {p1, v0}, Lzi/n9;->s(Lzi/k9;)V

    iget v0, p0, Lzi/f5;->j:I

    invoke-virtual {p1, v0}, Lzi/n9;->o(I)V

    invoke-virtual {p1}, Lzi/n9;->z()V

    :cond_6
    invoke-virtual {p1}, Lzi/n9;->A()V

    invoke-virtual {p1}, Lzi/n9;->m()V

    return-void
.end method

.method public q()Z
    .locals 2

    iget-object v0, p0, Lzi/f5;->k:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public r(I)Lzi/f5;
    .locals 0

    iput p1, p0, Lzi/f5;->i:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lzi/f5;->w(Z)V

    return-object p0
.end method

.method public s(Ljava/lang/String;)Lzi/f5;
    .locals 0

    iput-object p1, p0, Lzi/f5;->h:Ljava/lang/String;

    return-object p0
.end method

.method public t(Lzi/n9;)V
    .locals 5

    invoke-virtual {p1}, Lzi/n9;->k()Lzi/t9;

    :goto_0
    invoke-virtual {p1}, Lzi/n9;->g()Lzi/k9;

    move-result-object v0

    iget-byte v1, v0, Lzi/k9;->b:B

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lzi/n9;->D()V

    invoke-virtual {p0}, Lzi/f5;->g()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lzi/f5;->l()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lzi/f5;->q()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lzi/f5;->e()V

    return-void

    :cond_0
    new-instance p1, Lzi/o9;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Required field \'value\' was not found in serialized data! Struct: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lzi/f5;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lzi/o9;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lzi/o9;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Required field \'type\' was not found in serialized data! Struct: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lzi/f5;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lzi/o9;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lzi/o9;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Required field \'chid\' was not found in serialized data! Struct: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lzi/f5;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lzi/o9;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    iget-short v0, v0, Lzi/k9;->c:S

    const/16 v2, 0xb

    const/16 v3, 0x8

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    :cond_4
    invoke-static {p1, v1}, Lzi/r9;->a(Lzi/n9;B)V

    goto/16 :goto_1

    :pswitch_0
    if-ne v1, v3, :cond_4

    invoke-virtual {p1}, Lzi/n9;->c()I

    move-result v0

    iput v0, p0, Lzi/f5;->j:I

    invoke-virtual {p0, v4}, Lzi/f5;->y(Z)V

    goto :goto_1

    :pswitch_1
    if-ne v1, v3, :cond_4

    invoke-virtual {p1}, Lzi/n9;->c()I

    move-result v0

    iput v0, p0, Lzi/f5;->i:I

    invoke-virtual {p0, v4}, Lzi/f5;->w(Z)V

    goto :goto_1

    :pswitch_2
    if-ne v1, v2, :cond_4

    invoke-virtual {p1}, Lzi/n9;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lzi/f5;->h:Ljava/lang/String;

    goto :goto_1

    :pswitch_3
    if-ne v1, v2, :cond_4

    invoke-virtual {p1}, Lzi/n9;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lzi/f5;->g:Ljava/lang/String;

    goto :goto_1

    :pswitch_4
    if-ne v1, v3, :cond_4

    invoke-virtual {p1}, Lzi/n9;->c()I

    move-result v0

    iput v0, p0, Lzi/f5;->f:I

    invoke-virtual {p0, v4}, Lzi/f5;->u(Z)V

    goto :goto_1

    :pswitch_5
    if-ne v1, v2, :cond_4

    invoke-virtual {p1}, Lzi/n9;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lzi/f5;->e:Ljava/lang/String;

    goto :goto_1

    :pswitch_6
    if-ne v1, v2, :cond_4

    invoke-virtual {p1}, Lzi/n9;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lzi/f5;->d:Ljava/lang/String;

    goto :goto_1

    :pswitch_7
    if-ne v1, v3, :cond_4

    invoke-virtual {p1}, Lzi/n9;->c()I

    move-result v0

    iput v0, p0, Lzi/f5;->c:I

    invoke-virtual {p0, v4}, Lzi/f5;->o(Z)V

    goto :goto_1

    :pswitch_8
    if-ne v1, v3, :cond_4

    invoke-virtual {p1}, Lzi/n9;->c()I

    move-result v0

    iput v0, p0, Lzi/f5;->b:I

    invoke-virtual {p0, v4}, Lzi/f5;->k(Z)V

    goto :goto_1

    :pswitch_9
    const/4 v0, 0x3

    if-ne v1, v0, :cond_4

    invoke-virtual {p1}, Lzi/n9;->a()B

    move-result v0

    iput-byte v0, p0, Lzi/f5;->a:B

    invoke-virtual {p0, v4}, Lzi/f5;->f(Z)V

    :goto_1
    invoke-virtual {p1}, Lzi/n9;->E()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
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

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "StatsEvent("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "chid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lzi/f5;->a:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "type:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lzi/f5;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "value:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lzi/f5;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "connpt:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lzi/f5;->d:Ljava/lang/String;

    const-string v3, "null"

    if-nez v2, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p0}, Lzi/f5;->x()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "host:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lzi/f5;->e:Ljava/lang/String;

    if-nez v2, :cond_1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lzi/f5;->z()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "subvalue:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lzi/f5;->f:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {p0}, Lzi/f5;->A()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "annotation:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lzi/f5;->g:Ljava/lang/String;

    if-nez v2, :cond_4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    :goto_2
    invoke-virtual {p0}, Lzi/f5;->B()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "user:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lzi/f5;->h:Ljava/lang/String;

    if-nez v2, :cond_6

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    :goto_3
    invoke-virtual {p0}, Lzi/f5;->C()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "time:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lzi/f5;->i:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_8
    invoke-virtual {p0}, Lzi/f5;->D()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "clientIp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lzi/f5;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_9
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(Z)V
    .locals 2

    iget-object v0, p0, Lzi/f5;->k:Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-void
.end method

.method public v()Z
    .locals 1

    iget-object v0, p0, Lzi/f5;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public w(Z)V
    .locals 2

    iget-object v0, p0, Lzi/f5;->k:Ljava/util/BitSet;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-void
.end method

.method public x()Z
    .locals 1

    iget-object v0, p0, Lzi/f5;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public y(Z)V
    .locals 2

    iget-object v0, p0, Lzi/f5;->k:Ljava/util/BitSet;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-void
.end method

.method public z()Z
    .locals 2

    iget-object v0, p0, Lzi/f5;->k:Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

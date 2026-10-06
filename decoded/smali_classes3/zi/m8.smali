.class public Lzi/m8;
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
        "Lzi/m8;",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final j:Lzi/t9;

.field private static final k:Lzi/k9;

.field private static final l:Lzi/k9;

.field private static final m:Lzi/k9;

.field private static final n:Lzi/k9;

.field private static final o:Lzi/k9;

.field private static final p:Lzi/k9;

.field private static final q:Lzi/k9;

.field private static final r:Lzi/k9;


# instance fields
.field public a:Lzi/q7;

.field public b:Z

.field public c:Z

.field public d:Ljava/nio/ByteBuffer;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Lzi/f8;

.field public h:Lzi/d8;

.field private i:Ljava/util/BitSet;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lzi/t9;

    const-string v1, "XmPushActionContainer"

    invoke-direct {v0, v1}, Lzi/t9;-><init>(Ljava/lang/String;)V

    sput-object v0, Lzi/m8;->j:Lzi/t9;

    new-instance v0, Lzi/k9;

    const-string v1, ""

    const/16 v2, 0x8

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lzi/k9;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lzi/m8;->k:Lzi/k9;

    new-instance v0, Lzi/k9;

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v3}, Lzi/k9;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lzi/m8;->l:Lzi/k9;

    new-instance v0, Lzi/k9;

    const/4 v4, 0x3

    invoke-direct {v0, v1, v3, v4}, Lzi/k9;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lzi/m8;->m:Lzi/k9;

    new-instance v0, Lzi/k9;

    const/16 v3, 0xb

    const/4 v4, 0x4

    invoke-direct {v0, v1, v3, v4}, Lzi/k9;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lzi/m8;->n:Lzi/k9;

    new-instance v0, Lzi/k9;

    const/4 v4, 0x5

    invoke-direct {v0, v1, v3, v4}, Lzi/k9;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lzi/m8;->o:Lzi/k9;

    new-instance v0, Lzi/k9;

    const/4 v4, 0x6

    invoke-direct {v0, v1, v3, v4}, Lzi/k9;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lzi/m8;->p:Lzi/k9;

    new-instance v0, Lzi/k9;

    const/16 v3, 0xc

    const/4 v4, 0x7

    invoke-direct {v0, v1, v3, v4}, Lzi/k9;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lzi/m8;->q:Lzi/k9;

    new-instance v0, Lzi/k9;

    invoke-direct {v0, v1, v3, v2}, Lzi/k9;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lzi/m8;->r:Lzi/k9;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lzi/m8;->i:Ljava/util/BitSet;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lzi/m8;->b:Z

    iput-boolean v0, p0, Lzi/m8;->c:Z

    return-void
.end method


# virtual methods
.method public A()Z
    .locals 1

    iget-object v0, p0, Lzi/m8;->f:Ljava/lang/String;

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

    iget-object v0, p0, Lzi/m8;->g:Lzi/f8;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public C()Z
    .locals 1

    iget-object v0, p0, Lzi/m8;->h:Lzi/d8;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public a(Lzi/m8;)I
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
    invoke-virtual {p0}, Lzi/m8;->m()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lzi/m8;->m()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Lzi/m8;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lzi/m8;->a:Lzi/q7;

    iget-object v1, p1, Lzi/m8;->a:Lzi/q7;

    invoke-static {v0, v1}, Lzi/d9;->d(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-eqz v0, :cond_2

    return v0

    :cond_2
    invoke-virtual {p0}, Lzi/m8;->w()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lzi/m8;->w()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_3

    return v0

    :cond_3
    invoke-virtual {p0}, Lzi/m8;->w()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lzi/m8;->b:Z

    iget-boolean v1, p1, Lzi/m8;->b:Z

    invoke-static {v0, v1}, Lzi/d9;->k(ZZ)I

    move-result v0

    if-eqz v0, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0}, Lzi/m8;->x()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lzi/m8;->x()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_5

    return v0

    :cond_5
    invoke-virtual {p0}, Lzi/m8;->x()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lzi/m8;->c:Z

    iget-boolean v1, p1, Lzi/m8;->c:Z

    invoke-static {v0, v1}, Lzi/d9;->k(ZZ)I

    move-result v0

    if-eqz v0, :cond_6

    return v0

    :cond_6
    invoke-virtual {p0}, Lzi/m8;->y()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lzi/m8;->y()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_7

    return v0

    :cond_7
    invoke-virtual {p0}, Lzi/m8;->y()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lzi/m8;->d:Ljava/nio/ByteBuffer;

    iget-object v1, p1, Lzi/m8;->d:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1}, Lzi/d9;->d(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-eqz v0, :cond_8

    return v0

    :cond_8
    invoke-virtual {p0}, Lzi/m8;->z()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lzi/m8;->z()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_9

    return v0

    :cond_9
    invoke-virtual {p0}, Lzi/m8;->z()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lzi/m8;->e:Ljava/lang/String;

    iget-object v1, p1, Lzi/m8;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lzi/d9;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_a

    return v0

    :cond_a
    invoke-virtual {p0}, Lzi/m8;->A()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lzi/m8;->A()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_b

    return v0

    :cond_b
    invoke-virtual {p0}, Lzi/m8;->A()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lzi/m8;->f:Ljava/lang/String;

    iget-object v1, p1, Lzi/m8;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lzi/d9;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_c

    return v0

    :cond_c
    invoke-virtual {p0}, Lzi/m8;->B()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lzi/m8;->B()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_d

    return v0

    :cond_d
    invoke-virtual {p0}, Lzi/m8;->B()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lzi/m8;->g:Lzi/f8;

    iget-object v1, p1, Lzi/m8;->g:Lzi/f8;

    invoke-static {v0, v1}, Lzi/d9;->d(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-eqz v0, :cond_e

    return v0

    :cond_e
    invoke-virtual {p0}, Lzi/m8;->C()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lzi/m8;->C()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_f

    return v0

    :cond_f
    invoke-virtual {p0}, Lzi/m8;->C()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lzi/m8;->h:Lzi/d8;

    iget-object p1, p1, Lzi/m8;->h:Lzi/d8;

    invoke-static {v0, p1}, Lzi/d9;->d(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p1

    if-eqz p1, :cond_10

    return p1

    :cond_10
    const/4 p1, 0x0

    return p1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lzi/m8;->e:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lzi/q7;
    .locals 1

    iget-object v0, p0, Lzi/m8;->a:Lzi/q7;

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lzi/m8;

    invoke-virtual {p0, p1}, Lzi/m8;->a(Lzi/m8;)I

    move-result p1

    return p1
.end method

.method public d()Lzi/d8;
    .locals 1

    iget-object v0, p0, Lzi/m8;->h:Lzi/d8;

    return-object v0
.end method

.method public e(Ljava/lang/String;)Lzi/m8;
    .locals 0

    iput-object p1, p0, Lzi/m8;->e:Ljava/lang/String;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lzi/m8;

    if-eqz v1, :cond_1

    check-cast p1, Lzi/m8;

    invoke-virtual {p0, p1}, Lzi/m8;->n(Lzi/m8;)Z

    move-result p1

    return p1

    :cond_1
    return v0
.end method

.method public f(Ljava/nio/ByteBuffer;)Lzi/m8;
    .locals 0

    iput-object p1, p0, Lzi/m8;->d:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public g(Lzi/q7;)Lzi/m8;
    .locals 0

    iput-object p1, p0, Lzi/m8;->a:Lzi/q7;

    return-object p0
.end method

.method public h(Lzi/d8;)Lzi/m8;
    .locals 0

    iput-object p1, p0, Lzi/m8;->h:Lzi/d8;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public i(Lzi/f8;)Lzi/m8;
    .locals 0

    iput-object p1, p0, Lzi/m8;->g:Lzi/f8;

    return-object p0
.end method

.method public j(Z)Lzi/m8;
    .locals 0

    iput-boolean p1, p0, Lzi/m8;->b:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lzi/m8;->l(Z)V

    return-object p0
.end method

.method public k()V
    .locals 3

    iget-object v0, p0, Lzi/m8;->a:Lzi/q7;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lzi/m8;->d:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lzi/m8;->g:Lzi/f8;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lzi/o9;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'target\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lzi/m8;->toString()Ljava/lang/String;

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

    const-string v2, "Required field \'pushAction\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lzi/m8;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lzi/o9;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lzi/o9;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'action\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lzi/m8;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lzi/o9;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public l(Z)V
    .locals 2

    iget-object v0, p0, Lzi/m8;->i:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-void
.end method

.method public m()Z
    .locals 1

    iget-object v0, p0, Lzi/m8;->a:Lzi/q7;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public n(Lzi/m8;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lzi/m8;->m()Z

    move-result v1

    invoke-virtual {p1}, Lzi/m8;->m()Z

    move-result v2

    if-nez v1, :cond_1

    if-eqz v2, :cond_3

    :cond_1
    if-eqz v1, :cond_15

    if-nez v2, :cond_2

    goto/16 :goto_0

    :cond_2
    iget-object v1, p0, Lzi/m8;->a:Lzi/q7;

    iget-object v2, p1, Lzi/m8;->a:Lzi/q7;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    :cond_3
    iget-boolean v1, p0, Lzi/m8;->b:Z

    iget-boolean v2, p1, Lzi/m8;->b:Z

    if-eq v1, v2, :cond_4

    return v0

    :cond_4
    iget-boolean v1, p0, Lzi/m8;->c:Z

    iget-boolean v2, p1, Lzi/m8;->c:Z

    if-eq v1, v2, :cond_5

    return v0

    :cond_5
    invoke-virtual {p0}, Lzi/m8;->y()Z

    move-result v1

    invoke-virtual {p1}, Lzi/m8;->y()Z

    move-result v2

    if-nez v1, :cond_6

    if-eqz v2, :cond_8

    :cond_6
    if-eqz v1, :cond_15

    if-nez v2, :cond_7

    goto/16 :goto_0

    :cond_7
    iget-object v1, p0, Lzi/m8;->d:Ljava/nio/ByteBuffer;

    iget-object v2, p1, Lzi/m8;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v0

    :cond_8
    invoke-virtual {p0}, Lzi/m8;->z()Z

    move-result v1

    invoke-virtual {p1}, Lzi/m8;->z()Z

    move-result v2

    if-nez v1, :cond_9

    if-eqz v2, :cond_b

    :cond_9
    if-eqz v1, :cond_15

    if-nez v2, :cond_a

    goto :goto_0

    :cond_a
    iget-object v1, p0, Lzi/m8;->e:Ljava/lang/String;

    iget-object v2, p1, Lzi/m8;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v0

    :cond_b
    invoke-virtual {p0}, Lzi/m8;->A()Z

    move-result v1

    invoke-virtual {p1}, Lzi/m8;->A()Z

    move-result v2

    if-nez v1, :cond_c

    if-eqz v2, :cond_e

    :cond_c
    if-eqz v1, :cond_15

    if-nez v2, :cond_d

    goto :goto_0

    :cond_d
    iget-object v1, p0, Lzi/m8;->f:Ljava/lang/String;

    iget-object v2, p1, Lzi/m8;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v0

    :cond_e
    invoke-virtual {p0}, Lzi/m8;->B()Z

    move-result v1

    invoke-virtual {p1}, Lzi/m8;->B()Z

    move-result v2

    if-nez v1, :cond_f

    if-eqz v2, :cond_11

    :cond_f
    if-eqz v1, :cond_15

    if-nez v2, :cond_10

    goto :goto_0

    :cond_10
    iget-object v1, p0, Lzi/m8;->g:Lzi/f8;

    iget-object v2, p1, Lzi/m8;->g:Lzi/f8;

    invoke-virtual {v1, v2}, Lzi/f8;->e(Lzi/f8;)Z

    move-result v1

    if-nez v1, :cond_11

    return v0

    :cond_11
    invoke-virtual {p0}, Lzi/m8;->C()Z

    move-result v1

    invoke-virtual {p1}, Lzi/m8;->C()Z

    move-result v2

    if-nez v1, :cond_12

    if-eqz v2, :cond_14

    :cond_12
    if-eqz v1, :cond_15

    if-nez v2, :cond_13

    goto :goto_0

    :cond_13
    iget-object v1, p0, Lzi/m8;->h:Lzi/d8;

    iget-object p1, p1, Lzi/m8;->h:Lzi/d8;

    invoke-virtual {v1, p1}, Lzi/d8;->m(Lzi/d8;)Z

    move-result p1

    if-nez p1, :cond_14

    return v0

    :cond_14
    const/4 p1, 0x1

    return p1

    :cond_15
    :goto_0
    return v0
.end method

.method public o()[B
    .locals 1

    iget-object v0, p0, Lzi/m8;->d:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lzi/d9;->n(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lzi/m8;->f(Ljava/nio/ByteBuffer;)Lzi/m8;

    iget-object v0, p0, Lzi/m8;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public p(Lzi/n9;)V
    .locals 1

    invoke-virtual {p0}, Lzi/m8;->k()V

    sget-object v0, Lzi/m8;->j:Lzi/t9;

    invoke-virtual {p1, v0}, Lzi/n9;->v(Lzi/t9;)V

    iget-object v0, p0, Lzi/m8;->a:Lzi/q7;

    if-eqz v0, :cond_0

    sget-object v0, Lzi/m8;->k:Lzi/k9;

    invoke-virtual {p1, v0}, Lzi/n9;->s(Lzi/k9;)V

    iget-object v0, p0, Lzi/m8;->a:Lzi/q7;

    invoke-virtual {v0}, Lzi/q7;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Lzi/n9;->o(I)V

    invoke-virtual {p1}, Lzi/n9;->z()V

    :cond_0
    sget-object v0, Lzi/m8;->l:Lzi/k9;

    invoke-virtual {p1, v0}, Lzi/n9;->s(Lzi/k9;)V

    iget-boolean v0, p0, Lzi/m8;->b:Z

    invoke-virtual {p1, v0}, Lzi/n9;->x(Z)V

    invoke-virtual {p1}, Lzi/n9;->z()V

    sget-object v0, Lzi/m8;->m:Lzi/k9;

    invoke-virtual {p1, v0}, Lzi/n9;->s(Lzi/k9;)V

    iget-boolean v0, p0, Lzi/m8;->c:Z

    invoke-virtual {p1, v0}, Lzi/n9;->x(Z)V

    invoke-virtual {p1}, Lzi/n9;->z()V

    iget-object v0, p0, Lzi/m8;->d:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    sget-object v0, Lzi/m8;->n:Lzi/k9;

    invoke-virtual {p1, v0}, Lzi/n9;->s(Lzi/k9;)V

    iget-object v0, p0, Lzi/m8;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Lzi/n9;->r(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p1}, Lzi/n9;->z()V

    :cond_1
    iget-object v0, p0, Lzi/m8;->e:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lzi/m8;->z()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lzi/m8;->o:Lzi/k9;

    invoke-virtual {p1, v0}, Lzi/n9;->s(Lzi/k9;)V

    iget-object v0, p0, Lzi/m8;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lzi/n9;->q(Ljava/lang/String;)V

    invoke-virtual {p1}, Lzi/n9;->z()V

    :cond_2
    iget-object v0, p0, Lzi/m8;->f:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lzi/m8;->A()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lzi/m8;->p:Lzi/k9;

    invoke-virtual {p1, v0}, Lzi/n9;->s(Lzi/k9;)V

    iget-object v0, p0, Lzi/m8;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lzi/n9;->q(Ljava/lang/String;)V

    invoke-virtual {p1}, Lzi/n9;->z()V

    :cond_3
    iget-object v0, p0, Lzi/m8;->g:Lzi/f8;

    if-eqz v0, :cond_4

    sget-object v0, Lzi/m8;->q:Lzi/k9;

    invoke-virtual {p1, v0}, Lzi/n9;->s(Lzi/k9;)V

    iget-object v0, p0, Lzi/m8;->g:Lzi/f8;

    invoke-virtual {v0, p1}, Lzi/f8;->p(Lzi/n9;)V

    invoke-virtual {p1}, Lzi/n9;->z()V

    :cond_4
    iget-object v0, p0, Lzi/m8;->h:Lzi/d8;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lzi/m8;->C()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lzi/m8;->r:Lzi/k9;

    invoke-virtual {p1, v0}, Lzi/n9;->s(Lzi/k9;)V

    iget-object v0, p0, Lzi/m8;->h:Lzi/d8;

    invoke-virtual {v0, p1}, Lzi/d8;->p(Lzi/n9;)V

    invoke-virtual {p1}, Lzi/n9;->z()V

    :cond_5
    invoke-virtual {p1}, Lzi/n9;->A()V

    invoke-virtual {p1}, Lzi/n9;->m()V

    return-void
.end method

.method public q()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lzi/m8;->f:Ljava/lang/String;

    return-object v0
.end method

.method public r(Ljava/lang/String;)Lzi/m8;
    .locals 0

    iput-object p1, p0, Lzi/m8;->f:Ljava/lang/String;

    return-object p0
.end method

.method public s(Z)Lzi/m8;
    .locals 0

    iput-boolean p1, p0, Lzi/m8;->c:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lzi/m8;->u(Z)V

    return-object p0
.end method

.method public t(Lzi/n9;)V
    .locals 6

    invoke-virtual {p1}, Lzi/n9;->k()Lzi/t9;

    :goto_0
    invoke-virtual {p1}, Lzi/n9;->g()Lzi/k9;

    move-result-object v0

    iget-byte v1, v0, Lzi/k9;->b:B

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lzi/n9;->D()V

    invoke-virtual {p0}, Lzi/m8;->w()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lzi/m8;->x()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lzi/m8;->k()V

    return-void

    :cond_0
    new-instance p1, Lzi/o9;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Required field \'isRequest\' was not found in serialized data! Struct: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lzi/m8;->toString()Ljava/lang/String;

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

    const-string v1, "Required field \'encryptAction\' was not found in serialized data! Struct: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lzi/m8;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lzi/o9;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-short v0, v0, Lzi/k9;->c:S

    const/4 v2, 0x1

    const/16 v3, 0xc

    const/4 v4, 0x2

    const/16 v5, 0xb

    packed-switch v0, :pswitch_data_0

    :cond_3
    invoke-static {p1, v1}, Lzi/r9;->a(Lzi/n9;B)V

    goto :goto_1

    :pswitch_0
    if-ne v1, v3, :cond_3

    new-instance v0, Lzi/d8;

    invoke-direct {v0}, Lzi/d8;-><init>()V

    iput-object v0, p0, Lzi/m8;->h:Lzi/d8;

    invoke-virtual {v0, p1}, Lzi/d8;->t(Lzi/n9;)V

    goto :goto_1

    :pswitch_1
    if-ne v1, v3, :cond_3

    new-instance v0, Lzi/f8;

    invoke-direct {v0}, Lzi/f8;-><init>()V

    iput-object v0, p0, Lzi/m8;->g:Lzi/f8;

    invoke-virtual {v0, p1}, Lzi/f8;->t(Lzi/n9;)V

    goto :goto_1

    :pswitch_2
    if-ne v1, v5, :cond_3

    invoke-virtual {p1}, Lzi/n9;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lzi/m8;->f:Ljava/lang/String;

    goto :goto_1

    :pswitch_3
    if-ne v1, v5, :cond_3

    invoke-virtual {p1}, Lzi/n9;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lzi/m8;->e:Ljava/lang/String;

    goto :goto_1

    :pswitch_4
    if-ne v1, v5, :cond_3

    invoke-virtual {p1}, Lzi/n9;->f()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lzi/m8;->d:Ljava/nio/ByteBuffer;

    goto :goto_1

    :pswitch_5
    if-ne v1, v4, :cond_3

    invoke-virtual {p1}, Lzi/n9;->y()Z

    move-result v0

    iput-boolean v0, p0, Lzi/m8;->c:Z

    invoke-virtual {p0, v2}, Lzi/m8;->u(Z)V

    goto :goto_1

    :pswitch_6
    if-ne v1, v4, :cond_3

    invoke-virtual {p1}, Lzi/n9;->y()Z

    move-result v0

    iput-boolean v0, p0, Lzi/m8;->b:Z

    invoke-virtual {p0, v2}, Lzi/m8;->l(Z)V

    goto :goto_1

    :pswitch_7
    const/16 v0, 0x8

    if-ne v1, v0, :cond_3

    invoke-virtual {p1}, Lzi/n9;->c()I

    move-result v0

    invoke-static {v0}, Lzi/q7;->b(I)Lzi/q7;

    move-result-object v0

    iput-object v0, p0, Lzi/m8;->a:Lzi/q7;

    :goto_1
    invoke-virtual {p1}, Lzi/n9;->E()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    const-string v1, "XmPushActionContainer("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "action:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lzi/m8;->a:Lzi/q7;

    const-string v2, "null"

    if-nez v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "encryptAction:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lzi/m8;->b:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "isRequest:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lzi/m8;->c:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lzi/m8;->z()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "appid:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lzi/m8;->e:Ljava/lang/String;

    if-nez v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lzi/m8;->A()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "packageName:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lzi/m8;->f:Ljava/lang/String;

    if-nez v3, :cond_3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "target:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lzi/m8;->g:Lzi/f8;

    if-nez v3, :cond_5

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_3
    invoke-virtual {p0}, Lzi/m8;->C()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "metaInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lzi/m8;->h:Lzi/d8;

    if-nez v1, :cond_6

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_7
    :goto_4
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(Z)V
    .locals 2

    iget-object v0, p0, Lzi/m8;->i:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-void
.end method

.method public v()Z
    .locals 1

    iget-boolean v0, p0, Lzi/m8;->b:Z

    return v0
.end method

.method public w()Z
    .locals 2

    iget-object v0, p0, Lzi/m8;->i:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public x()Z
    .locals 2

    iget-object v0, p0, Lzi/m8;->i:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public y()Z
    .locals 1

    iget-object v0, p0, Lzi/m8;->d:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public z()Z
    .locals 1

    iget-object v0, p0, Lzi/m8;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

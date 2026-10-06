.class public Lzi/q8;
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
        "Lzi/q8;",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final A:Lzi/k9;

.field private static final B:Lzi/k9;

.field private static final C:Lzi/k9;

.field private static final D:Lzi/k9;

.field private static final E:Lzi/k9;

.field private static final F:Lzi/k9;

.field private static final q:Lzi/t9;

.field private static final r:Lzi/k9;

.field private static final s:Lzi/k9;

.field private static final t:Lzi/k9;

.field private static final u:Lzi/k9;

.field private static final v:Lzi/k9;

.field private static final w:Lzi/k9;

.field private static final x:Lzi/k9;

.field private static final y:Lzi/k9;

.field private static final z:Lzi/k9;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lzi/f8;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Z

.field public g:Ljava/lang/String;

.field public h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/nio/ByteBuffer;

.field public n:J

.field public o:Z

.field private p:Ljava/util/BitSet;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lzi/t9;

    const-string v1, "XmPushActionNotification"

    invoke-direct {v0, v1}, Lzi/t9;-><init>(Ljava/lang/String;)V

    sput-object v0, Lzi/q8;->q:Lzi/t9;

    new-instance v0, Lzi/k9;

    const-string v1, ""

    const/16 v2, 0xb

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lzi/k9;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lzi/q8;->r:Lzi/k9;

    new-instance v0, Lzi/k9;

    const/16 v3, 0xc

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lzi/k9;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lzi/q8;->s:Lzi/k9;

    new-instance v0, Lzi/k9;

    const/4 v5, 0x3

    invoke-direct {v0, v1, v2, v5}, Lzi/k9;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lzi/q8;->t:Lzi/k9;

    new-instance v0, Lzi/k9;

    const/4 v5, 0x4

    invoke-direct {v0, v1, v2, v5}, Lzi/k9;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lzi/q8;->u:Lzi/k9;

    new-instance v0, Lzi/k9;

    const/4 v5, 0x5

    invoke-direct {v0, v1, v2, v5}, Lzi/k9;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lzi/q8;->v:Lzi/k9;

    new-instance v0, Lzi/k9;

    const/4 v5, 0x6

    invoke-direct {v0, v1, v4, v5}, Lzi/k9;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lzi/q8;->w:Lzi/k9;

    new-instance v0, Lzi/k9;

    const/4 v5, 0x7

    invoke-direct {v0, v1, v2, v5}, Lzi/k9;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lzi/q8;->x:Lzi/k9;

    new-instance v0, Lzi/k9;

    const/16 v5, 0xd

    const/16 v6, 0x8

    invoke-direct {v0, v1, v5, v6}, Lzi/k9;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lzi/q8;->y:Lzi/k9;

    new-instance v0, Lzi/k9;

    const/16 v6, 0x9

    invoke-direct {v0, v1, v2, v6}, Lzi/k9;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lzi/q8;->z:Lzi/k9;

    new-instance v0, Lzi/k9;

    const/16 v6, 0xa

    invoke-direct {v0, v1, v2, v6}, Lzi/k9;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lzi/q8;->A:Lzi/k9;

    new-instance v0, Lzi/k9;

    invoke-direct {v0, v1, v2, v3}, Lzi/k9;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lzi/q8;->B:Lzi/k9;

    new-instance v0, Lzi/k9;

    invoke-direct {v0, v1, v2, v5}, Lzi/k9;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lzi/q8;->C:Lzi/k9;

    new-instance v0, Lzi/k9;

    const/16 v3, 0xe

    invoke-direct {v0, v1, v2, v3}, Lzi/k9;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lzi/q8;->D:Lzi/k9;

    new-instance v0, Lzi/k9;

    const/16 v2, 0xf

    invoke-direct {v0, v1, v6, v2}, Lzi/k9;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lzi/q8;->E:Lzi/k9;

    new-instance v0, Lzi/k9;

    const/16 v2, 0x14

    invoke-direct {v0, v1, v4, v2}, Lzi/k9;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lzi/q8;->F:Lzi/k9;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lzi/q8;->p:Ljava/util/BitSet;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lzi/q8;->f:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lzi/q8;->o:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Lzi/q8;-><init>()V

    iput-object p1, p0, Lzi/q8;->c:Ljava/lang/String;

    iput-boolean p2, p0, Lzi/q8;->f:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lzi/q8;->l(Z)V

    return-void
.end method


# virtual methods
.method public A(Ljava/lang/String;)Lzi/q8;
    .locals 0

    iput-object p1, p0, Lzi/q8;->i:Ljava/lang/String;

    return-object p0
.end method

.method public B()Z
    .locals 1

    iget-object v0, p0, Lzi/q8;->d:Ljava/lang/String;

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

    iget-object v0, p0, Lzi/q8;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public D()Z
    .locals 2

    iget-object v0, p0, Lzi/q8;->p:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public E()Z
    .locals 1

    iget-object v0, p0, Lzi/q8;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public F()Z
    .locals 1

    iget-object v0, p0, Lzi/q8;->h:Ljava/util/Map;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public G()Z
    .locals 1

    iget-object v0, p0, Lzi/q8;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public H()Z
    .locals 1

    iget-object v0, p0, Lzi/q8;->j:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public I()Z
    .locals 1

    iget-object v0, p0, Lzi/q8;->k:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public K()Z
    .locals 1

    iget-object v0, p0, Lzi/q8;->l:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public M()Z
    .locals 1

    iget-object v0, p0, Lzi/q8;->m:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public N()Z
    .locals 2

    iget-object v0, p0, Lzi/q8;->p:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public O()Z
    .locals 2

    iget-object v0, p0, Lzi/q8;->p:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public a(Lzi/q8;)I
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
    invoke-virtual {p0}, Lzi/q8;->m()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lzi/q8;->m()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Lzi/q8;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lzi/q8;->a:Ljava/lang/String;

    iget-object v1, p1, Lzi/q8;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lzi/d9;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    return v0

    :cond_2
    invoke-virtual {p0}, Lzi/q8;->u()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lzi/q8;->u()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_3

    return v0

    :cond_3
    invoke-virtual {p0}, Lzi/q8;->u()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lzi/q8;->b:Lzi/f8;

    iget-object v1, p1, Lzi/q8;->b:Lzi/f8;

    invoke-static {v0, v1}, Lzi/d9;->d(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-eqz v0, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0}, Lzi/q8;->y()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lzi/q8;->y()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_5

    return v0

    :cond_5
    invoke-virtual {p0}, Lzi/q8;->y()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lzi/q8;->c:Ljava/lang/String;

    iget-object v1, p1, Lzi/q8;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lzi/d9;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_6

    return v0

    :cond_6
    invoke-virtual {p0}, Lzi/q8;->B()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lzi/q8;->B()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_7

    return v0

    :cond_7
    invoke-virtual {p0}, Lzi/q8;->B()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lzi/q8;->d:Ljava/lang/String;

    iget-object v1, p1, Lzi/q8;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lzi/d9;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_8

    return v0

    :cond_8
    invoke-virtual {p0}, Lzi/q8;->C()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lzi/q8;->C()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_9

    return v0

    :cond_9
    invoke-virtual {p0}, Lzi/q8;->C()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lzi/q8;->e:Ljava/lang/String;

    iget-object v1, p1, Lzi/q8;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lzi/d9;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_a

    return v0

    :cond_a
    invoke-virtual {p0}, Lzi/q8;->D()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lzi/q8;->D()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_b

    return v0

    :cond_b
    invoke-virtual {p0}, Lzi/q8;->D()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lzi/q8;->f:Z

    iget-boolean v1, p1, Lzi/q8;->f:Z

    invoke-static {v0, v1}, Lzi/d9;->k(ZZ)I

    move-result v0

    if-eqz v0, :cond_c

    return v0

    :cond_c
    invoke-virtual {p0}, Lzi/q8;->E()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lzi/q8;->E()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_d

    return v0

    :cond_d
    invoke-virtual {p0}, Lzi/q8;->E()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lzi/q8;->g:Ljava/lang/String;

    iget-object v1, p1, Lzi/q8;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Lzi/d9;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_e

    return v0

    :cond_e
    invoke-virtual {p0}, Lzi/q8;->F()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lzi/q8;->F()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_f

    return v0

    :cond_f
    invoke-virtual {p0}, Lzi/q8;->F()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lzi/q8;->h:Ljava/util/Map;

    iget-object v1, p1, Lzi/q8;->h:Ljava/util/Map;

    invoke-static {v0, v1}, Lzi/d9;->h(Ljava/util/Map;Ljava/util/Map;)I

    move-result v0

    if-eqz v0, :cond_10

    return v0

    :cond_10
    invoke-virtual {p0}, Lzi/q8;->G()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lzi/q8;->G()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_11

    return v0

    :cond_11
    invoke-virtual {p0}, Lzi/q8;->G()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lzi/q8;->i:Ljava/lang/String;

    iget-object v1, p1, Lzi/q8;->i:Ljava/lang/String;

    invoke-static {v0, v1}, Lzi/d9;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_12

    return v0

    :cond_12
    invoke-virtual {p0}, Lzi/q8;->H()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lzi/q8;->H()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_13

    return v0

    :cond_13
    invoke-virtual {p0}, Lzi/q8;->H()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lzi/q8;->j:Ljava/lang/String;

    iget-object v1, p1, Lzi/q8;->j:Ljava/lang/String;

    invoke-static {v0, v1}, Lzi/d9;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_14

    return v0

    :cond_14
    invoke-virtual {p0}, Lzi/q8;->I()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lzi/q8;->I()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_15

    return v0

    :cond_15
    invoke-virtual {p0}, Lzi/q8;->I()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lzi/q8;->k:Ljava/lang/String;

    iget-object v1, p1, Lzi/q8;->k:Ljava/lang/String;

    invoke-static {v0, v1}, Lzi/d9;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_16

    return v0

    :cond_16
    invoke-virtual {p0}, Lzi/q8;->K()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lzi/q8;->K()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_17

    return v0

    :cond_17
    invoke-virtual {p0}, Lzi/q8;->K()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lzi/q8;->l:Ljava/lang/String;

    iget-object v1, p1, Lzi/q8;->l:Ljava/lang/String;

    invoke-static {v0, v1}, Lzi/d9;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_18

    return v0

    :cond_18
    invoke-virtual {p0}, Lzi/q8;->M()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lzi/q8;->M()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_19

    return v0

    :cond_19
    invoke-virtual {p0}, Lzi/q8;->M()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lzi/q8;->m:Ljava/nio/ByteBuffer;

    iget-object v1, p1, Lzi/q8;->m:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1}, Lzi/d9;->d(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-eqz v0, :cond_1a

    return v0

    :cond_1a
    invoke-virtual {p0}, Lzi/q8;->N()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lzi/q8;->N()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_1b

    return v0

    :cond_1b
    invoke-virtual {p0}, Lzi/q8;->N()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-wide v0, p0, Lzi/q8;->n:J

    iget-wide v2, p1, Lzi/q8;->n:J

    invoke-static {v0, v1, v2, v3}, Lzi/d9;->c(JJ)I

    move-result v0

    if-eqz v0, :cond_1c

    return v0

    :cond_1c
    invoke-virtual {p0}, Lzi/q8;->O()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lzi/q8;->O()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_1d

    return v0

    :cond_1d
    invoke-virtual {p0}, Lzi/q8;->O()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-boolean v0, p0, Lzi/q8;->o:Z

    iget-boolean p1, p1, Lzi/q8;->o:Z

    invoke-static {v0, p1}, Lzi/d9;->k(ZZ)I

    move-result p1

    if-eqz p1, :cond_1e

    return p1

    :cond_1e
    const/4 p1, 0x0

    return p1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lzi/q8;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lzi/q8;->h:Ljava/util/Map;

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lzi/q8;

    invoke-virtual {p0, p1}, Lzi/q8;->a(Lzi/q8;)I

    move-result p1

    return p1
.end method

.method public d()Lzi/f8;
    .locals 1

    iget-object v0, p0, Lzi/q8;->b:Lzi/f8;

    return-object v0
.end method

.method public e(Ljava/lang/String;)Lzi/q8;
    .locals 0

    iput-object p1, p0, Lzi/q8;->c:Ljava/lang/String;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lzi/q8;

    if-eqz v1, :cond_1

    check-cast p1, Lzi/q8;

    invoke-virtual {p0, p1}, Lzi/q8;->n(Lzi/q8;)Z

    move-result p1

    return p1

    :cond_1
    return v0
.end method

.method public f(Ljava/nio/ByteBuffer;)Lzi/q8;
    .locals 0

    iput-object p1, p0, Lzi/q8;->m:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public g(Ljava/util/Map;)Lzi/q8;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lzi/q8;"
        }
    .end annotation

    iput-object p1, p0, Lzi/q8;->h:Ljava/util/Map;

    return-object p0
.end method

.method public h(Z)Lzi/q8;
    .locals 0

    iput-boolean p1, p0, Lzi/q8;->f:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lzi/q8;->l(Z)V

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public i([B)Lzi/q8;
    .locals 0

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lzi/q8;->f(Ljava/nio/ByteBuffer;)Lzi/q8;

    return-object p0
.end method

.method public j()V
    .locals 3

    iget-object v0, p0, Lzi/q8;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lzi/o9;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'id\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lzi/q8;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lzi/o9;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public k(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lzi/q8;->h:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lzi/q8;->h:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lzi/q8;->h:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public l(Z)V
    .locals 2

    iget-object v0, p0, Lzi/q8;->p:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-void
.end method

.method public m()Z
    .locals 1

    iget-object v0, p0, Lzi/q8;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public n(Lzi/q8;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lzi/q8;->m()Z

    move-result v1

    invoke-virtual {p1}, Lzi/q8;->m()Z

    move-result v2

    if-nez v1, :cond_1

    if-eqz v2, :cond_3

    :cond_1
    if-eqz v1, :cond_2c

    if-nez v2, :cond_2

    goto/16 :goto_0

    :cond_2
    iget-object v1, p0, Lzi/q8;->a:Ljava/lang/String;

    iget-object v2, p1, Lzi/q8;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    :cond_3
    invoke-virtual {p0}, Lzi/q8;->u()Z

    move-result v1

    invoke-virtual {p1}, Lzi/q8;->u()Z

    move-result v2

    if-nez v1, :cond_4

    if-eqz v2, :cond_6

    :cond_4
    if-eqz v1, :cond_2c

    if-nez v2, :cond_5

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Lzi/q8;->b:Lzi/f8;

    iget-object v2, p1, Lzi/q8;->b:Lzi/f8;

    invoke-virtual {v1, v2}, Lzi/f8;->e(Lzi/f8;)Z

    move-result v1

    if-nez v1, :cond_6

    return v0

    :cond_6
    invoke-virtual {p0}, Lzi/q8;->y()Z

    move-result v1

    invoke-virtual {p1}, Lzi/q8;->y()Z

    move-result v2

    if-nez v1, :cond_7

    if-eqz v2, :cond_9

    :cond_7
    if-eqz v1, :cond_2c

    if-nez v2, :cond_8

    goto/16 :goto_0

    :cond_8
    iget-object v1, p0, Lzi/q8;->c:Ljava/lang/String;

    iget-object v2, p1, Lzi/q8;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v0

    :cond_9
    invoke-virtual {p0}, Lzi/q8;->B()Z

    move-result v1

    invoke-virtual {p1}, Lzi/q8;->B()Z

    move-result v2

    if-nez v1, :cond_a

    if-eqz v2, :cond_c

    :cond_a
    if-eqz v1, :cond_2c

    if-nez v2, :cond_b

    goto/16 :goto_0

    :cond_b
    iget-object v1, p0, Lzi/q8;->d:Ljava/lang/String;

    iget-object v2, p1, Lzi/q8;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v0

    :cond_c
    invoke-virtual {p0}, Lzi/q8;->C()Z

    move-result v1

    invoke-virtual {p1}, Lzi/q8;->C()Z

    move-result v2

    if-nez v1, :cond_d

    if-eqz v2, :cond_f

    :cond_d
    if-eqz v1, :cond_2c

    if-nez v2, :cond_e

    goto/16 :goto_0

    :cond_e
    iget-object v1, p0, Lzi/q8;->e:Ljava/lang/String;

    iget-object v2, p1, Lzi/q8;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v0

    :cond_f
    iget-boolean v1, p0, Lzi/q8;->f:Z

    iget-boolean v2, p1, Lzi/q8;->f:Z

    if-eq v1, v2, :cond_10

    return v0

    :cond_10
    invoke-virtual {p0}, Lzi/q8;->E()Z

    move-result v1

    invoke-virtual {p1}, Lzi/q8;->E()Z

    move-result v2

    if-nez v1, :cond_11

    if-eqz v2, :cond_13

    :cond_11
    if-eqz v1, :cond_2c

    if-nez v2, :cond_12

    goto/16 :goto_0

    :cond_12
    iget-object v1, p0, Lzi/q8;->g:Ljava/lang/String;

    iget-object v2, p1, Lzi/q8;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v0

    :cond_13
    invoke-virtual {p0}, Lzi/q8;->F()Z

    move-result v1

    invoke-virtual {p1}, Lzi/q8;->F()Z

    move-result v2

    if-nez v1, :cond_14

    if-eqz v2, :cond_16

    :cond_14
    if-eqz v1, :cond_2c

    if-nez v2, :cond_15

    goto/16 :goto_0

    :cond_15
    iget-object v1, p0, Lzi/q8;->h:Ljava/util/Map;

    iget-object v2, p1, Lzi/q8;->h:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    return v0

    :cond_16
    invoke-virtual {p0}, Lzi/q8;->G()Z

    move-result v1

    invoke-virtual {p1}, Lzi/q8;->G()Z

    move-result v2

    if-nez v1, :cond_17

    if-eqz v2, :cond_19

    :cond_17
    if-eqz v1, :cond_2c

    if-nez v2, :cond_18

    goto/16 :goto_0

    :cond_18
    iget-object v1, p0, Lzi/q8;->i:Ljava/lang/String;

    iget-object v2, p1, Lzi/q8;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    return v0

    :cond_19
    invoke-virtual {p0}, Lzi/q8;->H()Z

    move-result v1

    invoke-virtual {p1}, Lzi/q8;->H()Z

    move-result v2

    if-nez v1, :cond_1a

    if-eqz v2, :cond_1c

    :cond_1a
    if-eqz v1, :cond_2c

    if-nez v2, :cond_1b

    goto/16 :goto_0

    :cond_1b
    iget-object v1, p0, Lzi/q8;->j:Ljava/lang/String;

    iget-object v2, p1, Lzi/q8;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    return v0

    :cond_1c
    invoke-virtual {p0}, Lzi/q8;->I()Z

    move-result v1

    invoke-virtual {p1}, Lzi/q8;->I()Z

    move-result v2

    if-nez v1, :cond_1d

    if-eqz v2, :cond_1f

    :cond_1d
    if-eqz v1, :cond_2c

    if-nez v2, :cond_1e

    goto/16 :goto_0

    :cond_1e
    iget-object v1, p0, Lzi/q8;->k:Ljava/lang/String;

    iget-object v2, p1, Lzi/q8;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    return v0

    :cond_1f
    invoke-virtual {p0}, Lzi/q8;->K()Z

    move-result v1

    invoke-virtual {p1}, Lzi/q8;->K()Z

    move-result v2

    if-nez v1, :cond_20

    if-eqz v2, :cond_22

    :cond_20
    if-eqz v1, :cond_2c

    if-nez v2, :cond_21

    goto :goto_0

    :cond_21
    iget-object v1, p0, Lzi/q8;->l:Ljava/lang/String;

    iget-object v2, p1, Lzi/q8;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v0

    :cond_22
    invoke-virtual {p0}, Lzi/q8;->M()Z

    move-result v1

    invoke-virtual {p1}, Lzi/q8;->M()Z

    move-result v2

    if-nez v1, :cond_23

    if-eqz v2, :cond_25

    :cond_23
    if-eqz v1, :cond_2c

    if-nez v2, :cond_24

    goto :goto_0

    :cond_24
    iget-object v1, p0, Lzi/q8;->m:Ljava/nio/ByteBuffer;

    iget-object v2, p1, Lzi/q8;->m:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    return v0

    :cond_25
    invoke-virtual {p0}, Lzi/q8;->N()Z

    move-result v1

    invoke-virtual {p1}, Lzi/q8;->N()Z

    move-result v2

    if-nez v1, :cond_26

    if-eqz v2, :cond_28

    :cond_26
    if-eqz v1, :cond_2c

    if-nez v2, :cond_27

    goto :goto_0

    :cond_27
    iget-wide v1, p0, Lzi/q8;->n:J

    iget-wide v3, p1, Lzi/q8;->n:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_28

    return v0

    :cond_28
    invoke-virtual {p0}, Lzi/q8;->O()Z

    move-result v1

    invoke-virtual {p1}, Lzi/q8;->O()Z

    move-result v2

    if-nez v1, :cond_29

    if-eqz v2, :cond_2b

    :cond_29
    if-eqz v1, :cond_2c

    if-nez v2, :cond_2a

    goto :goto_0

    :cond_2a
    iget-boolean v1, p0, Lzi/q8;->o:Z

    iget-boolean p1, p1, Lzi/q8;->o:Z

    if-eq v1, p1, :cond_2b

    return v0

    :cond_2b
    const/4 p1, 0x1

    return p1

    :cond_2c
    :goto_0
    return v0
.end method

.method public o()[B
    .locals 1

    iget-object v0, p0, Lzi/q8;->m:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lzi/d9;->n(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lzi/q8;->f(Ljava/nio/ByteBuffer;)Lzi/q8;

    iget-object v0, p0, Lzi/q8;->m:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public p(Lzi/n9;)V
    .locals 3

    invoke-virtual {p0}, Lzi/q8;->j()V

    sget-object v0, Lzi/q8;->q:Lzi/t9;

    invoke-virtual {p1, v0}, Lzi/n9;->v(Lzi/t9;)V

    iget-object v0, p0, Lzi/q8;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lzi/q8;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lzi/q8;->r:Lzi/k9;

    invoke-virtual {p1, v0}, Lzi/n9;->s(Lzi/k9;)V

    iget-object v0, p0, Lzi/q8;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lzi/n9;->q(Ljava/lang/String;)V

    invoke-virtual {p1}, Lzi/n9;->z()V

    :cond_0
    iget-object v0, p0, Lzi/q8;->b:Lzi/f8;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lzi/q8;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lzi/q8;->s:Lzi/k9;

    invoke-virtual {p1, v0}, Lzi/n9;->s(Lzi/k9;)V

    iget-object v0, p0, Lzi/q8;->b:Lzi/f8;

    invoke-virtual {v0, p1}, Lzi/f8;->p(Lzi/n9;)V

    invoke-virtual {p1}, Lzi/n9;->z()V

    :cond_1
    iget-object v0, p0, Lzi/q8;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lzi/q8;->t:Lzi/k9;

    invoke-virtual {p1, v0}, Lzi/n9;->s(Lzi/k9;)V

    iget-object v0, p0, Lzi/q8;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lzi/n9;->q(Ljava/lang/String;)V

    invoke-virtual {p1}, Lzi/n9;->z()V

    :cond_2
    iget-object v0, p0, Lzi/q8;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lzi/q8;->B()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lzi/q8;->u:Lzi/k9;

    invoke-virtual {p1, v0}, Lzi/n9;->s(Lzi/k9;)V

    iget-object v0, p0, Lzi/q8;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lzi/n9;->q(Ljava/lang/String;)V

    invoke-virtual {p1}, Lzi/n9;->z()V

    :cond_3
    iget-object v0, p0, Lzi/q8;->e:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lzi/q8;->C()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lzi/q8;->v:Lzi/k9;

    invoke-virtual {p1, v0}, Lzi/n9;->s(Lzi/k9;)V

    iget-object v0, p0, Lzi/q8;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lzi/n9;->q(Ljava/lang/String;)V

    invoke-virtual {p1}, Lzi/n9;->z()V

    :cond_4
    sget-object v0, Lzi/q8;->w:Lzi/k9;

    invoke-virtual {p1, v0}, Lzi/n9;->s(Lzi/k9;)V

    iget-boolean v0, p0, Lzi/q8;->f:Z

    invoke-virtual {p1, v0}, Lzi/n9;->x(Z)V

    invoke-virtual {p1}, Lzi/n9;->z()V

    iget-object v0, p0, Lzi/q8;->g:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lzi/q8;->E()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lzi/q8;->x:Lzi/k9;

    invoke-virtual {p1, v0}, Lzi/n9;->s(Lzi/k9;)V

    iget-object v0, p0, Lzi/q8;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lzi/n9;->q(Ljava/lang/String;)V

    invoke-virtual {p1}, Lzi/n9;->z()V

    :cond_5
    iget-object v0, p0, Lzi/q8;->h:Ljava/util/Map;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lzi/q8;->F()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lzi/q8;->y:Lzi/k9;

    invoke-virtual {p1, v0}, Lzi/n9;->s(Lzi/k9;)V

    new-instance v0, Lzi/m9;

    iget-object v1, p0, Lzi/q8;->h:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    const/16 v2, 0xb

    invoke-direct {v0, v2, v2, v1}, Lzi/m9;-><init>(BBI)V

    invoke-virtual {p1, v0}, Lzi/n9;->u(Lzi/m9;)V

    iget-object v0, p0, Lzi/q8;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lzi/n9;->q(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lzi/n9;->q(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lzi/n9;->B()V

    invoke-virtual {p1}, Lzi/n9;->z()V

    :cond_7
    iget-object v0, p0, Lzi/q8;->i:Ljava/lang/String;

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lzi/q8;->G()Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lzi/q8;->z:Lzi/k9;

    invoke-virtual {p1, v0}, Lzi/n9;->s(Lzi/k9;)V

    iget-object v0, p0, Lzi/q8;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lzi/n9;->q(Ljava/lang/String;)V

    invoke-virtual {p1}, Lzi/n9;->z()V

    :cond_8
    iget-object v0, p0, Lzi/q8;->j:Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lzi/q8;->H()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lzi/q8;->A:Lzi/k9;

    invoke-virtual {p1, v0}, Lzi/n9;->s(Lzi/k9;)V

    iget-object v0, p0, Lzi/q8;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lzi/n9;->q(Ljava/lang/String;)V

    invoke-virtual {p1}, Lzi/n9;->z()V

    :cond_9
    iget-object v0, p0, Lzi/q8;->k:Ljava/lang/String;

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lzi/q8;->I()Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lzi/q8;->B:Lzi/k9;

    invoke-virtual {p1, v0}, Lzi/n9;->s(Lzi/k9;)V

    iget-object v0, p0, Lzi/q8;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lzi/n9;->q(Ljava/lang/String;)V

    invoke-virtual {p1}, Lzi/n9;->z()V

    :cond_a
    iget-object v0, p0, Lzi/q8;->l:Ljava/lang/String;

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lzi/q8;->K()Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lzi/q8;->C:Lzi/k9;

    invoke-virtual {p1, v0}, Lzi/n9;->s(Lzi/k9;)V

    iget-object v0, p0, Lzi/q8;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lzi/n9;->q(Ljava/lang/String;)V

    invoke-virtual {p1}, Lzi/n9;->z()V

    :cond_b
    iget-object v0, p0, Lzi/q8;->m:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lzi/q8;->M()Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lzi/q8;->D:Lzi/k9;

    invoke-virtual {p1, v0}, Lzi/n9;->s(Lzi/k9;)V

    iget-object v0, p0, Lzi/q8;->m:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Lzi/n9;->r(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p1}, Lzi/n9;->z()V

    :cond_c
    invoke-virtual {p0}, Lzi/q8;->N()Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lzi/q8;->E:Lzi/k9;

    invoke-virtual {p1, v0}, Lzi/n9;->s(Lzi/k9;)V

    iget-wide v0, p0, Lzi/q8;->n:J

    invoke-virtual {p1, v0, v1}, Lzi/n9;->p(J)V

    invoke-virtual {p1}, Lzi/n9;->z()V

    :cond_d
    invoke-virtual {p0}, Lzi/q8;->O()Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lzi/q8;->F:Lzi/k9;

    invoke-virtual {p1, v0}, Lzi/n9;->s(Lzi/k9;)V

    iget-boolean v0, p0, Lzi/q8;->o:Z

    invoke-virtual {p1, v0}, Lzi/n9;->x(Z)V

    invoke-virtual {p1}, Lzi/n9;->z()V

    :cond_e
    invoke-virtual {p1}, Lzi/n9;->A()V

    invoke-virtual {p1}, Lzi/n9;->m()V

    return-void
.end method

.method public q()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lzi/q8;->d:Ljava/lang/String;

    return-object v0
.end method

.method public r(Ljava/lang/String;)Lzi/q8;
    .locals 0

    iput-object p1, p0, Lzi/q8;->d:Ljava/lang/String;

    return-object p0
.end method

.method public s(Z)V
    .locals 2

    iget-object v0, p0, Lzi/q8;->p:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-void
.end method

.method public t(Lzi/n9;)V
    .locals 5

    invoke-virtual {p1}, Lzi/n9;->k()Lzi/t9;

    :goto_0
    invoke-virtual {p1}, Lzi/n9;->g()Lzi/k9;

    move-result-object v0

    iget-byte v1, v0, Lzi/k9;->b:B

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lzi/n9;->D()V

    invoke-virtual {p0}, Lzi/q8;->D()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lzi/q8;->j()V

    return-void

    :cond_0
    new-instance p1, Lzi/o9;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Required field \'requireAck\' was not found in serialized data! Struct: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lzi/q8;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lzi/o9;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-short v0, v0, Lzi/k9;->c:S

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/16 v4, 0xb

    packed-switch v0, :pswitch_data_0

    :cond_2
    :pswitch_0
    invoke-static {p1, v1}, Lzi/r9;->a(Lzi/n9;B)V

    goto/16 :goto_2

    :pswitch_1
    if-ne v1, v2, :cond_2

    invoke-virtual {p1}, Lzi/n9;->y()Z

    move-result v0

    iput-boolean v0, p0, Lzi/q8;->o:Z

    invoke-virtual {p0, v3}, Lzi/q8;->x(Z)V

    goto/16 :goto_2

    :pswitch_2
    const/16 v0, 0xa

    if-ne v1, v0, :cond_2

    invoke-virtual {p1}, Lzi/n9;->d()J

    move-result-wide v0

    iput-wide v0, p0, Lzi/q8;->n:J

    invoke-virtual {p0, v3}, Lzi/q8;->s(Z)V

    goto/16 :goto_2

    :pswitch_3
    if-ne v1, v4, :cond_2

    invoke-virtual {p1}, Lzi/n9;->f()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lzi/q8;->m:Ljava/nio/ByteBuffer;

    goto/16 :goto_2

    :pswitch_4
    if-ne v1, v4, :cond_2

    invoke-virtual {p1}, Lzi/n9;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lzi/q8;->l:Ljava/lang/String;

    goto/16 :goto_2

    :pswitch_5
    if-ne v1, v4, :cond_2

    invoke-virtual {p1}, Lzi/n9;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lzi/q8;->k:Ljava/lang/String;

    goto/16 :goto_2

    :pswitch_6
    if-ne v1, v4, :cond_2

    invoke-virtual {p1}, Lzi/n9;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lzi/q8;->j:Ljava/lang/String;

    goto/16 :goto_2

    :pswitch_7
    if-ne v1, v4, :cond_2

    invoke-virtual {p1}, Lzi/n9;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lzi/q8;->i:Ljava/lang/String;

    goto/16 :goto_2

    :pswitch_8
    const/16 v0, 0xd

    if-ne v1, v0, :cond_2

    invoke-virtual {p1}, Lzi/n9;->i()Lzi/m9;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    iget v3, v0, Lzi/m9;->c:I

    mul-int/2addr v3, v2

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lzi/q8;->h:Ljava/util/Map;

    const/4 v1, 0x0

    :goto_1
    iget v2, v0, Lzi/m9;->c:I

    if-ge v1, v2, :cond_3

    invoke-virtual {p1}, Lzi/n9;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lzi/n9;->e()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lzi/q8;->h:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lzi/n9;->F()V

    goto :goto_2

    :pswitch_9
    if-ne v1, v4, :cond_2

    invoke-virtual {p1}, Lzi/n9;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lzi/q8;->g:Ljava/lang/String;

    goto :goto_2

    :pswitch_a
    if-ne v1, v2, :cond_2

    invoke-virtual {p1}, Lzi/n9;->y()Z

    move-result v0

    iput-boolean v0, p0, Lzi/q8;->f:Z

    invoke-virtual {p0, v3}, Lzi/q8;->l(Z)V

    goto :goto_2

    :pswitch_b
    if-ne v1, v4, :cond_2

    invoke-virtual {p1}, Lzi/n9;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lzi/q8;->e:Ljava/lang/String;

    goto :goto_2

    :pswitch_c
    if-ne v1, v4, :cond_2

    invoke-virtual {p1}, Lzi/n9;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lzi/q8;->d:Ljava/lang/String;

    goto :goto_2

    :pswitch_d
    if-ne v1, v4, :cond_2

    invoke-virtual {p1}, Lzi/n9;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lzi/q8;->c:Ljava/lang/String;

    goto :goto_2

    :pswitch_e
    const/16 v0, 0xc

    if-ne v1, v0, :cond_2

    new-instance v0, Lzi/f8;

    invoke-direct {v0}, Lzi/f8;-><init>()V

    iput-object v0, p0, Lzi/q8;->b:Lzi/f8;

    invoke-virtual {v0, p1}, Lzi/f8;->t(Lzi/n9;)V

    goto :goto_2

    :pswitch_f
    if-ne v1, v4, :cond_2

    invoke-virtual {p1}, Lzi/n9;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lzi/q8;->a:Ljava/lang/String;

    :goto_2
    invoke-virtual {p1}, Lzi/n9;->E()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "XmPushActionNotification("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lzi/q8;->m()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "null"

    if-eqz v1, :cond_1

    const-string v1, "debug:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lzi/q8;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    move v1, v2

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p0}, Lzi/q8;->u()Z

    move-result v4

    const-string v5, ", "

    if-eqz v4, :cond_4

    if-nez v1, :cond_2

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v1, "target:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lzi/q8;->b:Lzi/f8;

    if-nez v1, :cond_3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    move v2, v1

    :goto_2
    if-nez v2, :cond_5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const-string v1, "id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lzi/q8;->c:Ljava/lang/String;

    if-nez v1, :cond_6

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    invoke-virtual {p0}, Lzi/q8;->B()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "appId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lzi/q8;->d:Ljava/lang/String;

    if-nez v1, :cond_7

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    :goto_4
    invoke-virtual {p0}, Lzi/q8;->C()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lzi/q8;->e:Ljava/lang/String;

    if-nez v1, :cond_9

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    :goto_5
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "requireAck:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lzi/q8;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lzi/q8;->E()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "payload:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lzi/q8;->g:Ljava/lang/String;

    if-nez v1, :cond_b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    :goto_6
    invoke-virtual {p0}, Lzi/q8;->F()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "extra:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lzi/q8;->h:Ljava/util/Map;

    if-nez v1, :cond_d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_e
    :goto_7
    invoke-virtual {p0}, Lzi/q8;->G()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "packageName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lzi/q8;->i:Ljava/lang/String;

    if-nez v1, :cond_f

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    :goto_8
    invoke-virtual {p0}, Lzi/q8;->H()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "category:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lzi/q8;->j:Ljava/lang/String;

    if-nez v1, :cond_11

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    :goto_9
    invoke-virtual {p0}, Lzi/q8;->I()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "regId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lzi/q8;->k:Ljava/lang/String;

    if-nez v1, :cond_13

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    :cond_13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14
    :goto_a
    invoke-virtual {p0}, Lzi/q8;->K()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "aliasName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lzi/q8;->l:Ljava/lang/String;

    if-nez v1, :cond_15

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    :cond_15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_16
    :goto_b
    invoke-virtual {p0}, Lzi/q8;->M()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "binaryExtra:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lzi/q8;->m:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c

    :cond_17
    invoke-static {v1, v0}, Lzi/d9;->o(Ljava/nio/ByteBuffer;Ljava/lang/StringBuilder;)V

    :cond_18
    :goto_c
    invoke-virtual {p0}, Lzi/q8;->N()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "createdTs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lzi/q8;->n:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_19
    invoke-virtual {p0}, Lzi/q8;->O()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "alreadyLogClickInXmq:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lzi/q8;->o:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    :cond_1a
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Z
    .locals 1

    iget-object v0, p0, Lzi/q8;->b:Lzi/f8;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public v()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lzi/q8;->e:Ljava/lang/String;

    return-object v0
.end method

.method public w(Ljava/lang/String;)Lzi/q8;
    .locals 0

    iput-object p1, p0, Lzi/q8;->e:Ljava/lang/String;

    return-object p0
.end method

.method public x(Z)V
    .locals 2

    iget-object v0, p0, Lzi/q8;->p:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-void
.end method

.method public y()Z
    .locals 1

    iget-object v0, p0, Lzi/q8;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public z()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lzi/q8;->i:Ljava/lang/String;

    return-object v0
.end method

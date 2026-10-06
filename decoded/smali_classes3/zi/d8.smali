.class public Lzi/d8;
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
        "Lzi/d8;",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final A:Lzi/k9;

.field private static final B:Lzi/k9;

.field private static final o:Lzi/t9;

.field private static final p:Lzi/k9;

.field private static final q:Lzi/k9;

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

.field public b:J

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:I

.field public g:Ljava/lang/String;

.field public h:I

.field public i:I

.field public j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public l:Z

.field public m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/BitSet;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lzi/t9;

    const-string v1, "PushMetaInfo"

    invoke-direct {v0, v1}, Lzi/t9;-><init>(Ljava/lang/String;)V

    sput-object v0, Lzi/d8;->o:Lzi/t9;

    new-instance v0, Lzi/k9;

    const-string v1, ""

    const/16 v2, 0xb

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lzi/k9;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lzi/d8;->p:Lzi/k9;

    new-instance v0, Lzi/k9;

    const/16 v3, 0xa

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lzi/k9;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lzi/d8;->q:Lzi/k9;

    new-instance v0, Lzi/k9;

    const/4 v5, 0x3

    invoke-direct {v0, v1, v2, v5}, Lzi/k9;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lzi/d8;->r:Lzi/k9;

    new-instance v0, Lzi/k9;

    const/4 v5, 0x4

    invoke-direct {v0, v1, v2, v5}, Lzi/k9;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lzi/d8;->s:Lzi/k9;

    new-instance v0, Lzi/k9;

    const/4 v5, 0x5

    invoke-direct {v0, v1, v2, v5}, Lzi/k9;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lzi/d8;->t:Lzi/k9;

    new-instance v0, Lzi/k9;

    const/16 v5, 0x8

    const/4 v6, 0x6

    invoke-direct {v0, v1, v5, v6}, Lzi/k9;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lzi/d8;->u:Lzi/k9;

    new-instance v0, Lzi/k9;

    const/4 v6, 0x7

    invoke-direct {v0, v1, v2, v6}, Lzi/k9;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lzi/d8;->v:Lzi/k9;

    new-instance v0, Lzi/k9;

    invoke-direct {v0, v1, v5, v5}, Lzi/k9;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lzi/d8;->w:Lzi/k9;

    new-instance v0, Lzi/k9;

    const/16 v6, 0x9

    invoke-direct {v0, v1, v5, v6}, Lzi/k9;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lzi/d8;->x:Lzi/k9;

    new-instance v0, Lzi/k9;

    const/16 v5, 0xd

    invoke-direct {v0, v1, v5, v3}, Lzi/k9;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lzi/d8;->y:Lzi/k9;

    new-instance v0, Lzi/k9;

    invoke-direct {v0, v1, v5, v2}, Lzi/k9;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lzi/d8;->z:Lzi/k9;

    new-instance v0, Lzi/k9;

    const/16 v2, 0xc

    invoke-direct {v0, v1, v4, v2}, Lzi/k9;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lzi/d8;->A:Lzi/k9;

    new-instance v0, Lzi/k9;

    invoke-direct {v0, v1, v5, v5}, Lzi/k9;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lzi/d8;->B:Lzi/k9;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lzi/d8;->n:Ljava/util/BitSet;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lzi/d8;->l:Z

    return-void
.end method

.method public constructor <init>(Lzi/d8;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lzi/d8;->n:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    iget-object v0, p0, Lzi/d8;->n:Ljava/util/BitSet;

    iget-object v1, p1, Lzi/d8;->n:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    invoke-virtual {p1}, Lzi/d8;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lzi/d8;->a:Ljava/lang/String;

    iput-object v0, p0, Lzi/d8;->a:Ljava/lang/String;

    :cond_0
    iget-wide v0, p1, Lzi/d8;->b:J

    iput-wide v0, p0, Lzi/d8;->b:J

    invoke-virtual {p1}, Lzi/d8;->y()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lzi/d8;->c:Ljava/lang/String;

    iput-object v0, p0, Lzi/d8;->c:Ljava/lang/String;

    :cond_1
    invoke-virtual {p1}, Lzi/d8;->B()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lzi/d8;->d:Ljava/lang/String;

    iput-object v0, p0, Lzi/d8;->d:Ljava/lang/String;

    :cond_2
    invoke-virtual {p1}, Lzi/d8;->D()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lzi/d8;->e:Ljava/lang/String;

    iput-object v0, p0, Lzi/d8;->e:Ljava/lang/String;

    :cond_3
    iget v0, p1, Lzi/d8;->f:I

    iput v0, p0, Lzi/d8;->f:I

    invoke-virtual {p1}, Lzi/d8;->F()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p1, Lzi/d8;->g:Ljava/lang/String;

    iput-object v0, p0, Lzi/d8;->g:Ljava/lang/String;

    :cond_4
    iget v0, p1, Lzi/d8;->h:I

    iput v0, p0, Lzi/d8;->h:I

    iget v0, p1, Lzi/d8;->i:I

    iput v0, p0, Lzi/d8;->i:I

    invoke-virtual {p1}, Lzi/d8;->I()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p1, Lzi/d8;->j:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    iput-object v0, p0, Lzi/d8;->j:Ljava/util/Map;

    :cond_6
    invoke-virtual {p1}, Lzi/d8;->K()Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p1, Lzi/d8;->k:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_7
    iput-object v0, p0, Lzi/d8;->k:Ljava/util/Map;

    :cond_8
    iget-boolean v0, p1, Lzi/d8;->l:Z

    iput-boolean v0, p0, Lzi/d8;->l:Z

    invoke-virtual {p1}, Lzi/d8;->O()Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object p1, p1, Lzi/d8;->m:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_9
    iput-object v0, p0, Lzi/d8;->m:Ljava/util/Map;

    :cond_a
    return-void
.end method


# virtual methods
.method public A(Z)V
    .locals 2

    iget-object v0, p0, Lzi/d8;->n:Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-void
.end method

.method public B()Z
    .locals 1

    iget-object v0, p0, Lzi/d8;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public C(Z)V
    .locals 2

    iget-object v0, p0, Lzi/d8;->n:Ljava/util/BitSet;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-void
.end method

.method public D()Z
    .locals 1

    iget-object v0, p0, Lzi/d8;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public E()Z
    .locals 2

    iget-object v0, p0, Lzi/d8;->n:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public F()Z
    .locals 1

    iget-object v0, p0, Lzi/d8;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public G()Z
    .locals 2

    iget-object v0, p0, Lzi/d8;->n:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public H()Z
    .locals 2

    iget-object v0, p0, Lzi/d8;->n:Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public I()Z
    .locals 1

    iget-object v0, p0, Lzi/d8;->j:Ljava/util/Map;

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

    iget-object v0, p0, Lzi/d8;->k:Ljava/util/Map;

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

    iget-boolean v0, p0, Lzi/d8;->l:Z

    return v0
.end method

.method public N()Z
    .locals 2

    iget-object v0, p0, Lzi/d8;->n:Ljava/util/BitSet;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public O()Z
    .locals 1

    iget-object v0, p0, Lzi/d8;->m:Ljava/util/Map;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public a()I
    .locals 1

    iget v0, p0, Lzi/d8;->f:I

    return v0
.end method

.method public b(Lzi/d8;)I
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
    invoke-virtual {p0}, Lzi/d8;->l()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lzi/d8;->l()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Lzi/d8;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lzi/d8;->a:Ljava/lang/String;

    iget-object v1, p1, Lzi/d8;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lzi/d9;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    return v0

    :cond_2
    invoke-virtual {p0}, Lzi/d8;->u()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lzi/d8;->u()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_3

    return v0

    :cond_3
    invoke-virtual {p0}, Lzi/d8;->u()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-wide v0, p0, Lzi/d8;->b:J

    iget-wide v2, p1, Lzi/d8;->b:J

    invoke-static {v0, v1, v2, v3}, Lzi/d9;->c(JJ)I

    move-result v0

    if-eqz v0, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0}, Lzi/d8;->y()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lzi/d8;->y()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_5

    return v0

    :cond_5
    invoke-virtual {p0}, Lzi/d8;->y()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lzi/d8;->c:Ljava/lang/String;

    iget-object v1, p1, Lzi/d8;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lzi/d9;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_6

    return v0

    :cond_6
    invoke-virtual {p0}, Lzi/d8;->B()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lzi/d8;->B()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_7

    return v0

    :cond_7
    invoke-virtual {p0}, Lzi/d8;->B()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lzi/d8;->d:Ljava/lang/String;

    iget-object v1, p1, Lzi/d8;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lzi/d9;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_8

    return v0

    :cond_8
    invoke-virtual {p0}, Lzi/d8;->D()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lzi/d8;->D()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_9

    return v0

    :cond_9
    invoke-virtual {p0}, Lzi/d8;->D()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lzi/d8;->e:Ljava/lang/String;

    iget-object v1, p1, Lzi/d8;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lzi/d9;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_a

    return v0

    :cond_a
    invoke-virtual {p0}, Lzi/d8;->E()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lzi/d8;->E()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_b

    return v0

    :cond_b
    invoke-virtual {p0}, Lzi/d8;->E()Z

    move-result v0

    if-eqz v0, :cond_c

    iget v0, p0, Lzi/d8;->f:I

    iget v1, p1, Lzi/d8;->f:I

    invoke-static {v0, v1}, Lzi/d9;->b(II)I

    move-result v0

    if-eqz v0, :cond_c

    return v0

    :cond_c
    invoke-virtual {p0}, Lzi/d8;->F()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lzi/d8;->F()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_d

    return v0

    :cond_d
    invoke-virtual {p0}, Lzi/d8;->F()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lzi/d8;->g:Ljava/lang/String;

    iget-object v1, p1, Lzi/d8;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Lzi/d9;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_e

    return v0

    :cond_e
    invoke-virtual {p0}, Lzi/d8;->G()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lzi/d8;->G()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_f

    return v0

    :cond_f
    invoke-virtual {p0}, Lzi/d8;->G()Z

    move-result v0

    if-eqz v0, :cond_10

    iget v0, p0, Lzi/d8;->h:I

    iget v1, p1, Lzi/d8;->h:I

    invoke-static {v0, v1}, Lzi/d9;->b(II)I

    move-result v0

    if-eqz v0, :cond_10

    return v0

    :cond_10
    invoke-virtual {p0}, Lzi/d8;->H()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lzi/d8;->H()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_11

    return v0

    :cond_11
    invoke-virtual {p0}, Lzi/d8;->H()Z

    move-result v0

    if-eqz v0, :cond_12

    iget v0, p0, Lzi/d8;->i:I

    iget v1, p1, Lzi/d8;->i:I

    invoke-static {v0, v1}, Lzi/d9;->b(II)I

    move-result v0

    if-eqz v0, :cond_12

    return v0

    :cond_12
    invoke-virtual {p0}, Lzi/d8;->I()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lzi/d8;->I()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_13

    return v0

    :cond_13
    invoke-virtual {p0}, Lzi/d8;->I()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lzi/d8;->j:Ljava/util/Map;

    iget-object v1, p1, Lzi/d8;->j:Ljava/util/Map;

    invoke-static {v0, v1}, Lzi/d9;->h(Ljava/util/Map;Ljava/util/Map;)I

    move-result v0

    if-eqz v0, :cond_14

    return v0

    :cond_14
    invoke-virtual {p0}, Lzi/d8;->K()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lzi/d8;->K()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_15

    return v0

    :cond_15
    invoke-virtual {p0}, Lzi/d8;->K()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lzi/d8;->k:Ljava/util/Map;

    iget-object v1, p1, Lzi/d8;->k:Ljava/util/Map;

    invoke-static {v0, v1}, Lzi/d9;->h(Ljava/util/Map;Ljava/util/Map;)I

    move-result v0

    if-eqz v0, :cond_16

    return v0

    :cond_16
    invoke-virtual {p0}, Lzi/d8;->N()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lzi/d8;->N()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_17

    return v0

    :cond_17
    invoke-virtual {p0}, Lzi/d8;->N()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Lzi/d8;->l:Z

    iget-boolean v1, p1, Lzi/d8;->l:Z

    invoke-static {v0, v1}, Lzi/d9;->k(ZZ)I

    move-result v0

    if-eqz v0, :cond_18

    return v0

    :cond_18
    invoke-virtual {p0}, Lzi/d8;->O()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lzi/d8;->O()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_19

    return v0

    :cond_19
    invoke-virtual {p0}, Lzi/d8;->O()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lzi/d8;->m:Ljava/util/Map;

    iget-object p1, p1, Lzi/d8;->m:Ljava/util/Map;

    invoke-static {v0, p1}, Lzi/d9;->h(Ljava/util/Map;Ljava/util/Map;)I

    move-result p1

    if-eqz p1, :cond_1a

    return p1

    :cond_1a
    const/4 p1, 0x0

    return p1
.end method

.method public c()J
    .locals 2

    iget-wide v0, p0, Lzi/d8;->b:J

    return-wide v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lzi/d8;

    invoke-virtual {p0, p1}, Lzi/d8;->b(Lzi/d8;)I

    move-result p1

    return p1
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lzi/d8;->a:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/util/Map;
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

    iget-object v0, p0, Lzi/d8;->j:Ljava/util/Map;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lzi/d8;

    if-eqz v1, :cond_1

    check-cast p1, Lzi/d8;

    invoke-virtual {p0, p1}, Lzi/d8;->m(Lzi/d8;)Z

    move-result p1

    return p1

    :cond_1
    return v0
.end method

.method public f()Lzi/d8;
    .locals 1

    new-instance v0, Lzi/d8;

    invoke-direct {v0, p0}, Lzi/d8;-><init>(Lzi/d8;)V

    return-object v0
.end method

.method public g(Ljava/lang/String;)Lzi/d8;
    .locals 0

    iput-object p1, p0, Lzi/d8;->a:Ljava/lang/String;

    return-object p0
.end method

.method public h(Ljava/util/Map;)Lzi/d8;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lzi/d8;"
        }
    .end annotation

    iput-object p1, p0, Lzi/d8;->j:Ljava/util/Map;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public i()V
    .locals 3

    iget-object v0, p0, Lzi/d8;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lzi/o9;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'id\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lzi/d8;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lzi/o9;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public j(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lzi/d8;->j:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lzi/d8;->j:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lzi/d8;->j:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public k(Z)V
    .locals 2

    iget-object v0, p0, Lzi/d8;->n:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-void
.end method

.method public l()Z
    .locals 1

    iget-object v0, p0, Lzi/d8;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public m(Lzi/d8;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lzi/d8;->l()Z

    move-result v1

    invoke-virtual {p1}, Lzi/d8;->l()Z

    move-result v2

    if-nez v1, :cond_1

    if-eqz v2, :cond_3

    :cond_1
    if-eqz v1, :cond_26

    if-nez v2, :cond_2

    goto/16 :goto_0

    :cond_2
    iget-object v1, p0, Lzi/d8;->a:Ljava/lang/String;

    iget-object v2, p1, Lzi/d8;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    :cond_3
    iget-wide v1, p0, Lzi/d8;->b:J

    iget-wide v3, p1, Lzi/d8;->b:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0}, Lzi/d8;->y()Z

    move-result v1

    invoke-virtual {p1}, Lzi/d8;->y()Z

    move-result v2

    if-nez v1, :cond_5

    if-eqz v2, :cond_7

    :cond_5
    if-eqz v1, :cond_26

    if-nez v2, :cond_6

    goto/16 :goto_0

    :cond_6
    iget-object v1, p0, Lzi/d8;->c:Ljava/lang/String;

    iget-object v2, p1, Lzi/d8;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v0

    :cond_7
    invoke-virtual {p0}, Lzi/d8;->B()Z

    move-result v1

    invoke-virtual {p1}, Lzi/d8;->B()Z

    move-result v2

    if-nez v1, :cond_8

    if-eqz v2, :cond_a

    :cond_8
    if-eqz v1, :cond_26

    if-nez v2, :cond_9

    goto/16 :goto_0

    :cond_9
    iget-object v1, p0, Lzi/d8;->d:Ljava/lang/String;

    iget-object v2, p1, Lzi/d8;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v0

    :cond_a
    invoke-virtual {p0}, Lzi/d8;->D()Z

    move-result v1

    invoke-virtual {p1}, Lzi/d8;->D()Z

    move-result v2

    if-nez v1, :cond_b

    if-eqz v2, :cond_d

    :cond_b
    if-eqz v1, :cond_26

    if-nez v2, :cond_c

    goto/16 :goto_0

    :cond_c
    iget-object v1, p0, Lzi/d8;->e:Ljava/lang/String;

    iget-object v2, p1, Lzi/d8;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v0

    :cond_d
    invoke-virtual {p0}, Lzi/d8;->E()Z

    move-result v1

    invoke-virtual {p1}, Lzi/d8;->E()Z

    move-result v2

    if-nez v1, :cond_e

    if-eqz v2, :cond_10

    :cond_e
    if-eqz v1, :cond_26

    if-nez v2, :cond_f

    goto/16 :goto_0

    :cond_f
    iget v1, p0, Lzi/d8;->f:I

    iget v2, p1, Lzi/d8;->f:I

    if-eq v1, v2, :cond_10

    return v0

    :cond_10
    invoke-virtual {p0}, Lzi/d8;->F()Z

    move-result v1

    invoke-virtual {p1}, Lzi/d8;->F()Z

    move-result v2

    if-nez v1, :cond_11

    if-eqz v2, :cond_13

    :cond_11
    if-eqz v1, :cond_26

    if-nez v2, :cond_12

    goto/16 :goto_0

    :cond_12
    iget-object v1, p0, Lzi/d8;->g:Ljava/lang/String;

    iget-object v2, p1, Lzi/d8;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v0

    :cond_13
    invoke-virtual {p0}, Lzi/d8;->G()Z

    move-result v1

    invoke-virtual {p1}, Lzi/d8;->G()Z

    move-result v2

    if-nez v1, :cond_14

    if-eqz v2, :cond_16

    :cond_14
    if-eqz v1, :cond_26

    if-nez v2, :cond_15

    goto/16 :goto_0

    :cond_15
    iget v1, p0, Lzi/d8;->h:I

    iget v2, p1, Lzi/d8;->h:I

    if-eq v1, v2, :cond_16

    return v0

    :cond_16
    invoke-virtual {p0}, Lzi/d8;->H()Z

    move-result v1

    invoke-virtual {p1}, Lzi/d8;->H()Z

    move-result v2

    if-nez v1, :cond_17

    if-eqz v2, :cond_19

    :cond_17
    if-eqz v1, :cond_26

    if-nez v2, :cond_18

    goto/16 :goto_0

    :cond_18
    iget v1, p0, Lzi/d8;->i:I

    iget v2, p1, Lzi/d8;->i:I

    if-eq v1, v2, :cond_19

    return v0

    :cond_19
    invoke-virtual {p0}, Lzi/d8;->I()Z

    move-result v1

    invoke-virtual {p1}, Lzi/d8;->I()Z

    move-result v2

    if-nez v1, :cond_1a

    if-eqz v2, :cond_1c

    :cond_1a
    if-eqz v1, :cond_26

    if-nez v2, :cond_1b

    goto :goto_0

    :cond_1b
    iget-object v1, p0, Lzi/d8;->j:Ljava/util/Map;

    iget-object v2, p1, Lzi/d8;->j:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    return v0

    :cond_1c
    invoke-virtual {p0}, Lzi/d8;->K()Z

    move-result v1

    invoke-virtual {p1}, Lzi/d8;->K()Z

    move-result v2

    if-nez v1, :cond_1d

    if-eqz v2, :cond_1f

    :cond_1d
    if-eqz v1, :cond_26

    if-nez v2, :cond_1e

    goto :goto_0

    :cond_1e
    iget-object v1, p0, Lzi/d8;->k:Ljava/util/Map;

    iget-object v2, p1, Lzi/d8;->k:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    return v0

    :cond_1f
    invoke-virtual {p0}, Lzi/d8;->N()Z

    move-result v1

    invoke-virtual {p1}, Lzi/d8;->N()Z

    move-result v2

    if-nez v1, :cond_20

    if-eqz v2, :cond_22

    :cond_20
    if-eqz v1, :cond_26

    if-nez v2, :cond_21

    goto :goto_0

    :cond_21
    iget-boolean v1, p0, Lzi/d8;->l:Z

    iget-boolean v2, p1, Lzi/d8;->l:Z

    if-eq v1, v2, :cond_22

    return v0

    :cond_22
    invoke-virtual {p0}, Lzi/d8;->O()Z

    move-result v1

    invoke-virtual {p1}, Lzi/d8;->O()Z

    move-result v2

    if-nez v1, :cond_23

    if-eqz v2, :cond_25

    :cond_23
    if-eqz v1, :cond_26

    if-nez v2, :cond_24

    goto :goto_0

    :cond_24
    iget-object v1, p0, Lzi/d8;->m:Ljava/util/Map;

    iget-object p1, p1, Lzi/d8;->m:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_25

    return v0

    :cond_25
    const/4 p1, 0x1

    return p1

    :cond_26
    :goto_0
    return v0
.end method

.method public n()I
    .locals 1

    iget v0, p0, Lzi/d8;->h:I

    return v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lzi/d8;->c:Ljava/lang/String;

    return-object v0
.end method

.method public p(Lzi/n9;)V
    .locals 4

    invoke-virtual {p0}, Lzi/d8;->i()V

    sget-object v0, Lzi/d8;->o:Lzi/t9;

    invoke-virtual {p1, v0}, Lzi/n9;->v(Lzi/t9;)V

    iget-object v0, p0, Lzi/d8;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lzi/d8;->p:Lzi/k9;

    invoke-virtual {p1, v0}, Lzi/n9;->s(Lzi/k9;)V

    iget-object v0, p0, Lzi/d8;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lzi/n9;->q(Ljava/lang/String;)V

    invoke-virtual {p1}, Lzi/n9;->z()V

    :cond_0
    sget-object v0, Lzi/d8;->q:Lzi/k9;

    invoke-virtual {p1, v0}, Lzi/n9;->s(Lzi/k9;)V

    iget-wide v0, p0, Lzi/d8;->b:J

    invoke-virtual {p1, v0, v1}, Lzi/n9;->p(J)V

    invoke-virtual {p1}, Lzi/n9;->z()V

    iget-object v0, p0, Lzi/d8;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lzi/d8;->y()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lzi/d8;->r:Lzi/k9;

    invoke-virtual {p1, v0}, Lzi/n9;->s(Lzi/k9;)V

    iget-object v0, p0, Lzi/d8;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lzi/n9;->q(Ljava/lang/String;)V

    invoke-virtual {p1}, Lzi/n9;->z()V

    :cond_1
    iget-object v0, p0, Lzi/d8;->d:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lzi/d8;->B()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lzi/d8;->s:Lzi/k9;

    invoke-virtual {p1, v0}, Lzi/n9;->s(Lzi/k9;)V

    iget-object v0, p0, Lzi/d8;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lzi/n9;->q(Ljava/lang/String;)V

    invoke-virtual {p1}, Lzi/n9;->z()V

    :cond_2
    iget-object v0, p0, Lzi/d8;->e:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lzi/d8;->D()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lzi/d8;->t:Lzi/k9;

    invoke-virtual {p1, v0}, Lzi/n9;->s(Lzi/k9;)V

    iget-object v0, p0, Lzi/d8;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lzi/n9;->q(Ljava/lang/String;)V

    invoke-virtual {p1}, Lzi/n9;->z()V

    :cond_3
    invoke-virtual {p0}, Lzi/d8;->E()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lzi/d8;->u:Lzi/k9;

    invoke-virtual {p1, v0}, Lzi/n9;->s(Lzi/k9;)V

    iget v0, p0, Lzi/d8;->f:I

    invoke-virtual {p1, v0}, Lzi/n9;->o(I)V

    invoke-virtual {p1}, Lzi/n9;->z()V

    :cond_4
    iget-object v0, p0, Lzi/d8;->g:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lzi/d8;->F()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lzi/d8;->v:Lzi/k9;

    invoke-virtual {p1, v0}, Lzi/n9;->s(Lzi/k9;)V

    iget-object v0, p0, Lzi/d8;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lzi/n9;->q(Ljava/lang/String;)V

    invoke-virtual {p1}, Lzi/n9;->z()V

    :cond_5
    invoke-virtual {p0}, Lzi/d8;->G()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lzi/d8;->w:Lzi/k9;

    invoke-virtual {p1, v0}, Lzi/n9;->s(Lzi/k9;)V

    iget v0, p0, Lzi/d8;->h:I

    invoke-virtual {p1, v0}, Lzi/n9;->o(I)V

    invoke-virtual {p1}, Lzi/n9;->z()V

    :cond_6
    invoke-virtual {p0}, Lzi/d8;->H()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lzi/d8;->x:Lzi/k9;

    invoke-virtual {p1, v0}, Lzi/n9;->s(Lzi/k9;)V

    iget v0, p0, Lzi/d8;->i:I

    invoke-virtual {p1, v0}, Lzi/n9;->o(I)V

    invoke-virtual {p1}, Lzi/n9;->z()V

    :cond_7
    iget-object v0, p0, Lzi/d8;->j:Ljava/util/Map;

    const/16 v1, 0xb

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lzi/d8;->I()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lzi/d8;->y:Lzi/k9;

    invoke-virtual {p1, v0}, Lzi/n9;->s(Lzi/k9;)V

    new-instance v0, Lzi/m9;

    iget-object v2, p0, Lzi/d8;->j:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v0, v1, v1, v2}, Lzi/m9;-><init>(BBI)V

    invoke-virtual {p1, v0}, Lzi/n9;->u(Lzi/m9;)V

    iget-object v0, p0, Lzi/d8;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Lzi/n9;->q(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lzi/n9;->q(Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    invoke-virtual {p1}, Lzi/n9;->B()V

    invoke-virtual {p1}, Lzi/n9;->z()V

    :cond_9
    iget-object v0, p0, Lzi/d8;->k:Ljava/util/Map;

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lzi/d8;->K()Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lzi/d8;->z:Lzi/k9;

    invoke-virtual {p1, v0}, Lzi/n9;->s(Lzi/k9;)V

    new-instance v0, Lzi/m9;

    iget-object v2, p0, Lzi/d8;->k:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v0, v1, v1, v2}, Lzi/m9;-><init>(BBI)V

    invoke-virtual {p1, v0}, Lzi/n9;->u(Lzi/m9;)V

    iget-object v0, p0, Lzi/d8;->k:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Lzi/n9;->q(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lzi/n9;->q(Ljava/lang/String;)V

    goto :goto_1

    :cond_a
    invoke-virtual {p1}, Lzi/n9;->B()V

    invoke-virtual {p1}, Lzi/n9;->z()V

    :cond_b
    invoke-virtual {p0}, Lzi/d8;->N()Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lzi/d8;->A:Lzi/k9;

    invoke-virtual {p1, v0}, Lzi/n9;->s(Lzi/k9;)V

    iget-boolean v0, p0, Lzi/d8;->l:Z

    invoke-virtual {p1, v0}, Lzi/n9;->x(Z)V

    invoke-virtual {p1}, Lzi/n9;->z()V

    :cond_c
    iget-object v0, p0, Lzi/d8;->m:Ljava/util/Map;

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lzi/d8;->O()Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lzi/d8;->B:Lzi/k9;

    invoke-virtual {p1, v0}, Lzi/n9;->s(Lzi/k9;)V

    new-instance v0, Lzi/m9;

    iget-object v2, p0, Lzi/d8;->m:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v0, v1, v1, v2}, Lzi/m9;-><init>(BBI)V

    invoke-virtual {p1, v0}, Lzi/n9;->u(Lzi/m9;)V

    iget-object v0, p0, Lzi/d8;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

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

    goto :goto_2

    :cond_d
    invoke-virtual {p1}, Lzi/n9;->B()V

    invoke-virtual {p1}, Lzi/n9;->z()V

    :cond_e
    invoke-virtual {p1}, Lzi/n9;->A()V

    invoke-virtual {p1}, Lzi/n9;->m()V

    return-void
.end method

.method public q()Ljava/util/Map;
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

    iget-object v0, p0, Lzi/d8;->k:Ljava/util/Map;

    return-object v0
.end method

.method public r(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lzi/d8;->k:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lzi/d8;->k:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lzi/d8;->k:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public s(Z)V
    .locals 2

    iget-object v0, p0, Lzi/d8;->n:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-void
.end method

.method public t(Lzi/n9;)V
    .locals 8

    invoke-virtual {p1}, Lzi/n9;->k()Lzi/t9;

    :goto_0
    invoke-virtual {p1}, Lzi/n9;->g()Lzi/k9;

    move-result-object v0

    iget-byte v1, v0, Lzi/k9;->b:B

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lzi/n9;->D()V

    invoke-virtual {p0}, Lzi/d8;->u()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lzi/d8;->i()V

    return-void

    :cond_0
    new-instance p1, Lzi/o9;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Required field \'messageTs\' was not found in serialized data! Struct: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lzi/d8;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lzi/o9;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-short v0, v0, Lzi/k9;->c:S

    const/4 v2, 0x0

    const/16 v3, 0xd

    const/16 v4, 0x8

    const/4 v5, 0x2

    const/16 v6, 0xb

    const/4 v7, 0x1

    packed-switch v0, :pswitch_data_0

    :cond_2
    invoke-static {p1, v1}, Lzi/r9;->a(Lzi/n9;B)V

    goto/16 :goto_4

    :pswitch_0
    if-ne v1, v3, :cond_2

    invoke-virtual {p1}, Lzi/n9;->i()Lzi/m9;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    iget v3, v0, Lzi/m9;->c:I

    mul-int/2addr v3, v5

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lzi/d8;->m:Ljava/util/Map;

    :goto_1
    iget v1, v0, Lzi/m9;->c:I

    if-ge v2, v1, :cond_3

    invoke-virtual {p1}, Lzi/n9;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lzi/n9;->e()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lzi/d8;->m:Ljava/util/Map;

    invoke-interface {v4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :pswitch_1
    if-ne v1, v5, :cond_2

    invoke-virtual {p1}, Lzi/n9;->y()Z

    move-result v0

    iput-boolean v0, p0, Lzi/d8;->l:Z

    invoke-virtual {p0, v7}, Lzi/d8;->C(Z)V

    goto/16 :goto_4

    :pswitch_2
    if-ne v1, v3, :cond_2

    invoke-virtual {p1}, Lzi/n9;->i()Lzi/m9;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    iget v3, v0, Lzi/m9;->c:I

    mul-int/2addr v3, v5

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lzi/d8;->k:Ljava/util/Map;

    :goto_2
    iget v1, v0, Lzi/m9;->c:I

    if-ge v2, v1, :cond_3

    invoke-virtual {p1}, Lzi/n9;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lzi/n9;->e()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lzi/d8;->k:Ljava/util/Map;

    invoke-interface {v4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :pswitch_3
    if-ne v1, v3, :cond_2

    invoke-virtual {p1}, Lzi/n9;->i()Lzi/m9;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    iget v3, v0, Lzi/m9;->c:I

    mul-int/2addr v3, v5

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lzi/d8;->j:Ljava/util/Map;

    :goto_3
    iget v1, v0, Lzi/m9;->c:I

    if-ge v2, v1, :cond_3

    invoke-virtual {p1}, Lzi/n9;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lzi/n9;->e()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lzi/d8;->j:Ljava/util/Map;

    invoke-interface {v4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Lzi/n9;->F()V

    goto :goto_4

    :pswitch_4
    if-ne v1, v4, :cond_2

    invoke-virtual {p1}, Lzi/n9;->c()I

    move-result v0

    iput v0, p0, Lzi/d8;->i:I

    invoke-virtual {p0, v7}, Lzi/d8;->A(Z)V

    goto :goto_4

    :pswitch_5
    if-ne v1, v4, :cond_2

    invoke-virtual {p1}, Lzi/n9;->c()I

    move-result v0

    iput v0, p0, Lzi/d8;->h:I

    invoke-virtual {p0, v7}, Lzi/d8;->x(Z)V

    goto :goto_4

    :pswitch_6
    if-ne v1, v6, :cond_2

    invoke-virtual {p1}, Lzi/n9;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lzi/d8;->g:Ljava/lang/String;

    goto :goto_4

    :pswitch_7
    if-ne v1, v4, :cond_2

    invoke-virtual {p1}, Lzi/n9;->c()I

    move-result v0

    iput v0, p0, Lzi/d8;->f:I

    invoke-virtual {p0, v7}, Lzi/d8;->s(Z)V

    goto :goto_4

    :pswitch_8
    if-ne v1, v6, :cond_2

    invoke-virtual {p1}, Lzi/n9;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lzi/d8;->e:Ljava/lang/String;

    goto :goto_4

    :pswitch_9
    if-ne v1, v6, :cond_2

    invoke-virtual {p1}, Lzi/n9;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lzi/d8;->d:Ljava/lang/String;

    goto :goto_4

    :pswitch_a
    if-ne v1, v6, :cond_2

    invoke-virtual {p1}, Lzi/n9;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lzi/d8;->c:Ljava/lang/String;

    goto :goto_4

    :pswitch_b
    const/16 v0, 0xa

    if-ne v1, v0, :cond_2

    invoke-virtual {p1}, Lzi/n9;->d()J

    move-result-wide v0

    iput-wide v0, p0, Lzi/d8;->b:J

    invoke-virtual {p0, v7}, Lzi/d8;->k(Z)V

    goto :goto_4

    :pswitch_c
    if-ne v1, v6, :cond_2

    invoke-virtual {p1}, Lzi/n9;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lzi/d8;->a:Ljava/lang/String;

    :goto_4
    invoke-virtual {p1}, Lzi/n9;->E()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
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
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PushMetaInfo("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lzi/d8;->a:Ljava/lang/String;

    const-string v2, "null"

    if-nez v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/xiaomi/push/service/h0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "messageTs:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lzi/d8;->b:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lzi/d8;->y()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "topic:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lzi/d8;->c:Ljava/lang/String;

    if-nez v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lzi/d8;->B()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "title:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lzi/d8;->d:Ljava/lang/String;

    if-nez v3, :cond_3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    :goto_2
    invoke-virtual {p0}, Lzi/d8;->D()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "description:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lzi/d8;->e:Ljava/lang/String;

    if-nez v3, :cond_5

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    :goto_3
    invoke-virtual {p0}, Lzi/d8;->E()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "notifyType:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lzi/d8;->f:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_7
    invoke-virtual {p0}, Lzi/d8;->F()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "url:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lzi/d8;->g:Ljava/lang/String;

    if-nez v3, :cond_8

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_8
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    :goto_4
    invoke-virtual {p0}, Lzi/d8;->G()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "passThrough:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lzi/d8;->h:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_a
    invoke-virtual {p0}, Lzi/d8;->H()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "notifyId:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lzi/d8;->i:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_b
    invoke-virtual {p0}, Lzi/d8;->I()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "extra:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lzi/d8;->j:Ljava/util/Map;

    if-nez v3, :cond_c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_c
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_d
    :goto_5
    invoke-virtual {p0}, Lzi/d8;->K()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "internal:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lzi/d8;->k:Ljava/util/Map;

    if-nez v3, :cond_e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_e
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_f
    :goto_6
    invoke-virtual {p0}, Lzi/d8;->N()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "ignoreRegInfo:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lzi/d8;->l:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    :cond_10
    invoke-virtual {p0}, Lzi/d8;->O()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "apsProperFields:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lzi/d8;->m:Ljava/util/Map;

    if-nez v1, :cond_11

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_12
    :goto_7
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Z
    .locals 2

    iget-object v0, p0, Lzi/d8;->n:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public v()I
    .locals 1

    iget v0, p0, Lzi/d8;->i:I

    return v0
.end method

.method public w()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lzi/d8;->d:Ljava/lang/String;

    return-object v0
.end method

.method public x(Z)V
    .locals 2

    iget-object v0, p0, Lzi/d8;->n:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-void
.end method

.method public y()Z
    .locals 1

    iget-object v0, p0, Lzi/d8;->c:Ljava/lang/String;

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

    iget-object v0, p0, Lzi/d8;->e:Ljava/lang/String;

    return-object v0
.end method

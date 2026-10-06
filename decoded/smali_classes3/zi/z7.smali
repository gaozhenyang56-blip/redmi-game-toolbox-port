.class public Lzi/z7;
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
        "Lzi/z7;",
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
.field public a:I

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lzi/b8;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lzi/w7;

.field private d:Ljava/util/BitSet;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lzi/t9;

    const-string v1, "NormalConfig"

    invoke-direct {v0, v1}, Lzi/t9;-><init>(Ljava/lang/String;)V

    sput-object v0, Lzi/z7;->e:Lzi/t9;

    new-instance v0, Lzi/k9;

    const-string v1, ""

    const/16 v2, 0x8

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lzi/k9;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lzi/z7;->f:Lzi/k9;

    new-instance v0, Lzi/k9;

    const/16 v3, 0xf

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lzi/k9;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lzi/z7;->g:Lzi/k9;

    new-instance v0, Lzi/k9;

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lzi/k9;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lzi/z7;->h:Lzi/k9;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lzi/z7;->d:Ljava/util/BitSet;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lzi/z7;->a:I

    return v0
.end method

.method public b(Lzi/z7;)I
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
    invoke-virtual {p0}, Lzi/z7;->f()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lzi/z7;->f()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Lzi/z7;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lzi/z7;->a:I

    iget v1, p1, Lzi/z7;->a:I

    invoke-static {v0, v1}, Lzi/d9;->b(II)I

    move-result v0

    if-eqz v0, :cond_2

    return v0

    :cond_2
    invoke-virtual {p0}, Lzi/z7;->h()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lzi/z7;->h()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_3

    return v0

    :cond_3
    invoke-virtual {p0}, Lzi/z7;->h()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lzi/z7;->b:Ljava/util/List;

    iget-object v1, p1, Lzi/z7;->b:Ljava/util/List;

    invoke-static {v0, v1}, Lzi/d9;->g(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    if-eqz v0, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0}, Lzi/z7;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lzi/z7;->i()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_5

    return v0

    :cond_5
    invoke-virtual {p0}, Lzi/z7;->i()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lzi/z7;->c:Lzi/w7;

    iget-object p1, p1, Lzi/z7;->c:Lzi/w7;

    invoke-static {v0, p1}, Lzi/d9;->d(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p1

    if-eqz p1, :cond_6

    return p1

    :cond_6
    const/4 p1, 0x0

    return p1
.end method

.method public c()Lzi/w7;
    .locals 1

    iget-object v0, p0, Lzi/z7;->c:Lzi/w7;

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lzi/z7;

    invoke-virtual {p0, p1}, Lzi/z7;->b(Lzi/z7;)I

    move-result p1

    return p1
.end method

.method public d()V
    .locals 3

    iget-object v0, p0, Lzi/z7;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lzi/o9;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'configItems\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lzi/z7;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lzi/o9;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e(Z)V
    .locals 2

    iget-object v0, p0, Lzi/z7;->d:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lzi/z7;

    if-eqz v1, :cond_1

    check-cast p1, Lzi/z7;

    invoke-virtual {p0, p1}, Lzi/z7;->g(Lzi/z7;)Z

    move-result p1

    return p1

    :cond_1
    return v0
.end method

.method public f()Z
    .locals 2

    iget-object v0, p0, Lzi/z7;->d:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public g(Lzi/z7;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget v1, p0, Lzi/z7;->a:I

    iget v2, p1, Lzi/z7;->a:I

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Lzi/z7;->h()Z

    move-result v1

    invoke-virtual {p1}, Lzi/z7;->h()Z

    move-result v2

    if-nez v1, :cond_2

    if-eqz v2, :cond_4

    :cond_2
    if-eqz v1, :cond_8

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lzi/z7;->b:Ljava/util/List;

    iget-object v2, p1, Lzi/z7;->b:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0}, Lzi/z7;->i()Z

    move-result v1

    invoke-virtual {p1}, Lzi/z7;->i()Z

    move-result v2

    if-nez v1, :cond_5

    if-eqz v2, :cond_7

    :cond_5
    if-eqz v1, :cond_8

    if-nez v2, :cond_6

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lzi/z7;->c:Lzi/w7;

    iget-object p1, p1, Lzi/z7;->c:Lzi/w7;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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

.method public h()Z
    .locals 1

    iget-object v0, p0, Lzi/z7;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public i()Z
    .locals 1

    iget-object v0, p0, Lzi/z7;->c:Lzi/w7;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public p(Lzi/n9;)V
    .locals 3

    invoke-virtual {p0}, Lzi/z7;->d()V

    sget-object v0, Lzi/z7;->e:Lzi/t9;

    invoke-virtual {p1, v0}, Lzi/n9;->v(Lzi/t9;)V

    sget-object v0, Lzi/z7;->f:Lzi/k9;

    invoke-virtual {p1, v0}, Lzi/n9;->s(Lzi/k9;)V

    iget v0, p0, Lzi/z7;->a:I

    invoke-virtual {p1, v0}, Lzi/n9;->o(I)V

    invoke-virtual {p1}, Lzi/n9;->z()V

    iget-object v0, p0, Lzi/z7;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    sget-object v0, Lzi/z7;->g:Lzi/k9;

    invoke-virtual {p1, v0}, Lzi/n9;->s(Lzi/k9;)V

    new-instance v0, Lzi/l9;

    const/16 v1, 0xc

    iget-object v2, p0, Lzi/z7;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lzi/l9;-><init>(BI)V

    invoke-virtual {p1, v0}, Lzi/n9;->t(Lzi/l9;)V

    iget-object v0, p0, Lzi/z7;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzi/b8;

    invoke-virtual {v1, p1}, Lzi/b8;->p(Lzi/n9;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lzi/n9;->C()V

    invoke-virtual {p1}, Lzi/n9;->z()V

    :cond_1
    iget-object v0, p0, Lzi/z7;->c:Lzi/w7;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lzi/z7;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lzi/z7;->h:Lzi/k9;

    invoke-virtual {p1, v0}, Lzi/n9;->s(Lzi/k9;)V

    iget-object v0, p0, Lzi/z7;->c:Lzi/w7;

    invoke-virtual {v0}, Lzi/w7;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Lzi/n9;->o(I)V

    invoke-virtual {p1}, Lzi/n9;->z()V

    :cond_2
    invoke-virtual {p1}, Lzi/n9;->A()V

    invoke-virtual {p1}, Lzi/n9;->m()V

    return-void
.end method

.method public t(Lzi/n9;)V
    .locals 4

    invoke-virtual {p1}, Lzi/n9;->k()Lzi/t9;

    :goto_0
    invoke-virtual {p1}, Lzi/n9;->g()Lzi/k9;

    move-result-object v0

    iget-byte v1, v0, Lzi/k9;->b:B

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lzi/n9;->D()V

    invoke-virtual {p0}, Lzi/z7;->f()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lzi/z7;->d()V

    return-void

    :cond_0
    new-instance p1, Lzi/o9;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Required field \'version\' was not found in serialized data! Struct: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lzi/z7;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lzi/o9;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-short v0, v0, Lzi/k9;->c:S

    const/16 v2, 0x8

    const/4 v3, 0x1

    if-eq v0, v3, :cond_6

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_3

    :cond_2
    invoke-static {p1, v1}, Lzi/r9;->a(Lzi/n9;B)V

    goto :goto_2

    :cond_3
    if-ne v1, v2, :cond_2

    invoke-virtual {p1}, Lzi/n9;->c()I

    move-result v0

    invoke-static {v0}, Lzi/w7;->b(I)Lzi/w7;

    move-result-object v0

    iput-object v0, p0, Lzi/z7;->c:Lzi/w7;

    goto :goto_2

    :cond_4
    const/16 v0, 0xf

    if-ne v1, v0, :cond_2

    invoke-virtual {p1}, Lzi/n9;->h()Lzi/l9;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    iget v2, v0, Lzi/l9;->b:I

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lzi/z7;->b:Ljava/util/List;

    const/4 v1, 0x0

    :goto_1
    iget v2, v0, Lzi/l9;->b:I

    if-ge v1, v2, :cond_5

    new-instance v2, Lzi/b8;

    invoke-direct {v2}, Lzi/b8;-><init>()V

    invoke-virtual {v2, p1}, Lzi/b8;->t(Lzi/n9;)V

    iget-object v3, p0, Lzi/z7;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Lzi/n9;->G()V

    goto :goto_2

    :cond_6
    if-ne v1, v2, :cond_2

    invoke-virtual {p1}, Lzi/n9;->c()I

    move-result v0

    iput v0, p0, Lzi/z7;->a:I

    invoke-virtual {p0, v3}, Lzi/z7;->e(Z)V

    :goto_2
    invoke-virtual {p1}, Lzi/n9;->E()V

    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NormalConfig("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lzi/z7;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "configItems:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lzi/z7;->b:Ljava/util/List;

    const-string v3, "null"

    if-nez v2, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p0}, Lzi/z7;->i()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lzi/z7;->c:Lzi/w7;

    if-nez v1, :cond_1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

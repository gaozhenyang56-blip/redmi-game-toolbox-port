.class public Lnj/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static h:[Lnj/f;


# instance fields
.field private a:Lkj/g;

.field public b:[Lnj/g;

.field private c:I

.field private d:[I

.field private e:I

.field private f:[I

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnj/e;->a:Lkj/g;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnj/e;->g:Z

    sget-object v1, Lnj/e;->h:[Lnj/f;

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-nez v1, :cond_0

    const/4 v1, 0x3

    new-array v1, v1, [Lnj/f;

    new-instance v4, Lnj/j;

    invoke-direct {v4}, Lnj/j;-><init>()V

    aput-object v4, v1, v0

    new-instance v4, Lnj/b;

    invoke-direct {v4}, Lnj/b;-><init>()V

    aput-object v4, v1, v3

    new-instance v4, Lnj/c;

    invoke-direct {v4}, Lnj/c;-><init>()V

    aput-object v4, v1, v2

    sput-object v1, Lnj/e;->h:[Lnj/f;

    :cond_0
    new-array v1, v2, [Lnj/g;

    new-instance v2, Lnj/i;

    invoke-direct {v2}, Lnj/i;-><init>()V

    aput-object v2, v1, v0

    new-instance v2, Lnj/h;

    invoke-direct {v2}, Lnj/h;-><init>()V

    aput-object v2, v1, v3

    iput-object v1, p0, Lnj/e;->b:[Lnj/g;

    iput v0, p0, Lnj/e;->c:I

    sget-object v1, Lnj/e;->h:[Lnj/f;

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Lnj/e;->d:[I

    :goto_0
    sget-object v1, Lnj/e;->h:[Lnj/f;

    array-length v2, v1

    if-lt v0, v2, :cond_1

    return-void

    :cond_1
    aget-object v1, v1, v0

    invoke-virtual {v1}, Lnj/d;->a()I

    move-result v1

    iget-object v2, p0, Lnj/e;->d:[I

    iget v3, p0, Lnj/e;->c:I

    aput v3, v2, v0

    add-int/2addr v3, v1

    iput v3, p0, Lnj/e;->c:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private a(Lkj/b;)V
    .locals 7

    invoke-virtual {p1}, Lkj/b;->e()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1, v1}, Lkj/b;->o(Ljava/util/Set;)V

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lnj/e;->a:Lkj/g;

    invoke-virtual {v3, v2}, Lkj/g;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-lt v4, v3, :cond_1

    goto :goto_0

    :cond_1
    aget-object v5, v2, v4

    invoke-static {v5}, Lkj/i;->a(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lnj/e;->a:Lkj/g;

    invoke-virtual {v6, v5}, Lkj/g;->c(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method


# virtual methods
.method public b()I
    .locals 2

    iget-boolean v0, p0, Lnj/e;->g:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lnj/e;->e:I

    iget v1, p0, Lnj/e;->c:I

    add-int/2addr v0, v1

    return v0

    :cond_0
    const-string v0, "RuleManager"

    const-string v1, "getRuleCount failed for having not be initialized."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public c()[Lnj/g;
    .locals 1

    iget-object v0, p0, Lnj/e;->b:[Lnj/g;

    return-object v0
.end method

.method public d()V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lnj/e;->e:I

    iget-object v1, p0, Lnj/e;->b:[Lnj/g;

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Lnj/e;->f:[I

    :goto_0
    iget-object v1, p0, Lnj/e;->b:[Lnj/g;

    array-length v2, v1

    if-lt v0, v2, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnj/e;->g:Z

    return-void

    :cond_0
    aget-object v1, v1, v0

    invoke-virtual {v1}, Lnj/d;->a()I

    move-result v1

    iget-object v2, p0, Lnj/e;->f:[I

    iget v3, p0, Lnj/e;->e:I

    aput v3, v2, v0

    add-int/2addr v3, v1

    iput v3, p0, Lnj/e;->e:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public e(Lkj/b;)V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lkj/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lnj/e;->c:I

    new-array v1, v1, [I

    const/4 v2, 0x0

    :goto_0
    sget-object v3, Lnj/e;->h:[Lnj/f;

    array-length v4, v3

    if-lt v2, v4, :cond_0

    invoke-virtual {p1, v0}, Lkj/b;->l(Ljava/util/List;)V

    invoke-virtual {p1, v1}, Lkj/b;->m([I)V

    return-void

    :cond_0
    aget-object v3, v3, v2

    invoke-virtual {v3}, Lnj/f;->f()V

    sget-object v3, Lnj/e;->h:[Lnj/f;

    aget-object v3, v3, v2

    invoke-virtual {v3, v0}, Lnj/f;->e(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sget-object v3, Lnj/e;->h:[Lnj/f;

    aget-object v3, v3, v2

    iget-object v4, p0, Lnj/e;->d:[I

    aget v4, v4, v2

    invoke-virtual {v3, p1, v1, v4}, Lnj/f;->c(Lkj/b;[II)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public f(Lkj/b;)V
    .locals 5

    invoke-virtual {p1}, Lkj/b;->h()Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lnj/e;->a(Lkj/b;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lkj/b;->h()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {p1, v0}, Lkj/b;->p(Ljava/util/List;)V

    :cond_0
    invoke-virtual {p0}, Lnj/e;->b()I

    move-result v0

    new-array v0, v0, [I

    invoke-virtual {p1}, Lkj/b;->f()[I

    move-result-object v0

    invoke-virtual {p0}, Lnj/e;->b()I

    move-result v1

    new-array v1, v1, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget v4, p0, Lnj/e;->c:I

    if-lt v3, v4, :cond_2

    :goto_1
    iget-object v0, p0, Lnj/e;->b:[Lnj/g;

    array-length v3, v0

    if-lt v2, v3, :cond_1

    invoke-virtual {p1, v1}, Lkj/b;->m([I)V

    return-void

    :cond_1
    aget-object v0, v0, v2

    iget v3, p0, Lnj/e;->c:I

    iget-object v4, p0, Lnj/e;->f:[I

    aget v4, v4, v2

    add-int/2addr v3, v4

    invoke-virtual {v0, p1, v1, v3}, Lnj/g;->c(Lkj/b;[II)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    aget v4, v0, v3

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public g(Lkj/g;)V
    .locals 0

    iput-object p1, p0, Lnj/e;->a:Lkj/g;

    return-void
.end method

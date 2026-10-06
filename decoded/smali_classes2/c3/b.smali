.class public Lc3/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/Integer;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Z

.field private f:I

.field private g:Z

.field private h:Lc3/p;


# direct methods
.method public constructor <init>(Lc3/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc3/b;->h:Lc3/p;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc3/b;->a:Ljava/lang/String;

    iput-object p2, p0, Lc3/b;->b:Ljava/lang/Integer;

    iput-object p3, p0, Lc3/b;->c:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lc3/b;->e:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lc3/b;->d:Z

    iput p4, p0, Lc3/b;->f:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc3/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lc3/p;
    .locals 1

    iget-object v0, p0, Lc3/b;->h:Lc3/p;

    return-object v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lc3/b;->d:Z

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lc3/b;->f:I

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc3/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, Lc3/b;

    if-eqz v2, :cond_2

    check-cast p1, Lc3/b;

    iget-object v2, p0, Lc3/b;->c:Ljava/lang/String;

    iget-object v3, p1, Lc3/b;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lc3/b;->f:I

    iget p1, p1, Lc3/b;->f:I

    if-ne v2, p1, :cond_2

    move v0, v1

    :cond_2
    return v0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lc3/b;->e:Z

    return v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lc3/b;->a:Ljava/lang/String;

    return-void
.end method

.method public h(Z)V
    .locals 0

    iput-boolean p1, p0, Lc3/b;->e:Z

    return-void
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lc3/b;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lc3/b;->f:I

    add-int/2addr v0, v1

    return v0
.end method

.method public i(Z)V
    .locals 0

    iput-boolean p1, p0, Lc3/b;->g:Z

    return-void
.end method

.method public j(Z)V
    .locals 0

    iput-boolean p1, p0, Lc3/b;->d:Z

    return-void
.end method

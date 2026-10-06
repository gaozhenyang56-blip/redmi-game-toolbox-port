.class public Lw4/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lw4/b;

.field private b:I

.field private c:I

.field private d:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lw4/b;
    .locals 1

    iget-object v0, p0, Lw4/c;->a:Lw4/b;

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lw4/c;->b:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lw4/c;->c:I

    return v0
.end method

.method public d()J
    .locals 2

    iget-wide v0, p0, Lw4/c;->d:J

    return-wide v0
.end method

.method public e(Lw4/b;)V
    .locals 0

    iput-object p1, p0, Lw4/c;->a:Lw4/b;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lw4/c;

    iget-object v0, p0, Lw4/c;->a:Lw4/b;

    iget-object p1, p1, Lw4/c;->a:Lw4/b;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public f(I)V
    .locals 0

    iput p1, p0, Lw4/c;->b:I

    return-void
.end method

.method public g(I)V
    .locals 0

    iput p1, p0, Lw4/c;->c:I

    return-void
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lw4/c;->a:Lw4/b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

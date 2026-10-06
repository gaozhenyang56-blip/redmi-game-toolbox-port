.class public Ltc/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:J

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-wide v0, p0, Ltc/h;->c:J

    return-wide v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltc/h;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Ltc/h;->a:I

    return v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Ltc/h;->d:Z

    return v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Ltc/h;->e:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Ltc/h;

    iget v2, p0, Ltc/h;->a:I

    iget v3, p1, Ltc/h;->a:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Ltc/h;->b:Ljava/lang/String;

    iget-object v3, p1, Ltc/h;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Ltc/h;->e:Z

    iget-boolean p1, p1, Ltc/h;->e:Z

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public f(Z)V
    .locals 0

    iput-boolean p1, p0, Ltc/h;->d:Z

    return-void
.end method

.method public g(J)V
    .locals 0

    iput-wide p1, p0, Ltc/h;->c:J

    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltc/h;->b:Ljava/lang/String;

    return-void
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Ltc/h;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Ltc/h;->b:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Ltc/h;->e:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public i(Z)V
    .locals 0

    iput-boolean p1, p0, Ltc/h;->e:Z

    return-void
.end method

.method public j(I)V
    .locals 0

    iput p1, p0, Ltc/h;->a:I

    return-void
.end method

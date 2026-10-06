.class Lbi/k$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbi/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field public a:Lbi/k$s;

.field public b:Lbi/k$q;

.field public c:J

.field public d:I

.field public e:J

.field public f:I

.field private g:J

.field private h:I

.field private i:J


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lbi/k$d;->d:I

    return v0
.end method

.method public b()Lbi/k$s;
    .locals 1

    iget-object v0, p0, Lbi/k$d;->a:Lbi/k$s;

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lbi/k$d;->h:I

    return v0
.end method

.method public d()J
    .locals 2

    iget-wide v0, p0, Lbi/k$d;->g:J

    return-wide v0
.end method

.method public e()J
    .locals 2

    iget-wide v0, p0, Lbi/k$d;->i:J

    return-wide v0
.end method

.method public f()J
    .locals 2

    iget-wide v0, p0, Lbi/k$d;->c:J

    return-wide v0
.end method

.method public g()J
    .locals 2

    iget-wide v0, p0, Lbi/k$d;->e:J

    return-wide v0
.end method

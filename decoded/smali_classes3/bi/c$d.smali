.class public Lbi/c$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbi/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field private a:I

.field private b:D

.field private c:D

.field private d:D

.field private e:Lbi/c$f;

.field private f:Lbi/c$e;

.field private g:Lbi/c$c;

.field private h:I


# direct methods
.method public constructor <init>(DDD)V
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-static {p5, p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lbi/c$d;-><init>(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lbi/c$d;->h:I

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lbi/c$d;->b:D

    iget p1, p0, Lbi/c$d;->h:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lbi/c$d;->h:I

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    iput-wide p1, p0, Lbi/c$d;->c:D

    iget p1, p0, Lbi/c$d;->h:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lbi/c$d;->h:I

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    iput-wide p1, p0, Lbi/c$d;->d:D

    iget p1, p0, Lbi/c$d;->h:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lbi/c$d;->h:I

    :cond_2
    const/16 p1, 0x3e8

    iput p1, p0, Lbi/c$d;->a:I

    sget-object p1, Lbi/c$f;->b:Lbi/c$f;

    iput-object p1, p0, Lbi/c$d;->e:Lbi/c$f;

    sget-object p1, Lbi/c$e;->b:Lbi/c$e;

    iput-object p1, p0, Lbi/c$d;->f:Lbi/c$e;

    return-void
.end method


# virtual methods
.method public a()Lbi/c$e;
    .locals 1

    iget-object v0, p0, Lbi/c$d;->f:Lbi/c$e;

    return-object v0
.end method

.method public b()Lbi/c$c;
    .locals 1

    iget-object v0, p0, Lbi/c$d;->g:Lbi/c$c;

    return-object v0
.end method

.method public c()D
    .locals 2

    iget-wide v0, p0, Lbi/c$d;->b:D

    return-wide v0
.end method

.method public d()D
    .locals 2

    iget-wide v0, p0, Lbi/c$d;->c:D

    return-wide v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lbi/c$d;->a:I

    return v0
.end method

.method public f()D
    .locals 2

    iget-wide v0, p0, Lbi/c$d;->d:D

    return-wide v0
.end method

.method public g()Lbi/c$f;
    .locals 1

    iget-object v0, p0, Lbi/c$d;->e:Lbi/c$f;

    return-object v0
.end method

.method public h(Lbi/c$e;)V
    .locals 0

    iput-object p1, p0, Lbi/c$d;->f:Lbi/c$e;

    iget p1, p0, Lbi/c$d;->h:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lbi/c$d;->h:I

    return-void
.end method

.method public i(Lbi/c$c;)V
    .locals 0

    iput-object p1, p0, Lbi/c$d;->g:Lbi/c$c;

    iget p1, p0, Lbi/c$d;->h:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lbi/c$d;->h:I

    return-void
.end method

.method public j(I)V
    .locals 0

    iput p1, p0, Lbi/c$d;->a:I

    iget p1, p0, Lbi/c$d;->h:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Lbi/c$d;->h:I

    return-void
.end method

.method public k(Lbi/c$f;)V
    .locals 0

    iput-object p1, p0, Lbi/c$d;->e:Lbi/c$f;

    iget p1, p0, Lbi/c$d;->h:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lbi/c$d;->h:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "in IzatGeofence: toString responsiveness is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lbi/c$d;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; latitude is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lbi/c$d;->b:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "; longitude is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lbi/c$d;->c:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "; radius is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lbi/c$d;->d:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "; transitionTypes is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbi/c$d;->e:Lbi/c$f;

    invoke-virtual {v1}, Lbi/c$f;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; confidence is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbi/c$d;->f:Lbi/c$e;

    invoke-virtual {v1}, Lbi/c$e;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; dwellTimeMask is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbi/c$d;->g:Lbi/c$c;

    invoke-virtual {v1}, Lbi/c$c;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; dwellTime is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbi/c$d;->g:Lbi/c$c;

    invoke-virtual {v1}, Lbi/c$c;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; mask is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lbi/c$d;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

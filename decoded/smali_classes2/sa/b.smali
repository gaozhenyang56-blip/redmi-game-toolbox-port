.class public Lsa/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:J

.field private e:Ljava/lang/String;

.field private f:Lsa/c;

.field private g:Z


# direct methods
.method public constructor <init>(ILsa/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lsa/c;->c:Lsa/c;

    iput p1, p0, Lsa/b;->a:I

    iput-object p2, p0, Lsa/b;->f:Lsa/c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsa/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lsa/c;->c:Lsa/c;

    iput-object p1, p0, Lsa/b;->b:Ljava/lang/String;

    iput-object p2, p0, Lsa/b;->c:Ljava/lang/String;

    iput-object p4, p0, Lsa/b;->f:Lsa/c;

    iput-object p3, p0, Lsa/b;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lsa/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lsa/c;->c:Lsa/c;

    iput-object p1, p0, Lsa/b;->b:Ljava/lang/String;

    iput-object p2, p0, Lsa/b;->f:Lsa/c;

    return-void
.end method

.method public constructor <init>(Lsa/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lsa/c;->c:Lsa/c;

    iput-object p1, p0, Lsa/b;->f:Lsa/c;

    invoke-virtual {p1}, Lsa/c;->a()I

    move-result p1

    iput p1, p0, Lsa/b;->a:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsa/b;->e:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lsa/c;
    .locals 1

    iget-object v0, p0, Lsa/b;->f:Lsa/c;

    return-object v0
.end method

.method public c()J
    .locals 2

    iget-wide v0, p0, Lsa/b;->d:J

    return-wide v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsa/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsa/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lsa/b;->a:I

    return v0
.end method

.method public g(Z)Lsa/b;
    .locals 0

    iput-boolean p1, p0, Lsa/b;->g:Z

    return-object p0
.end method

.method public h(J)V
    .locals 0

    iput-wide p1, p0, Lsa/b;->d:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsa/b;->f:Lsa/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Ls5/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Z

.field private f:Z

.field private g:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Ls5/c;->a:Ljava/lang/String;

    iput-object v0, p0, Ls5/c;->c:Ljava/lang/String;

    iput p1, p0, Ls5/c;->g:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls5/c;->a:Ljava/lang/String;

    iput-object p2, p0, Ls5/c;->b:Ljava/lang/String;

    iput-object p3, p0, Ls5/c;->c:Ljava/lang/String;

    iput p4, p0, Ls5/c;->d:I

    iput-boolean p5, p0, Ls5/c;->e:Z

    iput p6, p0, Ls5/c;->g:I

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Ls5/c;->e:Z

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ls5/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ls5/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Ls5/c;->f:Z

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ls5/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Ls5/c;->g:I

    return v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Ls5/c;->d:I

    return v0
.end method

.method public h(Z)V
    .locals 0

    iput-boolean p1, p0, Ls5/c;->e:Z

    return-void
.end method

.method public i(Z)V
    .locals 0

    iput-boolean p1, p0, Ls5/c;->f:Z

    return-void
.end method

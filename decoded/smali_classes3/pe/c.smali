.class public Lpe/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:Z

.field private f:Lnb/d;

.field private g:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lpe/c;->g:I

    return-void
.end method

.method public constructor <init>(Lnb/d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lpe/c;->g:I

    iput-object p1, p0, Lpe/c;->f:Lnb/d;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lpe/c;->e:Z

    return v0
.end method

.method public b()Lnb/d;
    .locals 1

    iget-object v0, p0, Lpe/c;->f:Lnb/d;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lpe/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lpe/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lpe/c;->g:I

    return v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lpe/c;->c:I

    return v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lpe/c;->d:I

    return v0
.end method

.method public h(Z)V
    .locals 0

    iput-boolean p1, p0, Lpe/c;->e:Z

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lpe/c;->b:Ljava/lang/String;

    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lpe/c;->a:Ljava/lang/String;

    return-void
.end method

.method public k(I)V
    .locals 0

    iput p1, p0, Lpe/c;->g:I

    return-void
.end method

.method public l(I)V
    .locals 0

    iput p1, p0, Lpe/c;->c:I

    return-void
.end method

.method public m(I)V
    .locals 0

    iput p1, p0, Lpe/c;->d:I

    return-void
.end method

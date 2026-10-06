.class public Ldc/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ldc/c;->h:I

    iput-object p1, p0, Ldc/c;->a:Ljava/lang/String;

    iput p2, p0, Ldc/c;->b:I

    iput p3, p0, Ldc/c;->c:I

    iput p4, p0, Ldc/c;->d:I

    iput p5, p0, Ldc/c;->e:I

    iput p6, p0, Ldc/c;->f:I

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget v0, p0, Ldc/c;->g:I

    or-int/2addr p1, v0

    iput p1, p0, Ldc/c;->g:I

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Ldc/c;->f:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Ldc/c;->d:I

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Ldc/c;->g:I

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Ldc/c;->h:I

    if-nez v0, :cond_0

    const v0, 0x7f080e53

    :cond_0
    return v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Ldc/c;->c:I

    return v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Ldc/c;->b:I

    return v0
.end method

.method public h(I)V
    .locals 0

    iput p1, p0, Ldc/c;->h:I

    return-void
.end method

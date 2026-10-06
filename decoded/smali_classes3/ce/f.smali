.class public Lce/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lce/f;->a:I

    iput v0, p0, Lce/f;->b:I

    iput v0, p0, Lce/f;->c:I

    iput v0, p0, Lce/f;->d:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lce/f;->c:I

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lce/f;->b:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lce/f;->a:I

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lce/f;->d:I

    return v0
.end method

.method public e(I)V
    .locals 0

    iput p1, p0, Lce/f;->c:I

    return-void
.end method

.method public f(I)V
    .locals 0

    iput p1, p0, Lce/f;->b:I

    return-void
.end method

.method public g(I)V
    .locals 0

    iput p1, p0, Lce/f;->a:I

    return-void
.end method

.method public h(I)V
    .locals 0

    iput p1, p0, Lce/f;->d:I

    return-void
.end method

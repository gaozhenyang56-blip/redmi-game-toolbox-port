.class public Lh3/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:F

.field private final d:Z

.field private e:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IFZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh3/n;->a:Ljava/lang/String;

    iput p2, p0, Lh3/n;->b:I

    iput p3, p0, Lh3/n;->c:F

    iput-boolean p4, p0, Lh3/n;->d:Z

    iput p5, p0, Lh3/n;->e:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lh3/n;->e:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lh3/n;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()F
    .locals 1

    iget v0, p0, Lh3/n;->c:F

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lh3/n;->b:I

    return v0
.end method

.method public e()Z
    .locals 2

    iget v0, p0, Lh3/n;->c:F

    sget v1, Lx6/a;->e:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lh3/n;->d:Z

    return v0
.end method

.method public g(F)V
    .locals 0

    iput p1, p0, Lh3/n;->c:F

    return-void
.end method

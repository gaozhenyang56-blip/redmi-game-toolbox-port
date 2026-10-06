.class Lul/b$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lul/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lul/b$b$b;,
        Lul/b$b$a;
    }
.end annotation


# instance fields
.field a:Ltl/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltl/b<",
            "*>;"
        }
    .end annotation
.end field

.field b:I

.field private final c:I

.field private final d:I

.field e:F

.field f:I

.field private g:Lul/b$b$b;

.field private h:F

.field private i:F

.field private j:J

.field private k:Lul/b$b$a;


# direct methods
.method constructor <init>(Ltl/b;IF)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltl/b<",
            "*>;IF)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lul/b$b$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lul/b$b$a;-><init>(Lul/b$b;Lul/b$a;)V

    iput-object v0, p0, Lul/b$b;->k:Lul/b$b$a;

    iput-object p1, p0, Lul/b$b;->a:Ltl/b;

    const v0, -0x800001

    invoke-virtual {p1, v0}, Ltl/b;->l(F)Ltl/b;

    iget-object p1, p0, Lul/b$b;->a:Ltl/b;

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    invoke-virtual {p1, v0}, Ltl/b;->k(F)Ltl/b;

    iput p2, p0, Lul/b$b;->b:I

    iput p3, p0, Lul/b$b;->e:F

    const p1, 0x7fffffff

    const/high16 v0, -0x80000000

    if-lez p2, :cond_0

    add-int/2addr v0, p2

    goto :goto_0

    :cond_0
    if-gez p2, :cond_1

    add-int/2addr p1, p2

    :cond_1
    :goto_0
    iput v0, p0, Lul/b$b;->c:I

    iput p1, p0, Lul/b$b;->d:I

    iget-object p1, p0, Lul/b$b;->a:Ltl/b;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ltl/b;->o(F)Ltl/b;

    iget-object p1, p0, Lul/b$b;->a:Ltl/b;

    invoke-virtual {p1, p3}, Ltl/b;->p(F)Ltl/b;

    return-void
.end method

.method static synthetic a(Lul/b$b;)F
    .locals 0

    iget p0, p0, Lul/b$b;->h:F

    return p0
.end method

.method static synthetic b(Lul/b$b;)F
    .locals 0

    iget p0, p0, Lul/b$b;->i:F

    return p0
.end method


# virtual methods
.method c()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lul/b$b;->j:J

    iget-object v0, p0, Lul/b$b;->a:Ltl/b;

    invoke-virtual {v0}, Ltl/b;->b()V

    iget-object v0, p0, Lul/b$b;->a:Ltl/b;

    iget-object v1, p0, Lul/b$b;->k:Lul/b$b$a;

    invoke-virtual {v0, v1}, Ltl/b;->j(Ltl/b$r;)V

    return-void
.end method

.method d()Z
    .locals 3

    iget-object v0, p0, Lul/b$b;->g:Lul/b$b$b;

    if-eqz v0, :cond_0

    iget v1, p0, Lul/b$b;->f:I

    int-to-float v1, v1

    iget v2, p0, Lul/b$b;->e:F

    invoke-interface {v0, v1, v2}, Lul/b$b$b;->a(FF)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method e()Ltl/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltl/b<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lul/b$b;->a:Ltl/b;

    return-object v0
.end method

.method f(I)I
    .locals 1

    iget v0, p0, Lul/b$b;->b:I

    sub-int/2addr p1, v0

    return p1
.end method

.method g(I)V
    .locals 1

    iget v0, p0, Lul/b$b;->d:I

    if-le p1, v0, :cond_0

    move p1, v0

    :cond_0
    iget v0, p0, Lul/b$b;->b:I

    sub-int/2addr p1, v0

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p1, p1

    iget-object v0, p0, Lul/b$b;->a:Ltl/b;

    invoke-virtual {v0, p1}, Ltl/b;->k(F)Ltl/b;

    iput p1, p0, Lul/b$b;->i:F

    return-void
.end method

.method h(I)V
    .locals 1

    iget v0, p0, Lul/b$b;->c:I

    if-ge p1, v0, :cond_0

    move p1, v0

    :cond_0
    iget v0, p0, Lul/b$b;->b:I

    sub-int/2addr p1, v0

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    iget-object v0, p0, Lul/b$b;->a:Ltl/b;

    invoke-virtual {v0, p1}, Ltl/b;->l(F)Ltl/b;

    iput p1, p0, Lul/b$b;->h:F

    return-void
.end method

.method i(Lul/b$b$b;)V
    .locals 0

    iput-object p1, p0, Lul/b$b;->g:Lul/b$b$b;

    return-void
.end method

.method j()V
    .locals 2

    iget-object v0, p0, Lul/b$b;->a:Ltl/b;

    iget-object v1, p0, Lul/b$b;->k:Lul/b$b$a;

    invoke-virtual {v0, v1}, Ltl/b;->a(Ltl/b$r;)Ltl/b;

    iget-object v0, p0, Lul/b$b;->a:Ltl/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ltl/b;->r(Z)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lul/b$b;->j:J

    return-void
.end method

.method k()Z
    .locals 7

    iget-wide v0, p0, Lul/b$b;->j:J

    invoke-static {}, Lvm/a;->a()J

    move-result-wide v2

    cmp-long v0, v2, v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const-string v0, "update done in this frame, dropping current update request"

    invoke-static {v0}, Lul/c;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lul/b$b;->a:Ltl/b;

    invoke-virtual {v0}, Ltl/b;->g()Z

    move-result v0

    xor-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lul/b$b;->a:Ltl/b;

    invoke-virtual {v0, v2, v3}, Ltl/b;->doAnimationFrame(J)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lul/b$b;->a:Ltl/b;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    iget v5, p0, Lul/b$b;->f:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x2

    iget v5, p0, Lul/b$b;->e:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v1

    const-string v1, "%s finishing value(%d) velocity(%f)"

    invoke-static {v1, v4}, Lul/c;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lul/b$b;->a:Ltl/b;

    iget-object v4, p0, Lul/b$b;->k:Lul/b$b$a;

    invoke-virtual {v1, v4}, Ltl/b;->j(Ltl/b$r;)V

    :cond_1
    iput-wide v2, p0, Lul/b$b;->j:J

    return v0
.end method

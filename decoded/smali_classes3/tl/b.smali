.class public abstract Ltl/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltl/a$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltl/b$r;,
        Ltl/b$q;,
        Ltl/b$p;,
        Ltl/b$s;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ltl/b<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Ltl/a$b;"
    }
.end annotation


# static fields
.field public static final A:Ltl/b$s;

.field public static final n:Ltl/b$s;

.field public static final o:Ltl/b$s;

.field public static final p:Ltl/b$s;

.field public static final q:Ltl/b$s;

.field public static final r:Ltl/b$s;

.field public static final s:Ltl/b$s;

.field public static final t:Ltl/b$s;

.field public static final u:Ltl/b$s;

.field public static final v:Ltl/b$s;

.field public static final w:Ltl/b$s;

.field public static final x:Ltl/b$s;

.field public static final y:Ltl/b$s;

.field public static final z:Ltl/b$s;


# instance fields
.field a:F

.field b:F

.field c:Z

.field final d:Ljava/lang/Object;

.field final e:Ltl/d;

.field f:Z

.field g:F

.field h:F

.field private i:J

.field private j:F

.field private k:J

.field private final l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ltl/b$q;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ltl/b$r;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ltl/b$g;

    const-string v1, "translationX"

    invoke-direct {v0, v1}, Ltl/b$g;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltl/b;->n:Ltl/b$s;

    new-instance v0, Ltl/b$h;

    const-string v1, "translationY"

    invoke-direct {v0, v1}, Ltl/b$h;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltl/b;->o:Ltl/b$s;

    new-instance v0, Ltl/b$i;

    const-string v1, "translationZ"

    invoke-direct {v0, v1}, Ltl/b$i;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltl/b;->p:Ltl/b$s;

    new-instance v0, Ltl/b$j;

    const-string v1, "scaleX"

    invoke-direct {v0, v1}, Ltl/b$j;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltl/b;->q:Ltl/b$s;

    new-instance v0, Ltl/b$k;

    const-string v1, "scaleY"

    invoke-direct {v0, v1}, Ltl/b$k;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltl/b;->r:Ltl/b$s;

    new-instance v0, Ltl/b$l;

    const-string v1, "rotation"

    invoke-direct {v0, v1}, Ltl/b$l;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltl/b;->s:Ltl/b$s;

    new-instance v0, Ltl/b$m;

    const-string v1, "rotationX"

    invoke-direct {v0, v1}, Ltl/b$m;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltl/b;->t:Ltl/b$s;

    new-instance v0, Ltl/b$n;

    const-string v1, "rotationY"

    invoke-direct {v0, v1}, Ltl/b$n;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltl/b;->u:Ltl/b$s;

    new-instance v0, Ltl/b$o;

    const-string v1, "x"

    invoke-direct {v0, v1}, Ltl/b$o;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltl/b;->v:Ltl/b$s;

    new-instance v0, Ltl/b$a;

    const-string v1, "y"

    invoke-direct {v0, v1}, Ltl/b$a;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltl/b;->w:Ltl/b$s;

    new-instance v0, Ltl/b$b;

    const-string v1, "z"

    invoke-direct {v0, v1}, Ltl/b$b;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltl/b;->x:Ltl/b$s;

    new-instance v0, Ltl/b$c;

    const-string v1, "alpha"

    invoke-direct {v0, v1}, Ltl/b$c;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltl/b;->y:Ltl/b$s;

    new-instance v0, Ltl/b$d;

    const-string v1, "scrollX"

    invoke-direct {v0, v1}, Ltl/b$d;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltl/b;->z:Ltl/b$s;

    new-instance v0, Ltl/b$e;

    const-string v1, "scrollY"

    invoke-direct {v0, v1}, Ltl/b$e;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltl/b;->A:Ltl/b$s;

    return-void
.end method

.method constructor <init>(Ltl/e;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ltl/b;->a:F

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Ltl/b;->b:F

    const/4 v1, 0x0

    iput-boolean v1, p0, Ltl/b;->c:Z

    iput-boolean v1, p0, Ltl/b;->f:Z

    iput v0, p0, Ltl/b;->g:F

    neg-float v0, v0

    iput v0, p0, Ltl/b;->h:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ltl/b;->i:J

    iput-wide v0, p0, Ltl/b;->k:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltl/b;->l:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltl/b;->m:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Ltl/b;->d:Ljava/lang/Object;

    new-instance v0, Ltl/b$f;

    const-string v1, "FloatValueHolder"

    invoke-direct {v0, p0, v1, p1}, Ltl/b$f;-><init>(Ltl/b;Ljava/lang/String;Ltl/e;)V

    iput-object v0, p0, Ltl/b;->e:Ltl/d;

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Ltl/b;->j:F

    return-void
.end method

.method private c(Z)V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Ltl/b;->f:Z

    invoke-static {}, Ltl/a;->g()Ltl/a;

    move-result-object v1

    invoke-virtual {v1, p0}, Ltl/a;->l(Ltl/a$b;)V

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Ltl/b;->i:J

    iput-boolean v0, p0, Ltl/b;->c:Z

    :goto_0
    iget-object v1, p0, Ltl/b;->l:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Ltl/b;->l:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ltl/b;->l:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltl/b$q;

    iget v2, p0, Ltl/b;->b:F

    iget v3, p0, Ltl/b;->a:F

    invoke-interface {v1, p0, p1, v2, v3}, Ltl/b$q;->a(Ltl/b;ZFF)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Ltl/b;->l:Ljava/util/ArrayList;

    invoke-static {p1}, Ltl/b;->i(Ljava/util/ArrayList;)V

    return-void
.end method

.method private e()F
    .locals 2

    iget-object v0, p0, Ltl/b;->e:Ltl/d;

    iget-object v1, p0, Ltl/b;->d:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ltl/d;->a(Ljava/lang/Object;)F

    move-result v0

    return v0
.end method

.method private static h(Ljava/util/ArrayList;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;TT;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private static i(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private s(Z)V
    .locals 2

    iget-boolean v0, p0, Ltl/b;->f:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Ltl/b;->f:Z

    iget-boolean v0, p0, Ltl/b;->c:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Ltl/b;->e()F

    move-result v0

    iput v0, p0, Ltl/b;->b:F

    :cond_0
    iget v0, p0, Ltl/b;->b:F

    iget v1, p0, Ltl/b;->g:F

    cmpl-float v1, v0, v1

    if-gtz v1, :cond_1

    iget v1, p0, Ltl/b;->h:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_1

    if-nez p1, :cond_2

    invoke-static {}, Ltl/a;->g()Ltl/a;

    move-result-object p1

    iget-wide v0, p0, Ltl/b;->k:J

    invoke-virtual {p1, p0, v0, v1}, Ltl/a;->c(Ltl/a$b;J)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Starting value need to be in between min value and max value"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Ltl/b$r;)Ltl/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltl/b$r;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p0}, Ltl/b;->g()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ltl/b;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ltl/b;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0

    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Error: Update listeners must be added beforethe miuix.animation."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()V
    .locals 2

    invoke-virtual {p0}, Ltl/b;->d()Ltl/a;

    move-result-object v0

    invoke-virtual {v0}, Ltl/a;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Ltl/b;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ltl/b;->c(Z)V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Animations may only be canceled from the same thread as the animation handler"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d()Ltl/a;
    .locals 1

    invoke-static {}, Ltl/a;->g()Ltl/a;

    move-result-object v0

    return-object v0
.end method

.method public doAnimationFrame(J)Z
    .locals 8

    invoke-static {}, Ltl/a;->g()Ltl/a;

    move-result-object v0

    invoke-virtual {v0}, Ltl/a;->f()J

    move-result-wide v0

    iget-wide v2, p0, Ltl/b;->i:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    const/4 v7, 0x0

    if-nez v6, :cond_0

    iput-wide p1, p0, Ltl/b;->i:J

    iget p1, p0, Ltl/b;->b:F

    invoke-virtual {p0, p1}, Ltl/b;->n(F)V

    return v7

    :cond_0
    cmp-long v4, v0, v4

    if-nez v4, :cond_1

    sub-long v0, p1, v2

    :cond_1
    iput-wide p1, p0, Ltl/b;->i:J

    invoke-virtual {p0, v0, v1}, Ltl/b;->t(J)Z

    move-result p1

    iget p2, p0, Ltl/b;->b:F

    iget v0, p0, Ltl/b;->g:F

    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    move-result p2

    iput p2, p0, Ltl/b;->b:F

    iget v0, p0, Ltl/b;->h:F

    invoke-static {p2, v0}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iput p2, p0, Ltl/b;->b:F

    invoke-virtual {p0, p2}, Ltl/b;->n(F)V

    if-eqz p1, :cond_2

    invoke-direct {p0, v7}, Ltl/b;->c(Z)V

    :cond_2
    return p1
.end method

.method f()F
    .locals 2

    iget v0, p0, Ltl/b;->j:F

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float/2addr v0, v1

    return v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Ltl/b;->f:Z

    return v0
.end method

.method public j(Ltl/b$r;)V
    .locals 1

    iget-object v0, p0, Ltl/b;->m:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Ltl/b;->h(Ljava/util/ArrayList;Ljava/lang/Object;)V

    return-void
.end method

.method public k(F)Ltl/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    iput p1, p0, Ltl/b;->g:F

    return-object p0
.end method

.method public l(F)Ltl/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    iput p1, p0, Ltl/b;->h:F

    return-object p0
.end method

.method public m(F)Ltl/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    iput p1, p0, Ltl/b;->j:F

    const/high16 v0, 0x3f400000    # 0.75f

    mul-float/2addr p1, v0

    invoke-virtual {p0, p1}, Ltl/b;->q(F)V

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Minimum visible change must be positive."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method n(F)V
    .locals 3

    iget-object v0, p0, Ltl/b;->e:Ltl/d;

    iget-object v1, p0, Ltl/b;->d:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Ltl/d;->b(Ljava/lang/Object;F)V

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Ltl/b;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Ltl/b;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltl/b;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltl/b$r;

    iget v1, p0, Ltl/b;->b:F

    iget v2, p0, Ltl/b;->a:F

    invoke-interface {v0, p0, v1, v2}, Ltl/b$r;->a(Ltl/b;FF)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Ltl/b;->m:Ljava/util/ArrayList;

    invoke-static {p1}, Ltl/b;->i(Ljava/util/ArrayList;)V

    return-void
.end method

.method public o(F)Ltl/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    iput p1, p0, Ltl/b;->b:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Ltl/b;->c:Z

    return-object p0
.end method

.method public p(F)Ltl/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    iput p1, p0, Ltl/b;->a:F

    return-object p0
.end method

.method abstract q(F)V
.end method

.method public r(Z)V
    .locals 1

    invoke-virtual {p0}, Ltl/b;->d()Ltl/a;

    move-result-object v0

    invoke-virtual {v0}, Ltl/a;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Ltl/b;->f:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Ltl/b;->s(Z)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Landroid/util/AndroidRuntimeException;

    const-string v0, "Animations may only be started on the main thread"

    invoke-direct {p1, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method abstract t(J)Z
.end method

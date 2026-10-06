.class public Lk1/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk1/b;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lk1/f;

.field private final c:Lj1/c;

.field private final d:Lj1/d;

.field private final e:Lj1/f;

.field private final f:Lj1/f;

.field private final g:Lj1/b;

.field private final h:Lk1/p$b;

.field private final i:Lk1/p$c;

.field private final j:F

.field private final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lj1/b;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Lj1/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final m:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lk1/f;Lj1/c;Lj1/d;Lj1/f;Lj1/f;Lj1/b;Lk1/p$b;Lk1/p$c;FLjava/util/List;Lj1/b;Z)V
    .locals 0
    .param p12    # Lj1/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lk1/f;",
            "Lj1/c;",
            "Lj1/d;",
            "Lj1/f;",
            "Lj1/f;",
            "Lj1/b;",
            "Lk1/p$b;",
            "Lk1/p$c;",
            "F",
            "Ljava/util/List<",
            "Lj1/b;",
            ">;",
            "Lj1/b;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk1/e;->a:Ljava/lang/String;

    iput-object p2, p0, Lk1/e;->b:Lk1/f;

    iput-object p3, p0, Lk1/e;->c:Lj1/c;

    iput-object p4, p0, Lk1/e;->d:Lj1/d;

    iput-object p5, p0, Lk1/e;->e:Lj1/f;

    iput-object p6, p0, Lk1/e;->f:Lj1/f;

    iput-object p7, p0, Lk1/e;->g:Lj1/b;

    iput-object p8, p0, Lk1/e;->h:Lk1/p$b;

    iput-object p9, p0, Lk1/e;->i:Lk1/p$c;

    iput p10, p0, Lk1/e;->j:F

    iput-object p11, p0, Lk1/e;->k:Ljava/util/List;

    iput-object p12, p0, Lk1/e;->l:Lj1/b;

    iput-boolean p13, p0, Lk1/e;->m:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/LottieDrawable;Ll1/a;)Lf1/c;
    .locals 1

    new-instance v0, Lf1/i;

    invoke-direct {v0, p1, p2, p0}, Lf1/i;-><init>(Lcom/airbnb/lottie/LottieDrawable;Ll1/a;Lk1/e;)V

    return-object v0
.end method

.method public b()Lk1/p$b;
    .locals 1

    iget-object v0, p0, Lk1/e;->h:Lk1/p$b;

    return-object v0
.end method

.method public c()Lj1/b;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lk1/e;->l:Lj1/b;

    return-object v0
.end method

.method public d()Lj1/f;
    .locals 1

    iget-object v0, p0, Lk1/e;->f:Lj1/f;

    return-object v0
.end method

.method public e()Lj1/c;
    .locals 1

    iget-object v0, p0, Lk1/e;->c:Lj1/c;

    return-object v0
.end method

.method public f()Lk1/f;
    .locals 1

    iget-object v0, p0, Lk1/e;->b:Lk1/f;

    return-object v0
.end method

.method public g()Lk1/p$c;
    .locals 1

    iget-object v0, p0, Lk1/e;->i:Lk1/p$c;

    return-object v0
.end method

.method public h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lj1/b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lk1/e;->k:Ljava/util/List;

    return-object v0
.end method

.method public i()F
    .locals 1

    iget v0, p0, Lk1/e;->j:F

    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lk1/e;->a:Ljava/lang/String;

    return-object v0
.end method

.method public k()Lj1/d;
    .locals 1

    iget-object v0, p0, Lk1/e;->d:Lj1/d;

    return-object v0
.end method

.method public l()Lj1/f;
    .locals 1

    iget-object v0, p0, Lk1/e;->e:Lj1/f;

    return-object v0
.end method

.method public m()Lj1/b;
    .locals 1

    iget-object v0, p0, Lk1/e;->g:Lj1/b;

    return-object v0
.end method

.method public n()Z
    .locals 1

    iget-boolean v0, p0, Lk1/e;->m:Z

    return v0
.end method

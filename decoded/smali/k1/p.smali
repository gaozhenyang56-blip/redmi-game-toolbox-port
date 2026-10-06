.class public Lk1/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk1/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk1/p$c;,
        Lk1/p$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lj1/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lj1/b;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lj1/a;

.field private final e:Lj1/d;

.field private final f:Lj1/b;

.field private final g:Lk1/p$b;

.field private final h:Lk1/p$c;

.field private final i:F

.field private final j:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lj1/b;Ljava/util/List;Lj1/a;Lj1/d;Lj1/b;Lk1/p$b;Lk1/p$c;FZ)V
    .locals 0
    .param p2    # Lj1/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lj1/b;",
            "Ljava/util/List<",
            "Lj1/b;",
            ">;",
            "Lj1/a;",
            "Lj1/d;",
            "Lj1/b;",
            "Lk1/p$b;",
            "Lk1/p$c;",
            "FZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk1/p;->a:Ljava/lang/String;

    iput-object p2, p0, Lk1/p;->b:Lj1/b;

    iput-object p3, p0, Lk1/p;->c:Ljava/util/List;

    iput-object p4, p0, Lk1/p;->d:Lj1/a;

    iput-object p5, p0, Lk1/p;->e:Lj1/d;

    iput-object p6, p0, Lk1/p;->f:Lj1/b;

    iput-object p7, p0, Lk1/p;->g:Lk1/p$b;

    iput-object p8, p0, Lk1/p;->h:Lk1/p$c;

    iput p9, p0, Lk1/p;->i:F

    iput-boolean p10, p0, Lk1/p;->j:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/LottieDrawable;Ll1/a;)Lf1/c;
    .locals 1

    new-instance v0, Lf1/r;

    invoke-direct {v0, p1, p2, p0}, Lf1/r;-><init>(Lcom/airbnb/lottie/LottieDrawable;Ll1/a;Lk1/p;)V

    return-object v0
.end method

.method public b()Lk1/p$b;
    .locals 1

    iget-object v0, p0, Lk1/p;->g:Lk1/p$b;

    return-object v0
.end method

.method public c()Lj1/a;
    .locals 1

    iget-object v0, p0, Lk1/p;->d:Lj1/a;

    return-object v0
.end method

.method public d()Lj1/b;
    .locals 1

    iget-object v0, p0, Lk1/p;->b:Lj1/b;

    return-object v0
.end method

.method public e()Lk1/p$c;
    .locals 1

    iget-object v0, p0, Lk1/p;->h:Lk1/p$c;

    return-object v0
.end method

.method public f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lj1/b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lk1/p;->c:Ljava/util/List;

    return-object v0
.end method

.method public g()F
    .locals 1

    iget v0, p0, Lk1/p;->i:F

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lk1/p;->a:Ljava/lang/String;

    return-object v0
.end method

.method public i()Lj1/d;
    .locals 1

    iget-object v0, p0, Lk1/p;->e:Lj1/d;

    return-object v0
.end method

.method public j()Lj1/b;
    .locals 1

    iget-object v0, p0, Lk1/p;->f:Lj1/b;

    return-object v0
.end method

.method public k()Z
    .locals 1

    iget-boolean v0, p0, Lk1/p;->j:Z

    return v0
.end method

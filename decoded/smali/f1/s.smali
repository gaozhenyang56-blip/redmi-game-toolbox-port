.class public Lf1/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf1/c;
.implements Lg1/a$b;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Z

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lg1/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lk1/q$a;

.field private final e:Lg1/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg1/a<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lg1/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg1/a<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lg1/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg1/a<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ll1/a;Lk1/q;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lf1/s;->c:Ljava/util/List;

    invoke-virtual {p2}, Lk1/q;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lf1/s;->a:Ljava/lang/String;

    invoke-virtual {p2}, Lk1/q;->g()Z

    move-result v0

    iput-boolean v0, p0, Lf1/s;->b:Z

    invoke-virtual {p2}, Lk1/q;->f()Lk1/q$a;

    move-result-object v0

    iput-object v0, p0, Lf1/s;->d:Lk1/q$a;

    invoke-virtual {p2}, Lk1/q;->e()Lj1/b;

    move-result-object v0

    invoke-virtual {v0}, Lj1/b;->a()Lg1/a;

    move-result-object v0

    iput-object v0, p0, Lf1/s;->e:Lg1/a;

    invoke-virtual {p2}, Lk1/q;->b()Lj1/b;

    move-result-object v1

    invoke-virtual {v1}, Lj1/b;->a()Lg1/a;

    move-result-object v1

    iput-object v1, p0, Lf1/s;->f:Lg1/a;

    invoke-virtual {p2}, Lk1/q;->d()Lj1/b;

    move-result-object p2

    invoke-virtual {p2}, Lj1/b;->a()Lg1/a;

    move-result-object p2

    iput-object p2, p0, Lf1/s;->g:Lg1/a;

    invoke-virtual {p1, v0}, Ll1/a;->j(Lg1/a;)V

    invoke-virtual {p1, v1}, Ll1/a;->j(Lg1/a;)V

    invoke-virtual {p1, p2}, Ll1/a;->j(Lg1/a;)V

    invoke-virtual {v0, p0}, Lg1/a;->a(Lg1/a$b;)V

    invoke-virtual {v1, p0}, Lg1/a;->a(Lg1/a$b;)V

    invoke-virtual {p2, p0}, Lg1/a;->a(Lg1/a$b;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lf1/s;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lf1/s;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg1/a$b;

    invoke-interface {v1}, Lg1/a$b;->a()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lf1/c;",
            ">;",
            "Ljava/util/List<",
            "Lf1/c;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method d(Lg1/a$b;)V
    .locals 1

    iget-object v0, p0, Lf1/s;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public f()Lg1/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lg1/a<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lf1/s;->f:Lg1/a;

    return-object v0
.end method

.method public h()Lg1/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lg1/a<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lf1/s;->g:Lg1/a;

    return-object v0
.end method

.method public i()Lg1/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lg1/a<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lf1/s;->e:Lg1/a;

    return-object v0
.end method

.method j()Lk1/q$a;
    .locals 1

    iget-object v0, p0, Lf1/s;->d:Lk1/q$a;

    return-object v0
.end method

.method public k()Z
    .locals 1

    iget-boolean v0, p0, Lf1/s;->b:Z

    return v0
.end method

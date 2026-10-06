.class public Ln1/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Lo1/c;FLcom/airbnb/lottie/d;Ln1/j0;)Ljava/util/List;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo1/c;",
            "F",
            "Lcom/airbnb/lottie/d;",
            "Ln1/j0<",
            "TT;>;)",
            "Ljava/util/List<",
            "Lq1/a<",
            "TT;>;>;"
        }
    .end annotation

    invoke-static {p0, p2, p1, p3}, Ln1/r;->a(Lo1/c;Lcom/airbnb/lottie/d;FLn1/j0;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static b(Lo1/c;Lcom/airbnb/lottie/d;Ln1/j0;)Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo1/c;",
            "Lcom/airbnb/lottie/d;",
            "Ln1/j0<",
            "TT;>;)",
            "Ljava/util/List<",
            "Lq1/a<",
            "TT;>;>;"
        }
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, p1, v0, p2}, Ln1/r;->a(Lo1/c;Lcom/airbnb/lottie/d;FLn1/j0;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static c(Lo1/c;Lcom/airbnb/lottie/d;)Lj1/a;
    .locals 2

    new-instance v0, Lj1/a;

    sget-object v1, Ln1/f;->a:Ln1/f;

    invoke-static {p0, p1, v1}, Ln1/d;->b(Lo1/c;Lcom/airbnb/lottie/d;Ln1/j0;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lj1/a;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method static d(Lo1/c;Lcom/airbnb/lottie/d;)Lj1/j;
    .locals 2

    new-instance v0, Lj1/j;

    sget-object v1, Ln1/h;->a:Ln1/h;

    invoke-static {p0, p1, v1}, Ln1/d;->b(Lo1/c;Lcom/airbnb/lottie/d;Ln1/j0;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lj1/j;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static e(Lo1/c;Lcom/airbnb/lottie/d;)Lj1/b;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Ln1/d;->f(Lo1/c;Lcom/airbnb/lottie/d;Z)Lj1/b;

    move-result-object p0

    return-object p0
.end method

.method public static f(Lo1/c;Lcom/airbnb/lottie/d;Z)Lj1/b;
    .locals 2

    new-instance v0, Lj1/b;

    if-eqz p2, :cond_0

    invoke-static {}, Lp1/j;->e()F

    move-result p2

    goto :goto_0

    :cond_0
    const/high16 p2, 0x3f800000    # 1.0f

    :goto_0
    sget-object v1, Ln1/i;->a:Ln1/i;

    invoke-static {p0, p2, p1, v1}, Ln1/d;->a(Lo1/c;FLcom/airbnb/lottie/d;Ln1/j0;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lj1/b;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method static g(Lo1/c;Lcom/airbnb/lottie/d;I)Lj1/c;
    .locals 2

    new-instance v0, Lj1/c;

    new-instance v1, Ln1/l;

    invoke-direct {v1, p2}, Ln1/l;-><init>(I)V

    invoke-static {p0, p1, v1}, Ln1/d;->b(Lo1/c;Lcom/airbnb/lottie/d;Ln1/j0;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lj1/c;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method static h(Lo1/c;Lcom/airbnb/lottie/d;)Lj1/d;
    .locals 2

    new-instance v0, Lj1/d;

    sget-object v1, Ln1/o;->a:Ln1/o;

    invoke-static {p0, p1, v1}, Ln1/d;->b(Lo1/c;Lcom/airbnb/lottie/d;Ln1/j0;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lj1/d;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method static i(Lo1/c;Lcom/airbnb/lottie/d;)Lj1/f;
    .locals 3

    new-instance v0, Lj1/f;

    invoke-static {}, Lp1/j;->e()F

    move-result v1

    sget-object v2, Ln1/y;->a:Ln1/y;

    invoke-static {p0, v1, p1, v2}, Ln1/d;->a(Lo1/c;FLcom/airbnb/lottie/d;Ln1/j0;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lj1/f;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method static j(Lo1/c;Lcom/airbnb/lottie/d;)Lj1/g;
    .locals 2

    new-instance v0, Lj1/g;

    sget-object v1, Ln1/c0;->a:Ln1/c0;

    invoke-static {p0, p1, v1}, Ln1/d;->b(Lo1/c;Lcom/airbnb/lottie/d;Ln1/j0;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lj1/g;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method static k(Lo1/c;Lcom/airbnb/lottie/d;)Lj1/h;
    .locals 3

    new-instance v0, Lj1/h;

    invoke-static {}, Lp1/j;->e()F

    move-result v1

    sget-object v2, Ln1/d0;->a:Ln1/d0;

    invoke-static {p0, v1, p1, v2}, Ln1/d;->a(Lo1/c;FLcom/airbnb/lottie/d;Ln1/j0;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lj1/h;-><init>(Ljava/util/List;)V

    return-object v0
.end method

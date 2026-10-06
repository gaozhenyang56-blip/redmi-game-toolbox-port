.class public Ln1/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lo1/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "k"

    const-string v1, "x"

    const-string v2, "y"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo1/c$a;->a([Ljava/lang/String;)Lo1/c$a;

    move-result-object v0

    sput-object v0, Ln1/a;->a:Lo1/c$a;

    return-void
.end method

.method public static a(Lo1/c;Lcom/airbnb/lottie/d;)Lj1/e;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lo1/c;->A()Lo1/c$b;

    move-result-object v1

    sget-object v2, Lo1/c$b;->a:Lo1/c$b;

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lo1/c;->d()V

    :goto_0
    invoke-virtual {p0}, Lo1/c;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0, p1}, Ln1/w;->a(Lo1/c;Lcom/airbnb/lottie/d;)Lg1/h;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lo1/c;->f()V

    invoke-static {v0}, Ln1/r;->b(Ljava/util/List;)V

    goto :goto_1

    :cond_1
    new-instance p1, Lq1/a;

    invoke-static {}, Lp1/j;->e()F

    move-result v1

    invoke-static {p0, v1}, Ln1/p;->e(Lo1/c;F)Landroid/graphics/PointF;

    move-result-object p0

    invoke-direct {p1, p0}, Lq1/a;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    new-instance p0, Lj1/e;

    invoke-direct {p0, v0}, Lj1/e;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method static b(Lo1/c;Lcom/airbnb/lottie/d;)Lj1/m;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo1/c;",
            "Lcom/airbnb/lottie/d;",
            ")",
            "Lj1/m<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lo1/c;->e()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    move v4, v2

    move-object v2, v3

    :goto_0
    invoke-virtual {p0}, Lo1/c;->A()Lo1/c$b;

    move-result-object v5

    sget-object v6, Lo1/c$b;->d:Lo1/c$b;

    if-eq v5, v6, :cond_5

    sget-object v5, Ln1/a;->a:Lo1/c$a;

    invoke-virtual {p0, v5}, Lo1/c;->F(Lo1/c$a;)I

    move-result v5

    if-eqz v5, :cond_4

    if-eq v5, v0, :cond_2

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    invoke-virtual {p0}, Lo1/c;->H()V

    invoke-virtual {p0}, Lo1/c;->J()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lo1/c;->A()Lo1/c$b;

    move-result-object v5

    sget-object v6, Lo1/c$b;->f:Lo1/c$b;

    if-ne v5, v6, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p0, p1}, Ln1/d;->e(Lo1/c;Lcom/airbnb/lottie/d;)Lj1/b;

    move-result-object v3

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lo1/c;->A()Lo1/c$b;

    move-result-object v5

    sget-object v6, Lo1/c$b;->f:Lo1/c$b;

    if-ne v5, v6, :cond_3

    :goto_1
    invoke-virtual {p0}, Lo1/c;->J()V

    move v4, v0

    goto :goto_0

    :cond_3
    invoke-static {p0, p1}, Ln1/d;->e(Lo1/c;Lcom/airbnb/lottie/d;)Lj1/b;

    move-result-object v2

    goto :goto_0

    :cond_4
    invoke-static {p0, p1}, Ln1/a;->a(Lo1/c;Lcom/airbnb/lottie/d;)Lj1/e;

    move-result-object v1

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lo1/c;->g()V

    if-eqz v4, :cond_6

    const-string p0, "Lottie doesn\'t support expressions."

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/d;->a(Ljava/lang/String;)V

    :cond_6
    if-eqz v1, :cond_7

    return-object v1

    :cond_7
    new-instance p0, Lj1/i;

    invoke-direct {p0, v2, v3}, Lj1/i;-><init>(Lj1/b;Lj1/b;)V

    return-object p0
.end method

.class Ln1/w;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(Lo1/c;Lcom/airbnb/lottie/d;)Lg1/h;
    .locals 3

    invoke-virtual {p0}, Lo1/c;->A()Lo1/c$b;

    move-result-object v0

    sget-object v1, Lo1/c$b;->c:Lo1/c$b;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lp1/j;->e()F

    move-result v1

    sget-object v2, Ln1/x;->a:Ln1/x;

    invoke-static {p0, p1, v1, v2, v0}, Ln1/q;->b(Lo1/c;Lcom/airbnb/lottie/d;FLn1/j0;Z)Lq1/a;

    move-result-object p0

    new-instance v0, Lg1/h;

    invoke-direct {v0, p1, p0}, Lg1/h;-><init>(Lcom/airbnb/lottie/d;Lq1/a;)V

    return-object v0
.end method

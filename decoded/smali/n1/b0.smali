.class Ln1/b0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lo1/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "nm"

    const-string v1, "c"

    const-string v2, "o"

    const-string v3, "tr"

    const-string v4, "hd"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo1/c$a;->a([Ljava/lang/String;)Lo1/c$a;

    move-result-object v0

    sput-object v0, Ln1/b0;->a:Lo1/c$a;

    return-void
.end method

.method static a(Lo1/c;Lcom/airbnb/lottie/d;)Lk1/k;
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v7, v0

    move-object v3, v1

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    :goto_0
    invoke-virtual {p0}, Lo1/c;->l()Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Ln1/b0;->a:Lo1/c$a;

    invoke-virtual {p0, v1}, Lo1/c;->F(Lo1/c$a;)I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lo1/c;->J()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lo1/c;->n()Z

    move-result v7

    goto :goto_0

    :cond_1
    invoke-static {p0, p1}, Ln1/c;->g(Lo1/c;Lcom/airbnb/lottie/d;)Lj1/l;

    move-result-object v6

    goto :goto_0

    :cond_2
    invoke-static {p0, p1, v0}, Ln1/d;->f(Lo1/c;Lcom/airbnb/lottie/d;Z)Lj1/b;

    move-result-object v5

    goto :goto_0

    :cond_3
    invoke-static {p0, p1, v0}, Ln1/d;->f(Lo1/c;Lcom/airbnb/lottie/d;Z)Lj1/b;

    move-result-object v4

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lo1/c;->t()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_5
    new-instance p0, Lk1/k;

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lk1/k;-><init>(Ljava/lang/String;Lj1/b;Lj1/b;Lj1/l;Z)V

    return-object p0
.end method

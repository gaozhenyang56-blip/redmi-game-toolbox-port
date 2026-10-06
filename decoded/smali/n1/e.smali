.class Ln1/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lo1/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "nm"

    const-string v1, "p"

    const-string v2, "s"

    const-string v3, "hd"

    const-string v4, "d"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo1/c$a;->a([Ljava/lang/String;)Lo1/c$a;

    move-result-object v0

    sput-object v0, Ln1/e;->a:Lo1/c$a;

    return-void
.end method

.method static a(Lo1/c;Lcom/airbnb/lottie/d;I)Lk1/a;
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne p2, v2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    const/4 v3, 0x0

    move v8, p2

    move v9, v1

    move-object v5, v3

    move-object v6, v5

    move-object v7, v6

    :goto_1
    invoke-virtual {p0}, Lo1/c;->l()Z

    move-result p2

    if-eqz p2, :cond_7

    sget-object p2, Ln1/e;->a:Lo1/c$a;

    invoke-virtual {p0, p2}, Lo1/c;->F(Lo1/c$a;)I

    move-result p2

    if-eqz p2, :cond_6

    if-eq p2, v0, :cond_5

    const/4 v3, 0x2

    if-eq p2, v3, :cond_4

    if-eq p2, v2, :cond_3

    const/4 v3, 0x4

    if-eq p2, v3, :cond_1

    invoke-virtual {p0}, Lo1/c;->H()V

    invoke-virtual {p0}, Lo1/c;->J()V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lo1/c;->p()I

    move-result p2

    if-ne p2, v2, :cond_2

    move v8, v0

    goto :goto_1

    :cond_2
    move v8, v1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lo1/c;->n()Z

    move-result v9

    goto :goto_1

    :cond_4
    invoke-static {p0, p1}, Ln1/d;->i(Lo1/c;Lcom/airbnb/lottie/d;)Lj1/f;

    move-result-object v7

    goto :goto_1

    :cond_5
    invoke-static {p0, p1}, Ln1/a;->b(Lo1/c;Lcom/airbnb/lottie/d;)Lj1/m;

    move-result-object v6

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lo1/c;->t()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_7
    new-instance p0, Lk1/a;

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lk1/a;-><init>(Ljava/lang/String;Lj1/m;Lj1/f;ZZ)V

    return-object p0
.end method

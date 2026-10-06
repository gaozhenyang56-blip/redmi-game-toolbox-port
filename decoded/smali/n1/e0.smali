.class Ln1/e0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lo1/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "nm"

    const-string v1, "c"

    const-string v2, "o"

    const-string v3, "fillEnabled"

    const-string v4, "r"

    const-string v5, "hd"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo1/c$a;->a([Ljava/lang/String;)Lo1/c$a;

    move-result-object v0

    sput-object v0, Ln1/e0;->a:Lo1/c$a;

    return-void
.end method

.method static a(Lo1/c;Lcom/airbnb/lottie/d;)Lk1/m;
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    move v5, v0

    move v9, v5

    move v0, v1

    move-object v4, v2

    move-object v7, v4

    move-object v8, v7

    :goto_0
    invoke-virtual {p0}, Lo1/c;->l()Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Ln1/e0;->a:Lo1/c$a;

    invoke-virtual {p0, v2}, Lo1/c;->F(Lo1/c$a;)I

    move-result v2

    if-eqz v2, :cond_5

    if-eq v2, v1, :cond_4

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    invoke-virtual {p0}, Lo1/c;->H()V

    invoke-virtual {p0}, Lo1/c;->J()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lo1/c;->n()Z

    move-result v9

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lo1/c;->p()I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lo1/c;->n()Z

    move-result v5

    goto :goto_0

    :cond_3
    invoke-static {p0, p1}, Ln1/d;->h(Lo1/c;Lcom/airbnb/lottie/d;)Lj1/d;

    move-result-object v8

    goto :goto_0

    :cond_4
    invoke-static {p0, p1}, Ln1/d;->c(Lo1/c;Lcom/airbnb/lottie/d;)Lj1/a;

    move-result-object v7

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lo1/c;->t()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_6
    if-ne v0, v1, :cond_7

    sget-object p0, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    goto :goto_1

    :cond_7
    sget-object p0, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    :goto_1
    move-object v6, p0

    new-instance p0, Lk1/m;

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lk1/m;-><init>(Ljava/lang/String;ZLandroid/graphics/Path$FillType;Lj1/a;Lj1/d;Z)V

    return-object p0
.end method

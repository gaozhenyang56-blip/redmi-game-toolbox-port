.class Ln1/v;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lo1/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "nm"

    const-string v1, "mm"

    const-string v2, "hd"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo1/c$a;->a([Ljava/lang/String;)Lo1/c$a;

    move-result-object v0

    sput-object v0, Ln1/v;->a:Lo1/c$a;

    return-void
.end method

.method static a(Lo1/c;)Lk1/h;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    move-object v1, v0

    :goto_0
    invoke-virtual {p0}, Lo1/c;->l()Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Ln1/v;->a:Lo1/c$a;

    invoke-virtual {p0, v3}, Lo1/c;->F(Lo1/c$a;)I

    move-result v3

    if-eqz v3, :cond_2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    invoke-virtual {p0}, Lo1/c;->H()V

    invoke-virtual {p0}, Lo1/c;->J()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lo1/c;->n()Z

    move-result v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lo1/c;->p()I

    move-result v1

    invoke-static {v1}, Lk1/h$a;->a(I)Lk1/h$a;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lo1/c;->t()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    new-instance p0, Lk1/h;

    invoke-direct {p0, v0, v1, v2}, Lk1/h;-><init>(Ljava/lang/String;Lk1/h$a;Z)V

    return-object p0
.end method

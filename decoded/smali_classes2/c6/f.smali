.class public Lc6/f;
.super Lc6/h;
.source "SourceFile"


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "descRes"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lc6/h$a;->f:Lc6/h$a;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lc6/h;-><init>(ILjava/lang/String;Lc6/h$a;Z)V

    invoke-static {}, Lj8/k;->h()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lc6/h;->h(Z)V

    return-void
.end method


# virtual methods
.method public f()Z
    .locals 1

    invoke-static {}, Lx5/p;->q0()Z

    move-result v0

    return v0
.end method

.method public i(Z)V
    .locals 1

    invoke-static {}, Lx5/p;->O()Lx5/p;

    move-result-object v0

    invoke-virtual {v0, p1}, Lx5/p;->t1(Z)V

    return-void
.end method

.class public Ld7/u;
.super Ld7/v;
.source "SourceFile"


# instance fields
.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Ld7/v;-><init>(I)V

    const/4 p1, 0x2

    iput p1, p0, Ld7/v;->b:I

    return-void
.end method

.method public static f(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lw6/i;->l(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static g(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Ld7/u;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Ld7/u;->f(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static h(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lw6/i;->k(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected b(Landroid/content/Context;ZI)Z
    .locals 0

    invoke-super {p0, p1, p2, p3}, Ld7/v;->b(Landroid/content/Context;ZI)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Ld7/u;->c:Ljava/lang/String;

    invoke-static {p1}, Lw6/i;->l(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected c()V
    .locals 1

    iget-object v0, p0, Ld7/u;->c:Ljava/lang/String;

    invoke-static {v0}, Lw6/i;->s(Ljava/lang/String;)V

    return-void
.end method

.method protected d()V
    .locals 1

    iget-object v0, p0, Ld7/u;->c:Ljava/lang/String;

    invoke-static {v0}, Lw6/i;->t(Ljava/lang/String;)V

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ld7/u;->c:Ljava/lang/String;

    return-void
.end method

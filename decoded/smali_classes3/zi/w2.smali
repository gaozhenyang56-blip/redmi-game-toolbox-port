.class public Lzi/w2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lzi/l2;

.field private static b:Lzi/m2;


# direct methods
.method public static a(Landroid/content/Context;)V
    .locals 3

    const-string v0, "onSendMsg"

    invoke-static {v0}, Lzi/w2;->c(Ljava/lang/String;)V

    invoke-static {p0}, Lzi/w2;->g(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0}, Lzi/w2;->d(Landroid/content/Context;)Z

    move-result v2

    invoke-static {p0, v0, v1, v2}, Lzi/z2;->g(Landroid/content/Context;JZ)V

    return-void
.end method

.method public static b(Landroid/content/Context;Lzi/c6;)V
    .locals 1

    invoke-static {p0}, Lzi/w2;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lzi/w2;->a:Lzi/l2;

    if-nez v0, :cond_0

    new-instance v0, Lzi/l2;

    invoke-direct {v0, p0}, Lzi/l2;-><init>(Landroid/content/Context;)V

    sput-object v0, Lzi/w2;->a:Lzi/l2;

    :cond_0
    sget-object v0, Lzi/w2;->b:Lzi/m2;

    if-nez v0, :cond_1

    new-instance v0, Lzi/m2;

    invoke-direct {v0, p0}, Lzi/m2;-><init>(Landroid/content/Context;)V

    sput-object v0, Lzi/w2;->b:Lzi/m2;

    :cond_1
    sget-object p0, Lzi/w2;->a:Lzi/l2;

    invoke-virtual {p1, p0, p0}, Lzi/c6;->n(Lzi/h6;Lzi/q6;)V

    sget-object p0, Lzi/w2;->b:Lzi/m2;

    invoke-virtual {p1, p0, p0}, Lzi/c6;->z(Lzi/h6;Lzi/q6;)V

    const-string p0, "startStats"

    invoke-static {p0}, Lzi/w2;->c(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method static c(Ljava/lang/String;)V
    .locals 1

    const-string v0, "Push-PowerStats"

    invoke-static {v0, p0}, Lzi/k2;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static d(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lzi/o7;->q(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static e(Landroid/content/Context;)V
    .locals 3

    const-string v0, "onReceiveMsg"

    invoke-static {v0}, Lzi/w2;->c(Ljava/lang/String;)V

    invoke-static {p0}, Lzi/w2;->g(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0}, Lzi/w2;->d(Landroid/content/Context;)Z

    move-result v2

    invoke-static {p0, v0, v1, v2}, Lzi/z2;->k(Landroid/content/Context;JZ)V

    return-void
.end method

.method public static f(Landroid/content/Context;Lzi/c6;)V
    .locals 1

    sget-object p0, Lzi/w2;->a:Lzi/l2;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p1, p0}, Lzi/c6;->m(Lzi/h6;)V

    sput-object v0, Lzi/w2;->a:Lzi/l2;

    :cond_0
    sget-object p0, Lzi/w2;->b:Lzi/m2;

    if-eqz p0, :cond_1

    invoke-virtual {p1, p0}, Lzi/c6;->y(Lzi/h6;)V

    sput-object v0, Lzi/w2;->b:Lzi/m2;

    :cond_1
    const-string p0, "stopStats"

    invoke-static {p0}, Lzi/w2;->c(Ljava/lang/String;)V

    return-void
.end method

.method private static g(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lzi/k2;->c(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static h(Landroid/content/Context;)V
    .locals 3

    const-string v0, "onPing"

    invoke-static {v0}, Lzi/w2;->c(Ljava/lang/String;)V

    invoke-static {p0}, Lzi/w2;->g(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0}, Lzi/w2;->d(Landroid/content/Context;)Z

    move-result v2

    invoke-static {p0, v0, v1, v2}, Lzi/z2;->l(Landroid/content/Context;JZ)V

    return-void
.end method

.method public static i(Landroid/content/Context;)V
    .locals 3

    const-string v0, "onPong"

    invoke-static {v0}, Lzi/w2;->c(Ljava/lang/String;)V

    invoke-static {p0}, Lzi/w2;->g(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0}, Lzi/w2;->d(Landroid/content/Context;)Z

    move-result v2

    invoke-static {p0, v0, v1, v2}, Lzi/z2;->m(Landroid/content/Context;JZ)V

    return-void
.end method

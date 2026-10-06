.class Lzi/w;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:I


# direct methods
.method public static a(Landroid/content/Context;)Lzi/r;
    .locals 1

    invoke-static {}, Lzi/p8;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    sput v0, Lzi/w;->a:I

    new-instance v0, Lzi/v;

    invoke-direct {v0, p0}, Lzi/v;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_0
    invoke-static {p0}, Lzi/o;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    sput v0, Lzi/w;->a:I

    new-instance v0, Lzi/o;

    invoke-direct {v0, p0}, Lzi/o;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_1
    invoke-static {p0}, Lzi/y;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    sput v0, Lzi/w;->a:I

    new-instance v0, Lzi/y;

    invoke-direct {v0, p0}, Lzi/y;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_2
    invoke-static {p0}, Lzi/d0;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x5

    sput v0, Lzi/w;->a:I

    new-instance v0, Lzi/d0;

    invoke-direct {v0, p0}, Lzi/d0;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_3
    invoke-static {p0}, Lzi/u;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    sput v0, Lzi/w;->a:I

    new-instance v0, Lzi/s;

    invoke-direct {v0, p0}, Lzi/s;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_4
    const/4 p0, 0x0

    sput p0, Lzi/w;->a:I

    new-instance p0, Lzi/c0;

    invoke-direct {p0}, Lzi/c0;-><init>()V

    return-object p0
.end method

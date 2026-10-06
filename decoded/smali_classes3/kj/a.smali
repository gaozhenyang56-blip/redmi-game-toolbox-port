.class public Lkj/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    new-instance v0, Lkj/b;

    invoke-direct {v0, p2, p3}, Lkj/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Lnj/e;

    invoke-direct {p2}, Lnj/e;-><init>()V

    invoke-virtual {p2, v0}, Lnj/e;->e(Lkj/b;)V

    const/4 p2, 0x0

    :try_start_0
    invoke-virtual {p0}, Lkj/a;->b()Lkj/d;

    move-result-object p3

    invoke-virtual {p3, v0, p1}, Lkj/d;->h(Lkj/b;Landroid/content/Context;)Z

    move-result p3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p3, :cond_0

    :try_start_1
    invoke-virtual {v0}, Lkj/b;->c()I

    move-result v1

    invoke-static {v1}, Lnj/a;->c(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lkj/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkj/f;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz p1, :cond_0

    move p3, p2

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    move p3, p2

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_1
    if-eqz p3, :cond_1

    invoke-virtual {v0}, Lkj/b;->j()I

    move-result p1

    const/4 p2, 0x2

    and-int/2addr p1, p2

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return p2
.end method

.method protected b()Lkj/d;
    .locals 1

    new-instance v0, Lkj/d;

    invoke-direct {v0}, Lkj/d;-><init>()V

    return-object v0
.end method

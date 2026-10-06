.class public Ljd/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a()I
    .locals 2

    invoke-static {}, Lgd/c;->w0()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljd/c;->g(J)I

    move-result v0

    return v0
.end method

.method private static b()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lgd/c;->v0()I

    move-result v0

    div-int/lit8 v1, v0, 0x3c

    rem-int/lit8 v0, v0, 0x3c

    invoke-static {v1, v0}, Lme/b0;->k(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static c()I
    .locals 2

    invoke-static {}, Lgd/c;->x0()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljd/c;->g(J)I

    move-result v0

    return v0
.end method

.method private static d()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lgd/c;->A0()I

    move-result v0

    div-int/lit8 v1, v0, 0x3c

    rem-int/lit8 v0, v0, 0x3c

    invoke-static {v1, v0}, Lme/b0;->k(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e()Ljd/d;
    .locals 2

    new-instance v0, Ljd/d;

    invoke-direct {v0}, Ljd/d;-><init>()V

    invoke-static {}, Ljd/c;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljd/d;->c(I)V

    invoke-static {}, Ljd/c;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljd/d;->e(I)V

    invoke-static {}, Ljd/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljd/d;->d(Ljava/lang/String;)V

    invoke-static {}, Ljd/c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljd/d;->f(Ljava/lang/String;)V

    return-object v0
.end method

.method public static f(Landroid/content/Context;ILjava/util/Calendar;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lme/i;->e(Landroid/content/Context;ILjava/util/Calendar;)V

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    if-eqz p3, :cond_0

    invoke-static {p0, p1}, Lgd/c;->s2(J)V

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lgd/c;->t2(J)V

    :goto_0
    return-void
.end method

.method private static g(J)I
    .locals 7

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p1, 0x7

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v5, 0xc

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {p0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-lt v1, v2, :cond_2

    if-ne v1, v2, :cond_0

    if-lt v4, v3, :cond_2

    :cond_0
    if-ne v1, v2, :cond_1

    if-ne v4, v3, :cond_1

    if-ge v6, v5, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr v0, p1

    :goto_1
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

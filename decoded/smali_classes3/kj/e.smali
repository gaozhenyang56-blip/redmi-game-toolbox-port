.class public abstract Lkj/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Lmj/d;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static b(Lkj/b;)Z
    .locals 1

    invoke-virtual {p0}, Lkj/b;->g()I

    move-result p0

    const/high16 v0, 0x8000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected static e(Lkj/b;)Z
    .locals 1

    invoke-virtual {p0}, Lkj/b;->g()I

    move-result p0

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method protected a(Lkj/b;Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lkj/e;->a:Lmj/d;

    if-nez v0, :cond_0

    invoke-virtual {p0, p2}, Lkj/e;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    new-instance v0, Lmj/d;

    invoke-direct {v0}, Lmj/d;-><init>()V

    iput-object v0, p0, Lkj/e;->a:Lmj/d;

    invoke-virtual {v0, p2}, Lmj/d;->d(Ljava/lang/String;)V

    :cond_0
    iget-object p2, p0, Lkj/e;->a:Lmj/d;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lmj/d;->c()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lkj/e;->a:Lmj/d;

    invoke-virtual {p2, p1}, Lmj/d;->e(Lkj/b;)I

    move-result p2

    invoke-virtual {p1, p2}, Lkj/b;->n(I)V

    :cond_1
    return-void
.end method

.method protected c(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lkj/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected abstract d(Lkj/b;Landroid/content/Context;)Z
.end method

.method public f(Lkj/b;Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p1}, Lkj/b;->e()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkj/i;->b(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lkj/b;->a(I)V

    :cond_0
    invoke-virtual {p0, p1, p2}, Lkj/e;->d(Lkj/b;Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lkj/b;->a(I)V

    :cond_1
    return-void
.end method

.method protected g([DLkj/b;)[D
    .locals 9

    invoke-virtual {p2}, Lkj/b;->g()I

    move-result p2

    invoke-static {p2}, Lmj/d;->b(I)I

    move-result v0

    invoke-static {p2}, Lmj/d;->a(I)I

    move-result v1

    const v2, 0xfffffff

    and-int/2addr p2, v2

    if-eqz p2, :cond_2

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    array-length p2, p1

    new-array v2, p2, [D

    array-length v3, p1

    const/4 v4, 0x0

    invoke-static {p1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-wide v5, v2, v4

    const/4 p1, 0x1

    aget-wide v7, v2, p1

    sub-double/2addr v5, v7

    sub-int/2addr v1, v0

    int-to-double v0, v1

    mul-double/2addr v0, v5

    const-wide/high16 v5, 0x4010000000000000L    # 4.0

    div-double/2addr v0, v5

    :goto_0
    if-lt v4, p2, :cond_1

    return-object v2

    :cond_1
    aget-wide v5, v2, v4

    add-double/2addr v5, v0

    aput-wide v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object p1
.end method

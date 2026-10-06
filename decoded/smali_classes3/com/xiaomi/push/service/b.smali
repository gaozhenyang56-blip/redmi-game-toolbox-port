.class public Lcom/xiaomi/push/service/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/xiaomi/push/service/b0$a<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/xiaomi/push/service/d0;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/xiaomi/push/service/d0;-><init>(I)V

    sput-object v0, Lcom/xiaomi/push/service/b;->a:Landroid/util/SparseArray;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)I
    .locals 7

    const/4 v0, 0x0

    if-eqz p0, :cond_19

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_19

    const/4 v1, 0x1

    invoke-static {p0, p1, v1}, Lzi/m5;->i(Landroid/content/Context;Ljava/lang/String;Z)Lzi/m5$b;

    move-result-object p0

    sget-object v2, Lzi/m5$b;->c:Lzi/m5$b;

    const/4 v3, 0x2

    if-ne p0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    sget-object v2, Lzi/m5$b;->d:Lzi/m5$b;

    if-ne p0, v2, :cond_1

    move v0, v3

    :cond_1
    :goto_0
    invoke-static {}, Lcom/xiaomi/push/service/b0;->p()Z

    move-result p0

    const/16 v2, 0x20

    const/16 v4, 0x10

    const/16 v5, 0x8

    const/4 v6, 0x4

    if-eqz p0, :cond_d

    invoke-static {p1}, Lcom/xiaomi/push/service/b;->c(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    sget-object p1, Lcom/xiaomi/push/service/b0;->i:Lcom/xiaomi/push/service/b0$a;

    iget-object v1, p1, Lcom/xiaomi/push/service/b0$a;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object p1, p1, Lcom/xiaomi/push/service/b0$a;->c:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    move v5, v6

    :cond_2
    or-int/2addr v0, v5

    :cond_3
    sget-object p1, Lcom/xiaomi/push/service/b0;->g:Lcom/xiaomi/push/service/b0$a;

    iget-object v1, p1, Lcom/xiaomi/push/service/b0$a;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object p1, p1, Lcom/xiaomi/push/service/b0$a;->c:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    move v2, v4

    :cond_4
    or-int/2addr v0, v2

    :cond_5
    sget-object p1, Lcom/xiaomi/push/service/b0;->h:Lcom/xiaomi/push/service/b0$a;

    iget-object v1, p1, Lcom/xiaomi/push/service/b0$a;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object p1, p1, Lcom/xiaomi/push/service/b0$a;->c:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/16 p1, 0x40

    goto :goto_1

    :cond_6
    const/16 p1, 0x80

    :goto_1
    or-int/2addr v0, p1

    :cond_7
    sget-object p1, Lcom/xiaomi/push/service/b0;->d:Lcom/xiaomi/push/service/b0$a;

    iget-object v1, p1, Lcom/xiaomi/push/service/b0$a;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object p1, p1, Lcom/xiaomi/push/service/b0$a;->c:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    const/16 p1, 0x100

    goto :goto_2

    :cond_8
    const/16 p1, 0x200

    :goto_2
    or-int/2addr v0, p1

    :cond_9
    sget-object p1, Lcom/xiaomi/push/service/b0;->e:Lcom/xiaomi/push/service/b0$a;

    iget-object v1, p1, Lcom/xiaomi/push/service/b0$a;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object p1, p1, Lcom/xiaomi/push/service/b0$a;->c:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    const/16 p1, 0x400

    goto :goto_3

    :cond_a
    const/16 p1, 0x800

    :goto_3
    or-int/2addr v0, p1

    :cond_b
    sget-object p1, Lcom/xiaomi/push/service/b0;->j:Lcom/xiaomi/push/service/b0$a;

    iget-object v1, p1, Lcom/xiaomi/push/service/b0$a;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object p1, p1, Lcom/xiaomi/push/service/b0$a;->c:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/16 p0, 0x1000

    goto :goto_4

    :cond_c
    const/16 p0, 0x2000

    :goto_4
    or-int/2addr v0, p0

    goto :goto_b

    :cond_d
    invoke-static {p1, v1}, Lcom/xiaomi/push/service/b;->b(Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_e

    or-int/lit8 v0, v0, 0x4

    goto :goto_5

    :cond_e
    if-nez p0, :cond_f

    or-int/lit8 v0, v0, 0x8

    :cond_f
    :goto_5
    invoke-static {p1, v6}, Lcom/xiaomi/push/service/b;->b(Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_10

    or-int/lit8 v0, v0, 0x10

    goto :goto_6

    :cond_10
    if-nez p0, :cond_11

    or-int/lit8 v0, v0, 0x20

    :cond_11
    :goto_6
    invoke-static {p1, v3}, Lcom/xiaomi/push/service/b;->b(Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_12

    or-int/lit8 v0, v0, 0x40

    goto :goto_7

    :cond_12
    if-nez p0, :cond_13

    or-int/lit16 v0, v0, 0x80

    :cond_13
    :goto_7
    invoke-static {p1, v5}, Lcom/xiaomi/push/service/b;->b(Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_14

    or-int/lit16 v0, v0, 0x100

    goto :goto_8

    :cond_14
    if-nez p0, :cond_15

    or-int/lit16 v0, v0, 0x200

    :cond_15
    :goto_8
    invoke-static {p1, v4}, Lcom/xiaomi/push/service/b;->b(Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_16

    or-int/lit16 v0, v0, 0x400

    goto :goto_9

    :cond_16
    if-nez p0, :cond_17

    or-int/lit16 v0, v0, 0x800

    :cond_17
    :goto_9
    invoke-static {p1, v2}, Lcom/xiaomi/push/service/b;->b(Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_18

    or-int/lit16 p0, v0, 0x1000

    :goto_a
    move v0, p0

    goto :goto_b

    :cond_18
    if-nez p0, :cond_1a

    or-int/lit16 p0, v0, 0x2000

    goto :goto_a

    :cond_19
    const-string p0, "context | packageName must not be null"

    invoke-static {p0}, Lpi/c;->n(Ljava/lang/String;)V

    :cond_1a
    :goto_b
    return v0
.end method

.method private static b(Ljava/lang/String;I)I
    .locals 2

    invoke-static {}, Lzi/ga;->b()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/push/service/b;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/push/service/b0$a;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1}, Lcom/xiaomi/push/service/b0;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/push/service/b0$a;)I

    move-result p0

    return p0
.end method

.method private static c(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    invoke-static {}, Lzi/ga;->b()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/xiaomi/push/service/b0;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

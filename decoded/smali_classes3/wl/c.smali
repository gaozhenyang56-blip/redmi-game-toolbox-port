.class public Lwl/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lbl/k$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbl/k$f<",
            "Lwl/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lwl/c$a;

    invoke-direct {v0}, Lwl/c$a;-><init>()V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lbl/k;->d(Lbl/k$e;I)Lbl/k$i;

    move-result-object v0

    sput-object v0, Lwl/c;->a:Lbl/k$f;

    return-void
.end method

.method public static a(Landroid/content/Context;JI)Ljava/lang/String;
    .locals 7

    invoke-static {}, Lbl/k;->e()Lbl/k$f;

    move-result-object v0

    invoke-interface {v0}, Lbl/k$f;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v0

    move-wide v3, p1

    move v5, p3

    invoke-static/range {v1 .. v6}, Lwl/c;->b(Landroid/content/Context;Ljava/lang/StringBuilder;JILjava/util/TimeZone;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lbl/k;->e()Lbl/k$f;

    move-result-object p1

    invoke-interface {p1, v0}, Lbl/k$f;->a(Ljava/lang/Object;)V

    return-object p0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/StringBuilder;JILjava/util/TimeZone;)Ljava/lang/StringBuilder;
    .locals 4

    and-int/lit8 v0, p4, 0x10

    if-nez v0, :cond_1

    and-int/lit8 v0, p4, 0x20

    if-nez v0, :cond_1

    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    goto :goto_0

    :cond_0
    const/16 v0, 0x10

    :goto_0
    or-int/2addr p4, v0

    :cond_1
    invoke-static {p4}, Lwl/c;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lbl/k;->e()Lbl/k$f;

    move-result-object v1

    invoke-interface {v1}, Lbl/k$f;->acquire()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/StringBuilder;

    sget-object v2, Lwl/c;->a:Lbl/k$f;

    invoke-interface {v2}, Lbl/k$f;->acquire()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lwl/a;

    invoke-virtual {v2, p5}, Lwl/a;->X(Ljava/util/TimeZone;)Lwl/a;

    invoke-virtual {v2, p2, p3}, Lwl/a;->W(J)Lwl/a;

    const/4 p2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p3

    :goto_1
    if-ge p2, p3, :cond_5

    invoke-virtual {v0, p2}, Ljava/lang/String;->charAt(I)C

    move-result p5

    const/16 v3, 0x44

    if-eq p5, v3, :cond_4

    const/16 v3, 0x54

    if-eq p5, v3, :cond_3

    const/16 v3, 0x57

    if-eq p5, v3, :cond_2

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_2
    invoke-static {p4}, Lwl/c;->f(I)I

    move-result p5

    goto :goto_2

    :cond_3
    invoke-static {v2, p4}, Lwl/c;->e(Lwl/a;I)I

    move-result p5

    goto :goto_2

    :cond_4
    invoke-static {p4}, Lwl/c;->c(I)I

    move-result p5

    :goto_2
    invoke-virtual {p0, p5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v2, p0, p1, v1}, Lwl/a;->z(Landroid/content/Context;Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-static {}, Lbl/k;->e()Lbl/k$f;

    move-result-object p0

    invoke-interface {p0, v1}, Lbl/k$f;->a(Ljava/lang/Object;)V

    sget-object p0, Lwl/c;->a:Lbl/k$f;

    invoke-interface {p0, v2}, Lbl/k$f;->a(Ljava/lang/Object;)V

    return-object p1
.end method

.method private static c(I)I
    .locals 6

    const v0, 0x8000

    and-int v1, p0, v0

    const-string v2, "no any time date"

    const/16 v3, 0x200

    const/16 v4, 0x100

    const/16 v5, 0x80

    if-ne v1, v0, :cond_6

    and-int/lit16 v0, p0, 0x200

    if-ne v0, v3, :cond_2

    and-int/lit16 v0, p0, 0x100

    if-ne v0, v4, :cond_1

    and-int/2addr p0, v5

    if-ne p0, v5, :cond_0

    sget p0, Lvl/h;->r:I

    goto/16 :goto_1

    :cond_0
    sget p0, Lvl/h;->q:I

    goto/16 :goto_1

    :cond_1
    sget p0, Lvl/h;->p:I

    goto/16 :goto_1

    :cond_2
    and-int/lit16 v0, p0, 0x100

    and-int/2addr p0, v5

    if-ne v0, v4, :cond_4

    if-ne p0, v5, :cond_3

    sget p0, Lvl/h;->o:I

    goto/16 :goto_1

    :cond_3
    sget p0, Lvl/h;->n:I

    goto/16 :goto_1

    :cond_4
    if-ne p0, v5, :cond_5

    sget p0, Lvl/h;->m:I

    goto :goto_1

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    and-int/lit16 v0, p0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_c

    and-int/lit16 v0, p0, 0x200

    if-ne v0, v3, :cond_8

    and-int/lit16 v0, p0, 0x100

    if-ne v0, v4, :cond_e

    and-int/2addr p0, v5

    if-ne p0, v5, :cond_7

    sget p0, Lvl/h;->v:I

    goto :goto_1

    :cond_7
    sget p0, Lvl/h;->u:I

    goto :goto_1

    :cond_8
    and-int/lit16 v0, p0, 0x100

    and-int/2addr p0, v5

    if-ne v0, v4, :cond_a

    if-ne p0, v5, :cond_9

    sget p0, Lvl/h;->t:I

    goto :goto_1

    :cond_9
    sget p0, Lvl/h;->s:I

    goto :goto_1

    :cond_a
    if-ne p0, v5, :cond_b

    goto :goto_0

    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    and-int/lit16 v0, p0, 0x200

    if-ne v0, v3, :cond_f

    and-int/lit16 v0, p0, 0x100

    if-ne v0, v4, :cond_e

    and-int/2addr p0, v5

    if-ne p0, v5, :cond_d

    sget p0, Lvl/h;->l:I

    goto :goto_1

    :cond_d
    sget p0, Lvl/h;->k:I

    goto :goto_1

    :cond_e
    sget p0, Lvl/h;->z:I

    goto :goto_1

    :cond_f
    and-int/lit16 v0, p0, 0x100

    and-int/2addr p0, v5

    if-ne v0, v4, :cond_11

    if-ne p0, v5, :cond_10

    sget p0, Lvl/h;->j:I

    goto :goto_1

    :cond_10
    sget p0, Lvl/h;->i:I

    goto :goto_1

    :cond_11
    if-ne p0, v5, :cond_12

    :goto_0
    sget p0, Lvl/h;->h:I

    :goto_1
    return p0

    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static d(I)I
    .locals 3

    and-int/lit16 v0, p0, 0x400

    const/16 v1, 0x400

    const/16 v2, 0x800

    if-ne v0, v1, :cond_7

    and-int/lit16 v0, p0, 0x380

    if-eqz v0, :cond_3

    and-int/lit8 v0, p0, 0xf

    and-int/2addr p0, v2

    if-eqz v0, :cond_1

    if-ne p0, v2, :cond_0

    sget p0, Lvl/h;->Y:I

    goto :goto_0

    :cond_0
    sget p0, Lvl/h;->X:I

    goto :goto_0

    :cond_1
    if-ne p0, v2, :cond_2

    sget p0, Lvl/h;->Z:I

    goto :goto_0

    :cond_2
    sget p0, Lvl/h;->W:I

    goto :goto_0

    :cond_3
    and-int/lit8 v0, p0, 0xf

    and-int/2addr p0, v2

    if-eqz v0, :cond_5

    if-ne p0, v2, :cond_4

    sget p0, Lvl/h;->d0:I

    goto :goto_0

    :cond_4
    sget p0, Lvl/h;->c0:I

    goto :goto_0

    :cond_5
    if-ne p0, v2, :cond_6

    sget p0, Lvl/h;->e0:I

    goto :goto_0

    :cond_6
    sget p0, Lvl/h;->V:I

    goto :goto_0

    :cond_7
    and-int/lit16 v0, p0, 0x380

    if-eqz v0, :cond_b

    and-int/lit8 v0, p0, 0xf

    and-int/2addr p0, v2

    if-eqz v0, :cond_9

    if-ne p0, v2, :cond_8

    sget p0, Lvl/h;->x:I

    goto :goto_0

    :cond_8
    sget p0, Lvl/h;->w:I

    goto :goto_0

    :cond_9
    if-ne p0, v2, :cond_a

    sget p0, Lvl/h;->y:I

    goto :goto_0

    :cond_a
    sget p0, Lvl/h;->g:I

    goto :goto_0

    :cond_b
    and-int/lit8 v0, p0, 0xf

    and-int/2addr p0, v2

    if-eqz v0, :cond_d

    if-ne p0, v2, :cond_c

    sget p0, Lvl/h;->T:I

    goto :goto_0

    :cond_c
    sget p0, Lvl/h;->A:I

    goto :goto_0

    :cond_d
    if-ne p0, v2, :cond_e

    sget p0, Lvl/h;->U:I

    goto :goto_0

    :cond_e
    sget p0, Lvl/h;->e:I

    :goto_0
    return p0
.end method

.method private static e(Lwl/a;I)I
    .locals 4

    and-int/lit16 v0, p1, 0x4000

    const/16 v1, 0x4000

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v1, :cond_2

    and-int/lit8 v0, p1, 0x1

    if-ne v0, v3, :cond_0

    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Lwl/a;->B(I)I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    and-int/lit8 v0, p1, 0xe

    if-eqz v0, :cond_2

    and-int/lit8 p1, p1, -0x2

    and-int/lit8 v0, p1, 0x2

    if-ne v0, v2, :cond_1

    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lwl/a;->B(I)I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    and-int/lit8 v0, p1, 0xc

    if-eqz v0, :cond_2

    and-int/lit8 p1, p1, -0x3

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lwl/a;->B(I)I

    move-result p0

    if-nez p0, :cond_2

    and-int/lit8 p0, p1, 0x8

    if-eqz p0, :cond_2

    and-int/lit8 p1, p1, -0x5

    :cond_2
    and-int/lit8 p0, p1, 0x8

    const/16 v0, 0x8

    const/4 v1, 0x4

    if-ne p0, v0, :cond_e

    and-int/lit8 p0, p1, 0x10

    const/16 v0, 0x10

    if-ne p0, v0, :cond_a

    and-int/lit8 p0, p1, 0x40

    const/16 v0, 0x40

    if-ne p0, v0, :cond_6

    and-int/lit8 p0, p1, 0x4

    if-ne p0, v1, :cond_5

    and-int/lit8 p0, p1, 0x2

    if-ne p0, v2, :cond_4

    and-int/lit8 p0, p1, 0x1

    if-ne p0, v3, :cond_3

    sget p0, Lvl/h;->F:I

    goto/16 :goto_0

    :cond_3
    sget p0, Lvl/h;->E:I

    goto/16 :goto_0

    :cond_4
    sget p0, Lvl/h;->C:I

    goto/16 :goto_0

    :cond_5
    sget p0, Lvl/h;->B:I

    goto/16 :goto_0

    :cond_6
    and-int/lit8 p0, p1, 0x4

    if-ne p0, v1, :cond_9

    and-int/lit8 p0, p1, 0x2

    if-ne p0, v2, :cond_8

    and-int/lit8 p0, p1, 0x1

    if-ne p0, v3, :cond_7

    sget p0, Lvl/h;->G:I

    goto :goto_0

    :cond_7
    sget p0, Lvl/h;->H:I

    goto :goto_0

    :cond_8
    sget p0, Lvl/h;->D:I

    goto :goto_0

    :cond_9
    sget p0, Lvl/h;->I:I

    goto :goto_0

    :cond_a
    and-int/lit8 p0, p1, 0x4

    if-ne p0, v1, :cond_d

    and-int/lit8 p0, p1, 0x2

    if-ne p0, v2, :cond_c

    and-int/lit8 p0, p1, 0x1

    if-ne p0, v3, :cond_b

    sget p0, Lvl/h;->M:I

    goto :goto_0

    :cond_b
    sget p0, Lvl/h;->L:I

    goto :goto_0

    :cond_c
    sget p0, Lvl/h;->K:I

    goto :goto_0

    :cond_d
    sget p0, Lvl/h;->J:I

    goto :goto_0

    :cond_e
    and-int/lit8 p0, p1, 0x4

    if-ne p0, v1, :cond_11

    and-int/lit8 p0, p1, 0x2

    if-ne p0, v2, :cond_10

    and-int/lit8 p0, p1, 0x1

    if-ne p0, v3, :cond_f

    sget p0, Lvl/h;->Q:I

    goto :goto_0

    :cond_f
    sget p0, Lvl/h;->P:I

    goto :goto_0

    :cond_10
    sget p0, Lvl/h;->O:I

    goto :goto_0

    :cond_11
    and-int/lit8 p0, p1, 0x2

    if-ne p0, v2, :cond_13

    and-int/lit8 p0, p1, 0x1

    if-ne p0, v3, :cond_12

    sget p0, Lvl/h;->S:I

    goto :goto_0

    :cond_12
    sget p0, Lvl/h;->R:I

    goto :goto_0

    :cond_13
    and-int/lit8 p0, p1, 0x1

    if-ne p0, v3, :cond_14

    sget p0, Lvl/h;->N:I

    :goto_0
    return p0

    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "no any time date"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static f(I)I
    .locals 1

    const/16 v0, 0x2000

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    sget p0, Lvl/h;->b0:I

    goto :goto_0

    :cond_0
    sget p0, Lvl/h;->a0:I

    :goto_0
    return p0
.end method

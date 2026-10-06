.class public Lf8/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lh8/i;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lh8/i;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lg8/b;",
            "Lh8/i;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lg8/a;",
            "Ljava/util/List<",
            "Lh8/b;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lf8/a;->a:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lf8/a;->b:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lf8/a;->c:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lf8/a;->d:Ljava/util/HashMap;

    invoke-static {}, Lf8/a;->j()V

    return-void
.end method

.method public static a(Landroid/os/Bundle;)V
    .locals 3

    sget-object v0, Lf8/a;->d:Ljava/util/HashMap;

    const-string v1, "VBFunctionManager"

    if-eqz v0, :cond_1

    invoke-static {p0}, Lf8/a;->k(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lf8/a;->d:Ljava/util/HashMap;

    sget-object v2, Lg8/a;->f:Lg8/a;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {p0, v0}, Lf8/a;->b(Landroid/os/Bundle;Ljava/util/List;)V

    const-string p0, "doCacheRefresh"

    :goto_0
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :goto_1
    const-string p0, "doCacheRefresh skip"

    goto :goto_0
.end method

.method private static b(Landroid/os/Bundle;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Lh8/b;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lc7/c;->n(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "VBFunctionManager"

    const-string p1, "doCacheRefreshInternal - cache is null!"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh8/b;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p0}, Lh8/b;->f(Landroid/os/Bundle;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static c()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lh8/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lh8/c;

    const v2, 0x7f121b6c

    const v3, 0x7f08107d

    const/4 v4, 0x6

    invoke-direct {v1, v2, v3, v4}, Lh8/c;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lj8/g;->j()Z

    move-result v1

    const v2, 0x7f081079

    if-eqz v1, :cond_0

    new-instance v1, Lh8/c;

    const v3, 0x7f121b49

    const/16 v4, 0x12

    invoke-direct {v1, v3, v2, v4}, Lh8/c;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v1, Lh8/c;

    const v3, 0x7f121b63

    const v4, 0x7f081076

    const/4 v5, 0x7

    invoke-direct {v1, v3, v4, v5}, Lh8/c;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lh8/c;

    const v3, 0x7f121b66

    const/16 v4, 0x9

    invoke-direct {v1, v3, v2, v4}, Lh8/c;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lh8/c;

    const v2, 0x7f121b69

    const v3, 0x7f08107e

    const/16 v4, 0x8

    invoke-direct {v1, v2, v3, v4}, Lh8/c;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lh8/c;

    const v2, 0x7f121b60

    const v3, 0x7f08107c

    const/16 v4, 0xa

    invoke-direct {v1, v2, v3, v4}, Lh8/c;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lh8/c;

    const v2, 0x7f121b6e

    const v3, 0x7f081083

    const/16 v4, 0xb

    invoke-direct {v1, v2, v3, v4}, Lh8/c;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lh8/c;

    const v2, 0x7f121b65

    const v3, 0x7f081078

    const/16 v4, 0xc

    invoke-direct {v1, v2, v3, v4}, Lh8/c;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lh8/c;

    const v2, 0x7f121b64

    const v3, 0x7f081077

    const/16 v4, 0xd

    invoke-direct {v1, v2, v3, v4}, Lh8/c;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lh8/c;

    const v2, 0x7f121b67

    const v3, 0x7f08107a

    const/16 v4, 0xe

    invoke-direct {v1, v2, v3, v4}, Lh8/c;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lh8/c;

    const v2, 0x7f121b6d

    const v3, 0x7f081082

    const/16 v4, 0xf

    invoke-direct {v1, v2, v3, v4}, Lh8/c;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lh8/c;

    const v2, 0x7f121b62

    const v3, 0x7f081075

    const/16 v4, 0x10

    invoke-direct {v1, v2, v3, v4}, Lh8/c;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lh8/c;

    const v2, 0x7f121b68

    const v3, 0x7f08107b

    const/16 v4, 0x11

    invoke-direct {v1, v2, v3, v4}, Lh8/c;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private static d(Ljava/lang/String;Lh8/i;)V
    .locals 5

    invoke-static {p0}, Lj8/u;->t(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lh8/h;

    const v1, 0x7f121b76

    const v2, 0x7f081067

    sget-object v3, Lg8/a;->l:Lg8/a;

    invoke-direct {v0, v1, v2, v3}, Lh8/h;-><init>(IILg8/a;)V

    invoke-virtual {p1, v0}, Lh8/i;->g(Lh8/h;)V

    :cond_0
    invoke-static {}, La8/g0;->z()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lh8/h;

    const v1, 0x7f121b37

    const v2, 0x7f08106a

    sget-object v3, Lg8/a;->k:Lg8/a;

    invoke-direct {v0, v1, v2, v3}, Lh8/h;-><init>(IILg8/a;)V

    invoke-virtual {p1, v0}, Lh8/i;->g(Lh8/h;)V

    :cond_1
    invoke-static {}, Lj8/g;->j()Z

    move-result v0

    const v1, 0x7f081066

    const v2, 0x7f121b54

    if-eqz v0, :cond_2

    invoke-static {p0}, Lj8/g;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lh8/h;

    sget-object v3, Lg8/a;->e:Lg8/a;

    invoke-direct {v0, v2, v1, v3}, Lh8/h;-><init>(IILg8/a;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lj8/g;->p()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lh8/h;

    sget-object v3, Lg8/a;->e:Lg8/a;

    invoke-direct {v0, v2, v1, v3}, Lh8/h;-><init>(IILg8/a;)V

    :goto_0
    invoke-virtual {p1, v0}, Lh8/i;->g(Lh8/h;)V

    :cond_3
    invoke-static {p0}, Lj8/u;->v(Ljava/lang/String;)Z

    move-result v0

    invoke-static {p0}, Lj8/u;->s(Ljava/lang/String;)Z

    move-result p0

    if-nez v0, :cond_4

    if-eqz p0, :cond_5

    :cond_4
    new-instance p0, Lh8/h;

    const v0, 0x7f121b2f

    const v1, 0x7f081063

    sget-object v2, Lg8/a;->g:Lg8/a;

    invoke-direct {p0, v0, v1, v2}, Lh8/h;-><init>(IILg8/a;)V

    invoke-virtual {p1, p0}, Lh8/i;->g(Lh8/h;)V

    :cond_5
    invoke-static {}, La8/t;->l()Z

    move-result p0

    const v0, 0x7f081070

    const v1, 0x7f121b75

    if-eqz p0, :cond_6

    new-instance p0, Lh8/h;

    const v2, 0x7f121b55

    const v3, 0x7f081068

    sget-object v4, Lg8/a;->m:Lg8/a;

    invoke-direct {p0, v2, v3, v4}, Lh8/h;-><init>(IILg8/a;)V

    invoke-virtual {p1, p0}, Lh8/i;->g(Lh8/h;)V

    invoke-static {}, Lj8/m;->n()Z

    move-result p0

    if-eqz p0, :cond_7

    new-instance p0, Lh8/h;

    sget-object v2, Lg8/a;->f:Lg8/a;

    invoke-direct {p0, v1, v0, v2}, Lh8/h;-><init>(IILg8/a;)V

    goto :goto_1

    :cond_6
    invoke-static {}, Lj8/d;->b()I

    move-result p0

    if-lez p0, :cond_7

    new-instance p0, Lh8/h;

    sget-object v2, Lg8/a;->f:Lg8/a;

    invoke-direct {p0, v1, v0, v2}, Lh8/h;-><init>(IILg8/a;)V

    :goto_1
    invoke-virtual {p1, p0}, Lh8/i;->g(Lh8/h;)V

    :cond_7
    invoke-static {}, La8/u;->a()Z

    move-result p0

    if-eqz p0, :cond_8

    new-instance p0, Lh8/h;

    const v0, 0x7f121b85

    const v1, 0x7f081071

    sget-object v2, Lg8/a;->w:Lg8/a;

    invoke-direct {p0, v0, v1, v2}, Lh8/h;-><init>(IILg8/a;)V

    invoke-virtual {p1, p0}, Lh8/i;->g(Lh8/h;)V

    :cond_8
    return-void
.end method

.method public static e(Landroid/content/Context;Lg8/a;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lg8/a;",
            ")",
            "Ljava/util/List<",
            "Lh8/b;",
            ">;"
        }
    .end annotation

    sget-object p0, Lf8/a;->d:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lf8/a;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lf8/a$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const v0, 0x7f0810ac

    const v1, 0x7f0810ad

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    invoke-static {}, Li8/c;->f()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lj8/u;->t(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance p1, Lh8/s;

    const v1, 0x7f121b76

    const v2, 0x7f121b77

    const v3, 0x7f0810b4

    const v4, 0x7f0810b5

    const/16 v5, 0xb

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lh8/s;-><init>(IIIII)V

    goto/16 :goto_0

    :pswitch_1
    invoke-static {}, La8/g0;->z()Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance p1, Lh8/e;

    const v1, 0x7f121b37

    const v2, 0x7f121b38

    const v3, 0x7f110021

    const v4, 0x7f110020

    const/16 v5, 0xa

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lh8/e;-><init>(IIIII)V

    goto/16 :goto_0

    :pswitch_2
    invoke-static {}, Li8/c;->f()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lj8/u;->v(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lh8/a;

    const v2, 0x7f121b4f

    const v3, 0x7f121bb6

    const v4, 0x7f0810b7

    const v5, 0x7f0810b6

    const/16 v6, 0x8

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lh8/a;-><init>(IIIII)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {p1}, Lj8/u;->s(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance p1, Lh8/a;

    const v1, 0x7f121b4e

    const v2, 0x7f121bbc

    const v3, 0x7f0810b9

    const v4, 0x7f0810b8

    const/16 v5, 0x9

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lh8/a;-><init>(IIIII)V

    goto :goto_0

    :pswitch_3
    new-instance p1, Lh8/d;

    const v3, 0x7f121b55

    const/16 v4, 0xc

    invoke-direct {p1, v3, v2, v4}, Lh8/d;-><init>(III)V

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Lh8/d;

    const v2, 0x7f121b56

    const/16 v3, 0xd

    invoke-direct {p1, v2, v1, v3}, Lh8/d;-><init>(III)V

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Lh8/d;

    const v1, 0x7f121b59

    const/16 v2, 0xe

    invoke-direct {p1, v1, v0, v2}, Lh8/d;-><init>(III)V

    goto :goto_0

    :pswitch_4
    new-instance p1, Lh8/g;

    const v3, 0x7f121b53

    const/16 v4, 0xf

    invoke-direct {p1, v3, v2, v4}, Lh8/g;-><init>(III)V

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Lh8/g;

    const v3, 0x7f121b5b

    const/16 v4, 0x11

    invoke-direct {p1, v3, v2, v4}, Lh8/g;-><init>(III)V

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Lh8/g;

    const v3, 0x7f121b72

    const/16 v4, 0x10

    invoke-direct {p1, v3, v2, v4}, Lh8/g;-><init>(III)V

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Lh8/g;

    const v2, 0x7f121b6f

    const/4 v3, 0x6

    invoke-direct {p1, v2, v1, v3}, Lh8/g;-><init>(III)V

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Lh8/g;

    const v1, 0x7f121b70

    const/4 v2, 0x7

    invoke-direct {p1, v1, v0, v2}, Lh8/g;-><init>(III)V

    :goto_0
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_5
    invoke-static {}, Lj8/g;->n()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lf8/a;->c()Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_2
    new-instance p1, Lh8/c;

    const v0, 0x7f121b6c

    const v1, 0x7f081081

    const/4 v2, 0x1

    invoke-direct {p1, v0, v1, v2}, Lh8/c;-><init>(III)V

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lj8/g;->j()Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Lh8/c;

    const v0, 0x7f121b49

    const v1, 0x7f081079

    const/16 v2, 0x12

    invoke-direct {p1, v0, v1, v2}, Lh8/c;-><init>(III)V

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    new-instance p1, Lh8/c;

    const v0, 0x7f121b6b

    const v1, 0x7f081080

    const/4 v2, 0x3

    invoke-direct {p1, v0, v1, v2}, Lh8/c;-><init>(III)V

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Lh8/c;

    const v0, 0x7f121b61

    const v1, 0x7f081074

    const/4 v2, 0x2

    invoke-direct {p1, v0, v1, v2}, Lh8/c;-><init>(III)V

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Lh8/c;

    const v0, 0x7f121b6a

    const v1, 0x7f08107f

    const/4 v2, 0x4

    invoke-direct {p1, v0, v1, v2}, Lh8/c;-><init>(III)V

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Lh8/c;

    const v0, 0x7f121b60

    const v1, 0x7f081073

    const/4 v2, 0x5

    invoke-direct {p1, v0, v1, v2}, Lh8/c;-><init>(III)V

    goto :goto_0

    :cond_4
    :goto_1
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static f(Landroid/content/Context;ZZ)Lh8/i;
    .locals 4

    new-instance v0, Lh8/i;

    sget-object v1, Lg8/b;->a:Lg8/b;

    const-string v2, ""

    invoke-direct {v0, v2, v1}, Lh8/i;-><init>(Ljava/lang/String;Lg8/b;)V

    if-eqz p1, :cond_0

    new-instance p1, Lh8/h;

    const v1, 0x7f121b46

    const v2, 0x7f081084

    sget-object v3, Lg8/a;->v:Lg8/a;

    invoke-direct {p1, v1, v2, v3}, Lh8/h;-><init>(IILg8/a;)V

    invoke-virtual {v0, p1}, Lh8/i;->g(Lh8/h;)V

    :cond_0
    new-instance p1, Lh8/h;

    const v1, 0x7f121b44

    const v2, 0x7f08106f

    sget-object v3, Lg8/a;->a:Lg8/a;

    invoke-direct {p1, v1, v2, v3}, Lh8/h;-><init>(IILg8/a;)V

    invoke-virtual {v0, p1}, Lh8/i;->g(Lh8/h;)V

    new-instance p1, Lh8/h;

    const v1, 0x7f121b43

    const v2, 0x7f081065

    sget-object v3, Lg8/a;->b:Lg8/a;

    invoke-direct {p1, v1, v2, v3}, Lh8/h;-><init>(IILg8/a;)V

    invoke-virtual {v0, p1}, Lh8/i;->g(Lh8/h;)V

    invoke-static {}, La8/g0;->C()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lh8/h;

    const v1, 0x7f121b45

    const v2, 0x7f08106e

    sget-object v3, Lg8/a;->c:Lg8/a;

    invoke-direct {p1, v1, v2, v3}, Lh8/h;-><init>(IILg8/a;)V

    invoke-virtual {v0, p1}, Lh8/i;->g(Lh8/h;)V

    :cond_1
    invoke-static {}, Lj8/s;->i()Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Lh8/h;

    const v1, 0x7f121b42

    const v2, 0x7f08106d

    sget-object v3, Lg8/a;->d:Lg8/a;

    invoke-direct {p1, v1, v2, v3}, Lh8/h;-><init>(IILg8/a;)V

    invoke-virtual {v0, p1}, Lh8/i;->g(Lh8/h;)V

    :cond_2
    invoke-static {p0}, Lj8/n;->c(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Lh8/h;

    const v1, 0x7f121b41

    const v2, 0x7f08108c

    sget-object v3, Lg8/a;->i:Lg8/a;

    invoke-direct {p1, v1, v2, v3}, Lh8/h;-><init>(IILg8/a;)V

    invoke-virtual {v0, p1}, Lh8/i;->g(Lh8/h;)V

    :cond_3
    if-nez p2, :cond_4

    invoke-static {p0}, La8/g0;->p(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_4

    new-instance p0, Lh8/h;

    invoke-static {}, Lj8/a;->e()I

    move-result p1

    const p2, 0x7f081064

    sget-object v1, Lg8/a;->j:Lg8/a;

    invoke-direct {p0, p1, p2, v1}, Lh8/h;-><init>(IILg8/a;)V

    invoke-virtual {v0, p0}, Lh8/i;->g(Lh8/h;)V

    invoke-static {}, Lj8/a;->g()Z

    move-result p1

    invoke-virtual {p0, p1}, Lh8/h;->l(Z)V

    :cond_4
    return-object v0
.end method

.method public static g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lh8/i;",
            ">;"
        }
    .end annotation

    sget-object v0, Lf8/a;->b:Ljava/util/List;

    return-object v0
.end method

.method public static h(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lh8/i;",
            ">;"
        }
    .end annotation

    invoke-static {}, Li8/c;->f()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lf8/a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Lh8/m;

    const v3, 0x7f121b46

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lg8/b;->d:Lg8/b;

    invoke-direct {v2, v1, v3}, Lh8/m;-><init>(Ljava/lang/String;Lg8/b;)V

    sget-object v1, Lf8/a;->a:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    invoke-static {p0, v1, v1}, Lf8/a;->f(Landroid/content/Context;ZZ)Lh8/i;

    move-result-object p0

    sget-object v1, Lf8/a;->a:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lf8/a;->c:Ljava/util/HashMap;

    sget-object v2, Lg8/b;->a:Lg8/b;

    invoke-virtual {v1, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lh8/i;

    const/4 v1, 0x0

    sget-object v2, Lg8/b;->f:Lg8/b;

    invoke-direct {p0, v1, v2}, Lh8/i;-><init>(Ljava/lang/String;Lg8/b;)V

    sget-object v1, Lf8/a;->a:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lf8/a;->c:Ljava/util/HashMap;

    invoke-virtual {v1, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lh8/i;

    sget-object v1, Lg8/b;->b:Lg8/b;

    const-string v2, ""

    invoke-direct {p0, v2, v1}, Lh8/i;-><init>(Ljava/lang/String;Lg8/b;)V

    invoke-static {v0, p0}, Lf8/a;->d(Ljava/lang/String;Lh8/i;)V

    invoke-virtual {p0}, Lh8/i;->r()Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lf8/a;->a:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lf8/a;->c:Ljava/util/HashMap;

    invoke-virtual {v2, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-static {p0}, La8/g0;->p(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lf8/a;->c:Ljava/util/HashMap;

    sget-object v1, Lg8/b;->a:Lg8/b;

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_2

    sget-object p0, Lf8/a;->c:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lh8/i;

    invoke-virtual {p0}, Lh8/i;->l()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh8/h;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lh8/h;->j()Lg8/a;

    move-result-object v2

    sget-object v3, Lg8/a;->j:Lg8/a;

    if-ne v2, v3, :cond_1

    invoke-static {}, Lj8/a;->g()Z

    move-result p0

    invoke-virtual {v1, p0}, Lh8/h;->l(Z)V

    :cond_2
    :goto_0
    sget-object p0, Lf8/a;->c:Ljava/util/HashMap;

    sget-object v1, Lg8/b;->e:Lg8/b;

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lh8/i;

    if-eqz p0, :cond_3

    sget-object v2, Lf8/a;->c:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lf8/a;->a:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lf8/a;->a:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_3
    invoke-static {}, Lve/l;->F()Lve/l;

    move-result-object p0

    invoke-virtual {p0, v0}, Lve/b;->k(Ljava/lang/String;)Lcom/miui/gamebooster/model/ActiveModel;

    move-result-object p0

    invoke-static {p0}, Lh8/k;->w(Lcom/miui/gamebooster/model/ActiveModel;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lh8/k;

    invoke-direct {v0, v1, p0}, Lh8/k;-><init>(Lg8/b;Lcom/miui/gamebooster/model/ActiveModel;)V

    sget-object p0, Lf8/a;->a:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p0, Lf8/a;->c:Ljava/util/HashMap;

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    sget-object p0, Lf8/a;->a:Ljava/util/List;

    return-object p0
.end method

.method public static i(Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lh8/i;",
            ">;"
        }
    .end annotation

    invoke-static {}, Li8/c;->f()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lf8/a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Lh8/m;

    const v3, 0x7f121b46

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lg8/b;->d:Lg8/b;

    invoke-direct {v2, v3, v4}, Lh8/m;-><init>(Ljava/lang/String;Lg8/b;)V

    sget-object v3, Lf8/a;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    invoke-static {p0, v2, v2}, Lf8/a;->f(Landroid/content/Context;ZZ)Lh8/i;

    move-result-object v2

    sget-object v3, Lf8/a;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lh8/i;

    const/4 v4, 0x0

    sget-object v5, Lg8/b;->f:Lg8/b;

    invoke-direct {v3, v4, v5}, Lh8/i;-><init>(Ljava/lang/String;Lg8/b;)V

    sget-object v4, Lf8/a;->a:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v4, Lf8/a;->c:Ljava/util/HashMap;

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lh8/q;

    const v4, 0x7f121b3a

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lg8/b;->g:Lg8/b;

    invoke-direct {v3, v1, v4}, Lh8/q;-><init>(Ljava/lang/String;Lg8/b;)V

    invoke-static {v0, v3}, Lf8/a;->d(Ljava/lang/String;Lh8/i;)V

    sget-object v1, Lf8/a;->a:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lf8/a;->c:Ljava/util/HashMap;

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lf8/a;->c:Ljava/util/HashMap;

    sget-object v3, Lg8/b;->a:Lg8/b;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {p0}, La8/g0;->p(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lf8/a;->c:Ljava/util/HashMap;

    sget-object v1, Lg8/b;->a:Lg8/b;

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_2

    sget-object p0, Lf8/a;->c:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lh8/i;

    invoke-virtual {p0}, Lh8/i;->l()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh8/h;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lh8/h;->j()Lg8/a;

    move-result-object v2

    sget-object v3, Lg8/a;->j:Lg8/a;

    if-ne v2, v3, :cond_1

    invoke-static {}, Lj8/a;->g()Z

    move-result p0

    invoke-virtual {v1, p0}, Lh8/h;->l(Z)V

    :cond_2
    sget-object p0, Lf8/a;->c:Ljava/util/HashMap;

    sget-object v1, Lg8/b;->e:Lg8/b;

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lh8/i;

    if-eqz p0, :cond_3

    sget-object v2, Lf8/a;->c:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lf8/a;->a:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lf8/a;->a:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_3
    invoke-static {}, Lve/l;->F()Lve/l;

    move-result-object p0

    invoke-virtual {p0, v0}, Lve/b;->k(Ljava/lang/String;)Lcom/miui/gamebooster/model/ActiveModel;

    move-result-object p0

    invoke-static {p0}, Lh8/k;->w(Lcom/miui/gamebooster/model/ActiveModel;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lh8/k;

    invoke-direct {v0, v1, p0}, Lh8/k;-><init>(Lg8/b;Lcom/miui/gamebooster/model/ActiveModel;)V

    sget-object p0, Lf8/a;->a:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p0, Lf8/a;->c:Ljava/util/HashMap;

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    sget-object p0, Lf8/a;->a:Ljava/util/List;

    return-object p0
.end method

.method private static j()V
    .locals 5

    sget-object v0, Lf8/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Lh8/m;

    const v3, 0x7f121b46

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lg8/b;->d:Lg8/b;

    invoke-direct {v2, v3, v4}, Lh8/m;-><init>(Ljava/lang/String;Lg8/b;)V

    sget-object v3, Lf8/a;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lh8/q;

    const v3, 0x7f121b3a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lg8/b;->g:Lg8/b;

    invoke-direct {v2, v1, v3}, Lh8/q;-><init>(Ljava/lang/String;Lg8/b;)V

    sget-object v1, Lf8/a;->b:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Lf8/a;->f(Landroid/content/Context;ZZ)Lh8/i;

    move-result-object v0

    sget-object v1, Lf8/a;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lh8/i;

    sget-object v1, Lg8/b;->b:Lg8/b;

    const-string v2, ""

    invoke-direct {v0, v2, v1}, Lh8/i;-><init>(Ljava/lang/String;Lg8/b;)V

    invoke-static {}, Lj8/u;->D()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lh8/h;

    const v2, 0x7f121b76

    const v3, 0x7f081067

    sget-object v4, Lg8/a;->l:Lg8/a;

    invoke-direct {v1, v2, v3, v4}, Lh8/h;-><init>(IILg8/a;)V

    invoke-virtual {v0, v1}, Lh8/i;->g(Lh8/h;)V

    :cond_0
    invoke-static {}, La8/g0;->z()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lh8/h;

    const v2, 0x7f121b37

    const v3, 0x7f08106a

    sget-object v4, Lg8/a;->k:Lg8/a;

    invoke-direct {v1, v2, v3, v4}, Lh8/h;-><init>(IILg8/a;)V

    invoke-virtual {v0, v1}, Lh8/i;->g(Lh8/h;)V

    :cond_1
    invoke-static {}, Lj8/g;->j()Z

    move-result v1

    const v2, 0x7f081066

    const v3, 0x7f121b54

    if-eqz v1, :cond_2

    new-instance v1, Lh8/h;

    sget-object v4, Lg8/a;->e:Lg8/a;

    invoke-direct {v1, v3, v2, v4}, Lh8/h;-><init>(IILg8/a;)V

    :goto_0
    invoke-virtual {v0, v1}, Lh8/i;->g(Lh8/h;)V

    goto :goto_1

    :cond_2
    invoke-static {}, Lj8/g;->p()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Lh8/h;

    sget-object v4, Lg8/a;->e:Lg8/a;

    invoke-direct {v1, v3, v2, v4}, Lh8/h;-><init>(IILg8/a;)V

    goto :goto_0

    :cond_3
    :goto_1
    invoke-static {}, Lj8/u;->w()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {}, Lj8/u;->o()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {}, Lj8/u;->E()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    new-instance v1, Lh8/h;

    const v2, 0x7f121b2f

    const v3, 0x7f081063

    sget-object v4, Lg8/a;->g:Lg8/a;

    invoke-direct {v1, v2, v3, v4}, Lh8/h;-><init>(IILg8/a;)V

    invoke-virtual {v0, v1}, Lh8/i;->g(Lh8/h;)V

    :cond_5
    invoke-static {}, La8/t;->l()Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Lh8/h;

    const v2, 0x7f121b55

    const v3, 0x7f081068

    sget-object v4, Lg8/a;->m:Lg8/a;

    invoke-direct {v1, v2, v3, v4}, Lh8/h;-><init>(IILg8/a;)V

    :goto_2
    invoke-virtual {v0, v1}, Lh8/i;->g(Lh8/h;)V

    goto :goto_3

    :cond_6
    invoke-static {}, Lcom/miui/gamebooster/videobox/utils/MiSoundEffectUtils;->d()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {}, Lcom/miui/gamebooster/videobox/utils/MiSoundEffectUtils;->e()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    new-instance v1, Lh8/h;

    const v2, 0x7f121b75

    const v3, 0x7f081070

    sget-object v4, Lg8/a;->f:Lg8/a;

    invoke-direct {v1, v2, v3, v4}, Lh8/h;-><init>(IILg8/a;)V

    goto :goto_2

    :cond_8
    :goto_3
    invoke-static {}, La8/u;->a()Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance v1, Lh8/h;

    const v2, 0x7f121b85

    const v3, 0x7f081071

    sget-object v4, Lg8/a;->w:Lg8/a;

    invoke-direct {v1, v2, v3, v4}, Lh8/h;-><init>(IILg8/a;)V

    invoke-virtual {v0, v1}, Lh8/i;->g(Lh8/h;)V

    :cond_9
    sget-object v1, Lf8/a;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    return-void
.end method

.method private static k(Landroid/os/Bundle;)Z
    .locals 1

    const-string v0, "spatial_active"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static l()V
    .locals 1

    sget-object v0, Lf8/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Lf8/a;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sget-object v0, Lf8/a;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sget-object v0, Lf8/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

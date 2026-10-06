.class public Lz5/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:I = -0x1

.field private static final b:Lh8/i;

.field private static final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc6/h;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc6/d;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Ljava/util/Set;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lh8/i;

    sget-object v1, Lg8/b;->a:Lg8/b;

    const-string v2, ""

    invoke-direct {v0, v2, v1}, Lh8/i;-><init>(Ljava/lang/String;Lg8/b;)V

    sput-object v0, Lz5/a;->b:Lh8/i;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lz5/a;->c:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lz5/a;->d:Ljava/util/List;

    const/4 v0, 0x0

    sput-object v0, Lz5/a;->e:Ljava/util/Set;

    return-void
.end method

.method private static a()Ljava/util/Set;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "ConversationManager"

    sget-object v1, Lz5/a;->e:Ljava/util/Set;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    sput-object v1, Lz5/a;->e:Ljava/util/Set;

    :try_start_0
    const-string v1, "conversation_box_support_feature"

    const-string v2, ""

    invoke-static {v1, v2}, Lr4/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "all support feature: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v1, Lz5/a;->e:Ljava/util/Set;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0

    :cond_1
    sget-object v2, Lz5/a;->e:Ljava/util/Set;

    invoke-static {v1}, Li8/b;->d0(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "getAllSupportFeature fail : "

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    sget-object v0, Lz5/a;->e:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Lh8/i;
    .locals 8

    sget-object v0, Lz5/a;->b:Lh8/i;

    invoke-virtual {v0}, Lh8/i;->r()Z

    move-result v1

    if-eqz v1, :cond_f

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sget-object v1, Lg8/a;->o:Lg8/a;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lc6/c;

    const v4, 0x7f120a14

    const v5, 0x7f0804fe

    invoke-direct {v3, v4, v5, v1}, Lc6/c;-><init>(IILg8/a;)V

    invoke-virtual {v0, v2, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lw5/f;->p()Lw5/f;

    move-result-object v1

    invoke-virtual {v1}, Lw5/f;->B()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-static {}, Lw5/f;->G()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-eqz v1, :cond_1

    sget-object v1, Lg8/a;->n:Lg8/a;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lc6/c;

    const v6, 0x7f120a13

    const v7, 0x7f0804fb

    invoke-direct {v5, v6, v7, v1}, Lc6/c;-><init>(IILg8/a;)V

    invoke-virtual {v0, v4, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-static {}, Lw5/f;->p()Lw5/f;

    move-result-object v1

    invoke-virtual {v1}, Lw5/f;->D()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lw5/f;->Y()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    if-eqz v1, :cond_3

    sget-object v1, Lg8/a;->p:Lg8/a;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lc6/c;

    const v6, 0x7f1203c4

    const v7, 0x7f080503

    invoke-direct {v5, v6, v7, v1}, Lc6/c;-><init>(IILg8/a;)V

    invoke-virtual {v0, v4, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-static {}, Lw5/f;->p()Lw5/f;

    move-result-object v1

    invoke-virtual {v1}, Lw5/f;->n()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lj8/u;->u(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lg8/a;->t:Lg8/a;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lc6/c;

    const v6, 0x7f1205d4

    const v7, 0x7f08050a

    invoke-direct {v5, v6, v7, v1}, Lc6/c;-><init>(IILg8/a;)V

    invoke-virtual {v0, v4, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-static {}, Lx5/p;->O()Lx5/p;

    move-result-object v1

    invoke-virtual {v1}, Lx5/p;->e0()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lx5/p;->J0()Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v2

    goto :goto_2

    :cond_5
    move v1, v3

    :goto_2
    if-eqz v1, :cond_6

    sget-object v1, Lg8/a;->s:Lg8/a;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lc6/c;

    const v6, 0x7f1205d2

    const v7, 0x7f080504

    invoke-direct {v5, v6, v7, v1}, Lc6/c;-><init>(IILg8/a;)V

    invoke-virtual {v0, v4, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    invoke-static {}, Lx5/p;->O()Lx5/p;

    move-result-object v1

    invoke-virtual {v1}, Lx5/p;->c0()Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Ld6/b;->g:Ld6/b$b;

    invoke-virtual {v1}, Ld6/b$b;->e()Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Lg8/a;->A:Lg8/a;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lc6/c;

    const v6, 0x7f1205cf

    const v7, 0x7f080506

    invoke-direct {v5, v6, v7, v1}, Lc6/c;-><init>(IILg8/a;)V

    invoke-virtual {v0, v4, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    invoke-static {}, Lx5/p;->O()Lx5/p;

    move-result-object v1

    invoke-virtual {v1}, Lx5/p;->f0()Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object v1, Ld6/c;->h:Ld6/c$a;

    invoke-virtual {v1}, Ld6/c$a;->d()Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object v1, Lg8/a;->x:Lg8/a;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lc6/c;

    const v6, 0x7f1205d1

    const v7, 0x7f0804fa

    invoke-direct {v5, v6, v7, v1}, Lc6/c;-><init>(IILg8/a;)V

    invoke-virtual {v0, v4, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    invoke-static {}, Lx5/p;->r0()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    invoke-static {v1}, Lj8/a;->i(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object v1, Lg8/a;->u:Lg8/a;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lc6/c;

    const v6, 0x7f1205d0

    const v7, 0x7f080507

    invoke-direct {v5, v6, v7, v1}, Lc6/c;-><init>(IILg8/a;)V

    invoke-virtual {v0, v4, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    invoke-static {}, Lx5/p;->O()Lx5/p;

    move-result-object v1

    invoke-virtual {v1}, Lx5/p;->b0()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-static {p0}, La8/g0;->p(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_a

    sget-object p0, Lg8/a;->r:Lg8/a;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lc6/c;

    invoke-static {}, Lj8/a;->e()I

    move-result v5

    const v6, 0x7f080509

    invoke-direct {v4, v5, v6, p0}, Lc6/c;-><init>(IILg8/a;)V

    invoke-virtual {v0, v1, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    invoke-static {}, Lx5/p;->O()Lx5/p;

    move-result-object p0

    invoke-virtual {p0}, Lx5/p;->g0()Z

    move-result p0

    if-eqz p0, :cond_b

    invoke-static {}, La8/s1;->a()Z

    move-result p0

    if-nez p0, :cond_b

    sget-object p0, Ld6/d;->l:Ld6/d$b;

    invoke-virtual {p0}, Ld6/d$b;->d()Z

    move-result p0

    if-eqz p0, :cond_b

    sget-object p0, Lg8/a;->z:Lg8/a;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lc6/c;

    const v5, 0x7f1205e3

    const v6, 0x7f08050b

    invoke-direct {v4, v5, v6, p0}, Lc6/c;-><init>(IILg8/a;)V

    invoke-virtual {v0, v1, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    invoke-static {}, Lx5/p;->O()Lx5/p;

    move-result-object p0

    invoke-virtual {p0}, Lx5/p;->d0()Z

    move-result p0

    if-eqz p0, :cond_c

    invoke-static {}, Lx5/p;->I0()Z

    move-result p0

    if-eqz p0, :cond_c

    sget-object p0, Lg8/a;->y:Lg8/a;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lc6/c;

    const v5, 0x7f1205b4

    const v6, 0x7f08099a

    invoke-direct {v4, v5, v6, p0}, Lc6/c;-><init>(IILg8/a;)V

    invoke-virtual {v0, v1, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    invoke-static {}, Lw5/f;->p()Lw5/f;

    move-result-object p0

    invoke-virtual {p0}, Lw5/f;->E()Z

    move-result p0

    if-eqz p0, :cond_d

    invoke-static {}, Lw5/f;->a0()Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_3

    :cond_d
    move v2, v3

    :goto_3
    if-eqz v2, :cond_e

    sget-object p0, Lg8/a;->q:Lg8/a;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lc6/c;

    const v3, 0x7f1203b9

    const v4, 0x7f080505

    invoke-direct {v2, v3, v4, p0}, Lc6/c;-><init>(IILg8/a;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    invoke-static {v0}, Lz5/a;->o(Ljava/util/LinkedHashMap;)V

    goto :goto_5

    :cond_f
    invoke-virtual {v0}, Lh8/i;->l()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_10
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh8/h;

    instance-of v1, v0, Lc6/c;

    if-eqz v1, :cond_10

    check-cast v0, Lc6/c;

    invoke-virtual {v0}, Lc6/c;->p()V

    goto :goto_4

    :cond_11
    :goto_5
    sget-object p0, Lz5/a;->b:Lh8/i;

    return-object p0
.end method

.method public static c()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lc6/d;",
            ">;"
        }
    .end annotation

    sget-object v0, Lz5/a;->d:Ljava/util/List;

    invoke-static {v0}, Lc7/c;->n(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Ld6/a;->e()I

    move-result v1

    new-instance v2, Lc6/d;

    const v3, 0x7f120a16

    sget-object v4, Lc6/d$a;->b:Lc6/d$a;

    invoke-virtual {v4}, Lc6/d$a;->b()I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ne v1, v5, :cond_0

    move v5, v6

    goto :goto_0

    :cond_0
    move v5, v7

    :goto_0
    const v8, 0x7f080502

    invoke-direct {v2, v3, v4, v5, v8}, Lc6/d;-><init>(ILc6/d$a;ZI)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lc6/d;

    const v3, 0x7f120a15

    sget-object v4, Lc6/d$a;->c:Lc6/d$a;

    invoke-virtual {v4}, Lc6/d$a;->b()I

    move-result v5

    if-ne v1, v5, :cond_1

    move v5, v6

    goto :goto_1

    :cond_1
    move v5, v7

    :goto_1
    const v8, 0x7f080501

    invoke-direct {v2, v3, v4, v5, v8}, Lc6/d;-><init>(ILc6/d$a;ZI)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lc6/d;

    const v3, 0x7f120a12

    sget-object v4, Lc6/d$a;->d:Lc6/d$a;

    invoke-virtual {v4}, Lc6/d$a;->b()I

    move-result v5

    if-ne v1, v5, :cond_2

    goto :goto_2

    :cond_2
    move v6, v7

    :goto_2
    const v1, 0x7f080500

    invoke-direct {v2, v3, v4, v6, v1}, Lc6/d;-><init>(ILc6/d$a;ZI)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object v0
.end method

.method public static d(Lc6/h$a;Z)Z
    .locals 1
    .param p0    # Lc6/h$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lz5/a;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lz5/a;->g(Lc6/h$a;)I

    move-result p0

    invoke-static {p0}, Lz5/a;->h(I)Z

    move-result p0

    return p0

    :cond_0
    invoke-static {p0, p1}, Lz5/a;->i(Lc6/h$a;Z)Z

    move-result p0

    return p0
.end method

.method public static e()Ljava/util/List;
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StringFormatInvalid"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lc6/h;",
            ">;"
        }
    .end annotation

    sget-object v0, Lz5/a;->c:Ljava/util/List;

    invoke-static {v0}, Lc7/c;->n(Ljava/util/Collection;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    new-instance v1, Lc6/f;

    const v4, 0x7f1205c6

    invoke-static {}, Lcom/miui/securitycenter/Application;->z()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f1205c5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Lc6/f;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/miui/securitycenter/Application;->z()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f1205c4

    new-array v5, v2, [Ljava/lang/Object;

    const/16 v6, 0x168

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-virtual {v1, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lc6/e;

    const v5, 0x7f1205c3

    sget-object v6, Lc6/h$a;->c:Lc6/h$a;

    invoke-direct {v4, v5, v1, v6, v2}, Lc6/e;-><init>(ILjava/lang/String;Lc6/h$a;Z)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lx5/p;->j0()Z

    move-result v1

    const v4, 0x7f1205cd

    const v5, 0x7f1205bf

    const v6, 0x7f1205c1

    const v7, 0x7f1205bc

    if-eqz v1, :cond_0

    new-instance v1, Lc6/e;

    invoke-static {}, Lcom/miui/securitycenter/Application;->z()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget-object v8, Lc6/h$a;->b:Lc6/h$a;

    invoke-direct {v1, v7, v6, v8, v3}, Lc6/e;-><init>(ILjava/lang/String;Lc6/h$a;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lx5/b;->f()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lc6/e;

    invoke-static {}, Lcom/miui/securitycenter/Application;->z()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lc6/h$a;->e:Lc6/h$a;

    invoke-direct {v1, v5, v4, v6, v3}, Lc6/e;-><init>(ILjava/lang/String;Lc6/h$a;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lx5/b;->e()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Lc6/g;

    invoke-direct {v1}, Lc6/g;-><init>()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lx5/b;->f()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lc6/e;

    invoke-static {}, Lcom/miui/securitycenter/Application;->z()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lc6/h$a;->b:Lc6/h$a;

    invoke-direct {v1, v7, v4, v5, v3}, Lc6/e;-><init>(ILjava/lang/String;Lc6/h$a;Z)V

    :goto_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-static {}, Lx5/b;->f()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lc6/e;

    invoke-static {}, Lcom/miui/securitycenter/Application;->z()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lc6/h$a;->e:Lc6/h$a;

    invoke-direct {v1, v5, v4, v6, v3}, Lc6/e;-><init>(ILjava/lang/String;Lc6/h$a;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lx5/b;->e()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Lc6/g;

    invoke-direct {v1}, Lc6/g;-><init>()V

    goto :goto_0

    :cond_2
    :goto_1
    invoke-static {}, Lx5/p;->D0()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lx5/p;->O()Lx5/p;

    move-result-object v1

    invoke-static {}, Lw5/f;->p()Lw5/f;

    move-result-object v4

    invoke-virtual {v4}, Lw5/f;->n()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lx5/p;->h0(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Lc6/i;

    const v4, 0x7f1205bb

    invoke-static {}, Lcom/miui/securitycenter/Application;->z()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f1205ba

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Lc6/i;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-static {}, Lz5/a;->j()Z

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc6/h;

    instance-of v5, v4, Lc6/f;

    if-eqz v5, :cond_6

    if-eqz v1, :cond_5

    invoke-static {v3}, Lz5/a;->h(I)Z

    move-result v5

    goto :goto_3

    :cond_5
    invoke-static {}, Lx5/p;->v0()Z

    move-result v5

    :goto_3
    invoke-virtual {v4, v5}, Lc6/h;->h(Z)V

    goto :goto_2

    :cond_6
    instance-of v5, v4, Lc6/i;

    if-eqz v5, :cond_8

    if-eqz v1, :cond_7

    invoke-static {v2}, Lz5/a;->h(I)Z

    move-result v5

    goto :goto_3

    :cond_7
    invoke-static {}, Lx5/p;->B0()Z

    move-result v5

    goto :goto_3

    :cond_8
    instance-of v5, v4, Lc6/e;

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Lc6/h;->c()Lc6/h$a;

    move-result-object v5

    sget-object v6, Lc6/h$a;->e:Lc6/h$a;

    if-ne v5, v6, :cond_4

    invoke-static {v6, v3}, Lz5/a;->d(Lc6/h$a;Z)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-static {}, Lx5/p;->q0()Z

    move-result v5

    if-eqz v5, :cond_9

    move v5, v2

    goto :goto_3

    :cond_9
    move v5, v3

    goto :goto_3

    :cond_a
    sget-object v0, Lz5/a;->c:Ljava/util/List;

    return-object v0
.end method

.method public static f()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lh8/h;",
            ">;"
        }
    .end annotation

    sget-object v0, Lz5/a;->b:Lh8/i;

    invoke-virtual {v0}, Lh8/i;->l()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static g(Lc6/h$a;)I
    .locals 1

    sget-object v0, Lc6/h$a;->d:Lc6/h$a;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    :cond_0
    sget-object v0, Lc6/h$a;->c:Lc6/h$a;

    if-ne p0, v0, :cond_1

    const/4 p0, 0x3

    goto :goto_0

    :cond_1
    sget-object v0, Lc6/h$a;->b:Lc6/h$a;

    if-ne p0, v0, :cond_2

    const/4 p0, 0x4

    goto :goto_0

    :cond_2
    sget-object v0, Lc6/h$a;->e:Lc6/h$a;

    if-ne p0, v0, :cond_3

    const/4 p0, 0x5

    goto :goto_0

    :cond_3
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public static h(I)Z
    .locals 8

    const-string v0, "ConversationManager"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "android.media.audiofx.DeNoiseUtils"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "isDeNoiseAvailable"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v6

    aput-object v6, v4, v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v7

    invoke-static {v2, v3, v5, v4}, Lbh/f;->h(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "check DeNoise Enable state by fw, type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", enable = "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception p0

    const-string v2, "isDenoiseEnable :"

    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method private static i(Lc6/h$a;Z)Z
    .locals 2
    .param p0    # Lc6/h$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lc6/h$a;->e:Lc6/h$a;

    if-ne p0, v0, :cond_0

    invoke-static {}, Lx5/b;->g()Z

    move-result p0

    return p0

    :cond_0
    sget-object v0, Lc6/h$a;->c:Lc6/h$a;

    if-eq p0, v0, :cond_3

    sget-object v0, Lc6/h$a;->b:Lc6/h$a;

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lc6/h$a;->d:Lc6/h$a;

    if-ne p0, v0, :cond_2

    invoke-static {}, Lj8/k;->h()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isDenoiseEnable unknown type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ConversationManager"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    :cond_3
    :goto_0
    invoke-static {}, Lx5/p;->v0()Z

    move-result p0

    return p0
.end method

.method public static j()Z
    .locals 3

    sget v0, Lz5/a;->a:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    const-string v0, "ro.vendor.audio.denoiseutils"

    invoke-static {v0, v1}, Lx4/v1;->a(Ljava/lang/String;Z)Z

    move-result v0

    sput v0, Lz5/a;->a:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sSupportFwCheckEnableState = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lz5/a;->a:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ConversationManager"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget v0, Lz5/a;->a:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method public static k(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lc6/d$a;->b:Lc6/d$a;

    invoke-virtual {v0}, Lc6/d$a;->b()I

    move-result v0

    if-ne p0, v0, :cond_0

    const-string p0, "\u6696\u8272"

    return-object p0

    :cond_0
    sget-object v0, Lc6/d$a;->c:Lc6/d$a;

    invoke-virtual {v0}, Lc6/d$a;->b()I

    move-result v0

    if-ne p0, v0, :cond_1

    const-string p0, "\u81ea\u7136"

    return-object p0

    :cond_1
    sget-object v0, Lc6/d$a;->d:Lc6/d$a;

    invoke-virtual {v0}, Lc6/d$a;->b()I

    move-result v0

    if-ne p0, v0, :cond_2

    const-string p0, "\u51b7\u8272"

    return-object p0

    :cond_2
    const-string p0, "\u672a\u77e5"

    return-object p0
.end method

.method public static l(Lc6/h$a;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lc6/h$a;->c:Lc6/h$a;

    if-ne p0, v0, :cond_0

    const-string p0, "\u591a\u4eba\u573a\u666f"

    return-object p0

    :cond_0
    sget-object v0, Lc6/h$a;->b:Lc6/h$a;

    if-ne p0, v0, :cond_1

    const-string p0, "\u5355\u4eba\u573a\u666f_\u666e\u901a"

    return-object p0

    :cond_1
    sget-object v0, Lc6/h$a;->e:Lc6/h$a;

    if-ne p0, v0, :cond_2

    const-string p0, "\u5355\u4eba\u573a\u666f_\u58f0\u7eb9"

    return-object p0

    :cond_2
    const-string p0, "\u672a\u77e5"

    return-object p0
.end method

.method public static m()V
    .locals 1

    sget-object v0, Lz5/a;->b:Lh8/i;

    invoke-virtual {v0}, Lh8/i;->l()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Lz5/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Lz5/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    sput-object v0, Lz5/a;->e:Ljava/util/Set;

    return-void
.end method

.method public static n()V
    .locals 1

    sget-object v0, Lz5/a;->b:Lh8/i;

    invoke-virtual {v0}, Lh8/i;->l()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private static o(Ljava/util/LinkedHashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lc6/c;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lz5/a;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    sget-object v1, Lz5/a;->b:Lh8/i;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh8/h;

    invoke-virtual {v1, v0}, Lh8/i;->g(Lh8/h;)V

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc6/c;

    if-eqz v1, :cond_1

    sget-object v2, Lz5/a;->b:Lh8/i;

    invoke-virtual {v2, v1}, Lh8/i;->g(Lh8/h;)V

    goto :goto_1

    :cond_2
    return-void
.end method

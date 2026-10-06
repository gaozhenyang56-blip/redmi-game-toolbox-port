.class public final Ljc/m$e;
.super Landroidx/lifecycle/a0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljc/m;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/lifecycle/a0<",
        "Ljava/util/List<",
        "+",
        "Ljc/f;",
        ">;>;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nPermissionUsageViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PermissionUsageViewModel.kt\ncom/miui/permcenter/privacycenter/usage/PermissionUsageViewModel$resultPermissionUsages$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,390:1\n766#2:391\n857#2,2:392\n1054#2:394\n1864#2,2:395\n1866#2:398\n1#3:397\n*S KotlinDebug\n*F\n+ 1 PermissionUsageViewModel.kt\ncom/miui/permcenter/privacycenter/usage/PermissionUsageViewModel$resultPermissionUsages$1\n*L\n84#1:391\n84#1:392,2\n85#1:394\n89#1:395,2\n89#1:398\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic m:Ljc/m;


# direct methods
.method constructor <init>(Ljc/m;)V
    .locals 3

    iput-object p1, p0, Ljc/m$e;->m:Ljc/m;

    invoke-direct {p0}, Landroidx/lifecycle/a0;-><init>()V

    invoke-static {p1}, Ljc/m;->d(Ljc/m;)Landroidx/lifecycle/c0;

    move-result-object v0

    new-instance v1, Ljc/m$e$a;

    invoke-direct {v1, p0}, Ljc/m$e$a;-><init>(Ljc/m$e;)V

    new-instance v2, Ljc/m$f;

    invoke-direct {v2, v1}, Ljc/m$f;-><init>(Lak/l;)V

    invoke-virtual {p0, v0, v2}, Landroidx/lifecycle/a0;->p(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/d0;)V

    invoke-static {p1}, Ljc/m;->c(Ljc/m;)Landroidx/lifecycle/c0;

    move-result-object v0

    new-instance v1, Ljc/m$e$b;

    invoke-direct {v1, p0}, Ljc/m$e$b;-><init>(Ljc/m$e;)V

    new-instance v2, Ljc/m$f;

    invoke-direct {v2, v1}, Ljc/m$f;-><init>(Lak/l;)V

    invoke-virtual {p0, v0, v2}, Landroidx/lifecycle/a0;->p(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/d0;)V

    invoke-static {p1}, Ljc/m;->a(Ljc/m;)Landroidx/lifecycle/c0;

    move-result-object v0

    new-instance v1, Ljc/m$e$c;

    invoke-direct {v1, p0}, Ljc/m$e$c;-><init>(Ljc/m$e;)V

    new-instance v2, Ljc/m$f;

    invoke-direct {v2, v1}, Ljc/m$f;-><init>(Lak/l;)V

    invoke-virtual {p0, v0, v2}, Landroidx/lifecycle/a0;->p(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/d0;)V

    invoke-static {p1}, Ljc/m;->e(Ljc/m;)Landroidx/lifecycle/c0;

    move-result-object p1

    new-instance v0, Ljc/m$e$d;

    invoke-direct {v0, p0}, Ljc/m$e$d;-><init>(Ljc/m$e;)V

    new-instance v1, Ljc/m$f;

    invoke-direct {v1, v0}, Ljc/m$f;-><init>(Lak/l;)V

    invoke-virtual {p0, p1, v1}, Landroidx/lifecycle/a0;->p(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/d0;)V

    return-void
.end method

.method public static final synthetic q(Ljc/m$e;Z)V
    .locals 0

    invoke-direct {p0, p1}, Ljc/m$e;->r(Z)V

    return-void
.end method

.method private final r(Z)V
    .locals 9

    if-eqz p1, :cond_0

    iget-object p1, p0, Ljc/m$e;->m:Ljc/m;

    invoke-virtual {p1}, Ljc/m;->w()Landroidx/lifecycle/c0;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/c0;->o(Ljava/lang/Object;)V

    :cond_0
    iget-object p1, p0, Ljc/m$e;->m:Ljc/m;

    invoke-static {p1}, Ljc/m;->d(Ljc/m;)Landroidx/lifecycle/c0;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    iget-object v0, p0, Ljc/m$e;->m:Ljc/m;

    invoke-static {v0}, Ljc/m;->c(Ljc/m;)Landroidx/lifecycle/c0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Ljc/m$e;->m:Ljc/m;

    invoke-static {v1}, Ljc/m;->a(Ljc/m;)Landroidx/lifecycle/c0;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iget-object v2, p0, Ljc/m$e;->m:Ljc/m;

    invoke-static {v2}, Ljc/m;->e(Ljc/m;)Landroidx/lifecycle/c0;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x7e

    if-ne v3, v4, :cond_1

    if-eqz v1, :cond_d

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v4, :cond_2

    if-eqz v0, :cond_d

    :cond_2
    if-nez v2, :cond_3

    goto/16 :goto_3

    :cond_3
    iget-object v3, p0, Ljc/m$e;->m:Ljc/m;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v3, v5}, Ljc/m;->f(Ljc/m;I)Ljc/b;

    move-result-object v3

    invoke-virtual {v3}, Ljc/b;->b()J

    move-result-wide v5

    invoke-static {v2}, Lqj/l;->S(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v4, :cond_4

    if-eqz v1, :cond_5

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_5

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_5
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljc/g;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v4, v7}, Ljc/g;->d(I)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v4}, Ljc/g;->k()J

    move-result-wide v7

    cmp-long v4, v7, v5

    if-ltz v4, :cond_7

    const/4 v3, 0x1

    :cond_7
    if-eqz v3, :cond_6

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_8
    new-instance p1, Ljc/m$e$e;

    invoke-direct {p1}, Ljc/m$e$e;-><init>()V

    invoke-static {v0, p1}, Lqj/l;->M(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v4, v3, 0x1

    if-gez v3, :cond_9

    invoke-static {}, Lqj/l;->n()V

    :cond_9
    check-cast v2, Ljc/g;

    if-eqz v3, :cond_a

    if-lez v3, :cond_b

    add-int/lit8 v3, v3, -0x1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljc/g;

    invoke-virtual {v2, v3}, Ljc/g;->p(Ljc/g;)Z

    move-result v3

    if-nez v3, :cond_b

    :cond_a
    new-instance v3, Ljc/k;

    invoke-direct {v3}, Ljc/k;-><init>()V

    invoke-virtual {v2}, Ljc/f;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljc/f;->b(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v4

    goto :goto_2

    :cond_c
    invoke-virtual {p0, v0}, Landroidx/lifecycle/c0;->o(Ljava/lang/Object;)V

    :cond_d
    :goto_3
    return-void
.end method

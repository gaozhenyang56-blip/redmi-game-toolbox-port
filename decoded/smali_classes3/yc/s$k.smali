.class final Lyc/s$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyc/s;->u(Ljava/lang/String;Ltj/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/f;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lyc/s;


# direct methods
.method constructor <init>(Ljava/lang/String;Lyc/s;)V
    .locals 0

    iput-object p1, p0, Lyc/s$k;->a:Ljava/lang/String;

    iput-object p2, p0, Lyc/s$k;->b:Lyc/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Ltj/d;)Ljava/lang/Object;
    .locals 11
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ltj/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lyc/r;",
            ">;",
            "Ltj/d<",
            "-",
            "Loj/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p2, p0, Lyc/s$k;->a:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyc/r;

    invoke-virtual {v1}, Lyc/r;->f()Le3/g;

    move-result-object v2

    invoke-virtual {v1}, Lyc/r;->e()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    const-string v3, "this as java.lang.String).toLowerCase(Locale.ROOT)"

    invoke-static {v5, v3}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, p0, Lyc/s$k;->a:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x6

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Ljk/f;->K(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_1

    iget-object v5, v2, Le3/g;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "info.py.toString()"

    invoke-static {v5, v6}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, p0, Lyc/s$k;->a:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Ljk/f;->u(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v2, v2, Le3/g;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "info.pyFirst.toString()"

    invoke-static {v2, v5}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p0, Lyc/s$k;->a:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v4, v7, v8, v9}, Ljk/f;->x(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    invoke-virtual {v1}, Lyc/r;->h()I

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v1}, Lyc/r;->h()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_4
    iget-object p1, p0, Lyc/s$k;->b:Lyc/s;

    invoke-virtual {p1}, Lyc/s;->o()Ljava/util/Comparator;

    move-result-object p1

    invoke-static {p2, p1}, Lqj/l;->q(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object p1, p0, Lyc/s$k;->b:Lyc/s;

    invoke-virtual {p1}, Lyc/s;->o()Ljava/util/Comparator;

    move-result-object p1

    invoke-static {v0, p1}, Lqj/l;->q(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object p1, p0, Lyc/s$k;->b:Lyc/s;

    invoke-virtual {p1}, Lyc/s;->m()Landroidx/lifecycle/c0;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/lifecycle/c0;->m(Ljava/lang/Object;)V

    iget-object p1, p0, Lyc/s$k;->b:Lyc/s;

    invoke-virtual {p1}, Lyc/s;->n()Landroidx/lifecycle/c0;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/lifecycle/c0;->m(Ljava/lang/Object;)V

    :cond_5
    sget-object p1, Loj/t;->a:Loj/t;

    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Ltj/d;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lyc/s$k;->a(Ljava/util/List;Ltj/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

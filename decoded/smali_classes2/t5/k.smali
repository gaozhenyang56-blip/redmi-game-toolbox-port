.class public final Lt5/k;
.super Landroidx/recyclerview/widget/RecyclerView$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt5/k$a;,
        Lt5/k$b;,
        Lt5/k$c;,
        Lt5/k$d;,
        Lt5/k$e;,
        Lt5/k$f;,
        Lt5/k$g;,
        Lt5/k$h;,
        Lt5/k$i;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$h<",
        "Lt5/k$g;",
        ">;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nGameFilterAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GameFilterAdapter.kt\ncom/miui/gamebooster/adpater/GameFilterAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,363:1\n1855#2,2:364\n*S KotlinDebug\n*F\n+ 1 GameFilterAdapter.kt\ncom/miui/gamebooster/adpater/GameFilterAdapter\n*L\n162#1:364,2\n*E\n"
    }
.end annotation


# static fields
.field public static final e:Lt5/k$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Loj/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lt5/k$b;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final d:Lak/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lak/p<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Loj/t;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lt5/k$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lt5/k$a;-><init>(Lbk/g;)V

    sput-object v0, Lt5/k;->e:Lt5/k$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "pkg"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$h;-><init>()V

    iput-object p1, p0, Lt5/k;->a:Ljava/lang/String;

    sget-object p1, Lt5/k$j;->a:Lt5/k$j;

    invoke-static {p1}, Loj/g;->a(Lak/a;)Loj/f;

    move-result-object p1

    iput-object p1, p0, Lt5/k;->b:Loj/f;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lt5/k;->c:Ljava/util/List;

    new-instance p1, Lt5/k$k;

    invoke-direct {p1, p0}, Lt5/k$k;-><init>(Lt5/k;)V

    iput-object p1, p0, Lt5/k;->d:Lak/p;

    return-void
.end method

.method public static final synthetic k(Lt5/k;Lt5/k$d;)V
    .locals 0

    invoke-direct {p0, p1}, Lt5/k;->p(Lt5/k$d;)V

    return-void
.end method

.method public static final synthetic l(Lt5/k;)Lrh/c;
    .locals 0

    invoke-direct {p0}, Lt5/k;->q()Lrh/c;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic m(Lt5/k;)Lak/p;
    .locals 0

    iget-object p0, p0, Lt5/k;->d:Lak/p;

    return-object p0
.end method

.method public static final synthetic n(Lt5/k;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lt5/k;->c:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic o(Lt5/k;ILjava/lang/Integer;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lt5/k;->v(ILjava/lang/Integer;Ljava/lang/Boolean;)V

    return-void
.end method

.method private final p(Lt5/k$d;)V
    .locals 8

    iget-object v0, p0, Lt5/k;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    add-int/lit8 v3, v2, 0x1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lt5/k$b;

    instance-of v5, v4, Lt5/k$d;

    const-string v6, "StateChange"

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lt5/k$b;->a()I

    move-result v5

    invoke-virtual {p1}, Lt5/k$d;->a()I

    move-result v7

    if-ne v5, v7, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    move v5, v1

    :goto_1
    check-cast v4, Lt5/k$d;

    invoke-virtual {v4}, Lt5/k$d;->g()Z

    move-result v7

    if-eq v7, v5, :cond_3

    invoke-virtual {v4, v5}, Lt5/k$d;->j(Z)V

    goto :goto_2

    :cond_1
    instance-of v5, v4, Lt5/k$f;

    if-eqz v5, :cond_2

    invoke-virtual {p1}, Lt5/k$d;->a()I

    move-result v5

    invoke-virtual {v4, v5}, Lt5/k$b;->c(I)V

    check-cast v4, Lt5/k$f;

    invoke-virtual {v4}, Lt5/k$f;->d()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p1}, Lt5/k$d;->e()Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v5, v7}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p1}, Lt5/k$d;->e()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Lt5/k$f;->e(Ljava/lang/Boolean;)V

    :goto_2
    invoke-virtual {p0, v2, v6}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemChanged(ILjava/lang/Object;)V

    goto :goto_3

    :cond_2
    instance-of v5, v4, Lt5/k$e;

    if-eqz v5, :cond_3

    invoke-virtual {p1}, Lt5/k$d;->a()I

    move-result v5

    invoke-virtual {v4, v5}, Lt5/k$b;->c(I)V

    check-cast v4, Lt5/k$e;

    invoke-virtual {v4}, Lt5/k$e;->d()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1}, Lt5/k$d;->h()Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5, v7}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p1}, Lt5/k$d;->h()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lt5/k$e;->e(Ljava/lang/Integer;)V

    goto :goto_2

    :cond_3
    :goto_3
    move v2, v3

    goto :goto_0

    :cond_4
    sget-object v0, La8/s0;->g:La8/s0$a;

    invoke-virtual {v0}, La8/s0$a;->a()La8/s0;

    move-result-object v0

    iget-object v1, p0, Lt5/k;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, La8/s0;->y(Ljava/lang/String;Lt5/k$d;)V

    return-void
.end method

.method private final q()Lrh/c;
    .locals 2

    iget-object v0, p0, Lt5/k;->b:Loj/f;

    invoke-interface {v0}, Loj/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-imageOptions>(...)"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lrh/c;

    return-object v0
.end method

.method private final v(ILjava/lang/Integer;Ljava/lang/Boolean;)V
    .locals 5

    iget-object v0, p0, Lt5/k;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v2, p2

    move-object v1, p3

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lt5/k$b;

    invoke-virtual {v3}, Lt5/k$b;->a()I

    move-result v4

    if-ne v4, p1, :cond_0

    instance-of v4, v3, Lt5/k$d;

    if-eqz v4, :cond_0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result v1

    move-object v4, v3

    check-cast v4, Lt5/k$d;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Lt5/k$d;->k(Ljava/lang/Integer;)V

    invoke-virtual {v4}, Lt5/k$d;->e()Ljava/lang/Boolean;

    move-result-object v1

    :cond_1
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    check-cast v3, Lt5/k$d;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v2}, Lt5/k$d;->i(Ljava/lang/Boolean;)V

    invoke-virtual {v3}, Lt5/k$d;->h()Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_2
    sget-object p2, La8/s0;->g:La8/s0$a;

    invoke-virtual {p2}, La8/s0$a;->a()La8/s0;

    move-result-object p2

    iget-object p3, p0, Lt5/k;->a:Ljava/lang/String;

    new-instance v0, Lt5/k$d;

    invoke-direct {v0, p1, v1, v2}, Lt5/k$d;-><init>(ILjava/lang/Boolean;Ljava/lang/Integer;)V

    invoke-virtual {p2, p3, v0}, La8/s0;->y(Ljava/lang/String;Lt5/k$d;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lt5/k;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lt5/k;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lt5/k$b;

    invoke-virtual {p1}, Lt5/k$b;->b()I

    move-result p1

    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 0

    check-cast p1, Lt5/k$g;

    invoke-virtual {p0, p1, p2}, Lt5/k;->s(Lt5/k$g;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;ILjava/util/List;)V
    .locals 0

    check-cast p1, Lt5/k$g;

    invoke-virtual {p0, p1, p2, p3}, Lt5/k;->t(Lt5/k$g;ILjava/util/List;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lt5/k;->u(Landroid/view/ViewGroup;I)Lt5/k$g;

    move-result-object p1

    return-object p1
.end method

.method public final r()Lt5/k$d;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lt5/k;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lt5/k$b;

    instance-of v4, v3, Lt5/k$d;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Lt5/k$d;

    invoke-virtual {v4}, Lt5/k$d;->g()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_1
    check-cast v2, Lt5/k$d;

    if-nez v2, :cond_2

    new-instance v2, Lt5/k$d;

    const/4 v0, 0x0

    invoke-direct {v2, v0, v1, v1}, Lt5/k$d;-><init>(ILjava/lang/Boolean;Ljava/lang/Integer;)V

    :cond_2
    return-object v2
.end method

.method public s(Lt5/k$g;I)V
    .locals 1
    .param p1    # Lt5/k$g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lt5/k;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lt5/k$b;

    invoke-virtual {p1, p2}, Lt5/k$g;->a(Lt5/k$b;)V

    return-void
.end method

.method public final setData(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lt5/k$b;",
            ">;)V"
        }
    .end annotation

    const-string v0, "dataList"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lt5/k;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lt5/k;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    return-void
.end method

.method public t(Lt5/k$g;ILjava/util/List;)V
    .locals 1
    .param p1    # Lt5/k$g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt5/k$g;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payloads"

    invoke-static {p3, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "StateChange"

    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p3, p0, Lt5/k;->c:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lt5/k$b;

    invoke-virtual {p1, p2}, Lt5/k$g;->b(Lt5/k$b;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$h;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;ILjava/util/List;)V

    :goto_0
    return-void
.end method

.method public u(Landroid/view/ViewGroup;I)Lt5/k$g;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "parent"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    new-instance p2, Lt5/k$g;

    new-instance v0, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-direct {p2, v0}, Lt5/k$g;-><init>(Landroid/view/View;)V

    return-object p2

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0e024d

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p2, "from(parent.context)\n   \u2026_strength, parent, false)"

    invoke-static {p1, p2}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lt5/k$h;

    invoke-direct {p2, p0, p1}, Lt5/k$h;-><init>(Lt5/k;Landroid/view/View;)V

    return-object p2

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0e024b

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p2, "from(parent.context)\n   \u2026rk_corner, parent, false)"

    invoke-static {p1, p2}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lt5/k$i;

    invoke-direct {p2, p0, p1}, Lt5/k$i;-><init>(Lt5/k;Landroid/view/View;)V

    return-object p2

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0e024c

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p2, "from(parent.context)\n   \u2026lter_game, parent, false)"

    invoke-static {p1, p2}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lt5/k$c;

    invoke-direct {p2, p0, p1}, Lt5/k$c;-><init>(Lt5/k;Landroid/view/View;)V

    return-object p2

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

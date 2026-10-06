.class final Lcom/miui/permcenter/provision/b;
.super Landroidx/recyclerview/widget/RecyclerView$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$h<",
        "Lcom/miui/permcenter/provision/f;",
        ">;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nPrivacyExtraProvisionActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PrivacyExtraProvisionActivity.kt\ncom/miui/permcenter/provision/ProvisionAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,294:1\n1864#2,3:295\n1864#2,3:298\n*S KotlinDebug\n*F\n+ 1 PrivacyExtraProvisionActivity.kt\ncom/miui/permcenter/provision/ProvisionAdapter\n*L\n185#1:295,3\n197#1:298,3\n*E\n"
    }
.end annotation


# instance fields
.field private final a:Landroid/app/Activity;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lqc/a;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Lak/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lak/p<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Loj/t;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final d:Lak/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lak/l<",
            "Lqc/a;",
            "Loj/t;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/ArrayList;Lak/p;Lak/l;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lak/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lak/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList<",
            "Lqc/a;",
            ">;",
            "Lak/p<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/String;",
            "Loj/t;",
            ">;",
            "Lak/l<",
            "-",
            "Lqc/a;",
            "Loj/t;",
            ">;)V"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jumpUrl"

    invoke-static {p3, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jumpPermission"

    invoke-static {p4, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$h;-><init>()V

    iput-object p1, p0, Lcom/miui/permcenter/provision/b;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/miui/permcenter/provision/b;->b:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/miui/permcenter/provision/b;->c:Lak/p;

    iput-object p4, p0, Lcom/miui/permcenter/provision/b;->d:Lak/l;

    return-void
.end method

.method public static synthetic k(Lqc/a;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/permcenter/provision/b;->o(Lqc/a;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method private static final o(Lqc/a;Landroid/widget/CompoundButton;Z)V
    .locals 0

    const-string p1, "$info"

    invoke-static {p0, p1}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lqc/a;->s(Z)V

    return-void
.end method


# virtual methods
.method public final getData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lqc/a;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/permcenter/provision/b;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/provision/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final l()Lak/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lak/l<",
            "Lqc/a;",
            "Loj/t;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/permcenter/provision/b;->d:Lak/l;

    return-object v0
.end method

.method public final m()Lak/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lak/p<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Loj/t;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/permcenter/provision/b;->c:Lak/p;

    return-object v0
.end method

.method public n(Lcom/miui/permcenter/provision/f;I)V
    .locals 11
    .param p1    # Lcom/miui/permcenter/provision/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/permcenter/provision/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    const-string v0, "data[position]"

    invoke-static {p2, v0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lqc/a;

    invoke-virtual {p1}, Lcom/miui/permcenter/provision/f;->a()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lqc/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lqc/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "<br>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lqc/a;->l()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v8, v4, 0x1

    if-gez v4, :cond_0

    invoke-static {}, Lqj/l;->n()V

    :cond_0
    check-cast v5, Ljava/lang/String;

    iget-object v9, p0, Lcom/miui/permcenter/provision/b;->a:Landroid/app/Activity;

    const v10, 0x7f12145b

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v9, v5}, Lxc/d;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v3

    invoke-virtual {p2}, Lqc/a;->m()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v6, v7

    invoke-virtual {v9, v10, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, v8

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lqc/a;->g()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v7

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lqc/a;->g()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v3

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v9, v5, 0x1

    if-gez v5, :cond_2

    invoke-static {}, Lqj/l;->n()V

    :cond_2
    check-cast v8, Ljava/lang/String;

    if-eqz v5, :cond_3

    const-string v5, "\u3001"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v5, p0, Lcom/miui/permcenter/provision/b;->a:Landroid/app/Activity;

    invoke-static {v5, v8}, Lxc/d;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v5, v9

    goto :goto_1

    :cond_4
    invoke-virtual {p2}, Lqc/a;->d()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    xor-int/2addr v4, v7

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/miui/permcenter/provision/b;->a:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f121921

    new-array v8, v7, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v3

    invoke-virtual {v4, v5, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_5
    iget-object v4, p0, Lcom/miui/permcenter/provision/b;->a:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f121920

    new-array v8, v7, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v3

    invoke-virtual {v4, v5, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {p2}, Lqc/a;->p()Ljava/lang/String;

    move-result-object v2

    const-string v4, ""

    invoke-static {v2, v4}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v7

    invoke-virtual {p2}, Lqc/a;->j()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    xor-int/2addr v5, v7

    invoke-virtual {p2}, Lqc/a;->b()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v4}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    invoke-virtual {p2}, Lqc/a;->b()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_7
    const-string v8, "{\n                activi\u2026          )\n            }"

    if-eqz v5, :cond_8

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/miui/permcenter/provision/b;->a:Landroid/app/Activity;

    const v5, 0x7f121918

    new-array v9, v6, [Ljava/lang/Object;

    invoke-virtual {p2}, Lqc/a;->p()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v3

    invoke-virtual {p2}, Lqc/a;->j()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v7

    invoke-virtual {v2, v5, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_8
    if-eqz v5, :cond_9

    iget-object v2, p0, Lcom/miui/permcenter/provision/b;->a:Landroid/app/Activity;

    const v5, 0x7f121925

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {p2}, Lqc/a;->j()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v3

    invoke-virtual {v2, v5, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-static {v2, v8}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    :cond_9
    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/miui/permcenter/provision/b;->a:Landroid/app/Activity;

    const v5, 0x7f12192b

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {p2}, Lqc/a;->p()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v3

    invoke-virtual {v2, v5, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_a
    move-object v2, v4

    :goto_4
    invoke-static {v2, v4}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    invoke-virtual {p1}, Lcom/miui/permcenter/provision/f;->c()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/miui/permcenter/provision/f;->c()Landroid/widget/TextView;

    move-result-object v4

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/miui/permcenter/provision/f;->c()Landroid/widget/TextView;

    move-result-object v2

    new-instance v4, Lcc/d;

    new-instance v5, Lcom/miui/permcenter/provision/b$a;

    invoke-direct {v5, p2, p0}, Lcom/miui/permcenter/provision/b$a;-><init>(Lqc/a;Lcom/miui/permcenter/provision/b;)V

    invoke-direct {v4, v5}, Lcc/d;-><init>(Lcc/c;)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_5

    :cond_b
    invoke-virtual {p1}, Lcom/miui/permcenter/provision/f;->c()Landroid/widget/TextView;

    move-result-object v2

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_5
    const/4 v2, 0x0

    invoke-static {v0, v1, v3, v6, v2}, Ljk/f;->B(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_c
    invoke-virtual {p1}, Lcom/miui/permcenter/provision/f;->b()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/miui/permcenter/provision/f;->b()Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lcc/d;

    new-instance v2, Lcom/miui/permcenter/provision/b$b;

    invoke-direct {v2, p0, p2}, Lcom/miui/permcenter/provision/b$b;-><init>(Lcom/miui/permcenter/provision/b;Lqc/a;)V

    invoke-direct {v1, v2}, Lcc/d;-><init>(Lcc/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-virtual {p1}, Lcom/miui/permcenter/provision/f;->d()Lmiuix/slidingwidget/widget/SlidingButton;

    move-result-object v0

    invoke-virtual {p2}, Lqc/a;->n()Z

    move-result v1

    invoke-virtual {v0, v1}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    invoke-virtual {p1}, Lcom/miui/permcenter/provision/f;->d()Lmiuix/slidingwidget/widget/SlidingButton;

    move-result-object p1

    new-instance v0, Lcom/miui/permcenter/provision/a;

    invoke-direct {v0, p2}, Lcom/miui/permcenter/provision/a;-><init>(Lqc/a;)V

    invoke-virtual {p1, v0}, Lmiuix/slidingwidget/widget/SlidingButton;->setOnPerformCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 0

    check-cast p1, Lcom/miui/permcenter/provision/f;

    invoke-virtual {p0, p1, p2}, Lcom/miui/permcenter/provision/b;->n(Lcom/miui/permcenter/provision/f;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/miui/permcenter/provision/b;->p(Landroid/view/ViewGroup;I)Lcom/miui/permcenter/provision/f;

    move-result-object p1

    return-object p1
.end method

.method public p(Landroid/view/ViewGroup;I)Lcom/miui/permcenter/provision/f;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p2, "parent"

    invoke-static {p1, p2}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lcom/miui/permcenter/provision/f;

    iget-object v0, p0, Lcom/miui/permcenter/provision/b;->a:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e025b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "from(activity)\n         \u2026ovisision, parent, false)"

    invoke-static {p1, v0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lcom/miui/permcenter/provision/f;-><init>(Landroid/view/View;)V

    return-object p2
.end method

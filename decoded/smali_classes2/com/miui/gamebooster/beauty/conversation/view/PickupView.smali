.class public Lcom/miui/gamebooster/beauty/conversation/view/PickupView;
.super Le6/a;
.source "SourceFile"

# interfaces
.implements Lb6/b;


# instance fields
.field private final c:Landroid/media/AudioManager;

.field private d:Landroidx/recyclerview/widget/RecyclerView;

.field private e:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private f:Lq6/f;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc6/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Le6/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x7f1205d2

    iput p1, p0, Le6/a;->b:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "audio"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/miui/gamebooster/beauty/conversation/view/PickupView;->c:Landroid/media/AudioManager;

    return-void
.end method

.method public static synthetic c(Lcom/miui/gamebooster/beauty/conversation/view/PickupView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/beauty/conversation/view/PickupView;->d()V

    return-void
.end method

.method private synthetic d()V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/beauty/conversation/view/PickupView;->f:Lq6/f;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method protected b()V
    .locals 5

    invoke-super {p0}, Le6/a;->b()V

    invoke-static {}, Lz5/a;->e()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/beauty/conversation/view/PickupView;->g:Ljava/util/List;

    const v0, 0x7f0b08bf

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/miui/gamebooster/beauty/conversation/view/PickupView;->d:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, La6/i;

    iget-object v2, p0, Lcom/miui/gamebooster/beauty/conversation/view/PickupView;->g:Ljava/util/List;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f071f1e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-direct {v1, v2, v3}, La6/i;-><init>(Ljava/util/List;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$m;)V

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gamebooster/beauty/conversation/view/PickupView;->e:Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/miui/gamebooster/beauty/conversation/view/PickupView;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$n;)V

    new-instance v0, Lq6/f;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lq6/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gamebooster/beauty/conversation/view/PickupView;->f:Lq6/f;

    new-instance v1, La6/l;

    invoke-direct {v1, p0}, La6/l;-><init>(Lb6/b;)V

    invoke-virtual {v0, v1}, Lq6/f;->o(Lq6/b;)Lq6/f;

    iget-object v0, p0, Lcom/miui/gamebooster/beauty/conversation/view/PickupView;->f:Lq6/f;

    new-instance v1, La6/h;

    invoke-direct {v1, p0}, La6/h;-><init>(Lb6/b;)V

    invoke-virtual {v0, v1}, Lq6/f;->o(Lq6/b;)Lq6/f;

    iget-object v0, p0, Lcom/miui/gamebooster/beauty/conversation/view/PickupView;->f:Lq6/f;

    new-instance v1, La6/f;

    invoke-direct {v1}, La6/f;-><init>()V

    invoke-virtual {v0, v1}, Lq6/f;->o(Lq6/b;)Lq6/f;

    iget-object v0, p0, Lcom/miui/gamebooster/beauty/conversation/view/PickupView;->f:Lq6/f;

    iget-object v1, p0, Lcom/miui/gamebooster/beauty/conversation/view/PickupView;->g:Ljava/util/List;

    invoke-virtual {v0, v1}, Lq6/f;->F(Ljava/util/List;)V

    iget-object v0, p0, Lcom/miui/gamebooster/beauty/conversation/view/PickupView;->d:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/miui/gamebooster/beauty/conversation/view/PickupView;->f:Lq6/f;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    return-void
.end method

.method public e(Lc6/a;Landroid/view/View;I)V
    .locals 3

    invoke-static {}, Lx5/p;->O()Lx5/p;

    move-result-object p2

    invoke-virtual {p2}, Lx5/p;->T()Lx5/e;

    move-result-object p2

    instance-of p3, p1, Lc6/f;

    if-eqz p3, :cond_6

    invoke-static {}, Lx5/p;->q0()Z

    move-result p1

    invoke-static {}, Lx5/p;->O()Lx5/p;

    move-result-object p3

    iget-object v0, p0, Lcom/miui/gamebooster/beauty/conversation/view/PickupView;->c:Landroid/media/AudioManager;

    if-eqz p1, :cond_0

    invoke-static {}, Lx5/p;->O()Lx5/p;

    move-result-object v1

    invoke-virtual {v1}, Lx5/p;->N()Lc6/h$a;

    move-result-object v1

    goto :goto_0

    :cond_0
    sget-object v1, Lc6/h$a;->d:Lc6/h$a;

    :goto_0
    invoke-virtual {p3, v0, v1}, Lx5/p;->w1(Landroid/media/AudioManager;Lc6/h$a;)V

    iget-object p3, p0, Lcom/miui/gamebooster/beauty/conversation/view/PickupView;->g:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc6/h;

    instance-of v1, v0, Lc6/i;

    if-nez v1, :cond_1

    instance-of v1, v0, Lc6/f;

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Lc6/h;->c()Lc6/h$a;

    move-result-object v2

    invoke-static {v2, v1}, Lz5/a;->d(Lc6/h$a;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x1

    :cond_3
    invoke-virtual {v0, v1}, Lc6/h;->h(Z)V

    goto :goto_1

    :cond_4
    iget-object p3, p0, Lcom/miui/gamebooster/beauty/conversation/view/PickupView;->f:Lq6/f;

    if-eqz p3, :cond_5

    new-instance p3, Le6/b;

    invoke-direct {p3, p0}, Le6/b;-><init>(Lcom/miui/gamebooster/beauty/conversation/view/PickupView;)V

    invoke-virtual {p0, p3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_5
    if-eqz p2, :cond_a

    invoke-virtual {p2, p1}, Lx5/e;->q(Z)V

    goto :goto_3

    :cond_6
    instance-of p3, p1, Lc6/i;

    if-eqz p3, :cond_7

    invoke-static {}, Lx5/p;->C0()Z

    move-result p1

    if-eqz p2, :cond_a

    invoke-virtual {p2, p1}, Lx5/e;->r(Z)V

    goto :goto_3

    :cond_7
    iget-object p3, p0, Lcom/miui/gamebooster/beauty/conversation/view/PickupView;->g:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc6/h;

    invoke-virtual {v0, p1}, Lc6/h;->g(Lc6/a;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lc6/h;->j(Z)V

    goto :goto_2

    :cond_8
    invoke-static {}, Lx5/p;->O()Lx5/p;

    move-result-object p3

    iget-object v0, p0, Lcom/miui/gamebooster/beauty/conversation/view/PickupView;->c:Landroid/media/AudioManager;

    check-cast p1, Lc6/h;

    invoke-virtual {p1}, Lc6/h;->c()Lc6/h$a;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lx5/p;->w1(Landroid/media/AudioManager;Lc6/h$a;)V

    iget-object p3, p0, Lcom/miui/gamebooster/beauty/conversation/view/PickupView;->f:Lq6/f;

    if-eqz p3, :cond_9

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    :cond_9
    if-eqz p2, :cond_a

    invoke-virtual {p1}, Lc6/h;->c()Lc6/h$a;

    move-result-object p1

    invoke-virtual {p2, p1}, Lx5/e;->p(Lc6/h$a;)V

    :cond_a
    :goto_3
    return-void
.end method

.method public f()V
    .locals 7

    invoke-static {}, Lx5/p;->q0()Z

    move-result v0

    invoke-static {}, Lx5/p;->O()Lx5/p;

    move-result-object v1

    invoke-virtual {v1}, Lx5/p;->N()Lc6/h$a;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gamebooster/beauty/conversation/view/PickupView;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc6/h;

    instance-of v4, v3, Lc6/i;

    if-nez v4, :cond_0

    instance-of v4, v3, Lc6/f;

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v3}, Lc6/h;->c()Lc6/h$a;

    move-result-object v6

    invoke-static {v6, v5}, Lz5/a;->d(Lc6/h$a;Z)Z

    move-result v6

    if-eqz v6, :cond_2

    move v6, v4

    goto :goto_1

    :cond_2
    move v6, v5

    :goto_1
    invoke-virtual {v3, v6}, Lc6/h;->h(Z)V

    invoke-virtual {v3}, Lc6/h;->c()Lc6/h$a;

    move-result-object v6

    if-ne v6, v1, :cond_3

    goto :goto_2

    :cond_3
    move v4, v5

    :goto_2
    invoke-virtual {v3, v4}, Lc6/h;->j(Z)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/miui/gamebooster/beauty/conversation/view/PickupView;->f:Lq6/f;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    return-void
.end method

.method public g()V
    .locals 1

    invoke-static {}, Lz5/a;->e()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/beauty/conversation/view/PickupView;->g:Ljava/util/List;

    invoke-virtual {p0}, Lcom/miui/gamebooster/beauty/conversation/view/PickupView;->f()V

    return-void
.end method

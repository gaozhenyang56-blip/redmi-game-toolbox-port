.class public Le3/a;
.super Lmiuix/recyclerview/card/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le3/a$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiuix/recyclerview/card/e<",
        "Lh3/g;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lh3/f;",
            ">;"
        }
    .end annotation
.end field

.field private c:Le3/a$b;

.field private d:Z

.field private e:I

.field private f:I

.field private g:Z

.field private h:Z

.field private i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v0}, Le3/a;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lh3/f;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lmiuix/recyclerview/card/e;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Le3/a;->h:Z

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Le3/a;->a:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Le3/a;->b:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic k(Le3/a;)Le3/a$b;
    .locals 0

    iget-object p0, p0, Le3/a;->c:Le3/a$b;

    return-object p0
.end method

.method private o(Landroid/view/ViewGroup;I)Lh3/g;
    .locals 3

    iget-object v0, p0, Le3/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-static {p2}, Lh3/f;->a(I)I

    move-result v1

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    packed-switch p2, :pswitch_data_0

    new-instance p2, Lh3/g;

    invoke-direct {p2, p1}, Lh3/g;-><init>(Landroid/view/View;)V

    return-object p2

    :pswitch_0
    new-instance p2, Lh3/a$a;

    invoke-direct {p2, p1}, Lh3/a$a;-><init>(Landroid/view/View;)V

    return-object p2

    :pswitch_1
    new-instance p2, Lh3/e$a;

    invoke-direct {p2, p1}, Lh3/e$a;-><init>(Landroid/view/View;)V

    return-object p2

    :pswitch_2
    new-instance p2, Lh3/j$a;

    invoke-direct {p2, p1}, Lh3/j$a;-><init>(Landroid/view/View;)V

    return-object p2

    :pswitch_3
    new-instance p2, Lh3/i$a;

    invoke-direct {p2, p1}, Lh3/i$a;-><init>(Landroid/view/View;)V

    return-object p2

    :pswitch_4
    new-instance p2, Lh3/l$a;

    invoke-direct {p2, p1}, Lh3/l$a;-><init>(Landroid/view/View;)V

    return-object p2

    :pswitch_5
    new-instance p2, Lh3/m$a;

    invoke-direct {p2, p1}, Lh3/m$a;-><init>(Landroid/view/View;)V

    return-object p2

    :pswitch_6
    new-instance p2, Lh3/b$a;

    invoke-direct {p2, p1}, Lh3/b$a;-><init>(Landroid/view/View;)V

    return-object p2

    :pswitch_7
    new-instance p2, Lh3/k$a;

    invoke-direct {p2, p1}, Lh3/k$a;-><init>(Landroid/view/View;)V

    return-object p2

    :pswitch_8
    new-instance p2, Lh3/d$a;

    invoke-direct {p2, p1}, Lh3/d$a;-><init>(Landroid/view/View;)V

    return-object p2

    :pswitch_9
    new-instance p2, Lh3/c$a;

    invoke-direct {p2, p1}, Lh3/c$a;-><init>(Landroid/view/View;)V

    return-object p2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_6
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Le3/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Le3/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewGroup(I)I
    .locals 1

    iget-object v0, p0, Le3/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lh3/f;

    invoke-virtual {p1}, Lh3/f;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    const/high16 p1, -0x80000000

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Le3/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lh3/f;

    invoke-virtual {p1}, Lh3/f;->b()I

    move-result p1

    return p1
.end method

.method public getModelList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lh3/f;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Le3/a;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public l(Lh3/f;)V
    .locals 1

    iget-object v0, p0, Le3/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public m(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lh3/f;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Le3/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public n(I)Lh3/f;
    .locals 1

    iget-object v0, p0, Le3/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lh3/f;

    return-object p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$c0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lh3/g;

    invoke-virtual {p0, p1, p2}, Le3/a;->p(Lh3/g;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;ILjava/util/List;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$c0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lh3/g;

    invoke-virtual {p0, p1, p2, p3}, Le3/a;->q(Lh3/g;ILjava/util/List;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Le3/a;->r(Landroid/view/ViewGroup;I)Lh3/g;

    move-result-object p1

    return-object p1
.end method

.method public p(Lh3/g;I)V
    .locals 2
    .param p1    # Lh3/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Le3/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh3/f;

    iget-boolean v1, p0, Le3/a;->d:Z

    invoke-virtual {v0, v1}, Lh3/f;->h(Z)V

    iget v1, p0, Le3/a;->e:I

    invoke-virtual {v0, v1}, Lh3/f;->f(I)V

    iget v1, p0, Le3/a;->f:I

    invoke-virtual {v0, v1}, Lh3/f;->g(I)V

    iget-boolean v1, p0, Le3/a;->g:Z

    invoke-virtual {v0, v1}, Lh3/f;->e(Z)V

    iget v1, p0, Le3/a;->i:I

    invoke-virtual {v0, v1}, Lh3/f;->d(I)V

    invoke-virtual {p1}, Lh3/g;->b()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v1, v0, p2}, Lh3/g;->a(Landroid/view/View;Lh3/f;I)V

    iget-boolean v1, p0, Le3/a;->h:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lh3/f;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lh3/g;->b()Landroid/view/View;

    move-result-object p1

    new-instance v0, Le3/a$a;

    invoke-direct {v0, p0, p2}, Le3/a$a;-><init>(Le3/a;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public q(Lh3/g;ILjava/util/List;)V
    .locals 1
    .param p1    # Lh3/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh3/g;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lmiuix/recyclerview/card/e;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "updateButton"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Le3/a;->b:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lh3/f;

    invoke-virtual {p1}, Lh3/g;->b()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p1, p3, p2}, Lh3/g;->c(Landroid/view/View;Lh3/f;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Le3/a;->p(Lh3/g;I)V

    :goto_0
    return-void
.end method

.method public r(Landroid/view/ViewGroup;I)Lh3/g;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-direct {p0, p1, p2}, Le3/a;->o(Landroid/view/ViewGroup;I)Lh3/g;

    move-result-object p1

    return-object p1
.end method

.method public s(I)V
    .locals 0

    iput p1, p0, Le3/a;->i:I

    return-void
.end method

.method public setHasStableIds()V
    .locals 0

    return-void
.end method

.method public t(Le3/a$b;)V
    .locals 0

    iput-object p1, p0, Le3/a;->c:Le3/a$b;

    return-void
.end method

.method public u(Z)V
    .locals 0

    iput-boolean p1, p0, Le3/a;->h:Z

    return-void
.end method

.method public v(I)V
    .locals 0

    iput p1, p0, Le3/a;->e:I

    return-void
.end method

.method public w(Z)V
    .locals 0

    iput-boolean p1, p0, Le3/a;->d:Z

    return-void
.end method

.method public x(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lh3/f;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Le3/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Le3/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    return-void
.end method

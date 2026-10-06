.class public Ld5/d;
.super Landroidx/recyclerview/widget/RecyclerView$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld5/d$a;,
        Ld5/d$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$h<",
        "Ld5/d$b;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Z

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lg5/j;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ld5/d$a;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lg5/q;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/miui/dock/sidebar/j;

.field private final f:Ls8/h;


# direct methods
.method public constructor <init>(Lcom/miui/dock/sidebar/j;Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/dock/sidebar/j;",
            "Ljava/util/List<",
            "Lg5/j;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$h;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ld5/d;->b:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ld5/d;->d:Ljava/util/List;

    iput-object p2, p0, Ld5/d;->b:Ljava/util/List;

    iput-boolean p3, p0, Ld5/d;->a:Z

    iput-object p1, p0, Ld5/d;->e:Lcom/miui/dock/sidebar/j;

    invoke-virtual {p1}, Lcom/miui/dock/sidebar/j;->o()Ls8/h;

    move-result-object p1

    iput-object p1, p0, Ld5/d;->f:Ls8/h;

    return-void
.end method

.method public static synthetic k(ILg5/j;)V
    .locals 0

    invoke-static {p0, p1}, Ld5/d;->s(ILg5/j;)V

    return-void
.end method

.method public static synthetic l(Ld5/d;ILg5/j;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ld5/d;->t(ILg5/j;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic m(Ld5/d;Lg5/j;Ld5/d$b;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ld5/d;->r(Lg5/j;Ld5/d$b;Landroid/view/View;)V

    return-void
.end method

.method private static o(Lg5/j;)Ljava/lang/String;
    .locals 1

    instance-of v0, p0, Lg5/f;

    if-eqz v0, :cond_0

    check-cast p0, Lg5/f;

    invoke-virtual {p0}, Lg5/f;->d()Lf5/d;

    move-result-object p0

    iget-object p0, p0, Lf5/d;->b:Ljava/lang/String;

    return-object p0

    :cond_0
    instance-of v0, p0, Li5/c;

    if-eqz v0, :cond_1

    check-cast p0, Li5/c;

    invoke-virtual {p0}, Li5/c;->h()Li5/a;

    move-result-object p0

    iget-object p0, p0, Li5/a;->g:Ljava/lang/String;

    return-object p0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method private q()Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Ld5/d;->f:Ls8/h;

    invoke-virtual {v0}, Ls8/h;->U()Lcom/miui/gamebooster/service/DockWindowManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->o0()Lo7/a;

    move-result-object v0

    invoke-virtual {v0}, Lo7/a;->e()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDockMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GlobalDockAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method private synthetic r(Lg5/j;Ld5/d$b;Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Ld5/d;->f:Ls8/h;

    invoke-virtual {v0}, Ls8/h;->j0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Ld5/d;->f:Ls8/h;

    invoke-virtual {p1}, Ls8/h;->K()V

    return-void

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, La8/s1;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lf7/b;->l(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Ld2/c;->b()Ld2/c;

    move-result-object p1

    const p2, 0x7f120b4f

    invoke-virtual {p1, v0, p2}, Ld2/c;->e(Landroid/content/Context;I)Ld2/c;

    return-void

    :cond_1
    invoke-interface {p1, p2}, Lg5/j;->a(Landroidx/recyclerview/widget/RecyclerView$c0;)V

    :cond_2
    iget-object p1, p0, Ld5/d;->c:Ld5/d$a;

    if-eqz p1, :cond_3

    invoke-interface {p1, p3}, Ld5/d$a;->a(Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method private static synthetic s(ILg5/j;)V
    .locals 3

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lm5/f;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p0, p0, -0x2

    :cond_0
    invoke-static {p1}, Ld5/d;->o(Lg5/j;)Ljava/lang/String;

    move-result-object v0

    instance-of v1, p1, Lg5/f;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    move-object v2, p1

    check-cast v2, Li5/c;

    invoke-virtual {v2}, Li5/c;->h()Li5/a;

    move-result-object v2

    iget-object v2, v2, Li5/a;->c:Ljava/lang/String;

    :goto_0
    if-eqz v1, :cond_2

    check-cast p1, Lg5/f;

    invoke-virtual {p1}, Lg5/f;->d()Lf5/d;

    move-result-object p1

    iget p1, p1, Lf5/d;->e:I

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-eqz v1, :cond_3

    const-string v1, "app"

    goto :goto_2

    :cond_3
    const-string v1, "function"

    :goto_2
    invoke-static {p0, v0, v2, p1, v1}, Ll5/b;->f(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private synthetic t(ILg5/j;Landroid/view/View;)Z
    .locals 2

    invoke-static {}, La8/a0;->F()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object v0

    new-instance v1, Ld5/c;

    invoke-direct {v1, p1, p2}, Ld5/c;-><init>(ILg5/j;)V

    invoke-virtual {v0, v1}, Lef/z;->b(Ljava/lang/Runnable;)V

    :cond_0
    new-instance p1, Le5/i;

    iget-object v0, p0, Ld5/d;->e:Lcom/miui/dock/sidebar/j;

    iget-boolean v1, p0, Ld5/d;->a:Z

    invoke-direct {p1, v0, p3, p2, v1}, Le5/i;-><init>(Lcom/miui/dock/sidebar/j;Landroid/view/View;Lg5/j;Z)V

    invoke-virtual {p1}, Le5/i;->v()V

    invoke-virtual {p1}, Le5/i;->k0()V

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Ld5/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Ld5/d;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg5/j;

    instance-of v0, p1, Lg5/d;

    if-eqz v0, :cond_0

    const/4 p1, 0x2

    return p1

    :cond_0
    instance-of v0, p1, Lg5/l;

    if-eqz v0, :cond_1

    const/4 p1, 0x3

    return p1

    :cond_1
    instance-of p1, p1, Lg5/b;

    if-eqz p1, :cond_2

    const/4 p1, 0x4

    return p1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public n()V
    .locals 1

    iget-object v0, p0, Ld5/d;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$c0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Ld5/d$b;

    invoke-virtual {p0, p1, p2}, Ld5/d;->u(Ld5/d$b;I)V

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

    invoke-virtual {p0, p1, p2}, Ld5/d;->v(Landroid/view/ViewGroup;I)Ld5/d$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$c0;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$c0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Ld5/d$b;

    invoke-virtual {p0, p1}, Ld5/d;->w(Ld5/d$b;)V

    return-void
.end method

.method public bridge synthetic onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$c0;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$c0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Ld5/d$b;

    invoke-virtual {p0, p1}, Ld5/d;->x(Ld5/d$b;)V

    return-void
.end method

.method public p()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lg5/q;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ld5/d;->d:Ljava/util/List;

    return-object v0
.end method

.method public u(Ld5/d$b;I)V
    .locals 3
    .param p1    # Ld5/d$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Ld5/d;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg5/j;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lg5/j;->b(Landroidx/recyclerview/widget/RecyclerView$c0;)V

    :cond_0
    iget-object v1, p1, Ld5/d$b;->a:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    new-instance v2, Ld5/a;

    invoke-direct {v2, p0, v0, p1}, Ld5/a;-><init>(Ld5/d;Lg5/j;Ld5/d$b;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    instance-of v1, v0, Lg5/f;

    if-nez v1, :cond_1

    instance-of v1, v0, Li5/c;

    if-eqz v1, :cond_2

    :cond_1
    invoke-static {}, La8/a0;->E()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p1, Ld5/d$b;->a:Landroid/widget/ImageView;

    new-instance v2, Ld5/b;

    invoke-direct {v2, p0, p2, v0}, Ld5/b;-><init>(Ld5/d;ILg5/j;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_2
    iget-object p1, p1, Ld5/d$b;->a:Landroid/widget/ImageView;

    invoke-static {p1}, Le8/a;->a(Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method public v(Landroid/view/ViewGroup;I)Ld5/d$b;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0e0287

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Ld5/d$b;

    invoke-direct {p0}, Ld5/d;->q()Z

    move-result v0

    invoke-direct {p2, p1, v0}, Ld5/d$b;-><init>(Landroid/view/View;Z)V

    return-object p2
.end method

.method public w(Ld5/d$b;)V
    .locals 8
    .param p1    # Ld5/d$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$h;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$c0;)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$c0;->getAdapterPosition()I

    move-result v3

    iget-object p1, p0, Ld5/d;->b:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg5/j;

    invoke-static {p1}, Ld5/d;->o(Lg5/j;)Ljava/lang/String;

    move-result-object v1

    instance-of v0, p1, Lg5/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld5/d;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v6, p0, Ld5/d;->d:Ljava/util/List;

    new-instance v7, Lg5/q;

    const/4 v2, 0x0

    check-cast p1, Lg5/f;

    invoke-virtual {p1}, Lg5/f;->d()Lf5/d;

    move-result-object p1

    iget v4, p1, Lf5/d;->e:I

    const-string v5, "app"

    move-object v0, v7

    invoke-direct/range {v0 .. v5}, Lg5/q;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    :goto_0
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    instance-of v0, p1, Li5/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ld5/d;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v6, p0, Ld5/d;->d:Ljava/util/List;

    new-instance v7, Lg5/q;

    check-cast p1, Li5/c;

    invoke-virtual {p1}, Li5/c;->h()Li5/a;

    move-result-object p1

    iget-object v2, p1, Li5/a;->c:Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "function"

    move-object v0, v7

    invoke-direct/range {v0 .. v5}, Lg5/q;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public x(Ld5/d$b;)V
    .locals 1
    .param p1    # Ld5/d$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$h;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$c0;)V

    iget-object p1, p1, Ld5/d$b;->a:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public y(Ld5/d$a;)V
    .locals 0

    iput-object p1, p0, Ld5/d;->c:Ld5/d$a;

    return-void
.end method

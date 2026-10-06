.class public Lcom/miui/dock/edit/a;
.super Lh5/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/dock/edit/a$a;,
        Lcom/miui/dock/edit/a$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lh5/a<",
        "Lcom/miui/dock/edit/a$b;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lg5/j;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lg5/j;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/miui/dock/edit/a$a;

.field private d:Z

.field private e:Z

.field private f:I


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lg5/j;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lh5/a;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/miui/dock/edit/a;->b:Ljava/util/List;

    iput-boolean v1, p0, Lcom/miui/dock/edit/a;->d:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/dock/edit/a;->e:Z

    iput-object p1, p0, Lcom/miui/dock/edit/a;->a:Ljava/util/List;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c002a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/miui/dock/edit/a;->f:I

    return-void
.end method

.method private A(Lg5/j;)Z
    .locals 1

    instance-of v0, p1, Lg5/h;

    if-eqz v0, :cond_0

    check-cast p1, Lg5/h;

    iget-object p1, p1, Lg5/h;->b:Lg5/h$a;

    sget-object v0, Lg5/h$a;->a:Lg5/h$a;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private synthetic B(ILg5/j;Landroid/view/View;)V
    .locals 0

    iget-object p3, p0, Lcom/miui/dock/edit/a;->c:Lcom/miui/dock/edit/a$a;

    if-eqz p3, :cond_0

    invoke-interface {p3, p1, p2}, Lcom/miui/dock/edit/a$a;->a(ILg5/j;)V

    :cond_0
    return-void
.end method

.method private synthetic C(ILg5/j;Landroid/view/View;)V
    .locals 0

    iget-object p3, p0, Lcom/miui/dock/edit/a;->c:Lcom/miui/dock/edit/a$a;

    if-eqz p3, :cond_0

    invoke-interface {p3, p1, p2}, Lcom/miui/dock/edit/a$a;->a(ILg5/j;)V

    :cond_0
    return-void
.end method

.method private synthetic D(Lcom/miui/dock/edit/a$b;Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/dock/edit/a;->p()I

    move-result p2

    iget v0, p0, Lcom/miui/dock/edit/a;->f:I

    if-ge p2, v0, :cond_0

    return-void

    :cond_0
    iget-boolean p2, p0, Lcom/miui/dock/edit/a;->e:Z

    xor-int/lit8 p2, p2, 0x1

    iput-boolean p2, p0, Lcom/miui/dock/edit/a;->e:Z

    iget-object p1, p1, Lcom/miui/dock/edit/a$b;->e:Landroid/widget/TextView;

    if-eqz p2, :cond_1

    const p2, 0x7f120b4a

    goto :goto_0

    :cond_1
    const p2, 0x7f120b4b

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    invoke-direct {p0}, Lcom/miui/dock/edit/a;->n()V

    return-void
.end method

.method private M(Lcom/miui/dock/edit/a$b;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/dock/edit/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/miui/dock/edit/a;->e:Z

    iget-object p1, p1, Lcom/miui/dock/edit/a$b;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const v0, 0x7f120b4a

    goto :goto_1

    :cond_1
    const v0, 0x7f120b4b

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public static synthetic k(Lcom/miui/dock/edit/a;Lcom/miui/dock/edit/a$b;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/dock/edit/a;->D(Lcom/miui/dock/edit/a$b;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic l(Lcom/miui/dock/edit/a;ILg5/j;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/dock/edit/a;->B(ILg5/j;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic m(Lcom/miui/dock/edit/a;ILg5/j;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/dock/edit/a;->C(ILg5/j;Landroid/view/View;)V

    return-void
.end method

.method private n()V
    .locals 5

    iget-boolean v0, p0, Lcom/miui/dock/edit/a;->e:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/miui/dock/edit/a;->p()I

    move-result v0

    iget-object v1, p0, Lcom/miui/dock/edit/a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_3

    iget-object v2, p0, Lcom/miui/dock/edit/a;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg5/j;

    instance-of v3, v2, Li5/c;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/miui/dock/edit/a;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget v4, p0, Lcom/miui/dock/edit/a;->f:I

    sub-int v4, v0, v4

    if-ge v3, v4, :cond_0

    invoke-virtual {p0, v2}, Lcom/miui/dock/edit/a;->J(Lg5/j;)V

    iget-object v3, p0, Lcom/miui/dock/edit/a;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/dock/edit/a;->b:Ljava/util/List;

    invoke-static {v0}, Lc7/c;->n(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/miui/dock/edit/a;->b:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    iget-object v0, p0, Lcom/miui/dock/edit/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg5/j;

    invoke-virtual {p0, v1}, Lcom/miui/dock/edit/a;->u(Lg5/j;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/miui/dock/edit/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_3
    return-void
.end method

.method private p()I
    .locals 3

    iget-object v0, p0, Lcom/miui/dock/edit/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg5/j;

    instance-of v2, v2, Li5/c;

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private q(I)I
    .locals 1
    .annotation build Landroidx/annotation/LayoutRes;
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const p1, 0x7f0e0284

    return p1

    :cond_0
    const p1, 0x7f0e0285

    return p1

    :cond_1
    const p1, 0x7f0e0286

    return p1
.end method

.method private r(Lg5/j;)I
    .locals 2

    instance-of v0, p1, Li5/c;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/dock/edit/a;->s()Z

    move-result p1

    iget-object v0, p0, Lcom/miui/dock/edit/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v1, p0, Lcom/miui/dock/edit/a;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Li5/c;

    if-eqz v1, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    instance-of p1, p1, Lg5/c;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/miui/dock/edit/a;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_1
    if-ltz p1, :cond_4

    iget-object v0, p0, Lcom/miui/dock/edit/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lg5/c;

    if-eqz v0, :cond_3

    return p1

    :cond_3
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/miui/dock/edit/a;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1
.end method


# virtual methods
.method public E()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/miui/dock/edit/a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/miui/dock/edit/a;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg5/j;

    instance-of v1, v1, Lg5/k;

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_1
    if-gez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemChanged(I)V

    return-void
.end method

.method public F()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/miui/dock/edit/a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/miui/dock/edit/a;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg5/j;

    instance-of v2, v1, Lg5/h;

    if-eqz v2, :cond_0

    check-cast v1, Lg5/h;

    iget-object v1, v1, Lg5/h;->b:Lg5/h$a;

    sget-object v2, Lg5/h$a;->a:Lg5/h$a;

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_1
    if-gez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemChanged(I)V

    return-void
.end method

.method public G(Lcom/miui/dock/edit/a$b;I)V
    .locals 5
    .param p1    # Lcom/miui/dock/edit/a$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/miui/dock/edit/a;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg5/j;

    if-eqz v0, :cond_0

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    iget-boolean v2, p0, Lcom/miui/dock/edit/a;->d:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Lg5/j;->b(Landroidx/recyclerview/widget/RecyclerView$c0;)V

    :cond_0
    invoke-virtual {p0, p2}, Lcom/miui/dock/edit/a;->x(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/miui/dock/edit/a$b;->a:Landroid/view/View;

    new-instance v2, Lf5/a;

    invoke-direct {v2, p0, p2, v0}, Lf5/a;-><init>(Lcom/miui/dock/edit/a;ILg5/j;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p1, Lcom/miui/dock/edit/a$b;->b:Landroid/widget/ImageView;

    new-instance v1, Lf5/b;

    invoke-direct {v1, p0, p2, v0}, Lf5/b;-><init>(Lcom/miui/dock/edit/a;ILg5/j;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    :cond_1
    invoke-virtual {p0, p2}, Lcom/miui/dock/edit/a;->z(I)Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/miui/dock/edit/a;->p()I

    move-result p2

    iget-object v0, p1, Lcom/miui/dock/edit/a$b;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/dock/edit/a;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, p2

    iget v4, p0, Lcom/miui/dock/edit/a;->f:I

    if-le v1, v4, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p1, Lcom/miui/dock/edit/a$b;->d:Landroid/view/View;

    if-lez p2, :cond_3

    goto :goto_1

    :cond_3
    move v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/dock/edit/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr p2, v0

    iget v0, p0, Lcom/miui/dock/edit/a;->f:I

    if-le p2, v0, :cond_4

    invoke-direct {p0, p1}, Lcom/miui/dock/edit/a;->M(Lcom/miui/dock/edit/a$b;)V

    :cond_4
    iget-object p2, p1, Lcom/miui/dock/edit/a$b;->d:Landroid/view/View;

    new-instance v0, Lf5/c;

    invoke-direct {v0, p0, p1}, Lf5/c;-><init>(Lcom/miui/dock/edit/a;Lcom/miui/dock/edit/a$b;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    :cond_5
    invoke-virtual {p0, p2}, Lcom/miui/dock/edit/a;->y(I)Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-direct {p0, v0}, Lcom/miui/dock/edit/a;->A(Lg5/j;)Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/miui/dock/edit/a;->s()Z

    move-result p2

    if-eqz p2, :cond_6

    goto :goto_2

    :cond_6
    move v2, v3

    :goto_2
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    :goto_3
    return-void
.end method

.method public H(Lcom/miui/dock/edit/a$b;ILjava/util/List;)V
    .locals 0
    .param p1    # Lcom/miui/dock/edit/a$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/dock/edit/a$b;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/miui/dock/edit/a;->G(Lcom/miui/dock/edit/a$b;I)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p2}, Lcom/miui/dock/edit/a;->x(I)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p1, p1, Lcom/miui/dock/edit/a$b;->a:Landroid/view/View;

    iget-boolean p2, p0, Lcom/miui/dock/edit/a;->d:Z

    if-eqz p2, :cond_1

    const p2, 0x7f080775

    goto :goto_0

    :cond_1
    const p2, 0x7f080776

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public I(Landroid/view/ViewGroup;I)Lcom/miui/dock/edit/a$b;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/miui/dock/edit/a;->q(I)I

    move-result p2

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/miui/dock/edit/a$b;

    invoke-direct {p2, p1}, Lcom/miui/dock/edit/a$b;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public J(Lg5/j;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/dock/edit/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/miui/dock/edit/a;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemRemoved(I)V

    :cond_0
    return-void
.end method

.method public K(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/dock/edit/a;->d:Z

    return-void
.end method

.method public L(Lcom/miui/dock/edit/a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/dock/edit/a;->c:Lcom/miui/dock/edit/a$a;

    return-void
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/dock/edit/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    if-ltz p1, :cond_3

    iget-object v0, p0, Lcom/miui/dock/edit/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/dock/edit/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg5/j;

    instance-of v0, p1, Lg5/h;

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    instance-of p1, p1, Lg5/k;

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    return p1

    :cond_2
    const/4 p1, 0x3

    return p1

    :cond_3
    :goto_0
    const/4 p1, -0x1

    return p1
.end method

.method public o()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/dock/edit/a;->n()V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$c0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/miui/dock/edit/a$b;

    invoke-virtual {p0, p1, p2}, Lcom/miui/dock/edit/a;->G(Lcom/miui/dock/edit/a$b;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;ILjava/util/List;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$c0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/miui/dock/edit/a$b;

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/dock/edit/a;->H(Lcom/miui/dock/edit/a$b;ILjava/util/List;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/miui/dock/edit/a;->I(Landroid/view/ViewGroup;I)Lcom/miui/dock/edit/a$b;

    move-result-object p1

    return-object p1
.end method

.method public s()Z
    .locals 1

    invoke-direct {p0}, Lcom/miui/dock/edit/a;->p()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public t()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/dock/edit/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg5/j;

    invoke-direct {p0, v1}, Lcom/miui/dock/edit/a;->A(Lg5/j;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public u(Lg5/j;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/dock/edit/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/dock/edit/a;->r(Lg5/j;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/miui/dock/edit/a;->a:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemInserted(I)V

    return-void
.end method

.method public v()V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/dock/edit/a;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/dock/edit/a;->b:Ljava/util/List;

    invoke-static {v0}, Lc7/c;->n(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/dock/edit/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg5/j;

    invoke-virtual {p0, v0}, Lcom/miui/dock/edit/a;->u(Lg5/j;)V

    iget-object v1, p0, Lcom/miui/dock/edit/a;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public w(Lg5/j;)Z
    .locals 3

    instance-of v0, p1, Li5/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/dock/edit/a;->p()I

    move-result v0

    iget v2, p0, Lcom/miui/dock/edit/a;->f:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/miui/dock/edit/a;->b:Ljava/util/List;

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public x(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/miui/dock/edit/a;->getItemViewType(I)I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public y(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/miui/dock/edit/a;->getItemViewType(I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public z(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/miui/dock/edit/a;->getItemViewType(I)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

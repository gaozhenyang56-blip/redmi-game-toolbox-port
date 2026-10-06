.class public Ldd/b;
.super Landroidx/recyclerview/widget/k$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldd/b$a;
    }
.end annotation


# instance fields
.field private final d:Lbd/a;

.field private final e:Lum/b;

.field private f:Ldd/b$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lbd/a;)V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/k$e;-><init>()V

    new-instance v0, Lum/b;

    invoke-direct {v0, p1}, Lum/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ldd/b;->e:Lum/b;

    iput-object p2, p0, Ldd/b;->d:Lbd/a;

    return-void
.end method


# virtual methods
.method public B(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$c0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public C(Ldd/b$a;)V
    .locals 0

    iput-object p1, p0, Ldd/b;->f:Ldd/b$a;

    return-void
.end method

.method public k(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$c0;)I
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$c0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$c0;->getItemViewType()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const-string p1, "2.0"

    invoke-static {p1}, Lmiuix/view/HapticCompat;->c(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Ldd/b;->e:Lum/b;

    sget v0, Lmiuix/view/i;->x:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Ldd/b;->e:Lum/b;

    sget v0, Lmiuix/view/i;->k:I

    :goto_0
    invoke-virtual {p1, v0}, Lum/b;->f(I)Z

    const/16 p1, 0xf

    invoke-static {p1, p2}, Landroidx/recyclerview/widget/k$e;->t(II)I

    move-result p1

    return p1

    :cond_1
    invoke-static {p2, p2}, Landroidx/recyclerview/widget/k$e;->t(II)I

    move-result p1

    return p1
.end method

.method public y(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$c0;Landroidx/recyclerview/widget/RecyclerView$c0;)Z
    .locals 3
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$c0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView$c0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$c0;->getItemViewType()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$c0;->getAdapterPosition()I

    move-result p1

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$c0;->getAdapterPosition()I

    move-result p2

    add-int/lit8 p3, p1, -0x1

    if-ge p1, p2, :cond_0

    :goto_0
    add-int/lit8 v1, p2, -0x1

    if-ge p3, v1, :cond_1

    iget-object v1, p0, Ldd/b;->d:Lbd/a;

    invoke-virtual {v1}, Lbd/a;->n()Ljava/util/List;

    move-result-object v1

    add-int/lit8 v2, p3, 0x1

    invoke-static {v1, p3, v2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    move p3, v2

    goto :goto_0

    :cond_0
    :goto_1
    add-int/lit8 v1, p2, -0x1

    if-le p3, v1, :cond_1

    iget-object v1, p0, Ldd/b;->d:Lbd/a;

    invoke-virtual {v1}, Lbd/a;->n()Ljava/util/List;

    move-result-object v1

    add-int/lit8 v2, p3, -0x1

    invoke-static {v1, p3, v2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    add-int/lit8 p3, p3, -0x1

    goto :goto_1

    :cond_1
    iget-object p3, p0, Ldd/b;->d:Lbd/a;

    invoke-virtual {p3, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemMoved(II)V

    const-string p1, "2.0"

    invoke-static {p1}, Lmiuix/view/HapticCompat;->c(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Ldd/b;->e:Lum/b;

    sget p2, Lmiuix/view/i;->w:I

    invoke-virtual {p1, p2}, Lum/b;->f(I)Z

    :cond_2
    iget-object p1, p0, Ldd/b;->f:Ldd/b$a;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ldd/b$a;->a()V

    :cond_3
    return v0

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

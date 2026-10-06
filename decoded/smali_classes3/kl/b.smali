.class public Lkl/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkl/b$a;
    }
.end annotation


# direct methods
.method public static synthetic a(Lkl/b$a;Landroid/view/View;Landroid/view/View;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lkl/b;->c(Lkl/b$a;Landroid/view/View;Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public static b([Landroid/view/View;Lkl/b$a;)Lmiuix/flexible/mark/ViewList;
    .locals 3
    .param p0    # [Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lkl/b$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lkl/a;

    invoke-direct {v0, p1}, Lkl/a;-><init>(Lkl/b$a;)V

    invoke-static {p0, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    new-instance v0, Lmiuix/flexible/mark/ViewList;

    invoke-direct {v0}, Lmiuix/flexible/mark/ViewList;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lkl/c;->g(I)V

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Lkl/c;->i(F)V

    invoke-virtual {v0, v1}, Lmiuix/flexible/mark/ViewList;->m(I)V

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lkl/b;->d([Landroid/view/View;ILmiuix/flexible/mark/ViewList;Lkl/b$a;)I

    return-object v0
.end method

.method private static synthetic c(Lkl/b$a;Landroid/view/View;Landroid/view/View;)I
    .locals 0

    invoke-interface {p0, p1}, Lkl/b$a;->getOrder(Landroid/view/View;)I

    move-result p1

    invoke-interface {p0, p2}, Lkl/b$a;->getOrder(Landroid/view/View;)I

    move-result p0

    sub-int/2addr p1, p0

    return p1
.end method

.method private static d([Landroid/view/View;ILmiuix/flexible/mark/ViewList;Lkl/b$a;)I
    .locals 6
    .param p0    # [Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lmiuix/flexible/mark/ViewList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lkl/b$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p2}, Lkl/c;->b()I

    move-result v0

    :goto_0
    array-length v1, p0

    if-ge p1, v1, :cond_4

    aget-object v1, p0, p1

    invoke-interface {p3, v1}, Lkl/b$a;->getMark(Landroid/view/View;)I

    move-result v1

    rem-int/lit8 v2, v1, 0x2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    :goto_1
    aget-object v3, p0, p1

    invoke-interface {p3, v3}, Lkl/b$a;->getWeight(Landroid/view/View;)F

    move-result v3

    aget-object v4, p0, p1

    invoke-interface {p3, v4}, Lkl/b$a;->getGroupWeight(Landroid/view/View;)F

    move-result v4

    aget-object v5, p0, p1

    if-ne v1, v0, :cond_2

    new-instance v2, Lkl/c;

    invoke-direct {v2}, Lkl/c;-><init>()V

    invoke-virtual {v2, v1}, Lkl/c;->g(I)V

    invoke-virtual {v2, v5}, Lkl/c;->h(Landroid/view/View;)V

    invoke-virtual {v2, v3}, Lkl/c;->i(F)V

    invoke-virtual {p2}, Lmiuix/flexible/mark/ViewList;->k()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    if-le v1, v0, :cond_3

    new-instance v3, Lmiuix/flexible/mark/ViewList;

    invoke-direct {v3}, Lmiuix/flexible/mark/ViewList;-><init>()V

    invoke-virtual {v3, v1}, Lkl/c;->g(I)V

    invoke-virtual {v3, v2}, Lmiuix/flexible/mark/ViewList;->m(I)V

    invoke-virtual {v3, v4}, Lkl/c;->i(F)V

    invoke-virtual {p2}, Lmiuix/flexible/mark/ViewList;->k()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p0, p1, v3, p3}, Lkl/b;->d([Landroid/view/View;ILmiuix/flexible/mark/ViewList;Lkl/b$a;)I

    move-result p1

    goto :goto_0

    :cond_3
    if-lez v1, :cond_1

    :cond_4
    return p1
.end method

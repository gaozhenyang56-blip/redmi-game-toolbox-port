.class public Lcom/miui/gamebooster/windowmanager/newbox/r;
.super Landroidx/recyclerview/widget/RecyclerView$m;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Lu8/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lu8/b;)V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$m;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/r;->a:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/r;->b:I

    iput-object p2, p0, Lcom/miui/gamebooster/windowmanager/newbox/r;->f:Lu8/b;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070dfa

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcom/miui/gamebooster/windowmanager/newbox/r;->c:I

    const p2, 0x7f070e02

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcom/miui/gamebooster/windowmanager/newbox/r;->d:I

    const p2, 0x7f070de8

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/r;->e:I

    return-void
.end method

.method private f(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/gamebooster/model/n;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/miui/gamebooster/windowmanager/newbox/r;->f:Lu8/b;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gamebooster/model/n;

    invoke-virtual {v2, v3, v0}, Lu8/b;->i(Lcom/miui/gamebooster/model/n;I)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_1
    return v0
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$z;)V
    .locals 1

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$h;

    move-result-object p4

    if-nez p4, :cond_0

    return-void

    :cond_0
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$h;

    move-result-object p4

    instance-of p4, p4, Lq6/f;

    if-nez p4, :cond_1

    return-void

    :cond_1
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$n;

    move-result-object p4

    instance-of p4, p4, Landroidx/recyclerview/widget/GridLayoutManager;

    if-nez p4, :cond_2

    return-void

    :cond_2
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$h;

    move-result-object p4

    check-cast p4, Lq6/f;

    invoke-virtual {p4}, Lq6/f;->s()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p4}, Lq6/f;->s()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p4}, Lq6/f;->s()Ljava/util/List;

    move-result-object p4

    invoke-direct {p0, p4}, Lcom/miui/gamebooster/windowmanager/newbox/r;->f(Ljava/util/List;)I

    move-result p4

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    if-ge p2, p4, :cond_6

    rem-int/lit8 p2, p2, 0x2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_4

    iget p3, p0, Lcom/miui/gamebooster/windowmanager/newbox/r;->c:I

    div-int/lit8 p3, p3, 0x2

    goto :goto_0

    :cond_4
    iget p3, p0, Lcom/miui/gamebooster/windowmanager/newbox/r;->e:I

    :goto_0
    iput p3, p1, Landroid/graphics/Rect;->left:I

    if-nez p2, :cond_5

    iget p2, p0, Lcom/miui/gamebooster/windowmanager/newbox/r;->c:I

    div-int/lit8 p2, p2, 0x2

    goto :goto_1

    :cond_5
    iget p2, p0, Lcom/miui/gamebooster/windowmanager/newbox/r;->e:I

    :goto_1
    iput p2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_3

    :cond_6
    sub-int/2addr p2, p4

    const/4 p3, 0x4

    if-ge p2, p3, :cond_7

    iget p2, p0, Lcom/miui/gamebooster/windowmanager/newbox/r;->d:I

    goto :goto_2

    :cond_7
    const/4 p2, 0x0

    :goto_2
    iput p2, p1, Landroid/graphics/Rect;->top:I

    :cond_8
    :goto_3
    return-void
.end method

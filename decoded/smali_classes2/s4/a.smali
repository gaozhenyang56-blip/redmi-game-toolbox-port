.class public abstract Ls4/a;
.super Landroidx/recyclerview/widget/RecyclerView$m;
.source "SourceFile"


# instance fields
.field a:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field protected b:I

.field c:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field d:I

.field e:I

.field f:Landroid/graphics/Paint;

.field private g:Landroid/util/SparseIntArray;

.field protected h:Lu4/b;

.field protected i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ls4/b;",
            ">;"
        }
    .end annotation
.end field

.field private j:Landroid/view/GestureDetector;

.field private k:Landroid/view/GestureDetector$OnGestureListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$m;-><init>()V

    const-string v0, "#00000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ls4/a;->a:I

    const/16 v0, 0x64

    iput v0, p0, Ls4/a;->b:I

    const-string v1, "#ffffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Ls4/a;->c:I

    const/4 v1, 0x0

    iput v1, p0, Ls4/a;->d:I

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1, v0}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v1, p0, Ls4/a;->g:Landroid/util/SparseIntArray;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ls4/a;->i:Ljava/util/HashMap;

    new-instance v0, Ls4/a$b;

    invoke-direct {v0, p0}, Ls4/a$b;-><init>(Ls4/a;)V

    iput-object v0, p0, Ls4/a;->k:Landroid/view/GestureDetector$OnGestureListener;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Ls4/a;->f:Landroid/graphics/Paint;

    iget v1, p0, Ls4/a;->c:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method static synthetic f(Ls4/a;)Landroid/view/GestureDetector;
    .locals 0

    iget-object p0, p0, Ls4/a;->j:Landroid/view/GestureDetector;

    return-object p0
.end method

.method static synthetic g(Ls4/a;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1}, Ls4/a;->s(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private i(I)I
    .locals 1

    if-gtz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0, p1}, Ls4/a;->m(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return p1

    :cond_1
    add-int/lit8 p1, p1, -0x1

    invoke-direct {p0, p1}, Ls4/a;->i(I)I

    move-result p1

    return p1
.end method

.method private r(II)V
    .locals 1

    iget-object v0, p0, Ls4/a;->h:Lu4/b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lu4/b;->a(II)V

    :cond_0
    return-void
.end method

.method private s(Landroid/view/MotionEvent;)Z
    .locals 8

    iget-object v0, p0, Ls4/a;->i:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    iget-object v3, p0, Ls4/a;->i:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ls4/b;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget v6, v3, Ls4/b;->a:I

    iget v7, p0, Ls4/a;->b:I

    sub-int v7, v6, v7

    int-to-float v7, v7

    cmpg-float v7, v7, v4

    if-gtz v7, :cond_0

    int-to-float v6, v6

    cmpg-float v6, v4, v6

    if-gtz v6, :cond_0

    iget-object p1, v3, Ls4/b;->c:Ljava/util/List;

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, v3, Ls4/b;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ls4/b$a;

    iget v7, v6, Ls4/b$a;->d:I

    int-to-float v7, v7

    cmpg-float v7, v7, v4

    if-gtz v7, :cond_2

    iget v7, v6, Ls4/b$a;->e:I

    int-to-float v7, v7

    cmpg-float v7, v4, v7

    if-gtz v7, :cond_2

    iget v7, v6, Ls4/b$a;->b:I

    int-to-float v7, v7

    cmpg-float v7, v7, v5

    if-gtz v7, :cond_2

    iget v7, v6, Ls4/b$a;->c:I

    int-to-float v7, v7

    cmpl-float v7, v7, v5

    if-ltz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget v2, v6, Ls4/b$a;->a:I

    invoke-direct {p0, p1, v2}, Ls4/a;->r(II)V

    move v2, v0

    :cond_3
    if-nez v2, :cond_5

    :cond_4
    :goto_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget v1, v3, Ls4/b;->b:I

    invoke-direct {p0, p1, v1}, Ls4/a;->r(II)V

    :cond_5
    return v0

    :cond_6
    return v2
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$z;)V
    .locals 0
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroidx/recyclerview/widget/RecyclerView$z;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$m;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$z;)V

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    invoke-virtual {p0, p2}, Ls4/a;->l(I)I

    move-result p2

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$n;

    move-result-object p3

    instance-of p4, p3, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz p4, :cond_0

    check-cast p3, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/GridLayoutManager;->k()I

    move-result p3

    invoke-virtual {p0, p2}, Ls4/a;->p(I)Z

    move-result p4

    if-nez p4, :cond_2

    invoke-virtual {p0, p2, p3}, Ls4/a;->o(II)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Ls4/a;->p(I)Z

    move-result p3

    if-nez p3, :cond_2

    invoke-virtual {p0, p2}, Ls4/a;->m(I)Z

    move-result p2

    if-eqz p2, :cond_1

    :goto_0
    iget p2, p0, Ls4/a;->b:I

    goto :goto_1

    :cond_1
    iget p2, p0, Ls4/a;->d:I

    :goto_1
    iput p2, p1, Landroid/graphics/Rect;->top:I

    :cond_2
    return-void
.end method

.method protected h(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;III)V
    .locals 6

    iget v0, p0, Ls4/a;->d:I

    if-eqz v0, :cond_1

    invoke-virtual {p0, p4}, Ls4/a;->p(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$n;

    move-result-object v0

    instance-of v1, v0, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->k()I

    move-result v0

    invoke-virtual {p0, p4, v0}, Ls4/a;->o(II)Z

    move-result p4

    if-nez p4, :cond_1

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result p3

    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    add-int/2addr p3, p2

    int-to-float v4, p3

    iget p2, p0, Ls4/a;->b:I

    int-to-float p2, p2

    cmpl-float p2, v4, p2

    if-ltz p2, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result p2

    int-to-float v4, p2

    iget p2, p0, Ls4/a;->b:I

    int-to-float p2, p2

    cmpl-float p2, v4, p2

    if-ltz p2, :cond_1

    :goto_0
    int-to-float v1, p5

    iget p2, p0, Ls4/a;->d:I

    int-to-float p2, p2

    sub-float v2, v4, p2

    int-to-float v3, p6

    iget-object v5, p0, Ls4/a;->f:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method protected j(I)I
    .locals 0

    invoke-direct {p0, p1}, Ls4/a;->i(I)I

    move-result p1

    return p1
.end method

.method protected abstract k(I)Ljava/lang/String;
.end method

.method protected l(I)I
    .locals 1

    iget v0, p0, Ls4/a;->e:I

    sub-int/2addr p1, v0

    return p1
.end method

.method protected m(I)Z
    .locals 3

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-nez p1, :cond_1

    return v1

    :cond_1
    if-gtz p1, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    add-int/lit8 v2, p1, -0x1

    invoke-virtual {p0, v2}, Ls4/a;->k(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {p0, p1}, Ls4/a;->k(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    return v0

    :cond_3
    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/2addr p1, v1

    return p1
.end method

.method protected n(II)Z
    .locals 0

    if-ltz p1, :cond_0

    if-nez p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected o(II)Z
    .locals 3

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0, p1}, Ls4/a;->j(I)I

    move-result v2

    sub-int/2addr p1, v2

    if-ge p1, p2, :cond_2

    return v1

    :cond_2
    return v0
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$z;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$m;->onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$z;)V

    iget-object p1, p0, Ls4/a;->j:Landroid/view/GestureDetector;

    if-nez p1, :cond_0

    new-instance p1, Landroid/view/GestureDetector;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    iget-object v0, p0, Ls4/a;->k:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {p1, p3, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Ls4/a;->j:Landroid/view/GestureDetector;

    new-instance p1, Ls4/a$a;

    invoke-direct {p1, p0}, Ls4/a$a;-><init>(Ls4/a;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    iget-object p1, p0, Ls4/a;->i:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method protected p(I)Z
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected q(Landroidx/recyclerview/widget/RecyclerView;I)Z
    .locals 3

    const/4 v0, 0x1

    if-gez p2, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, p2}, Ls4/a;->k(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$n;

    move-result-object p1

    instance-of v2, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v2, :cond_1

    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->k()I

    move-result p1

    invoke-virtual {p0, p2}, Ls4/a;->j(I)I

    move-result v2

    sub-int v2, p2, v2

    rem-int/2addr v2, p1

    sub-int/2addr p1, v2

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    add-int/2addr p2, p1

    :try_start_0
    invoke-virtual {p0, p2}, Ls4/a;->k(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-object p1, v1

    :goto_1
    if-nez p1, :cond_2

    return v0

    :cond_2
    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/2addr p1, v0

    return p1
.end method

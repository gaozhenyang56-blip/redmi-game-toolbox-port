.class public Ls4/c;
.super Ls4/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls4/c$b;
    }
.end annotation


# instance fields
.field private l:Landroid/graphics/Paint;

.field private m:Lt4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt4/a<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lt4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt4/a<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lu4/c;


# direct methods
.method private constructor <init>(Lu4/c;)V
    .locals 1

    invoke-direct {p0}, Ls4/a;-><init>()V

    new-instance v0, Lt4/a;

    invoke-direct {v0}, Lt4/a;-><init>()V

    iput-object v0, p0, Ls4/c;->m:Lt4/a;

    new-instance v0, Lt4/a;

    invoke-direct {v0}, Lt4/a;-><init>()V

    iput-object v0, p0, Ls4/c;->n:Lt4/a;

    iput-object p1, p0, Ls4/c;->o:Lu4/c;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Ls4/c;->l:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method synthetic constructor <init>(Lu4/c;Ls4/c$a;)V
    .locals 0

    invoke-direct {p0, p1}, Ls4/c;-><init>(Lu4/c;)V

    return-void
.end method

.method private t(Landroid/graphics/Canvas;IIII)V
    .locals 7

    int-to-float v6, p3

    iget v0, p0, Ls4/a;->b:I

    sub-int v0, p5, v0

    int-to-float v2, v0

    int-to-float v3, p4

    int-to-float v4, p5

    iget-object v5, p0, Ls4/c;->l:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {p0, p2}, Ls4/a;->j(I)I

    move-result v0

    iget-object v1, p0, Ls4/c;->n:Lt4/a;

    invoke-virtual {v1, v0}, Lt4/a;->a(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-direct {p0, v0}, Ls4/c;->u(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v1, p3, p4}, Ls4/c;->v(Landroid/view/View;II)V

    iget-object p4, p0, Ls4/c;->n:Lt4/a;

    invoke-virtual {p4, v0, v1}, Lt4/a;->c(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object p4, p0, Ls4/c;->n:Lt4/a;

    invoke-virtual {p4, v0}, Lt4/a;->a(I)Ljava/lang/Object;

    move-result-object p4

    move-object v1, p4

    check-cast v1, Landroid/view/View;

    :goto_0
    iget-object p4, p0, Ls4/c;->m:Lt4/a;

    invoke-virtual {p4, v0}, Lt4/a;->a(I)Ljava/lang/Object;

    move-result-object p4

    if-eqz p4, :cond_2

    iget-object p4, p0, Ls4/c;->m:Lt4/a;

    invoke-virtual {p4, v0}, Lt4/a;->a(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object p4

    invoke-static {p4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p4

    iget-object v2, p0, Ls4/c;->m:Lt4/a;

    invoke-virtual {v2, v0, p4}, Lt4/a;->c(ILjava/lang/Object;)V

    :goto_1
    iget v0, p0, Ls4/a;->b:I

    sub-int v0, p5, v0

    int-to-float v0, v0

    const/4 v2, 0x0

    invoke-virtual {p1, p4, v6, v0, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object p1, p0, Ls4/a;->h:Lu4/b;

    if-eqz p1, :cond_3

    invoke-direct {p0, v1, p3, p5, p2}, Ls4/c;->w(Landroid/view/View;III)V

    :cond_3
    return-void
.end method

.method private u(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Ls4/c;->o:Lu4/c;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lu4/c;->b(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private v(Landroid/view/View;II)V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    iget v1, p0, Ls4/a;->b:I

    invoke-direct {v0, p3, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget v2, p0, Ls4/a;->b:I

    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    iget v0, p0, Ls4/a;->b:I

    const/4 v1, 0x0

    rsub-int/lit8 v0, v0, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method private w(Landroid/view/View;III)V
    .locals 11

    iget v0, p0, Ls4/a;->b:I

    sub-int v0, p3, v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Lv4/a;->a(Landroid/view/View;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    add-int v9, v4, v0

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v4

    add-int v10, v4, v0

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    add-int v7, v4, p2

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v4

    add-int v8, v4, p2

    new-instance v4, Ls4/b$a;

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v6

    move-object v5, v4

    invoke-direct/range {v5 .. v10}, Ls4/b$a;-><init>(IIIII)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p2, Ls4/b;

    invoke-direct {p2, p3, v1}, Ls4/b;-><init>(ILjava/util/List;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iput p1, p2, Ls4/b;->b:I

    iget-object p1, p0, Ls4/a;->i:Ljava/util/HashMap;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public k(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ls4/c;->o:Lu4/c;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lu4/a;->a(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$z;)V
    .locals 11

    invoke-super {p0, p1, p2, p3}, Ls4/a;->onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$z;)V

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$z;->b()I

    move-result p3

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result v8

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int v9, v1, v2

    const/4 v1, 0x0

    move v10, v1

    :goto_0
    if-ge v10, v0, :cond_3

    invoke-virtual {p2, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v1}, Ls4/a;->l(I)I

    move-result v5

    invoke-virtual {p0, v5}, Ls4/a;->m(I)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0, v5, v10}, Ls4/a;->n(II)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v6, v8

    move v7, v9

    invoke-virtual/range {v1 .. v7}, Ls4/a;->h(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;III)V

    goto :goto_3

    :cond_1
    :goto_1
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v2

    iget v3, p0, Ls4/a;->b:I

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    add-int/2addr v4, v6

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v1, v1, 0x1

    if-ge v1, p3, :cond_2

    invoke-virtual {p0, p2, v5}, Ls4/a;->q(Landroidx/recyclerview/widget/RecyclerView;I)Z

    move-result v1

    if-eqz v1, :cond_2

    if-ge v2, v3, :cond_2

    move v6, v2

    goto :goto_2

    :cond_2
    move v6, v3

    :goto_2
    move-object v1, p0

    move-object v2, p1

    move v3, v5

    move v4, v8

    move v5, v9

    invoke-direct/range {v1 .. v6}, Ls4/c;->t(Landroid/graphics/Canvas;IIII)V

    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

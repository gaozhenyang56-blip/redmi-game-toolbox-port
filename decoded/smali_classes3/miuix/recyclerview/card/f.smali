.class public Lmiuix/recyclerview/card/f;
.super Ldm/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/recyclerview/card/f$b;
    }
.end annotation


# instance fields
.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:Landroid/graphics/drawable/Drawable;

.field public p:I

.field public q:I

.field private final r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiuix/recyclerview/card/f$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ldm/a;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lmiuix/recyclerview/card/f;->g:I

    iput v0, p0, Lmiuix/recyclerview/card/f;->h:I

    iput v0, p0, Lmiuix/recyclerview/card/f;->i:I

    iput v0, p0, Lmiuix/recyclerview/card/f;->j:I

    iput v0, p0, Lmiuix/recyclerview/card/f;->k:I

    iput v0, p0, Lmiuix/recyclerview/card/f;->l:I

    iput v0, p0, Lmiuix/recyclerview/card/f;->m:I

    iput v0, p0, Lmiuix/recyclerview/card/f;->n:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/recyclerview/card/f;->r:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lmiuix/recyclerview/card/f;->p(Landroid/content/Context;)V

    return-void
.end method

.method private k(Lmiuix/recyclerview/card/f$b;Landroidx/recyclerview/widget/RecyclerView;IIZLmiuix/recyclerview/card/e;)V
    .locals 3

    invoke-virtual {p6, p3}, Lmiuix/recyclerview/card/e;->getItemViewGroup(I)I

    move-result v0

    invoke-virtual {p6}, Lmiuix/recyclerview/card/e;->getRemovedGroupId()I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p2, p3, p4, p5}, Ldm/a;->i(Landroidx/recyclerview/widget/RecyclerView;IIZ)I

    move-result p2

    int-to-float p2, p2

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_5

    if-eqz p5, :cond_3

    add-int/lit8 p5, p3, 0x1

    if-ge p5, p4, :cond_2

    invoke-virtual {p6, p3}, Lmiuix/recyclerview/card/e;->getItemViewGroupType(I)I

    move-result p3

    invoke-direct {p0, p3}, Lmiuix/recyclerview/card/f;->s(I)Landroid/graphics/Rect;

    move-result-object p3

    invoke-virtual {p0, p6, p5}, Lmiuix/recyclerview/card/f;->t(Lmiuix/recyclerview/card/e;I)Landroid/graphics/Rect;

    move-result-object p4

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    iget p4, p4, Landroid/graphics/Rect;->top:I

    add-int v2, p3, p4

    :cond_2
    iget-object p1, p1, Lmiuix/recyclerview/card/f$b;->a:Landroid/graphics/RectF;

    int-to-float p3, v2

    sub-float/2addr p2, p3

    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    goto :goto_1

    :cond_3
    add-int/lit8 p4, p3, -0x1

    if-ltz p4, :cond_4

    invoke-virtual {p6, p3}, Lmiuix/recyclerview/card/e;->getItemViewGroupType(I)I

    move-result p3

    invoke-direct {p0, p3}, Lmiuix/recyclerview/card/f;->s(I)Landroid/graphics/Rect;

    move-result-object p3

    invoke-virtual {p0, p6, p4}, Lmiuix/recyclerview/card/f;->t(Lmiuix/recyclerview/card/e;I)Landroid/graphics/Rect;

    move-result-object p4

    iget p3, p3, Landroid/graphics/Rect;->top:I

    iget p4, p4, Landroid/graphics/Rect;->bottom:I

    add-int v2, p3, p4

    :cond_4
    iget-object p1, p1, Lmiuix/recyclerview/card/f$b;->a:Landroid/graphics/RectF;

    int-to-float p3, v2

    add-float/2addr p2, p3

    iput p2, p1, Landroid/graphics/RectF;->top:F

    :cond_5
    :goto_1
    return-void
.end method

.method private l(II)V
    .locals 1

    add-int/lit8 p1, p1, -0x2

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lmiuix/recyclerview/card/f;->p:I

    add-int/lit8 p2, p2, 0x2

    iput p2, p0, Lmiuix/recyclerview/card/f;->q:I

    return-void
.end method

.method private s(I)Landroid/graphics/Rect;
    .locals 2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    iget p1, p0, Lmiuix/recyclerview/card/f;->k:I

    iput p1, v0, Landroid/graphics/Rect;->top:I

    goto :goto_2

    :cond_0
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    :goto_0
    iget p1, p0, Lmiuix/recyclerview/card/f;->l:I

    :goto_1
    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    iget p1, p0, Lmiuix/recyclerview/card/f;->k:I

    iput p1, v0, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    iget p1, p0, Lmiuix/recyclerview/card/f;->m:I

    iput p1, v0, Landroid/graphics/Rect;->top:I

    iget p1, p0, Lmiuix/recyclerview/card/f;->n:I

    goto :goto_1

    :cond_3
    :goto_2
    return-object v0
.end method


# virtual methods
.method public f(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$z;Landroidx/recyclerview/widget/RecyclerView$h;)V
    .locals 20
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView$z;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "Landroidx/recyclerview/widget/RecyclerView$z;",
            "Landroidx/recyclerview/widget/RecyclerView$h<",
            "*>;)V"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v0, p4

    instance-of v1, v0, Lmiuix/recyclerview/card/e;

    if-eqz v1, :cond_13

    iget-object v1, v7, Lmiuix/recyclerview/card/f;->r:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    move-object v10, v0

    check-cast v10, Lmiuix/recyclerview/card/e;

    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$n;

    move-result-object v11

    if-eqz v11, :cond_13

    invoke-virtual {v7, v11}, Lmiuix/recyclerview/card/f;->r(Landroidx/recyclerview/widget/RecyclerView$n;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {v7, v11}, Lmiuix/recyclerview/card/f;->m(Landroidx/recyclerview/widget/RecyclerView$n;)V

    iget v0, v7, Lmiuix/recyclerview/card/f;->p:I

    const/4 v12, 0x0

    move v14, v0

    move-object v0, v12

    const/4 v15, 0x0

    :goto_0
    iget v1, v7, Lmiuix/recyclerview/card/f;->q:I

    const/4 v2, 0x2

    const/4 v6, 0x4

    const/4 v5, 0x1

    if-gt v14, v1, :cond_d

    invoke-virtual {v9, v14}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$c0;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_b

    :cond_0
    iget-object v4, v1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {v9, v4}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v10, v1}, Lmiuix/recyclerview/card/e;->getItemViewGroupType(I)I

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v16

    if-nez v0, :cond_8

    iget-object v0, v7, Lmiuix/recyclerview/card/f;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v15, v0, :cond_1

    iget-object v0, v7, Lmiuix/recyclerview/card/f;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/recyclerview/card/f$b;

    goto :goto_1

    :cond_1
    new-instance v0, Lmiuix/recyclerview/card/f$b;

    invoke-direct {v0, v12}, Lmiuix/recyclerview/card/f$b;-><init>(Lmiuix/recyclerview/card/f$a;)V

    iget-object v1, v7, Lmiuix/recyclerview/card/f;->r:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    move-object v1, v0

    iget-object v0, v1, Lmiuix/recyclerview/card/f$b;->a:Landroid/graphics/RectF;

    iget v12, v7, Lmiuix/recyclerview/card/f;->g:I

    int-to-float v12, v12

    sub-float v12, v16, v12

    iput v12, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v12

    int-to-float v12, v12

    add-float v12, v16, v12

    iget v13, v7, Lmiuix/recyclerview/card/f;->h:I

    int-to-float v13, v13

    add-float/2addr v12, v13

    iput v12, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v0, v1, Lmiuix/recyclerview/card/f$b;->a:Landroid/graphics/RectF;

    invoke-virtual {v7, v9}, Ldm/a;->j(Landroid/view/View;)Z

    move-result v12

    if-eqz v12, :cond_2

    iget v12, v7, Ldm/a;->e:I

    goto :goto_2

    :cond_2
    iget v12, v7, Ldm/a;->d:I

    :goto_2
    int-to-float v12, v12

    iput v12, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, v1, Lmiuix/recyclerview/card/f$b;->a:Landroid/graphics/RectF;

    invoke-virtual {v7, v9}, Ldm/a;->j(Landroid/view/View;)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v12

    iget v13, v7, Ldm/a;->d:I

    goto :goto_3

    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v12

    iget v13, v7, Ldm/a;->e:I

    :goto_3
    sub-int/2addr v12, v13

    int-to-float v12, v12

    iput v12, v0, Landroid/graphics/RectF;->right:F

    if-ne v3, v2, :cond_4

    move v0, v5

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    iput-boolean v0, v1, Lmiuix/recyclerview/card/f$b;->b:Z

    if-ne v3, v6, :cond_5

    move v0, v5

    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    :goto_5
    iput-boolean v0, v1, Lmiuix/recyclerview/card/f$b;->c:Z

    if-eq v3, v2, :cond_7

    if-ne v3, v5, :cond_6

    goto :goto_6

    :cond_6
    move-object/from16 v17, v1

    move/from16 v18, v3

    move-object/from16 v19, v4

    move v12, v5

    move v13, v6

    goto :goto_7

    :cond_7
    :goto_6
    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    move-object/from16 v17, v1

    move-object/from16 v2, p2

    move/from16 v18, v3

    move v3, v14

    move-object/from16 v19, v4

    move v4, v12

    move v12, v5

    move v5, v13

    move v13, v6

    move-object v6, v10

    invoke-direct/range {v0 .. v6}, Lmiuix/recyclerview/card/f;->k(Lmiuix/recyclerview/card/f$b;Landroidx/recyclerview/widget/RecyclerView;IIZLmiuix/recyclerview/card/e;)V

    :goto_7
    move-object/from16 v1, v17

    move/from16 v6, v18

    goto :goto_9

    :cond_8
    move/from16 v18, v3

    move-object/from16 v19, v4

    move v12, v5

    move v13, v6

    iget-object v1, v0, Lmiuix/recyclerview/card/f$b;->a:Landroid/graphics/RectF;

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    add-float v2, v16, v2

    iget v3, v7, Lmiuix/recyclerview/card/f;->h:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    move/from16 v6, v18

    if-ne v6, v13, :cond_9

    move v5, v12

    goto :goto_8

    :cond_9
    const/4 v5, 0x0

    :goto_8
    iput-boolean v5, v0, Lmiuix/recyclerview/card/f$b;->c:Z

    move-object v1, v0

    :goto_9
    if-ne v6, v12, :cond_a

    iput-boolean v12, v1, Lmiuix/recyclerview/card/f$b;->b:Z

    iput-boolean v12, v1, Lmiuix/recyclerview/card/f$b;->c:Z

    iget-object v0, v1, Lmiuix/recyclerview/card/f$b;->a:Landroid/graphics/RectF;

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    add-float v16, v16, v2

    iget v2, v7, Lmiuix/recyclerview/card/f;->h:I

    int-to-float v2, v2

    add-float v2, v16, v2

    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v11}, Landroidx/recyclerview/widget/RecyclerView$n;->getItemCount()I

    move-result v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move v3, v14

    move v12, v6

    move-object v6, v10

    invoke-direct/range {v0 .. v6}, Lmiuix/recyclerview/card/f;->k(Lmiuix/recyclerview/card/f$b;Landroidx/recyclerview/widget/RecyclerView;IIZLmiuix/recyclerview/card/e;)V

    add-int/lit8 v15, v15, 0x1

    const/4 v1, 0x0

    goto :goto_a

    :cond_a
    move v12, v6

    :goto_a
    if-ne v12, v13, :cond_b

    invoke-virtual {v11}, Landroidx/recyclerview/widget/RecyclerView$n;->getItemCount()I

    move-result v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move v3, v14

    move-object v6, v10

    invoke-direct/range {v0 .. v6}, Lmiuix/recyclerview/card/f;->k(Lmiuix/recyclerview/card/f$b;Landroidx/recyclerview/widget/RecyclerView;IIZLmiuix/recyclerview/card/e;)V

    add-int/lit8 v15, v15, 0x1

    const/4 v0, 0x0

    goto :goto_b

    :cond_b
    move-object v0, v1

    :cond_c
    :goto_b
    add-int/lit8 v14, v14, 0x1

    const/4 v12, 0x0

    goto/16 :goto_0

    :cond_d
    move v12, v5

    move v13, v6

    const/4 v0, 0x0

    :goto_c
    iget-object v1, v7, Lmiuix/recyclerview/card/f;->r:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_13

    iget-object v1, v7, Lmiuix/recyclerview/card/f;->r:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/recyclerview/card/f$b;

    iget-object v3, v1, Lmiuix/recyclerview/card/f$b;->a:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->bottom:F

    iget v3, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v3

    const/4 v3, 0x0

    cmpg-float v4, v4, v3

    if-gez v4, :cond_e

    goto :goto_e

    :cond_e
    iget-object v4, v7, Lmiuix/recyclerview/card/f;->o:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_12

    iget-boolean v5, v1, Lmiuix/recyclerview/card/f$b;->b:Z

    if-eqz v5, :cond_f

    iget v5, v7, Ldm/a;->c:I

    int-to-float v5, v5

    goto :goto_d

    :cond_f
    move v5, v3

    :goto_d
    iget-boolean v6, v1, Lmiuix/recyclerview/card/f$b;->c:Z

    if-eqz v6, :cond_10

    iget v3, v7, Ldm/a;->c:I

    int-to-float v3, v3

    :cond_10
    const/16 v6, 0x8

    new-array v6, v6, [F

    const/4 v9, 0x0

    aput v5, v6, v9

    aput v5, v6, v12

    aput v5, v6, v2

    const/4 v10, 0x3

    aput v5, v6, v10

    aput v3, v6, v13

    const/4 v5, 0x5

    aput v3, v6, v5

    const/4 v5, 0x6

    aput v3, v6, v5

    const/4 v5, 0x7

    aput v3, v6, v5

    instance-of v3, v4, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v3, :cond_11

    iget-object v3, v7, Ldm/a;->a:Landroid/graphics/Paint;

    check-cast v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v1, Lmiuix/recyclerview/card/f$b;->a:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v7, v8, v1, v6, v3}, Ldm/a;->h(Landroid/graphics/Canvas;Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    goto :goto_f

    :cond_11
    iget-object v3, v7, Ldm/a;->b:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    iget-object v3, v7, Ldm/a;->b:Landroid/graphics/Path;

    iget-object v4, v1, Lmiuix/recyclerview/card/f$b;->a:Landroid/graphics/RectF;

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v4, v6, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    iget-object v1, v1, Lmiuix/recyclerview/card/f$b;->a:Landroid/graphics/RectF;

    iget-object v3, v7, Ldm/a;->b:Landroid/graphics/Path;

    iget-object v4, v7, Lmiuix/recyclerview/card/f;->o:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v8, v1, v3, v4}, Ldm/a;->g(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Path;Landroid/graphics/drawable/Drawable;)V

    goto :goto_f

    :cond_12
    :goto_e
    const/4 v9, 0x0

    :goto_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_13
    return-void
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$z;)V
    .locals 1
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

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$n;

    move-result-object p4

    invoke-virtual {p0, p4}, Lmiuix/recyclerview/card/f;->r(Landroidx/recyclerview/widget/RecyclerView$n;)Z

    move-result p4

    if-nez p4, :cond_0

    return-void

    :cond_0
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$h;

    move-result-object p4

    instance-of v0, p4, Lmiuix/recyclerview/card/e;

    if-eqz v0, :cond_3

    check-cast p4, Lmiuix/recyclerview/card/e;

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    invoke-virtual {p0, p4, p2}, Lmiuix/recyclerview/card/f;->t(Lmiuix/recyclerview/card/e;I)Landroid/graphics/Rect;

    move-result-object p4

    if-nez p2, :cond_1

    const/4 p2, 0x0

    iput p2, p4, Landroid/graphics/Rect;->top:I

    iput p2, p4, Landroid/graphics/Rect;->bottom:I

    :cond_1
    invoke-virtual {p0, p3}, Ldm/a;->j(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget p2, p0, Ldm/a;->d:I

    iget p3, p0, Lmiuix/recyclerview/card/f;->i:I

    add-int/2addr p2, p3

    iput p2, p1, Landroid/graphics/Rect;->left:I

    iget p2, p0, Ldm/a;->e:I

    iget p3, p0, Lmiuix/recyclerview/card/f;->j:I

    add-int/2addr p2, p3

    iput p2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_2
    iget p2, p0, Ldm/a;->d:I

    iget p3, p0, Lmiuix/recyclerview/card/f;->i:I

    add-int/2addr p2, p3

    iput p2, p1, Landroid/graphics/Rect;->right:I

    iget p2, p0, Ldm/a;->e:I

    iget p3, p0, Lmiuix/recyclerview/card/f;->j:I

    add-int/2addr p2, p3

    iput p2, p1, Landroid/graphics/Rect;->left:I

    :goto_0
    iget p2, p4, Landroid/graphics/Rect;->top:I

    iput p2, p1, Landroid/graphics/Rect;->top:I

    iget p2, p4, Landroid/graphics/Rect;->bottom:I

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    :cond_3
    return-void
.end method

.method protected m(Landroidx/recyclerview/widget/RecyclerView$n;)V
    .locals 3

    instance-of v0, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->k()I

    move-result v0

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    if-eqz v1, :cond_5

    goto :goto_0

    :cond_1
    instance-of v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_2

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    :goto_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p1

    :goto_1
    invoke-direct {p0, v0, p1}, Lmiuix/recyclerview/card/f;->l(II)V

    goto :goto_3

    :cond_2
    instance-of v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v0, :cond_4

    check-cast p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A()I

    move-result v0

    if-ne v0, v2, :cond_3

    goto :goto_2

    :cond_3
    move v2, v1

    :goto_2
    if-eqz v2, :cond_5

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p([I)[I

    move-result-object v2

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r([I)[I

    move-result-object p1

    array-length v0, v2

    if-lez v0, :cond_5

    array-length v0, p1

    if-lez v0, :cond_5

    aget v0, v2, v1

    aget p1, p1, v1

    goto :goto_1

    :cond_4
    instance-of p1, p1, Landroidx/recyclerview/widget/RecyclerView$n;

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lmiuix/recyclerview/card/f;->q()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lmiuix/recyclerview/card/f;->n()I

    move-result p1

    invoke-virtual {p0}, Lmiuix/recyclerview/card/f;->o()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lmiuix/recyclerview/card/f;->l(II)V

    :cond_5
    :goto_3
    return-void
.end method

.method public n()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$z;)V
    .locals 0
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView$z;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$m;->onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$z;)V

    return-void
.end method

.method public p(Landroid/content/Context;)V
    .locals 5

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Lmiuix/recyclerview/card/h;->l:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    if-nez v0, :cond_0

    sget v0, Lmiuix/recyclerview/card/j;->a:I

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lmiuix/recyclerview/card/h;->j:I

    invoke-static {v1, v0, v4}, Lmiuix/recyclerview/card/g;->a(Landroid/content/res/Resources$Theme;Landroid/content/res/Resources;I)I

    move-result v4

    iput v4, p0, Lmiuix/recyclerview/card/f;->g:I

    sget v4, Lmiuix/recyclerview/card/h;->g:I

    invoke-static {v1, v0, v4}, Lmiuix/recyclerview/card/g;->a(Landroid/content/res/Resources$Theme;Landroid/content/res/Resources;I)I

    move-result v4

    iput v4, p0, Lmiuix/recyclerview/card/f;->h:I

    sget v4, Lmiuix/recyclerview/card/h;->i:I

    invoke-static {v1, v0, v4}, Lmiuix/recyclerview/card/g;->a(Landroid/content/res/Resources$Theme;Landroid/content/res/Resources;I)I

    move-result v4

    iput v4, p0, Lmiuix/recyclerview/card/f;->i:I

    sget v4, Lmiuix/recyclerview/card/h;->h:I

    invoke-static {v1, v0, v4}, Lmiuix/recyclerview/card/g;->a(Landroid/content/res/Resources$Theme;Landroid/content/res/Resources;I)I

    move-result v4

    iput v4, p0, Lmiuix/recyclerview/card/f;->j:I

    sget v4, Lmiuix/recyclerview/card/h;->e:I

    invoke-static {v1, v0, v4}, Lmiuix/recyclerview/card/g;->a(Landroid/content/res/Resources$Theme;Landroid/content/res/Resources;I)I

    move-result v4

    iput v4, p0, Ldm/a;->d:I

    sget v4, Lmiuix/recyclerview/card/h;->d:I

    invoke-static {v1, v0, v4}, Lmiuix/recyclerview/card/g;->a(Landroid/content/res/Resources$Theme;Landroid/content/res/Resources;I)I

    move-result v4

    iput v4, p0, Ldm/a;->e:I

    sget v4, Lmiuix/recyclerview/card/h;->f:I

    invoke-static {v1, v0, v4}, Lmiuix/recyclerview/card/g;->a(Landroid/content/res/Resources$Theme;Landroid/content/res/Resources;I)I

    move-result v4

    iput v4, p0, Lmiuix/recyclerview/card/f;->k:I

    sget v4, Lmiuix/recyclerview/card/h;->c:I

    invoke-static {v1, v0, v4}, Lmiuix/recyclerview/card/g;->a(Landroid/content/res/Resources$Theme;Landroid/content/res/Resources;I)I

    move-result v4

    iput v4, p0, Lmiuix/recyclerview/card/f;->l:I

    sget v4, Lmiuix/recyclerview/card/h;->k:I

    invoke-static {v1, v0, v4}, Lmiuix/recyclerview/card/g;->a(Landroid/content/res/Resources$Theme;Landroid/content/res/Resources;I)I

    move-result v0

    iput v0, p0, Ldm/a;->c:I

    const/16 v1, 0x8

    new-array v1, v1, [F

    int-to-float v4, v0

    aput v4, v1, v2

    int-to-float v2, v0

    aput v2, v1, v3

    const/4 v2, 0x2

    int-to-float v4, v0

    aput v4, v1, v2

    const/4 v2, 0x3

    int-to-float v4, v0

    aput v4, v1, v2

    const/4 v2, 0x4

    int-to-float v4, v0

    aput v4, v1, v2

    const/4 v2, 0x5

    int-to-float v4, v0

    aput v4, v1, v2

    const/4 v2, 0x6

    int-to-float v4, v0

    aput v4, v1, v2

    const/4 v2, 0x7

    int-to-float v0, v0

    aput v0, v1, v2

    iput-object v1, p0, Ldm/a;->f:[F

    iget-object v0, p0, Ldm/a;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Ldm/a;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setDither(Z)V

    sget v0, Lmiuix/recyclerview/card/h;->a:I

    invoke-static {p1, v0}, Lmiuix/recyclerview/card/g;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lmiuix/recyclerview/card/f;->o:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public q()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public r(Landroidx/recyclerview/widget/RecyclerView$n;)Z
    .locals 3

    instance-of v0, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->k()I

    move-result p1

    if-ne p1, v2, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    instance-of v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v0, :cond_3

    check-cast p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A()I

    move-result p1

    if-ne p1, v2, :cond_2

    move v1, v2

    :cond_2
    return v1

    :cond_3
    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView$n;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lmiuix/recyclerview/card/f;->q()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    instance-of p1, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz p1, :cond_6

    :cond_5
    return v2

    :cond_6
    return v1
.end method

.method public t(Lmiuix/recyclerview/card/e;I)Landroid/graphics/Rect;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiuix/recyclerview/card/e<",
            "*>;I)",
            "Landroid/graphics/Rect;"
        }
    .end annotation

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    if-ltz p2, :cond_3

    invoke-virtual {p1, p2}, Lmiuix/recyclerview/card/e;->getItemViewGroupType(I)I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    iget p1, p0, Lmiuix/recyclerview/card/f;->k:I

    iget p2, p0, Lmiuix/recyclerview/card/f;->g:I

    add-int/2addr p1, p2

    iput p1, v0, Landroid/graphics/Rect;->top:I

    goto :goto_2

    :cond_0
    const/4 p2, 0x4

    if-ne p1, p2, :cond_1

    :goto_0
    iget p1, p0, Lmiuix/recyclerview/card/f;->l:I

    iget p2, p0, Lmiuix/recyclerview/card/f;->h:I

    add-int/2addr p1, p2

    :goto_1
    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    :cond_1
    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    iget p1, p0, Lmiuix/recyclerview/card/f;->k:I

    iget p2, p0, Lmiuix/recyclerview/card/f;->g:I

    add-int/2addr p1, p2

    iput p1, v0, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    iget p1, p0, Lmiuix/recyclerview/card/f;->m:I

    iput p1, v0, Landroid/graphics/Rect;->top:I

    iget p1, p0, Lmiuix/recyclerview/card/f;->n:I

    goto :goto_1

    :cond_3
    :goto_2
    return-object v0
.end method

.method public u(I)V
    .locals 0

    iput p1, p0, Ldm/a;->e:I

    return-void
.end method

.method public v(I)V
    .locals 0

    iput p1, p0, Ldm/a;->d:I

    return-void
.end method

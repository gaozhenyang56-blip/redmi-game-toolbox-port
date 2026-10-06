.class Lmiuix/preference/PreferenceFragment$c;
.super Ldm/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/preference/PreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field private g:Landroid/graphics/Paint;

.field private h:I

.field private i:Z

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:Lmiuix/preference/PreferenceFragment$d;

.field private final p:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiuix/preference/PreferenceFragment$d;",
            ">;"
        }
    .end annotation
.end field

.field private q:I

.field private r:Landroid/graphics/drawable/Drawable;

.field private s:I

.field private t:I

.field private u:Z

.field final synthetic v:Lmiuix/preference/PreferenceFragment;


# direct methods
.method private constructor <init>(Lmiuix/preference/PreferenceFragment;Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Lmiuix/preference/PreferenceFragment$c;->v:Lmiuix/preference/PreferenceFragment;

    invoke-direct {p0}, Ldm/a;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lmiuix/preference/PreferenceFragment$c;->i:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lmiuix/preference/PreferenceFragment$c;->p:Ljava/util/ArrayList;

    iget-object p1, p0, Ldm/a;->a:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p0}, Lmiuix/preference/PreferenceFragment$c;->B()V

    invoke-virtual {p0, p2}, Lmiuix/preference/PreferenceFragment$c;->y(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lmiuix/preference/PreferenceFragment$c;->g:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    sget p1, Lmiuix/preference/k;->b:I

    invoke-static {p2, p1}, Lpl/d;->e(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lmiuix/preference/PreferenceFragment$c;->h:I

    iget-object p2, p0, Lmiuix/preference/PreferenceFragment$c;->g:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lmiuix/preference/PreferenceFragment$c;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method synthetic constructor <init>(Lmiuix/preference/PreferenceFragment;Landroid/content/Context;Lmiuix/preference/PreferenceFragment$a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmiuix/preference/PreferenceFragment$c;-><init>(Lmiuix/preference/PreferenceFragment;Landroid/content/Context;)V

    return-void
.end method

.method private A(Landroid/graphics/Rect;Landroidx/preference/Preference;ILandroidx/recyclerview/widget/RecyclerView;)V
    .locals 2
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p4}, Landroidx/appcompat/widget/n1;->b(Landroid/view/View;)Z

    move-result p4

    if-eqz p4, :cond_0

    iget v0, p0, Ldm/a;->e:I

    goto :goto_0

    :cond_0
    iget v0, p0, Ldm/a;->d:I

    :goto_0
    if-eqz p4, :cond_1

    iget p4, p0, Ldm/a;->d:I

    goto :goto_1

    :cond_1
    iget p4, p0, Ldm/a;->e:I

    :goto_1
    iget-object v1, p0, Lmiuix/preference/PreferenceFragment$c;->v:Lmiuix/preference/PreferenceFragment;

    invoke-static {v1}, Lmiuix/preference/PreferenceFragment;->access$1200(Lmiuix/preference/PreferenceFragment;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lmiuix/preference/PreferenceFragment$c;->v:Lmiuix/preference/PreferenceFragment;

    invoke-static {v0}, Lmiuix/preference/PreferenceFragment;->access$1200(Lmiuix/preference/PreferenceFragment;)I

    move-result v0

    add-int/2addr p4, v0

    iput p4, p1, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, p1, p3, p2}, Lmiuix/preference/PreferenceFragment$c;->r(Landroid/graphics/Rect;ILandroidx/preference/Preference;)V

    return-void
.end method

.method static synthetic k(Lmiuix/preference/PreferenceFragment$c;)I
    .locals 0

    iget p0, p0, Lmiuix/preference/PreferenceFragment$c;->j:I

    return p0
.end method

.method static synthetic l(Lmiuix/preference/PreferenceFragment$c;)I
    .locals 0

    iget p0, p0, Lmiuix/preference/PreferenceFragment$c;->k:I

    return p0
.end method

.method static synthetic m(Lmiuix/preference/PreferenceFragment$c;)I
    .locals 0

    iget p0, p0, Lmiuix/preference/PreferenceFragment$c;->l:I

    return p0
.end method

.method static synthetic n(Lmiuix/preference/PreferenceFragment$c;)I
    .locals 0

    iget p0, p0, Lmiuix/preference/PreferenceFragment$c;->m:I

    return p0
.end method

.method private o(Landroidx/recyclerview/widget/RecyclerView;Landroidx/preference/Preference;Landroid/view/View;II)V
    .locals 7
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/preference/Preference;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p2}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p3, :cond_2

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v1 .. v6}, Lmiuix/preference/PreferenceFragment$c;->v(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;IIZ)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lmiuix/preference/PreferenceFragment$c;->v:Lmiuix/preference/PreferenceFragment;

    invoke-static {v1}, Lmiuix/preference/PreferenceFragment;->access$500(Lmiuix/preference/PreferenceFragment;)Lmiuix/preference/i;

    move-result-object v1

    invoke-virtual {v1}, Lmiuix/preference/i;->F()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p2}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/high16 p2, -0x40800000    # -1.0f

    cmpl-float p2, v0, p2

    if-eqz p2, :cond_1

    invoke-direct {p0, p1, p4, p5}, Lmiuix/preference/PreferenceFragment$c;->w(Landroidx/recyclerview/widget/RecyclerView;II)Landroidx/preference/Preference;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lmiuix/preference/PreferenceFragment$c;->o:Lmiuix/preference/PreferenceFragment$d;

    iget-object p1, p1, Lmiuix/preference/PreferenceFragment$d;->a:Landroid/graphics/RectF;

    iget p2, p0, Lmiuix/preference/PreferenceFragment$c;->n:I

    int-to-float p2, p2

    sub-float/2addr v0, p2

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lmiuix/preference/PreferenceFragment$c;->o:Lmiuix/preference/PreferenceFragment$d;

    iget-object p1, p1, Lmiuix/preference/PreferenceFragment$d;->a:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/view/View;->getY()F

    move-result p2

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    int-to-float p3, p3

    add-float/2addr p2, p3

    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    :cond_2
    :goto_1
    return-void
.end method

.method private p(Landroidx/preference/Preference;IILandroidx/recyclerview/widget/RecyclerView;IILandroid/view/View;)Z
    .locals 15

    move-object v6, p0

    invoke-virtual/range {p1 .. p1}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v0

    instance-of v0, v0, Landroidx/preference/PreferenceScreen;

    const/4 v7, 0x1

    if-eqz v0, :cond_0

    move v8, v7

    goto :goto_0

    :cond_0
    move/from16 v8, p2

    :goto_0
    const/4 v9, 0x0

    const/4 v10, 0x4

    if-eq v8, v7, :cond_7

    const/4 v11, 0x2

    move/from16 v12, p3

    move-object/from16 v13, p4

    move/from16 v14, p5

    if-ne v8, v11, :cond_1

    invoke-direct {p0, v13, v12, v14}, Lmiuix/preference/PreferenceFragment$c;->t(Landroidx/recyclerview/widget/RecyclerView;II)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_1

    :cond_1
    if-ne v8, v11, :cond_2

    iget-object v0, v6, Lmiuix/preference/PreferenceFragment$c;->o:Lmiuix/preference/PreferenceFragment$d;

    iget v1, v0, Lmiuix/preference/PreferenceFragment$d;->e:I

    or-int/2addr v1, v7

    iput v1, v0, Lmiuix/preference/PreferenceFragment$d;->e:I

    move-object v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p1

    move-object/from16 v3, p7

    move/from16 v4, p6

    move/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lmiuix/preference/PreferenceFragment$c;->q(Landroidx/recyclerview/widget/RecyclerView;Landroidx/preference/Preference;Landroid/view/View;II)V

    :cond_2
    if-eq v8, v10, :cond_3

    const/4 v0, 0x3

    if-ne v8, v0, :cond_4

    :cond_3
    iget-object v0, v6, Lmiuix/preference/PreferenceFragment$c;->o:Lmiuix/preference/PreferenceFragment$d;

    iget v1, v0, Lmiuix/preference/PreferenceFragment$d;->e:I

    or-int/2addr v1, v11

    iput v1, v0, Lmiuix/preference/PreferenceFragment$d;->e:I

    iget-object v0, v0, Lmiuix/preference/PreferenceFragment$d;->a:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual/range {p7 .. p7}, Landroid/view/View;->getY()F

    move-result v1

    invoke-virtual/range {p7 .. p7}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    iget-object v0, v6, Lmiuix/preference/PreferenceFragment$c;->o:Lmiuix/preference/PreferenceFragment$d;

    iget-object v0, v0, Lmiuix/preference/PreferenceFragment$d;->a:Landroid/graphics/RectF;

    invoke-virtual/range {p7 .. p7}, Landroid/view/View;->getY()F

    move-result v1

    invoke-virtual/range {p7 .. p7}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    :cond_4
    iget-object v0, v6, Lmiuix/preference/PreferenceFragment$c;->o:Lmiuix/preference/PreferenceFragment$d;

    if-eqz v0, :cond_6

    if-ne v8, v10, :cond_6

    iget v1, v0, Lmiuix/preference/PreferenceFragment$d;->e:I

    or-int/2addr v1, v10

    iput v1, v0, Lmiuix/preference/PreferenceFragment$d;->e:I

    move-object v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p1

    move-object/from16 v3, p7

    move/from16 v4, p3

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lmiuix/preference/PreferenceFragment$c;->o(Landroidx/recyclerview/widget/RecyclerView;Landroidx/preference/Preference;Landroid/view/View;II)V

    iget-object v0, v6, Lmiuix/preference/PreferenceFragment$c;->o:Lmiuix/preference/PreferenceFragment$d;

    iget-object v0, v0, Lmiuix/preference/PreferenceFragment$d;->a:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    iget v2, v0, Landroid/graphics/RectF;->top:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_5

    invoke-virtual/range {p7 .. p7}, Landroid/view/View;->getY()F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    :cond_5
    iput-object v9, v6, Lmiuix/preference/PreferenceFragment$c;->o:Lmiuix/preference/PreferenceFragment$d;

    return v7

    :cond_6
    const/4 v0, 0x0

    return v0

    :cond_7
    move/from16 v12, p3

    move-object/from16 v13, p4

    move/from16 v14, p5

    :goto_1
    iget-object v0, v6, Lmiuix/preference/PreferenceFragment$c;->o:Lmiuix/preference/PreferenceFragment$d;

    iget v1, v0, Lmiuix/preference/PreferenceFragment$d;->e:I

    or-int/2addr v1, v7

    iput v1, v0, Lmiuix/preference/PreferenceFragment$d;->e:I

    move-object v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p1

    move-object/from16 v3, p7

    move/from16 v4, p6

    move/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lmiuix/preference/PreferenceFragment$c;->q(Landroidx/recyclerview/widget/RecyclerView;Landroidx/preference/Preference;Landroid/view/View;II)V

    if-ne v8, v7, :cond_8

    iget-object v0, v6, Lmiuix/preference/PreferenceFragment$c;->o:Lmiuix/preference/PreferenceFragment$d;

    iget v1, v0, Lmiuix/preference/PreferenceFragment$d;->e:I

    or-int/2addr v1, v10

    iput v1, v0, Lmiuix/preference/PreferenceFragment$d;->e:I

    :cond_8
    move-object v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p1

    move-object/from16 v3, p7

    move/from16 v4, p3

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lmiuix/preference/PreferenceFragment$c;->o(Landroidx/recyclerview/widget/RecyclerView;Landroidx/preference/Preference;Landroid/view/View;II)V

    iput-object v9, v6, Lmiuix/preference/PreferenceFragment$c;->o:Lmiuix/preference/PreferenceFragment$d;

    return v7
.end method

.method private q(Landroidx/recyclerview/widget/RecyclerView;Landroidx/preference/Preference;Landroid/view/View;II)V
    .locals 6
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p2}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lmiuix/preference/PreferenceFragment$c;->v:Lmiuix/preference/PreferenceFragment;

    invoke-static {v0}, Lmiuix/preference/PreferenceFragment;->access$500(Lmiuix/preference/PreferenceFragment;)Lmiuix/preference/i;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/preference/i;->F()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-direct {p0, p4}, Lmiuix/preference/PreferenceFragment$c;->u(I)Z

    move-result p2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move v3, p5

    invoke-direct/range {v0 .. v5}, Lmiuix/preference/PreferenceFragment$c;->v(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;IIZ)I

    move-result p4

    int-to-float p4, p4

    invoke-direct {p0, p1, p5}, Lmiuix/preference/PreferenceFragment$c;->x(Landroidx/recyclerview/widget/RecyclerView;I)Landroidx/preference/Preference;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/high16 p1, -0x40800000    # -1.0f

    cmpl-float p1, p4, p1

    if-eqz p2, :cond_2

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lmiuix/preference/PreferenceFragment$c;->o:Lmiuix/preference/PreferenceFragment$d;

    iget-object p1, p1, Lmiuix/preference/PreferenceFragment$d;->a:Landroid/graphics/RectF;

    iget p2, p0, Lmiuix/preference/PreferenceFragment$c;->n:I

    int-to-float p2, p2

    add-float/2addr p4, p2

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lmiuix/preference/PreferenceFragment$c;->o:Lmiuix/preference/PreferenceFragment$d;

    iget-object p1, p1, Lmiuix/preference/PreferenceFragment$d;->a:Landroid/graphics/RectF;

    :goto_0
    iput p4, p1, Landroid/graphics/RectF;->top:F

    goto :goto_2

    :cond_4
    :goto_1
    iget-object p1, p0, Lmiuix/preference/PreferenceFragment$c;->o:Lmiuix/preference/PreferenceFragment$d;

    iget-object p1, p1, Lmiuix/preference/PreferenceFragment$d;->a:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/view/View;->getY()F

    move-result p2

    iput p2, p1, Landroid/graphics/RectF;->top:F

    :goto_2
    iget-object p1, p0, Lmiuix/preference/PreferenceFragment$c;->o:Lmiuix/preference/PreferenceFragment$d;

    iget-object p1, p1, Lmiuix/preference/PreferenceFragment$d;->a:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p3}, Landroid/view/View;->getY()F

    move-result p2

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p4

    int-to-float p4, p4

    add-float/2addr p2, p4

    cmpg-float p1, p1, p2

    if-gez p1, :cond_6

    iget-object p1, p0, Lmiuix/preference/PreferenceFragment$c;->o:Lmiuix/preference/PreferenceFragment$d;

    iget-object p1, p1, Lmiuix/preference/PreferenceFragment$d;->a:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/view/View;->getY()F

    move-result p2

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    int-to-float p3, p3

    add-float/2addr p2, p3

    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    goto :goto_3

    :cond_5
    iget-object p1, p0, Lmiuix/preference/PreferenceFragment$c;->o:Lmiuix/preference/PreferenceFragment$d;

    iget-object p1, p1, Lmiuix/preference/PreferenceFragment$d;->a:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/view/View;->getY()F

    move-result p2

    iput p2, p1, Landroid/graphics/RectF;->top:F

    :cond_6
    :goto_3
    return-void
.end method

.method private r(Landroid/graphics/Rect;ILandroidx/preference/Preference;)V
    .locals 1
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lmiuix/preference/PreferenceFragment$c;->v:Lmiuix/preference/PreferenceFragment;

    invoke-static {v0}, Lmiuix/preference/PreferenceFragment;->access$500(Lmiuix/preference/PreferenceFragment;)Lmiuix/preference/i;

    move-result-object v0

    invoke-virtual {v0, p2}, Lmiuix/preference/i;->G(I)I

    move-result p2

    invoke-virtual {p3}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object p3

    instance-of p3, p3, Landroidx/preference/PreferenceScreen;

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    move p2, v0

    :cond_0
    if-eq p2, v0, :cond_1

    const/4 p3, 0x4

    if-ne p2, p3, :cond_2

    :cond_1
    iget p2, p1, Landroid/graphics/Rect;->bottom:I

    iget p3, p0, Lmiuix/preference/PreferenceFragment$c;->n:I

    add-int/2addr p2, p3

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    :cond_2
    return-void
.end method

.method private s(Landroidx/recyclerview/widget/RecyclerView;II)Z
    .locals 2

    const/4 v0, 0x1

    add-int/2addr p2, v0

    const/4 v1, 0x0

    if-ge p2, p3, :cond_1

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    iget-object p2, p0, Lmiuix/preference/PreferenceFragment$c;->v:Lmiuix/preference/PreferenceFragment;

    invoke-static {p2}, Lmiuix/preference/PreferenceFragment;->access$500(Lmiuix/preference/PreferenceFragment;)Lmiuix/preference/i;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/preference/c;->n(I)Landroidx/preference/Preference;

    move-result-object p1

    instance-of p1, p1, Lmiuix/preference/RadioSetPreferenceCategory;

    if-eqz p1, :cond_0

    return v1

    :cond_0
    return v0

    :cond_1
    return v1
.end method

.method private t(Landroidx/recyclerview/widget/RecyclerView;II)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lmiuix/preference/PreferenceFragment$c;->w(Landroidx/recyclerview/widget/RecyclerView;II)Landroidx/preference/Preference;

    move-result-object p1

    instance-of p1, p1, Landroidx/preference/PreferenceGroup;

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private u(I)Z
    .locals 1

    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lmiuix/preference/PreferenceFragment$c;->v:Lmiuix/preference/PreferenceFragment;

    invoke-static {v0}, Lmiuix/preference/PreferenceFragment;->access$500(Lmiuix/preference/PreferenceFragment;)Lmiuix/preference/i;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/preference/PreferenceFragment$c;->v:Lmiuix/preference/PreferenceFragment;

    invoke-static {v0}, Lmiuix/preference/PreferenceFragment;->access$500(Lmiuix/preference/PreferenceFragment;)Lmiuix/preference/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/preference/c;->n(I)Landroidx/preference/Preference;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    instance-of p1, p1, Landroidx/preference/PreferenceGroup;

    xor-int/lit8 p1, p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private v(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;IIZ)I
    .locals 1

    const/4 v0, -0x1

    if-eqz p5, :cond_3

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    iget p5, p0, Lmiuix/preference/PreferenceFragment$c;->q:I

    if-lt p2, p5, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    add-int/lit8 p3, p3, 0x1

    if-ge p3, p4, :cond_5

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result p1

    float-to-int p1, p1

    return p1

    :cond_1
    goto :goto_0

    :cond_2
    :goto_1
    return v0

    :cond_3
    add-int/lit8 p3, p3, -0x1

    :goto_2
    if-lt p3, p4, :cond_5

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    add-int/2addr p1, p2

    return p1

    :cond_4
    add-int/lit8 p3, p3, -0x1

    goto :goto_2

    :cond_5
    return v0
.end method

.method private w(Landroidx/recyclerview/widget/RecyclerView;II)Landroidx/preference/Preference;
    .locals 1

    add-int/lit8 p2, p2, 0x1

    const/4 v0, 0x0

    if-ge p2, p3, :cond_0

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    iget-object p2, p0, Lmiuix/preference/PreferenceFragment$c;->v:Lmiuix/preference/PreferenceFragment;

    invoke-static {p2}, Lmiuix/preference/PreferenceFragment;->access$500(Lmiuix/preference/PreferenceFragment;)Lmiuix/preference/i;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lmiuix/preference/PreferenceFragment$c;->v:Lmiuix/preference/PreferenceFragment;

    invoke-static {p2}, Lmiuix/preference/PreferenceFragment;->access$500(Lmiuix/preference/PreferenceFragment;)Lmiuix/preference/i;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/preference/c;->n(I)Landroidx/preference/Preference;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private x(Landroidx/recyclerview/widget/RecyclerView;I)Landroidx/preference/Preference;
    .locals 1

    add-int/lit8 p2, p2, -0x1

    const/4 v0, 0x0

    if-ltz p2, :cond_0

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    iget-object p2, p0, Lmiuix/preference/PreferenceFragment$c;->v:Lmiuix/preference/PreferenceFragment;

    invoke-static {p2}, Lmiuix/preference/PreferenceFragment;->access$500(Lmiuix/preference/PreferenceFragment;)Lmiuix/preference/i;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lmiuix/preference/PreferenceFragment$c;->v:Lmiuix/preference/PreferenceFragment;

    invoke-static {p2}, Lmiuix/preference/PreferenceFragment;->access$500(Lmiuix/preference/PreferenceFragment;)Lmiuix/preference/i;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/preference/c;->n(I)Landroidx/preference/Preference;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private z(Landroidx/preference/Preference;)Z
    .locals 2

    iget-object v0, p0, Lmiuix/preference/PreferenceFragment$c;->v:Lmiuix/preference/PreferenceFragment;

    invoke-static {v0}, Lmiuix/preference/PreferenceFragment;->access$1000(Lmiuix/preference/PreferenceFragment;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v0, p1, Landroidx/preference/PreferenceGroup;

    if-eqz v0, :cond_1

    return v1

    :cond_1
    instance-of v0, p1, Lmiuix/preference/j;

    if-eqz v0, :cond_2

    check-cast p1, Lmiuix/preference/j;

    invoke-interface {p1}, Lmiuix/preference/j;->c()Z

    move-result p1

    return p1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public B()V
    .locals 3

    iget-object v0, p0, Lmiuix/preference/PreferenceFragment$c;->v:Lmiuix/preference/PreferenceFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lmiuix/appcompat/app/AppCompatActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/preference/PreferenceFragment$c;->v:Lmiuix/preference/PreferenceFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->isInFloatingWindowMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ldm/a;->a:Landroid/graphics/Paint;

    iget-object v1, p0, Lmiuix/preference/PreferenceFragment$c;->v:Lmiuix/preference/PreferenceFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lmiuix/preference/k;->v:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ldm/a;->a:Landroid/graphics/Paint;

    iget-object v1, p0, Lmiuix/preference/PreferenceFragment$c;->v:Lmiuix/preference/PreferenceFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lmiuix/preference/k;->t:I

    :goto_0
    invoke-static {v1, v2}, Lpl/d;->e(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public C(I)V
    .locals 0

    iput p1, p0, Lmiuix/preference/PreferenceFragment$c;->q:I

    return-void
.end method

.method public f(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$z;Landroidx/recyclerview/widget/RecyclerView$h;)V
    .locals 21
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

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    iget-object v0, v8, Lmiuix/preference/PreferenceFragment$c;->v:Lmiuix/preference/PreferenceFragment;

    invoke-static {v0}, Lmiuix/preference/PreferenceFragment;->access$1100(Lmiuix/preference/PreferenceFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v8, Lmiuix/preference/PreferenceFragment$c;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    invoke-static/range {p2 .. p2}, Landroidx/appcompat/widget/n1;->b(Landroid/view/View;)Z

    move-result v0

    iput-boolean v0, v8, Lmiuix/preference/PreferenceFragment$c;->i:Z

    if-eqz v0, :cond_1

    iget v0, v8, Ldm/a;->e:I

    iget-object v1, v8, Lmiuix/preference/PreferenceFragment$c;->v:Lmiuix/preference/PreferenceFragment;

    invoke-static {v1}, Lmiuix/preference/PreferenceFragment;->access$1200(Lmiuix/preference/PreferenceFragment;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v1

    iget v2, v8, Ldm/a;->d:I

    goto :goto_0

    :cond_1
    iget v0, v8, Ldm/a;->d:I

    iget-object v1, v8, Lmiuix/preference/PreferenceFragment$c;->v:Lmiuix/preference/PreferenceFragment;

    invoke-static {v1}, Lmiuix/preference/PreferenceFragment;->access$1200(Lmiuix/preference/PreferenceFragment;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v1

    iget v2, v8, Ldm/a;->e:I

    :goto_0
    sub-int/2addr v1, v2

    iget-object v2, v8, Lmiuix/preference/PreferenceFragment$c;->v:Lmiuix/preference/PreferenceFragment;

    invoke-static {v2}, Lmiuix/preference/PreferenceFragment;->access$1200(Lmiuix/preference/PreferenceFragment;)I

    move-result v2

    sub-int/2addr v1, v2

    move v12, v0

    move v13, v1

    const/4 v7, 0x0

    const/4 v15, 0x0

    :goto_1
    const/4 v3, 0x1

    if-ge v15, v11, :cond_14

    invoke-virtual {v10, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    iget-object v0, v8, Lmiuix/preference/PreferenceFragment$c;->v:Lmiuix/preference/PreferenceFragment;

    invoke-static {v0}, Lmiuix/preference/PreferenceFragment;->access$500(Lmiuix/preference/PreferenceFragment;)Lmiuix/preference/i;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/preference/c;->n(I)Landroidx/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_2
    move/from16 v19, v7

    goto :goto_4

    :cond_3
    iget-object v4, v8, Lmiuix/preference/PreferenceFragment$c;->v:Lmiuix/preference/PreferenceFragment;

    invoke-static {v4}, Lmiuix/preference/PreferenceFragment;->access$500(Lmiuix/preference/PreferenceFragment;)Lmiuix/preference/i;

    move-result-object v4

    invoke-virtual {v4, v1}, Lmiuix/preference/i;->G(I)I

    move-result v4

    iget-object v14, v8, Lmiuix/preference/PreferenceFragment$c;->p:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v6, 0x0

    if-ge v7, v14, :cond_4

    iget-object v14, v8, Lmiuix/preference/PreferenceFragment$c;->o:Lmiuix/preference/PreferenceFragment$d;

    if-nez v14, :cond_5

    iget-object v14, v8, Lmiuix/preference/PreferenceFragment$c;->p:Ljava/util/ArrayList;

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lmiuix/preference/PreferenceFragment$d;

    iput-object v14, v8, Lmiuix/preference/PreferenceFragment$c;->o:Lmiuix/preference/PreferenceFragment$d;

    goto :goto_2

    :cond_4
    new-instance v14, Lmiuix/preference/PreferenceFragment$d;

    iget-object v5, v8, Lmiuix/preference/PreferenceFragment$c;->v:Lmiuix/preference/PreferenceFragment;

    invoke-direct {v14, v5, v6}, Lmiuix/preference/PreferenceFragment$d;-><init>(Lmiuix/preference/PreferenceFragment;Lmiuix/preference/PreferenceFragment$a;)V

    iput-object v14, v8, Lmiuix/preference/PreferenceFragment$c;->o:Lmiuix/preference/PreferenceFragment$d;

    iget-object v5, v8, Lmiuix/preference/PreferenceFragment$c;->p:Ljava/util/ArrayList;

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_2
    instance-of v14, v0, Lmiuix/preference/RadioButtonPreference;

    if-nez v14, :cond_8

    invoke-virtual {v0}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v5

    instance-of v5, v5, Lmiuix/preference/RadioSetPreferenceCategory;

    if-eqz v5, :cond_6

    goto :goto_5

    :cond_6
    invoke-direct {v8, v0}, Lmiuix/preference/PreferenceFragment$c;->z(Landroidx/preference/Preference;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v5, v0

    move-object/from16 v0, p0

    move/from16 v17, v1

    move-object v1, v5

    move-object/from16 v18, v2

    move v2, v4

    move v3, v15

    move-object/from16 v4, p2

    move v5, v11

    move/from16 v6, v17

    move/from16 v19, v7

    move-object/from16 v7, v18

    invoke-direct/range {v0 .. v7}, Lmiuix/preference/PreferenceFragment$c;->p(Landroidx/preference/Preference;IILandroidx/recyclerview/widget/RecyclerView;IILandroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_3
    add-int/lit8 v7, v19, 0x1

    goto/16 :goto_b

    :cond_7
    :goto_4
    move/from16 v7, v19

    goto/16 :goto_b

    :cond_8
    :goto_5
    move-object v5, v0

    move/from16 v17, v1

    move-object/from16 v18, v2

    move/from16 v19, v7

    invoke-virtual {v5}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v0

    instance-of v0, v0, Lmiuix/preference/RadioSetPreferenceCategory;

    if-eqz v0, :cond_9

    invoke-virtual {v5}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v0

    check-cast v0, Lmiuix/preference/RadioSetPreferenceCategory;

    move-object v7, v0

    goto :goto_6

    :cond_9
    move-object v7, v6

    :goto_6
    const/4 v2, 0x2

    if-eq v4, v3, :cond_a

    if-ne v4, v2, :cond_b

    :cond_a
    iget-object v0, v8, Lmiuix/preference/PreferenceFragment$c;->o:Lmiuix/preference/PreferenceFragment$d;

    iget v1, v0, Lmiuix/preference/PreferenceFragment$d;->e:I

    or-int/2addr v1, v3

    iput v1, v0, Lmiuix/preference/PreferenceFragment$d;->e:I

    iput-boolean v3, v0, Lmiuix/preference/PreferenceFragment$d;->d:Z

    invoke-static {v0, v3}, Lmiuix/preference/PreferenceFragment$d;->b(Lmiuix/preference/PreferenceFragment$d;Z)Z

    invoke-virtual {v5}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v0

    if-eqz v0, :cond_b

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v16, v2

    move-object v2, v5

    move v6, v3

    move-object/from16 v3, v18

    move v6, v4

    const/4 v9, 0x4

    move/from16 v4, v17

    move-object/from16 v20, v5

    move v5, v15

    invoke-direct/range {v0 .. v5}, Lmiuix/preference/PreferenceFragment$c;->q(Landroidx/recyclerview/widget/RecyclerView;Landroidx/preference/Preference;Landroid/view/View;II)V

    goto :goto_7

    :cond_b
    move/from16 v16, v2

    move v6, v4

    move-object/from16 v20, v5

    const/4 v9, 0x4

    :goto_7
    if-eq v6, v9, :cond_c

    const/4 v0, 0x3

    if-ne v6, v0, :cond_d

    :cond_c
    iget-object v0, v8, Lmiuix/preference/PreferenceFragment$c;->o:Lmiuix/preference/PreferenceFragment$d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmiuix/preference/PreferenceFragment$d;->b(Lmiuix/preference/PreferenceFragment$d;Z)Z

    iget-object v0, v8, Lmiuix/preference/PreferenceFragment$c;->o:Lmiuix/preference/PreferenceFragment$d;

    iget v1, v0, Lmiuix/preference/PreferenceFragment$d;->e:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Lmiuix/preference/PreferenceFragment$d;->e:I

    iget-object v0, v0, Lmiuix/preference/PreferenceFragment$d;->a:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getY()F

    move-result v1

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_d

    iget-object v0, v8, Lmiuix/preference/PreferenceFragment$c;->o:Lmiuix/preference/PreferenceFragment$d;

    iget-object v0, v0, Lmiuix/preference/PreferenceFragment$d;->a:Landroid/graphics/RectF;

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getY()F

    move-result v1

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    :cond_d
    if-eqz v7, :cond_e

    invoke-virtual {v7}, Lmiuix/preference/RadioSetPreferenceCategory;->e()Lmiuix/preference/RadioButtonPreference;

    move-result-object v0

    move-object/from16 v2, v20

    if-ne v0, v2, :cond_f

    iget-object v0, v8, Lmiuix/preference/PreferenceFragment$c;->o:Lmiuix/preference/PreferenceFragment$d;

    if-eqz v0, :cond_f

    iput v15, v0, Lmiuix/preference/PreferenceFragment$d;->b:I

    goto :goto_8

    :cond_e
    move-object/from16 v2, v20

    :cond_f
    :goto_8
    iget-object v0, v8, Lmiuix/preference/PreferenceFragment$c;->o:Lmiuix/preference/PreferenceFragment$d;

    if-eqz v0, :cond_12

    invoke-virtual {v2}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v0

    instance-of v0, v0, Lmiuix/preference/RadioSetPreferenceCategory;

    if-eqz v0, :cond_11

    iget-object v0, v8, Lmiuix/preference/PreferenceFragment$c;->o:Lmiuix/preference/PreferenceFragment$d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiuix/preference/PreferenceFragment$d;->d(Lmiuix/preference/PreferenceFragment$d;Z)Z

    invoke-virtual {v2}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v0

    check-cast v0, Lmiuix/preference/RadioSetPreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v1, :cond_12

    invoke-virtual {v0, v3}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v4

    instance-of v5, v4, Lmiuix/preference/RadioButtonPreference;

    if-eqz v5, :cond_10

    check-cast v4, Lmiuix/preference/RadioButtonPreference;

    invoke-virtual {v4}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_10

    iget-object v0, v8, Lmiuix/preference/PreferenceFragment$c;->o:Lmiuix/preference/PreferenceFragment$d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmiuix/preference/PreferenceFragment$d;->d(Lmiuix/preference/PreferenceFragment$d;Z)Z

    goto :goto_a

    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_11
    if-eqz v14, :cond_12

    move-object v0, v2

    check-cast v0, Lmiuix/preference/RadioButtonPreference;

    iget-object v1, v8, Lmiuix/preference/PreferenceFragment$c;->o:Lmiuix/preference/PreferenceFragment$d;

    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    invoke-static {v1, v0}, Lmiuix/preference/PreferenceFragment$d;->d(Lmiuix/preference/PreferenceFragment$d;Z)Z

    :cond_12
    :goto_a
    const/4 v0, 0x1

    if-eq v6, v0, :cond_13

    if-ne v6, v9, :cond_7

    :cond_13
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v3, v18

    move v4, v15

    move v5, v11

    invoke-direct/range {v0 .. v5}, Lmiuix/preference/PreferenceFragment$c;->o(Landroidx/recyclerview/widget/RecyclerView;Landroidx/preference/Preference;Landroid/view/View;II)V

    iget-object v0, v8, Lmiuix/preference/PreferenceFragment$c;->o:Lmiuix/preference/PreferenceFragment$d;

    invoke-direct {v8, v10, v15, v11}, Lmiuix/preference/PreferenceFragment$c;->s(Landroidx/recyclerview/widget/RecyclerView;II)Z

    move-result v1

    iput-boolean v1, v0, Lmiuix/preference/PreferenceFragment$d;->c:Z

    iget-object v0, v8, Lmiuix/preference/PreferenceFragment$c;->o:Lmiuix/preference/PreferenceFragment$d;

    iget v1, v0, Lmiuix/preference/PreferenceFragment$d;->e:I

    or-int/2addr v1, v9

    iput v1, v0, Lmiuix/preference/PreferenceFragment$d;->e:I

    const/4 v0, 0x0

    iput-object v0, v8, Lmiuix/preference/PreferenceFragment$c;->o:Lmiuix/preference/PreferenceFragment$d;

    goto/16 :goto_3

    :goto_b
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v9, p1

    goto/16 :goto_1

    :cond_14
    const/4 v9, 0x4

    const/16 v16, 0x2

    const/4 v1, 0x0

    :goto_c
    iget-object v0, v8, Lmiuix/preference/PreferenceFragment$c;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1e

    iget-object v0, v8, Lmiuix/preference/PreferenceFragment$c;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/preference/PreferenceFragment$d;

    iget-object v2, v0, Lmiuix/preference/PreferenceFragment$d;->a:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    int-to-float v5, v12

    int-to-float v6, v13

    invoke-virtual {v4, v5, v3, v6, v2}, Landroid/graphics/RectF;->set(FFFF)V

    sub-float/2addr v2, v3

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_15

    move-object/from16 v3, p1

    move v5, v9

    const/4 v6, 0x3

    goto/16 :goto_12

    :cond_15
    iget v2, v0, Lmiuix/preference/PreferenceFragment$d;->e:I

    and-int/lit8 v5, v2, 0x1

    if-eqz v5, :cond_16

    const/4 v5, 0x1

    goto :goto_d

    :cond_16
    const/4 v5, 0x0

    :goto_d
    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_17

    const/4 v2, 0x1

    goto :goto_e

    :cond_17
    const/4 v2, 0x0

    :goto_e
    if-eqz v5, :cond_18

    iget v5, v8, Ldm/a;->c:I

    int-to-float v5, v5

    goto :goto_f

    :cond_18
    move v5, v3

    :goto_f
    if-eqz v2, :cond_19

    iget v2, v8, Ldm/a;->c:I

    int-to-float v3, v2

    :cond_19
    const/16 v2, 0x8

    new-array v2, v2, [F

    const/4 v6, 0x0

    aput v5, v2, v6

    const/4 v6, 0x1

    aput v5, v2, v6

    aput v5, v2, v16

    const/4 v6, 0x3

    aput v5, v2, v6

    aput v3, v2, v9

    const/4 v5, 0x5

    aput v3, v2, v5

    const/4 v5, 0x6

    aput v3, v2, v5

    const/4 v5, 0x7

    aput v3, v2, v5

    iget-object v3, v8, Ldm/a;->b:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    iget-object v3, v8, Ldm/a;->b:Landroid/graphics/Path;

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v4, v2, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    invoke-static {v0}, Lmiuix/preference/PreferenceFragment$d;->a(Lmiuix/preference/PreferenceFragment$d;)Z

    move-result v2

    if-eqz v2, :cond_1b

    iget-object v2, v8, Lmiuix/preference/PreferenceFragment$c;->v:Lmiuix/preference/PreferenceFragment;

    invoke-static {v2}, Lmiuix/preference/PreferenceFragment;->access$1000(Lmiuix/preference/PreferenceFragment;)Z

    move-result v2

    if-nez v2, :cond_1b

    iget-object v2, v8, Ldm/a;->a:Landroid/graphics/Paint;

    invoke-static {v0}, Lmiuix/preference/PreferenceFragment$d;->c(Lmiuix/preference/PreferenceFragment$d;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget v0, v8, Lmiuix/preference/PreferenceFragment$c;->s:I

    goto :goto_10

    :cond_1a
    iget v0, v8, Lmiuix/preference/PreferenceFragment$c;->t:I

    :goto_10
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, v8, Ldm/a;->b:Landroid/graphics/Path;

    iget-object v2, v8, Ldm/a;->a:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    move v5, v9

    goto :goto_11

    :cond_1b
    move-object/from16 v3, p1

    move v5, v9

    iget-object v0, v8, Lmiuix/preference/PreferenceFragment$c;->r:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1d

    instance-of v2, v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v2, :cond_1c

    iget-object v2, v8, Ldm/a;->a:Landroid/graphics/Paint;

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, v8, Ldm/a;->b:Landroid/graphics/Path;

    iget-object v2, v8, Ldm/a;->a:Landroid/graphics/Paint;

    :goto_11
    invoke-virtual {v3, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_12

    :cond_1c
    iget-object v2, v8, Ldm/a;->b:Landroid/graphics/Path;

    invoke-virtual {v8, v3, v4, v2, v0}, Ldm/a;->g(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Path;Landroid/graphics/drawable/Drawable;)V

    :cond_1d
    :goto_12
    add-int/lit8 v1, v1, 0x1

    move v9, v5

    goto/16 :goto_c

    :cond_1e
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    if-nez v0, :cond_1f

    return-void

    :cond_1f
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->p()Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    :goto_13
    iput-boolean v0, v8, Lmiuix/preference/PreferenceFragment$c;->u:Z

    goto :goto_14

    :cond_20
    iget-boolean v0, v8, Lmiuix/preference/PreferenceFragment$c;->u:Z

    if-eqz v0, :cond_21

    iget-object v0, v8, Lmiuix/preference/PreferenceFragment$c;->v:Lmiuix/preference/PreferenceFragment;

    invoke-static {v0}, Lmiuix/preference/PreferenceFragment;->access$500(Lmiuix/preference/PreferenceFragment;)Lmiuix/preference/i;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/preference/i;->D()V

    :cond_21
    const/4 v0, 0x0

    goto :goto_13

    :goto_14
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

    iget-object p4, p0, Lmiuix/preference/PreferenceFragment$c;->v:Lmiuix/preference/PreferenceFragment;

    invoke-static {p4}, Lmiuix/preference/PreferenceFragment;->access$1100(Lmiuix/preference/PreferenceFragment;)Z

    move-result p4

    if-eqz p4, :cond_0

    return-void

    :cond_0
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    iget-object p4, p0, Lmiuix/preference/PreferenceFragment$c;->v:Lmiuix/preference/PreferenceFragment;

    invoke-static {p4}, Lmiuix/preference/PreferenceFragment;->access$500(Lmiuix/preference/PreferenceFragment;)Lmiuix/preference/i;

    move-result-object p4

    invoke-virtual {p4, p2}, Landroidx/preference/c;->n(I)Landroidx/preference/Preference;

    move-result-object p4

    if-nez p4, :cond_1

    return-void

    :cond_1
    invoke-virtual {p4}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v0

    instance-of v0, v0, Lmiuix/preference/RadioSetPreferenceCategory;

    if-nez v0, :cond_6

    instance-of v0, p4, Landroidx/preference/PreferenceGroup;

    if-nez v0, :cond_2

    invoke-virtual {p4}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v0

    instance-of v0, v0, Lmiuix/preference/RadioButtonPreferenceCategory;

    if-nez v0, :cond_6

    :cond_2
    instance-of v0, p4, Lmiuix/preference/RadioButtonPreference;

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-direct {p0, p4}, Lmiuix/preference/PreferenceFragment$c;->z(Landroidx/preference/Preference;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p1, p4, p2, p3}, Lmiuix/preference/PreferenceFragment$c;->A(Landroid/graphics/Rect;Landroidx/preference/Preference;ILandroidx/recyclerview/widget/RecyclerView;)V

    :cond_4
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$h;

    move-result-object p4

    if-eqz p4, :cond_5

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$h;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$h;->getItemCount()I

    move-result p3

    add-int/lit8 p2, p2, 0x1

    if-ne p3, p2, :cond_5

    const/4 p2, 0x0

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    :cond_5
    return-void

    :cond_6
    :goto_0
    invoke-direct {p0, p1, p4, p2, p3}, Lmiuix/preference/PreferenceFragment$c;->A(Landroid/graphics/Rect;Landroidx/preference/Preference;ILandroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public y(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/preference/m;->c:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lmiuix/preference/PreferenceFragment$c;->j:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/preference/m;->b:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lmiuix/preference/PreferenceFragment$c;->k:I

    sget v0, Lmiuix/preference/k;->r:I

    invoke-static {p1, v0}, Lpl/d;->g(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lmiuix/preference/PreferenceFragment$c;->l:I

    sget v0, Lmiuix/preference/k;->s:I

    invoke-static {p1, v0}, Lpl/d;->g(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lmiuix/preference/PreferenceFragment$c;->m:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/preference/m;->j:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Ldm/a;->c:I

    sget v0, Lmiuix/preference/k;->k:I

    invoke-static {p1, v0}, Lpl/d;->g(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Ldm/a;->d:I

    sget v0, Lmiuix/preference/k;->j:I

    invoke-static {p1, v0}, Lpl/d;->g(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Ldm/a;->e:I

    sget v0, Lmiuix/preference/k;->a:I

    invoke-static {p1, v0}, Lpl/d;->e(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lmiuix/preference/PreferenceFragment$c;->s:I

    sget v0, Lmiuix/preference/k;->b:I

    invoke-static {p1, v0}, Lpl/d;->e(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lmiuix/preference/PreferenceFragment$c;->t:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/preference/m;->a:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lmiuix/preference/PreferenceFragment$c;->n:I

    iget-object v0, p0, Lmiuix/preference/PreferenceFragment$c;->v:Lmiuix/preference/PreferenceFragment;

    invoke-static {v0}, Lmiuix/preference/PreferenceFragment;->access$1000(Lmiuix/preference/PreferenceFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lmiuix/preference/k;->i:I

    invoke-static {p1, v0}, Lpl/d;->h(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lmiuix/preference/PreferenceFragment$c;->r:Landroid/graphics/drawable/Drawable;

    instance-of v0, p1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldm/a;->a:Landroid/graphics/Paint;

    check-cast p1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-void
.end method

.class Landroidx/constraintlayout/motion/widget/s;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final G:[[F

.field private static final H:[[F


# instance fields
.field private A:F

.field private B:F

.field private C:F

.field private D:F

.field private E:I

.field private F:I

.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:F

.field private h:F

.field i:F

.field j:F

.field private k:I

.field l:Z

.field private m:F

.field private n:F

.field private o:Z

.field private p:[F

.field private q:[I

.field private r:F

.field private s:F

.field private final t:Landroidx/constraintlayout/motion/widget/p;

.field private u:F

.field private v:F

.field private w:Z

.field private x:F

.field private y:I

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v0, 0x7

    new-array v0, v0, [[F

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_1

    const/4 v4, 0x1

    aput-object v2, v0, v4

    new-array v2, v1, [F

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    new-array v2, v1, [F

    fill-array-data v2, :array_3

    const/4 v5, 0x3

    aput-object v2, v0, v5

    new-array v2, v1, [F

    fill-array-data v2, :array_4

    const/4 v6, 0x4

    aput-object v2, v0, v6

    new-array v2, v1, [F

    fill-array-data v2, :array_5

    const/4 v7, 0x5

    aput-object v2, v0, v7

    new-array v2, v1, [F

    fill-array-data v2, :array_6

    const/4 v8, 0x6

    aput-object v2, v0, v8

    sput-object v0, Landroidx/constraintlayout/motion/widget/s;->G:[[F

    new-array v0, v8, [[F

    new-array v2, v1, [F

    fill-array-data v2, :array_7

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_8

    aput-object v2, v0, v4

    new-array v2, v1, [F

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    new-array v2, v1, [F

    fill-array-data v2, :array_a

    aput-object v2, v0, v5

    new-array v2, v1, [F

    fill-array-data v2, :array_b

    aput-object v2, v0, v6

    new-array v1, v1, [F

    fill-array-data v1, :array_c

    aput-object v1, v0, v7

    sput-object v0, Landroidx/constraintlayout/motion/widget/s;->H:[[F

    return-void

    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f000000    # 0.5f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    :array_3
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x3f000000    # 0.5f
    .end array-data

    :array_6
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    :array_7
    .array-data 4
        0x0
        -0x40800000    # -1.0f
    .end array-data

    :array_8
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_9
    .array-data 4
        -0x40800000    # -1.0f
        0x0
    .end array-data

    :array_a
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_b
    .array-data 4
        -0x40800000    # -1.0f
        0x0
    .end array-data

    :array_c
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;Landroidx/constraintlayout/motion/widget/p;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/s;->a:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/s;->b:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/s;->c:I

    const/4 v1, -0x1

    iput v1, p0, Landroidx/constraintlayout/motion/widget/s;->d:I

    iput v1, p0, Landroidx/constraintlayout/motion/widget/s;->e:I

    iput v1, p0, Landroidx/constraintlayout/motion/widget/s;->f:I

    const/high16 v2, 0x3f000000    # 0.5f

    iput v2, p0, Landroidx/constraintlayout/motion/widget/s;->g:F

    iput v2, p0, Landroidx/constraintlayout/motion/widget/s;->h:F

    iput v2, p0, Landroidx/constraintlayout/motion/widget/s;->i:F

    iput v2, p0, Landroidx/constraintlayout/motion/widget/s;->j:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/s;->k:I

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/s;->l:Z

    const/4 v1, 0x0

    iput v1, p0, Landroidx/constraintlayout/motion/widget/s;->m:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroidx/constraintlayout/motion/widget/s;->n:F

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/s;->o:Z

    const/4 v2, 0x2

    new-array v3, v2, [F

    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/s;->p:[F

    new-array v2, v2, [I

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/s;->q:[I

    const/high16 v2, 0x40800000    # 4.0f

    iput v2, p0, Landroidx/constraintlayout/motion/widget/s;->u:F

    const v2, 0x3f99999a    # 1.2f

    iput v2, p0, Landroidx/constraintlayout/motion/widget/s;->v:F

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/s;->w:Z

    iput v1, p0, Landroidx/constraintlayout/motion/widget/s;->x:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/s;->y:I

    const/high16 v2, 0x41200000    # 10.0f

    iput v2, p0, Landroidx/constraintlayout/motion/widget/s;->z:F

    iput v2, p0, Landroidx/constraintlayout/motion/widget/s;->A:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/s;->B:F

    const/high16 v1, 0x7fc00000    # Float.NaN

    iput v1, p0, Landroidx/constraintlayout/motion/widget/s;->C:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/s;->D:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/s;->E:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/s;->F:I

    iput-object p2, p0, Landroidx/constraintlayout/motion/widget/s;->t:Landroidx/constraintlayout/motion/widget/p;

    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/motion/widget/s;->c(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private b(Landroid/content/res/TypedArray;)V
    .locals 7

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_14

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    sget v4, Landroidx/constraintlayout/widget/j;->v9:I

    if-ne v3, v4, :cond_0

    iget v4, p0, Landroidx/constraintlayout/motion/widget/s;->d:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/s;->d:I

    goto/16 :goto_1

    :cond_0
    sget v4, Landroidx/constraintlayout/widget/j;->w9:I

    const/4 v5, 0x1

    if-ne v3, v4, :cond_1

    iget v4, p0, Landroidx/constraintlayout/motion/widget/s;->a:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/s;->a:I

    sget-object v4, Landroidx/constraintlayout/motion/widget/s;->G:[[F

    aget-object v3, v4, v3

    aget v4, v3, v1

    iput v4, p0, Landroidx/constraintlayout/motion/widget/s;->h:F

    aget v3, v3, v5

    iput v3, p0, Landroidx/constraintlayout/motion/widget/s;->g:F

    goto/16 :goto_1

    :cond_1
    sget v4, Landroidx/constraintlayout/widget/j;->g9:I

    if-ne v3, v4, :cond_3

    iget v4, p0, Landroidx/constraintlayout/motion/widget/s;->b:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/s;->b:I

    sget-object v4, Landroidx/constraintlayout/motion/widget/s;->H:[[F

    array-length v6, v4

    if-ge v3, v6, :cond_2

    aget-object v3, v4, v3

    aget v4, v3, v1

    iput v4, p0, Landroidx/constraintlayout/motion/widget/s;->m:F

    aget v3, v3, v5

    iput v3, p0, Landroidx/constraintlayout/motion/widget/s;->n:F

    goto/16 :goto_1

    :cond_2
    const/high16 v3, 0x7fc00000    # Float.NaN

    iput v3, p0, Landroidx/constraintlayout/motion/widget/s;->n:F

    iput v3, p0, Landroidx/constraintlayout/motion/widget/s;->m:F

    iput-boolean v5, p0, Landroidx/constraintlayout/motion/widget/s;->l:Z

    goto/16 :goto_1

    :cond_3
    sget v4, Landroidx/constraintlayout/widget/j;->l9:I

    if-ne v3, v4, :cond_4

    iget v4, p0, Landroidx/constraintlayout/motion/widget/s;->u:F

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/s;->u:F

    goto/16 :goto_1

    :cond_4
    sget v4, Landroidx/constraintlayout/widget/j;->k9:I

    if-ne v3, v4, :cond_5

    iget v4, p0, Landroidx/constraintlayout/motion/widget/s;->v:F

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/s;->v:F

    goto/16 :goto_1

    :cond_5
    sget v4, Landroidx/constraintlayout/widget/j;->m9:I

    if-ne v3, v4, :cond_6

    iget-boolean v4, p0, Landroidx/constraintlayout/motion/widget/s;->w:Z

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Landroidx/constraintlayout/motion/widget/s;->w:Z

    goto/16 :goto_1

    :cond_6
    sget v4, Landroidx/constraintlayout/widget/j;->h9:I

    if-ne v3, v4, :cond_7

    iget v4, p0, Landroidx/constraintlayout/motion/widget/s;->x:F

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/s;->x:F

    goto/16 :goto_1

    :cond_7
    sget v4, Landroidx/constraintlayout/widget/j;->i9:I

    if-ne v3, v4, :cond_8

    iget v4, p0, Landroidx/constraintlayout/motion/widget/s;->z:F

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/s;->z:F

    goto/16 :goto_1

    :cond_8
    sget v4, Landroidx/constraintlayout/widget/j;->x9:I

    if-ne v3, v4, :cond_9

    iget v4, p0, Landroidx/constraintlayout/motion/widget/s;->e:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/s;->e:I

    goto/16 :goto_1

    :cond_9
    sget v4, Landroidx/constraintlayout/widget/j;->o9:I

    if-ne v3, v4, :cond_a

    iget v4, p0, Landroidx/constraintlayout/motion/widget/s;->c:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/s;->c:I

    goto/16 :goto_1

    :cond_a
    sget v4, Landroidx/constraintlayout/widget/j;->n9:I

    if-ne v3, v4, :cond_b

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/s;->y:I

    goto :goto_1

    :cond_b
    sget v4, Landroidx/constraintlayout/widget/j;->j9:I

    if-ne v3, v4, :cond_c

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/s;->f:I

    goto :goto_1

    :cond_c
    sget v4, Landroidx/constraintlayout/widget/j;->p9:I

    if-ne v3, v4, :cond_d

    iget v4, p0, Landroidx/constraintlayout/motion/widget/s;->k:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/s;->k:I

    goto :goto_1

    :cond_d
    sget v4, Landroidx/constraintlayout/widget/j;->r9:I

    if-ne v3, v4, :cond_e

    iget v4, p0, Landroidx/constraintlayout/motion/widget/s;->A:F

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/s;->A:F

    goto :goto_1

    :cond_e
    sget v4, Landroidx/constraintlayout/widget/j;->s9:I

    if-ne v3, v4, :cond_f

    iget v4, p0, Landroidx/constraintlayout/motion/widget/s;->B:F

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/s;->B:F

    goto :goto_1

    :cond_f
    sget v4, Landroidx/constraintlayout/widget/j;->t9:I

    if-ne v3, v4, :cond_10

    iget v4, p0, Landroidx/constraintlayout/motion/widget/s;->C:F

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/s;->C:F

    goto :goto_1

    :cond_10
    sget v4, Landroidx/constraintlayout/widget/j;->u9:I

    if-ne v3, v4, :cond_11

    iget v4, p0, Landroidx/constraintlayout/motion/widget/s;->D:F

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/s;->D:F

    goto :goto_1

    :cond_11
    sget v4, Landroidx/constraintlayout/widget/j;->q9:I

    if-ne v3, v4, :cond_12

    iget v4, p0, Landroidx/constraintlayout/motion/widget/s;->E:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/s;->E:I

    goto :goto_1

    :cond_12
    sget v4, Landroidx/constraintlayout/widget/j;->f9:I

    if-ne v3, v4, :cond_13

    iget v4, p0, Landroidx/constraintlayout/motion/widget/s;->F:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/s;->F:I

    :cond_13
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_14
    return-void
.end method

.method private c(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget-object v0, Landroidx/constraintlayout/widget/j;->e9:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/constraintlayout/motion/widget/s;->b(Landroid/content/res/TypedArray;)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method a(FF)F
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/s;->m:F

    mul-float/2addr p1, v0

    iget v0, p0, Landroidx/constraintlayout/motion/widget/s;->n:F

    mul-float/2addr p2, v0

    add-float/2addr p1, p2

    return p1
.end method

.method public d()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/s;->F:I

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/s;->y:I

    return v0
.end method

.method f(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 3

    iget v0, p0, Landroidx/constraintlayout/motion/widget/s;->f:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2, v0, v1, v2, p1}, Landroid/graphics/RectF;->set(FFFF)V

    return-object p2
.end method

.method g()F
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/s;->v:F

    return v0
.end method

.method public h()F
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/s;->u:F

    return v0
.end method

.method i()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/s;->w:Z

    return v0
.end method

.method j(FF)F
    .locals 7

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/s;->t:Landroidx/constraintlayout/motion/widget/p;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/p;->getProgress()F

    move-result v3

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/s;->t:Landroidx/constraintlayout/motion/widget/p;

    iget v2, p0, Landroidx/constraintlayout/motion/widget/s;->d:I

    iget v4, p0, Landroidx/constraintlayout/motion/widget/s;->h:F

    iget v5, p0, Landroidx/constraintlayout/motion/widget/s;->g:F

    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/s;->p:[F

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/motion/widget/p;->q(IFFF[F)V

    iget v0, p0, Landroidx/constraintlayout/motion/widget/s;->m:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    const v3, 0x33d6bf95    # 1.0E-7f

    if-eqz v2, :cond_1

    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/s;->p:[F

    const/4 v2, 0x0

    aget v4, p2, v2

    cmpl-float v1, v4, v1

    if-nez v1, :cond_0

    aput v3, p2, v2

    :cond_0
    mul-float/2addr p1, v0

    aget p2, p2, v2

    div-float/2addr p1, p2

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/s;->p:[F

    const/4 v0, 0x1

    aget v2, p1, v0

    cmpl-float v1, v2, v1

    if-nez v1, :cond_2

    aput v3, p1, v0

    :cond_2
    iget v1, p0, Landroidx/constraintlayout/motion/widget/s;->n:F

    mul-float/2addr p2, v1

    aget p1, p1, v0

    div-float p1, p2, p1

    :goto_0
    return p1
.end method

.method public k()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/s;->E:I

    return v0
.end method

.method public l()F
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/s;->A:F

    return v0
.end method

.method public m()F
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/s;->B:F

    return v0
.end method

.method public n()F
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/s;->C:F

    return v0
.end method

.method public o()F
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/s;->D:F

    return v0
.end method

.method p(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 3

    iget v0, p0, Landroidx/constraintlayout/motion/widget/s;->e:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2, v0, v1, v2, p1}, Landroid/graphics/RectF;->set(FFFF)V

    return-object p2
.end method

.method q()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/s;->e:I

    return v0
.end method

.method r()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/s;->o:Z

    return v0
.end method

.method s(Landroid/view/MotionEvent;Landroidx/constraintlayout/motion/widget/p$f;ILandroidx/constraintlayout/motion/widget/r;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-boolean v2, v0, Landroidx/constraintlayout/motion/widget/s;->l:Z

    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p4}, Landroidx/constraintlayout/motion/widget/s;->t(Landroid/view/MotionEvent;Landroidx/constraintlayout/motion/widget/p$f;ILandroidx/constraintlayout/motion/widget/r;)V

    return-void

    :cond_0
    move-object/from16 v2, p1

    invoke-interface {v1, v2}, Landroidx/constraintlayout/motion/widget/p$f;->b(Landroid/view/MotionEvent;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_19

    const/4 v6, 0x6

    const/4 v7, -0x1

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eq v3, v10, :cond_e

    const/4 v12, 0x2

    if-eq v3, v12, :cond_1

    goto/16 :goto_a

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iget v12, v0, Landroidx/constraintlayout/motion/widget/s;->s:F

    sub-float/2addr v3, v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v12

    iget v13, v0, Landroidx/constraintlayout/motion/widget/s;->r:F

    sub-float/2addr v12, v13

    iget v13, v0, Landroidx/constraintlayout/motion/widget/s;->m:F

    mul-float/2addr v13, v12

    iget v14, v0, Landroidx/constraintlayout/motion/widget/s;->n:F

    mul-float/2addr v14, v3

    add-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    iget v14, v0, Landroidx/constraintlayout/motion/widget/s;->z:F

    cmpl-float v13, v13, v14

    if-gtz v13, :cond_2

    iget-boolean v13, v0, Landroidx/constraintlayout/motion/widget/s;->o:Z

    if-eqz v13, :cond_1a

    :cond_2
    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/s;->t:Landroidx/constraintlayout/motion/widget/p;

    invoke-virtual {v13}, Landroidx/constraintlayout/motion/widget/p;->getProgress()F

    move-result v13

    iget-boolean v14, v0, Landroidx/constraintlayout/motion/widget/s;->o:Z

    if-nez v14, :cond_3

    iput-boolean v10, v0, Landroidx/constraintlayout/motion/widget/s;->o:Z

    iget-object v14, v0, Landroidx/constraintlayout/motion/widget/s;->t:Landroidx/constraintlayout/motion/widget/p;

    invoke-virtual {v14, v13}, Landroidx/constraintlayout/motion/widget/p;->setProgress(F)V

    :cond_3
    iget v15, v0, Landroidx/constraintlayout/motion/widget/s;->d:I

    if-eq v15, v7, :cond_4

    iget-object v14, v0, Landroidx/constraintlayout/motion/widget/s;->t:Landroidx/constraintlayout/motion/widget/p;

    iget v7, v0, Landroidx/constraintlayout/motion/widget/s;->h:F

    iget v8, v0, Landroidx/constraintlayout/motion/widget/s;->g:F

    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/s;->p:[F

    move/from16 v16, v13

    move/from16 v17, v7

    move/from16 v18, v8

    move-object/from16 v19, v5

    invoke-virtual/range {v14 .. v19}, Landroidx/constraintlayout/motion/widget/p;->q(IFFF[F)V

    goto :goto_0

    :cond_4
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/s;->t:Landroidx/constraintlayout/motion/widget/p;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/s;->t:Landroidx/constraintlayout/motion/widget/p;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v5, v5

    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/s;->p:[F

    iget v8, v0, Landroidx/constraintlayout/motion/widget/s;->n:F

    mul-float/2addr v8, v5

    aput v8, v7, v10

    iget v8, v0, Landroidx/constraintlayout/motion/widget/s;->m:F

    mul-float/2addr v5, v8

    aput v5, v7, v4

    :goto_0
    iget v5, v0, Landroidx/constraintlayout/motion/widget/s;->m:F

    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/s;->p:[F

    aget v8, v7, v4

    mul-float/2addr v5, v8

    iget v8, v0, Landroidx/constraintlayout/motion/widget/s;->n:F

    aget v7, v7, v10

    mul-float/2addr v8, v7

    add-float/2addr v5, v8

    iget v7, v0, Landroidx/constraintlayout/motion/widget/s;->x:F

    mul-float/2addr v5, v7

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-double v7, v5

    const-wide v14, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v5, v7, v14

    const v7, 0x3c23d70a    # 0.01f

    if-gez v5, :cond_5

    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/s;->p:[F

    aput v7, v5, v4

    aput v7, v5, v10

    :cond_5
    iget v5, v0, Landroidx/constraintlayout/motion/widget/s;->m:F

    cmpl-float v5, v5, v11

    if-eqz v5, :cond_6

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/s;->p:[F

    aget v3, v3, v4

    div-float/2addr v12, v3

    goto :goto_1

    :cond_6
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/s;->p:[F

    aget v5, v5, v10

    div-float v12, v3, v5

    :goto_1
    add-float/2addr v13, v12

    invoke-static {v13, v9}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v3, v11}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iget v5, v0, Landroidx/constraintlayout/motion/widget/s;->c:I

    if-ne v5, v6, :cond_7

    invoke-static {v3, v7}, Ljava/lang/Math;->max(FF)F

    move-result v3

    :cond_7
    iget v5, v0, Landroidx/constraintlayout/motion/widget/s;->c:I

    const/4 v6, 0x7

    if-ne v5, v6, :cond_8

    const v5, 0x3f7d70a4    # 0.99f

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    :cond_8
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/s;->t:Landroidx/constraintlayout/motion/widget/p;

    invoke-virtual {v5}, Landroidx/constraintlayout/motion/widget/p;->getProgress()F

    move-result v5

    cmpl-float v6, v3, v5

    if-eqz v6, :cond_d

    cmpl-float v6, v5, v11

    if-eqz v6, :cond_9

    cmpl-float v5, v5, v9

    if-nez v5, :cond_b

    :cond_9
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/s;->t:Landroidx/constraintlayout/motion/widget/p;

    if-nez v6, :cond_a

    move v6, v10

    goto :goto_2

    :cond_a
    move v6, v4

    :goto_2
    invoke-virtual {v5, v6}, Landroidx/constraintlayout/motion/widget/p;->k(Z)V

    :cond_b
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/s;->t:Landroidx/constraintlayout/motion/widget/p;

    invoke-virtual {v5, v3}, Landroidx/constraintlayout/motion/widget/p;->setProgress(F)V

    const/16 v3, 0x3e8

    invoke-interface {v1, v3}, Landroidx/constraintlayout/motion/widget/p$f;->e(I)V

    invoke-interface/range {p2 .. p2}, Landroidx/constraintlayout/motion/widget/p$f;->d()F

    move-result v3

    invoke-interface/range {p2 .. p2}, Landroidx/constraintlayout/motion/widget/p$f;->c()F

    move-result v1

    iget v5, v0, Landroidx/constraintlayout/motion/widget/s;->m:F

    cmpl-float v5, v5, v11

    if-eqz v5, :cond_c

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/s;->p:[F

    aget v1, v1, v4

    div-float/2addr v3, v1

    goto :goto_3

    :cond_c
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/s;->p:[F

    aget v3, v3, v10

    div-float v3, v1, v3

    :goto_3
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/s;->t:Landroidx/constraintlayout/motion/widget/p;

    iput v3, v1, Landroidx/constraintlayout/motion/widget/p;->d:F

    goto :goto_4

    :cond_d
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/s;->t:Landroidx/constraintlayout/motion/widget/p;

    iput v11, v1, Landroidx/constraintlayout/motion/widget/p;->d:F

    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/motion/widget/s;->r:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/motion/widget/s;->s:F

    goto/16 :goto_a

    :cond_e
    iput-boolean v4, v0, Landroidx/constraintlayout/motion/widget/s;->o:Z

    const/16 v2, 0x3e8

    invoke-interface {v1, v2}, Landroidx/constraintlayout/motion/widget/p$f;->e(I)V

    invoke-interface/range {p2 .. p2}, Landroidx/constraintlayout/motion/widget/p$f;->d()F

    move-result v2

    invoke-interface/range {p2 .. p2}, Landroidx/constraintlayout/motion/widget/p$f;->c()F

    move-result v1

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/s;->t:Landroidx/constraintlayout/motion/widget/p;

    invoke-virtual {v3}, Landroidx/constraintlayout/motion/widget/p;->getProgress()F

    move-result v3

    iget v13, v0, Landroidx/constraintlayout/motion/widget/s;->d:I

    if-eq v13, v7, :cond_f

    iget-object v12, v0, Landroidx/constraintlayout/motion/widget/s;->t:Landroidx/constraintlayout/motion/widget/p;

    iget v15, v0, Landroidx/constraintlayout/motion/widget/s;->h:F

    iget v5, v0, Landroidx/constraintlayout/motion/widget/s;->g:F

    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/s;->p:[F

    move v14, v3

    move/from16 v16, v5

    move-object/from16 v17, v7

    invoke-virtual/range {v12 .. v17}, Landroidx/constraintlayout/motion/widget/p;->q(IFFF[F)V

    goto :goto_5

    :cond_f
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/s;->t:Landroidx/constraintlayout/motion/widget/p;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/s;->t:Landroidx/constraintlayout/motion/widget/p;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v5, v5

    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/s;->p:[F

    iget v8, v0, Landroidx/constraintlayout/motion/widget/s;->n:F

    mul-float/2addr v8, v5

    aput v8, v7, v10

    iget v8, v0, Landroidx/constraintlayout/motion/widget/s;->m:F

    mul-float/2addr v5, v8

    aput v5, v7, v4

    :goto_5
    iget v5, v0, Landroidx/constraintlayout/motion/widget/s;->m:F

    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/s;->p:[F

    aget v4, v7, v4

    aget v7, v7, v10

    cmpl-float v5, v5, v11

    if-eqz v5, :cond_10

    div-float/2addr v2, v4

    goto :goto_6

    :cond_10
    div-float v2, v1, v7

    :goto_6
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_11

    const/high16 v1, 0x40400000    # 3.0f

    div-float v1, v2, v1

    add-float/2addr v1, v3

    goto :goto_7

    :cond_11
    move v1, v3

    :goto_7
    cmpl-float v4, v1, v11

    if-eqz v4, :cond_17

    cmpl-float v4, v1, v9

    if-eqz v4, :cond_17

    iget v4, v0, Landroidx/constraintlayout/motion/widget/s;->c:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_17

    float-to-double v7, v1

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    cmpg-double v1, v7, v12

    if-gez v1, :cond_12

    move v1, v11

    goto :goto_8

    :cond_12
    move v1, v9

    :goto_8
    if-ne v4, v6, :cond_14

    add-float v1, v3, v2

    cmpg-float v1, v1, v11

    if-gez v1, :cond_13

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    move v2, v1

    :cond_13
    move v1, v9

    :cond_14
    iget v4, v0, Landroidx/constraintlayout/motion/widget/s;->c:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_16

    add-float v1, v3, v2

    cmpl-float v1, v1, v9

    if-lez v1, :cond_15

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    neg-float v1, v1

    move v2, v1

    :cond_15
    move v1, v11

    :cond_16
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/s;->t:Landroidx/constraintlayout/motion/widget/p;

    iget v5, v0, Landroidx/constraintlayout/motion/widget/s;->c:I

    invoke-virtual {v4, v5, v1, v2}, Landroidx/constraintlayout/motion/widget/p;->C(IFF)V

    cmpl-float v1, v11, v3

    if-gez v1, :cond_18

    cmpg-float v1, v9, v3

    if-gtz v1, :cond_1a

    goto :goto_9

    :cond_17
    cmpl-float v2, v11, v1

    if-gez v2, :cond_18

    cmpg-float v1, v9, v1

    if-gtz v1, :cond_1a

    :cond_18
    :goto_9
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/s;->t:Landroidx/constraintlayout/motion/widget/p;

    sget-object v2, Landroidx/constraintlayout/motion/widget/p$j;->d:Landroidx/constraintlayout/motion/widget/p$j;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/motion/widget/p;->setState(Landroidx/constraintlayout/motion/widget/p$j;)V

    goto :goto_a

    :cond_19
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/motion/widget/s;->r:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/motion/widget/s;->s:F

    iput-boolean v4, v0, Landroidx/constraintlayout/motion/widget/s;->o:Z

    :cond_1a
    :goto_a
    return-void
.end method

.method t(Landroid/view/MotionEvent;Landroidx/constraintlayout/motion/widget/p$f;ILandroidx/constraintlayout/motion/widget/r;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-interface {v1, v2}, Landroidx/constraintlayout/motion/widget/p$f;->b(Landroid/view/MotionEvent;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_19

    const/high16 v5, 0x43b40000    # 360.0f

    const/4 v6, -0x1

    const/high16 v9, 0x40000000    # 2.0f

    const/4 v10, 0x1

    if-eq v3, v10, :cond_d

    const/4 v11, 0x2

    if-eq v3, v11, :cond_0

    goto/16 :goto_a

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/s;->t:Landroidx/constraintlayout/motion/widget/p;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v9

    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/s;->t:Landroidx/constraintlayout/motion/widget/p;

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v11, v9

    iget v12, v0, Landroidx/constraintlayout/motion/widget/s;->k:I

    if-eq v12, v6, :cond_1

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/s;->t:Landroidx/constraintlayout/motion/widget/p;

    invoke-virtual {v3, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/s;->t:Landroidx/constraintlayout/motion/widget/p;

    iget-object v12, v0, Landroidx/constraintlayout/motion/widget/s;->q:[I

    invoke-virtual {v11, v12}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/s;->q:[I

    aget v11, v11, v4

    int-to-float v11, v11

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v12

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v13

    add-int/2addr v12, v13

    int-to-float v12, v12

    div-float/2addr v12, v9

    add-float/2addr v11, v12

    iget-object v12, v0, Landroidx/constraintlayout/motion/widget/s;->q:[I

    aget v12, v12, v10

    int-to-float v12, v12

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v13

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    add-int/2addr v13, v3

    int-to-float v3, v13

    div-float/2addr v3, v9

    add-float/2addr v3, v12

    move/from16 v22, v11

    move v11, v3

    move/from16 v3, v22

    goto :goto_0

    :cond_1
    iget v12, v0, Landroidx/constraintlayout/motion/widget/s;->d:I

    if-eq v12, v6, :cond_3

    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/s;->t:Landroidx/constraintlayout/motion/widget/p;

    invoke-virtual {v13, v12}, Landroidx/constraintlayout/motion/widget/p;->s(I)Landroidx/constraintlayout/motion/widget/m;

    move-result-object v12

    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/s;->t:Landroidx/constraintlayout/motion/widget/p;

    invoke-virtual {v12}, Landroidx/constraintlayout/motion/widget/m;->g()I

    move-result v12

    invoke-virtual {v13, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    if-nez v12, :cond_2

    const-string v9, "TouchResponse"

    const-string v12, "could not find view to animate to"

    invoke-static {v9, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/s;->t:Landroidx/constraintlayout/motion/widget/p;

    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/s;->q:[I

    invoke-virtual {v3, v11}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/s;->q:[I

    aget v3, v3, v4

    int-to-float v3, v3

    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v11

    invoke-virtual {v12}, Landroid/view/View;->getRight()I

    move-result v13

    add-int/2addr v11, v13

    int-to-float v11, v11

    div-float/2addr v11, v9

    add-float/2addr v3, v11

    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/s;->q:[I

    aget v11, v11, v10

    int-to-float v11, v11

    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v13

    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v12

    add-int/2addr v13, v12

    int-to-float v12, v13

    div-float/2addr v12, v9

    add-float/2addr v11, v12

    :cond_3
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    sub-float/2addr v9, v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v12

    sub-float/2addr v12, v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v13

    sub-float/2addr v13, v11

    float-to-double v13, v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v15

    sub-float/2addr v15, v3

    move/from16 p4, v9

    float-to-double v8, v15

    invoke-static {v13, v14, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v8

    iget v13, v0, Landroidx/constraintlayout/motion/widget/s;->s:F

    sub-float/2addr v13, v11

    float-to-double v13, v13

    iget v11, v0, Landroidx/constraintlayout/motion/widget/s;->r:F

    sub-float/2addr v11, v3

    float-to-double v6, v11

    invoke-static {v13, v14, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    sub-double v6, v8, v6

    const-wide v13, 0x4066800000000000L    # 180.0

    mul-double/2addr v6, v13

    const-wide v13, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v6, v13

    double-to-float v6, v6

    const/high16 v7, 0x43a50000    # 330.0f

    cmpl-float v7, v6, v7

    if-lez v7, :cond_4

    sub-float/2addr v6, v5

    goto :goto_1

    :cond_4
    const/high16 v7, -0x3c5b0000    # -330.0f

    cmpg-float v7, v6, v7

    if-gez v7, :cond_5

    add-float/2addr v6, v5

    :cond_5
    :goto_1
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v7

    float-to-double v13, v7

    const-wide v16, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v7, v13, v16

    if-gtz v7, :cond_6

    iget-boolean v7, v0, Landroidx/constraintlayout/motion/widget/s;->o:Z

    if-eqz v7, :cond_1a

    :cond_6
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/s;->t:Landroidx/constraintlayout/motion/widget/p;

    invoke-virtual {v7}, Landroidx/constraintlayout/motion/widget/p;->getProgress()F

    move-result v7

    iget-boolean v11, v0, Landroidx/constraintlayout/motion/widget/s;->o:Z

    if-nez v11, :cond_7

    iput-boolean v10, v0, Landroidx/constraintlayout/motion/widget/s;->o:Z

    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/s;->t:Landroidx/constraintlayout/motion/widget/p;

    invoke-virtual {v11, v7}, Landroidx/constraintlayout/motion/widget/p;->setProgress(F)V

    :cond_7
    iget v11, v0, Landroidx/constraintlayout/motion/widget/s;->d:I

    const/4 v3, -0x1

    if-eq v11, v3, :cond_8

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/s;->t:Landroidx/constraintlayout/motion/widget/p;

    iget v5, v0, Landroidx/constraintlayout/motion/widget/s;->h:F

    iget v13, v0, Landroidx/constraintlayout/motion/widget/s;->g:F

    iget-object v14, v0, Landroidx/constraintlayout/motion/widget/s;->p:[F

    move-object/from16 v16, v3

    move/from16 v17, v11

    move/from16 v18, v7

    move/from16 v19, v5

    move/from16 v20, v13

    move-object/from16 v21, v14

    invoke-virtual/range {v16 .. v21}, Landroidx/constraintlayout/motion/widget/p;->q(IFFF[F)V

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/s;->p:[F

    aget v5, v3, v10

    float-to-double v13, v5

    invoke-static {v13, v14}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v13

    double-to-float v5, v13

    aput v5, v3, v10

    goto :goto_2

    :cond_8
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/s;->p:[F

    aput v5, v3, v10

    :goto_2
    iget v3, v0, Landroidx/constraintlayout/motion/widget/s;->x:F

    mul-float/2addr v6, v3

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/s;->p:[F

    aget v3, v3, v10

    div-float/2addr v6, v3

    add-float/2addr v7, v6

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v7, v3}, Ljava/lang/Math;->min(FF)F

    move-result v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/s;->t:Landroidx/constraintlayout/motion/widget/p;

    invoke-virtual {v7}, Landroidx/constraintlayout/motion/widget/p;->getProgress()F

    move-result v7

    cmpl-float v11, v5, v7

    if-eqz v11, :cond_c

    cmpl-float v6, v7, v6

    if-eqz v6, :cond_9

    cmpl-float v3, v7, v3

    if-nez v3, :cond_b

    :cond_9
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/s;->t:Landroidx/constraintlayout/motion/widget/p;

    if-nez v6, :cond_a

    move v4, v10

    :cond_a
    invoke-virtual {v3, v4}, Landroidx/constraintlayout/motion/widget/p;->k(Z)V

    :cond_b
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/s;->t:Landroidx/constraintlayout/motion/widget/p;

    invoke-virtual {v3, v5}, Landroidx/constraintlayout/motion/widget/p;->setProgress(F)V

    const/16 v3, 0x3e8

    invoke-interface {v1, v3}, Landroidx/constraintlayout/motion/widget/p$f;->e(I)V

    invoke-interface/range {p2 .. p2}, Landroidx/constraintlayout/motion/widget/p$f;->d()F

    move-result v3

    invoke-interface/range {p2 .. p2}, Landroidx/constraintlayout/motion/widget/p$f;->c()F

    move-result v1

    float-to-double v4, v1

    float-to-double v6, v3

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v10

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    sub-double/2addr v3, v8

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double/2addr v10, v3

    move/from16 v9, p4

    float-to-double v3, v9

    float-to-double v5, v12

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    div-double/2addr v10, v3

    double-to-float v1, v10

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/s;->t:Landroidx/constraintlayout/motion/widget/p;

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v1, v4

    iput v1, v3, Landroidx/constraintlayout/motion/widget/p;->d:F

    goto :goto_3

    :cond_c
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/s;->t:Landroidx/constraintlayout/motion/widget/p;

    const/4 v3, 0x0

    iput v3, v1, Landroidx/constraintlayout/motion/widget/p;->d:F

    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/motion/widget/s;->r:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/motion/widget/s;->s:F

    goto/16 :goto_a

    :cond_d
    iput-boolean v4, v0, Landroidx/constraintlayout/motion/widget/s;->o:Z

    const/16 v6, 0x10

    invoke-interface {v1, v6}, Landroidx/constraintlayout/motion/widget/p$f;->e(I)V

    invoke-interface/range {p2 .. p2}, Landroidx/constraintlayout/motion/widget/p$f;->d()F

    move-result v6

    invoke-interface/range {p2 .. p2}, Landroidx/constraintlayout/motion/widget/p$f;->c()F

    move-result v1

    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/s;->t:Landroidx/constraintlayout/motion/widget/p;

    invoke-virtual {v7}, Landroidx/constraintlayout/motion/widget/p;->getProgress()F

    move-result v7

    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/s;->t:Landroidx/constraintlayout/motion/widget/p;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v9

    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/s;->t:Landroidx/constraintlayout/motion/widget/p;

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v11, v9

    iget v12, v0, Landroidx/constraintlayout/motion/widget/s;->k:I

    const/4 v3, -0x1

    if-eq v12, v3, :cond_e

    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/s;->t:Landroidx/constraintlayout/motion/widget/p;

    invoke-virtual {v8, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/s;->t:Landroidx/constraintlayout/motion/widget/p;

    iget-object v12, v0, Landroidx/constraintlayout/motion/widget/s;->q:[I

    invoke-virtual {v11, v12}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/s;->q:[I

    aget v4, v11, v4

    int-to-float v4, v4

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v11

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v12

    add-int/2addr v11, v12

    int-to-float v11, v11

    div-float/2addr v11, v9

    add-float/2addr v4, v11

    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/s;->q:[I

    aget v11, v11, v10

    :goto_4
    int-to-float v11, v11

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v12

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v8

    add-int/2addr v12, v8

    int-to-float v8, v12

    div-float/2addr v8, v9

    add-float/2addr v11, v8

    move v8, v4

    goto :goto_5

    :cond_e
    iget v12, v0, Landroidx/constraintlayout/motion/widget/s;->d:I

    const/4 v3, -0x1

    if-eq v12, v3, :cond_f

    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/s;->t:Landroidx/constraintlayout/motion/widget/p;

    invoke-virtual {v8, v12}, Landroidx/constraintlayout/motion/widget/p;->s(I)Landroidx/constraintlayout/motion/widget/m;

    move-result-object v8

    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/s;->t:Landroidx/constraintlayout/motion/widget/p;

    invoke-virtual {v8}, Landroidx/constraintlayout/motion/widget/m;->g()I

    move-result v8

    invoke-virtual {v11, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/s;->t:Landroidx/constraintlayout/motion/widget/p;

    iget-object v12, v0, Landroidx/constraintlayout/motion/widget/s;->q:[I

    invoke-virtual {v11, v12}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/s;->q:[I

    aget v4, v11, v4

    int-to-float v4, v4

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v11

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v12

    add-int/2addr v11, v12

    int-to-float v11, v11

    div-float/2addr v11, v9

    add-float/2addr v4, v11

    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/s;->q:[I

    aget v11, v11, v10

    goto :goto_4

    :cond_f
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    sub-float/2addr v4, v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    sub-float/2addr v2, v11

    float-to-double v8, v2

    float-to-double v11, v4

    invoke-static {v8, v9, v11, v12}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v8

    iget v11, v0, Landroidx/constraintlayout/motion/widget/s;->d:I

    const/4 v3, -0x1

    if-eq v11, v3, :cond_10

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/s;->t:Landroidx/constraintlayout/motion/widget/p;

    iget v5, v0, Landroidx/constraintlayout/motion/widget/s;->h:F

    iget v12, v0, Landroidx/constraintlayout/motion/widget/s;->g:F

    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/s;->p:[F

    move-object/from16 v16, v3

    move/from16 v17, v11

    move/from16 v18, v7

    move/from16 v19, v5

    move/from16 v20, v12

    move-object/from16 v21, v13

    invoke-virtual/range {v16 .. v21}, Landroidx/constraintlayout/motion/widget/p;->q(IFFF[F)V

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/s;->p:[F

    aget v5, v3, v10

    float-to-double v11, v5

    invoke-static {v11, v12}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v11

    double-to-float v5, v11

    aput v5, v3, v10

    goto :goto_6

    :cond_10
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/s;->p:[F

    aput v5, v3, v10

    :goto_6
    add-float/2addr v1, v2

    float-to-double v1, v1

    add-float/2addr v6, v4

    float-to-double v3, v6

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    sub-double/2addr v1, v8

    double-to-float v1, v1

    const/high16 v2, 0x427a0000    # 62.5f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    const/high16 v3, 0x40400000    # 3.0f

    if-nez v2, :cond_11

    mul-float v2, v1, v3

    iget v4, v0, Landroidx/constraintlayout/motion/widget/s;->x:F

    mul-float/2addr v2, v4

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/s;->p:[F

    aget v4, v4, v10

    div-float/2addr v2, v4

    add-float/2addr v2, v7

    goto :goto_7

    :cond_11
    move v2, v7

    :goto_7
    const/4 v4, 0x0

    cmpl-float v5, v2, v4

    if-eqz v5, :cond_17

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v5, v2, v4

    if-eqz v5, :cond_17

    iget v4, v0, Landroidx/constraintlayout/motion/widget/s;->c:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_17

    iget v5, v0, Landroidx/constraintlayout/motion/widget/s;->x:F

    mul-float/2addr v1, v5

    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/s;->p:[F

    aget v5, v5, v10

    div-float/2addr v1, v5

    float-to-double v5, v2

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    cmpg-double v2, v5, v8

    if-gez v2, :cond_12

    const/4 v2, 0x0

    goto :goto_8

    :cond_12
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_8
    const/4 v5, 0x6

    if-ne v4, v5, :cond_14

    add-float v2, v7, v1

    const/4 v4, 0x0

    cmpg-float v2, v2, v4

    if-gez v2, :cond_13

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    :cond_13
    const/high16 v2, 0x3f800000    # 1.0f

    :cond_14
    iget v4, v0, Landroidx/constraintlayout/motion/widget/s;->c:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_16

    add-float v2, v7, v1

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v4

    if-lez v2, :cond_15

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    neg-float v1, v1

    :cond_15
    const/4 v2, 0x0

    :cond_16
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/s;->t:Landroidx/constraintlayout/motion/widget/p;

    iget v5, v0, Landroidx/constraintlayout/motion/widget/s;->c:I

    mul-float/2addr v1, v3

    invoke-virtual {v4, v5, v2, v1}, Landroidx/constraintlayout/motion/widget/p;->C(IFF)V

    const/4 v1, 0x0

    cmpl-float v1, v1, v7

    if-gez v1, :cond_18

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v7

    if-gtz v1, :cond_1a

    goto :goto_9

    :cond_17
    const/4 v1, 0x0

    cmpl-float v1, v1, v2

    if-gez v1, :cond_18

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1a

    :cond_18
    :goto_9
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/s;->t:Landroidx/constraintlayout/motion/widget/p;

    sget-object v2, Landroidx/constraintlayout/motion/widget/p$j;->d:Landroidx/constraintlayout/motion/widget/p$j;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/motion/widget/p;->setState(Landroidx/constraintlayout/motion/widget/p$j;)V

    goto :goto_a

    :cond_19
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/motion/widget/s;->r:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/motion/widget/s;->s:F

    iput-boolean v4, v0, Landroidx/constraintlayout/motion/widget/s;->o:Z

    :cond_1a
    :goto_a
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Landroidx/constraintlayout/motion/widget/s;->m:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "rotation"

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroidx/constraintlayout/motion/widget/s;->m:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/constraintlayout/motion/widget/s;->n:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method u(FF)V
    .locals 8

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/s;->t:Landroidx/constraintlayout/motion/widget/p;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/p;->getProgress()F

    move-result v0

    iget-boolean v1, p0, Landroidx/constraintlayout/motion/widget/s;->o:Z

    const/4 v7, 0x1

    if-nez v1, :cond_0

    iput-boolean v7, p0, Landroidx/constraintlayout/motion/widget/s;->o:Z

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/s;->t:Landroidx/constraintlayout/motion/widget/p;

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/motion/widget/p;->setProgress(F)V

    :cond_0
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/s;->t:Landroidx/constraintlayout/motion/widget/p;

    iget v2, p0, Landroidx/constraintlayout/motion/widget/s;->d:I

    iget v4, p0, Landroidx/constraintlayout/motion/widget/s;->h:F

    iget v5, p0, Landroidx/constraintlayout/motion/widget/s;->g:F

    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/s;->p:[F

    move v3, v0

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/motion/widget/p;->q(IFFF[F)V

    iget v1, p0, Landroidx/constraintlayout/motion/widget/s;->m:F

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/s;->p:[F

    const/4 v3, 0x0

    aget v4, v2, v3

    mul-float/2addr v1, v4

    iget v4, p0, Landroidx/constraintlayout/motion/widget/s;->n:F

    aget v2, v2, v7

    mul-float/2addr v4, v2

    add-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v1, v1

    const-wide v4, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v1, v1, v4

    if-gez v1, :cond_1

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/s;->p:[F

    const v2, 0x3c23d70a    # 0.01f

    aput v2, v1, v3

    aput v2, v1, v7

    :cond_1
    iget v1, p0, Landroidx/constraintlayout/motion/widget/s;->m:F

    const/4 v2, 0x0

    cmpl-float v4, v1, v2

    if-eqz v4, :cond_2

    mul-float/2addr p1, v1

    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/s;->p:[F

    aget p2, p2, v3

    div-float/2addr p1, p2

    goto :goto_0

    :cond_2
    iget p1, p0, Landroidx/constraintlayout/motion/widget/s;->n:F

    mul-float/2addr p2, p1

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/s;->p:[F

    aget p1, p1, v7

    div-float p1, p2, p1

    :goto_0
    add-float/2addr v0, p1

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {p1, v2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/s;->t:Landroidx/constraintlayout/motion/widget/p;

    invoke-virtual {p2}, Landroidx/constraintlayout/motion/widget/p;->getProgress()F

    move-result p2

    cmpl-float p2, p1, p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/s;->t:Landroidx/constraintlayout/motion/widget/p;

    invoke-virtual {p2, p1}, Landroidx/constraintlayout/motion/widget/p;->setProgress(F)V

    :cond_3
    return-void
.end method

.method v(FF)V
    .locals 9

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/s;->o:Z

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/s;->t:Landroidx/constraintlayout/motion/widget/p;

    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/p;->getProgress()F

    move-result v1

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/s;->t:Landroidx/constraintlayout/motion/widget/p;

    iget v3, p0, Landroidx/constraintlayout/motion/widget/s;->d:I

    iget v5, p0, Landroidx/constraintlayout/motion/widget/s;->h:F

    iget v6, p0, Landroidx/constraintlayout/motion/widget/s;->g:F

    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/s;->p:[F

    move v4, v1

    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/motion/widget/p;->q(IFFF[F)V

    iget v2, p0, Landroidx/constraintlayout/motion/widget/s;->m:F

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/s;->p:[F

    aget v4, v3, v0

    iget v5, p0, Landroidx/constraintlayout/motion/widget/s;->n:F

    const/4 v6, 0x1

    aget v3, v3, v6

    const/4 v7, 0x0

    cmpl-float v8, v2, v7

    if-eqz v8, :cond_0

    mul-float/2addr p1, v2

    div-float/2addr p1, v4

    goto :goto_0

    :cond_0
    mul-float/2addr p2, v5

    div-float p1, p2, v3

    :goto_0
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p2

    if-nez p2, :cond_1

    const/high16 p2, 0x40400000    # 3.0f

    div-float p2, p1, p2

    add-float/2addr v1, p2

    :cond_1
    cmpl-float p2, v1, v7

    if-eqz p2, :cond_5

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float v2, v1, p2

    if-eqz v2, :cond_2

    move v2, v6

    goto :goto_1

    :cond_2
    move v2, v0

    :goto_1
    iget v3, p0, Landroidx/constraintlayout/motion/widget/s;->c:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3

    move v0, v6

    :cond_3
    and-int/2addr v0, v2

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/s;->t:Landroidx/constraintlayout/motion/widget/p;

    float-to-double v1, v1

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpg-double v1, v1, v4

    if-gez v1, :cond_4

    goto :goto_2

    :cond_4
    move v7, p2

    :goto_2
    invoke-virtual {v0, v3, v7, p1}, Landroidx/constraintlayout/motion/widget/p;->C(IFF)V

    :cond_5
    return-void
.end method

.method w(FF)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/motion/widget/s;->r:F

    iput p2, p0, Landroidx/constraintlayout/motion/widget/s;->s:F

    return-void
.end method

.method public x(Z)V
    .locals 7

    const/4 v0, 0x6

    const/4 v1, 0x3

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x5

    const/4 v5, 0x2

    if-eqz p1, :cond_0

    sget-object p1, Landroidx/constraintlayout/motion/widget/s;->H:[[F

    aget-object v1, p1, v1

    aput-object v1, p1, v2

    aget-object v1, p1, v5

    aput-object v1, p1, v4

    sget-object p1, Landroidx/constraintlayout/motion/widget/s;->G:[[F

    aget-object v1, p1, v5

    aput-object v1, p1, v4

    aget-object v1, p1, v3

    aput-object v1, p1, v0

    goto :goto_0

    :cond_0
    sget-object p1, Landroidx/constraintlayout/motion/widget/s;->H:[[F

    aget-object v6, p1, v5

    aput-object v6, p1, v2

    aget-object v1, p1, v1

    aput-object v1, p1, v4

    sget-object p1, Landroidx/constraintlayout/motion/widget/s;->G:[[F

    aget-object v1, p1, v3

    aput-object v1, p1, v4

    aget-object v1, p1, v5

    aput-object v1, p1, v0

    :goto_0
    sget-object p1, Landroidx/constraintlayout/motion/widget/s;->G:[[F

    iget v0, p0, Landroidx/constraintlayout/motion/widget/s;->a:I

    aget-object p1, p1, v0

    const/4 v0, 0x0

    aget v1, p1, v0

    iput v1, p0, Landroidx/constraintlayout/motion/widget/s;->h:F

    aget p1, p1, v3

    iput p1, p0, Landroidx/constraintlayout/motion/widget/s;->g:F

    iget p1, p0, Landroidx/constraintlayout/motion/widget/s;->b:I

    sget-object v1, Landroidx/constraintlayout/motion/widget/s;->H:[[F

    array-length v2, v1

    if-lt p1, v2, :cond_1

    return-void

    :cond_1
    aget-object p1, v1, p1

    aget v0, p1, v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/s;->m:F

    aget p1, p1, v3

    iput p1, p0, Landroidx/constraintlayout/motion/widget/s;->n:F

    return-void
.end method

.method y(FF)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/motion/widget/s;->r:F

    iput p2, p0, Landroidx/constraintlayout/motion/widget/s;->s:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/constraintlayout/motion/widget/s;->o:Z

    return-void
.end method

.method z()V
    .locals 4

    iget v0, p0, Landroidx/constraintlayout/motion/widget/s;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/s;->t:Landroidx/constraintlayout/motion/widget/p;

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot find TouchAnchorId @id/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/s;->t:Landroidx/constraintlayout/motion/widget/p;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Landroidx/constraintlayout/motion/widget/s;->d:I

    invoke-static {v2, v3}, Landroidx/constraintlayout/motion/widget/a;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TouchResponse"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    instance-of v1, v0, Landroidx/core/widget/NestedScrollView;

    if-eqz v1, :cond_2

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    new-instance v1, Landroidx/constraintlayout/motion/widget/s$a;

    invoke-direct {v1, p0}, Landroidx/constraintlayout/motion/widget/s$a;-><init>(Landroidx/constraintlayout/motion/widget/s;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v1, Landroidx/constraintlayout/motion/widget/s$b;

    invoke-direct {v1, p0}, Landroidx/constraintlayout/motion/widget/s$b;-><init>(Landroidx/constraintlayout/motion/widget/s;)V

    invoke-virtual {v0, v1}, Landroidx/core/widget/NestedScrollView;->setOnScrollChangeListener(Landroidx/core/widget/NestedScrollView$d;)V

    :cond_2
    return-void
.end method

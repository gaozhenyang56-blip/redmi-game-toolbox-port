.class public Lcom/miui/dock/sidebar/c;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:I

.field private final E:Lcom/miui/dock/sidebar/SidebarColorParams;

.field private final a:Landroid/graphics/Paint;

.field private b:I

.field private c:I

.field private d:Z

.field private e:Z

.field private f:I

.field public g:I

.field private h:I

.field private i:I

.field private j:Landroid/graphics/Path;

.field private final k:Landroid/graphics/RectF;

.field private final l:I

.field private m:Lcom/miui/dock/sidebar/j;

.field private n:Landroid/content/Context;

.field private o:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private p:Z

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:Z

.field private v:Landroid/graphics/Path;

.field private w:Landroid/graphics/Paint;

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/miui/dock/sidebar/j;)V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/dock/sidebar/c;->b:I

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/miui/dock/sidebar/c;->k:Landroid/graphics/RectF;

    iput-boolean v0, p0, Lcom/miui/dock/sidebar/c;->u:Z

    new-instance v1, Lcom/miui/dock/sidebar/SidebarColorParams;

    invoke-direct {v1}, Lcom/miui/dock/sidebar/SidebarColorParams;-><init>()V

    iput-object v1, p0, Lcom/miui/dock/sidebar/c;->E:Lcom/miui/dock/sidebar/SidebarColorParams;

    iput-object p1, p0, Lcom/miui/dock/sidebar/c;->n:Landroid/content/Context;

    iput-object p3, p0, Lcom/miui/dock/sidebar/c;->m:Lcom/miui/dock/sidebar/j;

    invoke-static {p1}, La8/k2;->L(Landroid/content/Context;)Z

    move-result p3

    const/4 v1, 0x1

    if-nez p3, :cond_2

    const/16 p3, 0x5a

    if-ne p2, p3, :cond_0

    invoke-static {p1, v1}, La8/t1;->a(Landroid/content/Context;Z)I

    move-result p2

    :goto_0
    iput p2, p0, Lcom/miui/dock/sidebar/c;->b:I

    goto :goto_1

    :cond_0
    const/16 p3, 0x10e

    if-ne p2, p3, :cond_1

    invoke-static {p1, v0}, La8/t1;->a(Landroid/content/Context;Z)I

    move-result p2

    goto :goto_0

    :cond_1
    :goto_1
    iput-boolean v1, p0, Lcom/miui/dock/sidebar/c;->p:Z

    :cond_2
    iget p2, p0, Lcom/miui/dock/sidebar/c;->b:I

    if-lez p2, :cond_3

    move v0, v1

    :cond_3
    iput-boolean v0, p0, Lcom/miui/dock/sidebar/c;->d:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f071a89

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/miui/dock/sidebar/c;->l:I

    const p3, 0x7f071a87

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/miui/dock/sidebar/c;->g:I

    const p3, 0x7f071d86

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/miui/dock/sidebar/c;->i:I

    const p3, 0x7f071a86

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/miui/dock/sidebar/c;->c:I

    const p3, 0x7f070ed1

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/miui/dock/sidebar/c;->f:I

    iget-boolean p3, p0, Lcom/miui/dock/sidebar/c;->d:Z

    if-eqz p3, :cond_4

    iget p3, p0, Lcom/miui/dock/sidebar/c;->b:I

    iput p3, p0, Lcom/miui/dock/sidebar/c;->f:I

    neg-int p3, p3

    div-int/lit8 p3, p3, 0x4

    iput p3, p0, Lcom/miui/dock/sidebar/c;->D:I

    const p3, 0x7f070ece

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/miui/dock/sidebar/c;->c:I

    :cond_4
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SidebarLineDrawable: useRoundCornerStyle = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/miui/dock/sidebar/c;->d:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/miui/dock/sidebar/c;->c:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "SidebarLineDrawable"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const p3, 0x7f070ecf

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/miui/dock/sidebar/c;->h:I

    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    iput-object p3, p0, Lcom/miui/dock/sidebar/c;->j:Landroid/graphics/Path;

    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lcom/miui/dock/sidebar/c;->a:Landroid/graphics/Paint;

    iget-boolean v0, p0, Lcom/miui/dock/sidebar/c;->p:Z

    if-eqz v0, :cond_5

    const v0, 0x7f060d1d

    goto :goto_2

    :cond_5
    const v0, 0x7f060d1f

    :goto_2
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/miui/dock/sidebar/c;->o:I

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-boolean p3, p0, Lcom/miui/dock/sidebar/c;->d:Z

    if-eqz p3, :cond_6

    iget p3, p0, Lcom/miui/dock/sidebar/c;->b:I

    iput p3, p0, Lcom/miui/dock/sidebar/c;->q:I

    goto :goto_3

    :cond_6
    const p3, 0x7f071a90

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    iput p3, p0, Lcom/miui/dock/sidebar/c;->r:I

    const p3, 0x7f071a83

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    iput p3, p0, Lcom/miui/dock/sidebar/c;->s:I

    const p3, 0x7f071a8e

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    iput p3, p0, Lcom/miui/dock/sidebar/c;->t:I

    :goto_3
    const p3, 0x7f071a8c

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/miui/dock/sidebar/c;->A:I

    const p3, 0x7f071a8a

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/miui/dock/sidebar/c;->B:I

    iget v0, p0, Lcom/miui/dock/sidebar/c;->c:I

    iget v1, p0, Lcom/miui/dock/sidebar/c;->A:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/miui/dock/sidebar/c;->x:I

    mul-int/lit8 p3, p3, 0x2

    add-int/2addr p2, p3

    iput p2, p0, Lcom/miui/dock/sidebar/c;->y:I

    const p2, 0x7f071a8d

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/miui/dock/sidebar/c;->z:I

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/miui/dock/sidebar/c;->w:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/miui/dock/sidebar/c;->v:Landroid/graphics/Path;

    iget-object p1, p0, Lcom/miui/dock/sidebar/c;->n:Landroid/content/Context;

    const p2, 0x7f060d23

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/miui/dock/sidebar/c;->C:I

    iget-object p1, p0, Lcom/miui/dock/sidebar/c;->w:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object p1, p0, Lcom/miui/dock/sidebar/c;->w:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object p1, p0, Lcom/miui/dock/sidebar/c;->w:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/miui/dock/sidebar/c;->w:Landroid/graphics/Paint;

    iget p2, p0, Lcom/miui/dock/sidebar/c;->C:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method static synthetic a(Lcom/miui/dock/sidebar/c;)I
    .locals 0

    iget p0, p0, Lcom/miui/dock/sidebar/c;->o:I

    return p0
.end method

.method static synthetic b(Lcom/miui/dock/sidebar/c;I)I
    .locals 0

    iput p1, p0, Lcom/miui/dock/sidebar/c;->o:I

    return p1
.end method

.method static synthetic c(Lcom/miui/dock/sidebar/c;)Lcom/miui/dock/sidebar/SidebarColorParams;
    .locals 0

    iget-object p0, p0, Lcom/miui/dock/sidebar/c;->E:Lcom/miui/dock/sidebar/SidebarColorParams;

    return-object p0
.end method

.method static synthetic d(Lcom/miui/dock/sidebar/c;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lcom/miui/dock/sidebar/c;->a:Landroid/graphics/Paint;

    return-object p0
.end method

.method private f(Landroid/graphics/Canvas;)V
    .locals 8

    iget-object v0, p0, Lcom/miui/dock/sidebar/c;->a:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    iget-object v1, p0, Lcom/miui/dock/sidebar/c;->w:Landroid/graphics/Paint;

    iget v2, p0, Lcom/miui/dock/sidebar/c;->C:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/miui/dock/sidebar/c;->w:Landroid/graphics/Paint;

    iget v2, p0, Lcom/miui/dock/sidebar/c;->y:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Lcom/miui/dock/sidebar/c;->v:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget v1, p0, Lcom/miui/dock/sidebar/c;->z:I

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/dock/sidebar/c;->y:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/miui/dock/sidebar/c;->m:Lcom/miui/dock/sidebar/j;

    invoke-virtual {v2}, Lcom/miui/dock/sidebar/j;->H()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v1, p0, Lcom/miui/dock/sidebar/c;->m:Lcom/miui/dock/sidebar/j;

    invoke-virtual {v1}, Lcom/miui/dock/sidebar/j;->w()Lcom/miui/dock/sidebar/RegionSamplingImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/dock/sidebar/c;->y:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/miui/dock/sidebar/c;->z:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    :cond_0
    iget-object v2, p0, Lcom/miui/dock/sidebar/c;->n:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f071d72

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iget v4, p0, Lcom/miui/dock/sidebar/c;->x:I

    int-to-float v4, v4

    div-float/2addr v4, v3

    sub-float/2addr v2, v4

    iget v4, p0, Lcom/miui/dock/sidebar/c;->y:I

    int-to-float v4, v4

    div-float/2addr v4, v3

    add-float/2addr v2, v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "line wrapper x : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", y : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "SidebarLineDrawable"

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/miui/dock/sidebar/c;->v:Landroid/graphics/Path;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v3, p0, Lcom/miui/dock/sidebar/c;->v:Landroid/graphics/Path;

    iget v6, p0, Lcom/miui/dock/sidebar/c;->x:I

    int-to-float v6, v6

    add-float/2addr v6, v2

    iget v7, p0, Lcom/miui/dock/sidebar/c;->D:I

    mul-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sub-float/2addr v6, v7

    invoke-virtual {v3, v1, v6}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v3, p0, Lcom/miui/dock/sidebar/c;->v:Landroid/graphics/Path;

    iget-object v6, p0, Lcom/miui/dock/sidebar/c;->w:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v3, p0, Lcom/miui/dock/sidebar/c;->w:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/miui/dock/sidebar/c;->w:Landroid/graphics/Paint;

    iget v3, p0, Lcom/miui/dock/sidebar/c;->l:I

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/miui/dock/sidebar/c;->v:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget v0, p0, Lcom/miui/dock/sidebar/c;->A:I

    int-to-float v0, v0

    add-float/2addr v2, v0

    iget v0, p0, Lcom/miui/dock/sidebar/c;->D:I

    int-to-float v0, v0

    sub-float/2addr v2, v0

    iget-object v0, p0, Lcom/miui/dock/sidebar/c;->v:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/miui/dock/sidebar/c;->v:Landroid/graphics/Path;

    iget v3, p0, Lcom/miui/dock/sidebar/c;->c:I

    int-to-float v3, v3

    add-float/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/miui/dock/sidebar/c;->v:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/miui/dock/sidebar/c;->w:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "inner - line wrapper x : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private l(F)F
    .locals 1

    iget-object v0, p0, Lcom/miui/dock/sidebar/c;->m:Lcom/miui/dock/sidebar/j;

    invoke-virtual {v0}, Lcom/miui/dock/sidebar/j;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p1, p0, Lcom/miui/dock/sidebar/c;->g:I

    int-to-float p1, p1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/miui/dock/sidebar/c;->m:Lcom/miui/dock/sidebar/j;

    invoke-virtual {v0}, Lcom/miui/dock/sidebar/j;->w()Lcom/miui/dock/sidebar/RegionSamplingImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, p1

    iget p1, p0, Lcom/miui/dock/sidebar/c;->g:I

    int-to-float p1, p1

    sub-float/2addr v0, p1

    return v0
.end method

.method private t()V
    .locals 8

    iget-object v0, p0, Lcom/miui/dock/sidebar/c;->j:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/miui/dock/sidebar/c;->k:Landroid/graphics/RectF;

    iget v1, p0, Lcom/miui/dock/sidebar/c;->l:I

    int-to-float v1, v1

    invoke-direct {p0, v1}, Lcom/miui/dock/sidebar/c;->l(F)F

    move-result v1

    iget v2, p0, Lcom/miui/dock/sidebar/c;->t:I

    int-to-float v2, v2

    iget v3, p0, Lcom/miui/dock/sidebar/c;->l:I

    int-to-float v3, v3

    invoke-direct {p0, v3}, Lcom/miui/dock/sidebar/c;->l(F)F

    move-result v3

    iget v4, p0, Lcom/miui/dock/sidebar/c;->l:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget v4, p0, Lcom/miui/dock/sidebar/c;->c:I

    iget v5, p0, Lcom/miui/dock/sidebar/c;->t:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-boolean v0, p0, Lcom/miui/dock/sidebar/c;->d:Z

    const-string v1, "SidebarLineDrawable"

    const/high16 v2, 0x40000000    # 2.0f

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePath: mLineRectF = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/dock/sidebar/c;->k:Landroid/graphics/RectF;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " isLeft "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/dock/sidebar/c;->m:Lcom/miui/dock/sidebar/j;

    invoke-virtual {v3}, Lcom/miui/dock/sidebar/j;->H()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/dock/sidebar/c;->j:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/miui/dock/sidebar/c;->k:Landroid/graphics/RectF;

    iget v3, p0, Lcom/miui/dock/sidebar/c;->l:I

    int-to-float v4, v3

    div-float/2addr v4, v2

    int-to-float v3, v3

    div-float/2addr v3, v2

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v4, v3, v2}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/miui/dock/sidebar/c;->a:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lcom/miui/dock/sidebar/c;->a:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/miui/dock/sidebar/c;->a:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v0, p0, Lcom/miui/dock/sidebar/c;->a:Landroid/graphics/Paint;

    iget v3, p0, Lcom/miui/dock/sidebar/c;->l:I

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iget-object v3, p0, Lcom/miui/dock/sidebar/c;->m:Lcom/miui/dock/sidebar/j;

    invoke-virtual {v3}, Lcom/miui/dock/sidebar/j;->H()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/miui/dock/sidebar/c;->j:Landroid/graphics/Path;

    iget v4, p0, Lcom/miui/dock/sidebar/c;->l:I

    neg-int v4, v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    iget v5, p0, Lcom/miui/dock/sidebar/c;->c:I

    int-to-float v5, v5

    div-float/2addr v5, v2

    iget v6, p0, Lcom/miui/dock/sidebar/c;->b:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v3, p0, Lcom/miui/dock/sidebar/c;->j:Landroid/graphics/Path;

    iget v4, p0, Lcom/miui/dock/sidebar/c;->l:I

    neg-int v4, v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    iget v5, p0, Lcom/miui/dock/sidebar/c;->b:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget v3, p0, Lcom/miui/dock/sidebar/c;->l:I

    neg-int v3, v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    iget v2, p0, Lcom/miui/dock/sidebar/c;->D:I

    int-to-float v2, v2

    iget v4, p0, Lcom/miui/dock/sidebar/c;->q:I

    mul-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget v5, p0, Lcom/miui/dock/sidebar/c;->b:I

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, p0, Lcom/miui/dock/sidebar/c;->j:Landroid/graphics/Path;

    const/high16 v3, 0x43340000    # 180.0f

    const/high16 v4, 0x41f00000    # 30.0f

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/miui/dock/sidebar/c;->getIntrinsicWidth()I

    move-result v3

    iget-object v4, p0, Lcom/miui/dock/sidebar/c;->j:Landroid/graphics/Path;

    int-to-float v3, v3

    iget v5, p0, Lcom/miui/dock/sidebar/c;->l:I

    int-to-float v5, v5

    div-float/2addr v5, v2

    add-float/2addr v5, v3

    iget v6, p0, Lcom/miui/dock/sidebar/c;->c:I

    int-to-float v6, v6

    div-float/2addr v6, v2

    iget v7, p0, Lcom/miui/dock/sidebar/c;->b:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v4, p0, Lcom/miui/dock/sidebar/c;->j:Landroid/graphics/Path;

    iget v5, p0, Lcom/miui/dock/sidebar/c;->l:I

    int-to-float v5, v5

    div-float/2addr v5, v2

    add-float/2addr v5, v3

    iget v6, p0, Lcom/miui/dock/sidebar/c;->b:I

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    iget v4, p0, Lcom/miui/dock/sidebar/c;->q:I

    neg-int v4, v4

    mul-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget v5, p0, Lcom/miui/dock/sidebar/c;->D:I

    int-to-float v5, v5

    iget v6, p0, Lcom/miui/dock/sidebar/c;->l:I

    int-to-float v6, v6

    div-float/2addr v6, v2

    add-float/2addr v3, v6

    iget v2, p0, Lcom/miui/dock/sidebar/c;->b:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v4, v5, v3, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, p0, Lcom/miui/dock/sidebar/c;->j:Landroid/graphics/Path;

    const/4 v3, 0x0

    const/high16 v4, -0x3e100000    # -30.0f

    :goto_0
    invoke-virtual {v2, v0, v3, v4}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePath: mPath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/dock/sidebar/c;->j:Landroid/graphics/Path;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " rectF = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-boolean v0, p0, Lcom/miui/dock/sidebar/c;->e:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-boolean v0, p0, Lcom/miui/dock/sidebar/c;->u:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/dock/sidebar/c;->d:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/miui/dock/sidebar/c;->f(Landroid/graphics/Canvas;)V

    :cond_1
    iget-object v0, p0, Lcom/miui/dock/sidebar/c;->j:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/miui/dock/sidebar/c;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/dock/sidebar/c;->u:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public g()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    iget v0, p0, Lcom/miui/dock/sidebar/c;->o:I

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 2

    iget-boolean v0, p0, Lcom/miui/dock/sidebar/c;->d:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/dock/sidebar/c;->c:I

    iget v1, p0, Lcom/miui/dock/sidebar/c;->f:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/miui/dock/sidebar/c;->h:I

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget v0, p0, Lcom/miui/dock/sidebar/c;->s:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 4

    iget-boolean v0, p0, Lcom/miui/dock/sidebar/c;->d:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/dock/sidebar/c;->b:I

    int-to-double v0, v0

    const-wide v2, 0x3fe0c152382d7365L    # 0.5235987755982988

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    double-to-int v0, v0

    iget v1, p0, Lcom/miui/dock/sidebar/c;->i:I

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget v0, p0, Lcom/miui/dock/sidebar/c;->r:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public h()I
    .locals 2

    iget-boolean v0, p0, Lcom/miui/dock/sidebar/c;->d:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/dock/sidebar/c;->c:I

    iget v1, p0, Lcom/miui/dock/sidebar/c;->f:I

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget v0, p0, Lcom/miui/dock/sidebar/c;->c:I

    return v0
.end method

.method public i()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/miui/dock/sidebar/c;->k:Landroid/graphics/RectF;

    return-object v0
.end method

.method public j()I
    .locals 1

    iget v0, p0, Lcom/miui/dock/sidebar/c;->t:I

    return v0
.end method

.method public k()I
    .locals 1

    iget-object v0, p0, Lcom/miui/dock/sidebar/c;->k:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-int v0, v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/miui/dock/sidebar/c;->l:I

    :goto_0
    return v0
.end method

.method public m(Landroid/graphics/RectF;F)V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/dock/sidebar/c;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/dock/sidebar/c;->j:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resize2PanelRect: targetRectF = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " targetRadius = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SidebarLineDrawable"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/dock/sidebar/c;->j:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, p1, p2, p2, v1}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public n(FF)V
    .locals 5

    iget-object v0, p0, Lcom/miui/dock/sidebar/c;->j:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    invoke-direct {p0, p1}, Lcom/miui/dock/sidebar/c;->l(F)F

    move-result v0

    iget v1, p0, Lcom/miui/dock/sidebar/c;->s:I

    int-to-float v1, v1

    sub-float/2addr v1, p2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget-object v3, p0, Lcom/miui/dock/sidebar/c;->k:Landroid/graphics/RectF;

    add-float v4, v0, p1

    add-float/2addr p2, v1

    invoke-virtual {v3, v0, v1, v4, p2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p2, p0, Lcom/miui/dock/sidebar/c;->j:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/miui/dock/sidebar/c;->k:Landroid/graphics/RectF;

    div-float/2addr p1, v2

    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p2, v0, p1, p1, v1}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "resizeSidebarLine: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/miui/dock/sidebar/c;->k:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SidebarLineDrawable"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public o(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/miui/dock/sidebar/c;->e:Z

    iget-object v0, p0, Lcom/miui/dock/sidebar/c;->a:Landroid/graphics/Paint;

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/miui/dock/sidebar/c;->o:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    invoke-direct {p0}, Lcom/miui/dock/sidebar/c;->t()V

    return-void
.end method

.method public p(Z)V
    .locals 2

    iget-object v0, p0, Lcom/miui/dock/sidebar/c;->n:Landroid/content/Context;

    if-eqz p1, :cond_0

    const v1, 0x7f060d21

    goto :goto_0

    :cond_0
    const v1, 0x7f060d22

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/miui/dock/sidebar/c;->C:I

    iget-object v0, p0, Lcom/miui/dock/sidebar/c;->n:Landroid/content/Context;

    if-eqz p1, :cond_1

    const p1, 0x7f060d1e

    goto :goto_1

    :cond_1
    const p1, 0x7f060d1f

    :goto_1
    invoke-virtual {v0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/dock/sidebar/c;->s(I)V

    invoke-static {}, Lcom/miui/dock/sidebar/a;->f()V

    return-void
.end method

.method public q()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/dock/sidebar/c;->u:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public r(F)V
    .locals 2

    iget v0, p0, Lcom/miui/dock/sidebar/c;->b:I

    iget v1, p0, Lcom/miui/dock/sidebar/c;->l:I

    sub-int v1, v0, v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int p1, v1

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/miui/dock/sidebar/c;->q:I

    invoke-direct {p0}, Lcom/miui/dock/sidebar/c;->t()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public s(I)V
    .locals 7
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/miui/dock/sidebar/c;->E:Lcom/miui/dock/sidebar/SidebarColorParams;

    iget v1, p0, Lcom/miui/dock/sidebar/c;->o:I

    invoke-virtual {v0, v1}, Lcom/miui/dock/sidebar/SidebarColorParams;->setStartColor(I)V

    iget-object v0, p0, Lcom/miui/dock/sidebar/c;->E:Lcom/miui/dock/sidebar/SidebarColorParams;

    invoke-virtual {v0, p1}, Lcom/miui/dock/sidebar/SidebarColorParams;->setEndColor(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateLineColor: from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/dock/sidebar/c;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SidebarLineDrawable"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    new-array v0, p1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/dock/sidebar/c;->E:Lcom/miui/dock/sidebar/SidebarColorParams;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v0

    new-instance v1, Lmiuix/animation/controller/AnimState;

    const-string v3, "lineColor"

    invoke-direct {v1, v3}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    const-string v4, "fraction"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/String;F)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    new-instance v5, Lmiuix/animation/controller/AnimState;

    invoke-direct {v5, v3}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v5, v4, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/String;F)Lmiuix/animation/controller/AnimState;

    move-result-object v3

    new-array v4, p1, [Lmiuix/animation/base/AnimConfig;

    new-instance v5, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v5}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array p1, p1, [Lmiuix/animation/listener/TransitionListener;

    new-instance v6, Lcom/miui/dock/sidebar/c$a;

    invoke-direct {v6, p0}, Lcom/miui/dock/sidebar/c$a;-><init>(Lcom/miui/dock/sidebar/c;)V

    aput-object v6, p1, v2

    invoke-virtual {v5, p1}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object p1

    aput-object p1, v4, v2

    invoke-interface {v0, v1, v3, v4}, Lmiuix/animation/IStateStyle;->fromTo(Ljava/lang/Object;Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/miui/dock/sidebar/c;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

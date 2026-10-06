.class public Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lcom/miui/common/ui/a$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/firstaidkit/ui/DoubleCircleAnimView$b;,
        Lcom/miui/firstaidkit/ui/DoubleCircleAnimView$a;
    }
.end annotation


# instance fields
.field private A:Landroid/animation/AnimatorSet;

.field private B:F

.field private C:F

.field private D:F

.field private E:F

.field private F:F

.field private final G:Landroid/graphics/Paint;

.field private H:Ljava/lang/String;

.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private final e:Landroid/graphics/Paint;

.field private f:Landroid/graphics/RectF;

.field private final g:Landroid/graphics/Paint;

.field private final h:Landroid/graphics/Paint;

.field private final i:Landroid/graphics/Paint;

.field private j:F

.field private k:F

.field private l:Lcom/miui/firstaidkit/ui/DoubleCircleAnimView$b;

.field private m:F

.field private n:F

.field private o:F

.field private p:F

.field private q:F

.field private r:F

.field private s:I

.field private t:I

.field private u:F

.field private v:F

.field private w:Landroid/animation/AnimatorSet;

.field private x:Lcom/miui/common/ui/a$c;

.field private y:Z

.field private z:Landroid/animation/AnimatorSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->e:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->g:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->h:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->i:Landroid/graphics/Paint;

    sget-object p1, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView$b;->a:Lcom/miui/firstaidkit/ui/DoubleCircleAnimView$b;

    iput-object p1, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->l:Lcom/miui/firstaidkit/ui/DoubleCircleAnimView$b;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->y:Z

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->E:F

    iput p1, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->F:F

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->G:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->f()V

    return-void
.end method

.method static synthetic b(Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->y:Z

    return p0
.end method

.method static synthetic c(Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;)Landroid/animation/AnimatorSet;
    .locals 0

    iget-object p0, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->z:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method private d(D)D
    .locals 2

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr p1, v0

    const-wide v0, 0x4066800000000000L    # 180.0

    div-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    return-wide p1
.end method

.method private e(D)D
    .locals 2

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr p1, v0

    const-wide v0, 0x4066800000000000L    # 180.0

    div-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p1

    return-wide p1
.end method

.method private f()V
    .locals 3

    iget-object v0, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->g:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->g:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->g:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->g:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07039c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->G:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06026c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->G:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->G:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07039e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06026b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->s:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06026a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->t:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060263

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->a:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060262

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->b:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060266

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->c:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060268

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->d:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07039d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->u:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0703a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->v:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1207f2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->H:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->y:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->y:Z

    iget-object v0, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->z:Landroid/animation/AnimatorSet;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->z:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    iput-object v1, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->z:Landroid/animation/AnimatorSet;

    :cond_0
    iget-object v0, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->A:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->A:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    iput-object v1, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->A:Landroid/animation/AnimatorSet;

    :cond_1
    iget-object v0, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->x:Lcom/miui/common/ui/a$c;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/miui/common/ui/a$c;->a()V

    :cond_2
    iget-object v0, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->w:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->w:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    iput-object v1, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->w:Landroid/animation/AnimatorSet;

    :cond_3
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->E:F

    const/high16 v1, 0x41f00000    # 30.0f

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->m:F

    iget v2, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->n:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget v0, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->B:F

    iget v1, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->C:F

    iget v2, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->D:F

    iget-object v3, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v0, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->h:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->t:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->m:F

    iget v1, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->n:F

    iget v2, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->p:F

    iget-object v3, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->e:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->d:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->m:F

    float-to-double v0, v0

    iget v2, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->p:F

    float-to-double v2, v2

    iget v4, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->E:F

    float-to-double v4, v4

    invoke-direct {p0, v4, v5}, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->d(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float v0, v0

    iget v1, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->n:F

    float-to-double v1, v1

    iget v3, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->p:F

    float-to-double v3, v3

    iget v5, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->E:F

    float-to-double v5, v5

    invoke-direct {p0, v5, v6}, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->e(D)D

    move-result-wide v5

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    double-to-float v1, v1

    iget v2, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->v:F

    iget-object v3, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->F:F

    iget v1, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->m:F

    iget v2, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->n:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v4, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->f:Landroid/graphics/RectF;

    iget v5, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->j:F

    iget v6, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->k:F

    iget-object v8, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->g:Landroid/graphics/Paint;

    const/4 v7, 0x0

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->e:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->c:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->m:F

    float-to-double v0, v0

    iget v2, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->o:F

    float-to-double v2, v2

    iget v4, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->j:F

    iget v5, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->k:F

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-direct {p0, v4, v5}, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->d(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float v0, v0

    iget v1, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->n:F

    float-to-double v1, v1

    iget v3, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->o:F

    float-to-double v3, v3

    iget v5, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->j:F

    iget v6, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->k:F

    add-float/2addr v5, v6

    float-to-double v5, v5

    invoke-direct {p0, v5, v6}, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->e(D)D

    move-result-wide v5

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    double-to-float v1, v1

    iget v2, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->u:F

    iget-object v3, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v0, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->G:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->H:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    iget v1, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->p:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    const/high16 v3, 0x42480000    # 50.0f

    sub-float/2addr v1, v3

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->G:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f071acc

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    :cond_0
    iget-object v0, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->H:Ljava/lang/String;

    iget v1, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->m:F

    iget v3, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->n:F

    iget-object v4, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->G:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->ascent()F

    move-result v4

    div-float/2addr v4, v2

    sub-float/2addr v3, v4

    iget-object v2, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->G:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->startAnim()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0711dd

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 8

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    int-to-float v3, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float p3, v3, p1

    iput p3, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->m:F

    int-to-float v4, p2

    div-float p2, v4, p1

    iput p2, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->n:F

    invoke-static {p3, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    float-to-int p2, p2

    int-to-float p2, p2

    const/high16 p3, 0x40e00000    # 7.0f

    mul-float/2addr p3, p2

    const/high16 p4, 0x41400000    # 12.0f

    div-float/2addr p3, p4

    iput p3, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->o:F

    mul-float p3, p2, p1

    const/high16 p4, 0x40400000    # 3.0f

    div-float/2addr p3, p4

    iput p3, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->p:F

    new-instance p3, Landroid/graphics/RectF;

    iget p4, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->m:F

    iget v0, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->o:F

    sub-float v1, p4, v0

    iget v2, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->n:F

    sub-float v5, v2, v0

    add-float/2addr p4, v0

    add-float/2addr v2, v0

    invoke-direct {p3, v1, v5, p4, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p3, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->f:Landroid/graphics/RectF;

    const/4 p3, 0x0

    iput p3, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->j:F

    iput p3, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->k:F

    new-instance p3, Landroid/graphics/LinearGradient;

    iget v5, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->a:I

    iget v6, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->b:I

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p3

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iget-object p4, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->g:Landroid/graphics/Paint;

    invoke-virtual {p4, p3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/high16 p3, 0x3f800000    # 1.0f

    mul-float/2addr p2, p3

    div-float/2addr p2, p1

    iput p2, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->q:F

    const p1, 0x3f19999a    # 0.6f

    mul-float/2addr p1, p2

    iput p1, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->r:F

    iget p3, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->p:F

    const p4, 0x3f4ccccd    # 0.8f

    mul-float/2addr p3, p4

    iput p3, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->D:F

    iget p4, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->m:F

    add-float/2addr p4, p2

    add-float/2addr p4, p1

    sub-float/2addr p4, p3

    iput p4, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->B:F

    iget p1, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->n:F

    iput p1, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->C:F

    new-instance p1, Landroid/graphics/RadialGradient;

    iget v1, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->B:F

    iget v2, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->C:F

    iget p2, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->D:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f07039f

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    int-to-float p3, p3

    sub-float v3, p2, p3

    iget v4, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->a:I

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFFIILandroid/graphics/Shader$TileMode;)V

    iget-object p2, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->i:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object p1, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->i:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method public release()V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->a()V

    return-void
.end method

.method public setGradientEndColor(I)V
    .locals 8

    iput p1, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->b:I

    new-instance p1, Landroid/graphics/LinearGradient;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget v5, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->a:I

    iget v6, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->b:I

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iget-object v0, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setGradientStartColor(I)V
    .locals 8

    iput p1, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->a:I

    new-instance p1, Landroid/graphics/LinearGradient;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget v5, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->a:I

    iget v6, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->b:I

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iget-object v0, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    new-instance p1, Landroid/graphics/RadialGradient;

    iget v2, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->B:F

    iget v3, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->C:F

    iget v0, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->D:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f07039f

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    sub-float v4, v0, v1

    iget v5, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->a:I

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v6, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Landroid/graphics/RadialGradient;-><init>(FFFIILandroid/graphics/Shader$TileMode;)V

    iget-object v0, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->i:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setInnerArcSweepAngle(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->j:F

    const/high16 v0, 0x43b40000    # 360.0f

    add-float/2addr p1, v0

    :goto_0
    neg-float p1, p1

    iput p1, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->k:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setInnerSweepAngle(F)V
    .locals 0

    neg-float p1, p1

    iput p1, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->F:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setInnerTinyCircleColor(I)V
    .locals 0

    iput p1, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->c:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setOnAnimOverListener(Lcom/miui/common/ui/a$c;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->x:Lcom/miui/common/ui/a$c;

    return-void
.end method

.method public setOuterSweepAngle(F)V
    .locals 0

    iput p1, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->E:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setOuterTinyCircleColor(I)V
    .locals 0

    iput p1, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->d:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setType(Lcom/miui/firstaidkit/ui/DoubleCircleAnimView$b;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->l:Lcom/miui/firstaidkit/ui/DoubleCircleAnimView$b;

    if-eq v2, v1, :cond_1

    iput-object v1, v0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->l:Lcom/miui/firstaidkit/ui/DoubleCircleAnimView$b;

    sget-object v2, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView$b;->a:Lcom/miui/firstaidkit/ui/DoubleCircleAnimView$b;

    const v3, 0x7f060269

    const v4, 0x7f060268

    const v5, 0x7f060267

    const v6, 0x7f060266

    const v7, 0x7f060264

    const v8, 0x7f060262

    const v9, 0x7f060265

    const v10, 0x7f060263

    if-ne v1, v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    move v14, v4

    move v4, v3

    move v3, v14

    move v15, v6

    move v6, v5

    move v5, v15

    move/from16 v16, v8

    move v8, v7

    move/from16 v7, v16

    :goto_0
    const/4 v9, 0x2

    new-array v10, v9, [I

    const/4 v11, 0x0

    aput v1, v10, v11

    const/4 v1, 0x1

    aput v2, v10, v1

    const-string v2, "gradientStartColor"

    invoke-static {v0, v2, v10}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v12, 0x3e8

    invoke-virtual {v2, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-instance v10, Landroid/animation/ArgbEvaluator;

    invoke-direct {v10}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v2, v10}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    new-array v10, v9, [I

    aput v7, v10, v11

    aput v8, v10, v1

    const-string v7, "gradientEndColor"

    invoke-static {v0, v7, v10}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v7, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v7

    new-instance v8, Landroid/animation/ArgbEvaluator;

    invoke-direct {v8}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    new-array v8, v9, [I

    aput v5, v8, v11

    aput v6, v8, v1

    const-string v5, "innerTinyCircleColor"

    invoke-static {v0, v5, v8}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v5, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    new-instance v6, Landroid/animation/ArgbEvaluator;

    invoke-direct {v6}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    new-array v6, v9, [I

    aput v3, v6, v11

    aput v4, v6, v1

    const-string v3, "outerTinyCircleColor"

    invoke-static {v0, v3, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v3, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-instance v4, Landroid/animation/ArgbEvaluator;

    invoke-direct {v4}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, v0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->w:Landroid/animation/AnimatorSet;

    const/4 v6, 0x4

    new-array v6, v6, [Landroid/animation/Animator;

    aput-object v2, v6, v11

    aput-object v7, v6, v1

    aput-object v5, v6, v9

    const/4 v1, 0x3

    aput-object v3, v6, v1

    invoke-virtual {v4, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v1, v0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->w:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    :cond_1
    return-void
.end method

.method public startAnim()V
    .locals 7

    iget-boolean v0, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->y:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->y:Z

    iget-object v1, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->z:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->z:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    iget-object v1, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->A:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->A:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const-string v3, "innerArcSweepAngle"

    invoke-static {p0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v4, 0x5dc

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-instance v6, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v6}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v6, v1, [F

    fill-array-data v6, :array_1

    invoke-static {p0, v3, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->z:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v2, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->z:Landroid/animation/AnimatorSet;

    new-instance v3, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView$a;

    invoke-direct {v3, p0}, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView$a;-><init>(Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v2, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->z:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    new-array v2, v1, [F

    fill-array-data v2, :array_2

    const-string v3, "innerSweepAngle"

    invoke-static {p0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v3, 0x708

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v4, v1, [F

    fill-array-data v4, :array_3

    const-string v5, "outerSweepAngle"

    invoke-static {p0, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-wide/16 v5, 0x7d0

    invoke-virtual {v4, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    invoke-virtual {v4, v3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v4, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->A:Landroid/animation/AnimatorSet;

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object v2, v1, v5

    aput-object v4, v1, v0

    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/miui/firstaidkit/ui/DoubleCircleAnimView;->A:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_2
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data

    :array_1
    .array-data 4
        -0x40800000    # -1.0f
        -0x3c4c0000    # -360.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x43b38000    # 359.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x43b38000    # 359.0f
    .end array-data
.end method

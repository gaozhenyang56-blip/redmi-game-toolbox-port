.class public Lcom/miui/applicationlock/widget/LockPatternView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/applicationlock/widget/LockPatternView$SavedState;,
        Lcom/miui/applicationlock/widget/LockPatternView$d;,
        Lcom/miui/applicationlock/widget/LockPatternView$c;,
        Lcom/miui/applicationlock/widget/LockPatternView$b;
    }
.end annotation


# instance fields
.field private A:I

.field private final B:Landroid/graphics/Matrix;

.field private final C:Landroid/graphics/Matrix;

.field private D:Z

.field private E:Z

.field private F:I

.field private G:I

.field private H:Z

.field private I:F

.field private J:Landroid/util/TypedValue;

.field private a:Z

.field private b:Landroid/graphics/Paint;

.field private c:Landroid/graphics/Paint;

.field private d:Landroid/graphics/Paint;

.field private e:Lcom/miui/applicationlock/widget/LockPatternView$d;

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/applicationlock/widget/LockPatternView$b;",
            ">;"
        }
    .end annotation
.end field

.field private g:[[Z

.field private h:F

.field private i:F

.field private j:J

.field private k:Lcom/miui/applicationlock/widget/LockPatternView$c;

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:F

.field private q:I

.field private r:F

.field private s:F

.field private t:F

.field private u:Landroid/graphics/Bitmap;

.field private v:Landroid/graphics/Bitmap;

.field private final w:Landroid/graphics/Path;

.field private final x:Landroid/graphics/Rect;

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->a:Z

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/miui/applicationlock/widget/LockPatternView;->b:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/miui/applicationlock/widget/LockPatternView;->c:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/miui/applicationlock/widget/LockPatternView;->d:Landroid/graphics/Paint;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/miui/applicationlock/widget/LockPatternView;->f:Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Z

    iput-object v1, p0, Lcom/miui/applicationlock/widget/LockPatternView;->g:[[Z

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/miui/applicationlock/widget/LockPatternView;->h:F

    iput v1, p0, Lcom/miui/applicationlock/widget/LockPatternView;->i:F

    sget-object v1, Lcom/miui/applicationlock/widget/LockPatternView$c;->a:Lcom/miui/applicationlock/widget/LockPatternView$c;

    iput-object v1, p0, Lcom/miui/applicationlock/widget/LockPatternView;->k:Lcom/miui/applicationlock/widget/LockPatternView$c;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/applicationlock/widget/LockPatternView;->l:Z

    iput-boolean v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->m:Z

    iput-boolean v1, p0, Lcom/miui/applicationlock/widget/LockPatternView;->n:Z

    iput-boolean v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->o:Z

    const v0, 0x3d4ccccd    # 0.05f

    iput v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->p:F

    const/16 v0, 0x40

    iput v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->q:I

    const v0, 0x3f19999a    # 0.6f

    iput v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->r:F

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->w:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->x:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->B:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->C:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070495

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->I:F

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->J:Landroid/util/TypedValue;

    invoke-direct {p0, p1, p2}, Lcom/miui/applicationlock/widget/LockPatternView;->t(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setClickable(Z)V

    iget-object p1, p0, Lcom/miui/applicationlock/widget/LockPatternView;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/miui/applicationlock/widget/LockPatternView;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object p1, p0, Lcom/miui/applicationlock/widget/LockPatternView;->c:Landroid/graphics/Paint;

    iget p2, p0, Lcom/miui/applicationlock/widget/LockPatternView;->q:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p1, p0, Lcom/miui/applicationlock/widget/LockPatternView;->c:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/miui/applicationlock/widget/LockPatternView;->c:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object p1, p0, Lcom/miui/applicationlock/widget/LockPatternView;->c:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object p1, p0, Lcom/miui/applicationlock/widget/LockPatternView;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/miui/applicationlock/widget/LockPatternView;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object p1, p0, Lcom/miui/applicationlock/widget/LockPatternView;->d:Landroid/graphics/Paint;

    iget p2, p0, Lcom/miui/applicationlock/widget/LockPatternView;->q:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p1, p0, Lcom/miui/applicationlock/widget/LockPatternView;->d:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/miui/applicationlock/widget/LockPatternView;->d:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object p1, p0, Lcom/miui/applicationlock/widget/LockPatternView;->d:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    const p1, 0x7f120cd3

    invoke-direct {p0, p1}, Lcom/miui/applicationlock/widget/LockPatternView;->A(I)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3
        0x3
    .end array-data
.end method

.method private A(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    return-void
.end method

.method private B(II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    return-void
.end method

.method private a(Lcom/miui/applicationlock/widget/LockPatternView$b;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->g:[[Z

    invoke-virtual {p1}, Lcom/miui/applicationlock/widget/LockPatternView$b;->d()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p1}, Lcom/miui/applicationlock/widget/LockPatternView$b;->c()I

    move-result v1

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    iget-object v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/miui/applicationlock/widget/LockPatternView$b;->d()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    invoke-virtual {p1}, Lcom/miui/applicationlock/widget/LockPatternView$b;->c()I

    move-result p1

    add-int/2addr v0, p1

    add-int/2addr v0, v2

    invoke-direct {p0, v0}, Lcom/miui/applicationlock/widget/LockPatternView;->u(I)V

    return-void
.end method

.method private b(FF)Lcom/miui/applicationlock/widget/LockPatternView$b;
    .locals 2

    invoke-direct {p0, p2}, Lcom/miui/applicationlock/widget/LockPatternView;->n(F)I

    move-result p2

    const/4 v0, 0x0

    if-gez p2, :cond_0

    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/applicationlock/widget/LockPatternView;->l(F)I

    move-result p1

    if-gez p1, :cond_1

    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/miui/applicationlock/widget/LockPatternView;->g:[[Z

    aget-object v1, v1, p2

    aget-boolean v1, v1, p1

    if-eqz v1, :cond_2

    return-object v0

    :cond_2
    invoke-static {p2, p1}, Lcom/miui/applicationlock/widget/LockPatternView$b;->e(II)Lcom/miui/applicationlock/widget/LockPatternView$b;

    move-result-object p1

    return-object p1
.end method

.method private d()V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    move v3, v0

    :goto_1
    if-ge v3, v2, :cond_0

    iget-object v4, p0, Lcom/miui/applicationlock/widget/LockPatternView;->g:[[Z

    aget-object v4, v4, v1

    aput-boolean v0, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private e(FF)Lcom/miui/applicationlock/widget/LockPatternView$b;
    .locals 8

    invoke-direct {p0, p1, p2}, Lcom/miui/applicationlock/widget/LockPatternView;->b(FF)Lcom/miui/applicationlock/widget/LockPatternView$b;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, v2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/applicationlock/widget/LockPatternView$b;

    invoke-virtual {p1}, Lcom/miui/applicationlock/widget/LockPatternView$b;->d()I

    move-result v0

    invoke-virtual {p2}, Lcom/miui/applicationlock/widget/LockPatternView$b;->d()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/miui/applicationlock/widget/LockPatternView$b;->c()I

    move-result v1

    invoke-virtual {p2}, Lcom/miui/applicationlock/widget/LockPatternView$b;->c()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {p2}, Lcom/miui/applicationlock/widget/LockPatternView$b;->d()I

    move-result v3

    invoke-virtual {p2}, Lcom/miui/applicationlock/widget/LockPatternView$b;->c()I

    move-result v4

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v5

    const/4 v6, -0x1

    const/4 v7, 0x2

    if-ne v5, v7, :cond_1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-eq v5, v2, :cond_1

    invoke-virtual {p2}, Lcom/miui/applicationlock/widget/LockPatternView$b;->d()I

    move-result v3

    if-lez v0, :cond_0

    move v5, v2

    goto :goto_0

    :cond_0
    move v5, v6

    :goto_0
    add-int/2addr v3, v5

    :cond_1
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ne v5, v7, :cond_3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-eq v0, v2, :cond_3

    invoke-virtual {p2}, Lcom/miui/applicationlock/widget/LockPatternView$b;->c()I

    move-result p2

    if-lez v1, :cond_2

    move v6, v2

    :cond_2
    add-int v4, p2, v6

    :cond_3
    invoke-static {v3, v4}, Lcom/miui/applicationlock/widget/LockPatternView$b;->e(II)Lcom/miui/applicationlock/widget/LockPatternView$b;

    move-result-object p2

    :cond_4
    if-eqz p2, :cond_5

    iget-object v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->g:[[Z

    invoke-virtual {p2}, Lcom/miui/applicationlock/widget/LockPatternView$b;->d()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p2}, Lcom/miui/applicationlock/widget/LockPatternView$b;->c()I

    move-result v1

    aget-boolean v0, v0, v1

    if-nez v0, :cond_5

    invoke-direct {p0, p2}, Lcom/miui/applicationlock/widget/LockPatternView;->a(Lcom/miui/applicationlock/widget/LockPatternView$b;)V

    :cond_5
    invoke-direct {p0, p1}, Lcom/miui/applicationlock/widget/LockPatternView;->a(Lcom/miui/applicationlock/widget/LockPatternView$b;)V

    iget-boolean p2, p0, Lcom/miui/applicationlock/widget/LockPatternView;->n:Z

    if-eqz p2, :cond_6

    const/4 p2, 0x3

    invoke-virtual {p0, v2, p2}, Landroid/view/View;->performHapticFeedback(II)Z

    :cond_6
    return-object p1

    :cond_7
    return-object p2
.end method

.method private g(Landroid/graphics/Canvas;IIZII)V
    .locals 4

    if-eqz p4, :cond_4

    iget-boolean p4, p0, Lcom/miui/applicationlock/widget/LockPatternView;->m:Z

    if-eqz p4, :cond_0

    iget-object p4, p0, Lcom/miui/applicationlock/widget/LockPatternView;->k:Lcom/miui/applicationlock/widget/LockPatternView$c;

    sget-object p5, Lcom/miui/applicationlock/widget/LockPatternView$c;->c:Lcom/miui/applicationlock/widget/LockPatternView$c;

    if-eq p4, p5, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean p4, p0, Lcom/miui/applicationlock/widget/LockPatternView;->o:Z

    if-eqz p4, :cond_1

    goto :goto_0

    :cond_1
    iget-object p4, p0, Lcom/miui/applicationlock/widget/LockPatternView;->k:Lcom/miui/applicationlock/widget/LockPatternView$c;

    sget-object p5, Lcom/miui/applicationlock/widget/LockPatternView$c;->c:Lcom/miui/applicationlock/widget/LockPatternView$c;

    if-ne p4, p5, :cond_2

    iget-object p4, p0, Lcom/miui/applicationlock/widget/LockPatternView;->v:Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_2
    sget-object p5, Lcom/miui/applicationlock/widget/LockPatternView$c;->a:Lcom/miui/applicationlock/widget/LockPatternView$c;

    if-eq p4, p5, :cond_4

    sget-object p5, Lcom/miui/applicationlock/widget/LockPatternView$c;->b:Lcom/miui/applicationlock/widget/LockPatternView$c;

    if-ne p4, p5, :cond_3

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "unknown display mode "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/miui/applicationlock/widget/LockPatternView;->k:Lcom/miui/applicationlock/widget/LockPatternView$c;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_0
    iget-object p4, p0, Lcom/miui/applicationlock/widget/LockPatternView;->u:Landroid/graphics/Bitmap;

    :goto_1
    iget-boolean p5, p0, Lcom/miui/applicationlock/widget/LockPatternView;->D:Z

    if-eqz p5, :cond_5

    iget-object p4, p0, Lcom/miui/applicationlock/widget/LockPatternView;->v:Landroid/graphics/Bitmap;

    :cond_5
    iget p5, p0, Lcom/miui/applicationlock/widget/LockPatternView;->s:F

    iget p6, p0, Lcom/miui/applicationlock/widget/LockPatternView;->t:F

    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->I:F

    invoke-direct {p0, p4, v0, v0}, Lcom/miui/applicationlock/widget/LockPatternView;->m(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object p4

    goto :goto_3

    :cond_6
    invoke-static {}, Lx4/t;->r()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c000a

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c000c

    :goto_2
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0, p4, v0, v1}, Lcom/miui/applicationlock/widget/LockPatternView;->m(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object p4

    :goto_3
    if-eqz p4, :cond_8

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p5, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p5, v0

    float-to-int p5, p5

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr p6, v1

    div-float/2addr p6, v0

    float-to-int p6, p6

    iget v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->s:F

    iget v1, p0, Lcom/miui/applicationlock/widget/LockPatternView;->y:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v2, p0, Lcom/miui/applicationlock/widget/LockPatternView;->t:F

    iget v3, p0, Lcom/miui/applicationlock/widget/LockPatternView;->z:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget-object v2, p0, Lcom/miui/applicationlock/widget/LockPatternView;->C:Landroid/graphics/Matrix;

    add-int/2addr p2, p5

    int-to-float p2, p2

    add-int/2addr p3, p6

    int-to-float p3, p3

    invoke-virtual {v2, p2, p3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object p2, p0, Lcom/miui/applicationlock/widget/LockPatternView;->C:Landroid/graphics/Matrix;

    iget p3, p0, Lcom/miui/applicationlock/widget/LockPatternView;->y:I

    div-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    iget p5, p0, Lcom/miui/applicationlock/widget/LockPatternView;->z:I

    div-int/lit8 p5, p5, 0x2

    int-to-float p5, p5

    invoke-virtual {p2, p3, p5}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget-object p2, p0, Lcom/miui/applicationlock/widget/LockPatternView;->C:Landroid/graphics/Matrix;

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    iget-object p2, p0, Lcom/miui/applicationlock/widget/LockPatternView;->C:Landroid/graphics/Matrix;

    iget p3, p0, Lcom/miui/applicationlock/widget/LockPatternView;->y:I

    neg-int p3, p3

    div-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    iget p5, p0, Lcom/miui/applicationlock/widget/LockPatternView;->z:I

    neg-int p5, p5

    div-int/lit8 p5, p5, 0x2

    int-to-float p5, p5

    invoke-virtual {p2, p3, p5}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget-object p2, p0, Lcom/miui/applicationlock/widget/LockPatternView;->C:Landroid/graphics/Matrix;

    iget-object p3, p0, Lcom/miui/applicationlock/widget/LockPatternView;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, p4, p2, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :cond_8
    return-void
.end method

.method private i(I)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, -0x1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private j(I)F
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    int-to-float p1, p1

    iget v1, p0, Lcom/miui/applicationlock/widget/LockPatternView;->s:F

    mul-float/2addr p1, v1

    add-float/2addr v0, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr v1, p1

    add-float/2addr v0, v1

    return v0
.end method

.method private k(I)F
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    int-to-float v0, v0

    int-to-float p1, p1

    iget v1, p0, Lcom/miui/applicationlock/widget/LockPatternView;->t:F

    mul-float/2addr p1, v1

    add-float/2addr v0, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr v1, p1

    add-float/2addr v0, v1

    return v0
.end method

.method private l(F)I
    .locals 6

    iget v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->s:F

    iget v1, p0, Lcom/miui/applicationlock/widget/LockPatternView;->r:F

    mul-float/2addr v1, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float v3, v0, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x3

    if-ge v3, v4, :cond_1

    int-to-float v4, v3

    mul-float/2addr v4, v0

    add-float/2addr v4, v2

    cmpl-float v5, p1, v4

    if-ltz v5, :cond_0

    add-float/2addr v4, v1

    cmpg-float v4, p1, v4

    if-gtz v4, :cond_0

    return v3

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private m(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;
    .locals 7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v0, v3

    div-float/2addr p2, v0

    int-to-float v0, v4

    div-float/2addr p3, v0

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v5, p2, p3}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private n(F)I
    .locals 6

    iget v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->t:F

    iget v1, p0, Lcom/miui/applicationlock/widget/LockPatternView;->r:F

    mul-float/2addr v1, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    sub-float v3, v0, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x3

    if-ge v3, v4, :cond_1

    int-to-float v4, v3

    mul-float/2addr v4, v0

    add-float/2addr v4, v2

    cmpl-float v5, p1, v4

    if-ltz v5, :cond_0

    add-float/2addr v4, v1

    cmpg-float v4, p1, v4

    if-gtz v4, :cond_0

    return v3

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private o(Landroid/view/MotionEvent;)V
    .locals 2

    invoke-direct {p0}, Lcom/miui/applicationlock/widget/LockPatternView;->y()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/miui/applicationlock/widget/LockPatternView;->e(FF)Lcom/miui/applicationlock/widget/LockPatternView$b;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/applicationlock/widget/LockPatternView;->o:Z

    sget-object v1, Lcom/miui/applicationlock/widget/LockPatternView$c;->a:Lcom/miui/applicationlock/widget/LockPatternView$c;

    iput-object v1, p0, Lcom/miui/applicationlock/widget/LockPatternView;->k:Lcom/miui/applicationlock/widget/LockPatternView$c;

    invoke-direct {p0}, Lcom/miui/applicationlock/widget/LockPatternView;->x()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/miui/applicationlock/widget/LockPatternView;->o:Z

    invoke-direct {p0}, Lcom/miui/applicationlock/widget/LockPatternView;->v()V

    :goto_0
    iput v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->h:F

    iput p1, p0, Lcom/miui/applicationlock/widget/LockPatternView;->i:F

    return-void
.end method

.method private p(Landroid/view/MotionEvent;)V
    .locals 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, v0, 0x1

    if-ge v1, v2, :cond_4

    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v2

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    :goto_1
    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v3

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    :goto_2
    invoke-direct {p0, v2, v3}, Lcom/miui/applicationlock/widget/LockPatternView;->e(FF)Lcom/miui/applicationlock/widget/LockPatternView$b;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/applicationlock/widget/LockPatternView;->f:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    if-ne v5, v4, :cond_2

    iput-boolean v4, p0, Lcom/miui/applicationlock/widget/LockPatternView;->o:Z

    invoke-direct {p0}, Lcom/miui/applicationlock/widget/LockPatternView;->x()V

    :cond_2
    iget v4, p0, Lcom/miui/applicationlock/widget/LockPatternView;->h:F

    sub-float v4, v2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/miui/applicationlock/widget/LockPatternView;->i:F

    sub-float v5, v3, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    add-float/2addr v4, v5

    iget v5, p0, Lcom/miui/applicationlock/widget/LockPatternView;->s:F

    const v6, 0x3c23d70a    # 0.01f

    mul-float/2addr v5, v6

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3

    iput v2, p0, Lcom/miui/applicationlock/widget/LockPatternView;->h:F

    iput v3, p0, Lcom/miui/applicationlock/widget/LockPatternView;->i:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private q(Landroid/view/MotionEvent;)V
    .locals 0

    iget-object p1, p0, Lcom/miui/applicationlock/widget/LockPatternView;->f:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/applicationlock/widget/LockPatternView;->o:Z

    invoke-direct {p0}, Lcom/miui/applicationlock/widget/LockPatternView;->w()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method private r(Landroid/content/Context;)Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.view.accessibility.AccessibilityManager"

    invoke-static {v1}, Lbh/d$a;->d(Ljava/lang/String;)Lbh/d$a;

    move-result-object v1

    const-string v2, "getInstance"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-virtual {v1, v2, v4, v3}, Lbh/d$a;->c(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lbh/d$a;

    move-result-object p1

    invoke-virtual {p1}, Lbh/d$a;->l()Lbh/d$a;

    move-result-object p1

    const-string v1, "isTouchExplorationEnabled"

    const/4 v2, 0x0

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v2, v3}, Lbh/d$a;->b(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lbh/d$a;

    move-result-object p1

    invoke-virtual {p1}, Lbh/d$a;->a()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method private t(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    sget-object v0, Lef/y;->W1:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "square"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    :cond_0
    iput v3, p0, Lcom/miui/applicationlock/widget/LockPatternView;->A:I

    goto :goto_0

    :cond_1
    const-string v1, "lock_width"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iput v2, p0, Lcom/miui/applicationlock/widget/LockPatternView;->A:I

    goto :goto_0

    :cond_2
    const-string v1, "lock_height"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iput p2, p0, Lcom/miui/applicationlock/widget/LockPatternView;->A:I

    goto :goto_0

    :cond_3
    const-string v1, "fixed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    iput v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->A:I

    :goto_0
    iget-object v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->c:Landroid/graphics/Paint;

    const/16 v1, 0xc

    const/4 v4, -0x1

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->d:Landroid/graphics/Paint;

    const/16 v1, 0xe

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v0, 0xb

    const v1, 0x3dcccccd    # 0.1f

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->p:F

    const/16 v0, 0xd

    const/16 v1, 0x80

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->q:I

    const/4 v0, 0x7

    invoke-virtual {p1, v0, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/applicationlock/widget/LockPatternView;->i(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->u:Landroid/graphics/Bitmap;

    const/4 v0, 0x5

    invoke-virtual {p1, v0, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-ne v4, v0, :cond_4

    iget-object v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->u:Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_4
    invoke-direct {p0, v0}, Lcom/miui/applicationlock/widget/LockPatternView;->i(I)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->v:Landroid/graphics/Bitmap;

    new-array v0, p2, [Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/miui/applicationlock/widget/LockPatternView;->v:Landroid/graphics/Bitmap;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/miui/applicationlock/widget/LockPatternView;->u:Landroid/graphics/Bitmap;

    aput-object v1, v0, v2

    :goto_2
    if-ge v3, p2, :cond_6

    aget-object v1, v0, v3

    if-eqz v1, :cond_5

    iget v2, p0, Lcom/miui/applicationlock/widget/LockPatternView;->y:I

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/miui/applicationlock/widget/LockPatternView;->y:I

    iget v2, p0, Lcom/miui/applicationlock/widget/LockPatternView;->z:I

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/miui/applicationlock/widget/LockPatternView;->z:I

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private u(I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->e:Lcom/miui/applicationlock/widget/LockPatternView$d;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/applicationlock/widget/LockPatternView;->f:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/miui/applicationlock/widget/LockPatternView$d;->c(Ljava/util/List;)V

    :cond_0
    const v0, 0x7f120cd0

    invoke-direct {p0, v0, p1}, Lcom/miui/applicationlock/widget/LockPatternView;->B(II)V

    return-void
.end method

.method private v()V
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->e:Lcom/miui/applicationlock/widget/LockPatternView$d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/miui/applicationlock/widget/LockPatternView$d;->b()V

    :cond_0
    const v0, 0x7f120cd1

    invoke-direct {p0, v0}, Lcom/miui/applicationlock/widget/LockPatternView;->A(I)V

    return-void
.end method

.method private w()V
    .locals 2

    iget-object v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->e:Lcom/miui/applicationlock/widget/LockPatternView$d;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/applicationlock/widget/LockPatternView;->f:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/miui/applicationlock/widget/LockPatternView$d;->a(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private x()V
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->e:Lcom/miui/applicationlock/widget/LockPatternView$d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/miui/applicationlock/widget/LockPatternView$d;->d()V

    :cond_0
    const v0, 0x7f120cd3

    invoke-direct {p0, v0}, Lcom/miui/applicationlock/widget/LockPatternView;->A(I)V

    return-void
.end method

.method private y()V
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Lcom/miui/applicationlock/widget/LockPatternView;->d()V

    sget-object v0, Lcom/miui/applicationlock/widget/LockPatternView$c;->a:Lcom/miui/applicationlock/widget/LockPatternView$c;

    iput-object v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->k:Lcom/miui/applicationlock/widget/LockPatternView$c;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private z(II)I
    .locals 2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    const/high16 v1, -0x80000000

    if-eq p1, v1, :cond_0

    if-eqz p1, :cond_1

    move p2, v0

    goto :goto_0

    :cond_0
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    :cond_1
    :goto_0
    return p2
.end method


# virtual methods
.method public c()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/applicationlock/widget/LockPatternView;->y()V

    return-void
.end method

.method public f(Z)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/applicationlock/widget/LockPatternView;->l:Z

    return-void
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 1

    iget v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->y:I

    mul-int/lit8 v0, v0, 0x3

    return v0
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 1

    iget v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->y:I

    mul-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public h(Z)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/applicationlock/widget/LockPatternView;->l:Z

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 23

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    iget-object v9, v7, Lcom/miui/applicationlock/widget/LockPatternView;->f:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    iget-object v11, v7, Lcom/miui/applicationlock/widget/LockPatternView;->g:[[Z

    iget-object v0, v7, Lcom/miui/applicationlock/widget/LockPatternView;->k:Lcom/miui/applicationlock/widget/LockPatternView$c;

    sget-object v1, Lcom/miui/applicationlock/widget/LockPatternView$c;->b:Lcom/miui/applicationlock/widget/LockPatternView$c;

    const/4 v13, 0x1

    if-ne v0, v1, :cond_3

    add-int/lit8 v0, v10, 0x1

    mul-int/lit16 v0, v0, 0x2bc

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, v7, Lcom/miui/applicationlock/widget/LockPatternView;->j:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    rem-int/2addr v1, v0

    div-int/lit16 v0, v1, 0x2bc

    invoke-direct/range {p0 .. p0}, Lcom/miui/applicationlock/widget/LockPatternView;->d()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/applicationlock/widget/LockPatternView$b;

    invoke-virtual {v3}, Lcom/miui/applicationlock/widget/LockPatternView$b;->d()I

    move-result v4

    aget-object v4, v11, v4

    invoke-virtual {v3}, Lcom/miui/applicationlock/widget/LockPatternView$b;->c()I

    move-result v3

    aput-boolean v13, v4, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-lez v0, :cond_1

    if-ge v0, v10, :cond_1

    move v2, v13

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_2

    rem-int/lit16 v1, v1, 0x2bc

    int-to-float v1, v1

    const/high16 v2, 0x442f0000    # 700.0f

    div-float/2addr v1, v2

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/applicationlock/widget/LockPatternView$b;

    invoke-virtual {v2}, Lcom/miui/applicationlock/widget/LockPatternView$b;->c()I

    move-result v3

    invoke-direct {v7, v3}, Lcom/miui/applicationlock/widget/LockPatternView;->j(I)F

    move-result v3

    invoke-virtual {v2}, Lcom/miui/applicationlock/widget/LockPatternView$b;->d()I

    move-result v2

    invoke-direct {v7, v2}, Lcom/miui/applicationlock/widget/LockPatternView;->k(I)F

    move-result v2

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/applicationlock/widget/LockPatternView$b;

    invoke-virtual {v0}, Lcom/miui/applicationlock/widget/LockPatternView$b;->c()I

    move-result v4

    invoke-direct {v7, v4}, Lcom/miui/applicationlock/widget/LockPatternView;->j(I)F

    move-result v4

    sub-float/2addr v4, v3

    mul-float/2addr v4, v1

    invoke-virtual {v0}, Lcom/miui/applicationlock/widget/LockPatternView$b;->d()I

    move-result v0

    invoke-direct {v7, v0}, Lcom/miui/applicationlock/widget/LockPatternView;->k(I)F

    move-result v0

    sub-float/2addr v0, v2

    mul-float/2addr v1, v0

    add-float/2addr v3, v4

    iput v3, v7, Lcom/miui/applicationlock/widget/LockPatternView;->h:F

    add-float/2addr v2, v1

    iput v2, v7, Lcom/miui/applicationlock/widget/LockPatternView;->i:F

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    :cond_3
    iget v14, v7, Lcom/miui/applicationlock/widget/LockPatternView;->s:F

    iget v15, v7, Lcom/miui/applicationlock/widget/LockPatternView;->t:F

    iget v0, v7, Lcom/miui/applicationlock/widget/LockPatternView;->p:F

    mul-float/2addr v0, v14

    iget-object v1, v7, Lcom/miui/applicationlock/widget/LockPatternView;->c:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, v7, Lcom/miui/applicationlock/widget/LockPatternView;->d:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v6, v7, Lcom/miui/applicationlock/widget/LockPatternView;->w:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->rewind()V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    const/4 v3, 0x0

    :goto_2
    const/4 v2, 0x3

    if-ge v3, v2, :cond_5

    int-to-float v0, v5

    int-to-float v1, v3

    mul-float/2addr v1, v15

    add-float/2addr v1, v0

    const/4 v0, 0x0

    :goto_3
    if-ge v0, v2, :cond_4

    int-to-float v2, v4

    int-to-float v12, v0

    mul-float/2addr v12, v14

    add-float/2addr v2, v12

    float-to-int v2, v2

    float-to-int v12, v1

    aget-object v18, v11, v3

    aget-boolean v18, v18, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v20, v1

    move-object/from16 v1, p1

    const/16 v16, 0x3

    move/from16 v21, v3

    move v3, v12

    move v12, v4

    move/from16 v4, v18

    move/from16 v18, v5

    move/from16 v5, v21

    move-object/from16 v22, v6

    move/from16 v6, v19

    invoke-direct/range {v0 .. v6}, Lcom/miui/applicationlock/widget/LockPatternView;->g(Landroid/graphics/Canvas;IIZII)V

    add-int/lit8 v0, v19, 0x1

    move v4, v12

    move/from16 v2, v16

    move/from16 v5, v18

    move/from16 v1, v20

    move/from16 v3, v21

    move-object/from16 v6, v22

    goto :goto_3

    :cond_4
    move/from16 v21, v3

    move v12, v4

    move/from16 v18, v5

    move-object/from16 v22, v6

    add-int/lit8 v3, v21, 0x1

    goto :goto_2

    :cond_5
    move-object/from16 v22, v6

    iget-boolean v0, v7, Lcom/miui/applicationlock/widget/LockPatternView;->m:Z

    if-eqz v0, :cond_7

    iget-object v0, v7, Lcom/miui/applicationlock/widget/LockPatternView;->k:Lcom/miui/applicationlock/widget/LockPatternView$c;

    sget-object v1, Lcom/miui/applicationlock/widget/LockPatternView$c;->c:Lcom/miui/applicationlock/widget/LockPatternView$c;

    if-ne v0, v1, :cond_6

    goto :goto_4

    :cond_6
    const/4 v0, 0x0

    goto :goto_5

    :cond_7
    :goto_4
    move v0, v13

    :goto_5
    iget-object v1, v7, Lcom/miui/applicationlock/widget/LockPatternView;->b:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_8

    move v1, v13

    goto :goto_6

    :cond_8
    const/4 v1, 0x0

    :goto_6
    iget-object v2, v7, Lcom/miui/applicationlock/widget/LockPatternView;->b:Landroid/graphics/Paint;

    invoke-virtual {v2, v13}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    if-eqz v0, :cond_f

    const/4 v12, 0x0

    const/16 v17, 0x0

    :goto_7
    if-ge v12, v10, :cond_b

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/applicationlock/widget/LockPatternView$b;

    invoke-virtual {v0}, Lcom/miui/applicationlock/widget/LockPatternView$b;->d()I

    move-result v2

    aget-object v2, v11, v2

    invoke-virtual {v0}, Lcom/miui/applicationlock/widget/LockPatternView$b;->c()I

    move-result v3

    aget-boolean v2, v2, v3

    if-nez v2, :cond_9

    goto :goto_9

    :cond_9
    invoke-virtual {v0}, Lcom/miui/applicationlock/widget/LockPatternView$b;->c()I

    move-result v2

    invoke-direct {v7, v2}, Lcom/miui/applicationlock/widget/LockPatternView;->j(I)F

    move-result v2

    invoke-virtual {v0}, Lcom/miui/applicationlock/widget/LockPatternView$b;->d()I

    move-result v0

    invoke-direct {v7, v0}, Lcom/miui/applicationlock/widget/LockPatternView;->k(I)F

    move-result v0

    move-object/from16 v3, v22

    if-nez v12, :cond_a

    invoke-virtual {v3, v2, v0}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_8

    :cond_a
    invoke-virtual {v3, v2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_8
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v22, v3

    move/from16 v17, v13

    goto :goto_7

    :cond_b
    :goto_9
    move-object/from16 v3, v22

    iget-boolean v0, v7, Lcom/miui/applicationlock/widget/LockPatternView;->o:Z

    if-nez v0, :cond_c

    iget-object v0, v7, Lcom/miui/applicationlock/widget/LockPatternView;->k:Lcom/miui/applicationlock/widget/LockPatternView$c;

    sget-object v2, Lcom/miui/applicationlock/widget/LockPatternView$c;->b:Lcom/miui/applicationlock/widget/LockPatternView$c;

    if-ne v0, v2, :cond_d

    :cond_c
    if-eqz v17, :cond_d

    iget v0, v7, Lcom/miui/applicationlock/widget/LockPatternView;->h:F

    iget v2, v7, Lcom/miui/applicationlock/widget/LockPatternView;->i:F

    invoke-virtual {v3, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_d
    iget-object v0, v7, Lcom/miui/applicationlock/widget/LockPatternView;->k:Lcom/miui/applicationlock/widget/LockPatternView$c;

    sget-object v2, Lcom/miui/applicationlock/widget/LockPatternView$c;->c:Lcom/miui/applicationlock/widget/LockPatternView$c;

    if-eq v0, v2, :cond_e

    iget-object v0, v7, Lcom/miui/applicationlock/widget/LockPatternView;->c:Landroid/graphics/Paint;

    goto :goto_a

    :cond_e
    iget-object v0, v7, Lcom/miui/applicationlock/widget/LockPatternView;->d:Landroid/graphics/Paint;

    :goto_a
    invoke-virtual {v8, v3, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_f
    iget-object v0, v7, Lcom/miui/applicationlock/widget/LockPatternView;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/applicationlock/widget/LockPatternView;->r(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    :goto_1
    invoke-virtual {p0, p1}, Lcom/miui/applicationlock/widget/LockPatternView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    :cond_3
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onMeasure(II)V
    .locals 4

    invoke-static {}, Lcom/miui/common/e;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lx4/g;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/miui/applicationlock/widget/LockPatternView;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/applicationlock/widget/LockPatternView;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-direct {p0, p1, v0}, Lcom/miui/applicationlock/widget/LockPatternView;->z(II)I

    move-result p1

    invoke-direct {p0, p2, v1}, Lcom/miui/applicationlock/widget/LockPatternView;->z(II)I

    move-result p2

    iget v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->A:I

    if-eqz v0, :cond_b

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    const/4 v2, 0x2

    if-eq v0, v2, :cond_9

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    goto/16 :goto_5

    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget p2, p0, Lcom/miui/applicationlock/widget/LockPatternView;->G:I

    if-nez p2, :cond_2

    move p2, v1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f07022d

    iget-object v3, p0, Lcom/miui/applicationlock/widget/LockPatternView;->J:Landroid/util/TypedValue;

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    iget-object v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->J:Landroid/util/TypedValue;

    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    iget-boolean v2, p0, Lcom/miui/applicationlock/widget/LockPatternView;->H:Z

    if-nez v2, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v3, 0x780

    if-gt v2, v3, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f07022f

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f07022e

    :goto_1
    iget-object v3, p0, Lcom/miui/applicationlock/widget/LockPatternView;->J:Landroid/util/TypedValue;

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    iget-object v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->J:Landroid/util/TypedValue;

    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ratio "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " loadDefaultDimen "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " maxWidth "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LockPatternView"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, La8/k2;->v(Landroid/content/Context;)I

    move-result p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sreenWidth:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x5a0

    const/16 v3, 0x438

    if-le p2, v1, :cond_5

    move p2, v3

    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lc3/f;->O(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_2

    :cond_6
    move v3, p2

    :goto_2
    int-to-float p2, v3

    mul-float/2addr p2, v0

    float-to-int p2, p2

    move v0, p2

    goto :goto_3

    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iget v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->G:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/miui/applicationlock/widget/LockPatternView;->F:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "viewWidth:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " viewHeight:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-gt p2, p1, :cond_c

    if-nez p2, :cond_8

    goto :goto_4

    :cond_8
    move p1, p2

    move p2, v0

    goto :goto_5

    :cond_9
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_5

    :cond_a
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_5

    :cond_b
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    :cond_c
    :goto_4
    move p2, p1

    :goto_5
    invoke-static {}, Lx4/t;->p()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lc3/f;->O(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0701bc

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    :cond_d
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    int-to-float p1, p1

    const/high16 p3, 0x40400000    # 3.0f

    div-float/2addr p1, p3

    iput p1, p0, Lcom/miui/applicationlock/widget/LockPatternView;->s:F

    int-to-float p1, p2

    div-float/2addr p1, p3

    iput p1, p0, Lcom/miui/applicationlock/widget/LockPatternView;->t:F

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-boolean v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->l:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    return v1

    :cond_1
    invoke-direct {p0}, Lcom/miui/applicationlock/widget/LockPatternView;->y()V

    iput-boolean v1, p0, Lcom/miui/applicationlock/widget/LockPatternView;->o:Z

    invoke-direct {p0}, Lcom/miui/applicationlock/widget/LockPatternView;->v()V

    return v2

    :cond_2
    invoke-direct {p0, p1}, Lcom/miui/applicationlock/widget/LockPatternView;->p(Landroid/view/MotionEvent;)V

    return v2

    :cond_3
    invoke-direct {p0, p1}, Lcom/miui/applicationlock/widget/LockPatternView;->q(Landroid/view/MotionEvent;)V

    return v2

    :cond_4
    invoke-direct {p0, p1}, Lcom/miui/applicationlock/widget/LockPatternView;->o(Landroid/view/MotionEvent;)V

    return v2

    :cond_5
    :goto_0
    return v1
.end method

.method public s()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->l:Z

    return v0
.end method

.method public setAppPage(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/applicationlock/widget/LockPatternView;->E:Z

    return-void
.end method

.method public setDisplayMode(Lcom/miui/applicationlock/widget/LockPatternView$c;)V
    .locals 2

    iput-object p1, p0, Lcom/miui/applicationlock/widget/LockPatternView;->k:Lcom/miui/applicationlock/widget/LockPatternView$c;

    sget-object v0, Lcom/miui/applicationlock/widget/LockPatternView$c;->b:Lcom/miui/applicationlock/widget/LockPatternView$c;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/miui/applicationlock/widget/LockPatternView;->f:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->j:J

    iget-object p1, p0, Lcom/miui/applicationlock/widget/LockPatternView;->f:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/applicationlock/widget/LockPatternView$b;

    invoke-virtual {p1}, Lcom/miui/applicationlock/widget/LockPatternView$b;->c()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/applicationlock/widget/LockPatternView;->j(I)F

    move-result v0

    iput v0, p0, Lcom/miui/applicationlock/widget/LockPatternView;->h:F

    invoke-virtual {p1}, Lcom/miui/applicationlock/widget/LockPatternView$b;->d()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/miui/applicationlock/widget/LockPatternView;->k(I)F

    move-result p1

    iput p1, p0, Lcom/miui/applicationlock/widget/LockPatternView;->i:F

    invoke-direct {p0}, Lcom/miui/applicationlock/widget/LockPatternView;->d()V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "you must have a pattern to animate if you want to set the display mode to animate"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setInStealthMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/applicationlock/widget/LockPatternView;->m:Z

    return-void
.end method

.method public setLightMode(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iput-boolean p1, p0, Lcom/miui/applicationlock/widget/LockPatternView;->D:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setOnPatternListener(Lcom/miui/applicationlock/widget/LockPatternView$d;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/widget/LockPatternView;->e:Lcom/miui/applicationlock/widget/LockPatternView$d;

    return-void
.end method

.method public setResetPage(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/applicationlock/widget/LockPatternView;->H:Z

    return-void
.end method

.method public setTactileFeedbackEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/applicationlock/widget/LockPatternView;->n:Z

    return-void
.end method

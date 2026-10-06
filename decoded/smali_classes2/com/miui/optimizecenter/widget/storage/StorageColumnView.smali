.class public Lcom/miui/optimizecenter/widget/storage/StorageColumnView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/optimizecenter/widget/storage/StorageColumnView$b;,
        Lcom/miui/optimizecenter/widget/storage/StorageColumnView$d;,
        Lcom/miui/optimizecenter/widget/storage/StorageColumnView$a;,
        Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Z

.field private j:J

.field private k:Lcom/miui/optimizecenter/widget/storage/StorageColumnView$a;

.field private l:Lcom/miui/optimizecenter/widget/storage/StorageColumnView$a;

.field private m:Landroid/graphics/PorterDuffXfermode;

.field private n:Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;

.field private o:Lcom/miui/optimizecenter/widget/storage/StorageColumnView$d;

.field private p:Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;

.field private q:Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;

.field private r:Z

.field private s:Landroid/graphics/Paint;

.field private t:Landroid/graphics/Point;

.field private u:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/miui/optimizecenter/widget/storage/a;",
            "Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;",
            ">;"
        }
    .end annotation
.end field

.field private v:Lcom/miui/optimizecenter/widget/storage/StorageColumnView$b;

.field private w:Z

.field private x:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/miui/optimizecenter/widget/storage/a;",
            ">;"
        }
    .end annotation
.end field

.field private y:Z

.field private z:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p2, 0x50

    iput p2, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->a:I

    const/16 p2, 0x3c

    iput p2, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->b:I

    const/16 p2, 0x32

    iput p2, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->c:I

    const/16 p2, 0x574

    iput p2, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->d:I

    const/16 p2, 0x14e

    iput p2, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->e:I

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->i:Z

    const/4 p3, 0x0

    iput-object p3, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->p:Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;

    iput-object p3, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->q:Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->s:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->t:Landroid/graphics/Point;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->u:Ljava/util/HashMap;

    iput-boolean p2, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->w:Z

    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->x:Ljava/util/Set;

    invoke-direct {p0, p1}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->q(Landroid/content/Context;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1c

    if-lt p1, p2, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    invoke-virtual {p0, p1, p3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method static synthetic a(Lcom/miui/optimizecenter/widget/storage/StorageColumnView;)I
    .locals 0

    iget p0, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->c:I

    return p0
.end method

.method static synthetic b(Lcom/miui/optimizecenter/widget/storage/StorageColumnView;)Landroid/graphics/PorterDuffXfermode;
    .locals 0

    iget-object p0, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->m:Landroid/graphics/PorterDuffXfermode;

    return-object p0
.end method

.method static synthetic c(Lcom/miui/optimizecenter/widget/storage/StorageColumnView;)I
    .locals 0

    iget p0, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->a:I

    return p0
.end method

.method static synthetic d(Lcom/miui/optimizecenter/widget/storage/StorageColumnView;)I
    .locals 0

    iget p0, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->e:I

    return p0
.end method

.method static synthetic e(Lcom/miui/optimizecenter/widget/storage/StorageColumnView;)I
    .locals 0

    iget p0, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->d:I

    return p0
.end method

.method static synthetic f(Lcom/miui/optimizecenter/widget/storage/StorageColumnView;)I
    .locals 0

    iget p0, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->b:I

    return p0
.end method

.method static synthetic g(Lcom/miui/optimizecenter/widget/storage/StorageColumnView;)Z
    .locals 0

    invoke-direct {p0}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->r()Z

    move-result p0

    return p0
.end method

.method static synthetic h(Lcom/miui/optimizecenter/widget/storage/StorageColumnView;)Lcom/miui/optimizecenter/widget/storage/StorageColumnView$a;
    .locals 0

    iget-object p0, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->l:Lcom/miui/optimizecenter/widget/storage/StorageColumnView$a;

    return-object p0
.end method

.method static synthetic i(Lcom/miui/optimizecenter/widget/storage/StorageColumnView;)Lcom/miui/optimizecenter/widget/storage/StorageColumnView$a;
    .locals 0

    iget-object p0, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->k:Lcom/miui/optimizecenter/widget/storage/StorageColumnView$a;

    return-object p0
.end method

.method static synthetic j(Lcom/miui/optimizecenter/widget/storage/StorageColumnView;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->s:Landroid/graphics/Paint;

    return-object p0
.end method

.method private k(FF)Z
    .locals 7

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->p:Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;

    sget-object v0, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->o:[Lcom/miui/optimizecenter/widget/storage/a;

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    move v2, v1

    :goto_0
    const/4 v3, 0x0

    if-ltz v0, :cond_3

    iget-object v4, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->u:Ljava/util/HashMap;

    sget-object v5, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->o:[Lcom/miui/optimizecenter/widget/storage/a;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    float-to-int v5, p1

    float-to-int v6, p2

    invoke-virtual {v4, v5, v6, v2}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->i(IIZ)Z

    move-result v5

    if-eqz v5, :cond_1

    iput-object v4, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->p:Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;

    return v1

    :cond_1
    invoke-virtual {v4}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->l()Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    return v3
.end method

.method private static l(I)Landroid/graphics/Bitmap;
    .locals 4

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v1}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v3, p0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v2, p0}, Landroid/graphics/Canvas;->drawColor(I)V

    return-object v0
.end method

.method private m(Landroid/view/MotionEvent;)V
    .locals 5

    iget-object v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->t:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->k(FF)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->r:Z

    iget-object v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->v:Lcom/miui/optimizecenter/widget/storage/StorageColumnView$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->p:Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->g()Landroid/graphics/Point;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->v:Lcom/miui/optimizecenter/widget/storage/StorageColumnView$b;

    iget-object v2, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->p:Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;

    invoke-static {v2}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->a(Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;)Lcom/miui/optimizecenter/widget/storage/a;

    move-result-object v2

    iget v3, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v4

    add-int/2addr v3, v4

    iget v0, v0, Landroid/graphics/Point;->y:I

    add-int/lit8 v0, v0, 0x7

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v4

    add-int/2addr v0, v4

    invoke-interface {v1, p1, v2, v3, v0}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$b;->b(Landroid/view/MotionEvent;Lcom/miui/optimizecenter/widget/storage/a;II)V

    iget-object p1, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->k:Lcom/miui/optimizecenter/widget/storage/StorageColumnView$a;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$a;->d(Z)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private n(Z)Z
    .locals 5

    iget-object v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->p:Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;

    iget-object v1, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->t:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-direct {p0, v2, v1}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->k(FF)Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->r:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    iget-object p1, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->v:Lcom/miui/optimizecenter/widget/storage/StorageColumnView$b;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0, v0}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$b;->a(Lcom/miui/optimizecenter/widget/storage/a;II)V

    :cond_0
    iget-object p1, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->k:Lcom/miui/optimizecenter/widget/storage/StorageColumnView$a;

    invoke-virtual {p1, v0}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$a;->d(Z)V

    :goto_0
    move p1, v2

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->p:Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;

    if-eqz v1, :cond_3

    if-eq v1, v0, :cond_3

    iput-object v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->q:Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;

    invoke-virtual {v1}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->g()Landroid/graphics/Point;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->v:Lcom/miui/optimizecenter/widget/storage/StorageColumnView$b;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->p:Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;

    invoke-static {v1}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->a(Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;)Lcom/miui/optimizecenter/widget/storage/a;

    move-result-object v1

    iget v3, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v4

    add-int/2addr v3, v4

    iget p1, p1, Landroid/graphics/Point;->y:I

    add-int/lit8 p1, p1, 0x7

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v4

    add-int/2addr p1, v4

    invoke-interface {v0, v1, v3, p1}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$b;->a(Lcom/miui/optimizecenter/widget/storage/a;II)V

    :cond_2
    iget-object p1, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->l:Lcom/miui/optimizecenter/widget/storage/StorageColumnView$a;

    invoke-virtual {p1, v2}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$a;->d(Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->p:Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->g()Landroid/graphics/Point;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->v:Lcom/miui/optimizecenter/widget/storage/StorageColumnView$b;

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->p:Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;

    invoke-static {v2}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->a(Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;)Lcom/miui/optimizecenter/widget/storage/a;

    move-result-object v2

    iget v3, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v4

    add-int/2addr v3, v4

    iget v0, v0, Landroid/graphics/Point;->y:I

    add-int/lit8 v0, v0, 0x7

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v4

    add-int/2addr v0, v4

    invoke-interface {v1, v2, v3, v0}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$b;->a(Lcom/miui/optimizecenter/widget/storage/a;II)V

    :cond_4
    :goto_1
    return p1
.end method

.method private o(Landroid/view/MotionEvent;)Z
    .locals 8

    iget-object v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->t:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    iget-boolean v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->r:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->p:Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->k(FF)Z

    move-result v2

    iput-boolean v2, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->r:Z

    const/4 v3, 0x0

    if-nez v2, :cond_2

    iget-object v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->v:Lcom/miui/optimizecenter/widget/storage/StorageColumnView$b;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, v1, v3, v3}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$b;->b(Landroid/view/MotionEvent;Lcom/miui/optimizecenter/widget/storage/a;II)V

    :cond_1
    iget-object p1, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->k:Lcom/miui/optimizecenter/widget/storage/StorageColumnView$a;

    invoke-virtual {p1, v3}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$a;->d(Z)V

    iput-object v1, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->q:Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->p:Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;

    if-ne v2, v0, :cond_3

    return v3

    :cond_3
    if-eqz v2, :cond_5

    if-eqz v0, :cond_5

    invoke-virtual {v2}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->g()Landroid/graphics/Point;

    move-result-object v2

    iget-object v4, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->v:Lcom/miui/optimizecenter/widget/storage/StorageColumnView$b;

    if-eqz v4, :cond_4

    iget-object v5, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->p:Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;

    invoke-static {v5}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->a(Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;)Lcom/miui/optimizecenter/widget/storage/a;

    move-result-object v5

    iget v6, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v7

    add-int/2addr v6, v7

    iget v2, v2, Landroid/graphics/Point;->y:I

    add-int/lit8 v2, v2, 0x7

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v7

    add-int/2addr v2, v7

    invoke-interface {v4, p1, v5, v6, v2}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$b;->b(Landroid/view/MotionEvent;Lcom/miui/optimizecenter/widget/storage/a;II)V

    :cond_4
    iput-object v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->q:Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;

    iget-object p1, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->l:Lcom/miui/optimizecenter/widget/storage/StorageColumnView$a;

    invoke-virtual {p1, v1}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$a;->d(Z)V

    :cond_5
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v3
.end method

.method private p()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->z:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->z:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->n:Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;

    invoke-virtual {v1, v0}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->b(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private q(Landroid/content/Context;)V
    .locals 10

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f071b9a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->a:I

    const v1, 0x7f071b9b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->b:I

    const v1, 0x7f071b95

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->c:I

    const v1, 0x7f071bd1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->e:I

    const v1, 0x7f071b93

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->f:I

    const v2, 0x7f071e78

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->d:I

    iget v1, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->f:I

    iput v1, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->g:I

    new-instance v1, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$a;

    const v2, 0x7f060d84

    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->c(Landroid/content/Context;I)I

    move-result v3

    invoke-static {v3}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->l(I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$a;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->k:Lcom/miui/optimizecenter/widget/storage/StorageColumnView$a;

    new-instance v1, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$a;

    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->c(Landroid/content/Context;I)I

    move-result p1

    invoke-static {p1}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->l(I)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$a;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->l:Lcom/miui/optimizecenter/widget/storage/StorageColumnView$a;

    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object p1, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->m:Landroid/graphics/PorterDuffXfermode;

    iget p1, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->f:I

    div-int/lit8 p1, p1, 0x2

    new-instance v1, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;

    sget-object v2, Lcom/miui/optimizecenter/widget/storage/a;->g:Lcom/miui/optimizecenter/widget/storage/a;

    invoke-direct {v1, p0, v2, v0}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;-><init>(Lcom/miui/optimizecenter/widget/storage/StorageColumnView;Lcom/miui/optimizecenter/widget/storage/a;Landroid/content/res/Resources;)V

    iput-object v1, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->n:Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;

    iget v2, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->g:I

    iget v3, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->b:I

    iget v4, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->a:I

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->d:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->t(IIII)V

    sget-object v1, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->o:[Lcom/miui/optimizecenter/widget/storage/a;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    iget-object v6, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->u:Ljava/util/HashMap;

    new-instance v7, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;

    invoke-direct {v7, p0, v5, v0}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;-><init>(Lcom/miui/optimizecenter/widget/storage/StorageColumnView;Lcom/miui/optimizecenter/widget/storage/a;Landroid/content/res/Resources;)V

    invoke-virtual {v6, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$d;

    iget v2, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->e:I

    div-int/lit8 v2, v2, 0x2

    iget v4, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->g:I

    invoke-direct {v1, v0, v2, v4}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$d;-><init>(Landroid/content/res/Resources;II)V

    iput-object v1, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->o:Lcom/miui/optimizecenter/widget/storage/StorageColumnView$d;

    iget-object v1, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->n:Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;

    iget v2, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->g:I

    const v4, 0x7f071b92

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sub-int/2addr v2, v0

    iget v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->g:I

    invoke-virtual {v1, v2, v0}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->r(II)Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->q(J)Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;

    move-result-object v0

    const-wide/16 v4, 0x28a

    invoke-virtual {v0, v4, v5}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->p(J)Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->s(J)Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;

    move-result-object v0

    const/16 v6, 0x28a

    const/16 v7, 0xff

    invoke-virtual {v0, v3, v7, v6}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->o(III)Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;

    const/4 v0, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->t(ZJ)V

    move v0, v3

    :goto_1
    sget-object v6, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->o:[Lcom/miui/optimizecenter/widget/storage/a;

    array-length v8, v6

    if-ge v0, v8, :cond_2

    iget-object v8, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->u:Ljava/util/HashMap;

    aget-object v6, v6, v0

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;

    if-nez v6, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v8, p1, -0x64

    mul-int/lit8 v9, v0, 0x3c

    sub-int/2addr v8, v9

    invoke-virtual {v6}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->e()I

    move-result v9

    invoke-virtual {v6, v8, v9}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->r(II)Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;

    move-result-object v6

    mul-int/lit8 v8, v0, 0x32

    invoke-virtual {v6, v3, v7, v8}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->o(III)Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->q(J)Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->p(J)Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;

    move-result-object v6

    int-to-long v8, v8

    invoke-virtual {v6, v8, v9}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->s(J)Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    :goto_3
    sget-object p1, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->o:[Lcom/miui/optimizecenter/widget/storage/a;

    array-length v0, p1

    if-ge v3, v0, :cond_4

    iget-object v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->u:Ljava/util/HashMap;

    aget-object p1, p1, v3

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;

    if-nez p1, :cond_3

    goto :goto_4

    :cond_3
    invoke-virtual {p1}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->m()V

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method

.method private r()Z
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private s(Ljava/util/Map;F)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/miui/optimizecenter/widget/storage/a;",
            "Ljava/lang/Integer;",
            ">;F)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->u:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->u(I)Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private t(ZJ)V
    .locals 17

    move-object/from16 v0, p0

    move-wide/from16 v7, p2

    const/4 v9, 0x1

    if-nez p1, :cond_0

    iget-object v1, v0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->n:Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;

    invoke-virtual {v1, v7, v8, v9}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->w(JZ)V

    iget-object v1, v0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->o:Lcom/miui/optimizecenter/widget/storage/StorageColumnView$d;

    invoke-virtual {v1, v7, v8}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$d;->b(J)V

    :cond_0
    iget-object v1, v0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->k:Lcom/miui/optimizecenter/widget/storage/StorageColumnView$a;

    invoke-virtual {v1, v7, v8}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$a;->e(J)Z

    move-result v10

    iget-object v1, v0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->l:Lcom/miui/optimizecenter/widget/storage/StorageColumnView$a;

    invoke-virtual {v1, v7, v8}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$a;->e(J)Z

    move-result v11

    const/4 v12, 0x0

    const/4 v1, 0x0

    move v3, v9

    move v2, v12

    move v13, v2

    :goto_0
    sget-object v4, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->o:[Lcom/miui/optimizecenter/widget/storage/a;

    array-length v5, v4

    if-ge v13, v5, :cond_6

    iget-object v5, v0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->u:Ljava/util/HashMap;

    aget-object v6, v4, v13

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v14, v5

    check-cast v14, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;

    if-nez v14, :cond_1

    goto :goto_5

    :cond_1
    invoke-virtual {v14}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->k()Z

    move-result v5

    xor-int/2addr v5, v9

    or-int v15, v2, v5

    invoke-virtual {v14}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->j()Z

    move-result v2

    and-int v16, v3, v2

    if-eqz p1, :cond_5

    if-nez v1, :cond_2

    iget-object v2, v0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->n:Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;

    invoke-virtual {v2}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->e()I

    move-result v2

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->h()I

    move-result v2

    :goto_1
    if-nez v1, :cond_3

    iget v1, v0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->a:I

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->f()I

    move-result v1

    :goto_2
    move v3, v1

    iget-object v1, v0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->x:Ljava/util/Set;

    if-eqz v1, :cond_4

    aget-object v4, v4, v13

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v6, v9

    goto :goto_3

    :cond_4
    move v6, v12

    :goto_3
    move-object v1, v14

    move-wide/from16 v4, p2

    invoke-virtual/range {v1 .. v6}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->x(IIJZ)V

    goto :goto_4

    :cond_5
    invoke-virtual {v14, v7, v8, v12}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->w(JZ)V

    :goto_4
    move-object v1, v14

    move v2, v15

    move/from16 v3, v16

    :goto_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_6
    iget-boolean v1, v0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->r:Z

    if-eqz v1, :cond_7

    invoke-direct {v0, v12}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->n(Z)Z

    move-result v12

    :cond_7
    iput-boolean v3, v0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->i:Z

    iput-boolean v3, v0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->w:Z

    if-nez v2, :cond_9

    if-eqz v3, :cond_9

    if-nez v10, :cond_9

    if-nez v12, :cond_9

    if-eqz v11, :cond_8

    goto :goto_6

    :cond_8
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->j:J

    goto :goto_7

    :cond_9
    :goto_6
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->postInvalidate()V

    :goto_7
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->y:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->k(FF)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->y:Z

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getShowStyle()I
    .locals 1

    iget v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->h:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->j:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iput-wide v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->j:J

    :cond_0
    iget-wide v2, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->j:J

    sub-long v2, v0, v2

    iput-wide v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->j:J

    iget-object v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->z:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->s:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4, v4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->o:Lcom/miui/optimizecenter/widget/storage/StorageColumnView$d;

    invoke-virtual {v0, p1}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$d;->a(Landroid/graphics/Canvas;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v4, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->o:[Lcom/miui/optimizecenter/widget/storage/a;

    array-length v5, v4

    if-ge v1, v5, :cond_6

    iget-object v5, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->u:Ljava/util/HashMap;

    aget-object v4, v4, v1

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;

    if-nez v4, :cond_1

    goto :goto_5

    :cond_1
    iget-boolean v5, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->r:Z

    const/4 v6, 0x1

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->k:Lcom/miui/optimizecenter/widget/storage/StorageColumnView$a;

    invoke-virtual {v5}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$a;->c()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    move v5, v0

    goto :goto_2

    :cond_3
    :goto_1
    move v5, v6

    :goto_2
    iget-object v7, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->p:Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;

    if-eqz v7, :cond_4

    invoke-static {v7}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->a(Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;)Lcom/miui/optimizecenter/widget/storage/a;

    move-result-object v7

    invoke-static {v4}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->a(Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;)Lcom/miui/optimizecenter/widget/storage/a;

    move-result-object v8

    if-ne v7, v8, :cond_4

    move v7, v6

    goto :goto_3

    :cond_4
    move v7, v0

    :goto_3
    iget-object v8, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->q:Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;

    if-eqz v8, :cond_5

    invoke-static {v8}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->a(Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;)Lcom/miui/optimizecenter/widget/storage/a;

    move-result-object v8

    invoke-static {v4}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->a(Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;)Lcom/miui/optimizecenter/widget/storage/a;

    move-result-object v9

    if-ne v8, v9, :cond_5

    iget-object v8, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->l:Lcom/miui/optimizecenter/widget/storage/StorageColumnView$a;

    invoke-virtual {v8}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$a;->c()Z

    move-result v8

    if-eqz v8, :cond_5

    goto :goto_4

    :cond_5
    move v6, v0

    :goto_4
    invoke-virtual {v4, p1, v5, v7, v6}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->c(Landroid/graphics/Canvas;ZZZ)V

    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    iget-boolean p1, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->i:Z

    invoke-direct {p0, p1, v2, v3}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->t(ZJ)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    iget p1, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->e:I

    iget p2, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->g:I

    iget v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->a:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    invoke-direct {p0}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->p()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-boolean v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->w:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->o(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_2
    iget-object v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->t:Landroid/graphics/Point;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Point;->set(II)V

    iget-boolean v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->r:Z

    if-nez v0, :cond_3

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_3
    iget-object v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->v:Lcom/miui/optimizecenter/widget/storage/StorageColumnView$b;

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    invoke-interface {v0, p1, v3, v2, v2}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$b;->b(Landroid/view/MotionEvent;Lcom/miui/optimizecenter/widget/storage/a;II)V

    :cond_4
    iget-object p1, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->k:Lcom/miui/optimizecenter/widget/storage/StorageColumnView$a;

    invoke-virtual {p1, v2}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$a;->d(Z)V

    iput-object v3, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->q:Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;

    iput-boolean v2, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->r:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_5
    invoke-direct {p0, p1}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->m(Landroid/view/MotionEvent;)V

    :cond_6
    :goto_0
    return v1
.end method

.method public setCanClick(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->w:Z

    return-void
.end method

.method public setOnItemEventListener(Lcom/miui/optimizecenter/widget/storage/StorageColumnView$b;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->v:Lcom/miui/optimizecenter/widget/storage/StorageColumnView$b;

    return-void
.end method

.method public setScanFinished(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/miui/optimizecenter/widget/storage/a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->x:Ljava/util/Set;

    return-void
.end method

.method public setShowStyle(I)V
    .locals 0

    iput p1, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->h:I

    return-void
.end method

.method public u(Leb/a;)V
    .locals 11

    invoke-virtual {p1}, Leb/a;->m()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    return-void

    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sget-object v3, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->o:[Lcom/miui/optimizecenter/widget/storage/a;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    const/high16 v6, 0x3f800000    # 1.0f

    if-ltz v3, :cond_4

    iget-object v7, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->u:Ljava/util/HashMap;

    sget-object v8, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->o:[Lcom/miui/optimizecenter/widget/storage/a;

    aget-object v9, v8, v3

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;

    if-nez v7, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v7}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->a(Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;)Lcom/miui/optimizecenter/widget/storage/a;

    move-result-object v9

    iget v10, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->h:I

    invoke-virtual {p1, v9, v10}, Leb/a;->i(Lcom/miui/optimizecenter/widget/storage/a;I)J

    move-result-wide v9

    long-to-float v9, v9

    iget v10, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->d:I

    int-to-float v10, v10

    mul-float/2addr v10, v9

    mul-float/2addr v10, v6

    long-to-float v6, v0

    div-float/2addr v10, v6

    float-to-int v6, v10

    iget v10, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->c:I

    if-ge v6, v10, :cond_2

    move v6, v10

    :cond_2
    iget-object v10, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->x:Ljava/util/Set;

    if-eqz v10, :cond_3

    aget-object v8, v8, v3

    invoke-interface {v10, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v8, 0x0

    cmpl-float v8, v9, v8

    if-nez v8, :cond_3

    move v6, v4

    :cond_3
    add-int/2addr v5, v6

    invoke-static {v7}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->a(Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;)Lcom/miui/optimizecenter/widget/storage/a;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_4
    iget p1, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->d:I

    if-le v5, p1, :cond_5

    int-to-float p1, p1

    int-to-float v0, v5

    div-float v6, p1, v0

    :cond_5
    invoke-direct {p0, v2, v6}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->s(Ljava/util/Map;F)V

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.class public Lcom/miui/securityscan/ui/main/BallView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/securityscan/ui/main/BallView$e;,
        Lcom/miui/securityscan/ui/main/BallView$d;,
        Lcom/miui/securityscan/ui/main/BallView$b;,
        Lcom/miui/securityscan/ui/main/BallView$a;,
        Lcom/miui/securityscan/ui/main/BallView$c;
    }
.end annotation


# instance fields
.field private a:Landroid/graphics/Point;

.field private b:I

.field private c:I

.field private d:Landroid/graphics/Paint;

.field private e:I

.field private f:Z

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/securityscan/ui/main/BallView$a;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/Random;

.field private j:Lcom/miui/securityscan/ui/main/BallView$c;

.field private k:Landroid/graphics/LinearGradient;

.field private l:Landroid/graphics/LinearGradient;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/securityscan/ui/main/BallView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/graphics/Point;

    const/4 p3, 0x0

    invoke-direct {p1, p3, p3}, Landroid/graphics/Point;-><init>(II)V

    iput-object p1, p0, Lcom/miui/securityscan/ui/main/BallView;->a:Landroid/graphics/Point;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/securityscan/ui/main/BallView;->g:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/securityscan/ui/main/BallView;->h:Ljava/util/List;

    new-instance p1, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/util/Random;-><init>(J)V

    iput-object p1, p0, Lcom/miui/securityscan/ui/main/BallView;->i:Ljava/util/Random;

    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/miui/securityscan/ui/main/BallView;->d:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v1, Lef/y;->G:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/securityscan/ui/main/BallView;->b:I

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/miui/securityscan/ui/main/BallView;->c:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    iget-object p1, p0, Lcom/miui/securityscan/ui/main/BallView;->a:Landroid/graphics/Point;

    iget p2, p0, Lcom/miui/securityscan/ui/main/BallView;->b:I

    div-int/lit8 p2, p2, 0x2

    iput p2, p1, Landroid/graphics/Point;->x:I

    iget p2, p0, Lcom/miui/securityscan/ui/main/BallView;->c:I

    div-int/lit8 p2, p2, 0x2

    iput p2, p1, Landroid/graphics/Point;->y:I

    sget-object p1, Lcom/miui/securityscan/ui/main/BallView$c;->a:Lcom/miui/securityscan/ui/main/BallView$c;

    iput-object p1, p0, Lcom/miui/securityscan/ui/main/BallView;->j:Lcom/miui/securityscan/ui/main/BallView$c;

    invoke-direct {p0}, Lcom/miui/securityscan/ui/main/BallView;->i()V

    invoke-direct {p0}, Lcom/miui/securityscan/ui/main/BallView;->h()V

    invoke-direct {p0}, Lcom/miui/securityscan/ui/main/BallView;->g()V

    return-void
.end method

.method static synthetic a(Lcom/miui/securityscan/ui/main/BallView;)Landroid/graphics/Point;
    .locals 0

    iget-object p0, p0, Lcom/miui/securityscan/ui/main/BallView;->a:Landroid/graphics/Point;

    return-object p0
.end method

.method static synthetic b(Lcom/miui/securityscan/ui/main/BallView;)Lcom/miui/securityscan/ui/main/BallView$c;
    .locals 0

    iget-object p0, p0, Lcom/miui/securityscan/ui/main/BallView;->j:Lcom/miui/securityscan/ui/main/BallView$c;

    return-object p0
.end method

.method static synthetic c(Lcom/miui/securityscan/ui/main/BallView;F)F
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/securityscan/ui/main/BallView;->e(F)F

    move-result p0

    return p0
.end method

.method static synthetic d(Lcom/miui/securityscan/ui/main/BallView;F)F
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/securityscan/ui/main/BallView;->f(F)F

    move-result p0

    return p0
.end method

.method private e(F)F
    .locals 1

    new-instance v0, Lcom/miui/securityscan/ui/main/BallView$d;

    invoke-direct {v0, p0}, Lcom/miui/securityscan/ui/main/BallView$d;-><init>(Lcom/miui/securityscan/ui/main/BallView;)V

    invoke-virtual {v0, p1}, Lcom/miui/securityscan/ui/main/BallView$d;->getInterpolation(F)F

    move-result p1

    return p1
.end method

.method private f(F)F
    .locals 1

    new-instance v0, Lcom/miui/securityscan/ui/main/BallView$e;

    invoke-direct {v0, p0}, Lcom/miui/securityscan/ui/main/BallView$e;-><init>(Lcom/miui/securityscan/ui/main/BallView;)V

    invoke-virtual {v0, p1}, Lcom/miui/securityscan/ui/main/BallView$e;->getInterpolation(F)F

    move-result p1

    return p1
.end method

.method private g()V
    .locals 11

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/BallView;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/miui/securityscan/ui/main/BallView;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    new-instance v2, Lcom/miui/securityscan/ui/main/BallView$a;

    invoke-direct {v2, p0}, Lcom/miui/securityscan/ui/main/BallView$a;-><init>(Lcom/miui/securityscan/ui/main/BallView;)V

    iget-object v3, p0, Lcom/miui/securityscan/ui/main/BallView;->i:Ljava/util/Random;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/miui/securityscan/ui/main/BallView$a;->q(F)V

    iget-object v3, p0, Lcom/miui/securityscan/ui/main/BallView;->i:Ljava/util/Random;

    const/16 v4, 0x82

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lcom/miui/securityscan/ui/main/BallView$a;->r(J)V

    iget-object v3, p0, Lcom/miui/securityscan/ui/main/BallView;->i:Ljava/util/Random;

    const/16 v4, 0x12c

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/lit16 v3, v3, 0x640

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lcom/miui/securityscan/ui/main/BallView$a;->o(J)V

    rem-int/lit8 v3, v1, 0x4

    const/16 v4, 0x43

    const/16 v5, 0x75

    const/16 v6, 0xfe

    const/16 v7, 0xf5

    const/16 v8, 0x73

    if-nez v3, :cond_0

    new-instance v3, Lcom/miui/securityscan/ui/main/BallView$b;

    const/16 v9, 0xff

    invoke-direct {v3, v9, v0, v8, v7}, Lcom/miui/securityscan/ui/main/BallView$b;-><init>(IIII)V

    invoke-virtual {v2, v3}, Lcom/miui/securityscan/ui/main/BallView$a;->k(Lcom/miui/securityscan/ui/main/BallView$b;)V

    new-instance v3, Lcom/miui/securityscan/ui/main/BallView$b;

    invoke-direct {v3, v9, v6, v5, v4}, Lcom/miui/securityscan/ui/main/BallView$b;-><init>(IIII)V

    goto :goto_1

    :cond_0
    new-instance v3, Lcom/miui/securityscan/ui/main/BallView$b;

    iget-object v9, p0, Lcom/miui/securityscan/ui/main/BallView;->i:Ljava/util/Random;

    const/16 v10, 0x38

    invoke-virtual {v9, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    add-int/lit16 v9, v9, 0xc8

    invoke-direct {v3, v9, v0, v8, v7}, Lcom/miui/securityscan/ui/main/BallView$b;-><init>(IIII)V

    invoke-virtual {v2, v3}, Lcom/miui/securityscan/ui/main/BallView$a;->k(Lcom/miui/securityscan/ui/main/BallView$b;)V

    new-instance v3, Lcom/miui/securityscan/ui/main/BallView$b;

    iget-object v7, p0, Lcom/miui/securityscan/ui/main/BallView;->i:Ljava/util/Random;

    invoke-virtual {v7, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    add-int/lit16 v7, v7, 0xc8

    invoke-direct {v3, v7, v6, v5, v4}, Lcom/miui/securityscan/ui/main/BallView$b;-><init>(IIII)V

    :goto_1
    invoke-virtual {v2, v3}, Lcom/miui/securityscan/ui/main/BallView$a;->s(Lcom/miui/securityscan/ui/main/BallView$b;)V

    iget-object v3, p0, Lcom/miui/securityscan/ui/main/BallView;->k:Landroid/graphics/LinearGradient;

    invoke-virtual {v2, v3}, Lcom/miui/securityscan/ui/main/BallView$a;->l(Landroid/graphics/LinearGradient;)V

    iget-object v3, p0, Lcom/miui/securityscan/ui/main/BallView;->l:Landroid/graphics/LinearGradient;

    invoke-virtual {v2, v3}, Lcom/miui/securityscan/ui/main/BallView$a;->t(Landroid/graphics/LinearGradient;)V

    iget-object v3, p0, Lcom/miui/securityscan/ui/main/BallView;->h:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    invoke-virtual {v2, v3}, Lcom/miui/securityscan/ui/main/BallView$a;->p(Landroid/graphics/Point;)V

    iget-object v3, p0, Lcom/miui/securityscan/ui/main/BallView;->a:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    invoke-virtual {v2, v3}, Lcom/miui/securityscan/ui/main/BallView$a;->m(I)V

    iget-object v3, p0, Lcom/miui/securityscan/ui/main/BallView;->a:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3}, Lcom/miui/securityscan/ui/main/BallView$a;->n(I)V

    iget-object v3, p0, Lcom/miui/securityscan/ui/main/BallView;->g:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_1
    return-void
.end method

.method private h()V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mWidth = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/securityscan/ui/main/BallView;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "   mHeight = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/securityscan/ui/main/BallView;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "initEndPointList"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/BallView;->h:Ljava/util/List;

    new-instance v1, Landroid/graphics/Point;

    iget v2, p0, Lcom/miui/securityscan/ui/main/BallView;->b:I

    int-to-float v2, v2

    const v3, 0x3ea978d5    # 0.331f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget v4, p0, Lcom/miui/securityscan/ui/main/BallView;->c:I

    int-to-float v4, v4

    const/4 v5, 0x0

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {v1, v2, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/BallView;->h:Ljava/util/List;

    new-instance v1, Landroid/graphics/Point;

    iget v2, p0, Lcom/miui/securityscan/ui/main/BallView;->b:I

    int-to-float v2, v2

    const v4, 0x3f360419    # 0.711f

    mul-float/2addr v2, v4

    float-to-int v2, v2

    iget v4, p0, Lcom/miui/securityscan/ui/main/BallView;->c:I

    int-to-float v4, v4

    const v5, 0x3d2c0831    # 0.042f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {v1, v2, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/BallView;->h:Ljava/util/List;

    new-instance v1, Landroid/graphics/Point;

    iget v2, p0, Lcom/miui/securityscan/ui/main/BallView;->b:I

    int-to-float v2, v2

    const v4, 0x3e656042    # 0.224f

    mul-float/2addr v2, v4

    float-to-int v2, v2

    iget v4, p0, Lcom/miui/securityscan/ui/main/BallView;->c:I

    int-to-float v4, v4

    const v5, 0x3d3851ec    # 0.045f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {v1, v2, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/BallView;->h:Ljava/util/List;

    new-instance v1, Landroid/graphics/Point;

    iget v2, p0, Lcom/miui/securityscan/ui/main/BallView;->b:I

    int-to-float v2, v2

    const v4, 0x3f6b851f    # 0.92f

    mul-float/2addr v2, v4

    float-to-int v2, v2

    iget v4, p0, Lcom/miui/securityscan/ui/main/BallView;->c:I

    int-to-float v4, v4

    const v5, 0x3e1fbe77    # 0.156f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {v1, v2, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/BallView;->h:Ljava/util/List;

    new-instance v1, Landroid/graphics/Point;

    iget v2, p0, Lcom/miui/securityscan/ui/main/BallView;->b:I

    int-to-float v2, v2

    const v4, 0x3cfdf3b6    # 0.031f

    mul-float/2addr v2, v4

    float-to-int v2, v2

    iget v4, p0, Lcom/miui/securityscan/ui/main/BallView;->c:I

    int-to-float v4, v4

    const v5, 0x3e6e978d    # 0.233f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {v1, v2, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/BallView;->h:Ljava/util/List;

    new-instance v1, Landroid/graphics/Point;

    iget v2, p0, Lcom/miui/securityscan/ui/main/BallView;->b:I

    int-to-float v2, v2

    const v4, 0x3c343958    # 0.011f

    mul-float/2addr v2, v4

    float-to-int v2, v2

    iget v4, p0, Lcom/miui/securityscan/ui/main/BallView;->c:I

    int-to-float v4, v4

    const v5, 0x3ef645a2    # 0.481f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {v1, v2, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/BallView;->h:Ljava/util/List;

    new-instance v1, Landroid/graphics/Point;

    iget v2, p0, Lcom/miui/securityscan/ui/main/BallView;->b:I

    int-to-float v2, v2

    const v4, 0x3f547ae1    # 0.83f

    mul-float/2addr v2, v4

    float-to-int v2, v2

    iget v4, p0, Lcom/miui/securityscan/ui/main/BallView;->c:I

    int-to-float v4, v4

    const v5, 0x3efd70a4    # 0.495f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {v1, v2, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/BallView;->h:Ljava/util/List;

    new-instance v1, Landroid/graphics/Point;

    iget v2, p0, Lcom/miui/securityscan/ui/main/BallView;->b:I

    int-to-float v2, v2

    const v4, 0x3df5c28f    # 0.12f

    mul-float/2addr v2, v4

    float-to-int v2, v2

    iget v4, p0, Lcom/miui/securityscan/ui/main/BallView;->c:I

    int-to-float v4, v4

    const v5, 0x3f34bc6a    # 0.706f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {v1, v2, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/BallView;->h:Ljava/util/List;

    new-instance v1, Landroid/graphics/Point;

    iget v2, p0, Lcom/miui/securityscan/ui/main/BallView;->b:I

    int-to-float v2, v2

    const v4, 0x3f71a9fc    # 0.944f

    mul-float/2addr v2, v4

    float-to-int v2, v2

    iget v4, p0, Lcom/miui/securityscan/ui/main/BallView;->c:I

    int-to-float v4, v4

    const v5, 0x3f4e5604    # 0.806f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {v1, v2, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/BallView;->h:Ljava/util/List;

    new-instance v1, Landroid/graphics/Point;

    iget v2, p0, Lcom/miui/securityscan/ui/main/BallView;->b:I

    int-to-float v2, v2

    const v4, 0x3f39999a    # 0.725f

    mul-float/2addr v2, v4

    float-to-int v2, v2

    iget v4, p0, Lcom/miui/securityscan/ui/main/BallView;->c:I

    int-to-float v4, v4

    const v5, 0x3f5c28f6    # 0.86f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {v1, v2, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/BallView;->h:Ljava/util/List;

    new-instance v1, Landroid/graphics/Point;

    iget v2, p0, Lcom/miui/securityscan/ui/main/BallView;->b:I

    int-to-float v2, v2

    const v4, 0x3d79db23    # 0.061f

    mul-float/2addr v2, v4

    float-to-int v2, v2

    iget v4, p0, Lcom/miui/securityscan/ui/main/BallView;->c:I

    int-to-float v4, v4

    const v5, 0x3f70a3d7    # 0.94f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {v1, v2, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/BallView;->h:Ljava/util/List;

    new-instance v1, Landroid/graphics/Point;

    iget v2, p0, Lcom/miui/securityscan/ui/main/BallView;->b:I

    int-to-float v2, v2

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p0, Lcom/miui/securityscan/ui/main/BallView;->c:I

    int-to-float v3, v3

    const v4, 0x3f774bc7    # 0.966f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private i()V
    .locals 22

    move-object/from16 v0, p0

    new-instance v9, Landroid/graphics/LinearGradient;

    const/4 v10, 0x3

    new-array v6, v10, [I

    const/16 v1, 0x65

    const/16 v2, 0xf2

    const/16 v3, 0xf9

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    const/4 v11, 0x0

    aput v1, v6, v11

    const/16 v1, 0x6f

    const/16 v2, 0xf3

    const/16 v3, 0xfb

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    const/4 v12, 0x1

    aput v1, v6, v12

    const/16 v1, 0x1b

    const/16 v2, 0x91

    const/16 v3, 0xef

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    const/4 v13, 0x2

    aput v1, v6, v13

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x41800000    # 16.0f

    const/high16 v5, 0x41800000    # 16.0f

    const/4 v7, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v9, v0, Lcom/miui/securityscan/ui/main/BallView;->k:Landroid/graphics/LinearGradient;

    new-instance v1, Landroid/graphics/LinearGradient;

    new-array v2, v10, [I

    const/16 v3, 0xff

    const/16 v4, 0xb4

    const/16 v5, 0x34

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    aput v4, v2, v11

    const/16 v4, 0x7b

    const/16 v5, 0x2b

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    aput v4, v2, v12

    const/16 v4, 0x53

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    aput v3, v2, v13

    sget-object v21, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/high16 v17, 0x41800000    # 16.0f

    const/high16 v18, 0x41800000    # 16.0f

    const/16 v20, 0x0

    move-object v14, v1

    move-object/from16 v19, v2

    invoke-direct/range {v14 .. v21}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v1, v0, Lcom/miui/securityscan/ui/main/BallView;->l:Landroid/graphics/LinearGradient;

    return-void
.end method

.method private j()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/BallView;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/securityscan/ui/main/BallView$a;

    invoke-virtual {v1}, Lcom/miui/securityscan/ui/main/BallView$a;->j()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public k()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/securityscan/ui/main/BallView;->e:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/securityscan/ui/main/BallView;->f:Z

    invoke-direct {p0}, Lcom/miui/securityscan/ui/main/BallView;->g()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public l(II)V
    .locals 0

    if-lt p1, p2, :cond_0

    sget-object p1, Lcom/miui/securityscan/ui/main/BallView$c;->a:Lcom/miui/securityscan/ui/main/BallView$c;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/miui/securityscan/ui/main/BallView$c;->b:Lcom/miui/securityscan/ui/main/BallView$c;

    :goto_0
    iput-object p1, p0, Lcom/miui/securityscan/ui/main/BallView;->j:Lcom/miui/securityscan/ui/main/BallView$c;

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/miui/securityscan/ui/main/BallView;->f:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/miui/securityscan/ui/main/BallView;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/securityscan/ui/main/BallView;->e:I

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/miui/securityscan/ui/main/BallView;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/miui/securityscan/ui/main/BallView;->g:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/securityscan/ui/main/BallView$a;

    iget-object v3, p0, Lcom/miui/securityscan/ui/main/BallView;->d:Landroid/graphics/Paint;

    iget v4, p0, Lcom/miui/securityscan/ui/main/BallView;->e:I

    invoke-virtual {v2, p1, v3, v4}, Lcom/miui/securityscan/ui/main/BallView$a;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/miui/securityscan/ui/main/BallView;->j()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_1

    :cond_1
    iput-boolean v0, p0, Lcom/miui/securityscan/ui/main/BallView;->f:Z

    :cond_2
    :goto_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    return-void
.end method

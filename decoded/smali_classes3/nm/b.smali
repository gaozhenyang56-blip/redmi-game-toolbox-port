.class public Lnm/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final W:[I


# instance fields
.field private A:Z

.field private B:Lmiuix/animation/physics/SpringAnimation;

.field private C:Lmiuix/animation/physics/SpringAnimation;

.field private D:Lmiuix/animation/physics/SpringAnimation;

.field private E:Lmiuix/animation/physics/SpringAnimation;

.field private F:Lmiuix/animation/physics/SpringAnimation;

.field private G:F

.field private H:F

.field private I:Z

.field private J:I

.field private K:I

.field private L:Z

.field private M:F

.field private N:Lmiuix/animation/property/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/animation/property/FloatProperty<",
            "Landroid/widget/CompoundButton;",
            ">;"
        }
    .end annotation
.end field

.field private O:Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

.field private P:Lmiuix/animation/property/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/animation/property/FloatProperty<",
            "Landroid/widget/CompoundButton;",
            ">;"
        }
    .end annotation
.end field

.field private Q:I

.field private R:I

.field private S:I

.field private T:F

.field private U:[F

.field private V:I

.field private a:Landroid/graphics/drawable/Drawable;

.field private b:I

.field private c:Landroid/graphics/drawable/Drawable;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:Z

.field private p:Z

.field private q:I

.field private r:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private s:Landroid/graphics/Rect;

.field private t:Landroid/graphics/drawable/StateListDrawable;

.field private u:Z

.field private v:Lmiuix/animation/property/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/animation/property/FloatProperty<",
            "Landroid/widget/CompoundButton;",
            ">;"
        }
    .end annotation
.end field

.field private w:Landroid/graphics/drawable/Drawable;

.field private x:Landroid/graphics/drawable/Drawable;

.field private y:Landroid/graphics/drawable/Drawable;

.field private z:Landroid/widget/CompoundButton;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lnm/b;->W:[I

    return-void
.end method

.method public constructor <init>(Landroid/widget/CompoundButton;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lnm/b;->s:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnm/b;->u:Z

    new-instance v1, Lnm/b$a;

    const-string v2, "SliderOffset"

    invoke-direct {v1, p0, v2}, Lnm/b$a;-><init>(Lnm/b;Ljava/lang/String;)V

    iput-object v1, p0, Lnm/b;->v:Lmiuix/animation/property/FloatProperty;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lnm/b;->G:F

    iput v1, p0, Lnm/b;->H:F

    iput-boolean v0, p0, Lnm/b;->I:Z

    const/4 v2, -0x1

    iput v2, p0, Lnm/b;->J:I

    iput v2, p0, Lnm/b;->K:I

    iput-boolean v0, p0, Lnm/b;->L:Z

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lnm/b;->M:F

    new-instance v0, Lnm/b$b;

    const-string v2, "SliderScale"

    invoke-direct {v0, p0, v2}, Lnm/b$b;-><init>(Lnm/b;Ljava/lang/String;)V

    iput-object v0, p0, Lnm/b;->N:Lmiuix/animation/property/FloatProperty;

    new-instance v0, Lnm/a;

    invoke-direct {v0, p0}, Lnm/a;-><init>(Lnm/b;)V

    iput-object v0, p0, Lnm/b;->O:Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    new-instance v0, Lnm/b$c;

    const-string v2, "MaskCheckedSlideBarAlpha"

    invoke-direct {v0, p0, v2}, Lnm/b$c;-><init>(Lnm/b;Ljava/lang/String;)V

    iput-object v0, p0, Lnm/b;->P:Lmiuix/animation/property/FloatProperty;

    iput v1, p0, Lnm/b;->T:F

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lnm/b;->U:[F

    iput-object p1, p0, Lnm/b;->z:Landroid/widget/CompoundButton;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    iput-boolean p1, p0, Lnm/b;->A:Z

    iget-object p1, p0, Lnm/b;->z:Landroid/widget/CompoundButton;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Lnm/b;->H:F

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private B(Landroid/graphics/Canvas;)V
    .locals 3

    iget v0, p0, Lnm/b;->H:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    if-lez v1, :cond_0

    iget-object v2, p0, Lnm/b;->x:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v1, p0, Lnm/b;->x:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    iget v1, p0, Lnm/b;->H:F

    mul-float/2addr v1, v0

    float-to-int v0, v1

    if-lez v0, :cond_1

    iget-object v1, p0, Lnm/b;->w:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Lnm/b;->w:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method private D()V
    .locals 1

    iget-object v0, p0, Lnm/b;->C:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnm/b;->C:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    :cond_0
    iget-object v0, p0, Lnm/b;->B:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lnm/b;->B:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->start()V

    :cond_1
    return-void
.end method

.method private F()V
    .locals 1

    iget-object v0, p0, Lnm/b;->B:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnm/b;->B:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    :cond_0
    iget-object v0, p0, Lnm/b;->C:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lnm/b;->C:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->start()V

    :cond_1
    return-void
.end method

.method private G()V
    .locals 1

    iget-boolean v0, p0, Lnm/b;->I:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lnm/b;->J:I

    iput v0, p0, Lnm/b;->l:I

    iget v0, p0, Lnm/b;->K:I

    iput v0, p0, Lnm/b;->b:I

    iget v0, p0, Lnm/b;->M:F

    iput v0, p0, Lnm/b;->H:F

    iget-boolean v0, p0, Lnm/b;->L:Z

    iput-boolean v0, p0, Lnm/b;->A:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnm/b;->I:Z

    const/4 v0, -0x1

    iput v0, p0, Lnm/b;->J:I

    iput v0, p0, Lnm/b;->K:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lnm/b;->M:F

    :cond_0
    return-void
.end method

.method private H()V
    .locals 1

    iget v0, p0, Lnm/b;->l:I

    iput v0, p0, Lnm/b;->J:I

    iget v0, p0, Lnm/b;->b:I

    iput v0, p0, Lnm/b;->K:I

    iget v0, p0, Lnm/b;->H:F

    iput v0, p0, Lnm/b;->M:F

    iget-boolean v0, p0, Lnm/b;->A:Z

    iput-boolean v0, p0, Lnm/b;->L:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnm/b;->I:Z

    return-void
.end method

.method private I(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private J(Landroid/graphics/Canvas;II)V
    .locals 1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lnm/b;->G:F

    int-to-float p2, p2

    int-to-float p3, p3

    invoke-virtual {p1, v0, v0, p2, p3}, Landroid/graphics/Canvas;->scale(FFFF)V

    return-void
.end method

.method private M(Z)V
    .locals 1

    iget-boolean v0, p0, Lnm/b;->A:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnm/b;->E:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnm/b;->E:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    :cond_0
    iget-object v0, p0, Lnm/b;->D:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lnm/b;->H:F

    :cond_1
    iget-boolean v0, p0, Lnm/b;->A:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lnm/b;->D:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnm/b;->D:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    :cond_2
    iget-object v0, p0, Lnm/b;->E:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    iput p1, p0, Lnm/b;->H:F

    :cond_3
    return-void
.end method

.method private S(Z)V
    .locals 2

    iget-object v0, p0, Lnm/b;->F:Lmiuix/animation/physics/SpringAnimation;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    iget-boolean v0, p0, Lnm/b;->A:Z

    if-eqz v0, :cond_1

    iget v1, p0, Lnm/b;->k:I

    goto :goto_0

    :cond_1
    iget v1, p0, Lnm/b;->j:I

    :goto_0
    iput v1, p0, Lnm/b;->l:I

    if-eqz v0, :cond_2

    const/16 v0, 0xff

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iput v0, p0, Lnm/b;->b:I

    :cond_3
    invoke-direct {p0}, Lnm/b;->G()V

    invoke-direct {p0, p1}, Lnm/b;->M(Z)V

    return-void
.end method

.method public static synthetic a(Lnm/b;Lmiuix/animation/physics/DynamicAnimation;FF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lnm/b;->x(Lmiuix/animation/physics/DynamicAnimation;FF)V

    return-void
.end method

.method static synthetic b(Lnm/b;)F
    .locals 0

    iget p0, p0, Lnm/b;->G:F

    return p0
.end method

.method static synthetic c(Lnm/b;F)F
    .locals 0

    iput p1, p0, Lnm/b;->G:F

    return p1
.end method

.method static synthetic d(Lnm/b;)F
    .locals 0

    iget p0, p0, Lnm/b;->H:F

    return p0
.end method

.method static synthetic e(Lnm/b;F)F
    .locals 0

    iput p1, p0, Lnm/b;->H:F

    return p1
.end method

.method static synthetic f(Lnm/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lnm/b;->A:Z

    return p1
.end method

.method static synthetic g(Lnm/b;)I
    .locals 0

    iget p0, p0, Lnm/b;->l:I

    return p0
.end method

.method static synthetic h(Lnm/b;)I
    .locals 0

    iget p0, p0, Lnm/b;->k:I

    return p0
.end method

.method private i(Landroid/view/View;Landroid/view/MotionEvent;)[F
    .locals 8

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    const/4 v1, 0x2

    new-array v2, v1, [I

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v3, 0x0

    aget v4, v2, v3

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    const/4 v5, 0x1

    aget v2, v2, v5

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v6

    add-float/2addr v2, v7

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_0

    move v0, v7

    goto :goto_0

    :cond_0
    sub-float/2addr v0, v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v0, v4

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    sub-float/2addr p2, v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float v7, p2, p1

    :goto_1
    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p2

    const/high16 v0, -0x40800000    # -1.0f

    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    invoke-static {p1, v7}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget v0, p0, Lnm/b;->V:I

    int-to-float v2, v0

    mul-float/2addr p2, v2

    int-to-float v0, v0

    mul-float/2addr p1, v0

    new-array v0, v1, [F

    aput p2, v0, v3

    aput p1, v0, v5

    return-object v0
.end method

.method private j(Z)V
    .locals 2

    iget-object v0, p0, Lnm/b;->z:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lnm/b;->z:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-direct {p0, p1}, Lnm/b;->S(Z)V

    invoke-virtual {p0}, Lnm/b;->z()V

    :cond_0
    if-eqz p1, :cond_1

    iget v0, p0, Lnm/b;->k:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lnm/b;->j:I

    :goto_0
    new-instance v1, Lnm/b$e;

    invoke-direct {v1, p0}, Lnm/b$e;-><init>(Lnm/b;)V

    invoke-direct {p0, p1, v0, v1}, Lnm/b;->k(ZILjava/lang/Runnable;)V

    return-void
.end method

.method private k(ZILjava/lang/Runnable;)V
    .locals 3

    iget-object v0, p0, Lnm/b;->F:Lmiuix/animation/physics/SpringAnimation;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnm/b;->F:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    :cond_0
    iget-object v0, p0, Lnm/b;->z:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Lmiuix/animation/physics/SpringAnimation;

    iget-object v1, p0, Lnm/b;->z:Landroid/widget/CompoundButton;

    iget-object v2, p0, Lnm/b;->v:Lmiuix/animation/property/FloatProperty;

    int-to-float p2, p2

    invoke-direct {v0, v1, v2, p2}, Lmiuix/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;F)V

    iput-object v0, p0, Lnm/b;->F:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object p2

    const v0, 0x4476bd71

    invoke-virtual {p2, v0}, Lmiuix/animation/physics/SpringForce;->setStiffness(F)Lmiuix/animation/physics/SpringForce;

    iget-object p2, p0, Lnm/b;->F:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p2}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object p2

    const v0, 0x3f333333    # 0.7f

    invoke-virtual {p2, v0}, Lmiuix/animation/physics/SpringForce;->setDampingRatio(F)Lmiuix/animation/physics/SpringForce;

    iget-object p2, p0, Lnm/b;->F:Lmiuix/animation/physics/SpringAnimation;

    iget-object v0, p0, Lnm/b;->O:Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    invoke-virtual {p2, v0}, Lmiuix/animation/physics/DynamicAnimation;->addUpdateListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiuix/animation/physics/DynamicAnimation;

    iget-object p2, p0, Lnm/b;->F:Lmiuix/animation/physics/SpringAnimation;

    new-instance v0, Lnm/b$d;

    invoke-direct {v0, p0, p3}, Lnm/b$d;-><init>(Lnm/b;Ljava/lang/Runnable;)V

    invoke-virtual {p2, v0}, Lmiuix/animation/physics/DynamicAnimation;->addEndListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationEndListener;)Lmiuix/animation/physics/DynamicAnimation;

    iget-object p2, p0, Lnm/b;->F:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p2}, Lmiuix/animation/physics/SpringAnimation;->start()V

    if-eqz p1, :cond_3

    iget-object p1, p0, Lnm/b;->D:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lnm/b;->D:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/SpringAnimation;->start()V

    :cond_2
    iget-object p1, p0, Lnm/b;->E:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lnm/b;->E:Lmiuix/animation/physics/SpringAnimation;

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lnm/b;->E:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lnm/b;->E:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/SpringAnimation;->start()V

    :cond_4
    iget-object p1, p0, Lnm/b;->D:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lnm/b;->D:Lmiuix/animation/physics/SpringAnimation;

    :goto_0
    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    :cond_5
    return-void
.end method

.method private l()V
    .locals 3

    iget-object v0, p0, Lnm/b;->z:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lnm/b;->j(Z)V

    iget-object v0, p0, Lnm/b;->z:Landroid/widget/CompoundButton;

    sget v1, Lmiuix/view/i;->F:I

    sget v2, Lmiuix/view/i;->i:I

    invoke-static {v0, v1, v2}, Lmiuix/view/HapticCompat;->f(Landroid/view/View;II)Z

    return-void
.end method

.method private m(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 5

    new-instance v0, Lmiuix/smooth/SmoothContainerDrawable2;

    invoke-direct {v0}, Lmiuix/smooth/SmoothContainerDrawable2;-><init>()V

    iget-object v1, p0, Lnm/b;->z:Landroid/widget/CompoundButton;

    invoke-virtual {v1}, Landroid/view/View;->getLayerType()I

    move-result v1

    invoke-virtual {v0, v1}, Lmiuix/smooth/SmoothContainerDrawable2;->setLayerType(I)V

    iget v1, p0, Lnm/b;->Q:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lmiuix/smooth/SmoothContainerDrawable2;->setCornerRadius(F)V

    invoke-virtual {v0, p1}, Lmiuix/smooth/SmoothContainerDrawable2;->setChildDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance p1, Landroid/graphics/Rect;

    iget v1, p0, Lnm/b;->S:I

    iget v2, p0, Lnm/b;->R:I

    iget v3, p0, Lnm/b;->e:I

    sub-int/2addr v3, v1

    iget v4, p0, Lnm/b;->f:I

    sub-int/2addr v4, v2

    invoke-direct {p1, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method private n()Landroid/graphics/drawable/StateListDrawable;
    .locals 4

    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iget v1, p0, Lnm/b;->e:I

    iget v2, p0, Lnm/b;->f:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, p0, Lnm/b;->z:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    return-object v0
.end method

.method private u(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lnm/b;->w:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lnm/b;->x:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lnm/b;->y:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private synthetic x(Lmiuix/animation/physics/DynamicAnimation;FF)V
    .locals 0

    iget-object p1, p0, Lnm/b;->z:Landroid/widget/CompoundButton;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private y(I)V
    .locals 3

    iget-object v0, p0, Lnm/b;->z:Landroid/widget/CompoundButton;

    invoke-static {v0}, Landroidx/appcompat/widget/n1;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    neg-int p1, p1

    :cond_0
    iget v0, p0, Lnm/b;->l:I

    add-int/2addr v0, p1

    iput v0, p0, Lnm/b;->l:I

    iget p1, p0, Lnm/b;->j:I

    if-ge v0, p1, :cond_1

    iput p1, p0, Lnm/b;->l:I

    goto :goto_0

    :cond_1
    iget v1, p0, Lnm/b;->k:I

    if-le v0, v1, :cond_2

    iput v1, p0, Lnm/b;->l:I

    :cond_2
    :goto_0
    iget v0, p0, Lnm/b;->l:I

    if-eq v0, p1, :cond_4

    iget p1, p0, Lnm/b;->k:I

    if-ne v0, p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 p1, 0x1

    :goto_2
    if-eqz p1, :cond_5

    iget-boolean v0, p0, Lnm/b;->u:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lnm/b;->z:Landroid/widget/CompoundButton;

    sget v1, Lmiuix/view/i;->F:I

    sget v2, Lmiuix/view/i;->i:I

    invoke-static {v0, v1, v2}, Lmiuix/view/HapticCompat;->f(Landroid/view/View;II)Z

    :cond_5
    iput-boolean p1, p0, Lnm/b;->u:Z

    iget p1, p0, Lnm/b;->l:I

    invoke-virtual {p0, p1}, Lnm/b;->R(I)V

    return-void
.end method


# virtual methods
.method public A(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-virtual {p0}, Lnm/b;->Q()V

    invoke-direct {p0, p1}, Lnm/b;->B(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lnm/b;->z:Landroid/widget/CompoundButton;

    invoke-static {v0}, Landroidx/appcompat/widget/n1;->b(Landroid/view/View;)Z

    move-result v0

    iget v1, p0, Lnm/b;->i:I

    if-eqz v0, :cond_0

    neg-int v1, v1

    :cond_0
    if-eqz v0, :cond_1

    iget v2, p0, Lnm/b;->e:I

    iget v3, p0, Lnm/b;->l:I

    sub-int/2addr v2, v3

    iget v3, p0, Lnm/b;->g:I

    sub-int/2addr v2, v3

    goto :goto_0

    :cond_1
    iget v2, p0, Lnm/b;->l:I

    :goto_0
    add-int/2addr v2, v1

    iget-object v3, p0, Lnm/b;->U:[F

    const/4 v4, 0x0

    aget v4, v3, v4

    float-to-int v5, v4

    add-int/2addr v2, v5

    if-eqz v0, :cond_2

    iget v0, p0, Lnm/b;->e:I

    iget v5, p0, Lnm/b;->l:I

    sub-int/2addr v0, v5

    goto :goto_1

    :cond_2
    iget v0, p0, Lnm/b;->g:I

    iget v5, p0, Lnm/b;->l:I

    add-int/2addr v0, v5

    :goto_1
    add-int/2addr v0, v1

    float-to-int v1, v4

    add-int/2addr v0, v1

    iget v1, p0, Lnm/b;->f:I

    iget v4, p0, Lnm/b;->h:I

    sub-int/2addr v1, v4

    div-int/lit8 v1, v1, 0x2

    const/4 v5, 0x1

    aget v3, v3, v5

    float-to-int v3, v3

    add-int/2addr v1, v3

    add-int/2addr v4, v1

    add-int v3, v0, v2

    div-int/lit8 v3, v3, 0x2

    add-int v5, v4, v1

    div-int/lit8 v5, v5, 0x2

    invoke-direct {p0, p1, v3, v5}, Lnm/b;->J(Landroid/graphics/Canvas;II)V

    iget-boolean v3, p0, Lnm/b;->A:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lnm/b;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v2, v1, v0, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lnm/b;->a:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lnm/b;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v2, v1, v0, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lnm/b;->c:Landroid/graphics/drawable/Drawable;

    :goto_2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lnm/b;->I(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public C(Landroid/view/MotionEvent;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_4

    const/16 p1, 0x9

    if-eq v0, p1, :cond_2

    const/16 p1, 0xa

    if-eq v0, p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lnm/b;->U:[F

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v1, p1, v0

    const/4 v0, 0x1

    aput v1, p1, v0

    iget-object p1, p0, Lnm/b;->B:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lnm/b;->B:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    :cond_1
    iget-object p1, p0, Lnm/b;->C:Lmiuix/animation/physics/SpringAnimation;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lnm/b;->C:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lnm/b;->C:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    :cond_3
    iget-object p1, p0, Lnm/b;->B:Lmiuix/animation/physics/SpringAnimation;

    :goto_0
    invoke-virtual {p1}, Lmiuix/animation/physics/SpringAnimation;->start()V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lnm/b;->z:Landroid/widget/CompoundButton;

    invoke-direct {p0, v0, p1}, Lnm/b;->i(Landroid/view/View;Landroid/view/MotionEvent;)[F

    move-result-object p1

    iput-object p1, p0, Lnm/b;->U:[F

    iget-object p1, p0, Lnm/b;->z:Landroid/widget/CompoundButton;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :goto_1
    return-void
.end method

.method public E(Landroid/view/MotionEvent;)V
    .locals 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iget-object v2, p0, Lnm/b;->s:Landroid/graphics/Rect;

    iget-object v3, p0, Lnm/b;->z:Landroid/widget/CompoundButton;

    invoke-static {v3}, Landroidx/appcompat/widget/n1;->b(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v4, p0, Lnm/b;->e:I

    iget v5, p0, Lnm/b;->l:I

    sub-int/2addr v4, v5

    iget v5, p0, Lnm/b;->g:I

    sub-int/2addr v4, v5

    goto :goto_0

    :cond_0
    iget v4, p0, Lnm/b;->l:I

    :goto_0
    if-eqz v3, :cond_1

    iget v3, p0, Lnm/b;->e:I

    iget v5, p0, Lnm/b;->l:I

    sub-int/2addr v3, v5

    goto :goto_1

    :cond_1
    iget v3, p0, Lnm/b;->l:I

    iget v5, p0, Lnm/b;->g:I

    add-int/2addr v3, v5

    :goto_1
    iget v5, p0, Lnm/b;->f:I

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v6, v3, v5}, Landroid/graphics/Rect;->set(IIII)V

    const/4 v3, 0x1

    if-eqz v0, :cond_a

    const/4 v4, 0x2

    if-eq v0, v3, :cond_6

    if-eq v0, v4, :cond_5

    const/4 p1, 0x3

    if-eq v0, p1, :cond_2

    goto/16 :goto_8

    :cond_2
    invoke-direct {p0}, Lnm/b;->F()V

    iget-boolean p1, p0, Lnm/b;->o:Z

    if-eqz p1, :cond_4

    iget p1, p0, Lnm/b;->l:I

    iget v0, p0, Lnm/b;->k:I

    div-int/2addr v0, v4

    if-lt p1, v0, :cond_3

    goto :goto_2

    :cond_3
    move v3, v6

    :goto_2
    iput-boolean v3, p0, Lnm/b;->A:Z

    invoke-direct {p0, v3}, Lnm/b;->j(Z)V

    :cond_4
    :goto_3
    iput-boolean v6, p0, Lnm/b;->o:Z

    iput-boolean v6, p0, Lnm/b;->p:Z

    iget-object p1, p0, Lnm/b;->z:Landroid/widget/CompoundButton;

    invoke-virtual {p1, v6}, Landroid/view/View;->setPressed(Z)V

    goto/16 :goto_8

    :cond_5
    iget-boolean p1, p0, Lnm/b;->o:Z

    if-eqz p1, :cond_e

    iget p1, p0, Lnm/b;->m:I

    sub-int p1, v1, p1

    invoke-direct {p0, p1}, Lnm/b;->y(I)V

    iput v1, p0, Lnm/b;->m:I

    iget p1, p0, Lnm/b;->n:I

    sub-int/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v0, p0, Lnm/b;->q:I

    if-lt p1, v0, :cond_e

    iput-boolean v3, p0, Lnm/b;->p:Z

    iget-object p1, p0, Lnm/b;->z:Landroid/widget/CompoundButton;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_8

    :cond_6
    iget-object v0, p0, Lnm/b;->z:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v6}, Landroid/view/View;->playSoundEffect(I)V

    invoke-direct {p0}, Lnm/b;->F()V

    iget-boolean v0, p0, Lnm/b;->o:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lnm/b;->p:Z

    if-nez v0, :cond_7

    goto :goto_5

    :cond_7
    iget v0, p0, Lnm/b;->l:I

    iget v5, p0, Lnm/b;->k:I

    div-int/2addr v5, v4

    if-lt v0, v5, :cond_8

    goto :goto_4

    :cond_8
    move v3, v6

    :goto_4
    iput-boolean v3, p0, Lnm/b;->A:Z

    invoke-direct {p0, v3}, Lnm/b;->j(Z)V

    invoke-virtual {v2, v1, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lnm/b;->z:Landroid/widget/CompoundButton;

    sget v0, Lmiuix/view/i;->F:I

    sget v1, Lmiuix/view/i;->i:I

    invoke-static {p1, v0, v1}, Lmiuix/view/HapticCompat;->f(Landroid/view/View;II)Z

    goto :goto_3

    :cond_9
    :goto_5
    invoke-direct {p0}, Lnm/b;->l()V

    goto :goto_3

    :cond_a
    invoke-virtual {v2, v1, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_d

    iput-boolean v3, p0, Lnm/b;->o:Z

    iget-object p1, p0, Lnm/b;->z:Landroid/widget/CompoundButton;

    invoke-virtual {p1, v3}, Landroid/view/View;->setPressed(Z)V

    invoke-direct {p0}, Lnm/b;->D()V

    iget p1, p0, Lnm/b;->l:I

    iget v0, p0, Lnm/b;->j:I

    if-le p1, v0, :cond_c

    iget v0, p0, Lnm/b;->k:I

    if-lt p1, v0, :cond_b

    goto :goto_6

    :cond_b
    move v3, v6

    :cond_c
    :goto_6
    iput-boolean v3, p0, Lnm/b;->u:Z

    goto :goto_7

    :cond_d
    iput-boolean v6, p0, Lnm/b;->o:Z

    :goto_7
    iput v1, p0, Lnm/b;->m:I

    iput v1, p0, Lnm/b;->n:I

    iput-boolean v6, p0, Lnm/b;->p:Z

    :cond_e
    :goto_8
    return-void
.end method

.method public K(F)V
    .locals 0

    iput p1, p0, Lnm/b;->T:F

    return-void
.end method

.method public L(Z)V
    .locals 1

    invoke-direct {p0}, Lnm/b;->H()V

    iput-boolean p1, p0, Lnm/b;->A:Z

    if-eqz p1, :cond_0

    iget v0, p0, Lnm/b;->k:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lnm/b;->j:I

    :goto_0
    iput v0, p0, Lnm/b;->l:I

    if-eqz p1, :cond_1

    const/16 v0, 0xff

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput v0, p0, Lnm/b;->b:I

    if-eqz p1, :cond_2

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    iput p1, p0, Lnm/b;->H:F

    iget-object p1, p0, Lnm/b;->F:Lmiuix/animation/physics/SpringAnimation;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lnm/b;->F:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    :cond_3
    iget-object p1, p0, Lnm/b;->E:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lnm/b;->E:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    :cond_4
    iget-object p1, p0, Lnm/b;->D:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lnm/b;->D:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    :cond_5
    iget-object p1, p0, Lnm/b;->z:Landroid/widget/CompoundButton;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public N(I)V
    .locals 2

    iget-object v0, p0, Lnm/b;->w:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lmiuix/smooth/SmoothContainerDrawable2;

    if-eqz v1, :cond_0

    check-cast v0, Lmiuix/smooth/SmoothContainerDrawable2;

    invoke-virtual {v0, p1}, Lmiuix/smooth/SmoothContainerDrawable2;->setLayerType(I)V

    :cond_0
    iget-object v0, p0, Lnm/b;->x:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lmiuix/smooth/SmoothContainerDrawable2;

    if-eqz v1, :cond_1

    check-cast v0, Lmiuix/smooth/SmoothContainerDrawable2;

    invoke-virtual {v0, p1}, Lmiuix/smooth/SmoothContainerDrawable2;->setLayerType(I)V

    :cond_1
    iget-object v0, p0, Lnm/b;->y:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lmiuix/smooth/SmoothContainerDrawable2;

    if-eqz v1, :cond_2

    check-cast v0, Lmiuix/smooth/SmoothContainerDrawable2;

    invoke-virtual {v0, p1}, Lmiuix/smooth/SmoothContainerDrawable2;->setLayerType(I)V

    :cond_2
    return-void
.end method

.method public O(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0

    iput-object p1, p0, Lnm/b;->r:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method public P()V
    .locals 2

    iget-object v0, p0, Lnm/b;->z:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    :cond_0
    return-void
.end method

.method public Q()V
    .locals 2

    invoke-virtual {p0}, Lnm/b;->s()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnm/b;->a:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lnm/b;->z:Landroid/widget/CompoundButton;

    invoke-virtual {v1}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iget-object v0, p0, Lnm/b;->c:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lnm/b;->z:Landroid/widget/CompoundButton;

    invoke-virtual {v1}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iget-object v0, p0, Lnm/b;->t:Landroid/graphics/drawable/StateListDrawable;

    iget-object v1, p0, Lnm/b;->z:Landroid/widget/CompoundButton;

    invoke-virtual {v1}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iget-object v0, p0, Lnm/b;->w:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lnm/b;->z:Landroid/widget/CompoundButton;

    invoke-virtual {v1}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iget-object v0, p0, Lnm/b;->x:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lnm/b;->z:Landroid/widget/CompoundButton;

    invoke-virtual {v1}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    return-void
.end method

.method public R(I)V
    .locals 0

    iput p1, p0, Lnm/b;->l:I

    iget-object p1, p0, Lnm/b;->z:Landroid/widget/CompoundButton;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public T(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    iget-object v0, p0, Lnm/b;->t:Landroid/graphics/drawable/StateListDrawable;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public o()F
    .locals 1

    iget v0, p0, Lnm/b;->T:F

    return v0
.end method

.method public p()I
    .locals 1

    iget v0, p0, Lnm/b;->f:I

    return v0
.end method

.method public q()I
    .locals 1

    iget v0, p0, Lnm/b;->e:I

    return v0
.end method

.method public r()I
    .locals 1

    iget v0, p0, Lnm/b;->l:I

    return v0
.end method

.method public s()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lnm/b;->a:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public t()V
    .locals 7

    new-instance v0, Lmiuix/animation/physics/SpringAnimation;

    iget-object v1, p0, Lnm/b;->z:Landroid/widget/CompoundButton;

    iget-object v2, p0, Lnm/b;->N:Lmiuix/animation/property/FloatProperty;

    const v3, 0x3f904189    # 1.127f

    invoke-direct {v0, v1, v2, v3}, Lmiuix/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;F)V

    iput-object v0, p0, Lnm/b;->B:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v0

    const v1, 0x4476bd71

    invoke-virtual {v0, v1}, Lmiuix/animation/physics/SpringForce;->setStiffness(F)Lmiuix/animation/physics/SpringForce;

    iget-object v0, p0, Lnm/b;->B:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v0

    const v2, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v2}, Lmiuix/animation/physics/SpringForce;->setDampingRatio(F)Lmiuix/animation/physics/SpringForce;

    iget-object v0, p0, Lnm/b;->B:Lmiuix/animation/physics/SpringAnimation;

    const v3, 0x3b03126f    # 0.002f

    invoke-virtual {v0, v3}, Lmiuix/animation/physics/DynamicAnimation;->setMinimumVisibleChange(F)Lmiuix/animation/physics/DynamicAnimation;

    iget-object v0, p0, Lnm/b;->B:Lmiuix/animation/physics/SpringAnimation;

    iget-object v4, p0, Lnm/b;->O:Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    invoke-virtual {v0, v4}, Lmiuix/animation/physics/DynamicAnimation;->addUpdateListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiuix/animation/physics/DynamicAnimation;

    new-instance v0, Lmiuix/animation/physics/SpringAnimation;

    iget-object v4, p0, Lnm/b;->z:Landroid/widget/CompoundButton;

    iget-object v5, p0, Lnm/b;->N:Lmiuix/animation/property/FloatProperty;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v0, v4, v5, v6}, Lmiuix/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;F)V

    iput-object v0, p0, Lnm/b;->C:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiuix/animation/physics/SpringForce;->setStiffness(F)Lmiuix/animation/physics/SpringForce;

    iget-object v0, p0, Lnm/b;->C:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v2}, Lmiuix/animation/physics/SpringForce;->setDampingRatio(F)Lmiuix/animation/physics/SpringForce;

    iget-object v0, p0, Lnm/b;->C:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0, v3}, Lmiuix/animation/physics/DynamicAnimation;->setMinimumVisibleChange(F)Lmiuix/animation/physics/DynamicAnimation;

    iget-object v0, p0, Lnm/b;->C:Lmiuix/animation/physics/SpringAnimation;

    iget-object v2, p0, Lnm/b;->O:Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    invoke-virtual {v0, v2}, Lmiuix/animation/physics/DynamicAnimation;->addUpdateListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiuix/animation/physics/DynamicAnimation;

    new-instance v0, Lmiuix/animation/physics/SpringAnimation;

    iget-object v2, p0, Lnm/b;->z:Landroid/widget/CompoundButton;

    iget-object v3, p0, Lnm/b;->P:Lmiuix/animation/property/FloatProperty;

    invoke-direct {v0, v2, v3, v6}, Lmiuix/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;F)V

    iput-object v0, p0, Lnm/b;->D:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v0

    const v2, 0x43db51ec

    invoke-virtual {v0, v2}, Lmiuix/animation/physics/SpringForce;->setStiffness(F)Lmiuix/animation/physics/SpringForce;

    iget-object v0, p0, Lnm/b;->D:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v0

    const v2, 0x3f7d70a4    # 0.99f

    invoke-virtual {v0, v2}, Lmiuix/animation/physics/SpringForce;->setDampingRatio(F)Lmiuix/animation/physics/SpringForce;

    iget-object v0, p0, Lnm/b;->D:Lmiuix/animation/physics/SpringAnimation;

    const/high16 v3, 0x3b800000    # 0.00390625f

    invoke-virtual {v0, v3}, Lmiuix/animation/physics/DynamicAnimation;->setMinimumVisibleChange(F)Lmiuix/animation/physics/DynamicAnimation;

    iget-object v0, p0, Lnm/b;->D:Lmiuix/animation/physics/SpringAnimation;

    iget-object v4, p0, Lnm/b;->O:Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    invoke-virtual {v0, v4}, Lmiuix/animation/physics/DynamicAnimation;->addUpdateListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiuix/animation/physics/DynamicAnimation;

    new-instance v0, Lmiuix/animation/physics/SpringAnimation;

    iget-object v4, p0, Lnm/b;->z:Landroid/widget/CompoundButton;

    iget-object v5, p0, Lnm/b;->P:Lmiuix/animation/property/FloatProperty;

    const/4 v6, 0x0

    invoke-direct {v0, v4, v5, v6}, Lmiuix/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;F)V

    iput-object v0, p0, Lnm/b;->E:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiuix/animation/physics/SpringForce;->setStiffness(F)Lmiuix/animation/physics/SpringForce;

    iget-object v0, p0, Lnm/b;->E:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v2}, Lmiuix/animation/physics/SpringForce;->setDampingRatio(F)Lmiuix/animation/physics/SpringForce;

    iget-object v0, p0, Lnm/b;->E:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0, v3}, Lmiuix/animation/physics/DynamicAnimation;->setMinimumVisibleChange(F)Lmiuix/animation/physics/DynamicAnimation;

    iget-object v0, p0, Lnm/b;->E:Lmiuix/animation/physics/SpringAnimation;

    iget-object v1, p0, Lnm/b;->O:Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    invoke-virtual {v0, v1}, Lmiuix/animation/physics/DynamicAnimation;->addUpdateListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiuix/animation/physics/DynamicAnimation;

    return-void
.end method

.method public v(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 5

    iget-object v0, p0, Lnm/b;->z:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmm/c;->a:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lnm/b;->Q:I

    iget-object v0, p0, Lnm/b;->z:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmm/c;->f:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lnm/b;->R:I

    iget-object v0, p0, Lnm/b;->z:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmm/c;->e:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lnm/b;->S:I

    iget-object v0, p0, Lnm/b;->z:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lnm/b;->q:I

    sget v0, Lmm/e;->b0:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lnm/b;->a:Landroid/graphics/drawable/Drawable;

    sget v0, Lmm/e;->a0:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lnm/b;->c:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lnm/b;->z:Landroid/widget/CompoundButton;

    sget v2, Lmm/e;->X:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const-string v0, "#FF3482FF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    sget v0, Lmm/b;->a:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    sget v0, Lmm/e;->c0:I

    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lnm/b;->d:I

    iget-object p1, p0, Lnm/b;->z:Landroid/widget/CompoundButton;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lmm/c;->c:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iget-object v0, p0, Lnm/b;->z:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lmm/c;->b:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v2, p0, Lnm/b;->z:Landroid/widget/CompoundButton;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lmm/c;->d:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lnm/b;->z:Landroid/widget/CompoundButton;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lmm/c;->j:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v3

    iput v0, p0, Lnm/b;->e:I

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr p1, v2

    iput p1, p0, Lnm/b;->f:I

    iget-object p1, p0, Lnm/b;->z:Landroid/widget/CompoundButton;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lmm/c;->i:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iget-object v0, p0, Lnm/b;->z:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lmm/c;->g:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lnm/b;->i:I

    iput p1, p0, Lnm/b;->g:I

    iput p1, p0, Lnm/b;->h:I

    iput v1, p0, Lnm/b;->j:I

    iget v2, p0, Lnm/b;->e:I

    sub-int/2addr v2, p1

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr v2, v0

    iput v2, p0, Lnm/b;->k:I

    iput v1, p0, Lnm/b;->l:I

    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    sget v0, Lmm/e;->Y:I

    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    sget v2, Lmm/e;->Z:I

    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iget v2, p1, Landroid/util/TypedValue;->type:I

    iget v3, v1, Landroid/util/TypedValue;->type:I

    if-ne v2, v3, :cond_0

    iget v2, p1, Landroid/util/TypedValue;->data:I

    iget v3, v1, Landroid/util/TypedValue;->data:I

    if-ne v2, v3, :cond_0

    iget p1, p1, Landroid/util/TypedValue;->resourceId:I

    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    if-ne p1, v1, :cond_0

    move-object p2, v0

    :cond_0
    if-eqz p2, :cond_1

    if-eqz v0, :cond_1

    iget p1, p0, Lnm/b;->d:I

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-direct {p0, p2}, Lnm/b;->m(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, v0}, Lnm/b;->m(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, p2}, Lnm/b;->m(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Lnm/b;->u(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lnm/b;->n()Landroid/graphics/drawable/StateListDrawable;

    move-result-object p1

    iput-object p1, p0, Lnm/b;->t:Landroid/graphics/drawable/StateListDrawable;

    :cond_1
    invoke-virtual {p0}, Lnm/b;->Q()V

    iget-object p1, p0, Lnm/b;->z:Landroid/widget/CompoundButton;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, p0, Lnm/b;->k:I

    invoke-virtual {p0, p1}, Lnm/b;->R(I)V

    :cond_2
    iget-object p1, p0, Lnm/b;->z:Landroid/widget/CompoundButton;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lmm/c;->h:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lnm/b;->V:I

    return-void
.end method

.method public w()V
    .locals 1

    iget-object v0, p0, Lnm/b;->t:Landroid/graphics/drawable/StateListDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    return-void
.end method

.method public z()V
    .locals 3

    iget-object v0, p0, Lnm/b;->r:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnm/b;->z:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    iget-object v1, p0, Lnm/b;->r:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    iget-object v2, p0, Lnm/b;->z:Landroid/widget/CompoundButton;

    invoke-interface {v1, v2, v0}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    :cond_0
    return-void
.end method

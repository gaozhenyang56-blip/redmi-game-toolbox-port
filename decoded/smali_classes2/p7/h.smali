.class public Lp7/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr7/b;
.implements Lr7/d$a;
.implements Lcom/miui/gamebooster/shoulderkey/widget/a$a;
.implements Lp7/c$a;
.implements Lr7/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp7/h$d;,
        Lp7/h$e;
    }
.end annotation


# instance fields
.field private a:Landroid/view/WindowManager;

.field private b:Landroid/view/WindowManager$LayoutParams;

.field private final c:Landroid/content/Context;

.field private final d:Landroid/content/res/Resources;

.field private e:Landroid/view/LayoutInflater;

.field private f:Lr7/a;

.field private g:Lcom/miui/gamebooster/shoulderkey/widget/a;

.field private h:Lr7/d;

.field private i:Lr7/d;

.field private j:Landroid/graphics/drawable/TransitionDrawable;

.field private k:Landroid/graphics/drawable/TransitionDrawable;

.field private l:Lp7/h$d;

.field private m:Lp7/d$b;

.field private final n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final o:I

.field private final p:I

.field private final q:I

.field private final r:I

.field private s:Landroid/os/Handler;

.field private t:Z

.field private u:Ljava/lang/String;

.field private v:Z

.field w:Landroid/animation/AnimatorSet;


# direct methods
.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lp7/h$d;->e:Lp7/h$d;

    iput-object v0, p0, Lp7/h;->l:Lp7/h$d;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lp7/h;->n:Ljava/util/List;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lp7/h;->s:Landroid/os/Handler;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    iput-object v0, p0, Lp7/h;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lp7/h;->d:Landroid/content/res/Resources;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lp7/h;->a:Landroid/view/WindowManager;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070c85

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lp7/h;->o:I

    const v2, 0x7f070c5d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lp7/h;->p:I

    invoke-static {v0}, La8/k2;->r(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lp7/h;->q:I

    invoke-static {v0}, La8/k2;->n(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lp7/h;->r:I

    invoke-static {}, Lp7/c;->a()Lp7/c;

    move-result-object v0

    invoke-virtual {v0}, Lp7/c;->d()Z

    move-result v0

    iput-boolean v0, p0, Lp7/h;->v:Z

    invoke-virtual {p0}, Lp7/h;->I()V

    return-void
.end method

.method synthetic constructor <init>(Lp7/h$a;)V
    .locals 0

    invoke-direct {p0}, Lp7/h;-><init>()V

    return-void
.end method

.method private A(Z)I
    .locals 1
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation

    iget-boolean v0, p0, Lp7/h;->v:Z

    if-eqz v0, :cond_0

    const p1, 0x7f080717

    return p1

    :cond_0
    if-eqz p1, :cond_1

    const p1, 0x7f0808d6

    goto :goto_0

    :cond_1
    const p1, 0x7f0808d7

    :goto_0
    return p1
.end method

.method private B(Z)I
    .locals 0
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation

    if-eqz p1, :cond_0

    const p1, 0x7f080718

    goto :goto_0

    :cond_0
    const p1, 0x7f080717

    :goto_0
    return p1
.end method

.method public static C()Lp7/h;
    .locals 1

    sget-object v0, Lp7/h$e;->a:Lp7/h;

    return-object v0
.end method

.method private D()I
    .locals 1

    iget-boolean v0, p0, Lp7/h;->v:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lp7/h;->M()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lp7/h;->m:Lp7/d$b;

    iget-object v0, v0, Lp7/d$b;->d:Landroid/graphics/Point;

    :goto_0
    iget v0, v0, Landroid/graphics/Point;->x:I

    return v0

    :cond_1
    invoke-direct {p0}, Lp7/h;->L()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lp7/h;->m:Lp7/d$b;

    iget-object v0, v0, Lp7/d$b;->e:Landroid/graphics/Point;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lp7/h;->m:Lp7/d$b;

    iget-object v0, v0, Lp7/d$b;->j:Landroid/graphics/Point;

    goto :goto_0
.end method

.method private E()I
    .locals 1

    iget-boolean v0, p0, Lp7/h;->v:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lp7/h;->M()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lp7/h;->m:Lp7/d$b;

    iget-object v0, v0, Lp7/d$b;->d:Landroid/graphics/Point;

    :goto_0
    iget v0, v0, Landroid/graphics/Point;->y:I

    return v0

    :cond_1
    invoke-direct {p0}, Lp7/h;->L()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lp7/h;->m:Lp7/d$b;

    iget-object v0, v0, Lp7/d$b;->e:Landroid/graphics/Point;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lp7/h;->m:Lp7/d$b;

    iget-object v0, v0, Lp7/d$b;->j:Landroid/graphics/Point;

    goto :goto_0
.end method

.method private F()I
    .locals 1

    iget-boolean v0, p0, Lp7/h;->v:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lp7/h;->M()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lp7/h;->m:Lp7/d$b;

    iget-object v0, v0, Lp7/d$b;->i:Landroid/graphics/Point;

    :goto_0
    iget v0, v0, Landroid/graphics/Point;->x:I

    return v0

    :cond_1
    invoke-direct {p0}, Lp7/h;->L()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lp7/h;->m:Lp7/d$b;

    iget-object v0, v0, Lp7/d$b;->f:Landroid/graphics/Point;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lp7/h;->m:Lp7/d$b;

    iget-object v0, v0, Lp7/d$b;->k:Landroid/graphics/Point;

    goto :goto_0
.end method

.method private G()I
    .locals 1

    iget-boolean v0, p0, Lp7/h;->v:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lp7/h;->M()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lp7/h;->m:Lp7/d$b;

    iget-object v0, v0, Lp7/d$b;->i:Landroid/graphics/Point;

    :goto_0
    iget v0, v0, Landroid/graphics/Point;->y:I

    return v0

    :cond_1
    invoke-direct {p0}, Lp7/h;->L()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lp7/h;->m:Lp7/d$b;

    iget-object v0, v0, Lp7/d$b;->f:Landroid/graphics/Point;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lp7/h;->m:Lp7/d$b;

    iget-object v0, v0, Lp7/d$b;->k:Landroid/graphics/Point;

    goto :goto_0
.end method

.method private H()V
    .locals 5

    iget-object v0, p0, Lp7/h;->f:Lr7/a;

    new-instance v1, Lp7/h$a;

    invoke-direct {v1, p0}, Lp7/h$a;-><init>(Lp7/h;)V

    const/4 v2, 0x0

    const/16 v3, 0xc8

    const/4 v4, 0x1

    invoke-static {v0, v2, v3, v1, v4}, Ldb/i;->o(Landroid/view/View;FILandroid/animation/Animator$AnimatorListener;Z)Landroid/animation/Animator;

    return-void
.end method

.method private K()Z
    .locals 2

    iget-object v0, p0, Lp7/h;->f:Lr7/a;

    instance-of v1, v0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;

    invoke-virtual {v0}, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private L()Z
    .locals 2

    iget-object v0, p0, Lp7/h;->f:Lr7/a;

    instance-of v1, v0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;

    invoke-virtual {v0}, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private M()Z
    .locals 2

    iget-object v0, p0, Lp7/h;->f:Lr7/a;

    instance-of v1, v0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;

    invoke-virtual {v0}, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic N(IIIIIIIILandroid/animation/ValueAnimator;)V
    .locals 2

    invoke-virtual {p9}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p9

    check-cast p9, Ljava/lang/Float;

    int-to-float v0, p1

    invoke-virtual {p9}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sub-int/2addr p2, p1

    int-to-float p1, p2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    float-to-int p1, v0

    int-to-float p2, p3

    invoke-virtual {p9}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sub-int/2addr p4, p3

    int-to-float p3, p4

    mul-float/2addr v0, p3

    add-float/2addr p2, v0

    float-to-int p2, p2

    int-to-float p3, p5

    invoke-virtual {p9}, Ljava/lang/Float;->floatValue()F

    move-result p4

    sub-int/2addr p6, p5

    int-to-float p5, p6

    mul-float/2addr p4, p5

    add-float/2addr p3, p4

    float-to-int p3, p3

    int-to-float p4, p7

    invoke-virtual {p9}, Ljava/lang/Float;->floatValue()F

    move-result p5

    sub-int/2addr p8, p7

    int-to-float p6, p8

    mul-float/2addr p5, p6

    add-float/2addr p4, p5

    float-to-int p4, p4

    iget p5, p0, Lp7/h;->p:I

    iget-object p6, p0, Lp7/h;->h:Lr7/d;

    invoke-direct {p0, p1, p2, p5, p6}, Lp7/h;->t(IIILandroid/view/View;)V

    iget p1, p0, Lp7/h;->p:I

    iget-object p2, p0, Lp7/h;->i:Lr7/d;

    invoke-direct {p0, p3, p4, p1, p2}, Lp7/h;->t(IIILandroid/view/View;)V

    return-void
.end method

.method private O(Z)Lr7/d;
    .locals 4

    iget-object v0, p0, Lp7/h;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Lr7/d;

    iget-object v2, p0, Lp7/h;->c:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Lr7/d;-><init>(Landroid/content/Context;Z)V

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    iget v3, p0, Lp7/h;->o:I

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v2, 0x7f060dc1

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v2, 0x1

    invoke-static {v2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-boolean v2, p0, Lp7/h;->v:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v2, 0x31

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    const v2, 0x7f071e8e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {v1, v3, v2, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    :cond_0
    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    :goto_0
    invoke-virtual {v1, v3}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    if-eqz p1, :cond_1

    const v2, 0x7f120aaa

    goto :goto_1

    :cond_1
    const v2, 0x7f120aad

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    invoke-direct {p0, p1}, Lp7/h;->A(Z)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-object v1
.end method

.method private P()Z
    .locals 3

    iget-boolean v0, p0, Lp7/h;->v:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lp7/h;->L()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lp7/h;->m:Lp7/d$b;

    iget-boolean v0, v0, Lp7/d$b;->h:Z

    if-eqz v0, :cond_2

    :cond_1
    invoke-direct {p0}, Lp7/h;->L()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lp7/h;->m:Lp7/d$b;

    iget-boolean v0, v0, Lp7/d$b;->m:Z

    if-nez v0, :cond_3

    :cond_2
    return v2

    :cond_3
    invoke-direct {p0}, Lp7/h;->L()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lp7/h;->M()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lp7/h;->m:Lp7/d$b;

    iget-object v0, v0, Lp7/d$b;->d:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    if-nez v0, :cond_5

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lp7/h;->m:Lp7/d$b;

    iget-object v0, v0, Lp7/d$b;->e:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    if-nez v0, :cond_5

    :goto_0
    move v1, v2

    :cond_5
    return v1

    :cond_6
    invoke-direct {p0}, Lp7/h;->M()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lp7/h;->m:Lp7/d$b;

    iget-object v0, v0, Lp7/d$b;->i:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    if-nez v0, :cond_8

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lp7/h;->m:Lp7/d$b;

    iget-object v0, v0, Lp7/d$b;->j:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    if-nez v0, :cond_8

    :goto_1
    move v1, v2

    :cond_8
    return v1
.end method

.method private R(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lp7/h;->n:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lp7/h;->a:Landroid/view/WindowManager;

    invoke-interface {v0, p1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lp7/h;->n:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private S()V
    .locals 6

    iget-object v0, p0, Lp7/h;->h:Lr7/d;

    invoke-virtual {v0}, Lr7/d;->getCenterPoint()Landroid/graphics/Point;

    move-result-object v0

    iget-object v1, p0, Lp7/h;->i:Lr7/d;

    invoke-virtual {v1}, Lr7/d;->getCenterPoint()Landroid/graphics/Point;

    move-result-object v1

    iget-boolean v2, p0, Lp7/h;->v:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lp7/h;->M()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lp7/h;->L()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lp7/h;->m:Lp7/d$b;

    iget-object v1, v1, Lp7/d$b;->d:Landroid/graphics/Point;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Point;->set(II)V

    iget-object v0, p0, Lp7/h;->m:Lp7/d$b;

    iput-boolean v3, v0, Lp7/d$b;->h:Z

    iput-boolean v3, v0, Lp7/d$b;->g:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lp7/h;->m:Lp7/d$b;

    iget-object v0, v0, Lp7/d$b;->i:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Point;->set(II)V

    iget-object v0, p0, Lp7/h;->m:Lp7/d$b;

    iput-boolean v3, v0, Lp7/d$b;->m:Z

    iput-boolean v3, v0, Lp7/d$b;->l:Z

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lp7/h;->L()Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    iget-object v2, p0, Lp7/h;->m:Lp7/d$b;

    iget-object v2, v2, Lp7/d$b;->e:Landroid/graphics/Point;

    iget v5, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v5, v0}, Landroid/graphics/Point;->set(II)V

    iget-object v0, p0, Lp7/h;->m:Lp7/d$b;

    iget-object v0, v0, Lp7/d$b;->f:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Point;->set(II)V

    iget-object v0, p0, Lp7/h;->m:Lp7/d$b;

    iput-boolean v3, v0, Lp7/d$b;->h:Z

    iput-boolean v4, v0, Lp7/d$b;->g:Z

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lp7/h;->m:Lp7/d$b;

    iget-object v2, v2, Lp7/d$b;->j:Landroid/graphics/Point;

    iget v5, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v5, v0}, Landroid/graphics/Point;->set(II)V

    iget-object v0, p0, Lp7/h;->m:Lp7/d$b;

    iget-object v0, v0, Lp7/d$b;->k:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Point;->set(II)V

    iget-object v0, p0, Lp7/h;->m:Lp7/d$b;

    iput-boolean v3, v0, Lp7/d$b;->m:Z

    iput-boolean v4, v0, Lp7/d$b;->l:Z

    :goto_0
    iget-object v0, p0, Lp7/h;->m:Lp7/d$b;

    iput-boolean v3, v0, Lp7/d$b;->b:Z

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lp7/h;->m:Lp7/d$b;

    iget-object v4, p0, Lp7/h;->f:Lr7/a;

    invoke-virtual {v4}, Lr7/a;->g()Z

    move-result v4

    iput-boolean v4, v2, Lp7/d$b;->b:Z

    iget-object v2, p0, Lp7/h;->m:Lp7/d$b;

    iget-object v2, v2, Lp7/d$b;->d:Landroid/graphics/Point;

    iget v4, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v4, v0}, Landroid/graphics/Point;->set(II)V

    iget-object v0, p0, Lp7/h;->m:Lp7/d$b;

    iget-object v0, v0, Lp7/d$b;->i:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Point;->set(II)V

    iget-object v0, p0, Lp7/h;->m:Lp7/d$b;

    :goto_1
    iput-boolean v3, v0, Lp7/d$b;->c:Z

    return-void
.end method

.method private V(Z)V
    .locals 8

    iget-object v0, p0, Lp7/h;->j:Landroid/graphics/drawable/TransitionDrawable;

    const v1, 0x7f080717

    const/4 v2, 0x1

    const v3, 0x7f080718

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/drawable/TransitionDrawable;

    new-array v6, v5, [Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Lp7/h;->c:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    aput-object v7, v6, v4

    iget-object v7, p0, Lp7/h;->c:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-direct {v0, v6}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lp7/h;->j:Landroid/graphics/drawable/TransitionDrawable;

    :cond_0
    iget-object v0, p0, Lp7/h;->k:Landroid/graphics/drawable/TransitionDrawable;

    if-nez v0, :cond_1

    new-instance v0, Landroid/graphics/drawable/TransitionDrawable;

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lp7/h;->c:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v5, v4

    iget-object v3, p0, Lp7/h;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v5, v2

    invoke-direct {v0, v5}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lp7/h;->k:Landroid/graphics/drawable/TransitionDrawable;

    :cond_1
    if-eqz p1, :cond_2

    iget-object p1, p0, Lp7/h;->h:Lr7/d;

    iget-object v0, p0, Lp7/h;->j:Landroid/graphics/drawable/TransitionDrawable;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lp7/h;->i:Lr7/d;

    iget-object v0, p0, Lp7/h;->k:Landroid/graphics/drawable/TransitionDrawable;

    :goto_0
    invoke-direct {p0, p1, v0}, Lp7/h;->Y(Landroid/widget/TextView;Landroid/graphics/drawable/TransitionDrawable;)V

    return-void
.end method

.method private W()V
    .locals 2

    iget-object v0, p0, Lp7/h;->m:Lp7/d$b;

    iget-boolean v1, v0, Lp7/d$b;->c:Z

    if-eqz v1, :cond_1

    iget-boolean v0, v0, Lp7/d$b;->b:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lp7/h;->r()V

    :cond_1
    :goto_0
    return-void
.end method

.method private Y(Landroid/widget/TextView;Landroid/graphics/drawable/TransitionDrawable;)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 p1, 0x7530

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    return-void
.end method

.method private a0()V
    .locals 11

    iget-object v0, p0, Lp7/h;->h:Lr7/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lp7/h;->i:Lr7/d;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lp7/h;->m:Lp7/d$b;

    iget-boolean v0, v0, Lp7/d$b;->c:Z

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lp7/h;->P()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lp7/h;->p:I

    div-int/2addr v0, v2

    invoke-direct {p0}, Lp7/h;->D()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {p0}, Lp7/h;->E()I

    move-result v4

    sub-int/2addr v4, v0

    invoke-direct {p0}, Lp7/h;->F()I

    move-result v5

    sub-int/2addr v5, v0

    invoke-direct {p0}, Lp7/h;->G()I

    move-result v6

    sub-int/2addr v6, v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lp7/h;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f070c7b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget v3, p0, Lp7/h;->q:I

    div-int/2addr v3, v2

    iget v4, p0, Lp7/h;->r:I

    div-int/2addr v4, v2

    sub-int v5, v3, v0

    iget v6, p0, Lp7/h;->p:I

    sub-int/2addr v5, v6

    int-to-float v4, v4

    int-to-float v6, v6

    const v7, 0x3ea147ae    # 0.315f

    mul-float/2addr v6, v7

    sub-float/2addr v4, v6

    float-to-int v4, v4

    add-int/2addr v0, v3

    move v6, v4

    move v3, v5

    move v5, v0

    :goto_1
    iget v0, p0, Lp7/h;->p:I

    iget-object v7, p0, Lp7/h;->h:Lr7/d;

    invoke-direct {p0, v3, v4, v0, v7}, Lp7/h;->t(IIILandroid/view/View;)V

    iget v0, p0, Lp7/h;->p:I

    iget-object v3, p0, Lp7/h;->i:Lr7/d;

    invoke-direct {p0, v5, v6, v0, v3}, Lp7/h;->t(IIILandroid/view/View;)V

    invoke-direct {p0, v1}, Lp7/h;->c0(Z)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v3, 0x6

    new-array v3, v3, [Landroid/animation/Animator;

    iget-object v4, p0, Lp7/h;->h:Lr7/d;

    new-array v5, v2, [F

    invoke-virtual {v4}, Landroid/view/View;->getScaleX()F

    move-result v6

    const/4 v7, 0x0

    aput v6, v5, v7

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v5, v1

    const-string v8, "scaleX"

    invoke-static {v4, v8, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v7

    iget-object v4, p0, Lp7/h;->h:Lr7/d;

    new-array v5, v2, [F

    invoke-virtual {v4}, Landroid/view/View;->getScaleY()F

    move-result v9

    aput v9, v5, v7

    aput v6, v5, v1

    const-string v9, "scaleY"

    invoke-static {v4, v9, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v1

    iget-object v4, p0, Lp7/h;->i:Lr7/d;

    new-array v5, v2, [F

    invoke-virtual {v4}, Landroid/view/View;->getScaleX()F

    move-result v10

    aput v10, v5, v7

    aput v6, v5, v1

    invoke-static {v4, v8, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v4, 0x3

    iget-object v5, p0, Lp7/h;->i:Lr7/d;

    new-array v2, v2, [F

    invoke-virtual {v5}, Landroid/view/View;->getScaleY()F

    move-result v8

    aput v8, v2, v7

    aput v6, v2, v1

    invoke-static {v5, v9, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v3, v4

    const/4 v2, 0x4

    iget-object v4, p0, Lp7/h;->i:Lr7/d;

    new-array v5, v1, [F

    aput v6, v5, v7

    const-string v8, "alpha"

    invoke-static {v4, v8, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v2, 0x5

    iget-object v4, p0, Lp7/h;->h:Lr7/d;

    new-array v1, v1, [F

    aput v6, v1, v7

    invoke-static {v4, v8, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v3, v2

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private c0(Z)V
    .locals 3

    iget-object v0, p0, Lp7/h;->n:Ljava/util/List;

    iget-object v1, p0, Lp7/h;->h:Lr7/d;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lp7/h;->h:Lr7/d;

    invoke-virtual {v0, p1}, Lr7/d;->setTouchable(Z)V

    iget-object v0, p0, Lp7/h;->a:Landroid/view/WindowManager;

    iget-object v1, p0, Lp7/h;->h:Lr7/d;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v0, p0, Lp7/h;->n:Ljava/util/List;

    iget-object v1, p0, Lp7/h;->i:Lr7/d;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lp7/h;->i:Lr7/d;

    invoke-virtual {v0, p1}, Lr7/d;->setTouchable(Z)V

    iget-object p1, p0, Lp7/h;->a:Landroid/view/WindowManager;

    iget-object v0, p0, Lp7/h;->i:Lr7/d;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method private d0(Z)V
    .locals 3

    if-nez p1, :cond_0

    iget-object v0, p0, Lp7/h;->l:Lp7/h$d;

    sget-object v1, Lp7/h$d;->e:Lp7/h$d;

    if-ne v0, v1, :cond_2

    :cond_0
    invoke-static {}, Lp7/c;->a()Lp7/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lp7/c;->b(I)Z

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lp7/c;->b(I)Z

    move-result v0

    iget-boolean v2, p0, Lp7/h;->v:Z

    if-eqz v2, :cond_1

    invoke-direct {p0, v1, v0}, Lp7/h;->g0(ZZ)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1, v0, p1}, Lp7/h;->f0(ZZZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method private e0(ZLandroid/view/View;)V
    .locals 5

    iget-boolean v0, p0, Lp7/h;->v:Z

    const/4 v1, 0x1

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    move v2, v3

    :cond_0
    new-array p1, v1, [Landroid/view/View;

    aput-object p2, p1, v3

    invoke-static {v2, p1}, Ldb/i;->m(I[Landroid/view/View;)V

    return-void

    :cond_1
    iget-object v0, p0, Lp7/h;->l:Lp7/h$d;

    sget-object v4, Lp7/h$d;->e:Lp7/h$d;

    if-eq v0, v4, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lp7/h;->m:Lp7/d$b;

    iget-boolean v0, v0, Lp7/d$b;->b:Z

    if-nez v0, :cond_3

    new-array p1, v1, [Landroid/view/View;

    aput-object p2, p1, v3

    invoke-static {v2, p1}, Ldb/i;->m(I[Landroid/view/View;)V

    return-void

    :cond_3
    if-eqz p1, :cond_4

    move v2, v3

    :cond_4
    new-array p1, v1, [Landroid/view/View;

    aput-object p2, p1, v3

    invoke-static {v2, p1}, Ldb/i;->m(I[Landroid/view/View;)V

    return-void
.end method

.method private f0(ZZZ)V
    .locals 1

    if-eqz p3, :cond_0

    const/4 p1, 0x2

    new-array p1, p1, [Landroid/view/View;

    iget-object p2, p0, Lp7/h;->h:Lr7/d;

    const/4 p3, 0x0

    aput-object p2, p1, p3

    const/4 p2, 0x1

    iget-object v0, p0, Lp7/h;->i:Lr7/d;

    aput-object v0, p1, p2

    invoke-static {p3, p1}, Ldb/i;->m(I[Landroid/view/View;)V

    return-void

    :cond_0
    iget-object p3, p0, Lp7/h;->h:Lr7/d;

    invoke-direct {p0, p1, p3}, Lp7/h;->e0(ZLandroid/view/View;)V

    iget-object p1, p0, Lp7/h;->i:Lr7/d;

    invoke-direct {p0, p2, p1}, Lp7/h;->e0(ZLandroid/view/View;)V

    return-void
.end method

.method private g0(ZZ)V
    .locals 2

    invoke-direct {p0}, Lp7/h;->K()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object p1, p0, Lp7/h;->h:Lr7/d;

    invoke-direct {p0, v1, p1}, Lp7/h;->e0(ZLandroid/view/View;)V

    iget-object p1, p0, Lp7/h;->i:Lr7/d;

    invoke-direct {p0, v1, p1}, Lp7/h;->e0(ZLandroid/view/View;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lp7/h;->M()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lp7/h;->L()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p2, p0, Lp7/h;->h:Lr7/d;

    invoke-direct {p0, p1, p2}, Lp7/h;->e0(ZLandroid/view/View;)V

    iget-object p1, p0, Lp7/h;->i:Lr7/d;

    invoke-direct {p0, v1, p1}, Lp7/h;->e0(ZLandroid/view/View;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lp7/h;->h:Lr7/d;

    invoke-direct {p0, v1, p1}, Lp7/h;->e0(ZLandroid/view/View;)V

    iget-object p1, p0, Lp7/h;->i:Lr7/d;

    invoke-direct {p0, p2, p1}, Lp7/h;->e0(ZLandroid/view/View;)V

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lp7/h;->h:Lr7/d;

    invoke-direct {p0, p1, p2}, Lp7/h;->e0(ZLandroid/view/View;)V

    iget-object p2, p0, Lp7/h;->i:Lr7/d;

    invoke-direct {p0, p1, p2}, Lp7/h;->e0(ZLandroid/view/View;)V

    :goto_0
    return-void
.end method

.method public static synthetic j(Lp7/h;IIIIIIIILandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lp7/h;->N(IIIIIIIILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method static synthetic k(Lp7/h;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lp7/h;->s:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic l(Lp7/h;)Lr7/a;
    .locals 0

    iget-object p0, p0, Lp7/h;->f:Lr7/a;

    return-object p0
.end method

.method static synthetic m(Lp7/h;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lp7/h;->R(Landroid/view/View;)V

    return-void
.end method

.method static synthetic n(Lp7/h;)Lr7/d;
    .locals 0

    iget-object p0, p0, Lp7/h;->h:Lr7/d;

    return-object p0
.end method

.method static synthetic o(Lp7/h;)Lr7/d;
    .locals 0

    iget-object p0, p0, Lp7/h;->i:Lr7/d;

    return-object p0
.end method

.method static synthetic p(Lp7/h;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lp7/h;->c0(Z)V

    return-void
.end method

.method static synthetic q(Lp7/h;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lp7/h;->d0(Z)V

    return-void
.end method

.method private r()V
    .locals 6

    iget v0, p0, Lp7/h;->p:I

    const/4 v1, 0x2

    div-int/2addr v0, v1

    new-array v1, v1, [Landroid/view/View;

    iget-object v2, p0, Lp7/h;->h:Lr7/d;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lp7/h;->i:Lr7/d;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x4

    invoke-static {v2, v1}, Ldb/i;->m(I[Landroid/view/View;)V

    invoke-direct {p0}, Lp7/h;->D()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-direct {p0}, Lp7/h;->E()I

    move-result v2

    sub-int/2addr v2, v0

    iget v4, p0, Lp7/h;->p:I

    iget-object v5, p0, Lp7/h;->h:Lr7/d;

    invoke-direct {p0, v1, v2, v4, v5}, Lp7/h;->t(IIILandroid/view/View;)V

    invoke-direct {p0}, Lp7/h;->F()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-direct {p0}, Lp7/h;->G()I

    move-result v2

    sub-int/2addr v2, v0

    iget v0, p0, Lp7/h;->p:I

    iget-object v4, p0, Lp7/h;->i:Lr7/d;

    invoke-direct {p0, v1, v2, v0, v4}, Lp7/h;->t(IIILandroid/view/View;)V

    iget-object v0, p0, Lp7/h;->i:Lr7/d;

    const v1, 0x3ea147ae    # 0.315f

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lp7/h;->i:Lr7/d;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    iget-object v0, p0, Lp7/h;->h:Lr7/d;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lp7/h;->h:Lr7/d;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    iget-object v0, p0, Lp7/h;->h:Lr7/d;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lp7/h;->i:Lr7/d;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    invoke-direct {p0, v3}, Lp7/h;->d0(Z)V

    invoke-direct {p0, v3}, Lp7/h;->c0(Z)V

    return-void
.end method

.method private s()V
    .locals 4

    iget-object v0, p0, Lp7/h;->b:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lp7/h;->f:Lr7/a;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lp7/h;->f:Lr7/a;

    invoke-direct {p0, v0}, Lp7/h;->u(Landroid/view/View;)V

    iget-object v0, p0, Lp7/h;->f:Lr7/a;

    iget-object v2, p0, Lp7/h;->m:Lp7/d$b;

    iget-boolean v2, v2, Lp7/d$b;->b:Z

    invoke-virtual {v0, v2}, Lr7/a;->setShowFloatingButtons(Z)V

    iget-object v0, p0, Lp7/h;->f:Lr7/a;

    invoke-virtual {v0}, Lr7/a;->h()V

    iget-object v0, p0, Lp7/h;->f:Lr7/a;

    instance-of v2, v0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;

    invoke-virtual {v0}, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->q()V

    :cond_0
    iget-object v0, p0, Lp7/h;->f:Lr7/a;

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v2, v1

    const-string v1, "alpha"

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private t(IIILandroid/view/View;)V
    .locals 2

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iget-object v1, p0, Lp7/h;->b:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    const/16 p1, 0x7d3

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1f

    if-lt p1, p2, :cond_0

    iget-object p1, p0, Lp7/h;->c:Landroid/content/Context;

    invoke-static {p1}, La8/k2;->g(Landroid/content/Context;)F

    move-result p1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    :cond_0
    iget-object p1, p0, Lp7/h;->n:Ljava/util/List;

    invoke-interface {p1, p4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0, p4, v0}, Lp7/h;->v(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lp7/h;->a:Landroid/view/WindowManager;

    invoke-interface {p1, p4, v0}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method

.method private u(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lp7/h;->b:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0, p1, v0}, Lp7/h;->v(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private v(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lp7/h;->n:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, La8/k2;->x(Landroid/view/View;)V

    iget-object v0, p0, Lp7/h;->a:Landroid/view/WindowManager;

    invoke-interface {v0, p1, p2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lp7/h;->a:Landroid/view/WindowManager;

    invoke-interface {v0, p1, p2}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p2, p0, Lp7/h;->n:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private w(Z)V
    .locals 17

    move-object/from16 v10, p0

    iget-boolean v0, v10, Lp7/h;->v:Z

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eqz v0, :cond_0

    invoke-direct {v10, v12}, Lp7/h;->c0(Z)V

    invoke-direct {v10, v11}, Lp7/h;->d0(Z)V

    return-void

    :cond_0
    new-instance v13, Landroid/animation/AnimatorSet;

    invoke-direct {v13}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-direct {v10, v12}, Lp7/h;->c0(Z)V

    iget-object v0, v10, Lp7/h;->m:Lp7/d$b;

    iget-boolean v0, v0, Lp7/d$b;->b:Z

    const-wide/16 v14, 0xc8

    const/4 v9, 0x2

    if-nez v0, :cond_1

    new-array v0, v9, [Landroid/animation/Animator;

    iget-object v1, v10, Lp7/h;->h:Lr7/d;

    const/4 v2, 0x0

    const/16 v3, 0xc8

    invoke-static {v1, v2, v3}, Ldb/i;->n(Landroid/view/View;FI)Landroid/animation/Animator;

    move-result-object v1

    aput-object v1, v0, v12

    iget-object v1, v10, Lp7/h;->i:Lr7/d;

    invoke-static {v1, v2, v3}, Ldb/i;->n(Landroid/view/View;FI)Landroid/animation/Animator;

    move-result-object v1

    aput-object v1, v0, v11

    invoke-virtual {v13, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v13, v14, v15}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v0, Lp7/h$b;

    invoke-direct {v0, v10}, Lp7/h$b;-><init>(Lp7/h;)V

    invoke-virtual {v13, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v13}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget v0, v10, Lp7/h;->p:I

    div-int/2addr v0, v9

    invoke-direct/range {p0 .. p0}, Lp7/h;->D()I

    move-result v1

    sub-int v3, v1, v0

    invoke-direct/range {p0 .. p0}, Lp7/h;->E()I

    move-result v1

    sub-int v5, v1, v0

    invoke-direct/range {p0 .. p0}, Lp7/h;->F()I

    move-result v1

    sub-int v7, v1, v0

    invoke-direct/range {p0 .. p0}, Lp7/h;->G()I

    move-result v1

    sub-int v16, v1, v0

    iget-object v0, v10, Lp7/h;->h:Lr7/d;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    iget-object v1, v10, Lp7/h;->i:Lr7/d;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v6, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v8, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    new-array v0, v9, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v0, Lp7/f;

    move-object/from16 p1, v0

    move-object v14, v1

    move-object/from16 v1, p0

    move v15, v9

    move/from16 v9, v16

    invoke-direct/range {v0 .. v9}, Lp7/f;-><init>(Lp7/h;IIIIIIII)V

    invoke-virtual {v14, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    move-object v0, v14

    goto :goto_0

    :cond_2
    move v15, v9

    :goto_0
    const/4 v2, 0x4

    const/4 v3, 0x3

    const/high16 v5, 0x3f000000    # 0.5f

    const-string v6, "alpha"

    const-string v7, "scaleY"

    const-string v8, "scaleX"

    const v9, 0x3ea147ae    # 0.315f

    if-eqz v0, :cond_3

    const/4 v14, 0x7

    new-array v14, v14, [Landroid/animation/Animator;

    iget-object v4, v10, Lp7/h;->h:Lr7/d;

    new-array v1, v11, [F

    aput v9, v1, v12

    invoke-static {v4, v8, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v14, v12

    iget-object v1, v10, Lp7/h;->h:Lr7/d;

    new-array v4, v11, [F

    aput v9, v4, v12

    invoke-static {v1, v7, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v14, v11

    iget-object v1, v10, Lp7/h;->i:Lr7/d;

    new-array v4, v11, [F

    aput v9, v4, v12

    invoke-static {v1, v8, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v14, v15

    iget-object v1, v10, Lp7/h;->i:Lr7/d;

    new-array v4, v11, [F

    aput v9, v4, v12

    invoke-static {v1, v7, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v14, v3

    iget-object v1, v10, Lp7/h;->i:Lr7/d;

    new-array v3, v11, [F

    aput v5, v3, v12

    invoke-static {v1, v6, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v14, v2

    iget-object v1, v10, Lp7/h;->h:Lr7/d;

    new-array v2, v11, [F

    aput v5, v2, v12

    invoke-static {v1, v6, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v14, v2

    const/4 v1, 0x6

    aput-object v0, v14, v1

    invoke-virtual {v13, v14}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_1

    :cond_3
    const/4 v1, 0x6

    new-array v0, v1, [Landroid/animation/Animator;

    iget-object v1, v10, Lp7/h;->h:Lr7/d;

    new-array v4, v11, [F

    aput v9, v4, v12

    invoke-static {v1, v8, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v0, v12

    iget-object v1, v10, Lp7/h;->h:Lr7/d;

    new-array v4, v11, [F

    aput v9, v4, v12

    invoke-static {v1, v7, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v0, v11

    iget-object v1, v10, Lp7/h;->i:Lr7/d;

    new-array v4, v11, [F

    aput v9, v4, v12

    invoke-static {v1, v8, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v0, v15

    iget-object v1, v10, Lp7/h;->i:Lr7/d;

    new-array v4, v11, [F

    aput v9, v4, v12

    invoke-static {v1, v7, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v0, v3

    iget-object v1, v10, Lp7/h;->i:Lr7/d;

    new-array v3, v11, [F

    aput v5, v3, v12

    invoke-static {v1, v6, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v0, v2

    iget-object v1, v10, Lp7/h;->h:Lr7/d;

    new-array v2, v11, [F

    aput v5, v2, v12

    invoke-static {v1, v6, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-virtual {v13, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :goto_1
    const-wide/16 v0, 0xc8

    invoke-virtual {v13, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v0, Lp7/h$c;

    invoke-direct {v0, v10}, Lp7/h$c;-><init>(Lp7/h;)V

    invoke-virtual {v13, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v13}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private y()Landroid/view/WindowManager$LayoutParams;
    .locals 3

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    const/16 v2, 0x7f6

    goto :goto_0

    :cond_0
    const/16 v2, 0x7d2

    :goto_0
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, -0x3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const v2, 0x800033

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const v2, 0x50328

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_1

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    :cond_1
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    return-object v0
.end method


# virtual methods
.method public I()V
    .locals 1

    invoke-direct {p0}, Lp7/h;->y()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lp7/h;->b:Landroid/view/WindowManager$LayoutParams;

    invoke-static {v0}, Ls8/y;->a(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public J()V
    .locals 3

    iget-object v0, p0, Lp7/h;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lp7/h;->e:Landroid/view/LayoutInflater;

    iget-boolean v1, p0, Lp7/h;->v:Z

    if-eqz v1, :cond_0

    const v1, 0x7f0e04a9

    goto :goto_0

    :cond_0
    const v1, 0x7f0e04a8

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lr7/a;

    iput-object v0, p0, Lp7/h;->f:Lr7/a;

    iget-object v1, p0, Lp7/h;->m:Lp7/d$b;

    invoke-virtual {v0, v1}, Lr7/a;->f(Lp7/d$b;)V

    iget-object v0, p0, Lp7/h;->f:Lr7/a;

    invoke-virtual {v0, p0}, Lr7/a;->setOnActionEvent(Lr7/b;)V

    iget-object v0, p0, Lp7/h;->f:Lr7/a;

    invoke-virtual {v0, p0}, Lr7/a;->setOnTriggerEvent(Lr7/c;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lp7/h;->O(Z)Lr7/d;

    move-result-object v0

    iput-object v0, p0, Lp7/h;->h:Lr7/d;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lp7/h;->O(Z)Lr7/d;

    move-result-object v0

    iput-object v0, p0, Lp7/h;->i:Lr7/d;

    iget-object v0, p0, Lp7/h;->h:Lr7/d;

    invoke-virtual {v0, p0}, Lr7/d;->setActionEventListener(Lr7/d$a;)V

    iget-object v0, p0, Lp7/h;->i:Lr7/d;

    invoke-virtual {v0, p0}, Lr7/d;->setActionEventListener(Lr7/d$a;)V

    return-void
.end method

.method public Q()V
    .locals 3

    iget-object v0, p0, Lp7/h;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lp7/h;->a:Landroid/view/WindowManager;

    invoke-interface {v2, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lp7/h;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public T(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lp7/h;->u:Ljava/lang/String;

    return-void
.end method

.method public U()V
    .locals 4

    sget-object v0, Lp7/h$d;->b:Lp7/h$d;

    iput-object v0, p0, Lp7/h;->l:Lp7/h$d;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    invoke-static {v0}, Ls8/y;->a(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v1, p0, Lp7/h;->c:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lp7/h;->a:Landroid/view/WindowManager;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    const/16 v2, 0x7f6

    goto :goto_0

    :cond_0
    const/16 v2, 0x7d2

    :goto_0
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, -0x3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const v2, 0x800033

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const v2, 0x50328

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_1

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    :cond_1
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v1, p0, Lp7/h;->g:Lcom/miui/gamebooster/shoulderkey/widget/a;

    if-nez v1, :cond_3

    iget-object v1, p0, Lp7/h;->e:Landroid/view/LayoutInflater;

    invoke-static {}, Lp7/c;->a()Lp7/c;

    move-result-object v2

    invoke-virtual {v2}, Lp7/c;->d()Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x7f0e04ab

    goto :goto_1

    :cond_2
    const v2, 0x7f0e04aa

    :goto_1
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/gamebooster/shoulderkey/widget/a;

    iput-object v1, p0, Lp7/h;->g:Lcom/miui/gamebooster/shoulderkey/widget/a;

    invoke-virtual {v1, p0}, Lcom/miui/gamebooster/shoulderkey/widget/a;->setOnItemClickListener(Lcom/miui/gamebooster/shoulderkey/widget/a$a;)V

    :cond_3
    iget-object v1, p0, Lp7/h;->g:Lcom/miui/gamebooster/shoulderkey/widget/a;

    invoke-direct {p0, v1, v0}, Lp7/h;->v(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public X()V
    .locals 1

    invoke-direct {p0}, Lp7/h;->s()V

    invoke-direct {p0}, Lp7/h;->a0()V

    iget-boolean v0, p0, Lp7/h;->v:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lp7/h;->d0(Z)V

    sget-object v0, Lp7/h$d;->d:Lp7/h$d;

    iput-object v0, p0, Lp7/h;->l:Lp7/h$d;

    return-void
.end method

.method public Z(Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "syncConfigToFramework: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lp7/h;->m:Lp7/d$b;

    if-eqz v2, :cond_1

    iget-boolean v2, v2, Lp7/d$b;->c:Z

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ShoulderKeyWM"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lp7/h;->m:Lp7/d$b;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lp7/h;->m:Lp7/d$b;

    iget-object v1, v1, Lp7/d$b;->d:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lp7/h;->m:Lp7/d$b;

    iget-object v1, v1, Lp7/d$b;->i:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lp7/h;->m:Lp7/d$b;

    if-eqz v0, :cond_5

    iget-boolean v0, v0, Lp7/d$b;->c:Z

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    if-eqz p1, :cond_4

    invoke-static {}, Lp7/c;->a()Lp7/c;

    move-result-object p1

    iget-object v0, p0, Lp7/h;->m:Lp7/d$b;

    invoke-virtual {p1, v0}, Lp7/c;->j(Lp7/d$b;)V

    goto :goto_2

    :cond_4
    invoke-static {}, Lp7/c;->a()Lp7/c;

    move-result-object p1

    iget-object v0, p0, Lp7/h;->m:Lp7/d$b;

    invoke-virtual {p1, v0}, Lp7/c;->f(Lp7/d$b;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public a()V
    .locals 2

    invoke-direct {p0}, Lp7/h;->S()V

    invoke-direct {p0}, Lp7/h;->H()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lp7/h;->w(Z)V

    invoke-static {}, Lp7/d;->b()Lp7/d;

    move-result-object v0

    invoke-virtual {v0}, Lp7/d;->a()Lp7/d$a;

    move-result-object v0

    iget-object v1, p0, Lp7/h;->m:Lp7/d$b;

    invoke-virtual {v0, v1}, Lp7/d$a;->b(Lp7/d$b;)Lp7/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lp7/d$a;->a()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lp7/h;->Z(Z)V

    sget-object v0, Lp7/h$d;->e:Lp7/h$d;

    iput-object v0, p0, Lp7/h;->l:Lp7/h$d;

    return-void
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lp7/h;->g:Lcom/miui/gamebooster/shoulderkey/widget/a;

    invoke-direct {p0, v0}, Lp7/h;->R(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lp7/h;->g:Lcom/miui/gamebooster/shoulderkey/widget/a;

    sget-object v0, Lp7/h$d;->e:Lp7/h$d;

    iput-object v0, p0, Lp7/h;->l:Lp7/h$d;

    invoke-virtual {p0}, Lp7/h;->X()V

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "status"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "shoulder_key_settings"

    invoke-static {v1, v0}, Lp7/e;->b(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public b0()V
    .locals 4

    iget-boolean v0, p0, Lp7/h;->v:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lp7/h;->L()Z

    move-result v0

    invoke-direct {p0}, Lp7/h;->M()Z

    move-result v1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lp7/h;->h:Lr7/d;

    const v2, 0x7f120aaa

    if-eqz v1, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    const v3, 0x7f120aab

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lp7/h;->i:Lr7/d;

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    const v2, 0x7f120aac

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lp7/h;->h:Lr7/d;

    const v2, 0x7f120aad

    if-eqz v1, :cond_4

    move v3, v2

    goto :goto_1

    :cond_4
    const v3, 0x7f120aae

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lp7/h;->i:Lr7/d;

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    const v2, 0x7f120aaf

    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public c()V
    .locals 2

    invoke-direct {p0}, Lp7/h;->S()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTriggerSave: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lp7/h;->m:Lp7/d$b;

    invoke-virtual {v1}, Lp7/d$b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShoulderKeyWM"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lp7/d;->b()Lp7/d;

    move-result-object v0

    invoke-virtual {v0}, Lp7/d;->a()Lp7/d$a;

    move-result-object v0

    iget-object v1, p0, Lp7/h;->m:Lp7/d$b;

    invoke-virtual {v0, v1}, Lp7/d$a;->b(Lp7/d$b;)Lp7/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lp7/d$a;->a()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lp7/h;->Z(Z)V

    return-void
.end method

.method public d(Lr7/d;)V
    .locals 9

    iget-object v0, p0, Lp7/h;->w:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lp7/h;->w:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    iget-object v0, p0, Lp7/h;->h:Lr7/d;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    move p1, v2

    :goto_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lp7/h;->w:Landroid/animation/AnimatorSet;

    const/4 v3, 0x3

    new-array v3, v3, [Landroid/animation/Animator;

    iget-object v4, p0, Lp7/h;->f:Lr7/a;

    const/4 v5, 0x0

    const/16 v6, 0xc8

    invoke-static {v4, v5, v6, v2}, Ldb/i;->p(Landroid/view/View;FIZ)Landroid/animation/Animator;

    move-result-object v4

    aput-object v4, v3, v2

    iget-object v4, p0, Lp7/h;->i:Lr7/d;

    const/high16 v5, 0x3f000000    # 0.5f

    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz p1, :cond_2

    move v8, v5

    goto :goto_1

    :cond_2
    move v8, v7

    :goto_1
    invoke-static {v4, v8, v6, v2}, Ldb/i;->p(Landroid/view/View;FIZ)Landroid/animation/Animator;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    iget-object v4, p0, Lp7/h;->h:Lr7/d;

    if-eqz p1, :cond_3

    move v5, v7

    :cond_3
    invoke-static {v4, v5, v6, v2}, Ldb/i;->p(Landroid/view/View;FIZ)Landroid/animation/Animator;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object p1, p0, Lp7/h;->w:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object p1, p0, Lp7/h;->w:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public e(ZZ)V
    .locals 5

    invoke-static {}, Lp7/c;->a()Lp7/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lp7/c;->b(I)Z

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lp7/c;->b(I)Z

    move-result v0

    invoke-direct {p0}, Lp7/h;->M()Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz p1, :cond_0

    if-eqz v2, :cond_0

    if-eqz p2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iget-object v4, p0, Lp7/h;->h:Lr7/d;

    invoke-direct {p0, v2, v4}, Lp7/h;->e0(ZLandroid/view/View;)V

    if-nez p1, :cond_1

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    move v1, v3

    :cond_1
    iget-object p1, p0, Lp7/h;->i:Lr7/d;

    invoke-direct {p0, v1, p1}, Lp7/h;->e0(ZLandroid/view/View;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lp7/h;->h:Lr7/d;

    invoke-direct {p0, p2, p1}, Lp7/h;->e0(ZLandroid/view/View;)V

    iget-object p1, p0, Lp7/h;->i:Lr7/d;

    invoke-direct {p0, p2, p1}, Lp7/h;->e0(ZLandroid/view/View;)V

    :goto_1
    iget-object p1, p0, Lp7/h;->h:Lr7/d;

    invoke-direct {p0}, Lp7/h;->M()Z

    move-result p2

    xor-int/2addr p2, v3

    invoke-virtual {p1, p2}, Lr7/d;->h(Z)V

    iget-object p1, p0, Lp7/h;->i:Lr7/d;

    invoke-direct {p0}, Lp7/h;->M()Z

    move-result p2

    xor-int/2addr p2, v3

    invoke-virtual {p1, p2}, Lr7/d;->h(Z)V

    invoke-direct {p0}, Lp7/h;->a0()V

    invoke-virtual {p0}, Lp7/h;->b0()V

    return-void
.end method

.method public f(III)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_b

    if-nez p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    if-ne p3, v1, :cond_1

    move v0, v1

    :cond_1
    iget-boolean v1, p0, Lp7/h;->v:Z

    if-eqz v1, :cond_a

    invoke-direct {p0}, Lp7/h;->K()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v0, p0, Lp7/h;->f:Lr7/a;

    instance-of v1, v0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;

    invoke-virtual {v0}, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->x()V

    :cond_2
    iget-object v0, p0, Lp7/h;->f:Lr7/a;

    invoke-virtual {v0}, Lr7/a;->h()V

    goto/16 :goto_7

    :cond_3
    invoke-direct {p0}, Lp7/h;->M()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-direct {p0}, Lp7/h;->L()Z

    move-result v1

    if-eqz v1, :cond_4

    if-nez v2, :cond_5

    :cond_4
    invoke-direct {p0}, Lp7/h;->L()Z

    move-result v1

    if-nez v1, :cond_16

    if-nez v2, :cond_16

    :cond_5
    iget-object v1, p0, Lp7/h;->h:Lr7/d;

    invoke-direct {p0, v0, v1}, Lp7/h;->e0(ZLandroid/view/View;)V

    :cond_6
    iget-object v1, p0, Lp7/h;->i:Lr7/d;

    goto :goto_2

    :cond_7
    invoke-direct {p0}, Lp7/h;->L()Z

    move-result v1

    if-eqz v1, :cond_8

    if-nez v2, :cond_9

    :cond_8
    invoke-direct {p0}, Lp7/h;->L()Z

    move-result v1

    if-nez v1, :cond_16

    if-nez v2, :cond_16

    :cond_9
    if-eqz v2, :cond_6

    :goto_1
    iget-object v1, p0, Lp7/h;->h:Lr7/d;

    goto :goto_2

    :cond_a
    if-eqz v2, :cond_6

    goto :goto_1

    :goto_2
    invoke-direct {p0, v0, v1}, Lp7/h;->e0(ZLandroid/view/View;)V

    goto/16 :goto_7

    :cond_b
    if-ne p2, v1, :cond_16

    if-nez p1, :cond_c

    move v2, v1

    goto :goto_3

    :cond_c
    move v2, v0

    :goto_3
    invoke-static {}, Lp7/d;->b()Lp7/d;

    move-result-object v3

    invoke-virtual {v3}, Lp7/d;->h()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-static {}, Lp7/b;->f()Lp7/b;

    move-result-object v3

    if-nez p3, :cond_e

    if-eqz v2, :cond_d

    move v4, v1

    goto :goto_4

    :cond_d
    const/4 v4, 0x2

    :goto_4
    invoke-virtual {v3, v4}, Lp7/b;->b(I)V

    goto :goto_5

    :cond_e
    invoke-virtual {v3, v2}, Lp7/b;->k(Z)V

    :cond_f
    :goto_5
    iget-boolean v3, p0, Lp7/h;->v:Z

    if-eqz v3, :cond_16

    invoke-direct {p0}, Lp7/h;->M()Z

    move-result v3

    if-eqz v3, :cond_12

    iget-object v3, p0, Lp7/h;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-nez p3, :cond_10

    move v0, v1

    :cond_10
    invoke-direct {p0, v0}, Lp7/h;->B(Z)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v2, :cond_11

    iget-object v1, p0, Lp7/h;->h:Lr7/d;

    goto :goto_6

    :cond_11
    iget-object v1, p0, Lp7/h;->i:Lr7/d;

    :goto_6
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_7

    :cond_12
    if-eqz v2, :cond_13

    invoke-direct {p0}, Lp7/h;->L()Z

    move-result v3

    if-nez v3, :cond_14

    :cond_13
    if-nez v2, :cond_16

    invoke-direct {p0}, Lp7/h;->L()Z

    move-result v2

    if-nez v2, :cond_16

    :cond_14
    if-nez p3, :cond_15

    move v0, v1

    :cond_15
    invoke-direct {p0, v0}, Lp7/h;->V(Z)V

    :cond_16
    :goto_7
    sget-boolean v0, Luf/a;->a:Z

    if-eqz v0, :cond_17

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceiveEvent: position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\ttype="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\taction="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ShoulderKeyWM"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    return-void
.end method

.method public g(Lr7/d;)V
    .locals 6

    iget-object p1, p0, Lp7/h;->w:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lp7/h;->w:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lp7/h;->w:Landroid/animation/AnimatorSet;

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/animation/Animator;

    iget-object v1, p0, Lp7/h;->f:Lr7/a;

    const/high16 v2, 0x3f800000    # 1.0f

    const/16 v3, 0xc8

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Ldb/i;->p(Landroid/view/View;FIZ)Landroid/animation/Animator;

    move-result-object v1

    aput-object v1, v0, v4

    const/4 v1, 0x1

    iget-object v5, p0, Lp7/h;->i:Lr7/d;

    invoke-static {v5, v2, v3, v4}, Ldb/i;->p(Landroid/view/View;FIZ)Landroid/animation/Animator;

    move-result-object v5

    aput-object v5, v0, v1

    const/4 v1, 0x2

    iget-object v5, p0, Lp7/h;->h:Lr7/d;

    invoke-static {v5, v2, v3, v4}, Ldb/i;->p(Landroid/view/View;FIZ)Landroid/animation/Animator;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object p1, p0, Lp7/h;->w:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object p1, p0, Lp7/h;->w:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public h()V
    .locals 1

    invoke-direct {p0}, Lp7/h;->H()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lp7/h;->w(Z)V

    sget-object v0, Lp7/h$d;->e:Lp7/h$d;

    iput-object v0, p0, Lp7/h;->l:Lp7/h$d;

    return-void
.end method

.method public i(Lr7/d;)V
    .locals 2

    iget-object v0, p0, Lp7/h;->a:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public onCancel()V
    .locals 1

    invoke-direct {p0}, Lp7/h;->H()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lp7/h;->w(Z)V

    sget-object v0, Lp7/h$d;->e:Lp7/h$d;

    iput-object v0, p0, Lp7/h;->l:Lp7/h$d;

    return-void
.end method

.method public x(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lp7/h;->t:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lp7/d;->b()Lp7/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lp7/d;->i(Ljava/lang/String;)Lp7/d$b;

    move-result-object p1

    iput-object p1, p0, Lp7/h;->m:Lp7/d$b;

    invoke-static {}, Lp7/c;->a()Lp7/c;

    move-result-object p1

    invoke-virtual {p1, p0}, Lp7/c;->g(Lp7/c$a;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "init: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lp7/h;->m:Lp7/d$b;

    invoke-virtual {v0}, Lp7/d$b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ShoulderKeyWM"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lp7/h;->J()V

    invoke-virtual {p0}, Lp7/h;->I()V

    invoke-direct {p0}, Lp7/h;->W()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lp7/h;->t:Z

    return-void
.end method

.method public z()V
    .locals 1

    invoke-virtual {p0}, Lp7/h;->Q()V

    invoke-static {}, Lp7/c;->a()Lp7/c;

    move-result-object v0

    invoke-virtual {v0}, Lp7/c;->h()V

    invoke-static {}, Lp7/c;->a()Lp7/c;

    move-result-object v0

    invoke-virtual {v0}, Lp7/c;->i()V

    sget-object v0, Lp7/h$d;->e:Lp7/h$d;

    iput-object v0, p0, Lp7/h;->l:Lp7/h$d;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lp7/h;->t:Z

    return-void
.end method

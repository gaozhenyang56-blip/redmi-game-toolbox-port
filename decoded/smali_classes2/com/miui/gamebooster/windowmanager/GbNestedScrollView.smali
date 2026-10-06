.class public Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;
.super Lmiuix/core/widget/NestedScrollView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gamebooster/windowmanager/GbNestedScrollView$e;,
        Lcom/miui/gamebooster/windowmanager/GbNestedScrollView$d;,
        Lcom/miui/gamebooster/windowmanager/GbNestedScrollView$f;
    }
.end annotation


# instance fields
.field private F:Landroid/view/View;

.field private G:Landroidx/recyclerview/widget/RecyclerView;

.field private H:Landroidx/recyclerview/widget/RecyclerView;

.field private I:I

.field private J:Z

.field private K:Z

.field private L:F

.field private M:F

.field private N:Z

.field private O:F

.field private P:F

.field private Q:F

.field private R:I

.field private S:I

.field private T:I

.field private U:I

.field private V:I

.field private W:I

.field private f0:Landroid/view/View;

.field private g0:Landroid/view/View;

.field private h0:Lcom/miui/gamebooster/windowmanager/GbNestedScrollView$f;

.field private i0:Z

.field private j0:Lcom/miui/gamebooster/windowmanager/GbNestedScrollView$e;

.field private k0:Z

.field private l0:I

.field private final m0:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lmiuix/core/widget/NestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->N:Z

    const/4 p2, -0x1

    iput p2, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->W:I

    iput-boolean p1, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->k0:Z

    iput p1, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->l0:I

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    new-instance v0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView$a;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView$a;-><init>(Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;)V

    invoke-direct {p1, p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->m0:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic K(Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->f0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static synthetic L(Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->k0:Z

    return p0
.end method

.method static synthetic M(Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->setScrollState(I)V

    return-void
.end method

.method static synthetic N(Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->g0()V

    return-void
.end method

.method static synthetic O(Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->i0()V

    return-void
.end method

.method static synthetic P(Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->J:Z

    return p1
.end method

.method static synthetic Q(Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->K:Z

    return p1
.end method

.method static synthetic R(Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;)I
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->getMainViewHeight()I

    move-result p0

    return p0
.end method

.method static synthetic S(Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->h0()V

    return-void
.end method

.method static synthetic T(Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->G:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic U(Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;)I
    .locals 0

    iget p0, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->I:I

    return p0
.end method

.method static synthetic V(Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;I)I
    .locals 0

    iput p1, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->I:I

    return p1
.end method

.method static synthetic W(Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->b0(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method static synthetic X(Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;)I
    .locals 0

    iget p0, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->V:I

    return p0
.end method

.method static synthetic Y(Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->H:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic Z(Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->i0:Z

    return p0
.end method

.method static synthetic a0(Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;)I
    .locals 0

    iget p0, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->W:I

    return p0
.end method

.method private b0(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lsl/a;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->V:I

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void

    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$n;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$n;->getItemCount()I

    move-result v0

    instance-of v2, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v2, :cond_7

    move-object v2, p1

    check-cast v2, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/GridLayoutManager;->k()I

    move-result v3

    invoke-virtual {v2}, Landroidx/recyclerview/widget/GridLayoutManager;->o()Landroidx/recyclerview/widget/GridLayoutManager$c;

    move-result-object v2

    :goto_0
    if-ge v1, v0, :cond_7

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/GridLayoutManager$c;->f(I)I

    move-result v4

    div-int v5, v3, v4

    rem-int v5, v1, v5

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$n;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x1

    if-ne v4, v7, :cond_3

    iget v8, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->R:I

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    goto :goto_1

    :cond_2
    move v6, v8

    :goto_1
    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->R:I

    goto :goto_3

    :cond_3
    iget v8, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->S:I

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    goto :goto_2

    :cond_4
    move v6, v8

    :goto_2
    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->S:I

    :goto_3
    if-nez v5, :cond_6

    iget v5, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->V:I

    if-ne v4, v7, :cond_5

    iget v4, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->R:I

    iget v6, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->T:I

    goto :goto_4

    :cond_5
    iget v4, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->S:I

    iget v6, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->U:I

    :goto_4
    add-int/2addr v4, v6

    add-int/2addr v5, v4

    iput v5, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->V:I

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method private d0(Landroid/view/MotionEvent;)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->k0:Z

    :goto_0
    return-void
.end method

.method private e0(Landroid/view/MotionEvent;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->k0:Z

    invoke-direct {p0}, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->h0()V

    :goto_0
    return-void
.end method

.method private synthetic f0(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->setMainViewHeight(I)V

    return-void
.end method

.method private g0()V
    .locals 10

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->G:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lp7/c;->a()Lp7/c;

    move-result-object v0

    invoke-virtual {v0}, Lp7/c;->c()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lw6/i;->f()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->G:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$n;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->G:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$h;

    move-result-object v1

    if-eqz v0, :cond_9

    instance-of v2, v1, Lq6/f;

    if-nez v2, :cond_2

    goto/16 :goto_4

    :cond_2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$n;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_8

    move-object v4, v1

    check-cast v4, Lq6/f;

    invoke-virtual {v4, v3}, Lq6/f;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lcom/miui/gamebooster/model/n;

    if-eqz v5, :cond_4

    move-object v6, v4

    check-cast v6, Lcom/miui/gamebooster/model/n;

    invoke-virtual {v6}, Lcom/miui/gamebooster/model/n;->e()I

    move-result v7

    sget v8, Lt6/a;->n:I

    if-eq v7, v8, :cond_3

    invoke-virtual {v6}, Lcom/miui/gamebooster/model/n;->e()I

    move-result v6

    sget v7, Lt6/a;->w:I

    if-ne v6, v7, :cond_4

    :cond_3
    :goto_1
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView$n;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->f0:Landroid/view/View;

    goto :goto_3

    :cond_4
    instance-of v6, v4, Lcom/miui/gamebooster/model/ActiveNewModel;

    if-eqz v6, :cond_5

    move-object v7, v4

    check-cast v7, Lcom/miui/gamebooster/model/n;

    invoke-virtual {v7}, Lcom/miui/gamebooster/model/n;->e()I

    move-result v8

    sget v9, Lt6/a;->n:I

    if-eq v8, v9, :cond_3

    invoke-virtual {v7}, Lcom/miui/gamebooster/model/n;->e()I

    move-result v7

    sget v8, Lt6/a;->w:I

    if-ne v7, v8, :cond_5

    goto :goto_1

    :cond_5
    if-eqz v5, :cond_6

    move-object v5, v4

    check-cast v5, Lcom/miui/gamebooster/model/n;

    invoke-virtual {v5}, Lcom/miui/gamebooster/model/n;->e()I

    move-result v5

    sget v7, Lt6/a;->p:I

    if-ne v5, v7, :cond_6

    :goto_2
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView$n;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->g0:Landroid/view/View;

    goto :goto_3

    :cond_6
    if-eqz v6, :cond_7

    check-cast v4, Lcom/miui/gamebooster/model/ActiveNewModel;

    invoke-virtual {v4}, Lcom/miui/gamebooster/model/ActiveNewModel;->getFunctionId()I

    move-result v4

    sget v5, Lt6/a;->p:I

    if-ne v4, v5, :cond_7

    goto :goto_2

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_8
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "refetchShoulderView: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->f0:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GbNestedScrollView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_4
    return-void
.end method

.method private getMainViewHeight()I
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->G:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->I:I

    return v0

    :cond_0
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    :goto_0
    return v0
.end method

.method private h0()V
    .locals 4

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->m0:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->m0:Landroid/os/Handler;

    const-wide/16 v2, 0x50

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private i0()V
    .locals 3

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->F:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070de9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->F:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setScrollState(I)V
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->l0:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->l0:I

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->j0:Lcom/miui/gamebooster/windowmanager/GbNestedScrollView$e;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView$e;->a(Lmiuix/core/widget/NestedScrollView;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public c0(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 6

    :try_start_0
    const-string v0, "android.view.View"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getBoundsOnScreen"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/graphics/Rect;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p2, v1, v5

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getBoundsOnScreen error "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GbNestedScrollView"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v0, v1, :cond_3

    if-eq v0, v3, :cond_0

    const/4 v5, 0x3

    if-eq v0, v5, :cond_3

    goto/16 :goto_2

    :cond_0
    iget-boolean v0, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->J:Z

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->M:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_a

    iget v0, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->I:I

    iget v3, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->V:I

    if-lt v0, v3, :cond_1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v3, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->M:F

    sub-float/2addr v0, v3

    iput v0, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->L:F

    cmpl-float v3, v0, v4

    if-lez v3, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->N:Z

    cmpl-float v1, v0, v4

    if-lez v1, :cond_a

    iget v1, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->O:F

    cmpl-float v1, v1, v4

    if-nez v1, :cond_a

    iget v1, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->I:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    float-to-int v0, v1

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->setMainViewHeight(I)V

    goto/16 :goto_2

    :cond_3
    iget-boolean v0, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->K:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->h0:Lcom/miui/gamebooster/windowmanager/GbNestedScrollView$f;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView$f;->a()V

    :cond_4
    iget-boolean v0, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->J:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->N:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->O:F

    cmpl-float v0, v0, v4

    if-nez v0, :cond_6

    iget v0, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->I:I

    iget v4, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->V:I

    if-ge v0, v4, :cond_6

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->h0:Lcom/miui/gamebooster/windowmanager/GbNestedScrollView$f;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView$f;->b()V

    :cond_5
    invoke-direct {p0}, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->getMainViewHeight()I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->I:I

    new-array v3, v3, [F

    int-to-float v0, v0

    aput v0, v3, v2

    iget v0, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->V:I

    int-to-float v0, v0

    aput v0, v3, v1

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Ls8/v;

    invoke-direct {v1, p0}, Ls8/v;-><init>(Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView$c;

    invoke-direct {v1, p0}, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView$c;-><init>(Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_6
    invoke-direct {p0, p1}, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->e0(Landroid/view/MotionEvent;)V

    goto :goto_2

    :cond_7
    iput-boolean v2, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->J:Z

    iput-boolean v2, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->N:Z

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->O:F

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v3, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->F:Landroid/view/View;

    invoke-virtual {p0, v3, v0}, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->c0(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-nez v3, :cond_9

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_8

    goto :goto_1

    :cond_8
    move v1, v2

    :cond_9
    :goto_1
    iput-boolean v1, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->J:Z

    if-eqz v1, :cond_a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->M:F

    :cond_a
    :goto_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getGameModeView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->g0:Landroid/view/View;

    return-object v0
.end method

.method public getShoulderView()Landroid/view/View;
    .locals 2

    invoke-direct {p0}, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->g0()V

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->f0:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->f0:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->f0:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lmiuix/core/widget/NestedScrollView;->scrollTo(II)V

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->f0:Landroid/view/View;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Lmiuix/core/widget/NestedScrollView;->onFinishInflate()V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070dfe

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->R:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070e21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->S:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070df3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->T:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070e20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->U:I

    const v0, 0x7f0b0402

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->F:Landroid/view/View;

    const v0, 0x7f0b09cf

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->G:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f0b09d3

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->H:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->G:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView$b;

    invoke-direct {v1, p0}, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView$b;-><init>(Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->P:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget v2, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->Q:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v0, v1, v0

    if-gez v0, :cond_2

    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->P:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->Q:F

    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->d0(Landroid/view/MotionEvent;)V

    invoke-super {p0, p1}, Lmiuix/core/widget/NestedScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onScrollChanged(IIII)V
    .locals 8

    invoke-super {p0, p1, p2, p3, p4}, Lmiuix/core/widget/NestedScrollView;->onScrollChanged(IIII)V

    iget-boolean v0, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->k0:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->setScrollState(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->setScrollState(I)V

    invoke-direct {p0}, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->h0()V

    :goto_0
    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->j0:Lcom/miui/gamebooster/windowmanager/GbNestedScrollView$e;

    if-eqz v1, :cond_1

    iget-boolean v3, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->k0:Z

    move-object v2, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-interface/range {v1 .. v7}, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView$e;->b(Lmiuix/core/widget/NestedScrollView;ZIIII)V

    :cond_1
    return-void
.end method

.method public setInformationViewVisible(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->H:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->H:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->F:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->G:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/4 v0, -0x2

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->G:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string p1, "GbNestedScrollView"

    const-string v0, "setInformationViewVisible"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public setMainViewHeight(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->G:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p1, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->G:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->requestLayout()V

    return-void
.end method

.method public setOnScrollListener(Lcom/miui/gamebooster/windowmanager/GbNestedScrollView$e;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->j0:Lcom/miui/gamebooster/windowmanager/GbNestedScrollView$e;

    return-void
.end method

.method public setOnScrollStatusChangeListener(Lcom/miui/gamebooster/windowmanager/GbNestedScrollView$f;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->h0:Lcom/miui/gamebooster/windowmanager/GbNestedScrollView$f;

    return-void
.end method

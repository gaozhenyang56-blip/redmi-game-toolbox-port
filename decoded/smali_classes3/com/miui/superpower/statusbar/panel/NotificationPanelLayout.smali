.class public Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$c;,
        Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$d;,
        Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$b;,
        Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$g;,
        Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$e;,
        Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;
    }
.end annotation


# static fields
.field private static final s:Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;

.field private static final t:[I


# instance fields
.field private a:I

.field private final b:Landroid/graphics/Paint;

.field private c:I

.field private d:Z

.field private e:Landroid/view/View;

.field private f:Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;

.field private g:Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;

.field private h:F

.field private i:I

.field private j:Z

.field private k:F

.field private l:F

.field private final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$e;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Lcom/miui/superpower/statusbar/panel/a;

.field private o:Lcom/miui/superpower/statusbar/button/CellularButton;

.field private p:Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$c;

.field private q:Z

.field private final r:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;->b:Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;

    sput-object v0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->s:Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100af

    aput v2, v0, v1

    sput-object v0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->t:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p3, -0x1000000

    iput p3, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->a:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->b:Landroid/graphics/Paint;

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->c:I

    sget-object v0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->s:Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;

    iput-object v0, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->f:Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;

    iput-object v0, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->g:Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->m:Ljava/util/List;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->q:Z

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->r:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iput-object v2, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->n:Lcom/miui/superpower/statusbar/panel/a;

    return-void

    :cond_0
    const/4 v1, 0x0

    if-eqz p2, :cond_1

    sget-object v3, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->t:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2, v1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->setGravity(I)V

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    iput-object v0, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->f:Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;

    iput p3, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->a:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    const/high16 p3, 0x41c00000    # 24.0f

    mul-float/2addr p2, p3

    const/high16 p3, 0x3f000000    # 0.5f

    add-float/2addr p2, p3

    float-to-int p2, p2

    iput p2, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->c:I

    invoke-virtual {p0, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    new-instance p2, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$b;

    invoke-direct {p2, p0, v2}, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$b;-><init>(Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$a;)V

    invoke-static {p0, p3, p2}, Lcom/miui/superpower/statusbar/panel/a;->n(Landroid/view/ViewGroup;FLcom/miui/superpower/statusbar/panel/a$c;)Lcom/miui/superpower/statusbar/panel/a;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->n:Lcom/miui/superpower/statusbar/panel/a;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p2, p3}, Lcom/miui/superpower/statusbar/panel/a;->H(F)V

    new-instance p2, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$c;

    invoke-direct {p2, p0, p1}, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$c;-><init>(Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->p:Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$c;

    return-void
.end method

.method static synthetic a(Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->t(I)V

    return-void
.end method

.method static synthetic b(Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->d:Z

    return p0
.end method

.method static synthetic c(Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;F)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->o(F)I

    move-result p0

    return p0
.end method

.method static synthetic d(Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;)I
    .locals 0

    iget p0, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->i:I

    return p0
.end method

.method static synthetic e(Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->j:Z

    return p0
.end method

.method static synthetic f(Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->e:Landroid/view/View;

    return-object p0
.end method

.method static synthetic g(Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;)Lcom/miui/superpower/statusbar/panel/a;
    .locals 0

    iget-object p0, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->n:Lcom/miui/superpower/statusbar/panel/a;

    return-object p0
.end method

.method static synthetic h(Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;)F
    .locals 0

    iget p0, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->h:F

    return p0
.end method

.method static synthetic i(Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;F)F
    .locals 0

    iput p1, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->h:F

    return p1
.end method

.method static synthetic j(Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;I)F
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->p(I)F

    move-result p0

    return p0
.end method

.method static synthetic k(Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->setPanelStateInternal(Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;)V

    return-void
.end method

.method static synthetic l(Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->u()V

    return-void
.end method

.method private o(F)I
    .locals 2

    iget-object v0, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->e:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->i:I

    int-to-float v1, v1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    iget-boolean v1, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->d:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->c:I

    sub-int/2addr v0, v1

    sub-int/2addr v0, p1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int/2addr v1, v0

    iget v0, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->c:I

    add-int/2addr v1, v0

    add-int v0, v1, p1

    :goto_1
    return v0
.end method

.method private p(I)F
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->o(F)I

    move-result v0

    iget-boolean v1, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->d:Z

    if-eqz v1, :cond_0

    sub-int/2addr v0, p1

    int-to-float p1, v0

    goto :goto_0

    :cond_0
    sub-int/2addr p1, v0

    int-to-float p1, p1

    :goto_0
    iget v0, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->i:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    return p1
.end method

.method private setPanelStateInternal(Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->f:Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->f:Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;

    invoke-virtual {p0, p0, v0, p1}, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->r(Landroid/view/View;Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;)V

    return-void
.end method

.method private t(I)V
    .locals 3

    iget-object v0, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->f:Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;

    sget-object v1, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;->d:Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;

    if-eq v0, v1, :cond_0

    iput-object v0, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->g:Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;

    :cond_0
    sget-object v2, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;->a:Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;

    if-ne v0, v2, :cond_1

    sget-object v0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;->b:Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;

    invoke-direct {p0, v0}, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->setPanelStateInternal(Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1}, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->setPanelStateInternal(Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;)V

    :goto_0
    invoke-direct {p0, p1}, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->p(I)F

    move-result p1

    iput p1, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->h:F

    iget-object p1, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->e:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->q(Landroid/view/View;)V

    return-void
.end method

.method private u()V
    .locals 6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$d;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public computeScroll()V
    .locals 2

    iget-object v0, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->n:Lcom/miui/superpower/statusbar/panel/a;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/superpower/statusbar/panel/a;->m(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->n:Lcom/miui/superpower/statusbar/panel/a;

    invoke-virtual {v0}, Lcom/miui/superpower/statusbar/panel/a;->a()V

    return-void

    :cond_0
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->g0(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->n()V

    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-static {p1}, Landroidx/core/view/e0;->c(Landroid/view/MotionEvent;)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->s()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->j:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->n:Lcom/miui/superpower/statusbar/panel/a;

    invoke-virtual {v0}, Lcom/miui/superpower/statusbar/panel/a;->a()V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget-object v1, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->e:Landroid/view/View;

    if-eqz v1, :cond_0

    if-eq v1, p2, :cond_0

    iget-object v1, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->r:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    iget-object v1, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->r:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    iget p3, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->a:I

    if-eqz p3, :cond_1

    iget p4, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->h:F

    const/4 v1, 0x0

    cmpl-float v1, p4, v1

    if-lez v1, :cond_1

    const/high16 v1, -0x1000000

    and-int/2addr v1, p3

    ushr-int/lit8 v1, v1, 0x18

    int-to-float v1, v1

    mul-float/2addr v1, p4

    float-to-int p4, v1

    shl-int/lit8 p4, p4, 0x18

    const v1, 0xffffff

    and-int/2addr p3, v1

    or-int/2addr p3, p4

    iget-object p4, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->b:Landroid/graphics/Paint;

    invoke-virtual {p4, p3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p3, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->r:Landroid/graphics/Rect;

    iget-object p4, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, p4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    :cond_1
    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return p2
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$d;

    invoke-direct {v0}, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$d;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$d;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$d;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$d;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$d;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$d;

    invoke-direct {v0, p1}, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$d;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-object v0
.end method

.method public getPanelHeight()I
    .locals 1

    iget v0, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->c:I

    return v0
.end method

.method public getPanelState()Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;
    .locals 1

    iget-object v0, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->f:Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;

    return-object v0
.end method

.method public m(Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$e;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->m:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->m:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public n()V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->getPanelState()Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;

    move-result-object v0

    sget-object v1, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;->d:Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;->b:Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;

    invoke-virtual {p0, v0}, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->setPanelState(Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;)V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->q:Z

    const v0, 0x7f0b01de

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/superpower/statusbar/button/CellularButton;

    iput-object v0, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->o:Lcom/miui/superpower/statusbar/button/CellularButton;

    const v0, 0x7f0b0bbb

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextClock;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lpg/g;->b(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->p:Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$c;

    invoke-static {v0}, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$c;->a(Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$c;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->q:Z

    iget-object v0, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->p:Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$c;

    invoke-static {v0}, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$c;->b(Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$c;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    invoke-virtual {p0}, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->s()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->n:Lcom/miui/superpower/statusbar/panel/a;

    invoke-virtual {p1}, Lcom/miui/superpower/statusbar/panel/a;->a()V

    return v1

    :cond_0
    invoke-static {p1}, Landroidx/core/view/e0;->c(Landroid/view/MotionEvent;)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->k:F

    sub-float v4, v2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->l:F

    sub-float v5, v3, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget-object v6, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->n:Lcom/miui/superpower/statusbar/panel/a;

    invoke-virtual {v6}, Lcom/miui/superpower/statusbar/panel/a;->w()I

    move-result v6

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    goto :goto_0

    :cond_1
    int-to-float v0, v6

    cmpl-float v0, v5, v0

    if-lez v0, :cond_4

    cmpl-float v0, v4, v5

    if-lez v0, :cond_4

    iget-object p1, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->n:Lcom/miui/superpower/statusbar/panel/a;

    invoke-virtual {p1}, Lcom/miui/superpower/statusbar/panel/a;->c()V

    iput-boolean v2, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->j:Z

    return v1

    :cond_2
    iget-object v0, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->n:Lcom/miui/superpower/statusbar/panel/a;

    invoke-virtual {v0}, Lcom/miui/superpower/statusbar/panel/a;->z()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->n:Lcom/miui/superpower/statusbar/panel/a;

    invoke-virtual {v0, p1}, Lcom/miui/superpower/statusbar/panel/a;->B(Landroid/view/MotionEvent;)V

    return v2

    :cond_3
    iput-boolean v1, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->j:Z

    iput v2, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->k:F

    iput v3, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->l:F

    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->n:Lcom/miui/superpower/statusbar/panel/a;

    invoke-virtual {v0, p1}, Lcom/miui/superpower/statusbar/panel/a;->J(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    iget-boolean p4, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->q:Z

    if-eqz p4, :cond_3

    sget-object p4, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$a;->a:[I

    iget-object p5, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->f:Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;

    invoke-virtual {p5}, Ljava/lang/Enum;->ordinal()I

    move-result p5

    aget p4, p4, p5

    const/4 p5, 0x1

    if-eq p4, p5, :cond_2

    const/4 p5, 0x2

    const/4 v0, 0x0

    if-eq p4, p5, :cond_0

    iput v0, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->h:F

    goto :goto_2

    :cond_0
    invoke-direct {p0, v0}, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->o(F)I

    move-result p4

    iget-boolean p5, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->d:Z

    if-eqz p5, :cond_1

    iget p5, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->c:I

    goto :goto_0

    :cond_1
    iget p5, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->c:I

    neg-int p5, p5

    :goto_0
    add-int/2addr p4, p5

    invoke-direct {p0, p4}, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->p(I)F

    move-result p4

    goto :goto_1

    :cond_2
    const/high16 p4, 0x3f800000    # 1.0f

    :goto_1
    iput p4, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->h:F

    :cond_3
    :goto_2
    const/4 p4, 0x0

    move p5, p4

    :goto_3
    if-ge p5, p3, :cond_7

    invoke-virtual {p0, p5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$d;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    if-eqz p5, :cond_6

    iget-boolean v2, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->q:Z

    if-eqz v2, :cond_4

    goto :goto_5

    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget-object v3, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->e:Landroid/view/View;

    if-ne v0, v3, :cond_5

    iget v3, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->h:F

    invoke-direct {p0, v3}, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->o(F)I

    move-result v3

    goto :goto_4

    :cond_5
    move v3, p2

    :goto_4
    add-int/2addr v2, v3

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, p1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/view/View;->layout(IIII)V

    :cond_6
    :goto_5
    add-int/lit8 p5, p5, 0x1

    goto :goto_3

    :cond_7
    iput-boolean p4, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->q:Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 16

    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    const/high16 v5, -0x80000000

    const/high16 v6, 0x40000000    # 2.0f

    if-eq v1, v6, :cond_1

    if-ne v1, v5, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Width must have an exact value or MATCH_PARENT"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    if-eq v3, v6, :cond_3

    if-ne v3, v5, :cond_2

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Height must have an exact value or MATCH_PARENT"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_e

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, v0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->e:Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    sub-int v8, v4, v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v9

    sub-int v9, v2, v9

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v10

    sub-int/2addr v9, v10

    :goto_2
    if-ge v3, v1, :cond_d

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$d;

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-ne v12, v13, :cond_4

    if-nez v3, :cond_4

    goto/16 :goto_8

    :cond_4
    if-ne v10, v7, :cond_5

    iget v12, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v13, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v12, v13

    sub-int v12, v9, v12

    move v13, v8

    goto :goto_4

    :cond_5
    iget-object v12, v0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->e:Landroid/view/View;

    if-ne v10, v12, :cond_6

    iget v12, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int v12, v8, v12

    move v13, v12

    goto :goto_3

    :cond_6
    move v13, v8

    :goto_3
    move v12, v9

    :goto_4
    iget v14, v11, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v15, -0x1

    const/4 v6, -0x2

    if-ne v14, v6, :cond_7

    invoke-static {v12, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    goto :goto_5

    :cond_7
    if-ne v14, v15, :cond_8

    const/high16 v15, 0x40000000    # 2.0f

    invoke-static {v12, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    goto :goto_5

    :cond_8
    const/high16 v15, 0x40000000    # 2.0f

    invoke-static {v14, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    :goto_5
    iget v14, v11, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-ne v14, v6, :cond_9

    invoke-static {v13, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    move v11, v6

    const/high16 v6, 0x40000000    # 2.0f

    goto :goto_7

    :cond_9
    iget v6, v11, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$d;->a:F

    const/4 v11, 0x0

    cmpl-float v11, v6, v11

    if-lez v11, :cond_a

    const/high16 v11, 0x3f800000    # 1.0f

    cmpg-float v11, v6, v11

    if-gez v11, :cond_a

    int-to-float v11, v13

    mul-float/2addr v11, v6

    float-to-int v13, v11

    goto :goto_6

    :cond_a
    const/4 v6, -0x1

    if-eq v14, v6, :cond_b

    move v13, v14

    :cond_b
    :goto_6
    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v13, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    :goto_7
    invoke-virtual {v10, v12, v11}, Landroid/view/View;->measure(II)V

    iget-object v11, v0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->e:Landroid/view/View;

    if-ne v10, v11, :cond_c

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    iget v11, v0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->c:I

    sub-int/2addr v10, v11

    iput v10, v0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->i:I

    :cond_c
    :goto_8
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    :cond_d
    invoke-virtual {v0, v2, v4}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void

    :cond_e
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Sliding up panel layout must have exactly 2 children!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "sliding_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;

    iput-object v0, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->f:Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;

    if-nez v0, :cond_0

    sget-object v0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->s:Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;

    :cond_0
    iput-object v0, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->f:Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;

    const-string v0, "superState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    const-string v2, "superState"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v1, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->f:Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;

    sget-object v2, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;->d:Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->g:Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;

    :goto_0
    const-string v2, "sliding_state"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    if-eq p2, p4, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->q:Z

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->s()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->n:Lcom/miui/superpower/statusbar/panel/a;

    invoke-virtual {v0, p1}, Lcom/miui/superpower/statusbar/panel/a;->B(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method q(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->m:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$e;

    iget v3, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->h:F

    invoke-interface {v2, p1, v3}, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$e;->a(Landroid/view/View;F)V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method r(Landroid/view/View;Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->m:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$e;

    invoke-interface {v2, p1, p2, p3}, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$e;->b(Landroid/view/View;Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;)V

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x20

    invoke-virtual {p0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public s()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->e:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->f:Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;

    sget-object v1, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;->c:Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setCoveredFadeColor(I)V
    .locals 0

    iput p1, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->a:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setGravity(I)V
    .locals 2

    const/16 v0, 0x50

    const/16 v1, 0x30

    if-eq p1, v1, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "gravity must be set to either top or bottom"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-ne p1, v0, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    iput-boolean p1, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->d:Z

    iget-boolean p1, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->q:Z

    if-nez p1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_3
    return-void
.end method

.method public setPanelHeight(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->getPanelHeight()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->c:I

    iget-boolean p1, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->q:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_1
    invoke-virtual {p0}, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->getPanelState()Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;

    move-result-object p1

    sget-object v0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;->b:Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->w()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    return-void
.end method

.method public setPanelState(Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->n:Lcom/miui/superpower/statusbar/panel/a;

    invoke-virtual {v0}, Lcom/miui/superpower/statusbar/panel/a;->x()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string v0, "SlidingUpPanelLayout"

    const-string v2, "View is settling. Aborting animation."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->n:Lcom/miui/superpower/statusbar/panel/a;

    invoke-virtual {v0}, Lcom/miui/superpower/statusbar/panel/a;->a()V

    :cond_0
    if-eqz p1, :cond_a

    sget-object v0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;->d:Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;

    if-eq p1, v0, :cond_a

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->q:Z

    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->e:Landroid/view/View;

    if-eqz v2, :cond_9

    :cond_1
    iget-object v2, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->f:Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;

    if-ne p1, v2, :cond_2

    goto :goto_2

    :cond_2
    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->setPanelStateInternal(Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;)V

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;->c:Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;

    if-ne v2, v0, :cond_4

    iget-object v0, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->e:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_4
    sget-object v0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_8

    const/4 v0, 0x0

    if-eq p1, v1, :cond_6

    const/4 v1, 0x3

    if-eq p1, v1, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {p0, v0}, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->v(F)V

    goto :goto_2

    :cond_6
    invoke-direct {p0, v0}, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->o(F)I

    move-result p1

    iget-boolean v0, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->d:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->c:I

    goto :goto_0

    :cond_7
    iget v0, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->c:I

    neg-int v0, v0

    :goto_0
    add-int/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->p(I)F

    move-result p1

    goto :goto_1

    :cond_8
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {p0, p1}, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->v(F)V

    :cond_9
    :goto_2
    return-void

    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Panel state cannot be null or DRAGGING."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method v(F)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->e:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->o(F)I

    move-result p1

    iget-object v0, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->n:Lcom/miui/superpower/statusbar/panel/a;

    iget-object v1, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->e:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/miui/superpower/statusbar/panel/a;->K(Landroid/view/View;II)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->u()V

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->g0(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected w()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->v(F)V

    return-void
.end method

.method public x()V
    .locals 1

    iget-object v0, p0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->o:Lcom/miui/superpower/statusbar/button/CellularButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/superpower/statusbar/button/CellularButton;->d()V

    :cond_0
    return-void
.end method

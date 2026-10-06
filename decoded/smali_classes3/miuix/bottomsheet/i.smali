.class public Lmiuix/bottomsheet/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/bottomsheet/i$j;,
        Lmiuix/bottomsheet/i$k;,
        Lmiuix/bottomsheet/i$n;,
        Lmiuix/bottomsheet/i$m;,
        Lmiuix/bottomsheet/i$l;
    }
.end annotation


# instance fields
.field private final a:Landroid/view/ViewGroup;

.field private final b:Landroid/content/Context;

.field private c:Lmiuix/bottomsheet/BottomSheetBehavior;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/bottomsheet/BottomSheetBehavior<",
            "Landroid/widget/FrameLayout;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/widget/FrameLayout;

.field private e:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field private f:Lmiuix/bottomsheet/BottomSheetView;

.field private g:Lmiuix/bottomsheet/BottomSheetDragHandleView;

.field private h:Landroid/view/View;

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Lmiuix/bottomsheet/i$l;

.field private p:Lmiuix/bottomsheet/i$m;

.field private q:Lmiuix/bottomsheet/i$n;

.field private r:Lmiuix/bottomsheet/i$k;

.field private s:Landroidx/activity/b;

.field private t:Ljava/lang/Runnable;

.field private final u:Landroid/util/SparseIntArray;

.field private v:Lyk/b;

.field private final w:Lmiuix/bottomsheet/BottomSheetBehavior$i;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lmiuix/bottomsheet/i;-><init>(Landroid/app/Activity;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiuix/bottomsheet/i;->i:Z

    iput-boolean v0, p0, Lmiuix/bottomsheet/i;->j:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lmiuix/bottomsheet/i;->k:Z

    iput-boolean v1, p0, Lmiuix/bottomsheet/i;->l:Z

    iput-boolean v0, p0, Lmiuix/bottomsheet/i;->m:Z

    iput-boolean v0, p0, Lmiuix/bottomsheet/i;->n:Z

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lmiuix/bottomsheet/i;->u:Landroid/util/SparseIntArray;

    new-instance v0, Lmiuix/bottomsheet/i$e;

    invoke-direct {v0, p0}, Lmiuix/bottomsheet/i$e;-><init>(Lmiuix/bottomsheet/i;)V

    iput-object v0, p0, Lmiuix/bottomsheet/i;->w:Lmiuix/bottomsheet/BottomSheetBehavior$i;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    iput-boolean p2, p0, Lmiuix/bottomsheet/i;->l:Z

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lmiuix/bottomsheet/i;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lmiuix/bottomsheet/i;->b:Landroid/content/Context;

    instance-of p2, p1, Landroidx/activity/ComponentActivity;

    if-eqz p2, :cond_0

    check-cast p1, Landroidx/activity/ComponentActivity;

    new-instance p2, Lmiuix/bottomsheet/i$a;

    invoke-direct {p2, p0, v1}, Lmiuix/bottomsheet/i$a;-><init>(Lmiuix/bottomsheet/i;Z)V

    iput-object p2, p0, Lmiuix/bottomsheet/i;->s:Landroidx/activity/b;

    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object p1

    iget-object p2, p0, Lmiuix/bottomsheet/i;->s:Landroidx/activity/b;

    invoke-virtual {p1, p2}, Landroidx/activity/OnBackPressedDispatcher;->a(Landroidx/activity/b;)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "DecorView from activity is not ViewGroup!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private A()Landroid/widget/FrameLayout;
    .locals 3

    iget-object v0, p0, Lmiuix/bottomsheet/i;->d:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    iget-object v0, p0, Lmiuix/bottomsheet/i;->b:Landroid/content/Context;

    sget v1, Lmiuix/bottomsheet/o;->b:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lmiuix/bottomsheet/i;->d:Landroid/widget/FrameLayout;

    sget v1, Lmiuix/bottomsheet/n;->b:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iput-object v0, p0, Lmiuix/bottomsheet/i;->e:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setVisibility(I)V

    iget-object v0, p0, Lmiuix/bottomsheet/i;->d:Landroid/widget/FrameLayout;

    sget v1, Lmiuix/bottomsheet/n;->a:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/bottomsheet/BottomSheetView;

    iput-object v0, p0, Lmiuix/bottomsheet/i;->f:Lmiuix/bottomsheet/BottomSheetView;

    sget v1, Lmiuix/bottomsheet/n;->d:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/bottomsheet/BottomSheetDragHandleView;

    iput-object v0, p0, Lmiuix/bottomsheet/i;->g:Lmiuix/bottomsheet/BottomSheetDragHandleView;

    iget-object v0, p0, Lmiuix/bottomsheet/i;->d:Landroid/widget/FrameLayout;

    sget v1, Lmiuix/bottomsheet/n;->g:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiuix/bottomsheet/i;->h:Landroid/view/View;

    iget-boolean v1, p0, Lmiuix/bottomsheet/i;->l:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lmiuix/bottomsheet/i;->f:Lmiuix/bottomsheet/BottomSheetView;

    invoke-static {v0}, Lmiuix/bottomsheet/BottomSheetBehavior;->from(Landroid/view/View;)Lmiuix/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    iput-object v0, p0, Lmiuix/bottomsheet/i;->c:Lmiuix/bottomsheet/BottomSheetBehavior;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiuix/bottomsheet/BottomSheetBehavior;->setOriginalWindowInsetsEnabled(Z)V

    iget-object v0, p0, Lmiuix/bottomsheet/i;->c:Lmiuix/bottomsheet/BottomSheetBehavior;

    iget-object v1, p0, Lmiuix/bottomsheet/i;->w:Lmiuix/bottomsheet/BottomSheetBehavior$i;

    invoke-virtual {v0, v1}, Lmiuix/bottomsheet/BottomSheetBehavior;->addBottomSheetCallback(Lmiuix/bottomsheet/BottomSheetBehavior$i;)V

    iget-object v0, p0, Lmiuix/bottomsheet/i;->c:Lmiuix/bottomsheet/BottomSheetBehavior;

    iget-boolean v1, p0, Lmiuix/bottomsheet/i;->j:Z

    invoke-virtual {v0, v1}, Lmiuix/bottomsheet/BottomSheetBehavior;->setHideable(Z)V

    iget-object v0, p0, Lmiuix/bottomsheet/i;->c:Lmiuix/bottomsheet/BottomSheetBehavior;

    new-instance v1, Lmiuix/bottomsheet/i$d;

    invoke-direct {v1, p0}, Lmiuix/bottomsheet/i$d;-><init>(Lmiuix/bottomsheet/i;)V

    invoke-virtual {v0, v1}, Lmiuix/bottomsheet/BottomSheetBehavior;->setReleaseAnimListener(Lmiuix/bottomsheet/BottomSheetBehavior$n;)V

    :cond_1
    iget-object v0, p0, Lmiuix/bottomsheet/i;->d:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private C(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lmiuix/bottomsheet/i;->b:Landroid/content/Context;

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->i(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method private D()Z
    .locals 2

    invoke-direct {p0}, Lmiuix/bottomsheet/i;->A()Landroid/widget/FrameLayout;

    iget-object v0, p0, Lmiuix/bottomsheet/i;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lmiuix/bottomsheet/i;->a:Landroid/view/ViewGroup;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private E()Z
    .locals 1

    invoke-direct {p0}, Lmiuix/bottomsheet/i;->D()Z

    move-result v0

    return v0
.end method

.method private synthetic F(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lmiuix/bottomsheet/i;->q:Lmiuix/bottomsheet/i$n;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lmiuix/bottomsheet/i$n;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-boolean p1, p0, Lmiuix/bottomsheet/i;->j:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lmiuix/bottomsheet/i;->E()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lmiuix/bottomsheet/i;->n:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lmiuix/bottomsheet/i;->w()V

    :cond_1
    return-void
.end method

.method private static synthetic G(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private H()V
    .locals 6

    iget-object v0, p0, Lmiuix/bottomsheet/i;->a:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lmiuix/bottomsheet/i;->a:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    iget-object v4, p0, Lmiuix/bottomsheet/i;->u:Landroid/util/SparseIntArray;

    const/4 v5, -0x1

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    if-ltz v3, :cond_1

    invoke-virtual {v2, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lmiuix/bottomsheet/i;->u:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method private I()V
    .locals 6

    iget-object v0, p0, Lmiuix/bottomsheet/i;->a:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lmiuix/bottomsheet/i;->a:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v4

    iget-object v5, p0, Lmiuix/bottomsheet/i;->u:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v3, v4}, Landroid/util/SparseIntArray;->append(II)V

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private M(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;
    .locals 2
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/view/ViewGroup$LayoutParams;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    invoke-direct {p0}, Lmiuix/bottomsheet/i;->A()Landroid/widget/FrameLayout;

    iget-object v0, p0, Lmiuix/bottomsheet/i;->d:Landroid/widget/FrameLayout;

    sget v1, Lmiuix/bottomsheet/n;->b:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    iget-object p2, p0, Lmiuix/bottomsheet/i;->b:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    iget-object p1, p0, Lmiuix/bottomsheet/i;->f:Lmiuix/bottomsheet/BottomSheetView;

    iget-boolean v1, p0, Lmiuix/bottomsheet/i;->i:Z

    invoke-virtual {p1, v1}, Lmiuix/bottomsheet/BottomSheetView;->setDragHandleViewEnabled(Z)V

    iget-object p1, p0, Lmiuix/bottomsheet/i;->f:Lmiuix/bottomsheet/BottomSheetView;

    invoke-virtual {p1}, Lmiuix/bottomsheet/BottomSheetView;->l()V

    iget-object p1, p0, Lmiuix/bottomsheet/i;->f:Lmiuix/bottomsheet/BottomSheetView;

    if-nez p3, :cond_1

    invoke-virtual {p1, p2}, Lmiuix/bottomsheet/BottomSheetView;->d(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p2, p3}, Lmiuix/bottomsheet/BottomSheetView;->e(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    sget p1, Lmiuix/bottomsheet/n;->h:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lmiuix/bottomsheet/g;

    invoke-direct {p2, p0}, Lmiuix/bottomsheet/g;-><init>(Lmiuix/bottomsheet/i;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lmiuix/bottomsheet/i;->f:Lmiuix/bottomsheet/BottomSheetView;

    new-instance p2, Lmiuix/bottomsheet/i$b;

    invoke-direct {p2, p0}, Lmiuix/bottomsheet/i$b;-><init>(Lmiuix/bottomsheet/i;)V

    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->p0(Landroid/view/View;Landroidx/core/view/a;)V

    iget-object p1, p0, Lmiuix/bottomsheet/i;->f:Lmiuix/bottomsheet/BottomSheetView;

    new-instance p2, Lmiuix/bottomsheet/h;

    invoke-direct {p2}, Lmiuix/bottomsheet/h;-><init>()V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p1, p0, Lmiuix/bottomsheet/i;->f:Lmiuix/bottomsheet/BottomSheetView;

    new-instance p2, Lmiuix/bottomsheet/i$c;

    invoke-direct {p2, p0}, Lmiuix/bottomsheet/i$c;-><init>(Lmiuix/bottomsheet/i;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object p1, p0, Lmiuix/bottomsheet/i;->d:Landroid/widget/FrameLayout;

    return-object p1
.end method

.method public static synthetic a(Lmiuix/bottomsheet/i;)V
    .locals 0

    invoke-direct {p0}, Lmiuix/bottomsheet/i;->z()V

    return-void
.end method

.method public static synthetic b(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lmiuix/bottomsheet/i;->G(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lmiuix/bottomsheet/i;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiuix/bottomsheet/i;->F(Landroid/view/View;)V

    return-void
.end method

.method static synthetic d(Lmiuix/bottomsheet/i;)Lmiuix/bottomsheet/i$k;
    .locals 0

    iget-object p0, p0, Lmiuix/bottomsheet/i;->r:Lmiuix/bottomsheet/i$k;

    return-object p0
.end method

.method static synthetic e(Lmiuix/bottomsheet/i;)Z
    .locals 0

    invoke-direct {p0}, Lmiuix/bottomsheet/i;->E()Z

    move-result p0

    return p0
.end method

.method static synthetic f(Lmiuix/bottomsheet/i;)Lmiuix/bottomsheet/BottomSheetView;
    .locals 0

    iget-object p0, p0, Lmiuix/bottomsheet/i;->f:Lmiuix/bottomsheet/BottomSheetView;

    return-object p0
.end method

.method static synthetic g(Lmiuix/bottomsheet/i;)Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .locals 0

    iget-object p0, p0, Lmiuix/bottomsheet/i;->e:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    return-object p0
.end method

.method static synthetic h(Lmiuix/bottomsheet/i;)Lmiuix/bottomsheet/i$m;
    .locals 0

    iget-object p0, p0, Lmiuix/bottomsheet/i;->p:Lmiuix/bottomsheet/i$m;

    return-object p0
.end method

.method static synthetic i(Lmiuix/bottomsheet/i;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lmiuix/bottomsheet/i;->t:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic j(Lmiuix/bottomsheet/i;)Landroidx/activity/b;
    .locals 0

    iget-object p0, p0, Lmiuix/bottomsheet/i;->s:Landroidx/activity/b;

    return-object p0
.end method

.method static synthetic k(Lmiuix/bottomsheet/i;)Lmiuix/bottomsheet/BottomSheetDragHandleView;
    .locals 0

    iget-object p0, p0, Lmiuix/bottomsheet/i;->g:Lmiuix/bottomsheet/BottomSheetDragHandleView;

    return-object p0
.end method

.method static synthetic l(Lmiuix/bottomsheet/i;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lmiuix/bottomsheet/i;->a:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic m(Lmiuix/bottomsheet/i;)V
    .locals 0

    invoke-direct {p0}, Lmiuix/bottomsheet/i;->y()V

    return-void
.end method

.method static synthetic n(Lmiuix/bottomsheet/i;)Z
    .locals 0

    iget-boolean p0, p0, Lmiuix/bottomsheet/i;->j:Z

    return p0
.end method

.method static synthetic o(Lmiuix/bottomsheet/i;)Lyk/b;
    .locals 0

    iget-object p0, p0, Lmiuix/bottomsheet/i;->v:Lyk/b;

    return-object p0
.end method

.method static synthetic p(Lmiuix/bottomsheet/i;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lmiuix/bottomsheet/i;->b:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic q(Lmiuix/bottomsheet/i;)Z
    .locals 0

    iget-boolean p0, p0, Lmiuix/bottomsheet/i;->n:Z

    return p0
.end method

.method static synthetic r(Lmiuix/bottomsheet/i;Z)Z
    .locals 0

    iput-boolean p1, p0, Lmiuix/bottomsheet/i;->n:Z

    return p1
.end method

.method static synthetic s(Lmiuix/bottomsheet/i;)Z
    .locals 0

    iget-boolean p0, p0, Lmiuix/bottomsheet/i;->l:Z

    return p0
.end method

.method static synthetic t(Lmiuix/bottomsheet/i;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lmiuix/bottomsheet/i;->h:Landroid/view/View;

    return-object p0
.end method

.method static synthetic u(Lmiuix/bottomsheet/i;)V
    .locals 0

    invoke-direct {p0}, Lmiuix/bottomsheet/i;->x()V

    return-void
.end method

.method static synthetic v(Lmiuix/bottomsheet/i;)Lmiuix/bottomsheet/BottomSheetBehavior;
    .locals 0

    iget-object p0, p0, Lmiuix/bottomsheet/i;->c:Lmiuix/bottomsheet/BottomSheetBehavior;

    return-object p0
.end method

.method private x()V
    .locals 3

    iget-object v0, p0, Lmiuix/bottomsheet/i;->d:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/bottomsheet/i;->c:Lmiuix/bottomsheet/BottomSheetBehavior;

    new-instance v1, Lmiuix/bottomsheet/i$i;

    invoke-direct {v1, p0}, Lmiuix/bottomsheet/i$i;-><init>(Lmiuix/bottomsheet/i;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lmiuix/bottomsheet/BottomSheetBehavior;->startExitAnimation(Lmiuix/bottomsheet/BottomSheetBehavior$h;Z)Z

    :cond_0
    return-void
.end method

.method private y()V
    .locals 2

    iget-object v0, p0, Lmiuix/bottomsheet/i;->a:Landroid/view/ViewGroup;

    iget-object v1, p0, Lmiuix/bottomsheet/i;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiuix/bottomsheet/i;->k:Z

    iget-object v0, p0, Lmiuix/bottomsheet/i;->o:Lmiuix/bottomsheet/i$l;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lmiuix/bottomsheet/i$l;->onDismiss()V

    :cond_0
    iget-object v0, p0, Lmiuix/bottomsheet/i;->s:Landroidx/activity/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/activity/b;->setEnabled(Z)V

    invoke-direct {p0}, Lmiuix/bottomsheet/i;->H()V

    return-void
.end method

.method private z()V
    .locals 2

    iget-object v0, p0, Lmiuix/bottomsheet/i;->c:Lmiuix/bottomsheet/BottomSheetBehavior;

    new-instance v1, Lmiuix/bottomsheet/i$g;

    invoke-direct {v1, p0}, Lmiuix/bottomsheet/i$g;-><init>(Lmiuix/bottomsheet/i;)V

    invoke-virtual {v0, v1}, Lmiuix/bottomsheet/BottomSheetBehavior;->startEnterAnimation(Lmiuix/bottomsheet/BottomSheetBehavior$h;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmiuix/bottomsheet/i;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/bottomsheet/i;->h:Landroid/view/View;

    invoke-static {v0}, Lmiuix/bottomsheet/i$j;->b(Landroid/view/View;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public B()Lmiuix/bottomsheet/BottomSheetBehavior;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmiuix/bottomsheet/BottomSheetBehavior<",
            "Landroid/widget/FrameLayout;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lmiuix/bottomsheet/i;->c:Lmiuix/bottomsheet/BottomSheetBehavior;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lmiuix/bottomsheet/i;->A()Landroid/widget/FrameLayout;

    :cond_0
    iget-object v0, p0, Lmiuix/bottomsheet/i;->c:Lmiuix/bottomsheet/BottomSheetBehavior;

    return-object v0
.end method

.method public J(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lmiuix/bottomsheet/i;->M(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;

    return-void
.end method

.method public K(Lmiuix/bottomsheet/i$l;)V
    .locals 0
    .param p1    # Lmiuix/bottomsheet/i$l;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lmiuix/bottomsheet/i;->o:Lmiuix/bottomsheet/i$l;

    return-void
.end method

.method public L()V
    .locals 3

    invoke-direct {p0}, Lmiuix/bottomsheet/i;->D()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lmiuix/bottomsheet/i;->I()V

    iget-object v0, p0, Lmiuix/bottomsheet/i;->a:Landroid/view/ViewGroup;

    iget-object v1, p0, Lmiuix/bottomsheet/i;->d:Landroid/widget/FrameLayout;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    iget-boolean v0, p0, Lmiuix/bottomsheet/i;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/bottomsheet/i;->f:Lmiuix/bottomsheet/BottomSheetView;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    iget-object v0, p0, Lmiuix/bottomsheet/i;->f:Lmiuix/bottomsheet/BottomSheetView;

    invoke-virtual {v0}, Landroid/view/View;->requestApplyInsets()V

    :cond_0
    iget-boolean v0, p0, Lmiuix/bottomsheet/i;->m:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiuix/bottomsheet/i;->f:Lmiuix/bottomsheet/BottomSheetView;

    new-instance v1, Lmiuix/bottomsheet/f;

    invoke-direct {v1, p0}, Lmiuix/bottomsheet/f;-><init>(Lmiuix/bottomsheet/i;)V

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiuix/bottomsheet/i;->n:Z

    iget-object v0, p0, Lmiuix/bottomsheet/i;->s:Landroidx/activity/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/activity/b;->setEnabled(Z)V

    iget-object v0, p0, Lmiuix/bottomsheet/i;->t:Ljava/lang/Runnable;

    if-nez v0, :cond_2

    new-instance v0, Lmiuix/bottomsheet/i$f;

    invoke-direct {v0, p0}, Lmiuix/bottomsheet/i$f;-><init>(Lmiuix/bottomsheet/i;)V

    iput-object v0, p0, Lmiuix/bottomsheet/i;->t:Ljava/lang/Runnable;

    :cond_2
    iget-object v0, p0, Lmiuix/bottomsheet/i;->f:Lmiuix/bottomsheet/BottomSheetView;

    iget-object v1, p0, Lmiuix/bottomsheet/i;->t:Ljava/lang/Runnable;

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lmiuix/bottomsheet/i;->B()Lmiuix/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/bottomsheet/BottomSheetBehavior;->isAnimationInterruptible()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lmiuix/bottomsheet/i;->z()V

    :cond_4
    :goto_1
    return-void
.end method

.method public w()V
    .locals 2

    iget-object v0, p0, Lmiuix/bottomsheet/i;->d:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lmiuix/bottomsheet/i;->C(Landroid/view/View;)V

    iget-boolean v0, p0, Lmiuix/bottomsheet/i;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/bottomsheet/i;->c:Lmiuix/bottomsheet/BottomSheetBehavior;

    new-instance v1, Lmiuix/bottomsheet/i$h;

    invoke-direct {v1, p0}, Lmiuix/bottomsheet/i$h;-><init>(Lmiuix/bottomsheet/i;)V

    invoke-virtual {v0, v1}, Lmiuix/bottomsheet/BottomSheetBehavior;->startExitAnimation(Lmiuix/bottomsheet/BottomSheetBehavior$h;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lmiuix/bottomsheet/i;->l:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiuix/bottomsheet/i;->h:Landroid/view/View;

    invoke-static {v0}, Lmiuix/bottomsheet/i$j;->a(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lmiuix/bottomsheet/i;->y()V

    :cond_1
    :goto_0
    return-void
.end method

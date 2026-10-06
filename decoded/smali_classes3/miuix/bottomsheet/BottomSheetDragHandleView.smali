.class public Lmiuix/bottomsheet/BottomSheetDragHandleView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "SourceFile"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;


# instance fields
.field private final a:Landroid/view/accessibility/AccessibilityManager;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private b:Lmiuix/bottomsheet/BottomSheetBehavior;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/bottomsheet/BottomSheetBehavior<",
            "*>;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:Z

.field private e:Z

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Lmiuix/bottomsheet/BottomSheetBehavior$i;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget v0, Lmiuix/bottomsheet/l;->b:I

    invoke-direct {p0, p1, p2, v0}, Lmiuix/bottomsheet/BottomSheetDragHandleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p1}, Lmiuix/bottomsheet/BottomSheetDragHandleView;->k(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lmiuix/bottomsheet/p;->b:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lmiuix/bottomsheet/BottomSheetDragHandleView;->f:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lmiuix/bottomsheet/p;->a:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lmiuix/bottomsheet/BottomSheetDragHandleView;->g:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lmiuix/bottomsheet/p;->d:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lmiuix/bottomsheet/BottomSheetDragHandleView;->h:Ljava/lang/String;

    new-instance p1, Lmiuix/bottomsheet/BottomSheetDragHandleView$a;

    invoke-direct {p1, p0}, Lmiuix/bottomsheet/BottomSheetDragHandleView$a;-><init>(Lmiuix/bottomsheet/BottomSheetDragHandleView;)V

    iput-object p1, p0, Lmiuix/bottomsheet/BottomSheetDragHandleView;->i:Lmiuix/bottomsheet/BottomSheetBehavior$i;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "accessibility"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Lmiuix/bottomsheet/BottomSheetDragHandleView;->a:Landroid/view/accessibility/AccessibilityManager;

    invoke-direct {p0}, Lmiuix/bottomsheet/BottomSheetDragHandleView;->j()V

    new-instance p1, Lmiuix/bottomsheet/BottomSheetDragHandleView$b;

    invoke-direct {p1, p0}, Lmiuix/bottomsheet/BottomSheetDragHandleView$b;-><init>(Lmiuix/bottomsheet/BottomSheetDragHandleView;)V

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->p0(Landroid/view/View;Landroidx/core/view/a;)V

    return-void
.end method

.method public static synthetic a(Lmiuix/bottomsheet/BottomSheetDragHandleView;Landroid/view/View;Lc0/q$a;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lmiuix/bottomsheet/BottomSheetDragHandleView;->h(Landroid/view/View;Lc0/q$a;)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lmiuix/bottomsheet/BottomSheetDragHandleView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lmiuix/bottomsheet/BottomSheetDragHandleView;->i(I)V

    return-void
.end method

.method static synthetic c(Lmiuix/bottomsheet/BottomSheetDragHandleView;)Z
    .locals 0

    invoke-direct {p0}, Lmiuix/bottomsheet/BottomSheetDragHandleView;->e()Z

    move-result p0

    return p0
.end method

.method private d(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetDragHandleView;->a:Landroid/view/accessibility/AccessibilityManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lmiuix/bottomsheet/BottomSheetDragHandleView;->a:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method private e()Z
    .locals 6

    iget-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetDragHandleView;->d:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetDragHandleView;->h:Ljava/lang/String;

    invoke-direct {p0, v0}, Lmiuix/bottomsheet/BottomSheetDragHandleView;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetDragHandleView;->b:Lmiuix/bottomsheet/BottomSheetBehavior;

    invoke-virtual {v0}, Lmiuix/bottomsheet/BottomSheetBehavior;->shouldSkipHalfExpanded()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetDragHandleView;->b:Lmiuix/bottomsheet/BottomSheetBehavior;

    invoke-virtual {v0}, Lmiuix/bottomsheet/BottomSheetBehavior;->shouldSkipHalfExpandedStateWhenDragging()Z

    move-result v0

    if-nez v0, :cond_1

    move v1, v2

    :cond_1
    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetDragHandleView;->b:Lmiuix/bottomsheet/BottomSheetBehavior;

    invoke-virtual {v0}, Lmiuix/bottomsheet/BottomSheetBehavior;->getState()I

    move-result v0

    const/4 v3, 0x6

    const/4 v4, 0x3

    const/4 v5, 0x4

    if-ne v0, v5, :cond_2

    if-eqz v1, :cond_6

    goto :goto_1

    :cond_2
    if-ne v0, v4, :cond_4

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    move v3, v5

    goto :goto_1

    :cond_4
    iget-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetDragHandleView;->e:Z

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_5
    move v4, v5

    :cond_6
    :goto_0
    move v3, v4

    :goto_1
    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetDragHandleView;->b:Lmiuix/bottomsheet/BottomSheetBehavior;

    invoke-virtual {v0, v3}, Lmiuix/bottomsheet/BottomSheetBehavior;->setState(I)V

    return v2
.end method

.method private f()Lmiuix/bottomsheet/BottomSheetBehavior;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmiuix/bottomsheet/BottomSheetBehavior<",
            "*>;"
        }
    .end annotation

    move-object v0, p0

    :cond_0
    invoke-static {v0}, Lmiuix/bottomsheet/BottomSheetDragHandleView;->g(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v2, v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;

    if-eqz v2, :cond_0

    check-cast v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;

    invoke-virtual {v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->f()Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;

    move-result-object v1

    instance-of v2, v1, Lmiuix/bottomsheet/BottomSheetBehavior;

    if-eqz v2, :cond_0

    check-cast v1, Lmiuix/bottomsheet/BottomSheetBehavior;

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static g(Landroid/view/View;)Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of v0, p0, Landroid/view/View;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private synthetic h(Landroid/view/View;Lc0/q$a;)Z
    .locals 0

    invoke-direct {p0}, Lmiuix/bottomsheet/BottomSheetDragHandleView;->e()Z

    move-result p1

    return p1
.end method

.method private i(I)V
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    :goto_0
    iput-boolean p1, p0, Lmiuix/bottomsheet/BottomSheetDragHandleView;->e:Z

    goto :goto_1

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    :goto_1
    sget-object p1, Lc0/k$a;->i:Lc0/k$a;

    iget-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetDragHandleView;->e:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetDragHandleView;->f:Ljava/lang/String;

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetDragHandleView;->g:Ljava/lang/String;

    :goto_2
    new-instance v1, Lmiuix/bottomsheet/e;

    invoke-direct {v1, p0}, Lmiuix/bottomsheet/e;-><init>(Lmiuix/bottomsheet/BottomSheetDragHandleView;)V

    invoke-static {p0, p1, v0, v1}, Landroidx/core/view/ViewCompat;->l0(Landroid/view/View;Lc0/k$a;Ljava/lang/CharSequence;Lc0/q;)V

    return-void
.end method

.method private j()V
    .locals 3

    iget-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetDragHandleView;->c:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetDragHandleView;->b:Lmiuix/bottomsheet/BottomSheetBehavior;

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetDragHandleView;->d:Z

    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetDragHandleView;->b:Lmiuix/bottomsheet/BottomSheetBehavior;

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    const/4 v0, 0x2

    :goto_1
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->A0(Landroid/view/View;I)V

    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetDragHandleView;->b:Lmiuix/bottomsheet/BottomSheetBehavior;

    if-eqz v0, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {p0, v1}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method private static k(Landroid/content/Context;)Landroid/content/Context;
    .locals 4

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Lmiuix/bottomsheet/l;->b:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    if-nez v0, :cond_1

    sget v0, Lmiuix/bottomsheet/l;->e:I

    invoke-static {p0, v0, v3}, Lpl/d;->d(Landroid/content/Context;IZ)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    sget v0, Lmiuix/bottomsheet/q;->c:I

    goto :goto_0

    :cond_0
    sget v0, Lmiuix/bottomsheet/q;->b:I

    :goto_0
    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_1
    return-object p0
.end method

.method private setBottomSheetBehavior(Lmiuix/bottomsheet/BottomSheetBehavior;)V
    .locals 2
    .param p1    # Lmiuix/bottomsheet/BottomSheetBehavior;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiuix/bottomsheet/BottomSheetBehavior<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetDragHandleView;->b:Lmiuix/bottomsheet/BottomSheetBehavior;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lmiuix/bottomsheet/BottomSheetDragHandleView;->i:Lmiuix/bottomsheet/BottomSheetBehavior$i;

    invoke-virtual {v0, v1}, Lmiuix/bottomsheet/BottomSheetBehavior;->removeBottomSheetCallback(Lmiuix/bottomsheet/BottomSheetBehavior$i;)V

    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetDragHandleView;->b:Lmiuix/bottomsheet/BottomSheetBehavior;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiuix/bottomsheet/BottomSheetBehavior;->setAccessibilityDelegateView(Landroid/view/View;)V

    :cond_0
    iput-object p1, p0, Lmiuix/bottomsheet/BottomSheetDragHandleView;->b:Lmiuix/bottomsheet/BottomSheetBehavior;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Lmiuix/bottomsheet/BottomSheetBehavior;->setAccessibilityDelegateView(Landroid/view/View;)V

    iget-object p1, p0, Lmiuix/bottomsheet/BottomSheetDragHandleView;->b:Lmiuix/bottomsheet/BottomSheetBehavior;

    invoke-virtual {p1}, Lmiuix/bottomsheet/BottomSheetBehavior;->getState()I

    move-result p1

    invoke-direct {p0, p1}, Lmiuix/bottomsheet/BottomSheetDragHandleView;->i(I)V

    iget-object p1, p0, Lmiuix/bottomsheet/BottomSheetDragHandleView;->b:Lmiuix/bottomsheet/BottomSheetBehavior;

    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetDragHandleView;->i:Lmiuix/bottomsheet/BottomSheetBehavior$i;

    invoke-virtual {p1, v0}, Lmiuix/bottomsheet/BottomSheetBehavior;->addBottomSheetCallback(Lmiuix/bottomsheet/BottomSheetBehavior$i;)V

    :cond_1
    invoke-direct {p0}, Lmiuix/bottomsheet/BottomSheetDragHandleView;->j()V

    return-void
.end method


# virtual methods
.method public onAccessibilityStateChanged(Z)V
    .locals 0

    iput-boolean p1, p0, Lmiuix/bottomsheet/BottomSheetDragHandleView;->c:Z

    invoke-direct {p0}, Lmiuix/bottomsheet/BottomSheetDragHandleView;->j()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    invoke-direct {p0}, Lmiuix/bottomsheet/BottomSheetDragHandleView;->f()Lmiuix/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiuix/bottomsheet/BottomSheetDragHandleView;->setBottomSheetBehavior(Lmiuix/bottomsheet/BottomSheetBehavior;)V

    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetDragHandleView;->a:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetDragHandleView;->a:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lmiuix/bottomsheet/BottomSheetDragHandleView;->onAccessibilityStateChanged(Z)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetDragHandleView;->a:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityManager;->removeAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiuix/bottomsheet/BottomSheetDragHandleView;->setBottomSheetBehavior(Lmiuix/bottomsheet/BottomSheetBehavior;)V

    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    return-void
.end method

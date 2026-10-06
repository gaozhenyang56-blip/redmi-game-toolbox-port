.class public Lmiuix/bottomsheet/d;
.super Landroidx/appcompat/app/e;
.source "SourceFile"


# instance fields
.field private a:Lmiuix/bottomsheet/BottomSheetBehavior;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/bottomsheet/BottomSheetBehavior<",
            "Landroid/widget/FrameLayout;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/widget/FrameLayout;

.field private c:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field private d:Lmiuix/bottomsheet/BottomSheetView;

.field e:Z

.field f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private final k:Lmiuix/bottomsheet/BottomSheetBehavior$i;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    invoke-static {p1, p2}, Lmiuix/bottomsheet/d;->getThemeResId(Landroid/content/Context;I)I

    move-result p2

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/app/e;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lmiuix/bottomsheet/d;->f:Z

    iput-boolean p1, p0, Lmiuix/bottomsheet/d;->g:Z

    iput-boolean p1, p0, Lmiuix/bottomsheet/d;->j:Z

    new-instance p2, Lmiuix/bottomsheet/d$c;

    invoke-direct {p2, p0}, Lmiuix/bottomsheet/d$c;-><init>(Lmiuix/bottomsheet/d;)V

    iput-object p2, p0, Lmiuix/bottomsheet/d;->k:Lmiuix/bottomsheet/BottomSheetBehavior$i;

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/e;->supportRequestWindowFeature(I)Z

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p2

    new-array v0, p1, [I

    sget v1, Lmiuix/bottomsheet/l;->d:I

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-virtual {p2, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-virtual {p2, v2, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lmiuix/bottomsheet/d;->i:Z

    return-void
.end method

.method public static synthetic b(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lmiuix/bottomsheet/d;->d(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private static synthetic d(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private ensureContainerAndBehavior()Landroid/widget/FrameLayout;
    .locals 3

    iget-object v0, p0, Lmiuix/bottomsheet/d;->b:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lmiuix/bottomsheet/o;->a:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lmiuix/bottomsheet/d;->b:Landroid/widget/FrameLayout;

    sget v1, Lmiuix/bottomsheet/n;->b:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iput-object v0, p0, Lmiuix/bottomsheet/d;->c:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iget-object v0, p0, Lmiuix/bottomsheet/d;->b:Landroid/widget/FrameLayout;

    sget v1, Lmiuix/bottomsheet/n;->a:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/bottomsheet/BottomSheetView;

    iput-object v0, p0, Lmiuix/bottomsheet/d;->d:Lmiuix/bottomsheet/BottomSheetView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiuix/bottomsheet/BottomSheetView;->setEnableBlur(Z)V

    iget-object v0, p0, Lmiuix/bottomsheet/d;->d:Lmiuix/bottomsheet/BottomSheetView;

    invoke-static {v0}, Lmiuix/bottomsheet/BottomSheetBehavior;->from(Landroid/view/View;)Lmiuix/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    iput-object v0, p0, Lmiuix/bottomsheet/d;->a:Lmiuix/bottomsheet/BottomSheetBehavior;

    iget-object v1, p0, Lmiuix/bottomsheet/d;->k:Lmiuix/bottomsheet/BottomSheetBehavior$i;

    invoke-virtual {v0, v1}, Lmiuix/bottomsheet/BottomSheetBehavior;->addBottomSheetCallback(Lmiuix/bottomsheet/BottomSheetBehavior$i;)V

    iget-object v0, p0, Lmiuix/bottomsheet/d;->a:Lmiuix/bottomsheet/BottomSheetBehavior;

    iget-boolean v1, p0, Lmiuix/bottomsheet/d;->f:Z

    invoke-virtual {v0, v1}, Lmiuix/bottomsheet/BottomSheetBehavior;->setHideable(Z)V

    :cond_0
    iget-object v0, p0, Lmiuix/bottomsheet/d;->b:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private static getThemeResId(Landroid/content/Context;I)I
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-nez p1, :cond_1

    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    sget v0, Lmiuix/bottomsheet/l;->a:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    iget p1, p1, Landroid/util/TypedValue;->resourceId:I

    goto :goto_0

    :cond_0
    sget p1, Lmiuix/bottomsheet/q;->a:I

    :cond_1
    :goto_0
    return p1
.end method

.method private wrapInBottomSheet(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;
    .locals 2
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/view/ViewGroup$LayoutParams;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lmiuix/bottomsheet/d;->ensureContainerAndBehavior()Landroid/widget/FrameLayout;

    iget-object v0, p0, Lmiuix/bottomsheet/d;->b:Landroid/widget/FrameLayout;

    sget v1, Lmiuix/bottomsheet/n;->b:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    iget-object p1, p0, Lmiuix/bottomsheet/d;->d:Lmiuix/bottomsheet/BottomSheetView;

    iget-boolean v1, p0, Lmiuix/bottomsheet/d;->j:Z

    invoke-virtual {p1, v1}, Lmiuix/bottomsheet/BottomSheetView;->setDragHandleViewEnabled(Z)V

    iget-object p1, p0, Lmiuix/bottomsheet/d;->d:Lmiuix/bottomsheet/BottomSheetView;

    invoke-virtual {p1}, Lmiuix/bottomsheet/BottomSheetView;->l()V

    iget-object p1, p0, Lmiuix/bottomsheet/d;->d:Lmiuix/bottomsheet/BottomSheetView;

    if-nez p3, :cond_1

    invoke-virtual {p1, p2}, Lmiuix/bottomsheet/BottomSheetView;->d(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p2, p3}, Lmiuix/bottomsheet/BottomSheetView;->e(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    sget p1, Lmiuix/bottomsheet/n;->h:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lmiuix/bottomsheet/d$a;

    invoke-direct {p2, p0}, Lmiuix/bottomsheet/d$a;-><init>(Lmiuix/bottomsheet/d;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lmiuix/bottomsheet/d;->d:Lmiuix/bottomsheet/BottomSheetView;

    new-instance p2, Lmiuix/bottomsheet/d$b;

    invoke-direct {p2, p0}, Lmiuix/bottomsheet/d$b;-><init>(Lmiuix/bottomsheet/d;)V

    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->p0(Landroid/view/View;Landroidx/core/view/a;)V

    iget-object p1, p0, Lmiuix/bottomsheet/d;->d:Lmiuix/bottomsheet/BottomSheetView;

    new-instance p2, Lmiuix/bottomsheet/c;

    invoke-direct {p2}, Lmiuix/bottomsheet/c;-><init>()V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p1, p0, Lmiuix/bottomsheet/d;->b:Landroid/widget/FrameLayout;

    return-object p1
.end method


# virtual methods
.method public c()Lmiuix/bottomsheet/BottomSheetBehavior;
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

    iget-object v0, p0, Lmiuix/bottomsheet/d;->a:Lmiuix/bottomsheet/BottomSheetBehavior;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lmiuix/bottomsheet/d;->ensureContainerAndBehavior()Landroid/widget/FrameLayout;

    :cond_0
    iget-object v0, p0, Lmiuix/bottomsheet/d;->a:Lmiuix/bottomsheet/BottomSheetBehavior;

    return-object v0
.end method

.method public cancel()V
    .locals 3

    invoke-virtual {p0}, Lmiuix/bottomsheet/d;->c()Lmiuix/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    iget-boolean v1, p0, Lmiuix/bottomsheet/d;->e:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lmiuix/bottomsheet/BottomSheetBehavior;->getState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Lmiuix/bottomsheet/BottomSheetBehavior;->setState(I)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-super {p0}, Landroid/app/Dialog;->cancel()V

    :goto_1
    return-void
.end method

.method public getDismissWithAnimation()Z
    .locals 1

    iget-boolean v0, p0, Lmiuix/bottomsheet/d;->e:Z

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 5

    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_3

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-boolean v2, p0, Lmiuix/bottomsheet/d;->i:Z

    iget-object v3, p0, Lmiuix/bottomsheet/d;->b:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_0

    xor-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setFitsSystemWindows(Z)V

    :cond_0
    iget-object v3, p0, Lmiuix/bottomsheet/d;->c:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz v3, :cond_1

    xor-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setFitsSystemWindows(Z)V

    :cond_1
    xor-int/lit8 v3, v2, 0x1

    invoke-static {v0, v3}, Landroidx/core/view/e3;->b(Landroid/view/Window;Z)V

    if-eqz v2, :cond_3

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_2

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, 0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    :cond_2
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const/high16 v1, 0x8000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    :cond_3
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/appcompat/app/e;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lpl/j;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Ltm/f;->b:F

    goto :goto_0

    :cond_0
    sget v0, Ltm/f;->a:F

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/Window;->setDimAmount(F)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    const/high16 v0, -0x80000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    const/4 v0, -0x1

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setLayout(II)V

    :cond_1
    return-void
.end method

.method protected onStart()V
    .locals 2

    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    iget-object v0, p0, Lmiuix/bottomsheet/d;->a:Lmiuix/bottomsheet/BottomSheetBehavior;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/bottomsheet/BottomSheetBehavior;->getState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lmiuix/bottomsheet/d;->a:Lmiuix/bottomsheet/BottomSheetBehavior;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lmiuix/bottomsheet/BottomSheetBehavior;->setState(I)V

    :cond_0
    return-void
.end method

.method removeDefaultCallback()V
    .locals 2

    iget-object v0, p0, Lmiuix/bottomsheet/d;->a:Lmiuix/bottomsheet/BottomSheetBehavior;

    iget-object v1, p0, Lmiuix/bottomsheet/d;->k:Lmiuix/bottomsheet/BottomSheetBehavior$i;

    invoke-virtual {v0, v1}, Lmiuix/bottomsheet/BottomSheetBehavior;->removeBottomSheetCallback(Lmiuix/bottomsheet/BottomSheetBehavior$i;)V

    return-void
.end method

.method public setCancelable(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-boolean v0, p0, Lmiuix/bottomsheet/d;->f:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lmiuix/bottomsheet/d;->f:Z

    iget-object v0, p0, Lmiuix/bottomsheet/d;->a:Lmiuix/bottomsheet/BottomSheetBehavior;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lmiuix/bottomsheet/BottomSheetBehavior;->setHideable(Z)V

    :cond_0
    return-void
.end method

.method public setCanceledOnTouchOutside(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lmiuix/bottomsheet/d;->f:Z

    if-nez v1, :cond_0

    iput-boolean v0, p0, Lmiuix/bottomsheet/d;->f:Z

    :cond_0
    iput-boolean p1, p0, Lmiuix/bottomsheet/d;->g:Z

    iput-boolean v0, p0, Lmiuix/bottomsheet/d;->h:Z

    return-void
.end method

.method public setContentView(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lmiuix/bottomsheet/d;->wrapInBottomSheet(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/appcompat/app/e;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lmiuix/bottomsheet/d;->wrapInBottomSheet(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/appcompat/app/e;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lmiuix/bottomsheet/d;->wrapInBottomSheet(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/appcompat/app/e;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method shouldWindowCloseOnTouchOutside()Z
    .locals 5

    iget-boolean v0, p0, Lmiuix/bottomsheet/d;->h:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [I

    const v3, 0x101035b

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-virtual {v0, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lmiuix/bottomsheet/d;->g:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iput-boolean v1, p0, Lmiuix/bottomsheet/d;->h:Z

    :cond_0
    iget-boolean v0, p0, Lmiuix/bottomsheet/d;->g:Z

    return v0
.end method

.class public Lmiuix/bottomsheet/BottomSheetView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lmiuix/view/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/bottomsheet/BottomSheetView$c;,
        Lmiuix/bottomsheet/BottomSheetView$b;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Z

.field private e:Lmiuix/bottomsheet/BottomSheetView$b;

.field private f:Lmiuix/bottomsheet/BottomSheetView$c;

.field private g:Landroid/widget/FrameLayout;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Landroid/graphics/Path;

.field private k:Z

.field private l:[F

.field private m:[F

.field private n:Landroid/graphics/drawable/Drawable;

.field private o:Z

.field private p:Lmiuix/view/k;

.field private q:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private r:Z

.field private s:F

.field private t:Landroid/util/AttributeSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lmiuix/bottomsheet/BottomSheetView;->a:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetView;->d:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lmiuix/bottomsheet/BottomSheetView;->o:Z

    iput-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetView;->r:Z

    invoke-direct {p0, p1, p2}, Lmiuix/bottomsheet/BottomSheetView;->h(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic b(Lmiuix/bottomsheet/BottomSheetView;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lmiuix/bottomsheet/BottomSheetView;->n:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic c(Lmiuix/bottomsheet/BottomSheetView;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lmiuix/bottomsheet/BottomSheetView;->q:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method private h(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lmiuix/bottomsheet/o;->c:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/View;->setClipToOutline(Z)V

    iput-object p2, p0, Lmiuix/bottomsheet/BottomSheetView;->t:Landroid/util/AttributeSet;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lmiuix/bottomsheet/BottomSheetView;->k:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    iput p1, p0, Lmiuix/bottomsheet/BottomSheetView;->s:F

    invoke-direct {p0, p2}, Lmiuix/bottomsheet/BottomSheetView;->k(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private i(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lmiuix/bottomsheet/BottomSheetView;->n:Landroid/graphics/drawable/Drawable;

    new-instance v0, Lmiuix/view/k;

    new-instance v1, Lmiuix/bottomsheet/BottomSheetView$a;

    invoke-direct {v1, p0}, Lmiuix/bottomsheet/BottomSheetView$a;-><init>(Lmiuix/bottomsheet/BottomSheetView;)V

    const/4 v2, 0x0

    invoke-direct {v0, p1, p0, v2, v1}, Lmiuix/view/k;-><init>(Landroid/content/Context;Landroid/view/View;ZLmiuix/view/k$a;)V

    iput-object v0, p0, Lmiuix/bottomsheet/BottomSheetView;->p:Lmiuix/view/k;

    return-void
.end method

.method private k(Landroid/util/AttributeSet;)V
    .locals 10

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/bottomsheet/m;->m:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lmiuix/bottomsheet/BottomSheetView;->b:I

    sget v1, Lmiuix/bottomsheet/m;->f:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lmiuix/bottomsheet/BottomSheetView;->c:I

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lmiuix/bottomsheet/r;->r:[I

    sget v3, Lmiuix/bottomsheet/l;->c:I

    invoke-virtual {v1, p1, v2, v3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget v1, Lmiuix/bottomsheet/r;->t:I

    iget v2, p0, Lmiuix/bottomsheet/BottomSheetView;->b:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lmiuix/bottomsheet/BottomSheetView;->b:I

    sget v1, Lmiuix/bottomsheet/r;->u:I

    iget v2, p0, Lmiuix/bottomsheet/BottomSheetView;->c:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lmiuix/bottomsheet/BottomSheetView;->c:I

    sget v1, Lmiuix/bottomsheet/r;->s:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lmiuix/bottomsheet/BottomSheetView;->o:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    const/16 p1, 0x8

    new-array v1, p1, [F

    iget v2, p0, Lmiuix/bottomsheet/BottomSheetView;->b:I

    int-to-float v3, v2

    aput v3, v1, v0

    int-to-float v3, v2

    const/4 v4, 0x1

    aput v3, v1, v4

    int-to-float v3, v2

    const/4 v5, 0x2

    aput v3, v1, v5

    int-to-float v2, v2

    const/4 v3, 0x3

    aput v2, v1, v3

    const/4 v2, 0x4

    const/4 v6, 0x0

    aput v6, v1, v2

    const/4 v7, 0x5

    aput v6, v1, v7

    const/4 v8, 0x6

    aput v6, v1, v8

    const/4 v9, 0x7

    aput v6, v1, v9

    iput-object v1, p0, Lmiuix/bottomsheet/BottomSheetView;->l:[F

    new-array p1, p1, [F

    iget v1, p0, Lmiuix/bottomsheet/BottomSheetView;->c:I

    int-to-float v6, v1

    aput v6, p1, v0

    int-to-float v0, v1

    aput v0, p1, v4

    int-to-float v0, v1

    aput v0, p1, v5

    int-to-float v0, v1

    aput v0, p1, v3

    int-to-float v0, v1

    aput v0, p1, v2

    int-to-float v0, v1

    aput v0, p1, v7

    int-to-float v0, v1

    aput v0, p1, v8

    int-to-float v0, v1

    aput v0, p1, v9

    iput-object p1, p0, Lmiuix/bottomsheet/BottomSheetView;->m:[F

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetView;->r:Z

    return v0
.end method

.method public d(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetView;->g:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetView;->k:Z

    if-eqz v0, :cond_0

    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetView;->j:Landroid/graphics/Path;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetView;->j:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :goto_1
    return-void
.end method

.method public e(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetView;->g:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public f(Z)V
    .locals 1

    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetView;->p:Lmiuix/view/k;

    invoke-virtual {v0, p1}, Lmiuix/view/k;->a(Z)V

    return-void
.end method

.method public g()V
    .locals 2

    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetView;->h:Landroid/view/View;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method getExtraHeight()I
    .locals 2

    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetView;->i:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetView;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public j()Z
    .locals 1

    iget-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetView;->d:Z

    return v0
.end method

.method public l()V
    .locals 1

    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetView;->g:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    return-void
.end method

.method public m()V
    .locals 2

    iget-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetView;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetView;->h:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetView;->p:Lmiuix/view/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/view/k;->h()V

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float p1, p1

    iget v0, p0, Lmiuix/bottomsheet/BottomSheetView;->s:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1

    iput p1, p0, Lmiuix/bottomsheet/BottomSheetView;->s:F

    iget-object p1, p0, Lmiuix/bottomsheet/BottomSheetView;->t:Landroid/util/AttributeSet;

    invoke-direct {p0, p1}, Lmiuix/bottomsheet/BottomSheetView;->k(Landroid/util/AttributeSet;)V

    iget-object p1, p0, Lmiuix/bottomsheet/BottomSheetView;->e:Lmiuix/bottomsheet/BottomSheetView$b;

    if-eqz p1, :cond_0

    new-instance p1, Lmiuix/bottomsheet/BottomSheetView$b;

    iget v0, p0, Lmiuix/bottomsheet/BottomSheetView;->b:I

    int-to-float v0, v0

    invoke-direct {p1, v0}, Lmiuix/bottomsheet/BottomSheetView$b;-><init>(F)V

    iput-object p1, p0, Lmiuix/bottomsheet/BottomSheetView;->e:Lmiuix/bottomsheet/BottomSheetView$b;

    :cond_0
    iget-object p1, p0, Lmiuix/bottomsheet/BottomSheetView;->f:Lmiuix/bottomsheet/BottomSheetView$c;

    if-eqz p1, :cond_1

    new-instance p1, Lmiuix/bottomsheet/BottomSheetView$c;

    iget v0, p0, Lmiuix/bottomsheet/BottomSheetView;->c:I

    int-to-float v0, v0

    invoke-direct {p1, v0}, Lmiuix/bottomsheet/BottomSheetView$c;-><init>(F)V

    iput-object p1, p0, Lmiuix/bottomsheet/BottomSheetView;->f:Lmiuix/bottomsheet/BottomSheetView$c;

    :cond_1
    iget-object p1, p0, Lmiuix/bottomsheet/BottomSheetView;->p:Lmiuix/view/k;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lmiuix/view/k;->h()V

    :cond_2
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    sget v0, Lmiuix/bottomsheet/n;->f:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lmiuix/bottomsheet/BottomSheetView;->g:Landroid/widget/FrameLayout;

    sget v0, Lmiuix/bottomsheet/n;->c:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiuix/bottomsheet/BottomSheetView;->h:Landroid/view/View;

    sget v0, Lmiuix/bottomsheet/n;->e:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiuix/bottomsheet/BottomSheetView;->i:Landroid/view/View;

    iget-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetView;->d:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lmiuix/bottomsheet/BottomSheetView;->g()V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lmiuix/bottomsheet/BottomSheetView;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiuix/bottomsheet/BottomSheetView;->i(Landroid/content/Context;)V

    invoke-static {}, Lgl/a;->G()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    invoke-static {}, Lgl/a;->E()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lgl/a;->H()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v2

    :goto_1
    invoke-static {}, Lbl/h;->f()Z

    move-result v3

    if-eqz v3, :cond_3

    if-nez v0, :cond_3

    invoke-virtual {p0, v2}, Lmiuix/bottomsheet/BottomSheetView;->setSupportBlur(Z)V

    iget-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetView;->o:Z

    invoke-virtual {p0, v0}, Lmiuix/bottomsheet/BottomSheetView;->setEnableBlur(Z)V

    iget-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetView;->o:Z

    invoke-virtual {p0, v0}, Lmiuix/bottomsheet/BottomSheetView;->f(Z)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v1}, Lmiuix/bottomsheet/BottomSheetView;->setSupportBlur(Z)V

    :goto_2
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    iget-boolean p3, p0, Lmiuix/bottomsheet/BottomSheetView;->k:Z

    if-nez p3, :cond_3

    iget-object p3, p0, Lmiuix/bottomsheet/BottomSheetView;->j:Landroid/graphics/Path;

    if-nez p3, :cond_0

    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    iput-object p3, p0, Lmiuix/bottomsheet/BottomSheetView;->j:Landroid/graphics/Path;

    :cond_0
    iget p3, p0, Lmiuix/bottomsheet/BottomSheetView;->a:I

    const/4 p4, 0x0

    if-nez p3, :cond_1

    iget-object p3, p0, Lmiuix/bottomsheet/BottomSheetView;->j:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    iget-object p3, p0, Lmiuix/bottomsheet/BottomSheetView;->j:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-direct {v0, p4, p4, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object p1, p0, Lmiuix/bottomsheet/BottomSheetView;->l:[F

    sget-object p2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p3, v0, p1, p2}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-ne p3, v0, :cond_2

    iget-object p3, p0, Lmiuix/bottomsheet/BottomSheetView;->j:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    iget-object p3, p0, Lmiuix/bottomsheet/BottomSheetView;->j:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-direct {v0, p4, p4, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object p1, p0, Lmiuix/bottomsheet/BottomSheetView;->m:[F

    sget-object p2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p3, v0, p1, p2}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unexpected bottom sheet mode: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lmiuix/bottomsheet/BottomSheetView;->a:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    return-void
.end method

.method setBottomSheetMode(I)V
    .locals 3

    iget v0, p0, Lmiuix/bottomsheet/BottomSheetView;->a:I

    if-eq v0, p1, :cond_5

    iput p1, p0, Lmiuix/bottomsheet/BottomSheetView;->a:I

    iget-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetView;->k:Z

    if-eqz v0, :cond_4

    if-nez p1, :cond_1

    iget-object p1, p0, Lmiuix/bottomsheet/BottomSheetView;->e:Lmiuix/bottomsheet/BottomSheetView$b;

    if-nez p1, :cond_0

    new-instance p1, Lmiuix/bottomsheet/BottomSheetView$b;

    iget v0, p0, Lmiuix/bottomsheet/BottomSheetView;->b:I

    int-to-float v0, v0

    invoke-direct {p1, v0}, Lmiuix/bottomsheet/BottomSheetView$b;-><init>(F)V

    iput-object p1, p0, Lmiuix/bottomsheet/BottomSheetView;->e:Lmiuix/bottomsheet/BottomSheetView$b;

    :cond_0
    iget-object p1, p0, Lmiuix/bottomsheet/BottomSheetView;->e:Lmiuix/bottomsheet/BottomSheetView$b;

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lmiuix/bottomsheet/BottomSheetView;->f:Lmiuix/bottomsheet/BottomSheetView$c;

    if-nez p1, :cond_2

    new-instance p1, Lmiuix/bottomsheet/BottomSheetView$c;

    iget v0, p0, Lmiuix/bottomsheet/BottomSheetView;->c:I

    int-to-float v0, v0

    invoke-direct {p1, v0}, Lmiuix/bottomsheet/BottomSheetView$c;-><init>(F)V

    iput-object p1, p0, Lmiuix/bottomsheet/BottomSheetView;->f:Lmiuix/bottomsheet/BottomSheetView$c;

    :cond_2
    iget-object p1, p0, Lmiuix/bottomsheet/BottomSheetView;->f:Lmiuix/bottomsheet/BottomSheetView$c;

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected bottom sheet mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_5
    :goto_1
    return-void
.end method

.method public setDragHandleViewEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lmiuix/bottomsheet/BottomSheetView;->d:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lmiuix/bottomsheet/BottomSheetView;->g()V

    :cond_0
    return-void
.end method

.method public setEnableBlur(Z)V
    .locals 1

    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetView;->p:Lmiuix/view/k;

    invoke-virtual {v0, p1}, Lmiuix/view/k;->l(Z)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lmiuix/bottomsheet/BottomSheetView;->f(Z)V

    return-void
.end method

.method setExtraHeightEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetView;->i:Landroid/view/View;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setFenceEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lmiuix/bottomsheet/BottomSheetView;->r:Z

    return-void
.end method

.method public setSupportBlur(Z)V
    .locals 1

    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetView;->p:Lmiuix/view/k;

    invoke-virtual {v0, p1}, Lmiuix/view/k;->n(Z)V

    if-eqz p1, :cond_0

    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object p1, p0, Lmiuix/bottomsheet/BottomSheetView;->q:Landroid/graphics/drawable/Drawable;

    :cond_0
    return-void
.end method

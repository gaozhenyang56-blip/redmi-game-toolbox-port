.class public Lcom/miui/applicationlock/widget/MiuiNumericInputView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/applicationlock/widget/MiuiNumericInputView$b;,
        Lcom/miui/applicationlock/widget/MiuiNumericInputView$d;,
        Lcom/miui/applicationlock/widget/MiuiNumericInputView$c;
    }
.end annotation


# instance fields
.field public a:[Lcom/miui/applicationlock/widget/MiuiNumericInputView$b;

.field private b:Lcom/miui/applicationlock/widget/MiuiNumericInputView$c;

.field private c:Lcom/miui/applicationlock/widget/MiuiNumericInputView$d;

.field private d:Lcom/miui/applicationlock/widget/MiuiNumericInputView$d;

.field private e:Lcom/miui/applicationlock/widget/MiuiNumericInputView$d;

.field private f:Lcom/miui/applicationlock/widget/MiuiNumericInputView$d;

.field private final g:Landroid/content/Context;

.field private final h:I

.field private final i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p2, 0xc

    new-array p2, p2, [Lcom/miui/applicationlock/widget/MiuiNumericInputView$b;

    iput-object p2, p0, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->a:[Lcom/miui/applicationlock/widget/MiuiNumericInputView$b;

    iput-object p1, p0, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->g:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f07021d

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->h:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f07165a

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->i:I

    invoke-direct {p0, p1}, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->h(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic a(Lcom/miui/applicationlock/widget/MiuiNumericInputView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->j()V

    return-void
.end method

.method public static synthetic b(Lcom/miui/applicationlock/widget/MiuiNumericInputView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->i(I)V

    return-void
.end method

.method static synthetic c(Lcom/miui/applicationlock/widget/MiuiNumericInputView;)I
    .locals 0

    iget p0, p0, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->h:I

    return p0
.end method

.method static synthetic d(Lcom/miui/applicationlock/widget/MiuiNumericInputView;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->g:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic e(Lcom/miui/applicationlock/widget/MiuiNumericInputView;)Lcom/miui/applicationlock/widget/MiuiNumericInputView$c;
    .locals 0

    iget-object p0, p0, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->b:Lcom/miui/applicationlock/widget/MiuiNumericInputView$c;

    return-object p0
.end method

.method private g(Landroid/view/View;)Landroid/view/animation/Animation;
    .locals 12

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    iget-object v1, p0, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->g:Landroid/content/Context;

    const v2, 0x10c0008

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/content/Context;I)V

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v11}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v1, Lcom/miui/applicationlock/widget/MiuiNumericInputView$a;

    invoke-direct {v1, p0, p1}, Lcom/miui/applicationlock/widget/MiuiNumericInputView$a;-><init>(Lcom/miui/applicationlock/widget/MiuiNumericInputView;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-object v0
.end method

.method private h(Landroid/content/Context;)V
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Lcom/miui/applicationlock/widget/MiuiNumericInputView$d;

    invoke-direct {v1, p0, p1}, Lcom/miui/applicationlock/widget/MiuiNumericInputView$d;-><init>(Lcom/miui/applicationlock/widget/MiuiNumericInputView;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->c:Lcom/miui/applicationlock/widget/MiuiNumericInputView$d;

    const/4 v2, 0x2

    const/4 v3, 0x3

    invoke-static {v1, v0, v2, v3}, Lcom/miui/applicationlock/widget/MiuiNumericInputView$d;->a(Lcom/miui/applicationlock/widget/MiuiNumericInputView$d;III)V

    new-instance v0, Lcom/miui/applicationlock/widget/MiuiNumericInputView$d;

    invoke-direct {v0, p0, p1}, Lcom/miui/applicationlock/widget/MiuiNumericInputView$d;-><init>(Lcom/miui/applicationlock/widget/MiuiNumericInputView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->d:Lcom/miui/applicationlock/widget/MiuiNumericInputView$d;

    const/4 v1, 0x4

    const/4 v2, 0x5

    const/4 v3, 0x6

    invoke-static {v0, v1, v2, v3}, Lcom/miui/applicationlock/widget/MiuiNumericInputView$d;->a(Lcom/miui/applicationlock/widget/MiuiNumericInputView$d;III)V

    new-instance v0, Lcom/miui/applicationlock/widget/MiuiNumericInputView$d;

    invoke-direct {v0, p0, p1}, Lcom/miui/applicationlock/widget/MiuiNumericInputView$d;-><init>(Lcom/miui/applicationlock/widget/MiuiNumericInputView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->e:Lcom/miui/applicationlock/widget/MiuiNumericInputView$d;

    const/4 v1, 0x7

    const/16 v2, 0x8

    const/16 v3, 0x9

    invoke-static {v0, v1, v2, v3}, Lcom/miui/applicationlock/widget/MiuiNumericInputView$d;->a(Lcom/miui/applicationlock/widget/MiuiNumericInputView$d;III)V

    new-instance v0, Lcom/miui/applicationlock/widget/MiuiNumericInputView$d;

    invoke-direct {v0, p0, p1}, Lcom/miui/applicationlock/widget/MiuiNumericInputView$d;-><init>(Lcom/miui/applicationlock/widget/MiuiNumericInputView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->f:Lcom/miui/applicationlock/widget/MiuiNumericInputView$d;

    const/16 p1, 0xb

    const/4 v1, 0x0

    const/16 v2, 0xa

    invoke-static {v0, p1, v1, v2}, Lcom/miui/applicationlock/widget/MiuiNumericInputView$d;->a(Lcom/miui/applicationlock/widget/MiuiNumericInputView$d;III)V

    iget-object p1, p0, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->c:Lcom/miui/applicationlock/widget/MiuiNumericInputView$d;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->d:Lcom/miui/applicationlock/widget/MiuiNumericInputView$d;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->e:Lcom/miui/applicationlock/widget/MiuiNumericInputView$d;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->f:Lcom/miui/applicationlock/widget/MiuiNumericInputView$d;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private synthetic i(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->setCellHeight(I)V

    return-void
.end method

.method private synthetic j()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->i:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setCellHeight(I)V
    .locals 5

    iget-object v0, p0, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->a:[Lcom/miui/applicationlock/widget/MiuiNumericInputView$b;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    iput p1, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public f(Z)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->a:[Lcom/miui/applicationlock/widget/MiuiNumericInputView$b;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    const/16 v2, 0xa

    if-eq v0, v2, :cond_0

    const/16 v2, 0xb

    if-eq v0, v2, :cond_0

    aget-object v1, v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/miui/applicationlock/widget/MiuiNumericInputView$b;->e(ZZ)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public k(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0x9

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->a:[Lcom/miui/applicationlock/widget/MiuiNumericInputView$b;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    :cond_0
    return-void
.end method

.method public l()V
    .locals 3

    iget-object v0, p0, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->c:Lcom/miui/applicationlock/widget/MiuiNumericInputView$d;

    invoke-direct {p0, v0}, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->g(Landroid/view/View;)Landroid/view/animation/Animation;

    move-result-object v0

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    iget-object v1, p0, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->c:Lcom/miui/applicationlock/widget/MiuiNumericInputView$d;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->d:Lcom/miui/applicationlock/widget/MiuiNumericInputView$d;

    invoke-direct {p0, v0}, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->g(Landroid/view/View;)Landroid/view/animation/Animation;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    iget-object v1, p0, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->d:Lcom/miui/applicationlock/widget/MiuiNumericInputView$d;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->e:Lcom/miui/applicationlock/widget/MiuiNumericInputView$d;

    invoke-direct {p0, v0}, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->g(Landroid/view/View;)Landroid/view/animation/Animation;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    iget-object v1, p0, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->e:Lcom/miui/applicationlock/widget/MiuiNumericInputView$d;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->f:Lcom/miui/applicationlock/widget/MiuiNumericInputView$d;

    invoke-direct {p0, v0}, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->g(Landroid/view/View;)Landroid/view/animation/Animation;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    iget-object v1, p0, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->f:Lcom/miui/applicationlock/widget/MiuiNumericInputView$d;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    div-int/lit8 p2, p2, 0x4

    iget p3, p0, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->h:I

    if-ge p2, p3, :cond_0

    new-instance p3, Lcom/miui/applicationlock/widget/i;

    invoke-direct {p3, p0, p2}, Lcom/miui/applicationlock/widget/i;-><init>(Lcom/miui/applicationlock/widget/MiuiNumericInputView;I)V

    invoke-virtual {p0, p3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget p2, p0, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->i:I

    if-le p1, p2, :cond_1

    new-instance p1, Lcom/miui/applicationlock/widget/j;

    invoke-direct {p1, p0}, Lcom/miui/applicationlock/widget/j;-><init>(Lcom/miui/applicationlock/widget/MiuiNumericInputView;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setLightMode(Z)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->a:[Lcom/miui/applicationlock/widget/MiuiNumericInputView$b;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    const/16 v3, 0xa

    if-eq v1, v3, :cond_0

    const/16 v3, 0xb

    if-eq v1, v3, :cond_0

    aget-object v2, v2, v1

    invoke-virtual {v2, p1, v0}, Lcom/miui/applicationlock/widget/MiuiNumericInputView$b;->e(ZZ)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setNumericInputListener(Lcom/miui/applicationlock/widget/MiuiNumericInputView$c;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->b:Lcom/miui/applicationlock/widget/MiuiNumericInputView$c;

    return-void
.end method

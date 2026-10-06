.class public Lcom/miui/securityscan/ui/main/OptimizingBar;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/Button;

.field private b:Landroid/os/Handler;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/ProgressBar;

.field private j:Landroid/widget/ProgressBar;

.field private k:Landroid/widget/ProgressBar;

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/widget/ImageView;

.field private o:Landroid/content/Context;

.field private p:Landroid/widget/ImageView;

.field private q:Landroid/widget/ImageView;

.field private r:Landroid/widget/ImageView;

.field private s:Landroid/view/View;

.field private t:Landroid/view/View;

.field private u:Landroid/view/View;

.field private v:Landroid/view/View;

.field private w:Z

.field private x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/securityscan/ui/main/OptimizingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->x:Ljava/util/List;

    iput-object p1, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->o:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Lzf/d;)V
    .locals 7

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->o:Landroid/content/Context;

    const v1, 0x7f120fa7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/securityscan/ui/main/OptimizingBar;->e(Lzf/d;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->x:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->x:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/miui/securityscan/ui/main/OptimizingBar$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const-string v2, "scaleY"

    const-string v3, "scaleX"

    const-wide/16 v4, 0xc8

    const/4 v6, 0x2

    if-eq p1, v0, :cond_4

    if-eq p1, v6, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    goto/16 :goto_2

    :cond_2
    iget-object p1, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->r:Landroid/widget/ImageView;

    const v0, 0x7f0804c7

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->r:Landroid/widget/ImageView;

    new-array v0, v6, [F

    fill-array-data v0, :array_0

    invoke-static {p1, v3, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    iget-object p1, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->r:Landroid/widget/ImageView;

    new-array v0, v6, [F

    fill-array-data v0, :array_1

    invoke-static {p1, v2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    iget-object p1, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->j:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->m:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->q:Landroid/widget/ImageView;

    const v0, 0x7f0804cb

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->q:Landroid/widget/ImageView;

    new-array v0, v6, [F

    fill-array-data v0, :array_2

    invoke-static {p1, v3, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    iget-object p1, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->q:Landroid/widget/ImageView;

    new-array v0, v6, [F

    fill-array-data v0, :array_3

    invoke-static {p1, v2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->p:Landroid/widget/ImageView;

    const v0, 0x7f0804cd

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->p:Landroid/widget/ImageView;

    new-array v0, v6, [F

    fill-array-data v0, :array_4

    invoke-static {p1, v3, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    iget-object p1, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->p:Landroid/widget/ImageView;

    new-array v0, v6, [F

    fill-array-data v0, :array_5

    invoke-static {p1, v2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    :goto_1
    invoke-virtual {p1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    :goto_2
    return-void

    nop

    :array_0
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data

    :array_5
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public b(Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->b:Landroid/os/Handler;

    return-void
.end method

.method public c()V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->p:Landroid/widget/ImageView;

    const v1, 0x7f0804ce

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->q:Landroid/widget/ImageView;

    const v1, 0x7f0804cc

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->r:Landroid/widget/ImageView;

    const v1, 0x7f0804c8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->o:Landroid/content/Context;

    const v2, 0x7f120fa8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->o:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->o:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->i:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->l:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->k:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->j:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public d(Lzf/d;I)V
    .locals 4

    sget-object v0, Lcom/miui/securityscan/ui/main/OptimizingBar$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/16 v1, 0x64

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object p1, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->j:Landroid/widget/ProgressBar;

    if-ne p2, v1, :cond_1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->m:Landroid/widget/ImageView;

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->m:Landroid/widget/ImageView;

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->k:Landroid/widget/ProgressBar;

    if-ne p2, v1, :cond_3

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->n:Landroid/widget/ImageView;

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->n:Landroid/widget/ImageView;

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->i:Landroid/widget/ProgressBar;

    if-ne p2, v1, :cond_5

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->l:Landroid/widget/ImageView;

    :goto_0
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :cond_5
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->l:Landroid/widget/ImageView;

    :goto_1
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method public e(Lzf/d;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/miui/securityscan/ui/main/OptimizingBar$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->h:Landroid/widget/TextView;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->f:Landroid/widget/TextView;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->d:Landroid/widget/TextView;

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method public f(Landroid/content/res/Configuration;I)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->w:Z

    if-eqz v1, :cond_2

    iget p1, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 p1, p1, 0xf

    const v1, 0x7f071a31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const/4 v2, 0x4

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const p1, 0x7f0716a8

    goto :goto_1

    :cond_1
    :goto_0
    const p1, 0x7f0716a5

    :goto_1
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p2, p1, p2, v1}, Landroid/view/View;->setPaddingRelative(IIII)V

    goto :goto_4

    :cond_2
    sget-boolean v1, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    const p1, 0x7f0716a7

    :goto_2
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_3

    :cond_3
    const/4 v2, 0x1

    if-ne p1, v2, :cond_4

    const p1, 0x7f0716a6

    goto :goto_2

    :cond_4
    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p1

    invoke-virtual {p0, p2, v1, p2, p1}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_5
    :goto_4
    return-void
.end method

.method public g(Lzf/d;Landroid/animation/Animator$AnimatorListener;)V
    .locals 4

    sget-object v0, Lcom/miui/securityscan/ui/main/OptimizingBar$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const-wide/16 v1, 0x7d0

    const/4 v3, 0x2

    if-eq p1, v0, :cond_3

    if-eq p1, v3, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    new-array p1, v3, [I

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_1

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_1
    new-instance p2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    goto :goto_0

    :cond_2
    new-array p1, v3, [I

    fill-array-data p1, :array_1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance p2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    goto :goto_0

    :cond_3
    new-array p1, v3, [I

    fill-array-data p1, :array_2

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance p2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    :goto_0
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    iget-object p2, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->x:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x64
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x64
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x64
    .end array-data
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0b01ea

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->b:Landroid/os/Handler;

    const/16 v0, 0x6a

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0b01ea

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->a:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b01e0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->v:Landroid/view/View;

    const v0, 0x7f0b06a1

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->s:Landroid/view/View;

    const v0, 0x7f0b0669

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->t:Landroid/view/View;

    const v0, 0x7f0b0687

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->u:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->s:Landroid/view/View;

    const v1, 0x7f0b05e8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->p:Landroid/widget/ImageView;

    const v2, 0x7f0804ce

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->t:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->q:Landroid/widget/ImageView;

    const v2, 0x7f0804cc

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->u:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->r:Landroid/widget/ImageView;

    const v1, 0x7f0804c8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->s:Landroid/view/View;

    const v1, 0x7f0b0cf3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->c:Landroid/widget/TextView;

    const v2, 0x7f120fad

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->t:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->e:Landroid/widget/TextView;

    const v2, 0x7f120fab

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->u:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->g:Landroid/widget/TextView;

    const v1, 0x7f120fac

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->s:Landroid/view/View;

    const v1, 0x7f0b0ce1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->t:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->f:Landroid/widget/TextView;

    const v2, 0x7f120fa8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->u:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->s:Landroid/view/View;

    const v1, 0x7f0b0915

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->i:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->t:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->k:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->u:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->j:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->s:Landroid/view/View;

    const v1, 0x7f0b0628

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->l:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->t:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->n:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->u:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->m:Landroid/widget/ImageView;

    invoke-static {}, Lx4/t;->r()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->w:Z

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/securityscan/ui/main/OptimizingBar;->f(Landroid/content/res/Configuration;I)V

    return-void
.end method

.method public setButtonClickable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->a:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method public setEventHandler(Lw4/e;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/ui/main/OptimizingBar;->b:Landroid/os/Handler;

    return-void
.end method

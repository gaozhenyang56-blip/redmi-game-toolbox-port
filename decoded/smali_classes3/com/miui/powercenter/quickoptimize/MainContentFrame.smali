.class public Lcom/miui/powercenter/quickoptimize/MainContentFrame;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private a:Lw4/e;

.field private b:Landroid/widget/RelativeLayout;

.field private c:Landroid/widget/RelativeLayout;

.field private d:Landroid/widget/RelativeLayout;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/content/Context;

.field private j:Landroid/app/Activity;

.field private k:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/powercenter/quickoptimize/MainContentFrame;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->i:Landroid/content/Context;

    return-void
.end method

.method public static synthetic a(Lcom/miui/powercenter/quickoptimize/MainContentFrame;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->d()V

    return-void
.end method

.method private synthetic d()V
    .locals 5

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f071c4c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->f:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-static {v0, v1, v2}, Lme/u;->a(Ljava/lang/CharSequence;FI)I

    move-result v0

    iget-object v1, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->g:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f071c45

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->g:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-static {v1, v2, v3}, Lme/u;->a(Ljava/lang/CharSequence;FI)I

    move-result v1

    add-int v2, v0, v1

    iget-object v3, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->f:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, 0x4

    if-lt v2, v4, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f071e0c

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f071e4e

    :goto_0
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "run titleLines:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", summaryLines  :"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainContentFrame"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private f(ZII)V
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setScanResultTitle safe:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",issueCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",suggestCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainContentFrame"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f060bf1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->e:Landroid/widget/TextView;

    const p2, 0x7f120c25

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    :cond_0
    const p1, 0x7f060bf2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez p2, :cond_1

    if-lez p3, :cond_1

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->e:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->i:Landroid/content/Context;

    const v4, 0x7f121223

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f1000f3

    new-array v8, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v1

    invoke-virtual {v6, v7, p2, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v5, v1

    iget-object p2, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->i:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v6, 0x7f1000fc

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-virtual {p2, v6, p3, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    if-lez p2, :cond_2

    iget-object p3, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->i:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f1000fb

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-virtual {v0, v3, p2, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object p2, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_2
    if-lez p3, :cond_3

    iget-object p1, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->e:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->i:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v3, 0x7f1000fe

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-virtual {p2, v3, p3, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->h:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f08045f

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;FFIIJ)Landroid/animation/ObjectAnimator;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x1

    aput p3, v0, p2

    const-string p2, "alpha"

    invoke-static {p1, p2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    invoke-virtual {p1, p5}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    invoke-virtual {p1, p6, p7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->d:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->a:Lw4/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public g()V
    .locals 14

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->b:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->c:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/miui/powercenter/PowerCenter;->p:Z

    invoke-static {}, Lfe/l;->m()Lfe/l;

    move-result-object v2

    invoke-virtual {v2}, Lfe/l;->w()I

    move-result v2

    invoke-static {}, Lfe/l;->m()Lfe/l;

    move-result-object v3

    invoke-virtual {v3}, Lfe/l;->o()I

    move-result v3

    iget-object v4, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->i:Landroid/content/Context;

    invoke-static {v4}, Lcom/miui/powercenter/batteryhistory/o;->a(Landroid/content/Context;)J

    move-result-wide v4

    iget-object v6, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->i:Landroid/content/Context;

    invoke-static {v6, v4, v5}, Lme/b0;->n(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    if-lez v2, :cond_0

    iget-object v3, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->f:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->i:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f100123

    new-array v8, v0, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v1

    invoke-virtual {v6, v7, v2, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lfe/l;->m()Lfe/l;

    move-result-object v2

    invoke-virtual {v2}, Lfe/l;->q()J

    move-result-wide v2

    iget-object v6, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->i:Landroid/content/Context;

    invoke-static {v6, v2, v3, v4, v5}, Lme/b0;->m(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->g:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->f:Landroid/widget/TextView;

    if-lez v3, :cond_1

    const v3, 0x7f12153f

    goto :goto_0

    :cond_1
    const v3, 0x7f121542

    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->g:Landroid/widget/TextView;

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v2, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->f:Landroid/widget/TextView;

    new-instance v3, Lfe/c;

    invoke-direct {v3, p0}, Lfe/c;-><init>(Lcom/miui/powercenter/quickoptimize/MainContentFrame;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v4, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->c:Landroid/widget/RelativeLayout;

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x2

    const/4 v8, 0x0

    const-wide/16 v9, 0x3e8

    move-object v3, p0

    invoke-virtual/range {v3 .. v10}, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->b(Landroid/view/View;FFIIJ)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v5, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->b:Landroid/widget/RelativeLayout;

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    const-wide/16 v10, 0x1f4

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->b(Landroid/view/View;FFIIJ)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iget-object v6, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->f:Landroid/widget/TextView;

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x2

    const/4 v10, 0x0

    const-wide/16 v11, 0x1f4

    move-object v5, p0

    invoke-virtual/range {v5 .. v12}, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->b(Landroid/view/View;FFIIJ)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iget-object v7, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->g:Landroid/widget/TextView;

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x2

    const/4 v11, 0x0

    const-wide/16 v12, 0x1f4

    move-object v6, p0

    invoke-virtual/range {v6 .. v13}, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->b(Landroid/view/View;FFIIJ)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const/4 v7, 0x4

    new-array v7, v7, [Landroid/animation/Animator;

    aput-object v3, v7, v1

    aput-object v4, v7, v0

    const/4 v0, 0x2

    aput-object v5, v7, v0

    const/4 v0, 0x3

    aput-object v6, v7, v0

    invoke-virtual {v2, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public getNotchOffset()I
    .locals 1

    iget v0, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->k:I

    return v0
.end method

.method public h(ZII)V
    .locals 8

    invoke-direct {p0, p1, p3, p2}, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->f(ZII)V

    iget-object v1, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->d:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x2

    const/4 v5, 0x0

    const-wide/16 v6, 0x190

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->b(Landroid/view/View;FFIIJ)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->e:Landroid/widget/TextView;

    invoke-virtual/range {v0 .. v7}, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->b(Landroid/view/View;FFIIJ)Landroid/animation/ObjectAnimator;

    move-result-object p2

    new-instance p3, Landroid/animation/AnimatorSet;

    invoke-direct {p3}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/animation/Animator;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    invoke-virtual {p3, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {p3}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->i:Landroid/content/Context;

    if-eqz v0, :cond_0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->j:Landroid/app/Activity;

    :cond_0
    const v0, 0x7f0b0699

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->d:Landroid/widget/RelativeLayout;

    const v0, 0x7f0b0d59

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->b:Landroid/widget/RelativeLayout;

    const v0, 0x7f0b087d

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->c:Landroid/widget/RelativeLayout;

    const v0, 0x7f0b09f0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->e:Landroid/widget/TextView;

    const v0, 0x7f0b0505

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->h:Landroid/widget/ImageView;

    const v0, 0x7f0b03e3

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->f:Landroid/widget/TextView;

    const v0, 0x7f0b03e2

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->g:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->c()V

    return-void
.end method

.method public setEventHandler(Lw4/e;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->a:Lw4/e;

    return-void
.end method

.method public setFinalResultIconAlpha(F)V
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public setHeaderLayoutAlpha(F)V
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

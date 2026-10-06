.class public Lcom/miui/gamebooster/customview/VoiceModeView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;

.field private d:Lcom/miui/gamebooster/customview/h;

.field private e:Landroid/animation/ValueAnimator;

.field private f:Landroid/graphics/drawable/StateListDrawable;

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/customview/VoiceModeView;->c(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/miui/gamebooster/customview/VoiceModeView;)Lcom/miui/gamebooster/customview/h;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/customview/VoiceModeView;->d:Lcom/miui/gamebooster/customview/h;

    return-object p0
.end method

.method private b()V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/customview/VoiceModeView;->e:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/customview/VoiceModeView;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method private c(Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Lcom/miui/gamebooster/customview/VoiceModeView;->a:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e0216

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v1, 0x7f0b07a6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/miui/gamebooster/customview/VoiceModeView;->b:Landroid/widget/ImageView;

    const v1, 0x7f0b07aa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gamebooster/customview/VoiceModeView;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f071e58

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/customview/VoiceModeView;->g:I

    new-instance v0, Lcom/miui/gamebooster/customview/h;

    invoke-direct {v0, p1}, Lcom/miui/gamebooster/customview/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gamebooster/customview/VoiceModeView;->d:Lcom/miui/gamebooster/customview/h;

    return-void
.end method

.method private f(I)Z
    .locals 4

    iget-object v0, p0, Lcom/miui/gamebooster/customview/VoiceModeView;->f:Landroid/graphics/drawable/StateListDrawable;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x2

    const/4 v2, 0x1

    if-eq p1, v0, :cond_4

    if-ne p1, v2, :cond_1

    iget-object v3, p0, Lcom/miui/gamebooster/customview/VoiceModeView;->d:Lcom/miui/gamebooster/customview/h;

    invoke-virtual {v3}, Lcom/miui/gamebooster/customview/h;->d()I

    move-result v3

    if-ne v3, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/customview/VoiceModeView;->b:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/miui/gamebooster/customview/VoiceModeView;->f:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-ne p1, v2, :cond_2

    iget-object p1, p0, Lcom/miui/gamebooster/customview/VoiceModeView;->b:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object p1, p0, Lcom/miui/gamebooster/customview/VoiceModeView;->c:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object p1, p0, Lcom/miui/gamebooster/customview/VoiceModeView;->d:Lcom/miui/gamebooster/customview/h;

    invoke-virtual {p1, v2}, Lcom/miui/gamebooster/customview/h;->i(I)V

    return v2

    :cond_2
    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/miui/gamebooster/customview/VoiceModeView;->b:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object p1, p0, Lcom/miui/gamebooster/customview/VoiceModeView;->c:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object p1, p0, Lcom/miui/gamebooster/customview/VoiceModeView;->d:Lcom/miui/gamebooster/customview/h;

    invoke-virtual {p1, v1}, Lcom/miui/gamebooster/customview/h;->i(I)V

    return v2

    :cond_3
    return v1

    :cond_4
    :goto_0
    iput v0, p0, Lcom/miui/gamebooster/customview/VoiceModeView;->h:I

    iget-object p1, p0, Lcom/miui/gamebooster/customview/VoiceModeView;->d:Lcom/miui/gamebooster/customview/h;

    invoke-virtual {p1, v0}, Lcom/miui/gamebooster/customview/h;->i(I)V

    invoke-direct {p0}, Lcom/miui/gamebooster/customview/VoiceModeView;->g()V

    iget-object p1, p0, Lcom/miui/gamebooster/customview/VoiceModeView;->b:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/gamebooster/customview/VoiceModeView;->d:Lcom/miui/gamebooster/customview/h;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return v2
.end method

.method private g()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/customview/VoiceModeView;->e:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/miui/gamebooster/customview/VoiceModeView;->e:Landroid/animation/ValueAnimator;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/VoiceModeView;->e:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/VoiceModeView;->e:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/gamebooster/customview/VoiceModeView$a;

    invoke-direct {v1, p0}, Lcom/miui/gamebooster/customview/VoiceModeView$a;-><init>(Lcom/miui/gamebooster/customview/VoiceModeView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/VoiceModeView;->e:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/gamebooster/customview/VoiceModeView$b;

    invoke-direct {v1, p0}, Lcom/miui/gamebooster/customview/VoiceModeView$b;-><init>(Lcom/miui/gamebooster/customview/VoiceModeView;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/VoiceModeView;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x1
        0x0
    .end array-data
.end method


# virtual methods
.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/customview/VoiceModeView;->d:Lcom/miui/gamebooster/customview/h;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/customview/h;->i(I)V

    iput v1, p0, Lcom/miui/gamebooster/customview/VoiceModeView;->h:I

    invoke-direct {p0}, Lcom/miui/gamebooster/customview/VoiceModeView;->b()V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/VoiceModeView;->f:Landroid/graphics/drawable/StateListDrawable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/gamebooster/customview/VoiceModeView;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gamebooster/customview/VoiceModeView;->f:Landroid/graphics/drawable/StateListDrawable;

    iget-object v1, p0, Lcom/miui/gamebooster/customview/VoiceModeView;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public getModeTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/customview/VoiceModeView;->c:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/customview/VoiceModeView;->h:I

    return v0
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    return-void
.end method

.method public setIonBgStatus(I)V
    .locals 4

    iput p1, p0, Lcom/miui/gamebooster/customview/VoiceModeView;->h:I

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/customview/VoiceModeView;->f(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/customview/VoiceModeView;->b:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p1, :cond_5

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/gamebooster/customview/VoiceModeView;->d:Lcom/miui/gamebooster/customview/h;

    invoke-virtual {p1, v0}, Lcom/miui/gamebooster/customview/h;->i(I)V

    invoke-direct {p0}, Lcom/miui/gamebooster/customview/VoiceModeView;->g()V

    iget-object p1, p0, Lcom/miui/gamebooster/customview/VoiceModeView;->b:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/gamebooster/customview/VoiceModeView;->d:Lcom/miui/gamebooster/customview/h;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/miui/gamebooster/customview/VoiceModeView;->d:Lcom/miui/gamebooster/customview/h;

    invoke-virtual {p1}, Lcom/miui/gamebooster/customview/h;->d()I

    move-result p1

    if-ne p1, v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/miui/gamebooster/customview/VoiceModeView;->b()V

    iget-object p1, p0, Lcom/miui/gamebooster/customview/VoiceModeView;->d:Lcom/miui/gamebooster/customview/h;

    invoke-virtual {p1, v1}, Lcom/miui/gamebooster/customview/h;->i(I)V

    iget-object p1, p0, Lcom/miui/gamebooster/customview/VoiceModeView;->b:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/gamebooster/customview/VoiceModeView;->d:Lcom/miui/gamebooster/customview/h;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/miui/gamebooster/customview/VoiceModeView;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-nez p1, :cond_4

    new-instance p1, Landroid/view/animation/AlphaAnimation;

    const/4 v0, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p1, v0, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0x12c

    invoke-virtual {p1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/VoiceModeView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/VoiceModeView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_4
    iget-object p1, p0, Lcom/miui/gamebooster/customview/VoiceModeView;->c:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/miui/gamebooster/customview/VoiceModeView;->b()V

    iget-object p1, p0, Lcom/miui/gamebooster/customview/VoiceModeView;->d:Lcom/miui/gamebooster/customview/h;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/gamebooster/customview/h;->i(I)V

    iget-object p1, p0, Lcom/miui/gamebooster/customview/VoiceModeView;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/gamebooster/customview/VoiceModeView;->d:Lcom/miui/gamebooster/customview/h;

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/miui/gamebooster/customview/VoiceModeView;->c:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    :goto_0
    return-void
.end method

.method public setModeTitle(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/miui/gamebooster/customview/VoiceModeView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setModeTitle(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/customview/VoiceModeView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setNormalIconBitmap(Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/customview/VoiceModeView;->d:Lcom/miui/gamebooster/customview/h;

    iget v1, p0, Lcom/miui/gamebooster/customview/VoiceModeView;->g:I

    invoke-static {p1, v1, v1}, La8/l;->a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/gamebooster/customview/h;->e(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setNormalIconRes(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/StateListDrawable;

    iput-object p1, p0, Lcom/miui/gamebooster/customview/VoiceModeView;->f:Landroid/graphics/drawable/StateListDrawable;

    iget-object v0, p0, Lcom/miui/gamebooster/customview/VoiceModeView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/miui/gamebooster/customview/VoiceModeView;->b:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setProgress(F)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/customview/VoiceModeView;->d:Lcom/miui/gamebooster/customview/h;

    invoke-virtual {v0, p1}, Lcom/miui/gamebooster/customview/h;->f(F)V

    return-void
.end method

.method public setSelectedIconBitmap(Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/customview/VoiceModeView;->d:Lcom/miui/gamebooster/customview/h;

    iget v1, p0, Lcom/miui/gamebooster/customview/VoiceModeView;->g:I

    invoke-static {p1, v1, v1}, La8/l;->a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/gamebooster/customview/h;->h(Landroid/graphics/Bitmap;)V

    return-void
.end method

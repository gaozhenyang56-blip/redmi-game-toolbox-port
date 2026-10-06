.class public Lcom/miui/antivirus/ui/MainContentFrame;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/antivirus/ui/MainContentFrame$b;,
        Lcom/miui/antivirus/ui/MainContentFrame$c;
    }
.end annotation


# instance fields
.field private a:Lw4/e;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/ImageView;

.field private d:Lcom/miui/common/customview/ScoreTextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/TextView;

.field private j:Lcom/miui/antivirus/ui/d;

.field private k:Z

.field private l:Lw2/r;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/antivirus/ui/MainContentFrame;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/antivirus/ui/MainContentFrame;->k:Z

    sget-object p1, Lw2/r;->b:Lw2/r;

    iput-object p1, p0, Lcom/miui/antivirus/ui/MainContentFrame;->l:Lw2/r;

    return-void
.end method

.method static synthetic f(Lcom/miui/antivirus/ui/MainContentFrame;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/miui/antivirus/ui/MainContentFrame;->b:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic g(Lcom/miui/antivirus/ui/MainContentFrame;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/antivirus/ui/MainContentFrame;->i:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic h(Lcom/miui/antivirus/ui/MainContentFrame;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/miui/antivirus/ui/MainContentFrame;->c:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic i(Lcom/miui/antivirus/ui/MainContentFrame;)Lcom/miui/common/customview/ScoreTextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/antivirus/ui/MainContentFrame;->d:Lcom/miui/common/customview/ScoreTextView;

    return-object p0
.end method

.method static synthetic j(Lcom/miui/antivirus/ui/MainContentFrame;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/antivirus/ui/MainContentFrame;->e:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic k(Lcom/miui/antivirus/ui/MainContentFrame;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/antivirus/ui/MainContentFrame;->g:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic l(Lcom/miui/antivirus/ui/MainContentFrame;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/antivirus/ui/MainContentFrame;->f:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic m(Lcom/miui/antivirus/ui/MainContentFrame;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/miui/antivirus/ui/MainContentFrame;->h:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic n(Lcom/miui/antivirus/ui/MainContentFrame;)Lcom/miui/antivirus/ui/d;
    .locals 0

    iget-object p0, p0, Lcom/miui/antivirus/ui/MainContentFrame;->j:Lcom/miui/antivirus/ui/d;

    return-object p0
.end method

.method static synthetic o(Lcom/miui/antivirus/ui/MainContentFrame;ZIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/antivirus/ui/MainContentFrame;->v(ZIZ)V

    return-void
.end method

.method private v(ZIZ)V
    .locals 16

    move-object/from16 v8, p0

    iget-object v0, v8, Lcom/miui/antivirus/ui/MainContentFrame;->j:Lcom/miui/antivirus/ui/d;

    const/4 v9, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0, v9}, Lcom/miui/antivirus/ui/d;->setLoopingStop(Z)V

    :cond_0
    const/4 v10, 0x0

    const v0, 0x7f120c24

    iget-object v1, v8, Lcom/miui/antivirus/ui/MainContentFrame;->f:Landroid/widget/TextView;

    if-eqz p3, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f120c25

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10005d

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v10

    move/from16 v5, p2

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :goto_1
    iget-object v1, v8, Lcom/miui/antivirus/ui/MainContentFrame;->f:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    if-eqz p3, :cond_4

    iget-object v1, v8, Lcom/miui/antivirus/ui/MainContentFrame;->h:Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    const v2, 0x7f08104c

    goto :goto_2

    :cond_3
    const v2, 0x7f08104b

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, v8, Lcom/miui/antivirus/ui/MainContentFrame;->h:Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_4
    if-eqz p1, :cond_6

    iget-object v0, v8, Lcom/miui/antivirus/ui/MainContentFrame;->b:Landroid/widget/ImageView;

    if-eqz p3, :cond_5

    const v1, 0x7f080f0d

    goto :goto_3

    :cond_5
    const v1, 0x7f080f0f

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, v8, Lcom/miui/antivirus/ui/MainContentFrame;->f:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060e14

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4

    :cond_6
    iget-object v0, v8, Lcom/miui/antivirus/ui/MainContentFrame;->f:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060e13

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, v8, Lcom/miui/antivirus/ui/MainContentFrame;->b:Landroid/widget/ImageView;

    const v1, 0x7f080f0e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_4
    iget-object v1, v8, Lcom/miui/antivirus/ui/MainContentFrame;->b:Landroid/widget/ImageView;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x2

    const/4 v5, 0x0

    const-wide/16 v6, 0x3e8

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/miui/antivirus/ui/MainContentFrame;->p(Landroid/view/View;FFIIJ)Landroid/animation/ObjectAnimator;

    move-result-object v11

    iget-object v1, v8, Lcom/miui/antivirus/ui/MainContentFrame;->f:Landroid/widget/TextView;

    const/16 v12, 0x1f4

    int-to-long v13, v12

    move-wide v6, v13

    invoke-virtual/range {v0 .. v7}, Lcom/miui/antivirus/ui/MainContentFrame;->p(Landroid/view/View;FFIIJ)Landroid/animation/ObjectAnimator;

    move-result-object v15

    int-to-long v6, v12

    invoke-virtual {v15, v6, v7}, Landroid/animation/Animator;->setStartDelay(J)V

    iget-object v1, v8, Lcom/miui/antivirus/ui/MainContentFrame;->h:Landroid/widget/ImageView;

    move-wide v9, v6

    move-wide v6, v13

    invoke-virtual/range {v0 .. v7}, Lcom/miui/antivirus/ui/MainContentFrame;->p(Landroid/view/View;FFIIJ)Landroid/animation/ObjectAnimator;

    move-result-object v13

    invoke-virtual {v13, v9, v10}, Landroid/animation/Animator;->setStartDelay(J)V

    iget-object v1, v8, Lcom/miui/antivirus/ui/MainContentFrame;->c:Landroid/widget/ImageView;

    const-wide/16 v6, 0x3e8

    invoke-virtual/range {v0 .. v7}, Lcom/miui/antivirus/ui/MainContentFrame;->p(Landroid/view/View;FFIIJ)Landroid/animation/ObjectAnimator;

    move-result-object v9

    iget-object v1, v8, Lcom/miui/antivirus/ui/MainContentFrame;->i:Landroid/widget/TextView;

    invoke-virtual/range {v0 .. v7}, Lcom/miui/antivirus/ui/MainContentFrame;->p(Landroid/view/View;FFIIJ)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v2, 0x5

    new-array v2, v2, [Landroid/animation/Animator;

    const/4 v3, 0x0

    aput-object v11, v2, v3

    const/4 v3, 0x1

    aput-object v15, v2, v3

    const/4 v3, 0x2

    aput-object v13, v2, v3

    const/4 v3, 0x3

    aput-object v9, v2, v3

    const/4 v3, 0x4

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method


# virtual methods
.method public getVideoScale()F
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainContentFrame;->j:Lcom/miui/antivirus/ui/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/miui/antivirus/ui/d;->getScale()F

    move-result v0

    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b098b

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0b0118

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/miui/antivirus/ui/MainContentFrame;->a:Lw4/e;

    const/16 v0, 0x40d

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/miui/antivirus/ui/MainContentFrame;->release()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 6

    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    const v0, 0x7f0b0d52

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    const v1, 0x7f0b0d53

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    invoke-static {}, Lx4/a0;->D()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f0e050c

    invoke-virtual {v0, v2}, Landroid/view/ViewStub;->setLayoutResource(I)V

    const v2, 0x7f0e050a

    goto :goto_0

    :cond_0
    const v2, 0x7f0e0501

    invoke-virtual {v0, v2}, Landroid/view/ViewStub;->setLayoutResource(I)V

    const v2, 0x7f0e0509

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/ViewStub;->setLayoutResource(I)V

    const v2, 0x7f0b0825

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/miui/common/customview/ScoreTextView;

    iput-object v3, p0, Lcom/miui/antivirus/ui/MainContentFrame;->d:Lcom/miui/common/customview/ScoreTextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "fonts/Mitype-DemiBold.otf"

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v3, p0, Lcom/miui/antivirus/ui/MainContentFrame;->d:Lcom/miui/common/customview/ScoreTextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/miui/common/customview/ScoreTextView;->setNumber(I)V

    const v3, 0x7f0b09ee

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/miui/antivirus/ui/MainContentFrame;->e:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "tr"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/miui/antivirus/ui/MainContentFrame;->e:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    iput v2, v3, Landroidx/constraintlayout/widget/ConstraintLayout$b;->u:I

    const/4 v2, -0x1

    iput v2, v3, Landroidx/constraintlayout/widget/ConstraintLayout$b;->s:I

    invoke-virtual {v3}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object v2, p0, Lcom/miui/antivirus/ui/MainContentFrame;->e:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    const v2, 0x7f0b098a

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/miui/antivirus/ui/MainContentFrame;->g:Landroid/widget/TextView;

    iget-boolean v2, p0, Lcom/miui/antivirus/ui/MainContentFrame;->k:Z

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/ui/d;

    iput-object v0, p0, Lcom/miui/antivirus/ui/MainContentFrame;->j:Lcom/miui/antivirus/ui/d;

    invoke-interface {v0}, Lcom/miui/antivirus/ui/d;->init()V

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainContentFrame;->j:Lcom/miui/antivirus/ui/d;

    invoke-interface {v0}, Lcom/miui/antivirus/ui/d;->startAnim()V

    :cond_2
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v0, 0x7f0b0982

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/antivirus/ui/MainContentFrame;->b:Landroid/widget/ImageView;

    const v0, 0x7f0b0983

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/antivirus/ui/MainContentFrame;->c:Landroid/widget/ImageView;

    const v0, 0x7f0b098b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/antivirus/ui/MainContentFrame;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lpg/i;->k()I

    move-result v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_3

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainContentFrame;->f:Landroid/widget/TextView;

    const/4 v1, 0x1

    const-string v2, "mipro"

    invoke-static {v2, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_3
    const v0, 0x7f0b0118

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/antivirus/ui/MainContentFrame;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0b2c

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/antivirus/ui/MainContentFrame;->i:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/antivirus/ui/MainContentFrame;->r()V

    return-void
.end method

.method public p(Landroid/view/View;FFIIJ)Landroid/animation/ObjectAnimator;
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

.method public q(ILjava/lang/Boolean;Z)V
    .locals 15

    move-object v8, p0

    move/from16 v9, p1

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-nez v9, :cond_0

    move v12, v10

    goto :goto_0

    :cond_0
    move v12, v11

    :goto_0
    if-eqz p3, :cond_1

    iget-object v1, v8, Lcom/miui/antivirus/ui/MainContentFrame;->d:Lcom/miui/common/customview/ScoreTextView;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    const-wide/16 v6, 0x1f4

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/miui/antivirus/ui/MainContentFrame;->p(Landroid/view/View;FFIIJ)Landroid/animation/ObjectAnimator;

    move-result-object v13

    iget-object v1, v8, Lcom/miui/antivirus/ui/MainContentFrame;->e:Landroid/widget/TextView;

    invoke-virtual/range {v0 .. v7}, Lcom/miui/antivirus/ui/MainContentFrame;->p(Landroid/view/View;FFIIJ)Landroid/animation/ObjectAnimator;

    move-result-object v14

    iget-object v1, v8, Lcom/miui/antivirus/ui/MainContentFrame;->g:Landroid/widget/TextView;

    invoke-virtual/range {v0 .. v7}, Lcom/miui/antivirus/ui/MainContentFrame;->p(Landroid/view/View;FFIIJ)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object v13, v1, v11

    aput-object v14, v1, v10

    const/4 v2, 0x2

    aput-object v0, v1, v2

    invoke-virtual {v6, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v7, Lcom/miui/antivirus/ui/MainContentFrame$c;

    const/4 v5, 0x0

    move-object v0, v7

    move-object v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move v4, v12

    invoke-direct/range {v0 .. v5}, Lcom/miui/antivirus/ui/MainContentFrame$c;-><init>(Lcom/miui/antivirus/ui/MainContentFrame;ILjava/lang/Boolean;ZLcom/miui/antivirus/ui/MainContentFrame$a;)V

    invoke-virtual {v6, v7}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_1

    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v12, v9, v0}, Lcom/miui/antivirus/ui/MainContentFrame;->v(ZIZ)V

    :goto_1
    return-void
.end method

.method public r()V
    .locals 2

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainContentFrame;->b:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainContentFrame;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/miui/antivirus/ui/MainContentFrame;->d:Lcom/miui/common/customview/ScoreTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainContentFrame;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainContentFrame;->j:Lcom/miui/antivirus/ui/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/miui/antivirus/ui/d;->stopAnimAndRelease()V

    :cond_0
    return-void
.end method

.method public s(F)V
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainContentFrame;->j:Lcom/miui/antivirus/ui/d;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/miui/antivirus/ui/d;->scale(F)V

    :cond_0
    return-void
.end method

.method public setEventHandler(Lw4/e;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/ui/MainContentFrame;->a:Lw4/e;

    return-void
.end method

.method public setHeaderLayoutAlpha(F)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public setInflateVideoAnim(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/miui/antivirus/ui/MainContentFrame;->k:Z

    if-eqz p1, :cond_1

    const p1, 0x7f0b0d52

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    invoke-static {}, Lx4/a0;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0e050c

    goto :goto_0

    :cond_0
    const v0, 0x7f0e0501

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/ViewStub;->setLayoutResource(I)V

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/antivirus/ui/d;

    iput-object p1, p0, Lcom/miui/antivirus/ui/MainContentFrame;->j:Lcom/miui/antivirus/ui/d;

    invoke-interface {p1}, Lcom/miui/antivirus/ui/d;->init()V

    iget-object p1, p0, Lcom/miui/antivirus/ui/MainContentFrame;->j:Lcom/miui/antivirus/ui/d;

    invoke-interface {p1}, Lcom/miui/antivirus/ui/d;->startAnim()V

    :cond_1
    return-void
.end method

.method public setProgressText(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainContentFrame;->d:Lcom/miui/common/customview/ScoreTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setScanResult(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public setSummaryText(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainContentFrame;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public t()V
    .locals 0

    return-void
.end method

.method public u(Lw2/r;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainContentFrame;->l:Lw2/r;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainContentFrame;->j:Lcom/miui/antivirus/ui/d;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/miui/antivirus/ui/d;->updateSecurityStatus(Lw2/r;)V

    :cond_0
    iput-object p1, p0, Lcom/miui/antivirus/ui/MainContentFrame;->l:Lw2/r;

    :cond_1
    return-void
.end method

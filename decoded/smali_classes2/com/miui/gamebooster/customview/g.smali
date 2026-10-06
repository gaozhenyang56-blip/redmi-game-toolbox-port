.class public final Lcom/miui/gamebooster/customview/g;
.super Lcom/miui/gamebooster/customview/c;
.source "SourceFile"


# instance fields
.field private A:Landroid/widget/FrameLayout;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final B:F

.field private final C:F

.field private final D:J

.field private final E:J

.field private final F:J

.field private final G:I

.field private u:Lcom/miui/gamebooster/customview/BarragePreTextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private v:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private w:Lcom/miui/gamebooster/customview/c$e;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private x:Lcom/miui/gamebooster/customview/b;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private y:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private z:Landroid/widget/ImageView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/miui/gamebooster/customview/g;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILbk/g;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string p2, "context"

    invoke-static {p1, p2}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/customview/c;-><init>(Landroid/content/Context;)V

    const p1, 0x3f99999a    # 1.2f

    iput p1, p0, Lcom/miui/gamebooster/customview/g;->B:F

    const p1, 0x3ecccccd    # 0.4f

    iput p1, p0, Lcom/miui/gamebooster/customview/g;->C:F

    const-wide/16 p1, 0xed8

    iput-wide p1, p0, Lcom/miui/gamebooster/customview/g;->D:J

    const-wide/16 p1, 0xfa0

    iput-wide p1, p0, Lcom/miui/gamebooster/customview/g;->E:J

    const-wide/16 p1, 0x2328

    iput-wide p1, p0, Lcom/miui/gamebooster/customview/g;->F:J

    const/16 p1, 0x2aa

    iput p1, p0, Lcom/miui/gamebooster/customview/g;->G:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILbk/g;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gamebooster/customview/g;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic m(Lcom/miui/gamebooster/customview/g;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/gamebooster/customview/g;->p(Lcom/miui/gamebooster/customview/g;Landroid/view/View;)V

    return-void
.end method

.method private final n(I)F
    .locals 6

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/customview/g;->o(I)F

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, La8/k2;->d(Landroid/content/Context;)F

    move-result v0

    const v1, 0x3f19999a    # 0.6f

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, La8/k2;->s(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x0

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_0
    const/4 v2, 0x1

    int-to-float v2, v2

    div-float/2addr v2, v0

    iget-wide v3, p0, Lcom/miui/gamebooster/customview/g;->D:J

    long-to-float v0, v3

    int-to-float v1, v1

    mul-float/2addr v2, v1

    iget v3, p0, Lcom/miui/gamebooster/customview/g;->G:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float/2addr v0, v2

    float-to-long v2, v0

    iget-wide v4, p0, Lcom/miui/gamebooster/customview/g;->F:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/miui/gamebooster/customview/g;->E:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    long-to-float v0, v2

    mul-float/2addr v0, p1

    float-to-long v2, v0

    long-to-float p1, v2

    div-float/2addr v1, p1

    return v1
.end method

.method private final o(I)F
    .locals 2

    iget v0, p0, Lcom/miui/gamebooster/customview/g;->B:F

    iget v1, p0, Lcom/miui/gamebooster/customview/g;->C:F

    sub-float v1, v0, v1

    int-to-float p1, p1

    mul-float/2addr v1, p1

    const p1, 0x3c23d70a    # 0.01f

    mul-float/2addr v1, p1

    sub-float/2addr v0, v1

    return v0
.end method

.method private static final p(Lcom/miui/gamebooster/customview/g;Landroid/view/View;)V
    .locals 8

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/gamebooster/customview/g;->w:Lcom/miui/gamebooster/customview/c$e;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/miui/gamebooster/customview/g;->u:Lcom/miui/gamebooster/customview/BarragePreTextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/gamebooster/customview/BarragePreTextView;->f()V

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/customview/g;->x:Lcom/miui/gamebooster/customview/b;

    if-nez v0, :cond_1

    new-instance v0, Lcom/miui/gamebooster/customview/b;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v1, "context"

    invoke-static {v2, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/miui/gamebooster/customview/g;->w:Lcom/miui/gamebooster/customview/c$e;

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/miui/gamebooster/customview/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/miui/gamebooster/customview/c$e;ILbk/g;)V

    iput-object v0, p0, Lcom/miui/gamebooster/customview/g;->x:Lcom/miui/gamebooster/customview/b;

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/customview/g;->x:Lcom/miui/gamebooster/customview/b;

    invoke-interface {p1, p0, v0}, Lcom/miui/gamebooster/customview/c$e;->b(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    :cond_2
    return-void
.end method

.method private final setPreViewTestSize(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/customview/g;->u:Lcom/miui/gamebooster/customview/BarragePreTextView;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/customview/c;->d(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/miui/gamebooster/customview/BarragePreTextView;->setTextSize(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected g()V
    .locals 3

    iget-object v0, p0, Lcom/miui/gamebooster/customview/c;->d:Landroid/view/View;

    const v1, 0x7f0b0142

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/customview/BarragePreTextView;

    iput-object v0, p0, Lcom/miui/gamebooster/customview/g;->u:Lcom/miui/gamebooster/customview/BarragePreTextView;

    iget-object v0, p0, Lcom/miui/gamebooster/customview/c;->d:Landroid/view/View;

    const v1, 0x7f0b0141

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/miui/gamebooster/customview/g;->v:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v0, p0, Lcom/miui/gamebooster/customview/c;->d:Landroid/view/View;

    const v1, 0x7f0b0c2a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gamebooster/customview/g;->y:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/gamebooster/customview/c;->d:Landroid/view/View;

    const v1, 0x7f0b05dc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gamebooster/customview/g;->z:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/gamebooster/customview/c;->d:Landroid/view/View;

    const v1, 0x7f0b0425

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/miui/gamebooster/customview/g;->A:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/miui/gamebooster/customview/g;->v:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/miui/gamebooster/customview/f;

    invoke-direct {v1, p0}, Lcom/miui/gamebooster/customview/f;-><init>(Lcom/miui/gamebooster/customview/g;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-boolean v0, p0, Lcom/miui/gamebooster/customview/c;->t:Z

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/customview/g;->i(Z)V

    iget v0, p0, Lcom/miui/gamebooster/customview/c;->q:I

    invoke-direct {p0, v0}, Lcom/miui/gamebooster/customview/g;->setPreViewTestSize(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/g;->u:Lcom/miui/gamebooster/customview/BarragePreTextView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/miui/gamebooster/customview/c;->k:Lcom/miui/gamebooster/customview/BarrageColorPickView;

    iget v2, p0, Lcom/miui/gamebooster/customview/c;->r:I

    invoke-virtual {v1, v2}, Lcom/miui/gamebooster/customview/BarrageColorPickView;->b(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/customview/BarragePreTextView;->setTextColor(I)V

    :cond_1
    return-void
.end method

.method public final getBILI_PLAYER_WIDTH()I
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/customview/g;->G:I

    return v0
.end method

.method public final getBarragePreView()Lcom/miui/gamebooster/customview/BarragePreTextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/gamebooster/customview/g;->u:Lcom/miui/gamebooster/customview/BarragePreTextView;

    return-object v0
.end method

.method public final getCOMMON_DANMAKU_DURATION()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/gamebooster/customview/g;->D:J

    return-wide v0
.end method

.method public final getFASTEST()F
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/customview/g;->C:F

    return v0
.end method

.method protected getLayoutResource()I
    .locals 1

    const v0, 0x7f0e01c1

    return v0
.end method

.method public final getMAX_DANMAKU_DURATION_HIGH_DENSITY()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/gamebooster/customview/g;->F:J

    return-wide v0
.end method

.method public final getMIN_DANMAKU_DURATION()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/gamebooster/customview/g;->E:J

    return-wide v0
.end method

.method public final getPageChangeListener()Lcom/miui/gamebooster/customview/c$e;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/gamebooster/customview/g;->w:Lcom/miui/gamebooster/customview/c$e;

    return-object v0
.end method

.method public final getSLOWEST()F
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/customview/g;->B:F

    return v0
.end method

.method protected h(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1    # Landroid/widget/SeekBar;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    iget-object v0, p0, Lcom/miui/gamebooster/customview/g;->u:Lcom/miui/gamebooster/customview/BarragePreTextView;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/customview/g;->n(I)F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/miui/gamebooster/customview/BarragePreTextView;->g(F)V

    :cond_0
    return-void
.end method

.method protected i(Z)V
    .locals 4

    iget-object v0, p0, Lcom/miui/gamebooster/customview/g;->v:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :goto_0
    iget-object v0, p0, Lcom/miui/gamebooster/customview/g;->y:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz p1, :cond_1

    const v2, 0x7f060e74

    goto :goto_1

    :cond_1
    const v2, 0x7f060e6e

    :goto_1
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    iget-object v0, p0, Lcom/miui/gamebooster/customview/g;->A:Landroid/widget/FrameLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3e99999a    # 0.3f

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    if-eqz p1, :cond_4

    move v3, v1

    goto :goto_2

    :cond_4
    move v3, v2

    :goto_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    :goto_3
    iget-object v0, p0, Lcom/miui/gamebooster/customview/g;->z:Landroid/widget/ImageView;

    if-nez v0, :cond_5

    goto :goto_5

    :cond_5
    if-eqz p1, :cond_6

    goto :goto_4

    :cond_6
    move v1, v2

    :goto_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :goto_5
    iget-object p1, p0, Lcom/miui/gamebooster/customview/g;->u:Lcom/miui/gamebooster/customview/BarragePreTextView;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/miui/gamebooster/customview/BarragePreTextView;->f()V

    :cond_7
    return-void
.end method

.method protected j(II)V
    .locals 0

    iget-object p1, p0, Lcom/miui/gamebooster/customview/g;->u:Lcom/miui/gamebooster/customview/BarragePreTextView;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/miui/gamebooster/customview/BarragePreTextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method protected k(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/customview/g;->setPreViewTestSize(I)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/g;->u:Lcom/miui/gamebooster/customview/BarragePreTextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/gamebooster/customview/BarragePreTextView;->f()V

    :cond_0
    return-void
.end method

.method public final setBarragePreView(Lcom/miui/gamebooster/customview/BarragePreTextView;)V
    .locals 0
    .param p1    # Lcom/miui/gamebooster/customview/BarragePreTextView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/gamebooster/customview/g;->u:Lcom/miui/gamebooster/customview/BarragePreTextView;

    return-void
.end method

.method public final setPageChangeListener(Lcom/miui/gamebooster/customview/c$e;)V
    .locals 0
    .param p1    # Lcom/miui/gamebooster/customview/c$e;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/gamebooster/customview/g;->w:Lcom/miui/gamebooster/customview/c$e;

    return-void
.end method

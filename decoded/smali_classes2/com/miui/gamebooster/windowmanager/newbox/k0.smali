.class public Lcom/miui/gamebooster/windowmanager/newbox/k0;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"

# interfaces
.implements Lq6/h$a;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lcom/miui/gamebooster/windowmanager/newbox/d0;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/TextView;

.field private e:Lcom/miui/gamebooster/LevelSeekBarViewV2;

.field private f:Landroidx/recyclerview/widget/RecyclerView;

.field private g:Lq6/h;

.field private h:Landroid/view/View;

.field private i:Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView$h;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/gamebooster/windowmanager/newbox/k0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

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

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/gamebooster/windowmanager/newbox/k0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/k0;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/miui/gamebooster/windowmanager/newbox/k0;->k()V

    return-void
.end method

.method public static synthetic f(Lcom/miui/gamebooster/windowmanager/newbox/k0;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/windowmanager/newbox/k0;->l(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g(Lcom/miui/gamebooster/windowmanager/newbox/k0;Lcom/miui/gamebooster/windowmanager/newbox/o;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/gamebooster/windowmanager/newbox/k0;->n(Lcom/miui/gamebooster/windowmanager/newbox/o;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic h(Lcom/miui/gamebooster/windowmanager/newbox/k0;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/windowmanager/newbox/k0;->m(I)V

    return-void
.end method

.method private i()V
    .locals 3

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/k0;->f:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07066c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/k0;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private j()V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/k0;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isForceDarkAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/k0;->f:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setForceDarkAllowed(Z)V

    :cond_0
    invoke-static {}, La8/u0;->f()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/miui/gamebooster/customview/recyclerview/UnscrollableGridLayoutManager;

    iget-object v2, p0, Lcom/miui/gamebooster/windowmanager/newbox/k0;->a:Landroid/content/Context;

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/miui/gamebooster/customview/recyclerview/UnscrollableGridLayoutManager;-><init>(Landroid/content/Context;I)V

    iget-object v2, p0, Lcom/miui/gamebooster/windowmanager/newbox/k0;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$n;)V

    new-instance v1, Lq6/h;

    iget-object v2, p0, Lcom/miui/gamebooster/windowmanager/newbox/k0;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lq6/h;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/k0;->g:Lq6/h;

    invoke-virtual {v1, p0}, Lq6/h;->p(Lq6/h$a;)V

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/k0;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/k0;->g:Lq6/h;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/k0;->f:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/miui/gamebooster/windowmanager/newbox/p;

    iget-object v2, p0, Lcom/miui/gamebooster/windowmanager/newbox/k0;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/miui/gamebooster/windowmanager/newbox/p;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$m;)V

    return-void
.end method

.method private k()V
    .locals 3

    const-string v0, "PerformanceConfigView"

    const-string v1, "init PerformanceConfigView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/k0;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e01aa

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f0b0469

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0}, La8/d2;->a(Landroid/widget/TextView;)V

    const v0, 0x7f0b0896

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0}, La8/d2;->a(Landroid/widget/TextView;)V

    const v0, 0x7f0b0cb6

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0}, La8/d2;->a(Landroid/widget/TextView;)V

    const v0, 0x7f0b0c60

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0}, La8/d2;->a(Landroid/widget/TextView;)V

    const v0, 0x7f0b0c75

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0}, La8/d2;->a(Landroid/widget/TextView;)V

    const v0, 0x7f0b0523

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/k0;->c:Landroid/widget/ImageView;

    new-instance v1, Lcom/miui/gamebooster/windowmanager/newbox/h0;

    invoke-direct {v1, p0}, Lcom/miui/gamebooster/windowmanager/newbox/h0;-><init>(Lcom/miui/gamebooster/windowmanager/newbox/k0;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0819

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/k0;->d:Landroid/widget/TextView;

    const v0, 0x7f0b0892

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/k0;->f:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f0b0695

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/k0;->h:Landroid/view/View;

    invoke-static {}, La8/u0;->j()Z

    move-result v0

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/k0;->h:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, La8/u0;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, La8/u0;->e(Ljava/lang/String;)I

    move-result v1

    if-eqz v0, :cond_1

    const v0, 0x7f0b0893

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/LevelSeekBarViewV2;

    iput-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/k0;->e:Lcom/miui/gamebooster/LevelSeekBarViewV2;

    new-instance v2, Lcom/miui/gamebooster/windowmanager/newbox/i0;

    invoke-direct {v2, p0}, Lcom/miui/gamebooster/windowmanager/newbox/i0;-><init>(Lcom/miui/gamebooster/windowmanager/newbox/k0;)V

    invoke-virtual {v0, v2}, Lcom/miui/gamebooster/LevelSeekBarViewV2;->setOnLevelChangeListener(Lcom/miui/gamebooster/LevelSeekBarViewV2$a;)V

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/k0;->e:Lcom/miui/gamebooster/LevelSeekBarViewV2;

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/LevelSeekBarViewV2;->setCurrentLevel(I)V

    invoke-direct {p0, v1}, Lcom/miui/gamebooster/windowmanager/newbox/k0;->o(I)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    if-eq v1, v0, :cond_2

    invoke-static {}, La8/u0;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, La8/u0;->p(Ljava/lang/String;I)V

    :cond_2
    invoke-direct {p0}, Lcom/miui/gamebooster/windowmanager/newbox/k0;->i()V

    :goto_1
    invoke-direct {p0}, Lcom/miui/gamebooster/windowmanager/newbox/k0;->j()V

    return-void
.end method

.method private synthetic l(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/k0;->i:Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView$h;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView$h;->a(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private synthetic m(I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "level changed to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PerformanceConfigView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->w()Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;

    move-result-object v0

    invoke-static {}, La8/u0;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, La8/u0;->k(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->d0(Ljava/lang/String;I)V

    invoke-static {}, La8/u0;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, La8/u0;->p(Ljava/lang/String;I)V

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/windowmanager/newbox/k0;->o(I)V

    iget-object p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/k0;->g:Lq6/h;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemChanged(I)V

    return-void
.end method

.method private synthetic n(Lcom/miui/gamebooster/windowmanager/newbox/o;Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lcom/miui/gamebooster/windowmanager/newbox/e0;->d()Lcom/miui/gamebooster/windowmanager/newbox/e0;

    move-result-object p2

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/k0;->b:Lcom/miui/gamebooster/windowmanager/newbox/d0;

    invoke-virtual {v0}, Lcom/miui/gamebooster/windowmanager/newbox/d0;->getThirdContainer()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/k0;->b:Lcom/miui/gamebooster/windowmanager/newbox/d0;

    invoke-virtual {v1}, Lcom/miui/gamebooster/windowmanager/newbox/d0;->getSecondContainer()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {p2, p1, v0, v1}, Lcom/miui/gamebooster/windowmanager/newbox/e0;->e(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method private o(I)V
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f12096b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v3, :cond_1

    const/4 v4, 0x2

    if-eq p1, v4, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/k0;->d:Landroid/widget/TextView;

    const v4, 0x7f12096a

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v2

    invoke-virtual {v0, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/k0;->d:Landroid/widget/TextView;

    const v4, 0x7f120968

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v2

    invoke-virtual {v0, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/k0;->d:Landroid/widget/TextView;

    const v4, 0x7f12096d

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v2

    invoke-virtual {v0, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public c(Landroid/view/View;ILcom/miui/gamebooster/model/o;)V
    .locals 2

    invoke-virtual {p3}, Lcom/miui/gamebooster/model/o;->c()I

    move-result p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onFunctionClick: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " functionId = "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "PerformanceConfigView"

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, La8/u0;->b()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, La8/u0;->c()I

    move-result p3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/miui/gamebooster/windowmanager/newbox/o;

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/k0;->a:Landroid/content/Context;

    sget-object v1, Ln6/c;->P:Ln6/c;

    invoke-direct {p1, v0, p2, p3, v1}, Lcom/miui/gamebooster/windowmanager/newbox/o;-><init>(Landroid/content/Context;Ljava/lang/String;ILn6/c;)V

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/miui/gamebooster/windowmanager/newbox/o;

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/k0;->a:Landroid/content/Context;

    sget-object v1, Ln6/c;->L:Ln6/c;

    invoke-direct {p1, v0, p2, p3, v1}, Lcom/miui/gamebooster/windowmanager/newbox/o;-><init>(Landroid/content/Context;Ljava/lang/String;ILn6/c;)V

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/miui/gamebooster/windowmanager/newbox/o;

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/k0;->a:Landroid/content/Context;

    sget-object v1, Ln6/c;->I:Ln6/c;

    invoke-direct {p1, v0, p2, p3, v1}, Lcom/miui/gamebooster/windowmanager/newbox/o;-><init>(Landroid/content/Context;Ljava/lang/String;ILn6/c;)V

    goto :goto_0

    :cond_3
    new-instance p1, Lcom/miui/gamebooster/windowmanager/newbox/o;

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/k0;->a:Landroid/content/Context;

    sget-object v1, Ln6/c;->O:Ln6/c;

    invoke-direct {p1, v0, p2, p3, v1}, Lcom/miui/gamebooster/windowmanager/newbox/o;-><init>(Landroid/content/Context;Ljava/lang/String;ILn6/c;)V

    :goto_0
    if-eqz p1, :cond_4

    new-instance p2, Lcom/miui/gamebooster/windowmanager/newbox/j0;

    invoke-direct {p2, p0, p1}, Lcom/miui/gamebooster/windowmanager/newbox/j0;-><init>(Lcom/miui/gamebooster/windowmanager/newbox/k0;Lcom/miui/gamebooster/windowmanager/newbox/o;)V

    invoke-virtual {p1, p2}, Lcom/miui/gamebooster/windowmanager/newbox/o;->setBackClick(Lcom/miui/gamebooster/windowmanager/GBTopbarLayout$a;)V

    invoke-static {}, Lcom/miui/gamebooster/windowmanager/newbox/e0;->d()Lcom/miui/gamebooster/windowmanager/newbox/e0;

    move-result-object p2

    iget-object p3, p0, Lcom/miui/gamebooster/windowmanager/newbox/k0;->b:Lcom/miui/gamebooster/windowmanager/newbox/d0;

    invoke-virtual {p3}, Lcom/miui/gamebooster/windowmanager/newbox/d0;->getThirdContainer()Landroid/view/ViewGroup;

    move-result-object p3

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/k0;->b:Lcom/miui/gamebooster/windowmanager/newbox/d0;

    invoke-virtual {v0}, Lcom/miui/gamebooster/windowmanager/newbox/d0;->getSecondContainer()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p2, p1, p3, v0}, Lcom/miui/gamebooster/windowmanager/newbox/e0;->f(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)V

    :cond_4
    return-void
.end method

.method public setOnBackClickListener(Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView$h;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/k0;->i:Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView$h;

    return-void
.end method

.method public setRootView(Lcom/miui/gamebooster/windowmanager/newbox/d0;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/k0;->b:Lcom/miui/gamebooster/windowmanager/newbox/d0;

    return-void
.end method

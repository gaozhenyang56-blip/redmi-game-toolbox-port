.class public Lmiuix/springback/trigger/c;
.super Lmiuix/springback/trigger/b;
.source "SourceFile"


# static fields
.field private static n0:I


# instance fields
.field private U:Landroid/content/Context;

.field private V:Landroid/view/ViewGroup;

.field private W:Landroid/view/View;

.field private X:Landroid/view/View;

.field private Y:Landroid/widget/ProgressBar;

.field private Z:Landroid/widget/ProgressBar;

.field private a0:Landroid/widget/TextView;

.field private b0:Landroid/widget/TextView;

.field private c0:I

.field private d0:I

.field private e0:I

.field public f0:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public g0:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public h0:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private i0:Lmiuix/springback/trigger/b$j;

.field private j0:Lmiuix/springback/trigger/b$k;

.field private k0:Lmiuix/springback/trigger/a$b$b;

.field private l0:Lmiuix/springback/trigger/a$d$a;

.field private m0:Lmiuix/springback/trigger/a$c$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0, p1}, Lmiuix/springback/trigger/b;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput v0, p0, Lmiuix/springback/trigger/c;->c0:I

    iput v0, p0, Lmiuix/springback/trigger/c;->d0:I

    iput v0, p0, Lmiuix/springback/trigger/c;->e0:I

    new-instance v2, Lmiuix/springback/trigger/c$a;

    invoke-direct {v2, p0}, Lmiuix/springback/trigger/c$a;-><init>(Lmiuix/springback/trigger/c;)V

    iput-object v2, p0, Lmiuix/springback/trigger/c;->i0:Lmiuix/springback/trigger/b$j;

    new-instance v2, Lmiuix/springback/trigger/c$b;

    invoke-direct {v2, p0}, Lmiuix/springback/trigger/c$b;-><init>(Lmiuix/springback/trigger/c;)V

    iput-object v2, p0, Lmiuix/springback/trigger/c;->j0:Lmiuix/springback/trigger/b$k;

    new-instance v2, Lmiuix/springback/trigger/c$c;

    invoke-direct {v2, p0}, Lmiuix/springback/trigger/c$c;-><init>(Lmiuix/springback/trigger/c;)V

    iput-object v2, p0, Lmiuix/springback/trigger/c;->k0:Lmiuix/springback/trigger/a$b$b;

    new-instance v2, Lmiuix/springback/trigger/c$d;

    invoke-direct {v2, p0}, Lmiuix/springback/trigger/c$d;-><init>(Lmiuix/springback/trigger/c;)V

    iput-object v2, p0, Lmiuix/springback/trigger/c;->l0:Lmiuix/springback/trigger/a$d$a;

    new-instance v2, Lmiuix/springback/trigger/c$e;

    invoke-direct {v2, p0}, Lmiuix/springback/trigger/c$e;-><init>(Lmiuix/springback/trigger/c;)V

    iput-object v2, p0, Lmiuix/springback/trigger/c;->m0:Lmiuix/springback/trigger/a$c$a;

    iput-object p1, p0, Lmiuix/springback/trigger/c;->U:Landroid/content/Context;

    iget-object v2, p0, Lmiuix/springback/trigger/c;->i0:Lmiuix/springback/trigger/b$j;

    invoke-virtual {p0, v2}, Lmiuix/springback/trigger/b;->O0(Lmiuix/springback/trigger/b$j;)V

    iget-object v2, p0, Lmiuix/springback/trigger/c;->j0:Lmiuix/springback/trigger/b$k;

    invoke-virtual {p0, v2}, Lmiuix/springback/trigger/b;->S0(Lmiuix/springback/trigger/b$k;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lpm/a;->e:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sput v2, Lmiuix/springback/trigger/c;->n0:I

    invoke-static {p1}, Lbl/i;->f(Landroid/content/Context;)I

    move-result p1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-eqz p1, :cond_1

    sget p1, Lpm/a;->b:I

    goto :goto_1

    :cond_1
    sget p1, Lpm/a;->a:I

    :goto_1
    iget-object v2, p0, Lmiuix/springback/trigger/c;->U:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    new-instance v2, Landroid/util/Pair;

    add-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v2, v1, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, p0, Lmiuix/springback/trigger/c;->f0:Landroid/util/Pair;

    iget-object p1, p0, Lmiuix/springback/trigger/c;->U:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lpm/a;->d:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    new-instance v2, Landroid/util/Pair;

    add-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v2, v1, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, p0, Lmiuix/springback/trigger/c;->h0:Landroid/util/Pair;

    iget-object p1, p0, Lmiuix/springback/trigger/c;->U:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lpm/a;->c:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    new-instance v0, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lmiuix/springback/trigger/c;->g0:Landroid/util/Pair;

    return-void
.end method

.method static synthetic U0(Lmiuix/springback/trigger/c;)Landroid/widget/ProgressBar;
    .locals 0

    iget-object p0, p0, Lmiuix/springback/trigger/c;->Y:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic V0(Lmiuix/springback/trigger/c;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lmiuix/springback/trigger/c;->W:Landroid/view/View;

    return-object p0
.end method

.method static synthetic W0(Lmiuix/springback/trigger/c;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lmiuix/springback/trigger/c;->a0:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic X0(Lmiuix/springback/trigger/c;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiuix/springback/trigger/c;->h1(Landroid/view/View;)V

    return-void
.end method

.method static synthetic Y0(Lmiuix/springback/trigger/c;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lmiuix/springback/trigger/c;->b0:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic Z0(Lmiuix/springback/trigger/c;)Landroid/widget/ProgressBar;
    .locals 0

    iget-object p0, p0, Lmiuix/springback/trigger/c;->Z:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic a1(Lmiuix/springback/trigger/c;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lmiuix/springback/trigger/c;->X:Landroid/view/View;

    return-object p0
.end method

.method static synthetic b1(Lmiuix/springback/trigger/c;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiuix/springback/trigger/c;->i1(Landroid/view/View;)V

    return-void
.end method

.method static synthetic c1(Lmiuix/springback/trigger/c;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lmiuix/springback/trigger/c;->V:Landroid/view/ViewGroup;

    return-object p0
.end method

.method private d1()V
    .locals 2

    invoke-virtual {p0}, Lmiuix/springback/trigger/b;->X()Landroid/view/ViewGroup;

    move-result-object v0

    sget v1, Lpm/b;->d:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiuix/springback/trigger/c;->W:Landroid/view/View;

    invoke-virtual {p0}, Lmiuix/springback/trigger/b;->X()Landroid/view/ViewGroup;

    move-result-object v0

    sget v1, Lpm/b;->e:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmiuix/springback/trigger/c;->a0:Landroid/widget/TextView;

    invoke-virtual {p0}, Lmiuix/springback/trigger/b;->X()Landroid/view/ViewGroup;

    move-result-object v0

    sget v1, Lpm/b;->b:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lmiuix/springback/trigger/c;->Y:Landroid/widget/ProgressBar;

    return-void
.end method

.method private e1()V
    .locals 2

    invoke-virtual {p0}, Lmiuix/springback/trigger/b;->S()Landroid/view/View;

    move-result-object v0

    sget v1, Lpm/b;->g:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lmiuix/springback/trigger/c;->V:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lmiuix/springback/trigger/b;->S()Landroid/view/View;

    move-result-object v0

    sget v1, Lpm/b;->f:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiuix/springback/trigger/c;->X:Landroid/view/View;

    invoke-virtual {p0}, Lmiuix/springback/trigger/b;->S()Landroid/view/View;

    move-result-object v0

    sget v1, Lpm/b;->h:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmiuix/springback/trigger/c;->b0:Landroid/widget/TextView;

    invoke-virtual {p0}, Lmiuix/springback/trigger/b;->S()Landroid/view/View;

    move-result-object v0

    sget v1, Lpm/b;->c:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lmiuix/springback/trigger/c;->Z:Landroid/widget/ProgressBar;

    return-void
.end method

.method private f1()V
    .locals 0

    return-void
.end method

.method private g1(Landroid/content/Context;[I[Ljava/lang/String;)V
    .locals 3

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    aget v2, p2, v0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private h1(Landroid/view/View;)V
    .locals 7

    if-eqz p1, :cond_0

    new-instance v0, Lmiuix/animation/controller/AnimState;

    const-string v1, "hide"

    invoke-direct {v0, v1}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v1, Lmiuix/animation/property/ViewProperty;->AUTO_ALPHA:Lmiuix/animation/property/ViewProperty;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/view/View;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p1

    const-wide/16 v4, 0x1

    invoke-interface {p1, v4, v5}, Lmiuix/animation/IStateStyle;->setFlags(J)Lmiuix/animation/IStateStyle;

    move-result-object p1

    new-array v2, v1, [Lmiuix/animation/base/AnimConfig;

    new-instance v4, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v4}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v5, 0x4

    new-array v1, v1, [F

    const/high16 v6, 0x43700000    # 240.0f

    aput v6, v1, v3

    invoke-static {v5, v1}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v1

    invoke-virtual {v4, v1}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-interface {p1, v0, v2}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    :cond_0
    return-void
.end method

.method private i1(Landroid/view/View;)V
    .locals 11

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Lmiuix/animation/controller/AnimState;

    const-string v2, "start"

    invoke-direct {v1, v2}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v2, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    sget-object v5, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    const-wide v6, -0x3f99800000000000L    # -180.0

    invoke-virtual {v1, v5, v6, v7}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    new-instance v6, Lmiuix/animation/controller/AnimState;

    const-string v7, "show"

    invoke-direct {v6, v7}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v6, v2, v7, v8}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v6

    const-wide/high16 v9, 0x4039000000000000L    # 25.0

    invoke-virtual {v6, v5, v9, v10}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v6

    new-instance v9, Lmiuix/animation/controller/AnimState;

    const-string v10, "hide"

    invoke-direct {v9, v10}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v9, v2, v7, v8}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v2

    invoke-virtual {v2, v5, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Landroid/view/View;

    aput-object p1, v4, v0

    invoke-static {v4}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p1

    const-wide/16 v4, 0x1

    invoke-interface {p1, v4, v5}, Lmiuix/animation/IStateStyle;->setFlags(J)Lmiuix/animation/IStateStyle;

    move-result-object p1

    new-array v4, v3, [Lmiuix/animation/base/AnimConfig;

    new-instance v5, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v5}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v7, v3, [F

    const/high16 v8, 0x42f00000    # 120.0f

    aput v8, v7, v0

    const/4 v8, 0x4

    invoke-static {v8, v7}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v7

    invoke-virtual {v5, v7}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-interface {p1, v1, v6, v4}, Lmiuix/animation/IStateStyle;->fromTo(Ljava/lang/Object;Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    new-array v1, v3, [Lmiuix/animation/base/AnimConfig;

    new-instance v4, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v4}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v3, v3, [F

    const/high16 v5, 0x42200000    # 40.0f

    aput v5, v3, v0

    invoke-static {v8, v3}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v3

    invoke-virtual {v4, v3}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-interface {p1, v2, v1}, Lmiuix/animation/IStateStyle;->then(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    :cond_0
    return-void
.end method


# virtual methods
.method public L0(Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-virtual {p0}, Lmiuix/springback/trigger/b;->b0()Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    move p2, p1

    :goto_0
    invoke-virtual {p0}, Lmiuix/springback/trigger/a;->f()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_1

    invoke-virtual {p0}, Lmiuix/springback/trigger/a;->f()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lmiuix/springback/trigger/a$a;

    instance-of p4, p3, Lmiuix/springback/trigger/a$b;

    if-eqz p4, :cond_0

    check-cast p3, Lmiuix/springback/trigger/a$b;

    sget p4, Lmiuix/springback/trigger/c;->n0:I

    iget-object p5, p0, Lmiuix/springback/trigger/c;->W:Landroid/view/View;

    invoke-virtual {p5}, Landroid/view/View;->getTop()I

    move-result p5

    if-lt p4, p5, :cond_0

    iget p3, p3, Lmiuix/springback/trigger/a$a;->mEnterPoint:I

    sub-int/2addr p3, p1

    iget-object p4, p0, Lmiuix/springback/trigger/c;->Y:Landroid/widget/ProgressBar;

    invoke-virtual {p4, p3}, Landroid/view/View;->offsetTopAndBottom(I)V

    iget-object p4, p0, Lmiuix/springback/trigger/c;->W:Landroid/view/View;

    invoke-virtual {p4, p3}, Landroid/view/View;->offsetTopAndBottom(I)V

    iget-object p4, p0, Lmiuix/springback/trigger/c;->a0:Landroid/widget/TextView;

    invoke-virtual {p4, p3}, Landroid/view/View;->offsetTopAndBottom(I)V

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lmiuix/springback/trigger/c;->W:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p0}, Lmiuix/springback/trigger/b;->Q()Lmiuix/springback/trigger/a$a;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lmiuix/springback/trigger/b;->Q()Lmiuix/springback/trigger/a$a;

    move-result-object p1

    instance-of p1, p1, Lmiuix/springback/trigger/a$b;

    if-eqz p1, :cond_6

    iget p1, p0, Lmiuix/springback/trigger/c;->c0:I

    if-gtz p1, :cond_2

    iget-object p1, p0, Lmiuix/springback/trigger/c;->W:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    iput p1, p0, Lmiuix/springback/trigger/c;->c0:I

    :cond_2
    iget p1, p0, Lmiuix/springback/trigger/c;->d0:I

    if-lez p1, :cond_3

    iget p1, p0, Lmiuix/springback/trigger/c;->e0:I

    if-gtz p1, :cond_4

    :cond_3
    iget-object p1, p0, Lmiuix/springback/trigger/c;->a0:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    iput p1, p0, Lmiuix/springback/trigger/c;->d0:I

    iget-object p1, p0, Lmiuix/springback/trigger/c;->a0:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    iput p1, p0, Lmiuix/springback/trigger/c;->e0:I

    :cond_4
    iget-object p1, p0, Lmiuix/springback/trigger/c;->Y:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 p2, 0x8

    if-eq p1, p2, :cond_5

    iget-object p1, p0, Lmiuix/springback/trigger/c;->Y:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_6

    :cond_5
    invoke-virtual {p0}, Lmiuix/springback/trigger/b;->R()Lmiuix/springback/trigger/d;

    move-result-object p1

    iget-object p2, p0, Lmiuix/springback/trigger/b;->R:Lmiuix/springback/trigger/b$f;

    if-eq p1, p2, :cond_6

    invoke-virtual {p0}, Lmiuix/springback/trigger/b;->X()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Lmiuix/springback/trigger/b;->Q()Lmiuix/springback/trigger/a$a;

    move-result-object p2

    iget p2, p2, Lmiuix/springback/trigger/a$a;->mTriggerPoint:I

    if-le p1, p2, :cond_6

    iget-object p1, p0, Lmiuix/springback/trigger/c;->W:Landroid/view/View;

    iget p2, p0, Lmiuix/springback/trigger/c;->c0:I

    invoke-virtual {p0}, Lmiuix/springback/trigger/b;->X()Landroid/view/ViewGroup;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    invoke-virtual {p0}, Lmiuix/springback/trigger/b;->Q()Lmiuix/springback/trigger/a$a;

    move-result-object p4

    iget p4, p4, Lmiuix/springback/trigger/a$a;->mTriggerPoint:I

    sub-int/2addr p3, p4

    add-int/2addr p2, p3

    invoke-virtual {p1, p2}, Landroid/view/View;->setBottom(I)V

    :cond_6
    invoke-virtual {p0}, Lmiuix/springback/trigger/b;->d0()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lmiuix/springback/trigger/b;->W()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lmiuix/springback/trigger/b;->W()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lmiuix/springback/trigger/b;->W()Landroid/view/ViewGroup;

    move-result-object p1

    iget p2, p0, Lmiuix/springback/trigger/b;->A:I

    invoke-virtual {p0}, Lmiuix/springback/trigger/b;->W()Landroid/view/ViewGroup;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-virtual {p1, p2}, Landroid/view/View;->offsetTopAndBottom(I)V

    :cond_7
    return-void
.end method

.method public M0(Lmiuix/springback/view/SpringBackLayout;III)V
    .locals 6

    invoke-virtual {p0}, Lmiuix/springback/trigger/b;->X()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    if-gez p4, :cond_1

    invoke-virtual {p0}, Lmiuix/springback/trigger/b;->c0()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lmiuix/springback/trigger/b;->Q()Lmiuix/springback/trigger/a$a;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lmiuix/springback/trigger/b;->Q()Lmiuix/springback/trigger/a$a;

    move-result-object p1

    instance-of p1, p1, Lmiuix/springback/trigger/a$c;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lmiuix/springback/trigger/b;->S()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Lmiuix/springback/trigger/a;->h()Lmiuix/springback/trigger/a$c;

    move-result-object p4

    iget p4, p4, Lmiuix/springback/trigger/a$a;->mTriggerPoint:I

    sub-int/2addr p1, p4

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object p4, p0, Lmiuix/springback/trigger/c;->V:Landroid/view/ViewGroup;

    int-to-float p1, p1

    invoke-virtual {p4, p1}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    invoke-virtual {p0}, Lmiuix/springback/trigger/b;->b0()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Lmiuix/springback/trigger/b;->Q()Lmiuix/springback/trigger/a$a;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Lmiuix/springback/trigger/b;->Q()Lmiuix/springback/trigger/a$a;

    move-result-object p1

    instance-of p1, p1, Lmiuix/springback/trigger/a$b;

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Lmiuix/springback/trigger/b;->Q()Lmiuix/springback/trigger/a$a;

    move-result-object p1

    check-cast p1, Lmiuix/springback/trigger/a$b;

    iget-object p4, p0, Lmiuix/springback/trigger/c;->W:Landroid/view/View;

    invoke-virtual {p4}, Landroid/view/View;->getVisibility()I

    move-result p4

    if-nez p4, :cond_9

    iget-object p4, p0, Lmiuix/springback/trigger/c;->W:Landroid/view/View;

    invoke-virtual {p4}, Landroid/view/View;->getTop()I

    move-result p4

    iget-object v1, p0, Lmiuix/springback/trigger/c;->W:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr p4, v1

    iput p4, p0, Lmiuix/springback/trigger/c;->c0:I

    iget-object p4, p0, Lmiuix/springback/trigger/c;->a0:Landroid/widget/TextView;

    invoke-virtual {p4}, Landroid/view/View;->getTop()I

    move-result p4

    iput p4, p0, Lmiuix/springback/trigger/c;->d0:I

    iget-object p4, p0, Lmiuix/springback/trigger/c;->a0:Landroid/widget/TextView;

    invoke-virtual {p4}, Landroid/view/View;->getBottom()I

    move-result p4

    iput p4, p0, Lmiuix/springback/trigger/c;->e0:I

    iget p4, p1, Lmiuix/springback/trigger/a$a;->mTriggerPoint:I

    invoke-virtual {p0}, Lmiuix/springback/trigger/b;->X()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    int-to-float p4, p4

    div-float/2addr v1, p4

    invoke-static {v1, p2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {p0}, Lmiuix/springback/trigger/b;->X()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v4, p4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    move v3, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lmiuix/springback/trigger/b;->X()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v4

    div-float/2addr v3, v4

    invoke-static {v3, p2}, Ljava/lang/Math;->min(FF)F

    move-result v3

    :goto_0
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-virtual {p0}, Lmiuix/springback/trigger/b;->X()Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v4, v5, v4

    if-gez v4, :cond_3

    move p4, v2

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lmiuix/springback/trigger/b;->X()Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3f333333    # 0.7f

    mul-float/2addr v5, p4

    sub-float/2addr v4, v5

    const v5, 0x3e99999a    # 0.3f

    mul-float/2addr p4, v5

    div-float/2addr v4, p4

    invoke-static {v4, p2}, Ljava/lang/Math;->min(FF)F

    move-result p4

    :goto_1
    invoke-static {v2, p4}, Ljava/lang/Math;->max(FF)F

    move-result p4

    iget-object v4, p0, Lmiuix/springback/trigger/c;->W:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    sub-float/2addr p2, v1

    mul-float/2addr v4, p2

    iget-object p2, p0, Lmiuix/springback/trigger/c;->W:Landroid/view/View;

    invoke-virtual {p2, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object p2, p0, Lmiuix/springback/trigger/c;->W:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object p2, p0, Lmiuix/springback/trigger/c;->W:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/View;->setScaleY(F)V

    iget-object p2, p0, Lmiuix/springback/trigger/c;->a0:Landroid/widget/TextView;

    invoke-virtual {p2, p4}, Landroid/view/View;->setAlpha(F)V

    iget-object p2, p0, Lmiuix/springback/trigger/c;->a0:Landroid/widget/TextView;

    iget v5, p0, Lmiuix/springback/trigger/c;->d0:I

    invoke-virtual {p2, v5}, Landroid/view/View;->setTop(I)V

    iget-object p2, p0, Lmiuix/springback/trigger/c;->a0:Landroid/widget/TextView;

    iget v5, p0, Lmiuix/springback/trigger/c;->e0:I

    invoke-virtual {p2, v5}, Landroid/view/View;->setBottom(I)V

    iget-object p2, p0, Lmiuix/springback/trigger/c;->Y:Landroid/widget/ProgressBar;

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lmiuix/springback/trigger/c;->Y:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object p2, p0, Lmiuix/springback/trigger/c;->Y:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object p2, p0, Lmiuix/springback/trigger/c;->Y:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v1}, Landroid/view/View;->setScaleY(F)V

    :cond_4
    invoke-virtual {p0}, Lmiuix/springback/trigger/b;->X()Landroid/view/ViewGroup;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    iget v1, p1, Lmiuix/springback/trigger/a$a;->mTriggerPoint:I

    if-ge p2, v1, :cond_7

    cmpl-float p2, p4, v2

    if-lez p2, :cond_5

    iget-object p2, p0, Lmiuix/springback/trigger/c;->a0:Landroid/widget/TextView;

    invoke-virtual {p2, v4}, Landroid/view/View;->setTranslationY(F)V

    :cond_5
    invoke-virtual {p0}, Lmiuix/springback/trigger/b;->R()Lmiuix/springback/trigger/d;

    move-result-object p2

    iget-object p4, p0, Lmiuix/springback/trigger/b;->P:Lmiuix/springback/trigger/b$l;

    if-ne p2, p4, :cond_6

    iget-object p2, p0, Lmiuix/springback/trigger/c;->a0:Landroid/widget/TextView;

    iget-object p1, p1, Lmiuix/springback/trigger/a$b;->mTriggerTexts:[Ljava/lang/String;

    aget-object p1, p1, v0

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    iget-object p1, p0, Lmiuix/springback/trigger/c;->W:Landroid/view/View;

    iget p2, p0, Lmiuix/springback/trigger/c;->c0:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setBottom(I)V

    goto :goto_3

    :cond_7
    invoke-virtual {p0}, Lmiuix/springback/trigger/b;->X()Landroid/view/ViewGroup;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    iget p4, p1, Lmiuix/springback/trigger/a$a;->mTriggerPoint:I

    if-lt p2, p4, :cond_9

    iget p2, p0, Lmiuix/springback/trigger/c;->c0:I

    invoke-virtual {p0}, Lmiuix/springback/trigger/b;->X()Landroid/view/ViewGroup;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    move-result p4

    iget v1, p1, Lmiuix/springback/trigger/a$a;->mTriggerPoint:I

    sub-int/2addr p4, v1

    add-int/2addr p2, p4

    iget-object p4, p0, Lmiuix/springback/trigger/c;->Y:Landroid/widget/ProgressBar;

    invoke-virtual {p4}, Landroid/view/View;->getVisibility()I

    move-result p4

    if-eqz p4, :cond_8

    invoke-virtual {p0}, Lmiuix/springback/trigger/b;->R()Lmiuix/springback/trigger/d;

    move-result-object p4

    iget-object v1, p0, Lmiuix/springback/trigger/b;->R:Lmiuix/springback/trigger/b$f;

    if-eq p4, v1, :cond_8

    iget-object p4, p0, Lmiuix/springback/trigger/c;->W:Landroid/view/View;

    invoke-virtual {p4, p2}, Landroid/view/View;->setBottom(I)V

    iget-object p2, p0, Lmiuix/springback/trigger/c;->a0:Landroid/widget/TextView;

    invoke-virtual {p0}, Lmiuix/springback/trigger/b;->X()Landroid/view/ViewGroup;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    move-result p4

    iget v1, p1, Lmiuix/springback/trigger/a$a;->mTriggerPoint:I

    sub-int/2addr p4, v1

    int-to-float p4, p4

    invoke-virtual {p2, p4}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_2

    :cond_8
    iget-object p2, p0, Lmiuix/springback/trigger/c;->a0:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/view/View;->setTranslationY(F)V

    :goto_2
    invoke-virtual {p0}, Lmiuix/springback/trigger/b;->R()Lmiuix/springback/trigger/d;

    move-result-object p2

    iget-object p4, p0, Lmiuix/springback/trigger/b;->P:Lmiuix/springback/trigger/b$l;

    if-ne p2, p4, :cond_9

    iget-object p2, p0, Lmiuix/springback/trigger/c;->a0:Landroid/widget/TextView;

    iget-object p1, p1, Lmiuix/springback/trigger/a$b;->mTriggerTexts:[Ljava/lang/String;

    const/4 p4, 0x1

    aget-object p1, p1, p4

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    :goto_3
    invoke-virtual {p0}, Lmiuix/springback/trigger/b;->d0()Z

    move-result p1

    const/16 p2, 0x8

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lmiuix/springback/trigger/b;->Q()Lmiuix/springback/trigger/a$a;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lmiuix/springback/trigger/b;->Q()Lmiuix/springback/trigger/a$a;

    move-result-object p1

    instance-of p1, p1, Lmiuix/springback/trigger/a$d;

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lmiuix/springback/trigger/b;->X()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Lmiuix/springback/trigger/b;->Q()Lmiuix/springback/trigger/a$a;

    move-result-object p4

    iget p4, p4, Lmiuix/springback/trigger/a$a;->mEnterPoint:I

    if-ge p1, p4, :cond_a

    invoke-virtual {p0}, Lmiuix/springback/trigger/b;->W()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_a
    invoke-virtual {p0}, Lmiuix/springback/trigger/b;->d0()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Lmiuix/springback/trigger/b;->Q()Lmiuix/springback/trigger/a$a;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Lmiuix/springback/trigger/b;->Q()Lmiuix/springback/trigger/a$a;

    move-result-object p1

    instance-of p1, p1, Lmiuix/springback/trigger/a$d;

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Lmiuix/springback/trigger/b;->X()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Lmiuix/springback/trigger/b;->Q()Lmiuix/springback/trigger/a$a;

    move-result-object p4

    iget p4, p4, Lmiuix/springback/trigger/a$a;->mEnterPoint:I

    if-lt p1, p4, :cond_b

    invoke-virtual {p0}, Lmiuix/springback/trigger/b;->W()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-ne p1, p2, :cond_b

    invoke-virtual {p0}, Lmiuix/springback/trigger/b;->W()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lmiuix/springback/trigger/b;->W()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-direct {p0, p1}, Lmiuix/springback/trigger/c;->i1(Landroid/view/View;)V

    :cond_b
    :goto_4
    invoke-virtual {p0}, Lmiuix/springback/trigger/b;->d0()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-virtual {p0}, Lmiuix/springback/trigger/b;->Q()Lmiuix/springback/trigger/a$a;

    move-result-object p1

    if-eqz p1, :cond_c

    invoke-virtual {p0}, Lmiuix/springback/trigger/b;->W()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_c

    invoke-virtual {p0}, Lmiuix/springback/trigger/b;->W()Landroid/view/ViewGroup;

    move-result-object p1

    neg-int p2, p3

    invoke-virtual {p1, p2}, Landroid/view/View;->offsetTopAndBottom(I)V

    :cond_c
    return-void
.end method

.method public e(Lmiuix/springback/trigger/a$a;)V
    .locals 2

    invoke-super {p0, p1}, Lmiuix/springback/trigger/b;->e(Lmiuix/springback/trigger/a$a;)V

    instance-of v0, p1, Lmiuix/springback/trigger/a$c;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lmiuix/springback/trigger/c;->e1()V

    check-cast p1, Lmiuix/springback/trigger/a$c;

    iget-object v0, p0, Lmiuix/springback/trigger/c;->m0:Lmiuix/springback/trigger/a$c$a;

    invoke-virtual {p0, v0}, Lmiuix/springback/trigger/b;->Q0(Lmiuix/springback/trigger/a$c$a;)V

    iget-object v0, p0, Lmiuix/springback/trigger/c;->U:Landroid/content/Context;

    iget-object v1, p1, Lmiuix/springback/trigger/a$c;->mTriggerTextIDs:[I

    iget-object p1, p1, Lmiuix/springback/trigger/a$c;->mTriggerTexts:[Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1}, Lmiuix/springback/trigger/c;->g1(Landroid/content/Context;[I[Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lmiuix/springback/trigger/a$b;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lmiuix/springback/trigger/c;->d1()V

    check-cast p1, Lmiuix/springback/trigger/a$b;

    iget-object v0, p0, Lmiuix/springback/trigger/c;->k0:Lmiuix/springback/trigger/a$b$b;

    invoke-virtual {p0, v0}, Lmiuix/springback/trigger/b;->P0(Lmiuix/springback/trigger/a$b$b;)V

    iget-object v0, p0, Lmiuix/springback/trigger/c;->U:Landroid/content/Context;

    iget-object v1, p1, Lmiuix/springback/trigger/a$b;->mTriggerTextIDs:[I

    iget-object p1, p1, Lmiuix/springback/trigger/a$b;->mTriggerTexts:[Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1}, Lmiuix/springback/trigger/c;->g1(Landroid/content/Context;[I[Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    instance-of p1, p1, Lmiuix/springback/trigger/a$d;

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lmiuix/springback/trigger/c;->f1()V

    iget-object p1, p0, Lmiuix/springback/trigger/c;->l0:Lmiuix/springback/trigger/a$d$a;

    invoke-virtual {p0, p1}, Lmiuix/springback/trigger/b;->R0(Lmiuix/springback/trigger/a$d$a;)V

    :cond_2
    :goto_0
    return-void
.end method

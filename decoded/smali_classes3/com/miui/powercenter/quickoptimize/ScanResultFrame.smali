.class public Lcom/miui/powercenter/quickoptimize/ScanResultFrame;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lw4/e;

.field private c:Landroidx/recyclerview/widget/RecyclerView;

.field private d:Lfe/j;

.field private e:Ll4/f;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ll4/b;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/view/ViewGroup;

.field private h:Landroid/widget/Button;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lfe/g;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lfe/g;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/miui/common/customview/AutoPasteListView;

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lfe/g;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lfe/g;",
            ">;"
        }
    .end annotation
.end field

.field private n:I

.field private o:Landroid/os/Handler;

.field private p:Lw4/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->i:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->j:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->l:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->m:Ljava/util/List;

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->n:I

    new-instance p1, Lcom/miui/powercenter/quickoptimize/ScanResultFrame$a;

    invoke-direct {p1, p0}, Lcom/miui/powercenter/quickoptimize/ScanResultFrame$a;-><init>(Lcom/miui/powercenter/quickoptimize/ScanResultFrame;)V

    iput-object p1, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->o:Landroid/os/Handler;

    new-instance p1, Lcom/miui/powercenter/quickoptimize/ScanResultFrame$b;

    invoke-direct {p1, p0}, Lcom/miui/powercenter/quickoptimize/ScanResultFrame$b;-><init>(Lcom/miui/powercenter/quickoptimize/ScanResultFrame;)V

    iput-object p1, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->p:Lw4/e;

    return-void
.end method

.method private A()V
    .locals 6

    invoke-direct {p0}, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->getOptimizeListSelectedCount()I

    move-result v0

    if-lez v0, :cond_1

    iget v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->n:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->getExtendBatteryTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->a:Landroid/content/Context;

    invoke-static {v0, v2, v3}, Lme/b0;->q(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120453

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v1, v4

    invoke-virtual {v2, v3, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->h:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->h:Landroid/widget/Button;

    const v1, 0x7f120458

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->h:Landroid/widget/Button;

    const v1, 0x7f120454

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    return-void
.end method

.method public static synthetic a(Lcom/miui/powercenter/quickoptimize/ScanResultFrame;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->s()V

    return-void
.end method

.method static synthetic b(Lcom/miui/powercenter/quickoptimize/ScanResultFrame;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->o()V

    return-void
.end method

.method static synthetic c(Lcom/miui/powercenter/quickoptimize/ScanResultFrame;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->A()V

    return-void
.end method

.method static synthetic d(Lcom/miui/powercenter/quickoptimize/ScanResultFrame;)Lw4/e;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->b:Lw4/e;

    return-object p0
.end method

.method static synthetic e(Lcom/miui/powercenter/quickoptimize/ScanResultFrame;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->h:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic f(Lcom/miui/powercenter/quickoptimize/ScanResultFrame;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->p()V

    return-void
.end method

.method static synthetic g(Lcom/miui/powercenter/quickoptimize/ScanResultFrame;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->c:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method private getExtendBatteryTime()J
    .locals 7

    invoke-direct {p0}, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->getSelectedNotFixed()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const v4, 0xea60

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfe/g;

    iget-object v5, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->a:Landroid/content/Context;

    invoke-static {v5, v3}, Lfe/i;->b(Landroid/content/Context;Lfe/g;)J

    move-result-wide v5

    long-to-int v3, v5

    div-int/2addr v3, v4

    int-to-long v3, v3

    add-long/2addr v1, v3

    goto :goto_0

    :cond_0
    int-to-long v3, v4

    mul-long/2addr v1, v3

    return-wide v1
.end method

.method private getOptimizeListSelectedCount()I
    .locals 3

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfe/g;

    iget v2, v2, Lfe/g;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lfe/p;->a(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfe/g;

    iget v2, v2, Lfe/g;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lfe/p;->a(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return v1
.end method

.method private getSelectedNotFixed()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lfe/g;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lfe/l;->m()Lfe/l;

    move-result-object v0

    invoke-virtual {v0}, Lfe/l;->p()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lfe/l;->m()Lfe/l;

    move-result-object v1

    invoke-virtual {v1}, Lfe/l;->s()Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfe/g;

    iget v4, v3, Lfe/g;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lfe/p;->a(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfe/g;

    iget v3, v1, Lfe/g;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lfe/p;->a(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-object v2
.end method

.method static synthetic h(Lcom/miui/powercenter/quickoptimize/ScanResultFrame;)Lfe/j;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->d:Lfe/j;

    return-object p0
.end method

.method static synthetic i(Lcom/miui/powercenter/quickoptimize/ScanResultFrame;)Ll4/f;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->e:Ll4/f;

    return-object p0
.end method

.method static synthetic j(Lcom/miui/powercenter/quickoptimize/ScanResultFrame;Lfe/g;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->l(Lfe/g;)V

    return-void
.end method

.method private k()V
    .locals 9

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->k:Lcom/miui/common/customview/AutoPasteListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->z()V

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->c:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    const-string v4, "alpha"

    invoke-static {v0, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v3, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->c:Landroidx/recyclerview/widget/RecyclerView;

    new-array v4, v2, [F

    fill-array-data v4, :array_1

    const-string v5, "scaleX"

    invoke-static {v3, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->c:Landroidx/recyclerview/widget/RecyclerView;

    new-array v5, v2, [F

    fill-array-data v5, :array_2

    const-string v6, "scaleY"

    invoke-static {v4, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    const v6, 0x3f99999a    # 1.2f

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v3, v5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v4, v5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v5, 0x12c

    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v3, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v4, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v5, Lcom/miui/powercenter/quickoptimize/ScanResultFrame$f;

    invoke-direct {v5, p0}, Lcom/miui/powercenter/quickoptimize/ScanResultFrame$f;-><init>(Lcom/miui/powercenter/quickoptimize/ScanResultFrame;)V

    invoke-virtual {v4, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p0}, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->getScreenHeight()I

    move-result v5

    iget-object v6, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->k:Lcom/miui/common/customview/AutoPasteListView;

    new-array v7, v2, [F

    invoke-virtual {v6}, Landroid/view/View;->getTranslationY()F

    move-result v8

    int-to-float v5, v5

    add-float/2addr v8, v5

    aput v8, v7, v1

    iget-object v5, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->k:Lcom/miui/common/customview/AutoPasteListView;

    invoke-virtual {v5}, Landroid/view/View;->getTranslationY()F

    move-result v5

    const/4 v8, 0x1

    aput v5, v7, v8

    const-string v5, "translationY"

    invoke-static {v6, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v5, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v6, 0x190

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v7, 0x4

    new-array v7, v7, [Landroid/animation/Animator;

    aput-object v3, v7, v1

    aput-object v4, v7, v8

    aput-object v0, v7, v2

    const/4 v0, 0x3

    aput-object v5, v7, v0

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data
.end method

.method private l(Lfe/g;)V
    .locals 2

    const-string v0, "ScanResultFrame"

    const-string v1, "Fix one issue end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p1, Lfe/g;->c:Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->x()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->o:Landroid/os/Handler;

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private m()V
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->k:Lcom/miui/common/customview/AutoPasteListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->c:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private n()V
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->g:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private o()V
    .locals 11

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string v1, "ScanResultFrame"

    if-eqz v0, :cond_0

    const-string v0, "Select task list is empty"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfe/g;

    invoke-static {}, Lfe/l;->m()Lfe/l;

    move-result-object v2

    iget-object v4, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->a:Landroid/content/Context;

    invoke-virtual {v2, v4, v0}, Lfe/l;->g(Landroid/content/Context;Lfe/g;)I

    move-result v2

    if-lez v2, :cond_6

    iget v2, v0, Lfe/g;->a:I

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, v4

    move-object v7, v5

    :goto_0
    if-ge v6, v2, :cond_2

    iget-object v7, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    const v8, 0x7f0b0235

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/GridView;

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v7, :cond_5

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_5

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v6, v4

    :goto_2
    invoke-virtual {v7}, Landroid/widget/AdapterView;->getCount()I

    move-result v8

    if-ge v6, v8, :cond_3

    invoke-virtual {v7}, Landroid/widget/AdapterView;->getCount()I

    move-result v8

    sub-int/2addr v8, v3

    sub-int/2addr v8, v6

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    const/4 v9, 0x2

    new-array v9, v9, [F

    fill-array-data v9, :array_0

    const-string v10, "alpha"

    invoke-static {v8, v10, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    :try_start_0
    const-string v3, "miui.maml.animation.interpolater.LinearInterpolater"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v5, v4}, Lbh/d;->h(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/TimeInterpolator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v3

    goto :goto_3

    :catch_0
    move-exception v3

    const-string v4, "LinearInterpolater exception: "

    invoke-static {v1, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playSequentially(Ljava/util/List;)V

    if-eqz v5, :cond_4

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_4
    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/miui/powercenter/quickoptimize/ScanResultFrame$h;

    invoke-direct {v2, p0, v0}, Lcom/miui/powercenter/quickoptimize/ScanResultFrame$h;-><init>(Lcom/miui/powercenter/quickoptimize/ScanResultFrame;Lfe/g;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_4

    :cond_5
    invoke-direct {p0, v0}, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->l(Lfe/g;)V

    :cond_6
    :goto_4
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private p()V
    .locals 3

    const-string v0, "quick_optimize_now"

    invoke-static {v0}, Lhd/a;->m1(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->i:Ljava/util/List;

    invoke-static {}, Lfe/l;->m()Lfe/l;

    move-result-object v1

    invoke-virtual {v1}, Lfe/l;->p()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->i:Ljava/util/List;

    invoke-static {}, Lfe/l;->m()Lfe/l;

    move-result-object v1

    invoke-virtual {v1}, Lfe/l;->s()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->d:Lfe/j;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lfe/j;->w(Z)V

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfe/g;

    iget v2, v1, Lfe/g;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lfe/p;->a(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->j:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lfe/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lhd/a;->m1(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->y()V

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->x()V

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->o()V

    return-void
.end method

.method private synthetic s()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f071796

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->c:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    return-void
.end method

.method private y()V
    .locals 6

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfe/g;

    iget v4, v3, Lfe/g;->a:I

    const/16 v5, 0xd

    if-ne v4, v5, :cond_1

    move-object v1, v3

    goto :goto_0

    :cond_1
    const/16 v5, 0x10

    if-ne v4, v5, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->j:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->j:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eqz v2, :cond_4

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->j:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->j:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->j:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    return-void
.end method

.method private z()V
    .locals 2

    new-instance v0, Ll4/f;

    invoke-direct {v0}, Ll4/f;-><init>()V

    iput-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->e:Ll4/f;

    invoke-static {}, Lqd/d;->f()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->f:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->e:Ll4/f;

    invoke-virtual {v1, v0}, Ll4/f;->e(Ljava/util/List;)V

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->k:Lcom/miui/common/customview/AutoPasteListView;

    iget-object v1, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->e:Ll4/f;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method


# virtual methods
.method public getModels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ll4/b;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getScreenHeight()I
    .locals 2

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v1, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->a:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    return-void
.end method

.method public q()V
    .locals 4

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->l:Ljava/util/List;

    invoke-static {}, Lfe/l;->m()Lfe/l;

    move-result-object v1

    invoke-virtual {v1}, Lfe/l;->p()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->m:Ljava/util/List;

    invoke-static {}, Lfe/l;->m()Lfe/l;

    move-result-object v1

    invoke-virtual {v1}, Lfe/l;->s()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const v0, 0x7f0b01cd

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->h:Landroid/widget/Button;

    const v0, 0x7f0b0187

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->g:Landroid/view/ViewGroup;

    invoke-static {}, Lme/e0;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0717b5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->g:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0717b6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->h:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->h:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    const v0, 0x7f0b04b5

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->c:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lmiuix/recyclerview/card/f;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lmiuix/recyclerview/card/f;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$m;)V

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->c:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->d:Lfe/j;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->c:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->c:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$n;)V

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->c:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/miui/powercenter/quickoptimize/ScanResultFrame$c;

    invoke-direct {v1, p0}, Lcom/miui/powercenter/quickoptimize/ScanResultFrame$c;-><init>(Lcom/miui/powercenter/quickoptimize/ScanResultFrame;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$s;)V

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->d:Lfe/j;

    iget-object v1, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->p:Lw4/e;

    invoke-virtual {v0, v1}, Lfe/j;->v(Lw4/e;)V

    invoke-direct {p0}, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->A()V

    const v0, 0x7f0b02ed

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/common/customview/AutoPasteListView;

    iput-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->k:Lcom/miui/common/customview/AutoPasteListView;

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->a:Landroid/content/Context;

    check-cast v0, Lcom/miui/common/base/BaseActivity;

    invoke-static {v0}, Lx4/t;->F(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0716ee

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iget-object v1, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->k:Lcom/miui/common/customview/AutoPasteListView;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v1, v0, v2, v0, v3}, Landroid/view/View;->setPadding(IIII)V

    :cond_1
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->k:Lcom/miui/common/customview/AutoPasteListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/View;->setOverScrollMode(I)V

    :cond_2
    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->k:Lcom/miui/common/customview/AutoPasteListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/common/customview/AutoPasteListView;->setTopDraggable(Z)V

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->k:Lcom/miui/common/customview/AutoPasteListView;

    new-instance v1, Lcom/miui/powercenter/quickoptimize/ScanResultFrame$d;

    invoke-direct {v1, p0}, Lcom/miui/powercenter/quickoptimize/ScanResultFrame$d;-><init>(Lcom/miui/powercenter/quickoptimize/ScanResultFrame;)V

    invoke-virtual {v0, v1}, Lcom/miui/common/customview/AutoPasteListView;->setOnScrollPercentChangeListener(Lcom/miui/common/customview/AutoPasteListView$c;)V

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->h:Landroid/widget/Button;

    new-instance v1, Lcom/miui/powercenter/quickoptimize/ScanResultFrame$e;

    invoke-direct {v1, p0}, Lcom/miui/powercenter/quickoptimize/ScanResultFrame$e;-><init>(Lcom/miui/powercenter/quickoptimize/ScanResultFrame;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lx4/a0;->n(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p0, v1, v0, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->d:Lfe/j;

    invoke-virtual {v0}, Lmiuix/recyclerview/card/e;->updateGroupInfo()V

    return-void
.end method

.method public r(I)V
    .locals 1

    invoke-static {}, Lfe/l;->m()Lfe/l;

    move-result-object v0

    invoke-virtual {v0}, Lfe/l;->o()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lfe/l;->m()Lfe/l;

    move-result-object v0

    invoke-virtual {v0}, Lfe/l;->r()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-nez p1, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->c:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->z()V

    iget-object p1, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->b:Lw4/e;

    const/16 v0, 0x41e

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-direct {p0}, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->m()V

    invoke-direct {p0}, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->n()V

    :cond_2
    return-void
.end method

.method public setEventHandler(Lw4/e;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->b:Lw4/e;

    return-void
.end method

.method public t()V
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->k:Lcom/miui/common/customview/AutoPasteListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->e:Ll4/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public u()V
    .locals 3

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->e:Ll4/f;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->f:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll4/b;

    instance-of v2, v1, Lrd/a;

    if-eqz v2, :cond_2

    check-cast v1, Lrd/a;

    invoke-virtual {v1}, Lrd/a;->f()Lrd/a$b;

    move-result-object v0

    sget-object v2, Lrd/a$b;->a:Lrd/a$b;

    if-ne v0, v2, :cond_1

    new-instance v0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame$g;

    invoke-direct {v0, p0, v1}, Lcom/miui/powercenter/quickoptimize/ScanResultFrame$g;-><init>(Lcom/miui/powercenter/quickoptimize/ScanResultFrame;Lrd/a;)V

    invoke-static {v0}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->e:Ll4/f;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public v()V
    .locals 3

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->f:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll4/b;

    instance-of v2, v1, Ll4/a;

    if-eqz v2, :cond_0

    invoke-static {}, Lw9/b;->b()Lw9/b;

    move-result-object v2

    check-cast v1, Ll4/a;

    invoke-virtual {v1}, Ll4/a;->r()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Lw9/b;->d(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public w(Landroid/content/Context;Lfe/j;)V
    .locals 2

    iput-object p1, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->d:Lfe/j;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lfe/o;

    invoke-direct {p2, p0}, Lfe/o;-><init>(Lcom/miui/powercenter/quickoptimize/ScanResultFrame;)V

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public x()V
    .locals 4

    invoke-static {}, Lfe/l;->m()Lfe/l;

    move-result-object v0

    invoke-virtual {v0}, Lfe/l;->w()I

    move-result v0

    invoke-static {v0}, Lhd/a;->t1(I)V

    invoke-static {}, Lfe/l;->m()Lfe/l;

    move-result-object v0

    invoke-virtual {v0}, Lfe/l;->q()J

    move-result-wide v0

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Lhd/a;->Q0(J)V

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->b:Lw4/e;

    const/16 v1, 0x41e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-direct {p0}, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->n()V

    invoke-direct {p0}, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->k()V

    return-void
.end method
